Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/curl/original/http_aws_sigv4?download=true
inline.NumInlined: 26
inline.NumDeleted: 21
begin_hunk_0
@.str.23 = private unnamed_addr constant [12 x i8] c"X-%.*s-Date\00", align 1
@.str.24 = private unnamed_addr constant [15 x i8] c"x-%.*s-date:%s\00", align 1
@.str.25 = private unnamed_addr constant [5 x i8] c"Host\00", align 1
@.str.26 = private unnamed_addr constant [3 x i8] c"\0A\0D\00", align 1
@.str.27 = private unnamed_addr constant [8 x i8] c"host:%s\00", align 1
@Curl_cstrdup = external local_unnamed_addr global ptr, align 8
@.str.28 = private unnamed_addr constant [9 x i8] c"%s: %s\0D\0A\00", align 1
@.str.29 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.30 = private unnamed_addr constant [2 x i8] c";\00", align 1
@.str.31 = private unnamed_addr constant [2 x i8] c":\00", align 1
@.str.32 = private unnamed_addr constant [5 x i8] c"Date\00", align 1
@.str.33 = private unnamed_addr constant [2 x i8] c",\00", align 1
@.str.34 = private unnamed_addr constant [11 x i8] c"s3-express\00", align 1
@.str.35 = private unnamed_addr constant [12 x i8] c"s3-outposts\00", align 1
@.str.36 = private unnamed_addr constant [14 x i8] c"%.*s4_request\00", align 1
@.str.37 = private unnamed_addr constant [16 x i8] c"%s/%.*s/%.*s/%s\00", align 1
@.str.38 = private unnamed_addr constant [27 x i8] c"%.*s4-HMAC-SHA256\0A%s\0A%s\0A%s\00", align 1
@.str.39 = private unnamed_addr constant [50 x i8] c"aws_sigv4: String to sign (enclosed in []) - [%s]\00", align 1
@.str.40 = private unnamed_addr constant [8 x i8] c"%.*s4%s\00", align 1
@Curl_HMAC_SHA256 = external constant %struct.HMAC_params, align 8
@.str.41 = private unnamed_addr constant [26 x i8] c"aws_sigv4: Signature - %s\00", align 1
@.str.42 = private unnamed_addr constant [90 x i8] c"Authorization: %.*s4-HMAC-SHA256 Credential=%s/%s, SignedHeaders=%s, Signature=%s\0D\0A%s%s%s\00", align 1
@.str.43 = private unnamed_addr constant [3 x i8] c"\0D\0A\00", align 1

; Function Attrs: nounwind uwtable
define i32 @canon_path(ptr noundef %0, i64 noundef %1, ptr noundef %2, i1 noundef zeroext %3) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca i8, align 1                       ; 4 uses
  %4 = alloca %struct.Curl_str, align 8           ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #8
  call void @curlx_str_assign(ptr noundef nonnull %4, ptr noundef %0, i64 noundef %1) #8
  br i1 %3, label %bb.b, label %uri_encode_path.exit

bb.b:                                             ; preds = %bb.a
  %i.b = load ptr, ptr %4, align 8, !tbaa !12
  %i.c = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  %i.d = load i64, ptr %i.c, align 8, !tbaa !13
  %.not21.i = icmp eq i64 %i.d, 0
  br i1 %.not21.i, label %uri_encode_path.exit.thread, label %.lr.ph.i

bb.c:                                             ; preds = %bb.f
  %i.e = add nuw i64 %.01418.i, 1                 ; 2 uses
  %i.f = load i64, ptr %i.c, align 8, !tbaa !13
  %i.g = icmp ult i64 %i.e, %i.f
  br i1 %i.g, label %.lr.ph.i, label %uri_encode_path.exit.thread, !llvm.loop !16

