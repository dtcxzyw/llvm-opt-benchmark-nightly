Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/libsodium/original/argon2-encoding?download=true
inline.NumInlined: 3
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@argon2_decode_string:bb.a
  %i.cp = call i32 @sodium_base642bin(ptr noundef %i.cn, i64 noundef %i.m, ptr noundef nonnull %i.cm, i64 noundef %i.co, ptr noundef null, ptr noundef nonnull %i.f, ptr noundef nonnull %i.g, i32 noundef 3) #7
  %i.cq = icmp eq i32 %i.cp, 0
  %i.cr = load i64, ptr %i.f, align 8             ; 2 uses
  %i.cs = icmp ult i64 %i.cr, 4294967296
  %or.cond24.not = select i1 %i.cq, i1 %i.cs, i1 false
  br i1 %or.cond24.not, label %bb.n, label %.critedge172

bb.n:                                             ; preds = %bb.m
  %i.ct = trunc nuw i64 %i.cr to i32
  store i32 %i.ct, ptr %i.k, align 8
  %i.cu = load ptr, ptr %i.g, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #7
  %i.cv = call i32 @argon2_validate_inputs(ptr noundef nonnull %0) #7 ; 2 uses
  %.not164 = icmp eq i32 %i.cv, 0
  br i1 %.not164, label %bb.o, label %.thread

bb.o:                                             ; preds = %bb.n
  %i.cw = load i8, ptr %i.cu, align 1
  %i.cx = icmp eq i8 %i.cw, 0
  %. = select i1 %i.cx, i32 0, i32 -32
  br label %.thread

.critedge:                                        ; preds = %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #7
  br label %.thread

.critedge166:                                     ; preds = %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #7
  br label %.thread

.critedge168:                                     ; preds = %bb.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #7
  br label %.thread

.critedge170:                                     ; preds = %bb.k
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #7
  br label %.thread

.critedge172:                                     ; preds = %bb.m
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #7
  br label %.thread

.thread:                                          ; preds = %.lr.ph.i, %bb.e, %sub_1186, %sub_0185, %sub_1181, %sub_0180, %sub_1176, %sub_0175, %._crit_edge.i, %bb.d, %sub_1, %sub_0, %.tail, %decode_decimal.exit, %bb.o, %bb.n, %.critedge172, %.critedge170, %.critedge168, %.critedge166, %.critedge, %bb.a, %bb.b, %bb.l, %bb.j, %.tail184, %.tail179, %.tail174, %bb.c
  %.15 = phi i32 [ -26, %bb.a ], [ -32, %sub_1181 ], [ -32, %bb.c ], [ -32, %bb.b ], [ -32, %.critedge172 ], [ %., %bb.o ], [ %i.cv, %bb.n ], [ %.mux, %decode_decimal.exit ], [ -32, %bb.l ], [ -32, %.critedge170 ], [ -32, %bb.j ], [ -32, %.critedge ], [ -32, %.tail184 ], [ -32, %.critedge166 ], [ -32, %.tail179 ], [ -32, %.critedge168 ], [ -32, %.tail174 ], [ -32, %sub_1 ], [ -32, %sub_0185 ], [ -32, %sub_1176 ], [ -32, %.tail ], [ -32, %sub_0 ], [ -32, %bb.d ], [ -32, %._crit_edge.i ], [ -32, %sub_1186 ], [ -32, %sub_0175 ], [ -32, %sub_0180 ], [ -32, %bb.e ], [ -32, %.lr.ph.i ]
  ret i32 %.15
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i32 @strncmp(ptr noundef captures(none), ptr noundef captures(none), i64 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: nofree norecurse nosync nounwind ssp memory(argmem: readwrite) uwtable
define internal fastcc noundef ptr @decode_decimal(ptr nofree noundef readonly captures(address, ret: address, provenance) %0, ptr nofree noundef nonnull writeonly captures(none) %1) unnamed_addr #3 {
bb.a:
  %i.a = load i8, ptr %0, align 1                 ; 3 uses
  %i.b = add i8 %i.a, -58
  %or.cond39 = icmp ult i8 %i.b, -10
  br i1 %or.cond39, label %.thread, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %bb.c
  %i.c = phi i8 [ %i.k, %bb.c ], [ %i.a, %bb.a ]
  %.02241 = phi i64 [ %i.i, %bb.c ], [ 0, %bb.a ] ; 2 uses
  %.02540 = phi ptr [ %i.j, %bb.c ], [ %0, %bb.a ] ; 2 uses
  %i.d = icmp ugt i64 %.02241, 1844674407370955161
  br i1 %i.d, label %.thread, label %bb.b

bb.b:                                             ; preds = %.lr.ph
  %narrow = add nsw i8 %i.c, -48
  %i.e = mul nuw i64 %.02241, 10                  ; 2 uses
  %i.f = zext nneg i8 %narrow to i64              ; 2 uses
  %i.g = xor i64 %i.e, -1
  %i.h = icmp ugt i64 %i.f, %i.g
  br i1 %i.h, label %.thread, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.i = add i64 %i.e, %i.f                       ; 2 uses
  %i.j = getelementptr i8, ptr %.02540, i64 1     ; 4 uses
  %i.k = load i8, ptr %i.j, align 1               ; 2 uses
  %i.l = add i8 %i.k, -58
  %or.cond = icmp ult i8 %i.l, -10
  br i1 %or.cond, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %bb.c
  %i.m = icmp eq ptr %i.j, %0
  br i1 %i.m, label %.thread, label %bb.d

bb.d:                                             ; preds = %._crit_edge
  %i.n = icmp ne i8 %i.a, 48
  %.not = icmp eq ptr %.02540, %0
  %or.cond29 = or i1 %.not, %i.n
  br i1 %or.cond29, label %bb.e, label %.thread

bb.e:                                             ; preds = %bb.d
  store i64 %i.i, ptr %1, align 8
  br label %.thread

.thread:                                          ; preds = %bb.b, %.lr.ph, %bb.a, %._crit_edge, %bb.d, %bb.e
  %.2 = phi ptr [ null, %._crit_edge ], [ %i.j, %bb.e ], [ null, %bb.d ], [ null, %bb.a ], [ null, %.lr.ph ], [ null, %bb.b ]
  ret ptr %.2
}

