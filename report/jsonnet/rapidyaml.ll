Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/jsonnet/original/rapidyaml?download=true
inline.NumInlined: 4426
inline.NumDeleted: 407
loop-unroll.NumCompletelyUnrolled: 307
loop-unroll.NumRuntimeUnrolled: 15
loop-unroll.NumUnrolled: 323
begin_hunk_0_@_ZN2c413base64_encodeENS_15basic_substringIcEENS_5blob_IKcEE:bb.a
._crit_edge:                                      ; preds = %bb.i, %bb.a
  %.080.lcssa = phi i64 [ %3, %bb.a ], [ %i.ar, %bb.i ]
  %.079.lcssa = phi i64 [ 0, %bb.a ], [ %i.aq, %bb.i ] ; 13 uses
  %.0.lcssa = phi ptr [ %2, %bb.a ], [ %i.as, %bb.i ] ; 3 uses
  switch i64 %.080.lcssa, label %bb.ab [
    i64 2, label %bb.j
    i64 1, label %bb.s
  ]

bb.j:                                             ; preds = %._crit_edge
  %i.au = load i8, ptr %.0.lcssa, align 1, !tbaa !87
  %i.av = zext i8 %i.au to i32                    ; 2 uses
  %i.aw = shl nuw nsw i32 %i.av, 16
  %i.ax = getelementptr inbounds nuw i8, ptr %.0.lcssa, i64 1
  %i.ay = load i8, ptr %i.ax, align 1, !tbaa !87
  %i.az = zext i8 %i.ay to i32                    ; 2 uses
  %i.ba = shl nuw nsw i32 %i.az, 8
  %i.bb = or disjoint i32 %i.ba, %i.aw
  %i.bc = icmp ult i64 %.079.lcssa, %1
  br i1 %i.bc, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.bd = lshr i32 %i.av, 2
  %i.be = zext nneg i32 %i.bd to i64
  %i.bf = getelementptr inbounds nuw i8, ptr @_ZN2c46detailL22base64_sextet_to_char_E, i64 %i.be
  %i.bg = load i8, ptr %i.bf, align 1, !tbaa !87
  %i.bh = getelementptr inbounds nuw i8, ptr %0, i64 %.079.lcssa
  store i8 %i.bg, ptr %i.bh, align 1, !tbaa !87
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  %i.bi = or disjoint i64 %.079.lcssa, 1          ; 2 uses
  %i.bj = icmp ult i64 %i.bi, %1
  br i1 %i.bj, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  %i.bk = lshr i32 %i.bb, 12
  %i.bl = and i32 %i.bk, 63
  %i.bm = zext nneg i32 %i.bl to i64
  %i.bn = getelementptr inbounds nuw i8, ptr @_ZN2c46detailL22base64_sextet_to_char_E, i64 %i.bm
  %i.bo = load i8, ptr %i.bn, align 1, !tbaa !87
  %i.bp = getelementptr inbounds nuw i8, ptr %0, i64 %i.bi
  store i8 %i.bo, ptr %i.bp, align 1, !tbaa !87
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l
  %i.bq = or disjoint i64 %.079.lcssa, 2          ; 2 uses
  %i.br = icmp ult i64 %i.bq, %1
  br i1 %i.br, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  %i.bs = shl nuw nsw i32 %i.az, 2
  %i.bt = and i32 %i.bs, 60
  %i.bu = zext nneg i32 %i.bt to i64
  %i.bv = getelementptr inbounds nuw i8, ptr @_ZN2c46detailL22base64_sextet_to_char_E, i64 %i.bu
  %i.bw = load i8, ptr %i.bv, align 4, !tbaa !87
  %i.bx = getelementptr inbounds nuw i8, ptr %0, i64 %i.bq
  store i8 %i.bw, ptr %i.bx, align 1, !tbaa !87
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.n
  %i.by = or disjoint i64 %.079.lcssa, 3          ; 2 uses
  %i.bz = icmp ult i64 %i.by, %1
  br i1 %i.bz, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p
  %i.ca = getelementptr inbounds nuw i8, ptr %0, i64 %i.by
  store i8 61, ptr %i.ca, align 1, !tbaa !87
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %bb.p
  %i.cb = add i64 %.079.lcssa, 4
  br label %bb.ab

