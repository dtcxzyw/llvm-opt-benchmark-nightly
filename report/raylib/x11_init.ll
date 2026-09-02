Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/raylib/original/x11_init?download=true
inline.NumInlined: 27
inline.NumDeleted: 10
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0
@.str.251 = private unnamed_addr constant [5 x i8] c"RTRN\00", align 1
@.str.252 = private unnamed_addr constant [4 x i8] c"TAB\00", align 1
@.str.253 = private unnamed_addr constant [5 x i8] c"BKSP\00", align 1
@.str.254 = private unnamed_addr constant [4 x i8] c"INS\00", align 1
@.str.255 = private unnamed_addr constant [5 x i8] c"DELE\00", align 1
@.str.256 = private unnamed_addr constant [5 x i8] c"RGHT\00", align 1
@.str.257 = private unnamed_addr constant [5 x i8] c"LEFT\00", align 1
@.str.258 = private unnamed_addr constant [5 x i8] c"DOWN\00", align 1
@.str.259 = private unnamed_addr constant [3 x i8] c"UP\00", align 1
@.str.260 = private unnamed_addr constant [5 x i8] c"PGUP\00", align 1
@.str.261 = private unnamed_addr constant [5 x i8] c"PGDN\00", align 1
@.str.262 = private unnamed_addr constant [5 x i8] c"HOME\00", align 1
@.str.263 = private unnamed_addr constant [4 x i8] c"END\00", align 1
@.str.264 = private unnamed_addr constant [5 x i8] c"CAPS\00", align 1
@.str.265 = private unnamed_addr constant [5 x i8] c"SCLK\00", align 1
@.str.266 = private unnamed_addr constant [5 x i8] c"NMLK\00", align 1
@.str.267 = private unnamed_addr constant [5 x i8] c"PRSC\00", align 1
@.str.268 = private unnamed_addr constant [5 x i8] c"PAUS\00", align 1
@.str.269 = private unnamed_addr constant [5 x i8] c"FK01\00", align 1
@.str.270 = private unnamed_addr constant [5 x i8] c"FK02\00", align 1
@.str.271 = private unnamed_addr constant [5 x i8] c"FK03\00", align 1
@.str.272 = private unnamed_addr constant [5 x i8] c"FK04\00", align 1
@.str.273 = private unnamed_addr constant [5 x i8] c"FK05\00", align 1
@.str.274 = private unnamed_addr constant [5 x i8] c"FK06\00", align 1
@.str.275 = private unnamed_addr constant [5 x i8] c"FK07\00", align 1
@.str.276 = private unnamed_addr constant [5 x i8] c"FK08\00", align 1
@.str.277 = private unnamed_addr constant [5 x i8] c"FK09\00", align 1
@.str.278 = private unnamed_addr constant [5 x i8] c"FK10\00", align 1
@.str.279 = private unnamed_addr constant [5 x i8] c"FK11\00", align 1
@.str.280 = private unnamed_addr constant [5 x i8] c"FK12\00", align 1
@.str.281 = private unnamed_addr constant [5 x i8] c"FK13\00", align 1
@.str.282 = private unnamed_addr constant [5 x i8] c"FK14\00", align 1
@.str.283 = private unnamed_addr constant [5 x i8] c"FK15\00", align 1
@.str.284 = private unnamed_addr constant [5 x i8] c"FK16\00", align 1
@.str.285 = private unnamed_addr constant [5 x i8] c"FK17\00", align 1
@.str.286 = private unnamed_addr constant [5 x i8] c"FK18\00", align 1
@.str.287 = private unnamed_addr constant [5 x i8] c"FK19\00", align 1
@.str.288 = private unnamed_addr constant [5 x i8] c"FK20\00", align 1
@.str.289 = private unnamed_addr constant [5 x i8] c"FK21\00", align 1
@.str.290 = private unnamed_addr constant [5 x i8] c"FK22\00", align 1
@.str.291 = private unnamed_addr constant [5 x i8] c"FK23\00", align 1
@.str.292 = private unnamed_addr constant [5 x i8] c"FK24\00", align 1
@.str.293 = private unnamed_addr constant [5 x i8] c"FK25\00", align 1
@.str.294 = private unnamed_addr constant [4 x i8] c"KP0\00", align 1
@.str.295 = private unnamed_addr constant [4 x i8] c"KP1\00", align 1
@.str.296 = private unnamed_addr constant [4 x i8] c"KP2\00", align 1
@.str.297 = private unnamed_addr constant [4 x i8] c"KP3\00", align 1
@.str.298 = private unnamed_addr constant [4 x i8] c"KP4\00", align 1
@.str.299 = private unnamed_addr constant [4 x i8] c"KP5\00", align 1
@.str.300 = private unnamed_addr constant [4 x i8] c"KP6\00", align 1
@.str.301 = private unnamed_addr constant [4 x i8] c"KP7\00", align 1
@.str.302 = private unnamed_addr constant [4 x i8] c"KP8\00", align 1
@.str.303 = private unnamed_addr constant [4 x i8] c"KP9\00", align 1
@.str.304 = private unnamed_addr constant [5 x i8] c"KPDL\00", align 1
@.str.305 = private unnamed_addr constant [5 x i8] c"KPDV\00", align 1
@.str.306 = private unnamed_addr constant [5 x i8] c"KPMU\00", align 1
@.str.307 = private unnamed_addr constant [5 x i8] c"KPSU\00", align 1
@.str.308 = private unnamed_addr constant [5 x i8] c"KPAD\00", align 1
@.str.309 = private unnamed_addr constant [5 x i8] c"KPEN\00", align 1
@.str.310 = private unnamed_addr constant [5 x i8] c"KPEQ\00", align 1
@.str.311 = private unnamed_addr constant [5 x i8] c"LFSH\00", align 1
@.str.312 = private unnamed_addr constant [5 x i8] c"LCTL\00", align 1
@.str.313 = private unnamed_addr constant [5 x i8] c"LALT\00", align 1
@.str.314 = private unnamed_addr constant [5 x i8] c"LWIN\00", align 1
@.str.315 = private unnamed_addr constant [5 x i8] c"RTSH\00", align 1
@.str.316 = private unnamed_addr constant [5 x i8] c"RCTL\00", align 1
@.str.317 = private unnamed_addr constant [5 x i8] c"RALT\00", align 1
@.str.318 = private unnamed_addr constant [5 x i8] c"LVL3\00", align 1
@.str.319 = private unnamed_addr constant [5 x i8] c"MDSW\00", align 1
@.str.320 = private unnamed_addr constant [5 x i8] c"RWIN\00", align 1
@.str.321 = private unnamed_addr constant [5 x i8] c"MENU\00", align 1
@__const.createKeyTablesX11.keymap = private unnamed_addr constant [121 x { i32, [4 x i8], ptr }] [{ i32, [4 x i8], ptr } { i32 96, [4 x i8] zeroinitializer, ptr @.str.201 }, { i32, [4 x i8], ptr } { i32 49, [4 x i8] zeroinitializer, ptr @.str.202 }, { i32, [4 x i8], ptr } { i32 50, [4 x i8] zeroinitializer, ptr @.str.203 }, { i32, [4 x i8], ptr } { i32 51, [4 x i8] zeroinitializer, ptr @.str.204 }, { i32, [4 x i8], ptr } { i32 52, [4 x i8] zeroinitializer, ptr @.str.205 }, { i32, [4 x i8], ptr } { i32 53, [4 x i8] zeroinitializer, ptr @.str.206 }, { i32, [4 x i8], ptr } { i32 54, [4 x i8] zeroinitializer, ptr @.str.207 }, { i32, [4 x i8], ptr } { i32 55, [4 x i8] zeroinitializer, ptr @.str.208 }, { i32, [4 x i8], ptr } { i32 56, [4 x i8] zeroinitializer, ptr @.str.209 }, { i32, [4 x i8], ptr } { i32 57, [4 x i8] zeroinitializer, ptr @.str.210 }, { i32, [4 x i8], ptr } { i32 48, [4 x i8] zeroinitializer, ptr @.str.211 }, { i32, [4 x i8], ptr } { i32 45, [4 x i8] zeroinitializer, ptr @.str.212 }, { i32, [4 x i8], ptr } { i32 61, [4 x i8] zeroinitializer, ptr @.str.213 }, { i32, [4 x i8], ptr } { i32 81, [4 x i8] zeroinitializer, ptr @.str.214 }, { i32, [4 x i8], ptr } { i32 87, [4 x i8] zeroinitializer, ptr @.str.215 }, { i32, [4 x i8], ptr } { i32 69, [4 x i8] zeroinitializer, ptr @.str.216 }, { i32, [4 x i8], ptr } { i32 82, [4 x i8] zeroinitializer, ptr @.str.217 }, { i32, [4 x i8], ptr } { i32 84, [4 x i8] zeroinitializer, ptr @.str.218 }, { i32, [4 x i8], ptr } { i32 89, [4 x i8] zeroinitializer, ptr @.str.219 }, { i32, [4 x i8], ptr } { i32 85, [4 x i8] zeroinitializer, ptr @.str.220 }, { i32, [4 x i8], ptr } { i32 73, [4 x i8] zeroinitializer, ptr @.str.221 }, { i32, [4 x i8], ptr } { i32 79, [4 x i8] zeroinitializer, ptr @.str.222 }, { i32, [4 x i8], ptr } { i32 80, [4 x i8] zeroinitializer, ptr @.str.223 }, { i32, [4 x i8], ptr } { i32 91, [4 x i8] zeroinitializer, ptr @.str.224 }, { i32, [4 x i8], ptr } { i32 93, [4 x i8] zeroinitializer, ptr @.str.225 }, { i32, [4 x i8], ptr } { i32 65, [4 x i8] zeroinitializer, ptr @.str.226 }, { i32, [4 x i8], ptr } { i32 83, [4 x i8] zeroinitializer, ptr @.str.227 }, { i32, [4 x i8], ptr } { i32 68, [4 x i8] zeroinitializer, ptr @.str.228 }, { i32, [4 x i8], ptr } { i32 70, [4 x i8] zeroinitializer, ptr @.str.229 }, { i32, [4 x i8], ptr } { i32 71, [4 x i8] zeroinitializer, ptr @.str.230 }, { i32, [4 x i8], ptr } { i32 72, [4 x i8] zeroinitializer, ptr @.str.231 }, { i32, [4 x i8], ptr } { i32 74, [4 x i8] zeroinitializer, ptr @.str.232 }, { i32, [4 x i8], ptr } { i32 75, [4 x i8] zeroinitializer, ptr @.str.233 }, { i32, [4 x i8], ptr } { i32 76, [4 x i8] zeroinitializer, ptr @.str.234 }, { i32, [4 x i8], ptr } { i32 59, [4 x i8] zeroinitializer, ptr @.str.235 }, { i32, [4 x i8], ptr } { i32 39, [4 x i8] zeroinitializer, ptr @.str.236 }, { i32, [4 x i8], ptr } { i32 90, [4 x i8] zeroinitializer, ptr @.str.237 }, { i32, [4 x i8], ptr } { i32 88, [4 x i8] zeroinitializer, ptr @.str.238 }, { i32, [4 x i8], ptr } { i32 67, [4 x i8] zeroinitializer, ptr @.str.239 }, { i32, [4 x i8], ptr } { i32 86, [4 x i8] zeroinitializer, ptr @.str.240 }, { i32, [4 x i8], ptr } { i32 66, [4 x i8] zeroinitializer, ptr @.str.241 }, { i32, [4 x i8], ptr } { i32 78, [4 x i8] zeroinitializer, ptr @.str.242 }, { i32, [4 x i8], ptr } { i32 77, [4 x i8] zeroinitializer, ptr @.str.243 }, { i32, [4 x i8], ptr } { i32 44, [4 x i8] zeroinitializer, ptr @.str.244 }, { i32, [4 x i8], ptr } { i32 46, [4 x i8] zeroinitializer, ptr @.str.245 }, { i32, [4 x i8], ptr } { i32 47, [4 x i8] zeroinitializer, ptr @.str.246 }, { i32, [4 x i8], ptr } { i32 92, [4 x i8] zeroinitializer, ptr @.str.247 }, { i32, [4 x i8], ptr } { i32 161, [4 x i8] zeroinitializer, ptr @.str.248 }, { i32, [4 x i8], ptr } { i32 32, [4 x i8] zeroinitializer, ptr @.str.249 }, { i32, [4 x i8], ptr } { i32 256, [4 x i8] zeroinitializer, ptr @.str.250 }, { i32, [4 x i8], ptr } { i32 257, [4 x i8] zeroinitializer, ptr @.str.251 }, { i32, [4 x i8], ptr } { i32 258, [4 x i8] zeroinitializer, ptr @.str.252 }, { i32, [4 x i8], ptr } { i32 259, [4 x i8] zeroinitializer, ptr @.str.253 }, { i32, [4 x i8], ptr } { i32 260, [4 x i8] zeroinitializer, ptr @.str.254 }, { i32, [4 x i8], ptr } { i32 261, [4 x i8] zeroinitializer, ptr @.str.255 }, { i32, [4 x i8], ptr } { i32 262, [4 x i8] zeroinitializer, ptr @.str.256 }, { i32, [4 x i8], ptr } { i32 263, [4 x i8] zeroinitializer, ptr @.str.257 }, { i32, [4 x i8], ptr } { i32 264, [4 x i8] zeroinitializer, ptr @.str.258 }, { i32, [4 x i8], ptr } { i32 265, [4 x i8] zeroinitializer, ptr @.str.259 }, { i32, [4 x i8], ptr } { i32 266, [4 x i8] zeroinitializer, ptr @.str.260 }, { i32, [4 x i8], ptr } { i32 267, [4 x i8] zeroinitializer, ptr @.str.261 }, { i32, [4 x i8], ptr } { i32 268, [4 x i8] zeroinitializer, ptr @.str.262 }, { i32, [4 x i8], ptr } { i32 269, [4 x i8] zeroinitializer, ptr @.str.263 }, { i32, [4 x i8], ptr } { i32 280, [4 x i8] zeroinitializer, ptr @.str.264 }, { i32, [4 x i8], ptr } { i32 281, [4 x i8] zeroinitializer, ptr @.str.265 }, { i32, [4 x i8], ptr } { i32 282, [4 x i8] zeroinitializer, ptr @.str.266 }, { i32, [4 x i8], ptr } { i32 283, [4 x i8] zeroinitializer, ptr @.str.267 }, { i32, [4 x i8], ptr } { i32 284, [4 x i8] zeroinitializer, ptr @.str.268 }, { i32, [4 x i8], ptr } { i32 290, [4 x i8] zeroinitializer, ptr @.str.269 }, { i32, [4 x i8], ptr } { i32 291, [4 x i8] zeroinitializer, ptr @.str.270 }, { i32, [4 x i8], ptr } { i32 292, [4 x i8] zeroinitializer, ptr @.str.271 }, { i32, [4 x i8], ptr } { i32 293, [4 x i8] zeroinitializer, ptr @.str.272 }, { i32, [4 x i8], ptr } { i32 294, [4 x i8] zeroinitializer, ptr @.str.273 }, { i32, [4 x i8], ptr } { i32 295, [4 x i8] zeroinitializer, ptr @.str.274 }, { i32, [4 x i8], ptr } { i32 296, [4 x i8] zeroinitializer, ptr @.str.275 }, { i32, [4 x i8], ptr } { i32 297, [4 x i8] zeroinitializer, ptr @.str.276 }, { i32, [4 x i8], ptr } { i32 298, [4 x i8] zeroinitializer, ptr @.str.277 }, { i32, [4 x i8], ptr } { i32 299, [4 x i8] zeroinitializer, ptr @.str.278 }, { i32, [4 x i8], ptr } { i32 300, [4 x i8] zeroinitializer, ptr @.str.279 }, { i32, [4 x i8], ptr } { i32 301, [4 x i8] zeroinitializer, ptr @.str.280 }, { i32, [4 x i8], ptr } { i32 302, [4 x i8] zeroinitializer, ptr @.str.281 }, { i32, [4 x i8], ptr } { i32 303, [4 x i8] zeroinitializer, ptr @.str.282 }, { i32, [4 x i8], ptr } { i32 304, [4 x i8] zeroinitializer, ptr @.str.283 }, { i32, [4 x i8], ptr } { i32 305, [4 x i8] zeroinitializer, ptr @.str.284 }, { i32, [4 x i8], ptr } { i32 306, [4 x i8] zeroinitializer, ptr @.str.285 }, { i32, [4 x i8], ptr } { i32 307, [4 x i8] zeroinitializer, ptr @.str.286 }, { i32, [4 x i8], ptr } { i32 308, [4 x i8] zeroinitializer, ptr @.str.287 }, { i32, [4 x i8], ptr } { i32 309, [4 x i8] zeroinitializer, ptr @.str.288 }, { i32, [4 x i8], ptr } { i32 310, [4 x i8] zeroinitializer, ptr @.str.289 }, { i32, [4 x i8], ptr } { i32 311, [4 x i8] zeroinitializer, ptr @.str.290 }, { i32, [4 x i8], ptr } { i32 312, [4 x i8] zeroinitializer, ptr @.str.291 }, { i32, [4 x i8], ptr } { i32 313, [4 x i8] zeroinitializer, ptr @.str.292 }, { i32, [4 x i8], ptr } { i32 314, [4 x i8] zeroinitializer, ptr @.str.293 }, { i32, [4 x i8], ptr } { i32 320, [4 x i8] zeroinitializer, ptr @.str.294 }, { i32, [4 x i8], ptr } { i32 321, [4 x i8] zeroinitializer, ptr @.str.295 }, { i32, [4 x i8], ptr } { i32 322, [4 x i8] zeroinitializer, ptr @.str.296 }, { i32, [4 x i8], ptr } { i32 323, [4 x i8] zeroinitializer, ptr @.str.297 }, { i32, [4 x i8], ptr } { i32 324, [4 x i8] zeroinitializer, ptr @.str.298 }, { i32, [4 x i8], ptr } { i32 325, [4 x i8] zeroinitializer, ptr @.str.299 }, { i32, [4 x i8], ptr } { i32 326, [4 x i8] zeroinitializer, ptr @.str.300 }, { i32, [4 x i8], ptr } { i32 327, [4 x i8] zeroinitializer, ptr @.str.301 }, { i32, [4 x i8], ptr } { i32 328, [4 x i8] zeroinitializer, ptr @.str.302 }, { i32, [4 x i8], ptr } { i32 329, [4 x i8] zeroinitializer, ptr @.str.303 }, { i32, [4 x i8], ptr } { i32 330, [4 x i8] zeroinitializer, ptr @.str.304 }, { i32, [4 x i8], ptr } { i32 331, [4 x i8] zeroinitializer, ptr @.str.305 }, { i32, [4 x i8], ptr } { i32 332, [4 x i8] zeroinitializer, ptr @.str.306 }, { i32, [4 x i8], ptr } { i32 333, [4 x i8] zeroinitializer, ptr @.str.307 }, { i32, [4 x i8], ptr } { i32 334, [4 x i8] zeroinitializer, ptr @.str.308 }, { i32, [4 x i8], ptr } { i32 335, [4 x i8] zeroinitializer, ptr @.str.309 }, { i32, [4 x i8], ptr } { i32 336, [4 x i8] zeroinitializer, ptr @.str.310 }, { i32, [4 x i8], ptr } { i32 340, [4 x i8] zeroinitializer, ptr @.str.311 }, { i32, [4 x i8], ptr } { i32 341, [4 x i8] zeroinitializer, ptr @.str.312 }, { i32, [4 x i8], ptr } { i32 342, [4 x i8] zeroinitializer, ptr @.str.313 }, { i32, [4 x i8], ptr } { i32 343, [4 x i8] zeroinitializer, ptr @.str.314 }, { i32, [4 x i8], ptr } { i32 344, [4 x i8] zeroinitializer, ptr @.str.315 }, { i32, [4 x i8], ptr } { i32 345, [4 x i8] zeroinitializer, ptr @.str.316 }, { i32, [4 x i8], ptr } { i32 346, [4 x i8] zeroinitializer, ptr @.str.317 }, { i32, [4 x i8], ptr } { i32 346, [4 x i8] zeroinitializer, ptr @.str.318 }, { i32, [4 x i8], ptr } { i32 346, [4 x i8] zeroinitializer, ptr @.str.319 }, { i32, [4 x i8], ptr } { i32 347, [4 x i8] zeroinitializer, ptr @.str.320 }, { i32, [4 x i8], ptr } { i32 348, [4 x i8] zeroinitializer, ptr @.str.321 }], align 16
@.str.322 = private unnamed_addr constant [14 x i8] c"_NET_WM_STATE\00", align 1
@.str.323 = private unnamed_addr constant [20 x i8] c"_NET_WM_STATE_ABOVE\00", align 1
@.str.324 = private unnamed_addr constant [25 x i8] c"_NET_WM_STATE_FULLSCREEN\00", align 1
@.str.325 = private unnamed_addr constant [29 x i8] c"_NET_WM_STATE_MAXIMIZED_VERT\00", align 1
@.str.326 = private unnamed_addr constant [29 x i8] c"_NET_WM_STATE_MAXIMIZED_HORZ\00", align 1
@.str.327 = private unnamed_addr constant [32 x i8] c"_NET_WM_STATE_DEMANDS_ATTENTION\00", align 1
@.str.328 = private unnamed_addr constant [28 x i8] c"_NET_WM_FULLSCREEN_MONITORS\00", align 1
@.str.329 = private unnamed_addr constant [20 x i8] c"_NET_WM_WINDOW_TYPE\00", align 1
@.str.330 = private unnamed_addr constant [27 x i8] c"_NET_WM_WINDOW_TYPE_NORMAL\00", align 1
@.str.331 = private unnamed_addr constant [14 x i8] c"_NET_WORKAREA\00", align 1
@.str.332 = private unnamed_addr constant [21 x i8] c"_NET_CURRENT_DESKTOP\00", align 1
@.str.333 = private unnamed_addr constant [19 x i8] c"_NET_ACTIVE_WINDOW\00", align 1
@.str.334 = private unnamed_addr constant [19 x i8] c"_NET_FRAME_EXTENTS\00", align 1
@.str.335 = private unnamed_addr constant [27 x i8] c"_NET_REQUEST_FRAME_EXTENTS\00", align 1
@.str.336 = private unnamed_addr constant [16 x i8] c"destroyCallback\00", align 1
@.str.337 = private unnamed_addr constant [16 x i8] c"queryInputStyle\00", align 1
@switch.table._glfwInitX11 = private unnamed_addr constant [49 x i16] [i16 335, i16 poison, i16 poison, i16 poison, i16 poison, i16 poison, i16 poison, i16 poison, i16 poison, i16 poison, i16 poison, i16 poison, i16 poison, i16 poison, i16 poison, i16 poison, i16 poison, i16 poison, i16 poison, i16 poison, i16 poison, i16 poison, i16 poison, i16 poison, i16 poison, i16 poison, i16 poison, i16 poison, i16 poison, i16 poison, i16 poison, i16 330, i16 poison, i16 330, i16 poison, i16 320, i16 321, i16 322, i16 323, i16 324, i16 325, i16 326, i16 327, i16 328, i16 329, i16 poison, i16 poison, i16 poison, i16 336], align 2