declare i32 @sodium_base642bin(ptr noundef, i64 noundef, ptr noundef, i64 noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i64 @strlen(ptr noundef captures(none)) local_unnamed_addr #2

declare i32 @argon2_validate_inputs(ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind ssp uwtable
define hidden i32 @argon2_encode_string(ptr noundef %0, i64 noundef %1, ptr noundef %2, i32 noundef %3) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca [10 x i8], align 1                ; 4 uses
  %i.b = alloca [11 x i8], align 2                ; 7 uses
  %i.c = alloca [11 x i8], align 1                ; 7 uses
  %i.d = alloca [11 x i8], align 1                ; 6 uses
  %i.e = alloca [11 x i8], align 1                ; 6 uses
  switch i32 %3, label %.critedge [
    i32 2, label %bb.b
    i32 1, label %bb.d
  ]

bb.b:                                             ; preds = %bb.a
  %i.f = icmp ugt i64 %1, 12
  br i1 %i.f, label %bb.c, label %.critedge

bb.c:                                             ; preds = %bb.b
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(13) %0, ptr noundef nonnull align 1 dereferenceable(13) @.str.7, i64 noundef 13, i1 noundef false) #7
  br label %bb.f

bb.d:                                             ; preds = %bb.a
  %i.g = icmp ugt i64 %1, 11
  br i1 %i.g, label %bb.e, label %.critedge

bb.e:                                             ; preds = %bb.d
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(12) %0, ptr noundef nonnull align 1 dereferenceable(12) @.str.8, i64 noundef 12, i1 noundef false) #7
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.c
  %.sink246 = phi i64 [ 11, %bb.e ], [ 12, %bb.c ]
  %.sink = phi i64 [ -11, %bb.e ], [ -12, %bb.c ]
  %i.h = getelementptr i8, ptr %0, i64 %.sink246  ; 2 uses
  %i.i = add i64 %1, %.sink                       ; 2 uses
  %i.j = tail call i32 @argon2_validate_inputs(ptr noundef %2) #7 ; 2 uses
  %.not = icmp eq i32 %i.j, 0
  br i1 %.not, label %u32_to_string.exit, label %.critedge