bb.s:                                             ; preds = %._crit_edge
  %i.cc = load i8, ptr %.0.lcssa, align 1, !tbaa !87
  %i.cd = zext i8 %i.cc to i32                    ; 2 uses
  %i.ce = shl nuw nsw i32 %i.cd, 4
  %i.cf = icmp ult i64 %.079.lcssa, %1
  br i1 %i.cf, label %bb.t, label %bb.u

bb.t:                                             ; preds = %bb.s
  %i.cg = lshr i32 %i.cd, 2
  %i.ch = zext nneg i32 %i.cg to i64
  %i.ci = getelementptr inbounds nuw i8, ptr @_ZN2c46detailL22base64_sextet_to_char_E, i64 %i.ch
  %i.cj = load i8, ptr %i.ci, align 1, !tbaa !87
  %i.ck = getelementptr inbounds nuw i8, ptr %0, i64 %.079.lcssa
  store i8 %i.cj, ptr %i.ck, align 1, !tbaa !87
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %bb.s
  %i.cl = or disjoint i64 %.079.lcssa, 1          ; 2 uses
  %i.cm = icmp ult i64 %i.cl, %1
  br i1 %i.cm, label %bb.v, label %bb.w

bb.v:                                             ; preds = %bb.u
  %i.cn = and i32 %i.ce, 48
  %i.co = zext nneg i32 %i.cn to i64
  %i.cp = getelementptr inbounds nuw i8, ptr @_ZN2c46detailL22base64_sextet_to_char_E, i64 %i.co
  %i.cq = load i8, ptr %i.cp, align 16, !tbaa !87
  %i.cr = getelementptr inbounds nuw i8, ptr %0, i64 %i.cl
  store i8 %i.cq, ptr %i.cr, align 1, !tbaa !87
  br label %bb.w

bb.w:                                             ; preds = %bb.v, %bb.u
  %i.cs = or disjoint i64 %.079.lcssa, 2          ; 2 uses
  %i.ct = icmp ult i64 %i.cs, %1
  br i1 %i.ct, label %bb.x, label %bb.y

bb.x:                                             ; preds = %bb.w
  %i.cu = getelementptr inbounds nuw i8, ptr %0, i64 %i.cs
  store i8 61, ptr %i.cu, align 1, !tbaa !87
  br label %bb.y

bb.y:                                             ; preds = %bb.x, %bb.w
  %i.cv = or disjoint i64 %.079.lcssa, 3          ; 2 uses
  %i.cw = icmp ult i64 %i.cv, %1
  br i1 %i.cw, label %bb.z, label %bb.aa

bb.z:                                             ; preds = %bb.y
  %i.cx = getelementptr inbounds nuw i8, ptr %0, i64 %i.cv
  store i8 61, ptr %i.cx, align 1, !tbaa !87
  br label %bb.aa

bb.aa:                                            ; preds = %bb.z, %bb.y
  %i.cy = add i64 %.079.lcssa, 4
  br label %bb.ab

bb.ab:                                            ; preds = %._crit_edge, %bb.aa, %bb.r
  %.1 = phi i64 [ %i.cb, %bb.r ], [ %i.cy, %bb.aa ], [ %.079.lcssa, %._crit_edge ]
  ret i64 %.1
}

; Function Attrs: mustprogress uwtable
define dso_local noundef i64 @_ZN2c413base64_decodeENS_15basic_substringIKcEENS_5blob_IcEE(ptr nofree readonly captures(address) %0, i64 %1, ptr nofree writeonly captures(none) %2, i64 %3) local_unnamed_addr #1 {
bb.a:
  %i.a = and i64 %1, 3
  %.not = icmp eq i64 %i.a, 0
  br i1 %.not, label %.preheader, label %bb.b, !prof !88