; Function Attrs: nounwind uwtable
define hidden void @_glfwGrabErrorHandlerX11() local_unnamed_addr #0 {
bb.a:
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @_glfw, i64 133960), align 8
  %i.a = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_glfw, i64 137904), align 8
  %i.b = tail call ptr %i.a(ptr noundef nonnull @errorHandler) #12
  store ptr %i.b, ptr getelementptr inbounds nuw (i8, ptr @_glfw, i64 133952), align 8
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, argmem: read, inaccessiblemem: none, target_mem: none) uwtable
define internal noundef i32 @errorHandler(ptr nofree noundef readnone captures(address) %0, ptr nofree noundef readonly captures(none) %1) #1 {
bb.a:
  %i.a = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_glfw, i64 133888), align 8
  %.not = icmp eq ptr %i.a, %0
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.c = load i8, ptr %i.b, align 8
  %i.d = zext i8 %i.c to i32
  store i32 %i.d, ptr getelementptr inbounds nuw (i8, ptr @_glfw, i64 133960), align 8
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  ret i32 0
}

; Function Attrs: nounwind uwtable
define hidden void @_glfwReleaseErrorHandlerX11() local_unnamed_addr #0 {
bb.a:
  %i.a = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_glfw, i64 137992), align 8
  %i.b = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_glfw, i64 133888), align 8
  %i.c = tail call i32 %i.a(ptr noundef %i.b, i32 noundef 0) #12 ; 0 uses
  %i.d = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_glfw, i64 137904), align 8
  %i.e = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_glfw, i64 133952), align 8
  %i.f = tail call ptr %i.d(ptr noundef %i.e) #12 ; 0 uses
  store ptr null, ptr getelementptr inbounds nuw (i8, ptr @_glfw, i64 133952), align 8
  ret void
}