u32_to_string.exit:                               ; preds = %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #7
  store i16 14641, ptr %i.b, align 2
  %i.k = getelementptr inbounds nuw i8, ptr %i.b, i64 2
  store i8 0, ptr %i.k, align 2
  %i.l = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.b) #6 ; 4 uses
  %.not197 = icmp ult i64 %i.l, %i.i
  br i1 %.not197, label %bb.g, label %.critedge206

bb.g:                                             ; preds = %u32_to_string.exit
  %i.m = add nuw i64 %i.l, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %i.h, ptr noundef nonnull align 2 dereferenceable(1) %i.b, i64 noundef %i.m, i1 noundef false) #7
  %i.n = sub nuw i64 %i.i, %i.l                   ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #7
  %i.o = icmp ugt i64 %i.n, 3
  br i1 %i.o, label %bb.h, label %.critedge

bb.h:                                             ; preds = %bb.g
  %i.p = getelementptr i8, ptr %i.h, i64 %i.l     ; 2 uses
  store i32 4025636, ptr %i.p, align 1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #7
  %i.q = getelementptr i8, ptr %2, i64 80
  %i.r = load i32, ptr %i.q, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #7
  br label %bb.i

bb.i:                                             ; preds = %bb.i, %bb.h
  %.09.i225 = phi i32 [ %i.r, %bb.h ], [ %i.x, %bb.i ] ; 3 uses
  %.0.i226 = phi i64 [ 10, %bb.h ], [ %i.v, %bb.i ] ; 2 uses
  %i.s = urem i32 %.09.i225, 10
  %i.t = trunc nuw nsw i32 %i.s to i8
  %i.u = or disjoint i8 %i.t, 48
  %i.v = add nsw i64 %.0.i226, -1                 ; 4 uses
  %i.w = getelementptr i8, ptr %i.a, i64 %i.v
  store i8 %i.u, ptr %i.w, align 1
  %i.x = udiv i32 %.09.i225, 10
  %i.y = icmp ugt i32 %.09.i225, 9
  %i.z = icmp ne i64 %i.v, 0
  %i.aa = and i1 %i.y, %i.z
  br i1 %i.aa, label %bb.i, label %u32_to_string.exit227, !llvm.loop !0

u32_to_string.exit227:                            ; preds = %bb.i
  %i.ab = getelementptr i8, ptr %i.a, i64 %i.v
  %i.ac = getelementptr i8, ptr %i.p, i64 3       ; 2 uses
  %i.ad = add i64 %i.n, -3                        ; 2 uses
  %i.ae = sub i64 11, %.0.i226                    ; 2 uses
  %i.af = call ptr @__memcpy_chk(ptr noundef nonnull %i.c, ptr noundef nonnull %i.ab, i64 noundef %i.ae, i64 noundef 11) #7, !alias.scope !13 ; 0 uses
  %i.ag = getelementptr i8, ptr %i.c, i64 %i.ae
  store i8 0, ptr %i.ag, align 1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #7
  %i.ah = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.c) #6 ; 4 uses
  %.not198 = icmp ult i64 %i.ah, %i.ad
  br i1 %.not198, label %bb.j, label %.critedge210

bb.j:                                             ; preds = %u32_to_string.exit227
  %i.ai = add nuw i64 %i.ah, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %i.ac, ptr noundef nonnull align 1 dereferenceable(1) %i.c, i64 noundef %i.ai, i1 noundef false) #7
  %i.aj = sub nuw i64 %i.ad, %i.ah                ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #7
  %i.ak = icmp ugt i64 %i.aj, 3
  br i1 %i.ak, label %bb.k, label %.critedge

bb.k:                                             ; preds = %bb.j
  %i.al = getelementptr i8, ptr %i.ac, i64 %i.ah  ; 2 uses
  store i32 4027436, ptr %i.al, align 1
  %i.am = add i64 %i.aj, -3                       ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #7
  %i.an = getelementptr i8, ptr %2, i64 76
  %i.ao = load i32, ptr %i.an, align 4
  call fastcc void @u32_to_string(ptr noundef %i.d, i32 noundef %i.ao)
  %i.ap = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.d) #6 ; 4 uses
  %.not199 = icmp ult i64 %i.ap, %i.am
  br i1 %.not199, label %bb.l, label %.critedge214