.preheader:                                       ; preds = %bb.a
  %.not83 = icmp eq i64 %1, 0
  br i1 %.not83, label %._crit_edge, label %.lr.ph

bb.b:                                             ; preds = %bb.a
  tail call void (ptr, i32, ptr, ...) @_ZN2c412handle_errorENS_6srclocEPKcz(ptr nonnull @.str.1, i32 20655, ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.11) #58
  unreachable

.lr.ph:                                           ; preds = %.preheader, %bb.j
  %.075 = phi i64 [ %i.au, %bb.j ], [ 0, %.preheader ]
  %.06774 = phi ptr [ %i.av, %bb.j ], [ %0, %.preheader ] ; 7 uses
  %.06873 = phi i64 [ %i.at, %bb.j ], [ 0, %.preheader ] ; 7 uses
  %i.b = getelementptr inbounds nuw i8, ptr %.06774, i64 2
  %i.c = load i8, ptr %i.b, align 1, !tbaa !87    ; 2 uses
  %i.d = icmp eq i8 %i.c, 61
  br i1 %i.d, label %._crit_edge, label %bb.c

bb.c:                                             ; preds = %.lr.ph
  %i.e = getelementptr inbounds nuw i8, ptr %.06774, i64 3
  %i.f = load i8, ptr %i.e, align 1, !tbaa !87    ; 2 uses
  %i.g = icmp eq i8 %i.f, 61
  br i1 %i.g, label %._crit_edge, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.h = sext i8 %i.f to i64
  %i.i = getelementptr inbounds i8, ptr @_ZN2c46detailL22base64_char_to_sextet_E, i64 %i.h
  %i.j = load i8, ptr %i.i, align 1, !tbaa !87
  %i.k = sext i8 %i.j to i32
  %i.l = sext i8 %i.c to i64
  %i.m = getelementptr inbounds i8, ptr @_ZN2c46detailL22base64_char_to_sextet_E, i64 %i.l
  %i.n = load i8, ptr %i.m, align 1, !tbaa !87
  %i.o = sext i8 %i.n to i32
  %i.p = shl nsw i32 %i.o, 6
  %i.q = or i32 %i.p, %i.k                        ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %.06774, i64 1
  %i.s = load i8, ptr %i.r, align 1, !tbaa !87
  %i.t = sext i8 %i.s to i64
  %i.u = getelementptr inbounds i8, ptr @_ZN2c46detailL22base64_char_to_sextet_E, i64 %i.t
  %i.v = load i8, ptr %i.u, align 1, !tbaa !87
  %i.w = sext i8 %i.v to i32
  %i.x = shl nsw i32 %i.w, 12
  %i.y = or i32 %i.x, %i.q                        ; 2 uses
  %i.z = icmp ult i64 %.06873, %3
  br i1 %i.z, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.aa = load i8, ptr %.06774, align 1, !tbaa !87
  %i.ab = sext i8 %i.aa to i64
  %i.ac = getelementptr inbounds i8, ptr @_ZN2c46detailL22base64_char_to_sextet_E, i64 %i.ab
  %i.ad = load i8, ptr %i.ac, align 1, !tbaa !87
  %i.ae = sext i8 %i.ad to i32
  %i.af = shl nsw i32 %i.ae, 18
  %i.ag = or i32 %i.af, %i.y
  %i.ah = lshr i32 %i.ag, 16
  %i.ai = trunc i32 %i.ah to i8
  %i.aj = getelementptr inbounds nuw i8, ptr %2, i64 %.06873
  store i8 %i.ai, ptr %i.aj, align 1, !tbaa !87
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.ak = add nuw i64 %.06873, 1                  ; 2 uses
  %i.al = icmp ult i64 %i.ak, %3
  br i1 %i.al, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.am = lshr i32 %i.y, 8
  %i.an = trunc i32 %i.am to i8
  %i.ao = getelementptr inbounds nuw i8, ptr %2, i64 %i.ak
  store i8 %i.an, ptr %i.ao, align 1, !tbaa !87
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %i.ap = add nuw i64 %.06873, 2                  ; 2 uses
  %i.aq = icmp ult i64 %i.ap, %3
  br i1 %i.aq, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.ar = trunc i32 %i.q to i8
  %i.as = getelementptr inbounds nuw i8, ptr %2, i64 %i.ap
  store i8 %i.ar, ptr %i.as, align 1, !tbaa !87
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %i.at = add nuw i64 %.06873, 3                  ; 2 uses
  %i.au = add nuw i64 %.075, 4                    ; 2 uses
  %i.av = getelementptr inbounds nuw i8, ptr %.06774, i64 4 ; 2 uses
  %i.aw = icmp ult i64 %i.au, %1
  br i1 %i.aw, label %.lr.ph, label %._crit_edge, !llvm.loop !378