; Function Attrs: nounwind uwtable
define hidden void @_glfwInputErrorX11(i32 noundef %0, ptr noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca [1024 x i8], align 16             ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #12
  %i.b = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_glfw, i64 137632), align 8
  %i.c = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_glfw, i64 133888), align 8
  %i.d = load i32, ptr getelementptr inbounds nuw (i8, ptr @_glfw, i64 133960), align 8
  %i.e = call i32 %i.b(ptr noundef %i.c, i32 noundef %i.d, ptr noundef nonnull %i.a, i32 noundef 1024) #12 ; 0 uses
  call void (i32, ptr, ...) @_glfwInputError(i32 noundef %0, ptr noundef nonnull @.str, ptr noundef %1, ptr noundef nonnull %i.a) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #12
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #2

declare void @_glfwInputError(i32 noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #2

; Function Attrs: nounwind uwtable
define hidden i64 @_glfwCreateNativeCursorX11(ptr nofree noundef readonly captures(none) %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #0 {
bb.a:
  %i.a = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_glfw, i64 138440), align 8
  %.not = icmp eq ptr %i.a, null
  br i1 %.not, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_glfw, i64 138448), align 8
  %i.c = load i32, ptr %0, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 3 uses
  %i.e = load i32, ptr %i.d, align 4
  %i.f = tail call ptr %i.b(i32 noundef %i.c, i32 noundef %i.e) #12 ; 6 uses
  %i.g = icmp eq ptr %i.f, null
  br i1 %i.g, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.h = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  store i32 %1, ptr %i.h, align 8
  %i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 20
  store i32 %2, ptr %i.i, align 4
  %i.j = load i32, ptr %0, align 8
  %i.k = load i32, ptr %i.d, align 4
  %i.l = mul nsw i32 %i.k, %i.j
  %i.m = icmp sgt i32 %i.l, 0
  br i1 %i.m, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %bb.c
  %i.n = getelementptr inbounds nuw i8, ptr %i.f, i64 32
  %i.o = load ptr, ptr %i.n, align 8
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.q = load ptr, ptr %i.p, align 8
  br label %.lr.ph