bb.l:                                             ; preds = %bb.k
  %i.aq = getelementptr i8, ptr %i.al, i64 3      ; 2 uses
  %i.ar = add nuw i64 %i.ap, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %i.aq, ptr noundef nonnull align 1 dereferenceable(1) %i.d, i64 noundef %i.ar, i1 noundef false) #7
  %i.as = sub nuw i64 %i.am, %i.ap                ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #7
  %i.at = icmp ugt i64 %i.as, 3
  br i1 %i.at, label %bb.m, label %.critedge

bb.m:                                             ; preds = %bb.l
  %i.au = getelementptr i8, ptr %i.aq, i64 %i.ap  ; 2 uses
  store i32 4026412, ptr %i.au, align 1
  %i.av = add i64 %i.as, -3                       ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #7
  %i.aw = getelementptr i8, ptr %2, i64 84
  %i.ax = load i32, ptr %i.aw, align 4
  call fastcc void @u32_to_string(ptr noundef %i.e, i32 noundef %i.ax)
  %i.ay = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.e) #6 ; 4 uses
  %.not200 = icmp ult i64 %i.ay, %i.av
  br i1 %.not200, label %bb.n, label %.critedge218

bb.n:                                             ; preds = %bb.m
  %i.az = getelementptr i8, ptr %i.au, i64 3      ; 2 uses
  %i.ba = add nuw i64 %i.ay, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %i.az, ptr noundef nonnull align 1 dereferenceable(1) %i.e, i64 noundef %i.ba, i1 noundef false) #7
  %i.bb = sub nuw i64 %i.av, %i.ay                ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #7
  %i.bc = icmp ugt i64 %i.bb, 1
  br i1 %i.bc, label %bb.o, label %.critedge

bb.o:                                             ; preds = %bb.n
  %i.bd = getelementptr i8, ptr %i.az, i64 %i.ay  ; 2 uses
  store i16 36, ptr %i.bd, align 1
  %i.be = getelementptr i8, ptr %i.bd, i64 1      ; 3 uses
  %i.bf = add i64 %i.bb, -1                       ; 2 uses
  %i.bg = getelementptr i8, ptr %2, i64 32
  %i.bh = load ptr, ptr %i.bg, align 8
  %i.bi = getelementptr i8, ptr %2, i64 40
  %i.bj = load i32, ptr %i.bi, align 8
  %i.bk = zext i32 %i.bj to i64
  %i.bl = call ptr @sodium_bin2base64(ptr noundef %i.be, i64 noundef %i.bf, ptr noundef %i.bh, i64 noundef %i.bk, i32 noundef 3) #7
  %.not201 = icmp eq ptr %i.bl, null
  br i1 %.not201, label %.critedge, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.bm = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.be) #6 ; 2 uses
  %i.bn = sub i64 %i.bf, %i.bm                    ; 2 uses
  %i.bo = icmp ugt i64 %i.bn, 1
  br i1 %i.bo, label %bb.q, label %.critedge

bb.q:                                             ; preds = %bb.p
  %i.bp = getelementptr i8, ptr %i.be, i64 %i.bm  ; 2 uses
  store i16 36, ptr %i.bp, align 1
  %i.bq = getelementptr i8, ptr %i.bp, i64 1
  %i.br = add i64 %i.bn, -1
  %i.bs = load ptr, ptr %2, align 8
  %i.bt = getelementptr i8, ptr %2, i64 8
  %i.bu = load i32, ptr %i.bt, align 8
  %i.bv = zext i32 %i.bu to i64
  %i.bw = call ptr @sodium_bin2base64(ptr noundef %i.bq, i64 noundef %i.br, ptr noundef %i.bs, i64 noundef %i.bv, i32 noundef 3) #7
  %.not202 = icmp eq ptr %i.bw, null
  %spec.select = select i1 %.not202, i32 -31, i32 0
  br label %.critedge