._crit_edge:                                      ; preds = %bb.j, %bb.c, %.lr.ph, %.preheader
  %.068.lcssa = phi i64 [ 0, %.preheader ], [ %.06873, %.lr.ph ], [ %.06873, %bb.c ], [ %i.at, %bb.j ] ; 9 uses
  %.067.lcssa = phi ptr [ %0, %.preheader ], [ %.06774, %.lr.ph ], [ %.06774, %bb.c ], [ %i.av, %bb.j ] ; 7 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 %1
  %i.ay = icmp eq ptr %.067.lcssa, %i.ax
  br i1 %i.ay, label %bb.u, label %bb.k

bb.k:                                             ; preds = %._crit_edge
  %i.az = getelementptr inbounds nuw i8, ptr %.067.lcssa, i64 2
  %i.ba = load i8, ptr %i.az, align 1, !tbaa !87  ; 2 uses
  %i.bb = icmp eq i8 %i.ba, 61
  br i1 %i.bb, label %bb.l, label %bb.o

bb.l:                                             ; preds = %bb.k
  %i.bc = icmp ult i64 %.068.lcssa, %3
  br i1 %i.bc, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  %i.bd = getelementptr inbounds nuw i8, ptr %.067.lcssa, i64 1
  %i.be = load i8, ptr %i.bd, align 1, !tbaa !87
  %i.bf = sext i8 %i.be to i64
  %i.bg = getelementptr inbounds i8, ptr @_ZN2c46detailL22base64_char_to_sextet_E, i64 %i.bf
  %i.bh = load i8, ptr %i.bg, align 1, !tbaa !87
  %i.bi = sext i8 %i.bh to i32
  %i.bj = shl nsw i32 %i.bi, 12
  %i.bk = load i8, ptr %.067.lcssa, align 1, !tbaa !87
  %i.bl = sext i8 %i.bk to i64
  %i.bm = getelementptr inbounds i8, ptr @_ZN2c46detailL22base64_char_to_sextet_E, i64 %i.bl
  %i.bn = load i8, ptr %i.bm, align 1, !tbaa !87
  %i.bo = sext i8 %i.bn to i32
  %i.bp = shl nsw i32 %i.bo, 18
  %i.bq = or i32 %i.bp, %i.bj
  %i.br = lshr i32 %i.bq, 16
  %i.bs = trunc i32 %i.br to i8
  %i.bt = getelementptr inbounds nuw i8, ptr %2, i64 %.068.lcssa
  store i8 %i.bs, ptr %i.bt, align 1, !tbaa !87
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l
  %i.bu = add i64 %.068.lcssa, 1
  br label %bb.u