._crit_edge:                                      ; preds = %.lr.ph, %bb.c
  %i.r = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_glfw, i64 138464), align 8
  %i.s = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_glfw, i64 133888), align 8
  %i.t = tail call i64 %i.r(ptr noundef %i.s, ptr noundef nonnull %i.f) #12
  %i.u = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_glfw, i64 138456), align 8
  tail call void %i.u(ptr noundef nonnull %i.f) #12
  br label %bb.d

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.lr.ph
  %.02737 = phi i32 [ %i.am, %.lr.ph ], [ 0, %.lr.ph.preheader ]
  %.02836 = phi ptr [ %i.an, %.lr.ph ], [ %i.o, %.lr.ph.preheader ] ; 2 uses
  %.02935 = phi ptr [ %i.ao, %.lr.ph ], [ %i.q, %.lr.ph.preheader ] ; 5 uses
  %i.v = getelementptr inbounds nuw i8, ptr %.02935, i64 3
  %i.w = load i8, ptr %i.v, align 1               ; 2 uses
  %i.x = zext i8 %i.w to i32
  %i.y = shl nuw i32 %i.x, 24
  %i.z = load i8, ptr %.02935, align 1
  %3 = zext i8 %i.z to i16
  %4 = zext i8 %i.w to i16                        ; 3 uses
  %.lhs.trunc = mul nuw i16 %3, %4
  %i.aa = udiv i16 %.lhs.trunc, 255
  %.zext = zext nneg i16 %i.aa to i32
  %i.ab = shl nuw nsw i32 %.zext, 16
  %i.ac = or i32 %i.ab, %i.y
  %i.ad = getelementptr inbounds nuw i8, ptr %.02935, i64 1
  %i.ae = load i8, ptr %i.ad, align 1
  %5 = zext i8 %i.ae to i16
  %.lhs.trunc31 = mul nuw i16 %5, %4
  %i.af = udiv i16 %.lhs.trunc31, 255
  %.zext32 = zext nneg i16 %i.af to i32
  %i.ag = shl nuw nsw i32 %.zext32, 8
  %i.ah = or i32 %i.ac, %i.ag
  %i.ai = getelementptr inbounds nuw i8, ptr %.02935, i64 2
  %i.aj = load i8, ptr %i.ai, align 1
  %6 = zext i8 %i.aj to i16
  %.lhs.trunc33 = mul nuw i16 %6, %4
  %i.ak = udiv i16 %.lhs.trunc33, 255
  %.zext34 = zext nneg i16 %i.ak to i32
  %i.al = or i32 %i.ah, %.zext34
  store i32 %i.al, ptr %.02836, align 4
  %i.am = add nuw nsw i32 %.02737, 1              ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %.02836, i64 4
  %i.ao = getelementptr inbounds nuw i8, ptr %.02935, i64 4
  %i.ap = load i32, ptr %0, align 8
  %i.aq = load i32, ptr %i.d, align 4
  %i.ar = mul nsw i32 %i.aq, %i.ap
  %i.as = icmp slt i32 %i.am, %i.ar
  br i1 %i.as, label %.lr.ph, label %._crit_edge

bb.d:                                             ; preds = %._crit_edge, %bb.b, %bb.a
  %.1 = phi i64 [ 0, %bb.a ], [ %i.t, %._crit_edge ], [ 0, %bb.b ]
  ret i64 %.1
}

; Function Attrs: nounwind uwtable
define hidden range(i32 0, 2) i32 @_glfwConnectX11(i32 noundef %0, ptr nofree noundef writeonly captures(none) %1) local_unnamed_addr #0 {
sub_0:
  %i.a = tail call ptr @setlocale(i32 noundef 0, ptr noundef null) #12 ; 2 uses
  %i.b = load i8, ptr %i.a, align 1
  %.not32 = icmp eq i8 %i.b, 67
  br i1 %.not32, label %.tail, label %.tail.thread

.tail:                                            ; preds = %sub_0
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 1
  %i.d = load i8, ptr %i.c, align 1
  %i.e = icmp eq i8 %i.d, 0
  br i1 %i.e, label %bb.a, label %.tail.thread

bb.a:                                             ; preds = %.tail
  %i.f = tail call ptr @setlocale(i32 noundef 0, ptr noundef nonnull @.str.2) #12 ; 0 uses
  br label %.tail.thread

.tail.thread:                                     ; preds = %sub_0, %bb.a, %.tail
  %i.g = tail call ptr @_glfwPlatformLoadModule(ptr noundef nonnull @.str.3) #12 ; 7 uses
  %.not = icmp eq ptr %i.g, null
  br i1 %.not, label %bb.b, label %bb.d

bb.b:                                             ; preds = %.tail.thread
  %i.h = icmp eq i32 %0, 393220
  br i1 %i.h, label %bb.c, label %bb.o

bb.c:                                             ; preds = %bb.b
  tail call void (i32, ptr, ...) @_glfwInputError(i32 noundef 65544, ptr noundef nonnull @.str.4) #12
  br label %bb.o

bb.d:                                             ; preds = %.tail.thread
  %i.i = tail call ptr @_glfwPlatformGetModuleSymbol(ptr noundef nonnull %i.g, ptr noundef nonnull @.str.5) #12 ; 2 uses
  %i.j = tail call ptr @_glfwPlatformGetModuleSymbol(ptr noundef nonnull %i.g, ptr noundef nonnull @.str.6) #12 ; 2 uses
  %i.k = tail call ptr @_glfwPlatformGetModuleSymbol(ptr noundef nonnull %i.g, ptr noundef nonnull @.str.7) #12 ; 2 uses
  %i.l = icmp ne ptr %i.i, null
  %i.m = icmp ne ptr %i.j, null
  %or.cond = select i1 %i.l, i1 %i.m, i1 false
  %i.n = icmp ne ptr %i.k, null
  %or.cond3 = select i1 %or.cond, i1 %i.n, i1 false
  br i1 %or.cond3, label %bb.h, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.o = icmp eq i32 %0, 393220
  br i1 %i.o, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  tail call void (i32, ptr, ...) @_glfwInputError(i32 noundef 65544, ptr noundef nonnull @.str.8) #12
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  tail call void @_glfwPlatformFreeModule(ptr noundef nonnull %i.g) #12
  br label %bb.o

bb.h:                                             ; preds = %bb.d
  %i.p = tail call i32 %i.i() #12                 ; 0 uses
  tail call void %i.j() #12
  %i.q = tail call ptr %i.k(ptr noundef null) #12 ; 2 uses
  %.not30 = icmp eq ptr %i.q, null
  br i1 %.not30, label %bb.i, label %bb.n

bb.i:                                             ; preds = %bb.h
  %i.r = icmp eq i32 %0, 393220
  br i1 %i.r, label %bb.j, label %bb.m

bb.j:                                             ; preds = %bb.i
  %i.s = tail call ptr @getenv(ptr noundef nonnull @.str.9) #12 ; 2 uses
  %.not31 = icmp eq ptr %i.s, null
  br i1 %.not31, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  tail call void (i32, ptr, ...) @_glfwInputError(i32 noundef 65550, ptr noundef nonnull @.str.10, ptr noundef nonnull %i.s) #12
  br label %bb.m

bb.l:                                             ; preds = %bb.j
  tail call void (i32, ptr, ...) @_glfwInputError(i32 noundef 65550, ptr noundef nonnull @.str.11) #12
  br label %bb.m

bb.m:                                             ; preds = %bb.k, %bb.l, %bb.i
  tail call void @_glfwPlatformFreeModule(ptr noundef nonnull %i.g) #12
  br label %bb.o

bb.n:                                             ; preds = %bb.h
  store ptr %i.q, ptr getelementptr inbounds nuw (i8, ptr @_glfw, i64 133888), align 8
  store ptr %i.g, ptr getelementptr inbounds nuw (i8, ptr @_glfw, i64 137376), align 8
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(576) %1, ptr noundef nonnull align 8 dereferenceable(576) @__const._glfwConnectX11.x11, i64 576, i1 false)
  br label %bb.o

bb.o:                                             ; preds = %bb.g, %bb.n, %bb.m, %bb.b, %bb.c
  %.2 = phi i32 [ 0, %bb.b ], [ 0, %bb.c ], [ 0, %bb.g ], [ 1, %bb.n ], [ 0, %bb.m ]
  ret i32 %.2
}