.lr.ph.i:                                         ; preds = %bb.b, %bb.c
  %.01418.i = phi i64 [ %i.e, %bb.c ], [ 0, %bb.b ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #8
  %i.h = getelementptr inbounds nuw i8, ptr %i.b, i64 %.01418.i
  %i.i = load i8, ptr %i.h, align 1, !tbaa !15    ; 5 uses
  store i8 %i.i, ptr %i.a, align 1, !tbaa !15
  %i.j = add i8 %i.i, -48
  %or.cond.i.i = icmp ult i8 %i.j, 10
  %i.k = and i8 %i.i, -33
  %i.l = add i8 %i.k, -65
  %i.m = icmp ult i8 %i.l, 26
  %or.cond25.i.i = or i1 %or.cond.i.i, %i.m
  br i1 %or.cond25.i.i, label %is_reserved_char.exit.thread.i, label %bb.d

bb.d:                                             ; preds = %.lr.ph.i
  switch i8 %i.i, label %bb.e [
    i8 95, label %is_reserved_char.exit.thread.i
    i8 46, label %is_reserved_char.exit.thread.i
    i8 45, label %is_reserved_char.exit.thread.i
    i8 126, label %is_reserved_char.exit.thread.i
    i8 47, label %is_reserved_char.exit.thread.i
  ]

is_reserved_char.exit.thread.i:                   ; preds = %bb.d, %bb.d, %bb.d, %bb.d, %bb.d, %.lr.ph.i
  %i.n = call i32 @curlx_dyn_addn(ptr noundef %2, ptr noundef nonnull %i.a, i64 noundef 1) #8
  br label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.o = zext i8 %i.i to i32
  %i.p = call i32 (ptr, ptr, ...) @curlx_dyn_addf(ptr noundef %2, ptr noundef nonnull @.str.7, i32 noundef %i.o) #8
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %is_reserved_char.exit.thread.i
  %.013.i = phi i32 [ %i.n, %is_reserved_char.exit.thread.i ], [ %i.p, %bb.e ] ; 2 uses
  %.not.i = icmp eq i32 %.013.i, 0
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #8
  br i1 %.not.i, label %bb.c, label %uri_encode_path.exit.thread12

uri_encode_path.exit:                             ; preds = %bb.a
  %i.q = call i32 @curlx_dyn_addn(ptr noundef %2, ptr noundef %0, i64 noundef %1) #8 ; 2 uses
  %.not = icmp eq i32 %i.q, 0
  br i1 %.not, label %uri_encode_path.exit.thread, label %uri_encode_path.exit.thread12

uri_encode_path.exit.thread:                      ; preds = %bb.c, %bb.b, %uri_encode_path.exit
  %i.r = call i64 @curlx_dyn_len(ptr noundef %2) #8
  %i.s = icmp eq i64 %i.r, 0
  br i1 %i.s, label %bb.g, label %uri_encode_path.exit.thread12

bb.g:                                             ; preds = %uri_encode_path.exit.thread
  %i.t = call i32 @curlx_dyn_add(ptr noundef %2, ptr noundef nonnull @.str) #8
  br label %uri_encode_path.exit.thread12

uri_encode_path.exit.thread12:                    ; preds = %bb.f, %uri_encode_path.exit.thread, %bb.g, %uri_encode_path.exit
  %.1 = phi i32 [ %i.q, %uri_encode_path.exit ], [ %i.t, %bb.g ], [ 0, %uri_encode_path.exit.thread ], [ %.013.i, %bb.f ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #8
  ret i32 %.1
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

declare void @curlx_str_assign(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #2

declare i32 @curlx_dyn_addn(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #2

declare i64 @curlx_dyn_len(ptr noundef) local_unnamed_addr #2

declare i32 @curlx_dyn_add(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: nounwind uwtable
define i32 @canon_query(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
bb.a:
  %2 = alloca [128 x %struct.dynbuf], align 16    ; 6 uses
  %3 = alloca [128 x %struct.pair], align 16      ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #8
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #8
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %dyn_array_free.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %0) #9 ; 6 uses
  %.not70.i = icmp eq i64 %i.a, 0
  br i1 %.not70.i, label %pair_array_free.exit.thread217, label %.lr.ph.i.outer

.lr.ph.i.outer:                                   ; preds = %bb.b, %.thread
  %.066.i.ph = phi i64 [ %.1.i, %.thread ], [ 0, %bb.b ] ; 6 uses
  %.03365.i.ph = phi i64 [ %.134.i, %.thread ], [ 0, %bb.b ] ; 4 uses
  %.03963.i.ph = phi i64 [ %i.m, %.thread ], [ 0, %bb.b ] ; 6 uses
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.outer, %bb.f
  %.03664.i = phi i64 [ %i.l, %bb.f ], [ 0, %.lr.ph.i.outer ] ; 4 uses
  %.04162.i = phi i64 [ %.pre.i, %bb.f ], [ %.03963.i.ph, %.lr.ph.i.outer ] ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 %.04162.i
  %i.c = load i8, ptr %i.b, align 1, !tbaa !15
  %i.d = icmp eq i8 %i.c, 38
  br i1 %i.d, label %bb.c, label %bb.f

bb.c:                                             ; preds = %.lr.ph.i
  %.not55.i = icmp eq i64 %.03664.i, 0
  br i1 %.not55.i, label %.thread, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.e = getelementptr inbounds nuw [32 x i8], ptr %2, i64 %.03365.i.ph ; 2 uses
  %i.f = add i64 %.03664.i, 1
  call void @curlx_dyn_init(ptr noundef nonnull %i.e, i64 noundef %i.f) #8
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 %.03963.i.ph
  %i.h = call i32 @curlx_dyn_addn(ptr noundef nonnull %i.e, ptr noundef nonnull %i.g, i64 noundef %.03664.i) #8 ; 2 uses
  %.not56.i = icmp eq i32 %i.h, 0
  br i1 %.not56.i, label %bb.e, label %pair_array_free.exit

bb.e:                                             ; preds = %bb.d
  %i.i = add i64 %.03365.i.ph, 1
  %i.j = add i64 %.066.i.ph, 1                    ; 2 uses
  %i.k = icmp eq i64 %i.j, 128
  br i1 %i.k, label %.lr.ph.i89.preheader, label %.thread

bb.f:                                             ; preds = %.lr.ph.i
  %i.l = add i64 %.03664.i, 1
  %.pre.i = add nuw i64 %.04162.i, 1              ; 2 uses
  %exitcond.not.i = icmp eq i64 %.pre.i, %i.a
  br i1 %exitcond.not.i, label %._crit_edge.i, label %.lr.ph.i, !llvm.loop !17

.thread:                                          ; preds = %bb.c, %bb.e
  %.134.i = phi i64 [ %i.i, %bb.e ], [ %.03365.i.ph, %bb.c ]
  %.1.i = phi i64 [ %i.j, %bb.e ], [ %.066.i.ph, %bb.c ] ; 2 uses
  %i.m = add nuw i64 %.04162.i, 1                 ; 2 uses
  %exitcond.not.i99 = icmp eq i64 %i.m, %i.a
  br i1 %exitcond.not.i99, label %split_to_dyn_array.exit, label %.lr.ph.i.outer, !llvm.loop !17

._crit_edge.i:                                    ; preds = %bb.f
  %.not.i = icmp eq i64 %i.a, %.03963.i.ph
  br i1 %.not.i, label %split_to_dyn_array.exit, label %bb.g

bb.g:                                             ; preds = %._crit_edge.i
  %i.n = sub i64 %i.a, %.03963.i.ph
  %i.o = getelementptr inbounds nuw [32 x i8], ptr %2, i64 %.03365.i.ph ; 2 uses
  %i.p = sub i64 %i.a, %.03963.i.ph
  %i.q = add i64 %i.p, 1
  call void @curlx_dyn_init(ptr noundef nonnull %i.o, i64 noundef %i.q) #8
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 %.03963.i.ph
  %i.s = call i32 @curlx_dyn_addn(ptr noundef nonnull %i.o, ptr noundef nonnull %i.r, i64 noundef %i.n) #8 ; 2 uses
  %.not54.i = icmp eq i32 %i.s, 0
  br i1 %.not54.i, label %bb.h, label %pair_array_free.exit

bb.h:                                             ; preds = %bb.g
  %i.t = add i64 %.066.i.ph, 1                    ; 2 uses
  %i.u = icmp eq i64 %i.t, 128
  br i1 %i.u, label %.lr.ph.i89.preheader, label %split_to_dyn_array.exit

split_to_dyn_array.exit:                          ; preds = %.thread, %bb.h, %._crit_edge.i
  %.3.i = phi i64 [ %i.t, %bb.h ], [ %.066.i.ph, %._crit_edge.i ], [ %.1.i, %.thread ] ; 10 uses
  %.not158 = icmp eq i64 %.3.i, 0
  br i1 %.not158, label %pair_array_free.exit.thread217, label %.lr.ph

.lr.ph:                                           ; preds = %split_to_dyn_array.exit, %.thread117
  %.061149 = phi i64 [ %i.ah, %.thread117 ], [ 0, %split_to_dyn_array.exit ] ; 3 uses
  %i.v = getelementptr inbounds nuw [32 x i8], ptr %2, i64 %.061149 ; 2 uses
  %i.w = call i64 @curlx_dyn_len(ptr noundef nonnull %i.v) #8 ; 2 uses
  %i.x = call ptr @curlx_dyn_ptr(ptr noundef nonnull %i.v) #8 ; 5 uses
  %i.y = call ptr @strchr(ptr noundef nonnull dereferenceable(1) %i.x, i32 noundef 61) #9 ; 4 uses
  %.not80 = icmp eq ptr %i.y, null                ; 2 uses
  br i1 %.not80, label %bb.i, label %bb.j

bb.i:                                             ; preds = %.lr.ph
  %i.z = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.x) #9
  br label %bb.k

bb.j:                                             ; preds = %.lr.ph
  %i.aa = ptrtoint ptr %i.y to i64
  %i.ab = ptrtoint ptr %i.x to i64
  %i.ac = sub i64 %i.aa, %i.ab
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  %.0 = phi i64 [ %i.ac, %bb.j ], [ %i.z, %bb.i ]
  %i.ad = getelementptr inbounds nuw [64 x i8], ptr %3, i64 %.061149 ; 3 uses
  %i.ae = mul i64 %i.w, 3
  %i.af = add i64 %i.ae, 1                        ; 2 uses
  call void @curlx_dyn_init(ptr noundef nonnull %i.ad, i64 noundef %i.af) #8
  %i.ag = getelementptr inbounds nuw i8, ptr %i.ad, i64 32 ; 4 uses
  call void @curlx_dyn_init(ptr noundef nonnull %i.ag, i64 noundef %i.af) #8
  %i.ah = add nuw i64 %.061149, 1                 ; 5 uses
  %i.ai = call fastcc i32 @normalize_query(ptr noundef nonnull %i.x, i64 noundef %.0, ptr noundef %i.ad) ; 2 uses
  %.not81 = icmp eq i32 %i.ai, 0
  br i1 %.not81, label %bb.l, label %.preheader.preheader

bb.l:                                             ; preds = %bb.k
  br i1 %.not80, label %bb.o, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.aj = getelementptr inbounds nuw i8, ptr %i.x, i64 %i.w ; 2 uses
  %i.ak = getelementptr inbounds i8, ptr %i.aj, i64 -1
  %.not82 = icmp eq ptr %i.y, %i.ak
  br i1 %.not82, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.al = getelementptr inbounds nuw i8, ptr %i.y, i64 1 ; 2 uses
  %i.am = ptrtoint ptr %i.aj to i64
  %i.an = ptrtoint ptr %i.al to i64
  %i.ao = sub i64 %i.am, %i.an
  %i.ap = call fastcc i32 @normalize_query(ptr noundef nonnull %i.al, i64 noundef %i.ao, ptr noundef %i.ag) ; 2 uses
  %.not83 = icmp eq i32 %i.ap, 0
  br i1 %.not83, label %.thread117, label %.preheader.preheader

bb.o:                                             ; preds = %bb.l, %bb.m
  call void @curlx_dyn_init(ptr noundef nonnull %i.ag, i64 noundef 2) #8
  %i.aq = call i32 @curlx_dyn_addn(ptr noundef nonnull %i.ag, ptr noundef nonnull @.str.1, i64 noundef 1) #8 ; 2 uses
  %.not84 = icmp eq i32 %i.aq, 0
  br i1 %.not84, label %.thread117, label %.preheader.preheader

.thread117:                                       ; preds = %bb.n, %bb.o
  %exitcond.not = icmp eq i64 %i.ah, %.3.i
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !18

pair_array_free.exit.thread217:                   ; preds = %split_to_dyn_array.exit, %bb.b
  call void @qsort(ptr noundef nonnull %3, i64 noundef 0, i64 noundef 64, ptr noundef nonnull @compare_func) #8
  br label %dyn_array_free.exit

._crit_edge:                                      ; preds = %.thread117
  call void @qsort(ptr noundef nonnull %3, i64 noundef %.3.i, i64 noundef 64, ptr noundef nonnull @compare_func) #8
  %i.ar = call ptr @curlx_dyn_ptr(ptr noundef nonnull %3) #8 ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %3, i64 32 ; 2 uses
  %i.at = call ptr @curlx_dyn_ptr(ptr noundef nonnull %i.as) #8 ; 2 uses
  %i.au = call i64 @curlx_dyn_len(ptr noundef nonnull %i.as) #8
  %i.av = icmp ne ptr %i.at, null
  %i.aw = icmp ne i64 %i.au, 0
  %or.cond.peel = select i1 %i.av, i1 %i.aw, i1 false
  br i1 %or.cond.peel, label %bb.q, label %bb.p

bb.p:                                             ; preds = %._crit_edge
  %i.ax = call i32 (ptr, ptr, ...) @curlx_dyn_addf(ptr noundef %1, ptr noundef nonnull @.str.4, ptr noundef %i.ar) #8
  br label %bb.r

bb.q:                                             ; preds = %._crit_edge
  %i.ay = call i32 (ptr, ptr, ...) @curlx_dyn_addf(ptr noundef %1, ptr noundef nonnull @.str.3, ptr noundef %i.ar, ptr noundef nonnull %i.at) #8
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %bb.p
  %.6.peel = phi i32 [ %i.ax, %bb.p ], [ %i.ay, %bb.q ] ; 2 uses
  %.not79.peel = icmp eq i32 %.6.peel, 0
  br i1 %.not79.peel, label %bb.s, label %.preheader.preheader

bb.s:                                             ; preds = %bb.r
  %exitcond173.peel.not = icmp eq i64 %.3.i, 1
  br i1 %exitcond173.peel.not, label %.preheader.preheader, label %.lr.ph152.peel.next

bb.t:                                             ; preds = %bb.x
  %i.az = add nuw i64 %.162150, 1                 ; 2 uses
  %exitcond173.not = icmp eq i64 %i.az, %.3.i
  br i1 %exitcond173.not, label %.preheader.preheader, label %.lr.ph152.peel.next, !llvm.loop !19

.lr.ph152.peel.next:                              ; preds = %bb.s, %bb.t
  %.162150 = phi i64 [ %i.az, %bb.t ], [ 1, %bb.s ] ; 2 uses
  %i.ba = call i32 @curlx_dyn_addn(ptr noundef %1, ptr noundef nonnull @.str.2, i64 noundef 1) #8 ; 2 uses
  %.not78 = icmp eq i32 %i.ba, 0
  br i1 %.not78, label %bb.u, label %.preheader.preheader

bb.u:                                             ; preds = %.lr.ph152.peel.next
  %i.bb = getelementptr inbounds nuw [64 x i8], ptr %3, i64 %.162150 ; 2 uses
  %i.bc = call ptr @curlx_dyn_ptr(ptr noundef nonnull %i.bb) #8 ; 2 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bb, i64 32 ; 2 uses
  %i.be = call ptr @curlx_dyn_ptr(ptr noundef nonnull %i.bd) #8 ; 2 uses
  %i.bf = call i64 @curlx_dyn_len(ptr noundef nonnull %i.bd) #8
  %i.bg = icmp ne ptr %i.be, null
  %i.bh = icmp ne i64 %i.bf, 0
  %or.cond = select i1 %i.bg, i1 %i.bh, i1 false
  br i1 %or.cond, label %bb.v, label %bb.w

bb.v:                                             ; preds = %bb.u
  %i.bi = call i32 (ptr, ptr, ...) @curlx_dyn_addf(ptr noundef %1, ptr noundef nonnull @.str.3, ptr noundef %i.bc, ptr noundef nonnull %i.be) #8
  br label %bb.x

bb.w:                                             ; preds = %bb.u
  %i.bj = call i32 (ptr, ptr, ...) @curlx_dyn_addf(ptr noundef %1, ptr noundef nonnull @.str.4, ptr noundef %i.bc) #8
  br label %bb.x

bb.x:                                             ; preds = %bb.v, %bb.w
  %.6 = phi i32 [ %i.bj, %bb.w ], [ %i.bi, %bb.v ] ; 2 uses
  %.not79 = icmp eq i32 %.6, 0
  br i1 %.not79, label %bb.t, label %.preheader.preheader

.preheader.preheader:                             ; preds = %bb.n, %bb.k, %bb.o, %bb.t, %.lr.ph152.peel.next, %bb.x, %bb.r, %bb.s
  %.164206 = phi i64 [ %.3.i, %bb.t ], [ %.3.i, %bb.r ], [ 1, %bb.s ], [ %.3.i, %bb.x ], [ %.3.i, %.lr.ph152.peel.next ], [ %i.ah, %bb.o ], [ %i.ah, %bb.k ], [ %i.ah, %bb.n ]
  %.7205 = phi i32 [ 0, %bb.t ], [ %.6.peel, %bb.r ], [ 0, %bb.s ], [ %.6, %bb.x ], [ %i.ba, %.lr.ph152.peel.next ], [ %i.ap, %bb.n ], [ %i.ai, %bb.k ], [ %i.aq, %bb.o ]
  br label %.preheader

.preheader:                                       ; preds = %.preheader.preheader, %.preheader
  %.06.i = phi i64 [ %i.bm, %.preheader ], [ 0, %.preheader.preheader ] ; 2 uses
  %i.bk = getelementptr inbounds nuw [64 x i8], ptr %3, i64 %.06.i ; 2 uses
  call void @curlx_dyn_free(ptr noundef nonnull %i.bk) #8
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bk, i64 32
  call void @curlx_dyn_free(ptr noundef nonnull %i.bl) #8
  %i.bm = add nuw i64 %.06.i, 1                   ; 2 uses
  %.not.i87 = icmp eq i64 %i.bm, %.164206
  br i1 %.not.i87, label %pair_array_free.exit, label %.preheader, !llvm.loop !20

pair_array_free.exit:                             ; preds = %bb.d, %.preheader, %bb.g
  %.7130 = phi i32 [ %i.s, %bb.g ], [ %.7205, %.preheader ], [ %i.h, %bb.d ] ; 2 uses
  %.3.i112129 = phi i64 [ %.066.i.ph, %bb.g ], [ %.3.i, %.preheader ], [ %.066.i.ph, %bb.d ] ; 2 uses
  %.not.i88 = icmp eq i64 %.3.i112129, 0
  br i1 %.not.i88, label %dyn_array_free.exit, label %.lr.ph.i89.preheader

.lr.ph.i89.preheader:                             ; preds = %bb.e, %bb.h, %pair_array_free.exit
  %.3.i112129216 = phi i64 [ %.3.i112129, %pair_array_free.exit ], [ 128, %bb.h ], [ 128, %bb.e ]
  %.7130215 = phi i32 [ %.7130, %pair_array_free.exit ], [ 100, %bb.h ], [ 100, %bb.e ]
  br label %.lr.ph.i89

.lr.ph.i89:                                       ; preds = %.lr.ph.i89.preheader, %.lr.ph.i89
  %.04.i = phi i64 [ %i.bo, %.lr.ph.i89 ], [ 0, %.lr.ph.i89.preheader ] ; 2 uses
  %i.bn = getelementptr inbounds nuw [32 x i8], ptr %2, i64 %.04.i
  call void @curlx_dyn_free(ptr noundef nonnull %i.bn) #8
  %i.bo = add nuw i64 %.04.i, 1                   ; 2 uses
  %exitcond.not.i90 = icmp eq i64 %i.bo, %.3.i112129216
  br i1 %exitcond.not.i90, label %dyn_array_free.exit, label %.lr.ph.i89, !llvm.loop !21

dyn_array_free.exit:                              ; preds = %.lr.ph.i89, %pair_array_free.exit.thread217, %pair_array_free.exit, %bb.a
  %.067 = phi i32 [ 0, %bb.a ], [ %.7130, %pair_array_free.exit ], [ 0, %pair_array_free.exit.thread217 ], [ %.7130215, %.lr.ph.i89 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #8
  ret i32 %.067
}

declare ptr @curlx_dyn_ptr(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare ptr @strchr(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i64 @strlen(ptr noundef captures(none)) local_unnamed_addr #3

declare void @curlx_dyn_init(ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal fastcc i32 @normalize_query(ptr nofree noundef readonly captures(none) %0, i64 noundef %1, ptr noundef nonnull %2) unnamed_addr #0 {
bb.a:
  %i.a = alloca i8, align 1                       ; 5 uses
  %.not53.not = icmp eq i64 %1, 0
  br i1 %.not53.not, label %.critedge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %bb.l
  %.02755 = phi ptr [ %.229, %bb.l ], [ %0, %bb.a ] ; 5 uses
  %.03054 = phi i64 [ %.232, %bb.l ], [ %1, %bb.a ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #8
  %i.b = load i8, ptr %.02755, align 1, !tbaa !15 ; 3 uses
  store i8 %i.b, ptr %i.a, align 1, !tbaa !15
  %i.c = icmp eq i8 %i.b, 37
  %i.d = icmp ugt i64 %.03054, 2
  %or.cond = and i1 %i.d, %i.c
  br i1 %or.cond, label %bb.b, label %bb.f

bb.b:                                             ; preds = %.lr.ph
  %i.e = getelementptr inbounds nuw i8, ptr %.02755, i64 1
  %i.f = load i8, ptr %i.e, align 1, !tbaa !15
  %.fr56 = freeze i8 %i.f                         ; 3 uses
  %i.g = add i8 %.fr56, -48
  %or.cond42 = icmp ult i8 %i.g, 10
  br i1 %or.cond42, label %bb.c, label %switch.early.test

switch.early.test:                                ; preds = %bb.b
  switch i8 %.fr56, label %bb.f [
    i8 102, label %bb.c
    i8 101, label %bb.c
    i8 100, label %bb.c
    i8 99, label %bb.c
    i8 98, label %bb.c
    i8 97, label %bb.c
    i8 70, label %bb.c
    i8 69, label %bb.c
    i8 68, label %bb.c
    i8 67, label %bb.c
    i8 66, label %bb.c
    i8 65, label %bb.c
  ]

bb.c:                                             ; preds = %switch.early.test, %switch.early.test, %switch.early.test, %switch.early.test, %switch.early.test, %switch.early.test, %switch.early.test, %switch.early.test, %switch.early.test, %switch.early.test, %switch.early.test, %switch.early.test, %bb.b
  %i.h = getelementptr inbounds nuw i8, ptr %.02755, i64 2
  %i.i = load i8, ptr %i.h, align 1, !tbaa !15
  %.fr57 = freeze i8 %i.i                         ; 3 uses
  %i.j = add i8 %.fr57, -48
  %or.cond45 = icmp ult i8 %i.j, 10
  br i1 %or.cond45, label %bb.d, label %switch.early.test52

switch.early.test52:                              ; preds = %bb.c
  switch i8 %.fr57, label %bb.f [
    i8 102, label %bb.d
    i8 101, label %bb.d
    i8 100, label %bb.d
    i8 99, label %bb.d
    i8 98, label %bb.d
    i8 97, label %bb.d
    i8 70, label %bb.d
    i8 69, label %bb.d
    i8 68, label %bb.d
    i8 67, label %bb.d
    i8 66, label %bb.d
    i8 65, label %bb.d
  ]

bb.d:                                             ; preds = %switch.early.test52, %switch.early.test52, %switch.early.test52, %switch.early.test52, %switch.early.test52, %switch.early.test52, %switch.early.test52, %switch.early.test52, %switch.early.test52, %switch.early.test52, %switch.early.test52, %switch.early.test52, %bb.c
  %i.k = zext nneg i8 %.fr56 to i64
  %i.l = getelementptr i8, ptr @curlx_hexasciitable, i64 %i.k
  %i.m = getelementptr i8, ptr %i.l, i64 -48
  %i.n = load i8, ptr %i.m, align 1, !tbaa !15
  %i.o = shl i8 %i.n, 4
  %i.p = zext nneg i8 %.fr57 to i64
  %i.q = getelementptr i8, ptr @curlx_hexasciitable, i64 %i.p
  %i.r = getelementptr i8, ptr %i.q, i64 -48
  %i.s = load i8, ptr %i.r, align 1, !tbaa !15
  %i.t = and i8 %i.s, 15
  %i.u = or disjoint i8 %i.t, %i.o                ; 3 uses
  store i8 %i.u, ptr %i.a, align 1, !tbaa !15
  %i.v = getelementptr inbounds nuw i8, ptr %.02755, i64 3 ; 2 uses
  %i.w = add i64 %.03054, -3                      ; 2 uses
  %i.x = icmp eq i8 %i.u, 43
  br i1 %i.x, label %bb.e, label %bb.g

bb.e:                                             ; preds = %bb.d
  %i.y = call i32 @curlx_dyn_addn(ptr noundef nonnull %2, ptr noundef nonnull @.str.8, i64 noundef 3) #8
  br label %bb.l, !llvm.loop !23

bb.f:                                             ; preds = %switch.early.test52, %switch.early.test, %.lr.ph
  %i.z = getelementptr inbounds nuw i8, ptr %.02755, i64 1
  %i.aa = add i64 %.03054, -1
  br label %bb.g

bb.g:                                             ; preds = %bb.d, %bb.f
  %i.ab = phi i8 [ %i.u, %bb.d ], [ %i.b, %bb.f ] ; 4 uses
  %.131 = phi i64 [ %i.w, %bb.d ], [ %i.aa, %bb.f ] ; 3 uses
  %.128 = phi ptr [ %i.v, %bb.d ], [ %i.z, %bb.f ] ; 3 uses
  %i.ac = add i8 %i.ab, -48
  %or.cond.i = icmp ult i8 %i.ac, 10
  %i.ad = and i8 %i.ab, -33
  %i.ae = add i8 %i.ad, -65
  %i.af = icmp ult i8 %i.ae, 26
  %or.cond25.i = or i1 %or.cond.i, %i.af
  br i1 %or.cond25.i, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  switch i8 %i.ab, label %bb.k [
    i8 95, label %bb.i
    i8 46, label %bb.i
    i8 45, label %bb.i
    i8 126, label %bb.i
    i8 43, label %bb.j
  ]

bb.i:                                             ; preds = %bb.h, %bb.h, %bb.h, %bb.h, %bb.g
  %i.ag = call i32 @curlx_dyn_addn(ptr noundef nonnull %2, ptr noundef nonnull %i.a, i64 noundef 1) #8
  br label %bb.l

bb.j:                                             ; preds = %bb.h
  %i.ah = call i32 @curlx_dyn_add(ptr noundef nonnull %2, ptr noundef nonnull @.str.9) #8
  br label %bb.l

bb.k:                                             ; preds = %bb.h
  %i.ai = zext i8 %i.ab to i32
  %i.aj = call i32 (ptr, ptr, ...) @curlx_dyn_addf(ptr noundef nonnull %2, ptr noundef nonnull @.str.7, i32 noundef %i.ai) #8
  br label %bb.l

bb.l:                                             ; preds = %bb.i, %bb.k, %bb.j, %bb.e
  %.232 = phi i64 [ %i.w, %bb.e ], [ %.131, %bb.j ], [ %.131, %bb.k ], [ %.131, %bb.i ] ; 2 uses
  %.229 = phi ptr [ %i.v, %bb.e ], [ %.128, %bb.j ], [ %.128, %bb.k ], [ %.128, %bb.i ]
  %.2 = phi i32 [ %i.y, %bb.e ], [ %i.ah, %bb.j ], [ %i.aj, %bb.k ], [ %i.ag, %bb.i ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #8
  %.not = icmp ne i64 %.232, 0
  %.not40 = icmp eq i32 %.2, 0
  %or.cond41 = select i1 %.not, i1 %.not40, i1 false
  br i1 %or.cond41, label %.lr.ph, label %.critedge

.critedge:                                        ; preds = %bb.l, %bb.a
  %.0.lcssa = phi i32 [ 0, %bb.a ], [ %.2, %bb.l ]
  ret i32 %.0.lcssa
}

; Function Attrs: nofree
declare void @qsort(ptr noundef, i64 noundef, i64 noundef, ptr noundef captures(none)) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define internal i32 @compare_func(ptr noundef %0, ptr noundef %1) #0 {
bb.a:
  %i.a = tail call i64 @curlx_dyn_len(ptr noundef %0) #8
  %i.b = tail call i64 @curlx_dyn_len(ptr noundef %1) #8
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.d = tail call i64 @curlx_dyn_len(ptr noundef nonnull %i.c) #8
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 2 uses
  %i.f = tail call i64 @curlx_dyn_len(ptr noundef nonnull %i.e) #8
  %i.g = icmp eq i64 %i.a, 0                      ; 3 uses
  %i.h = icmp eq i64 %i.b, 0                      ; 2 uses
  %or.cond = select i1 %i.g, i1 %i.h, i1 false
  %not.or.cond = xor i1 %or.cond, true
  %.mux = sext i1 %not.or.cond to i32
  %brmerge25 = select i1 %i.g, i1 true, i1 %i.h
  %.mux.mux = select i1 %i.g, i32 %.mux, i32 1
  br i1 %brmerge25, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.i = tail call ptr @curlx_dyn_ptr(ptr noundef nonnull %0) #8
  %i.j = tail call ptr @curlx_dyn_ptr(ptr noundef nonnull %1) #8
  %i.k = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.i, ptr noundef nonnull dereferenceable(1) %i.j) #9 ; 2 uses
end_hunk_0
