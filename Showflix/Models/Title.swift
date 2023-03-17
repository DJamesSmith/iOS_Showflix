// "TitleItem" Entity in "NetflixCloneModel" CoreData file was used. Already exists in database. Not sure how to delete it.
// "ItemTitle" Entity was named in stead of the former Entity "TitleItem". This Entity is used in "DownloadsViewController" file and "DataPersistenceManager" file.

import Foundation

struct TrendingTitleResponse: Codable {
    let page: Int
    let results: [Title]
    let totalPages, totalResults: Int
    
    enum CodingKeys: String, CodingKey {
        case page, results
        case totalPages = "total_pages"
        case totalResults = "total_results"
    }
}

struct Title: Codable {
    let adult: Bool
    let backdropPath, posterPath: String?
    let id: Int
    let title: String?
    let originalLanguage: OriginalLanguage
    let originalTitle: String?
    let overview: String?
//    let mediaType: MediaType
    let genreIDS: [Int]
    let popularity: Double
    let releaseDate: String?
    let video: Bool?
    let voteAverage: Double
    let voteCount: Int
    let name, originalName, firstAirDate: String?
    let originCountry: [String]?
    
    enum CodingKeys: String, CodingKey {
        case adult
        case backdropPath = "backdrop_path"
        case id, title
        case originalLanguage = "original_language"
        case originalTitle = "original_title"
        case overview
        case posterPath = "poster_path"
//        case mediaType = "media_type"
        case genreIDS = "genre_ids"
        case popularity
        case releaseDate = "release_date"
        case video
        case voteAverage = "vote_average"
        case voteCount = "vote_count"
        case name
        case originalName = "original_name"
        case firstAirDate = "first_air_date"
        case originCountry = "origin_country"
    }
}

enum MediaType: String, Codable {
    case movie = "movie"
    case tv = "tv"
}

enum OriginalLanguage: String, Codable {
    case en = "en"
    case es = "es"
    case fr = "fr"
    case ja = "ja"
    case ko = "ko"
    case it = "it"
    case hi = "hi"
    case zh = "zh"
    case no = "no"
    case cn = "cn"
    case jv = "jv"
    case xx = "xx"
    case id = "id"

// Two-letter Country Code
//    case as = "as"
//    case is = "is"
//    case in = "in"
    
//    case en = "en"
//    case es = "es"
//    case fr = "fr"
//    case ja = "ja"
//    case ko = "ko"
//    case it = "it"
//    case hi = "hi"
//    case zh = "zh"
//    case no = "no"

    case ab = "ab"
    case aa = "aa"
    case af = "af"
    case sq = "sq"
    case am = "am"
    case ar = "ar"
    case hy = "hy"
    case ay = "ay"
    case az = "az"
    case ba = "ba"
    case eu = "eu"
    case bn = "bn"
    case dz = "dz"
    case bh = "bh"
    case bi = "bi"
    case br = "br"
    case bg = "bg"
    case my = "my"
    case be = "be"
    case km = "km"
    case ca = "ca"
    case co = "co"
    case hr = "hr"
    case cs = "cs"
    case da = "da"
    case nl = "nl"
    case eo = "eo"
    case et = "et"
    case fo = "fo"
    case fj = "fj"
    case fi = "fi"
    case fy = "fy"
    case gd = "gd"
    case gl = "gl"
    case ka = "ka"
    case de = "de"
    case el = "el"
    case kl = "kl"
    case gn = "gn"
    case gu = "gu"
    case ha = "ha"
    case iw = "iw"
    case hu = "hu"
    case ia = "ia"
    case ie = "ie"
    case ik = "ik"
    case ga = "ga"
    case jw = "jw"
    case kn = "kn"
    case ks = "ks"
    case kk = "kk"
    case rw = "rw"
    case ky = "ky"
    case rn = "rn"
    case ku = "ku"
    case lo = "lo"
    case la = "la"
    case lv = "lv"
    case ln = "ln"
    case lt = "lt"
    case mk = "mk"
    case mg = "mg"
    case ms = "ms"
    case ml = "ml"
    case mt = "mt"
    case mi = "mi"
    case mr = "mr"
    case mo = "mo"
    case mn = "mn"
    case na = "na"
    case ne = "ne"
    case oc = "oc"
    case or = "or"
    case om = "om"
    case ps = "ps"
    case fa = "fa"
    case pl = "pl"
    case pt = "pt"
    case pa = "pa"
    case qu = "qu"
    case rm = "rm"
    case ro = "ro"
    case ru = "ru"
    case sm = "sm"
    case sg = "sg"
    case sa = "sa"
    case sr = "sr"
    case sh = "sh"
    case st = "st"
    case tn = "tn"
    case sn = "sn"
    case sd = "sd"
    case si = "si"
    case ss = "ss"
    case sk = "sk"
    case sl = "sl"
    case so = "so"
    case su = "su"
    case sw = "sw"
    case sv = "sv"
    case tl = "tl"
    case tg = "tg"
    case ta = "ta"
    case tt = "tt"
    case te = "te"
    case th = "th"
    case bo = "bo"
    case ti = "ti"
    case to = "to"
    case ts = "ts"
    case tr = "tr"
    case tk = "tk"
    case tw = "tw"
    case uk = "uk"
    case ur = "ur"
    case uz = "uz"
    case vi = "vi"
    case vo = "vo"
    case cy = "cy"
    case wo = "wo"
    case xh = "xh"
    case ji = "ji"
    case yo = "yo"
    case zu = "zu"
}