; Function Attrs: nounwind uwtable
define hidden range(i32 0, 2) i32 @_glfwInitX11() #0 {
bb.a:
  %i.a = alloca [1024 x i8], align 16             ; 7 uses
  %0 = alloca %struct.XSetWindowAttributes, align 8 ; 4 uses
  %i.b = alloca ptr, align 8                      ; 7 uses
  %i.c = alloca ptr, align 8                      ; 6 uses
  %i.d = alloca ptr, align 8                      ; 19 uses
  %i.e = alloca i32, align 4                      ; 6 uses
  %i.f = alloca i32, align 4                      ; 6 uses
  %i.g = alloca i32, align 4                      ; 4 uses
  %i.h = alloca i32, align 4                      ; 4 uses
  %1 = alloca %struct._XkbStateRec, align 2       ; 4 uses
  %i.i = alloca [32 x i8], align 16               ; 4 uses
  %2 = alloca %struct.XrmValue, align 8           ; 4 uses
  %i.j = alloca ptr, align 8                      ; 5 uses
  %i.k = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_glfw, i64 137376), align 8
  %i.l = tail call ptr @_glfwPlatformGetModuleSymbol(ptr noundef %i.k, ptr noundef nonnull @.str.12) #12
  store ptr %i.l, ptr getelementptr inbounds nuw (i8, ptr @_glfw, i64 137392), align 8
  %i.m = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_glfw, i64 137376), align 8
  %i.n = tail call ptr @_glfwPlatformGetModuleSymbol(ptr noundef %i.m, ptr noundef nonnull @.str.13) #12
  store ptr %i.n, ptr getelementptr inbounds nuw (i8, ptr @_glfw, i64 137400), align 8
  %i.o = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_glfw, i64 137376), align 8
  %i.p = tail call ptr @_glfwPlatformGetModuleSymbol(ptr noundef %i.o, ptr noundef nonnull @.str.14) #12
  store ptr %i.p, ptr getelementptr inbounds nuw (i8, ptr @_glfw, i64 137408), align 8
  %i.q = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_glfw, i64 137376), align 8
  %i.r = tail call ptr @_glfwPlatformGetModuleSymbol(ptr noundef %i.q, ptr noundef nonnull @.str.15) #12
  store ptr %i.r, ptr getelementptr inbounds nuw (i8, ptr @_glfw, i64 137416), align 8
  %i.s = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_glfw, i64 137376), align 8
  %i.t = tail call ptr @_glfwPlatformGetModuleSymbol(ptr noundef %i.s, ptr noundef nonnull @.str.16) #12
  store ptr %i.t, ptr getelementptr inbounds nuw (i8, ptr @_glfw, i64 137424), align 8
  %i.u = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_glfw, i64 137376), align 8
  %i.v = tail call ptr @_glfwPlatformGetModuleSymbol(ptr noundef %i.u, ptr noundef nonnull @.str.17) #12
  store ptr %i.v, ptr getelementptr inbounds nuw (i8, ptr @_glfw, i64 137432), align 8
  %i.w = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_glfw, i64 137376), align 8
  %i.x = tail call ptr @_glfwPlatformGetModuleSymbol(ptr noundef %i.w, ptr noundef nonnull @.str.18) #12
  store ptr %i.x, ptr getelementptr inbounds nuw (i8, ptr @_glfw, i64 137440), align 8
  %i.y = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_glfw, i64 137376), align 8
  %i.z = tail call ptr @_glfwPlatformGetModuleSymbol(ptr noundef %i.y, ptr noundef nonnull @.str.19) #12
  store ptr %i.z, ptr getelementptr inbounds nuw (i8, ptr @_glfw, i64 137448), align 8
  %i.aa = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_glfw, i64 137376), align 8
  %i.ab = tail call ptr @_glfwPlatformGetModuleSymbol(ptr noundef %i.aa, ptr noundef nonnull @.str.20) #12
  store ptr %i.ab, ptr getelementptr inbounds nuw (i8, ptr @_glfw, i64 137456), align 8
  %i.ac = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_glfw, i64 137376), align 8
  %i.ad = tail call ptr @_glfwPlatformGetModuleSymbol(ptr noundef %i.ac, ptr noundef nonnull @.str.21) #12
  store ptr %i.ad, ptr getelementptr inbounds nuw (i8, ptr @_glfw, i64 137464), align 8
  %i.ae = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_glfw, i64 137376), align 8
  %i.af = tail call ptr @_glfwPlatformGetModuleSymbol(ptr noundef %i.ae, ptr noundef nonnull @.str.22) #12
  store ptr %i.af, ptr getelementptr inbounds nuw (i8, ptr @_glfw, i64 137472), align 8
  %i.ag = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_glfw, i64 137376), align 8
  %i.ah = tail call ptr @_glfwPlatformGetModuleSymbol(ptr noundef %i.ag, ptr noundef nonnull @.str.23) #12
  store ptr %i.ah, ptr getelementptr inbounds nuw (i8, ptr @_glfw, i64 137480), align 8
  %i.ai = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_glfw, i64 137376), align 8
  %i.aj = tail call ptr @_glfwPlatformGetModuleSymbol(ptr noundef %i.ai, ptr noundef nonnull @.str.24) #12
  store ptr %i.aj, ptr getelementptr inbounds nuw (i8, ptr @_glfw, i64 137488), align 8
  %i.ak = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_glfw, i64 137376), align 8
  %i.al = tail call ptr @_glfwPlatformGetModuleSymbol(ptr noundef %i.ak, ptr noundef nonnull @.str.25) #12
  store ptr %i.al, ptr getelementptr inbounds nuw (i8, ptr @_glfw, i64 137496), align 8
  %i.am = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_glfw, i64 137376), align 8
  %i.an = tail call ptr @_glfwPlatformGetModuleSymbol(ptr noundef %i.am, ptr noundef nonnull @.str.26) #12
  store ptr %i.an, ptr getelementptr inbounds nuw (i8, ptr @_glfw, i64 137504), align 8
  %i.ao = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_glfw, i64 137376), align 8
  %i.ap = tail call ptr @_glfwPlatformGetModuleSymbol(ptr noundef %i.ao, ptr noundef nonnull @.str.27) #12
  store ptr %i.ap, ptr getelementptr inbounds nuw (i8, ptr @_glfw, i64 137512), align 8
  %i.aq = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_glfw, i64 137376), align 8
  %i.ar = tail call ptr @_glfwPlatformGetModuleSymbol(ptr noundef %i.aq, ptr noundef nonnull @.str.28) #12
  store ptr %i.ar, ptr getelementptr inbounds nuw (i8, ptr @_glfw, i64 137520), align 8
  %i.as = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_glfw, i64 137376), align 8
  %i.at = tail call ptr @_glfwPlatformGetModuleSymbol(ptr noundef %i.as, ptr noundef nonnull @.str.29) #12
  store ptr %i.at, ptr getelementptr inbounds nuw (i8, ptr @_glfw, i64 137528), align 8
  %i.au = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_glfw, i64 137376), align 8
  %i.av = tail call ptr @_glfwPlatformGetModuleSymbol(ptr noundef %i.au, ptr noundef nonnull @.str.30) #12
  store ptr %i.av, ptr getelementptr inbounds nuw (i8, ptr @_glfw, i64 137536), align 8
  %i.aw = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_glfw, i64 137376), align 8
  %i.ax = tail call ptr @_glfwPlatformGetModuleSymbol(ptr noundef %i.aw, ptr noundef nonnull @.str.31) #12
  store ptr %i.ax, ptr getelementptr inbounds nuw (i8, ptr @_glfw, i64 137544), align 8
  %i.ay = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_glfw, i64 137376), align 8
  %i.az = tail call ptr @_glfwPlatformGetModuleSymbol(ptr noundef %i.ay, ptr noundef nonnull @.str.32) #12
  store ptr %i.az, ptr getelementptr inbounds nuw (i8, ptr @_glfw, i64 137552), align 8
  %i.ba = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_glfw, i64 137376), align 8
  %i.bb = tail call ptr @_glfwPlatformGetModuleSymbol(ptr noundef %i.ba, ptr noundef nonnull @.str.33) #12
  store ptr %i.bb, ptr getelementptr inbounds nuw (i8, ptr @_glfw, i64 137560), align 8
  %i.bc = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_glfw, i64 137376), align 8
  %i.bd = tail call ptr @_glfwPlatformGetModuleSymbol(ptr noundef %i.bc, ptr noundef nonnull @.str.34) #12
  store ptr %i.bd, ptr getelementptr inbounds nuw (i8, ptr @_glfw, i64 137568), align 8
  %i.be = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_glfw, i64 137376), align 8
  %i.bf = tail call ptr @_glfwPlatformGetModuleSymbol(ptr noundef %i.be, ptr noundef nonnull @.str.35) #12
  store ptr %i.bf, ptr getelementptr inbounds nuw (i8, ptr @_glfw, i64 137576), align 8
  %i.bg = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_glfw, i64 137376), align 8
end_hunk_0
begin_hunk_1_@_glfwInitX11:bb.a
  br label %.lr.ph.i66.i.i

bb.gu:                                            ; preds = %.lr.ph.i66.i.i
  %i.abi = add nuw i64 %.0913.i67.i.i, 1          ; 2 uses
  %exitcond.not.i68.i.i = icmp eq i64 %i.abi, %i.xx
  br i1 %exitcond.not.i68.i.i, label %getAtomIfSupported.exit70.i.i, label %.lr.ph.i66.i.i

.lr.ph.i66.i.i:                                   ; preds = %bb.gu, %getAtomIfSupported.exit64.i.i
  %.0913.i67.i.i = phi i64 [ %i.abi, %bb.gu ], [ 0, %getAtomIfSupported.exit64.i.i ] ; 2 uses
  %i.abj = getelementptr inbounds nuw [8 x i8], ptr %i.abe, i64 %.0913.i67.i.i
  %i.abk = load i64, ptr %i.abj, align 8
  %i.abl = icmp eq i64 %i.abk, %i.abh
  br i1 %i.abl, label %getAtomIfSupported.exit70.i.i, label %bb.gu

getAtomIfSupported.exit70.critedge.i.i:           ; preds = %getAtomIfSupported.exit58.i.i
  store i64 0, ptr getelementptr inbounds nuw (i8, ptr @_glfw, i64 137064), align 8
  %i.abm = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_glfw, i64 137744), align 8
  %i.abn = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_glfw, i64 133888), align 8
  %i.abo = call i64 %i.abm(ptr noundef %i.abn, ptr noundef nonnull @.str.331, i32 noundef 0) #12, !inline_history !10 ; 0 uses
  br label %getAtomIfSupported.exit70.i.i

getAtomIfSupported.exit70.i.i:                    ; preds = %.lr.ph.i66.i.i, %bb.gu, %getAtomIfSupported.exit70.critedge.i.i
  %spec.select.i69.i.i = phi i64 [ 0, %getAtomIfSupported.exit70.critedge.i.i ], [ %i.abh, %.lr.ph.i66.i.i ], [ 0, %bb.gu ]
  store i64 %spec.select.i69.i.i, ptr getelementptr inbounds nuw (i8, ptr @_glfw, i64 137152), align 8
  %i.abp = load ptr, ptr %i.d, align 8
  %i.abq = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_glfw, i64 137744), align 8
  %i.abr = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_glfw, i64 133888), align 8
  %i.abs = call i64 %i.abq(ptr noundef %i.abr, ptr noundef nonnull @.str.332, i32 noundef 0) #12, !inline_history !10 ; 2 uses
  br i1 %.not12.not.i.i.i, label %getAtomIfSupported.exit82.critedge.i.i, label %.lr.ph.i72.i.i