.critedge206:                                     ; preds = %u32_to_string.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #7
  br label %.critedge

.critedge210:                                     ; preds = %u32_to_string.exit227
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #7
  br label %.critedge

.critedge214:                                     ; preds = %bb.k
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #7
  br label %.critedge

.critedge218:                                     ; preds = %bb.m
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #7
  br label %.critedge

.critedge:                                        ; preds = %bb.q, %bb.p, %bb.o, %bb.n, %bb.l, %bb.j, %bb.g, %bb.d, %bb.b, %.critedge218, %.critedge214, %.critedge210, %.critedge206, %bb.f, %bb.a
  %.14 = phi i32 [ -31, %bb.b ], [ -31, %bb.a ], [ -31, %bb.n ], [ %spec.select, %bb.q ], [ -31, %bb.o ], [ %i.j, %bb.f ], [ -31, %.critedge206 ], [ -31, %bb.d ], [ -31, %.critedge210 ], [ -31, %bb.g ], [ -31, %.critedge214 ], [ -31, %bb.j ], [ -31, %.critedge218 ], [ -31, %bb.l ], [ -31, %bb.p ]
  ret i32 %.14
}

; Function Attrs: nofree norecurse nosync nounwind ssp memory(argmem: readwrite) uwtable
define internal fastcc void @u32_to_string(ptr noundef nonnull %0, i32 noundef %1) unnamed_addr #3 {
bb.a:
  %i.a = alloca [10 x i8], align 1                ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #7
  br label %bb.b

bb.b:                                             ; preds = %bb.b, %bb.a
  %.09 = phi i32 [ %1, %bb.a ], [ %i.g, %bb.b ]   ; 3 uses
  %.0 = phi i64 [ 10, %bb.a ], [ %i.e, %bb.b ]    ; 2 uses
  %i.b = urem i32 %.09, 10
  %i.c = trunc nuw nsw i32 %i.b to i8
  %i.d = or disjoint i8 %i.c, 48
  %i.e = add nsw i64 %.0, -1                      ; 4 uses
  %i.f = getelementptr i8, ptr %i.a, i64 %i.e
  store i8 %i.d, ptr %i.f, align 1
  %i.g = udiv i32 %.09, 10
  %i.h = icmp ugt i32 %.09, 9
  %i.i = icmp ne i64 %i.e, 0
  %i.j = and i1 %i.h, %i.i
  br i1 %i.j, label %bb.b, label %bb.c, !llvm.loop !0

bb.c:                                             ; preds = %bb.b
  %i.k = getelementptr i8, ptr %i.a, i64 %i.e
  %i.l = sub i64 11, %.0                          ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 %0, ptr noundef nonnull align 1 %i.k, i64 noundef %i.l, i1 noundef false) #7
  %i.m = getelementptr i8, ptr %0, i64 %i.l
  store i8 0, ptr %i.m, align 1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #7
  ret void
}

declare ptr @sodium_bin2base64(ptr noundef, i64 noundef, ptr noundef, i64 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nocallback nofree nosync nounwind memory(argmem: readwrite)
declare ptr @__memcpy_chk(ptr noalias noundef writeonly, ptr noalias noundef readonly captures(none), i64 noundef, i64 noundef) local_unnamed_addr #5

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

attributes #0 = { nounwind ssp uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nofree norecurse nosync nounwind ssp memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nocallback nofree nosync nounwind memory(argmem: readwrite) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nounwind willreturn memory(read) }
attributes #7 = { nounwind }

!llvm.module.flags = !{!1, !2, !3}
!llvm.ident = !{!4}

!0 = distinct !{!0, !5}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"Ubuntu clang version 24.0.0 (++20260903081701+7ece48b9e5bb-1~exp1~20260903201841.1826)"}
!5 = !{!"llvm.loop.mustprogress"}
!10 = distinct !{!10, i1 false, !"memcpy.inline"}
!11 = distinct !{!11, !10, !"memcpy.inline: argument 0"}
!12 = distinct !{!12, !10, !"memcpy.inline: argument 1"}
!13 = !{!11, !12}
end_hunk_0