bb.o:                                             ; preds = %bb.k
  %i.bv = getelementptr inbounds nuw i8, ptr %.067.lcssa, i64 3
  %i.bw = load i8, ptr %i.bv, align 1, !tbaa !87
  %i.bx = icmp eq i8 %i.bw, 61
  br i1 %i.bx, label %bb.p, label %bb.u

bb.p:                                             ; preds = %bb.o
  %i.by = sext i8 %i.ba to i64
  %i.bz = getelementptr inbounds i8, ptr @_ZN2c46detailL22base64_char_to_sextet_E, i64 %i.by
  %i.ca = load i8, ptr %i.bz, align 1, !tbaa !87
  %i.cb = sext i8 %i.ca to i32
  %i.cc = shl nsw i32 %i.cb, 6
  %i.cd = getelementptr inbounds nuw i8, ptr %.067.lcssa, i64 1
  %i.ce = load i8, ptr %i.cd, align 1, !tbaa !87
  %i.cf = sext i8 %i.ce to i64
  %i.cg = getelementptr inbounds i8, ptr @_ZN2c46detailL22base64_char_to_sextet_E, i64 %i.cf
  %i.ch = load i8, ptr %i.cg, align 1, !tbaa !87
  %i.ci = sext i8 %i.ch to i32
  %i.cj = shl nsw i32 %i.ci, 12
  %i.ck = or i32 %i.cj, %i.cc                     ; 2 uses
  %i.cl = icmp ult i64 %.068.lcssa, %3
  br i1 %i.cl, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p
  %i.cm = load i8, ptr %.067.lcssa, align 1, !tbaa !87
  %i.cn = sext i8 %i.cm to i64
  %i.co = getelementptr inbounds i8, ptr @_ZN2c46detailL22base64_char_to_sextet_E, i64 %i.cn
  %i.cp = load i8, ptr %i.co, align 1, !tbaa !87
  %i.cq = sext i8 %i.cp to i32
  %i.cr = shl nsw i32 %i.cq, 18
  %i.cs = or i32 %i.cr, %i.ck
  %i.ct = lshr i32 %i.cs, 16
  %i.cu = trunc i32 %i.ct to i8
  %i.cv = getelementptr inbounds nuw i8, ptr %2, i64 %.068.lcssa
  store i8 %i.cu, ptr %i.cv, align 1, !tbaa !87
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %bb.p
  %i.cw = add i64 %.068.lcssa, 1                  ; 2 uses
  %i.cx = icmp ult i64 %i.cw, %3
  br i1 %i.cx, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r
  %i.cy = lshr i32 %i.ck, 8
  %i.cz = trunc i32 %i.cy to i8
  %i.da = getelementptr inbounds nuw i8, ptr %2, i64 %i.cw
  store i8 %i.cz, ptr %i.da, align 1, !tbaa !87
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %bb.r
  %i.db = add i64 %.068.lcssa, 2
  br label %bb.u

bb.u:                                             ; preds = %bb.n, %bb.t, %bb.o, %._crit_edge
  %.069 = phi i64 [ %.068.lcssa, %._crit_edge ], [ %i.bu, %bb.n ], [ %i.db, %bb.t ], [ %.068.lcssa, %bb.o ]
  ret i64 %.069
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: none, inaccessiblemem: none, target_mem: none) uwtable
define dso_local void @_ZN2c415set_error_flagsEj(i32 noundef %0) local_unnamed_addr #9 {
bb.a:
  store i32 %0, ptr @_ZN2c4L13s_error_flagsE, align 4, !tbaa !68
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: none, inaccessiblemem: none, target_mem: none) uwtable
define dso_local noundef ptr @_ZN2c418get_error_callbackEv() local_unnamed_addr #3 {
bb.a:
  %i.a = load ptr, ptr @_ZN2c4L16s_error_callbackE, align 8, !tbaa !74
  ret ptr %i.a
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: none, inaccessiblemem: none, target_mem: none) uwtable
define dso_local void @_ZN2c418set_error_callbackEPFvPKcmE(ptr noundef %0) local_unnamed_addr #9 {
bb.a:
  store ptr %0, ptr @_ZN2c4L16s_error_callbackE, align 8, !tbaa !74
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare void @llvm.va_start.p0(ptr) #12