bb.gv:                                            ; preds = %.lr.ph.i72.i.i
  %i.abt = add nuw i64 %.0913.i73.i.i, 1          ; 2 uses
  %exitcond.not.i74.i.i = icmp eq i64 %i.abt, %i.xx
  br i1 %exitcond.not.i74.i.i, label %.lr.ph.i78.i.preheader.i, label %.lr.ph.i72.i.i

.lr.ph.i72.i.i:                                   ; preds = %getAtomIfSupported.exit70.i.i, %bb.gv
  %.0913.i73.i.i = phi i64 [ %i.abt, %bb.gv ], [ 0, %getAtomIfSupported.exit70.i.i ] ; 2 uses
  %i.abu = getelementptr inbounds nuw [8 x i8], ptr %i.abp, i64 %.0913.i73.i.i
  %i.abv = load i64, ptr %i.abu, align 8
  %i.abw = icmp eq i64 %i.abv, %i.abs
  br i1 %i.abw, label %.lr.ph.i78.i.preheader.i, label %bb.gv

.lr.ph.i78.i.preheader.i:                         ; preds = %.lr.ph.i72.i.i, %bb.gv
  %spec.select.i75.i.ph.i = phi i64 [ 0, %bb.gv ], [ %i.abs, %.lr.ph.i72.i.i ]
  store i64 %spec.select.i75.i.ph.i, ptr getelementptr inbounds nuw (i8, ptr @_glfw, i64 137160), align 8
  %i.abx = load ptr, ptr %i.d, align 8
  %i.aby = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_glfw, i64 137744), align 8
  %i.abz = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_glfw, i64 133888), align 8
  %i.aca = call i64 %i.aby(ptr noundef %i.abz, ptr noundef nonnull @.str.333, i32 noundef 0) #12, !inline_history !10 ; 2 uses
  br label %.lr.ph.i78.i.i

bb.gw:                                            ; preds = %.lr.ph.i78.i.i
  %i.acb = add nuw i64 %.0913.i79.i.i, 1          ; 2 uses
  %exitcond.not.i80.i.i = icmp eq i64 %i.acb, %i.xx
  br i1 %exitcond.not.i80.i.i, label %getAtomIfSupported.exit82.i.i, label %.lr.ph.i78.i.i

.lr.ph.i78.i.i:                                   ; preds = %bb.gw, %.lr.ph.i78.i.preheader.i
  %.0913.i79.i.i = phi i64 [ %i.acb, %bb.gw ], [ 0, %.lr.ph.i78.i.preheader.i ] ; 2 uses
  %i.acc = getelementptr inbounds nuw [8 x i8], ptr %i.abx, i64 %.0913.i79.i.i
  %i.acd = load i64, ptr %i.acc, align 8
  %i.ace = icmp eq i64 %i.acd, %i.aca
  br i1 %i.ace, label %getAtomIfSupported.exit82.i.i, label %bb.gw

getAtomIfSupported.exit82.critedge.i.i:           ; preds = %getAtomIfSupported.exit70.i.i
  store i64 0, ptr getelementptr inbounds nuw (i8, ptr @_glfw, i64 137160), align 8
  %i.acf = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_glfw, i64 137744), align 8
  %i.acg = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_glfw, i64 133888), align 8
  %i.ach = call i64 %i.acf(ptr noundef %i.acg, ptr noundef nonnull @.str.333, i32 noundef 0) #12, !inline_history !10 ; 0 uses
  br label %getAtomIfSupported.exit82.i.i

getAtomIfSupported.exit82.i.i:                    ; preds = %.lr.ph.i78.i.i, %bb.gw, %getAtomIfSupported.exit82.critedge.i.i
  %spec.select.i81.i.i = phi i64 [ 0, %getAtomIfSupported.exit82.critedge.i.i ], [ %i.aca, %.lr.ph.i78.i.i ], [ 0, %bb.gw ]
  store i64 %spec.select.i81.i.i, ptr getelementptr inbounds nuw (i8, ptr @_glfw, i64 137168), align 8
  %i.aci = load ptr, ptr %i.d, align 8
  %i.acj = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_glfw, i64 137744), align 8
  %i.ack = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_glfw, i64 133888), align 8
  %i.acl = call i64 %i.acj(ptr noundef %i.ack, ptr noundef nonnull @.str.334, i32 noundef 0) #12, !inline_history !10 ; 2 uses
  br i1 %.not12.not.i.i.i, label %getAtomIfSupported.exit94.critedge.i.i, label %.lr.ph.i84.i.i

bb.gx:                                            ; preds = %.lr.ph.i84.i.i
  %i.acm = add nuw i64 %.0913.i85.i.i, 1          ; 2 uses
  %exitcond.not.i86.i.i = icmp eq i64 %i.acm, %i.xx
  br i1 %exitcond.not.i86.i.i, label %.lr.ph.i90.i.preheader.i, label %.lr.ph.i84.i.i

.lr.ph.i84.i.i:                                   ; preds = %getAtomIfSupported.exit82.i.i, %bb.gx
  %.0913.i85.i.i = phi i64 [ %i.acm, %bb.gx ], [ 0, %getAtomIfSupported.exit82.i.i ] ; 2 uses
  %i.acn = getelementptr inbounds nuw [8 x i8], ptr %i.aci, i64 %.0913.i85.i.i
  %i.aco = load i64, ptr %i.acn, align 8
  %i.acp = icmp eq i64 %i.aco, %i.acl
  br i1 %i.acp, label %.lr.ph.i90.i.preheader.i, label %bb.gx

.lr.ph.i90.i.preheader.i:                         ; preds = %.lr.ph.i84.i.i, %bb.gx
  %spec.select.i87.i.ph.i = phi i64 [ %i.acl, %.lr.ph.i84.i.i ], [ 0, %bb.gx ]
  store i64 %spec.select.i87.i.ph.i, ptr getelementptr inbounds nuw (i8, ptr @_glfw, i64 137176), align 8
  %i.acq = load ptr, ptr %i.d, align 8
  %i.acr = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_glfw, i64 137744), align 8
  %i.acs = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_glfw, i64 133888), align 8
  %i.act = call i64 %i.acr(ptr noundef %i.acs, ptr noundef nonnull @.str.335, i32 noundef 0) #12, !inline_history !10 ; 2 uses
  br label %.lr.ph.i90.i.i

bb.gy:                                            ; preds = %.lr.ph.i90.i.i
  %i.acu = add nuw i64 %.0913.i91.i.i, 1          ; 2 uses
  %exitcond.not.i92.i.i = icmp eq i64 %i.acu, %i.xx
  br i1 %exitcond.not.i92.i.i, label %getAtomIfSupported.exit94.i.i, label %.lr.ph.i90.i.i

.lr.ph.i90.i.i:                                   ; preds = %bb.gy, %.lr.ph.i90.i.preheader.i
  %.0913.i91.i.i = phi i64 [ %i.acu, %bb.gy ], [ 0, %.lr.ph.i90.i.preheader.i ] ; 2 uses
  %i.acv = getelementptr inbounds nuw [8 x i8], ptr %i.acq, i64 %.0913.i91.i.i
  %i.acw = load i64, ptr %i.acv, align 8
  %i.acx = icmp eq i64 %i.acw, %i.act
  br i1 %i.acx, label %getAtomIfSupported.exit94.i.i, label %bb.gy

getAtomIfSupported.exit94.critedge.i.i:           ; preds = %getAtomIfSupported.exit82.i.i
  store i64 0, ptr getelementptr inbounds nuw (i8, ptr @_glfw, i64 137176), align 8
  %i.acy = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_glfw, i64 137744), align 8
  %i.acz = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_glfw, i64 133888), align 8
  %i.ada = call i64 %i.acy(ptr noundef %i.acz, ptr noundef nonnull @.str.335, i32 noundef 0) #12, !inline_history !10 ; 0 uses
  br label %getAtomIfSupported.exit94.i.i

getAtomIfSupported.exit94.i.i:                    ; preds = %.lr.ph.i90.i.i, %bb.gy, %getAtomIfSupported.exit94.critedge.i.i
  %spec.select.i93.i.i = phi i64 [ 0, %getAtomIfSupported.exit94.critedge.i.i ], [ 0, %bb.gy ], [ %i.act, %.lr.ph.i90.i.i ]
  store i64 %spec.select.i93.i.i, ptr getelementptr inbounds nuw (i8, ptr @_glfw, i64 137184), align 8
  %i.adb = load ptr, ptr %i.d, align 8            ; 2 uses
  %.not16.i.i = icmp eq ptr %i.adb, null
  br i1 %.not16.i.i, label %bb.ha, label %bb.gz

bb.gz:                                            ; preds = %getAtomIfSupported.exit94.i.i
  %i.adc = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_glfw, i64 137600), align 8
  %i.add = call i32 %i.adc(ptr noundef nonnull %i.adb) #12, !inline_history !8 ; 0 uses
  br label %bb.ha

bb.ha:                                            ; preds = %bb.gz, %getAtomIfSupported.exit94.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #12
  br label %bb.hb

bb.hb:                                            ; preds = %bb.ha, %bb.gj, %bb.gi
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #12
  br label %initExtensions.exit

initExtensions.exit:                              ; preds = %createKeyTablesX11.exit.i, %bb.hb
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #12
  call void @llvm.lifetime.start.p0(ptr nonnull %0) #12
  %i.ade = getelementptr inbounds nuw i8, ptr %0, i64 72
  store i64 4194304, ptr %i.ade, align 8
  %i.adf = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_glfw, i64 137504), align 8
  %i.adg = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_glfw, i64 133888), align 8 ; 2 uses
  %i.adh = load i64, ptr getelementptr inbounds nuw (i8, ptr @_glfw, i64 133904), align 8
  %i.adi = getelementptr inbounds nuw i8, ptr %i.adg, i64 232
  %i.adj = load ptr, ptr %i.adi, align 8
  %i.adk = load i32, ptr getelementptr inbounds nuw (i8, ptr @_glfw, i64 133896), align 8
  %i.adl = sext i32 %i.adk to i64
  %i.adm = getelementptr inbounds [128 x i8], ptr %i.adj, i64 %i.adl
  %i.adn = getelementptr inbounds nuw i8, ptr %i.adm, i64 64
  %i.ado = load ptr, ptr %i.adn, align 8
  %i.adp = call i64 %i.adf(ptr noundef %i.adg, i64 noundef %i.adh, i32 noundef 0, i32 noundef 0, i32 noundef 1, i32 noundef 1, i32 noundef 0, i32 noundef 0, i32 noundef 2, ptr noundef %i.ado, i64 noundef 2048, ptr noundef nonnull %0) #12, !inline_history !11
  call void @llvm.lifetime.end.p0(ptr nonnull %0) #12
  store i64 %i.adp, ptr getelementptr inbounds nuw (i8, ptr @_glfw, i64 133920), align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #12
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(1024) %i.a, i8 0, i64 1024, i1 false)
  %i.adq = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_glfw, i64 138440), align 8
  %.not.i.i9 = icmp eq ptr %i.adq, null
  br i1 %.not.i.i9, label %createHiddenCursor.exit, label %bb.hc

bb.hc:                                            ; preds = %initExtensions.exit
  %i.adr = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_glfw, i64 138448), align 8
  %i.ads = call ptr %i.adr(i32 noundef 16, i32 noundef 16) #12, !inline_history !12 ; 6 uses
  %i.adt = icmp eq ptr %i.ads, null
  br i1 %i.adt, label %createHiddenCursor.exit, label %.lr.ph.preheader.i.i

.lr.ph.preheader.i.i:                             ; preds = %bb.hc
  %i.adu = getelementptr inbounds nuw i8, ptr %i.ads, i64 16
  store i32 0, ptr %i.adu, align 8
  %i.adv = getelementptr inbounds nuw i8, ptr %i.ads, i64 20
  store i32 0, ptr %i.adv, align 4
  %i.adw = getelementptr inbounds nuw i8, ptr %i.ads, i64 32
  %i.adx = load ptr, ptr %i.adw, align 8
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %.lr.ph.preheader.i.i
  %index = phi i64 [ 0, %.lr.ph.preheader.i.i ], [ %index.next, %vector.body ] ; 2 uses
  %i.ady = shl i64 %index, 2                      ; 5 uses
  %next.gep = getelementptr i8, ptr %i.adx, i64 %i.ady
  %next.gep78 = getelementptr i8, ptr %i.a, i64 %i.ady ; 4 uses
  %i.adz = getelementptr i8, ptr %i.a, i64 %i.ady ; 4 uses
  %next.gep79 = getelementptr i8, ptr %i.adz, i64 4
  %i.aea = getelementptr i8, ptr %i.a, i64 %i.ady ; 4 uses
  %next.gep80 = getelementptr i8, ptr %i.aea, i64 8
  %i.aeb = getelementptr i8, ptr %i.a, i64 %i.ady ; 4 uses
  %next.gep81 = getelementptr i8, ptr %i.aeb, i64 12
  %i.aec = getelementptr inbounds nuw i8, ptr %next.gep78, i64 3
  %i.aed = getelementptr i8, ptr %i.adz, i64 7
  %i.aee = getelementptr i8, ptr %i.aea, i64 11
  %i.aef = getelementptr i8, ptr %i.aeb, i64 15
  %i.aeg = load i8, ptr %i.aec, align 1
  %i.aeh = load i8, ptr %i.aed, align 1
  %i.aei = load i8, ptr %i.aee, align 1
  %i.aej = load i8, ptr %i.aef, align 1
  %i.aek = insertelement <4 x i8> poison, i8 %i.aeg, i64 0
  %i.ael = insertelement <4 x i8> %i.aek, i8 %i.aeh, i64 1
  %i.aem = insertelement <4 x i8> %i.ael, i8 %i.aei, i64 2
  %i.aen = insertelement <4 x i8> %i.aem, i8 %i.aej, i64 3 ; 2 uses
  %i.aeo = zext <4 x i8> %i.aen to <4 x i32>
  %i.aep = shl nuw <4 x i32> %i.aeo, splat (i32 24)
  %i.aeq = load i8, ptr %next.gep78, align 16
  %i.aer = load i8, ptr %next.gep79, align 4
  %i.aes = load i8, ptr %next.gep80, align 8
  %i.aet = load i8, ptr %next.gep81, align 4
  %i.aeu = insertelement <4 x i8> poison, i8 %i.aeq, i64 0
  %i.aev = insertelement <4 x i8> %i.aeu, i8 %i.aer, i64 1
  %i.aew = insertelement <4 x i8> %i.aev, i8 %i.aes, i64 2
  %i.aex = insertelement <4 x i8> %i.aew, i8 %i.aet, i64 3
  %3 = zext <4 x i8> %i.aex to <4 x i16>
  %4 = zext <4 x i8> %i.aen to <4 x i16>          ; 3 uses
  %5 = mul nuw <4 x i16> %3, %4
  %i.aey = udiv <4 x i16> %5, splat (i16 255)
  %i.aez = zext nneg <4 x i16> %i.aey to <4 x i32>
  %i.afa = shl nuw nsw <4 x i32> %i.aez, splat (i32 16)
  %i.afb = or <4 x i32> %i.afa, %i.aep
  %i.afc = getelementptr inbounds nuw i8, ptr %next.gep78, i64 1
  %i.afd = getelementptr i8, ptr %i.adz, i64 5
  %i.afe = getelementptr i8, ptr %i.aea, i64 9
  %i.aff = getelementptr i8, ptr %i.aeb, i64 13
  %i.afg = load i8, ptr %i.afc, align 1
  %i.afh = load i8, ptr %i.afd, align 1
  %i.afi = load i8, ptr %i.afe, align 1
  %i.afj = load i8, ptr %i.aff, align 1
  %i.afk = insertelement <4 x i8> poison, i8 %i.afg, i64 0
  %i.afl = insertelement <4 x i8> %i.afk, i8 %i.afh, i64 1
  %i.afm = insertelement <4 x i8> %i.afl, i8 %i.afi, i64 2
  %i.afn = insertelement <4 x i8> %i.afm, i8 %i.afj, i64 3
  %6 = zext <4 x i8> %i.afn to <4 x i16>
  %7 = mul nuw <4 x i16> %6, %4
  %i.afo = udiv <4 x i16> %7, splat (i16 255)
  %i.afp = zext nneg <4 x i16> %i.afo to <4 x i32>
  %i.afq = shl nuw nsw <4 x i32> %i.afp, splat (i32 8)
  %i.afr = or <4 x i32> %i.afb, %i.afq
  %i.afs = getelementptr inbounds nuw i8, ptr %next.gep78, i64 2
  %i.aft = getelementptr i8, ptr %i.adz, i64 6
  %i.afu = getelementptr i8, ptr %i.aea, i64 10
  %i.afv = getelementptr i8, ptr %i.aeb, i64 14
  %i.afw = load i8, ptr %i.afs, align 2
  %i.afx = load i8, ptr %i.aft, align 2
  %i.afy = load i8, ptr %i.afu, align 2
  %i.afz = load i8, ptr %i.afv, align 2
  %i.aga = insertelement <4 x i8> poison, i8 %i.afw, i64 0
  %i.agb = insertelement <4 x i8> %i.aga, i8 %i.afx, i64 1
  %i.agc = insertelement <4 x i8> %i.agb, i8 %i.afy, i64 2
  %i.agd = insertelement <4 x i8> %i.agc, i8 %i.afz, i64 3
  %8 = zext <4 x i8> %i.agd to <4 x i16>
  %9 = mul nuw <4 x i16> %8, %4
  %i.age = udiv <4 x i16> %9, splat (i16 255)
  %i.agf = zext nneg <4 x i16> %i.age to <4 x i32>
  %i.agg = or <4 x i32> %i.afr, %i.agf
  store <4 x i32> %i.agg, ptr %next.gep, align 4
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.agh = icmp eq i64 %index.next, 256
  br i1 %i.agh, label %._crit_edge.i.i11, label %vector.body, !llvm.loop !13

._crit_edge.i.i11:                                ; preds = %vector.body
  %i.agi = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_glfw, i64 138464), align 8
  %i.agj = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_glfw, i64 133888), align 8
  %i.agk = call i64 %i.agi(ptr noundef %i.agj, ptr noundef nonnull %i.ads) #12, !inline_history !12
  %i.agl = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_glfw, i64 138456), align 8
  call void %i.agl(ptr noundef nonnull %i.ads) #12, !inline_history !12
  br label %createHiddenCursor.exit