; Function Attrs: nofree nounwind
declare noundef i32 @vsnprintf(ptr noundef captures(none), i64 noundef, ptr noundef readonly captures(none), ptr noundef) local_unnamed_addr #13

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare void @llvm.va_end.p0(ptr) #12

; Function Attrs: nofree nounwind
declare noundef i32 @fprintf(ptr noundef captures(none), ptr noundef readonly captures(none), ...) local_unnamed_addr #13

; Function Attrs: nofree nounwind
declare noundef i32 @fflush(ptr noundef captures(none)) local_unnamed_addr #13

; Function Attrs: cold nofree noreturn nounwind
declare void @abort() local_unnamed_addr #14

; Function Attrs: cold mustprogress nofree nounwind uwtable
define dso_local void @_ZN2c414handle_warningENS_6srclocEPKcz(ptr %0, i32 %1, ptr nofree noundef readonly captures(none) %2, ...) local_unnamed_addr #15 {
bb.a:
  %3 = alloca [1 x %struct.__va_list_tag], align 16 ; 5 uses
  %i.a = alloca [1024 x i8], align 16             ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #59
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #59
  call void @llvm.va_start.p0(ptr nonnull %3)
  %i.b = call i32 @vsnprintf(ptr noundef nonnull %i.a, i64 noundef 1024, ptr noundef %2, ptr noundef nonnull %3) #59 ; 2 uses
  %i.c = icmp sgt i32 %i.b, 1023
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 1023
  store i8 0, ptr %i.d, align 1, !tbaa !87
  br label %bb.e

bb.c:                                             ; preds = %bb.a
  %i.e = icmp slt i32 %i.b, 0
  br i1 %i.e, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  store i8 0, ptr %i.a, align 16, !tbaa !87
  br label %bb.e

bb.e:                                             ; preds = %bb.c, %bb.d, %bb.b
  call void @llvm.va_end.p0(ptr nonnull %3)
  %i.f = load ptr, ptr @stderr, align 8, !tbaa !70
  %fputc = call i32 @fputc(i32 10, ptr %i.f)      ; 0 uses
  %i.g = load ptr, ptr @stderr, align 8, !tbaa !70
  %i.h = call i32 @fflush(ptr noundef %i.g)       ; 0 uses
  %i.i = load ptr, ptr @stderr, align 8, !tbaa !70
  %i.j = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.i, ptr noundef nonnull @.str.14, ptr noundef %0, i32 noundef %1, ptr noundef nonnull %i.a) #60 ; 0 uses
  %i.k = load ptr, ptr @stderr, align 8, !tbaa !70
  %i.l = call i32 @fflush(ptr noundef %i.k)       ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #59
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #59
  ret void
}

; Function Attrs: mustprogress uwtable
define dso_local noundef zeroext i1 @_ZN2c420is_debugger_attachedEv() local_unnamed_addr #1 {
bb.a:
  %i.a = alloca [1024 x i8], align 16             ; 7 uses
  %.b = load i1, ptr @_ZZN2c420is_debugger_attachedEvE10first_call, align 1
  br i1 %.b, label %bb.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  store i1 true, ptr @_ZZN2c420is_debugger_attachedEvE10first_call, align 1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #59
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(1024) %i.a, i8 0, i64 1024, i1 false)
  %i.b = tail call i32 (ptr, i32, ...) @open(ptr noundef nonnull @.str.15, i32 noundef 0) ; 3 uses
  %i.c = icmp eq i32 %i.b, -1
  br i1 %i.c, label %bb.h, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = call i64 @read(i32 noundef %i.b, ptr noundef nonnull %i.a, i64 noundef 1024) ; 3 uses
end_hunk_0