createHiddenCursor.exit:                          ; preds = %initExtensions.exit, %bb.hc, %._crit_edge.i.i11
  %.1.i.i = phi i64 [ 0, %initExtensions.exit ], [ %i.agk, %._crit_edge.i.i11 ], [ 0, %bb.hc ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #12
  store i64 %.1.i.i, ptr getelementptr inbounds nuw (i8, ptr @_glfw, i64 133928), align 8
  %i.agm = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_glfw, i64 137984), align 8
  %i.agn = call i32 %i.agm() #12
  %i.ago = icmp ne i32 %i.agn, 0
  %i.agp = load i32, ptr getelementptr inbounds nuw (i8, ptr @_glfw, i64 137384), align 8
  %i.agq = icmp ne i32 %i.agp, 0
  %or.cond3 = select i1 %i.ago, i1 %i.agq, i1 false
  br i1 %or.cond3, label %bb.hd, label %bb.he

bb.hd:                                            ; preds = %createHiddenCursor.exit
  %i.agr = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_glfw, i64 137936), align 8
  %i.ags = call ptr %i.agr(ptr noundef nonnull @.str.2) #12 ; 0 uses
  %i.agt = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_glfw, i64 137848), align 8
  %i.agu = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_glfw, i64 133888), align 8
  %i.agv = call i32 %i.agt(ptr noundef %i.agu, ptr noundef null, ptr noundef null, ptr noundef null, ptr noundef nonnull @inputMethodInstantiateCallback, ptr noundef null) #12 ; 0 uses
  br label %bb.he

bb.he:                                            ; preds = %bb.hd, %createHiddenCursor.exit
  call void @_glfwPollMonitorsX11() #12
  br label %bb.hf

bb.hf:                                            ; preds = %createEmptyEventPipe.exit.thread, %bb.he
  %.0 = phi i32 [ 1, %bb.he ], [ 0, %createEmptyEventPipe.exit.thread ]
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define hidden void @_glfwTerminateX11() #0 {
bb.a:
  %i.a = load i64, ptr getelementptr inbounds nuw (i8, ptr @_glfw, i64 133920), align 8
  %.not = icmp eq i64 %i.a, 0
  br i1 %.not, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_glfw, i64 137688), align 8
  %i.c = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_glfw, i64 133888), align 8
  %i.d = load i64, ptr getelementptr inbounds nuw (i8, ptr @_glfw, i64 137304), align 8
  %i.e = tail call i64 %i.b(ptr noundef %i.c, i64 noundef %i.d) #12
  %i.f = load i64, ptr getelementptr inbounds nuw (i8, ptr @_glfw, i64 133920), align 8 ; 2 uses
  %i.g = icmp eq i64 %i.e, %i.f
  br i1 %i.g, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  tail call void @_glfwPushSelectionToManagerX11() #12
  %.pre = load i64, ptr getelementptr inbounds nuw (i8, ptr @_glfw, i64 133920), align 8
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.h = phi i64 [ %.pre, %bb.c ], [ %i.f, %bb.b ]
  %i.i = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_glfw, i64 137552), align 8
  %i.j = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_glfw, i64 133888), align 8
  %i.k = tail call i32 %i.i(ptr noundef %i.j, i64 noundef %i.h) #12 ; 0 uses
  store i64 0, ptr getelementptr inbounds nuw (i8, ptr @_glfw, i64 133920), align 8
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.a
  %i.l = load i64, ptr getelementptr inbounds nuw (i8, ptr @_glfw, i64 133928), align 8 ; 2 uses
  %.not12 = icmp eq i64 %i.l, 0
  br i1 %.not12, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.m = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_glfw, i64 137616), align 8
  %i.n = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_glfw, i64 133888), align 8
  %i.o = tail call i32 %i.m(ptr noundef %i.n, i64 noundef %i.l) #12 ; 0 uses
  store i64 0, ptr getelementptr inbounds nuw (i8, ptr @_glfw, i64 133928), align 8
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %i.p = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_glfw, i64 133968), align 8
  tail call void @_glfw_free(ptr noundef %i.p) #12
  %i.q = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_glfw, i64 133976), align 8
  tail call void @_glfw_free(ptr noundef %i.q) #12
  %i.r = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_glfw, i64 138056), align 8
  %i.s = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_glfw, i64 133888), align 8
  %i.t = tail call i32 %i.r(ptr noundef %i.s, ptr noundef null, ptr noundef null, ptr noundef null, ptr noundef nonnull @inputMethodInstantiateCallback, ptr noundef null) #12 ; 0 uses
  %i.u = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_glfw, i64 133944), align 8 ; 2 uses
  %.not13 = icmp eq ptr %i.u, null
  br i1 %.not13, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.v = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_glfw, i64 137456), align 8
  %i.w = tail call i32 %i.v(ptr noundef nonnull %i.u) #12 ; 0 uses
  store ptr null, ptr getelementptr inbounds nuw (i8, ptr @_glfw, i64 133944), align 8
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %i.x = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_glfw, i64 133888), align 8 ; 2 uses
  %.not14 = icmp eq ptr %i.x, null
  br i1 %.not14, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.y = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_glfw, i64 137448), align 8
  %i.z = tail call i32 %i.y(ptr noundef nonnull %i.x) #12 ; 0 uses
  store ptr null, ptr getelementptr inbounds nuw (i8, ptr @_glfw, i64 133888), align 8
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  %i.aa = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_glfw, i64 138544), align 8 ; 2 uses
  %.not15 = icmp eq ptr %i.aa, null
  br i1 %.not15, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  tail call void @_glfwPlatformFreeModule(ptr noundef nonnull %i.aa) #12
  store ptr null, ptr getelementptr inbounds nuw (i8, ptr @_glfw, i64 138544), align 8
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k
  %i.ab = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_glfw, i64 138440), align 8 ; 2 uses
  %.not16 = icmp eq ptr %i.ab, null
  br i1 %.not16, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  tail call void @_glfwPlatformFreeModule(ptr noundef nonnull %i.ab) #12
  store ptr null, ptr getelementptr inbounds nuw (i8, ptr @_glfw, i64 138440), align 8
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m
  %i.ac = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_glfw, i64 138120), align 8 ; 2 uses
  %.not17 = icmp eq ptr %i.ac, null
  br i1 %.not17, label %bb.q, label %bb.p

bb.p:                                             ; preds = %bb.o
  tail call void @_glfwPlatformFreeModule(ptr noundef nonnull %i.ac) #12
  store ptr null, ptr getelementptr inbounds nuw (i8, ptr @_glfw, i64 138120), align 8
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.o
  %i.ad = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_glfw, i64 138504), align 8 ; 2 uses
  %.not18 = icmp eq ptr %i.ad, null
  br i1 %.not18, label %bb.s, label %bb.r

bb.r:                                             ; preds = %bb.q
  tail call void @_glfwPlatformFreeModule(ptr noundef nonnull %i.ad) #12
  store ptr null, ptr getelementptr inbounds nuw (i8, ptr @_glfw, i64 138504), align 8
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %bb.q
  %i.ae = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_glfw, i64 138680), align 8 ; 2 uses
  %.not19 = icmp eq ptr %i.ae, null
  br i1 %.not19, label %bb.u, label %bb.t

bb.t:                                             ; preds = %bb.s
  tail call void @_glfwPlatformFreeModule(ptr noundef nonnull %i.ae) #12
  store ptr null, ptr getelementptr inbounds nuw (i8, ptr @_glfw, i64 138680), align 8
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %bb.s
  %i.af = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_glfw, i64 138568), align 8 ; 2 uses
  %.not20 = icmp eq ptr %i.af, null
  br i1 %.not20, label %bb.w, label %bb.v

bb.v:                                             ; preds = %bb.u
  tail call void @_glfwPlatformFreeModule(ptr noundef nonnull %i.af) #12
  store ptr null, ptr getelementptr inbounds nuw (i8, ptr @_glfw, i64 138568), align 8
  br label %bb.w

bb.w:                                             ; preds = %bb.v, %bb.u
  %i.ag = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_glfw, i64 138624), align 8 ; 2 uses
  %.not21 = icmp eq ptr %i.ag, null
  br i1 %.not21, label %bb.y, label %bb.x

bb.x:                                             ; preds = %bb.w
  tail call void @_glfwPlatformFreeModule(ptr noundef nonnull %i.ag) #12
  store ptr null, ptr getelementptr inbounds nuw (i8, ptr @_glfw, i64 138624), align 8
  br label %bb.y

bb.y:                                             ; preds = %bb.x, %bb.w
  tail call void @_glfwTerminateOSMesa() #12
  tail call void @_glfwTerminateEGL() #12
  tail call void @_glfwTerminateGLX() #12
  %i.ah = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_glfw, i64 137376), align 8 ; 2 uses
  %.not22 = icmp eq ptr %i.ah, null
  br i1 %.not22, label %bb.aa, label %bb.z

bb.z:                                             ; preds = %bb.y
  tail call void @_glfwPlatformFreeModule(ptr noundef nonnull %i.ah) #12
  store ptr null, ptr getelementptr inbounds nuw (i8, ptr @_glfw, i64 137376), align 8
  br label %bb.aa

bb.aa:                                            ; preds = %bb.z, %bb.y
  %i.ai = load i32, ptr getelementptr inbounds nuw (i8, ptr @_glfw, i64 136968), align 8 ; 2 uses
  %i.aj = icmp ne i32 %i.ai, 0
end_hunk_1
