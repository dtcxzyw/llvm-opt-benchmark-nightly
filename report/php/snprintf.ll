Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/php/original/snprintf?download=true
inline.NumInlined: 10
inline.NumDeleted: 3
loop-unroll.NumRuntimeUnrolled: 4
loop-unroll.NumUnrolled: 4
begin_hunk_0_@php_conv_fp:bb.a
  br i1 %min.epilog.iters.check, label %.lr.ph107.preheader, label %vec.epilog.ph, !prof !47

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec162, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec172 = and i64 %i.cy, -4                   ; 4 uses
  %i.dk = getelementptr i8, ptr %i.cs, i64 %n.vec172
  %i.dl = getelementptr i8, ptr %i.cv, i64 %n.vec172 ; 2 uses
  %i.dm = and i64 %i.cy, 3
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index173 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next177, %vec.epilog.vector.body ] ; 3 uses
  %next.gep174 = getelementptr i8, ptr %i.cs, i64 %index173
  %next.gep175 = getelementptr i8, ptr %i.cv, i64 %index173
  %wide.load176 = load <4 x i8>, ptr %next.gep174, align 1, !tbaa !16
  store <4 x i8> %wide.load176, ptr %next.gep175, align 1, !tbaa !16
  %index.next177 = add nuw i64 %index173, 4       ; 2 uses
  %i.dn = icmp eq i64 %index.next177, %n.vec172
  br i1 %i.dn, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !38

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n178 = icmp eq i64 %i.cy, %n.vec172
  br i1 %cmp.n178, label %.loopexit, label %.lr.ph107.preheader

.lr.ph107.preheader:                              ; preds = %iter.check, %vector.memcheck159, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.4106.ph = phi ptr [ %i.cs, %iter.check ], [ %i.cs, %vector.memcheck159 ], [ %i.de, %vec.epilog.iter.check ], [ %i.dk, %vec.epilog.middle.block ] ; 2 uses
  %.6105.ph = phi ptr [ %i.cv, %iter.check ], [ %i.cv, %vector.memcheck159 ], [ %i.df, %vec.epilog.iter.check ], [ %i.dl, %vec.epilog.middle.block ] ; 2 uses
  %.080104.ph = phi i64 [ %i.cy, %iter.check ], [ %i.cy, %vector.memcheck159 ], [ %i.dg, %vec.epilog.iter.check ], [ %i.dm, %vec.epilog.middle.block ] ; 4 uses
  %i.do = add i64 %.080104.ph, -1
  %xtraiter187 = and i64 %.080104.ph, 7           ; 2 uses
  %lcmp.mod188.not = icmp eq i64 %xtraiter187, 0
  br i1 %lcmp.mod188.not, label %.lr.ph107.prol.loopexit, label %.lr.ph107.prol

.lr.ph107.prol:                                   ; preds = %.lr.ph107.preheader, %.lr.ph107.prol
  %.4106.prol = phi ptr [ %i.dq, %.lr.ph107.prol ], [ %.4106.ph, %.lr.ph107.preheader ] ; 2 uses
  %.6105.prol = phi ptr [ %i.ds, %.lr.ph107.prol ], [ %.6105.ph, %.lr.ph107.preheader ] ; 2 uses
  %.080104.prol = phi i64 [ %i.dp, %.lr.ph107.prol ], [ %.080104.ph, %.lr.ph107.preheader ]
  %prol.iter189 = phi i64 [ %prol.iter189.next, %.lr.ph107.prol ], [ 0, %.lr.ph107.preheader ]
  %i.dp = add i64 %.080104.prol, -1               ; 2 uses
  %i.dq = getelementptr inbounds nuw i8, ptr %.4106.prol, i64 1 ; 2 uses
  %i.dr = load i8, ptr %.4106.prol, align 1, !tbaa !16
  %i.ds = getelementptr inbounds nuw i8, ptr %.6105.prol, i64 1 ; 3 uses
  store i8 %i.dr, ptr %.6105.prol, align 1, !tbaa !16
  %prol.iter189.next = add i64 %prol.iter189, 1   ; 2 uses
  %prol.iter189.cmp.not = icmp eq i64 %prol.iter189.next, %xtraiter187
  br i1 %prol.iter189.cmp.not, label %.lr.ph107.prol.loopexit, label %.lr.ph107.prol, !llvm.loop !39

.lr.ph107.prol.loopexit:                          ; preds = %.lr.ph107.prol, %.lr.ph107.preheader
  %.lcssa.unr = phi ptr [ poison, %.lr.ph107.preheader ], [ %i.ds, %.lr.ph107.prol ]
  %.4106.unr = phi ptr [ %.4106.ph, %.lr.ph107.preheader ], [ %i.dq, %.lr.ph107.prol ]
  %.6105.unr = phi ptr [ %.6105.ph, %.lr.ph107.preheader ], [ %i.ds, %.lr.ph107.prol ]
  %.080104.unr = phi i64 [ %.080104.ph, %.lr.ph107.preheader ], [ %i.dp, %.lr.ph107.prol ]
  %i.dt = icmp ult i64 %i.do, 7
  br i1 %i.dt, label %.loopexit, label %.lr.ph107

.lr.ph107:                                        ; preds = %.lr.ph107.prol.loopexit, %.lr.ph107
  %.4106 = phi ptr [ %i.eq, %.lr.ph107 ], [ %.4106.unr, %.lr.ph107.prol.loopexit ] ; 9 uses
  %.6105 = phi ptr [ %i.es, %.lr.ph107 ], [ %.6105.unr, %.lr.ph107.prol.loopexit ] ; 9 uses
  %.080104 = phi i64 [ %i.ep, %.lr.ph107 ], [ %.080104.unr, %.lr.ph107.prol.loopexit ]
  %i.du = getelementptr inbounds nuw i8, ptr %.4106, i64 1
  %i.dv = load i8, ptr %.4106, align 1, !tbaa !16
  %i.dw = getelementptr inbounds nuw i8, ptr %.6105, i64 1
  store i8 %i.dv, ptr %.6105, align 1, !tbaa !16
  %i.dx = getelementptr inbounds nuw i8, ptr %.4106, i64 2
  %i.dy = load i8, ptr %i.du, align 1, !tbaa !16
  %i.dz = getelementptr inbounds nuw i8, ptr %.6105, i64 2
  store i8 %i.dy, ptr %i.dw, align 1, !tbaa !16
  %i.ea = getelementptr inbounds nuw i8, ptr %.4106, i64 3
  %i.eb = load i8, ptr %i.dx, align 1, !tbaa !16
  %i.ec = getelementptr inbounds nuw i8, ptr %.6105, i64 3
  store i8 %i.eb, ptr %i.dz, align 1, !tbaa !16
  %i.ed = getelementptr inbounds nuw i8, ptr %.4106, i64 4
  %i.ee = load i8, ptr %i.ea, align 1, !tbaa !16
  %i.ef = getelementptr inbounds nuw i8, ptr %.6105, i64 4
  store i8 %i.ee, ptr %i.ec, align 1, !tbaa !16
  %i.eg = getelementptr inbounds nuw i8, ptr %.4106, i64 5
  %i.eh = load i8, ptr %i.ed, align 1, !tbaa !16
  %i.ei = getelementptr inbounds nuw i8, ptr %.6105, i64 5
  store i8 %i.eh, ptr %i.ef, align 1, !tbaa !16
  %i.ej = getelementptr inbounds nuw i8, ptr %.4106, i64 6
  %i.ek = load i8, ptr %i.eg, align 1, !tbaa !16
  %i.el = getelementptr inbounds nuw i8, ptr %.6105, i64 6
  store i8 %i.ek, ptr %i.ei, align 1, !tbaa !16
  %i.em = getelementptr inbounds nuw i8, ptr %.4106, i64 7
  %i.en = load i8, ptr %i.ej, align 1, !tbaa !16
  %i.eo = getelementptr inbounds nuw i8, ptr %.6105, i64 7
  store i8 %i.en, ptr %i.el, align 1, !tbaa !16
  %i.ep = add i64 %.080104, -8                    ; 2 uses
  %i.eq = getelementptr inbounds nuw i8, ptr %.4106, i64 8
  %i.er = load i8, ptr %i.em, align 1, !tbaa !16
  %i.es = getelementptr inbounds nuw i8, ptr %.6105, i64 8 ; 2 uses
  store i8 %i.er, ptr %i.eo, align 1, !tbaa !16
  %.not78.7 = icmp eq i64 %i.ep, 0
  br i1 %.not78.7, label %.loopexit, label %.lr.ph107, !llvm.loop !40

bb.u:                                             ; preds = %bb.r
  %i.et = getelementptr inbounds nuw i8, ptr %.5.lcssa, i64 2
  store i8 43, ptr %i.cj, align 1, !tbaa !16
  %i.eu = getelementptr inbounds nuw i8, ptr %.5.lcssa, i64 3
  store i8 48, ptr %i.et, align 1, !tbaa !16
  br label %.loopexit

.loopexit:                                        ; preds = %.lr.ph107.prol.loopexit, %.lr.ph107, %middle.block170, %vec.epilog.middle.block, %bb.u
  %.7 = phi ptr [ %i.eu, %bb.u ], [ %i.dl, %vec.epilog.middle.block ], [ %i.df, %middle.block170 ], [ %.lcssa.unr, %.lr.ph107.prol.loopexit ], [ %i.es, %.lr.ph107 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #17
  br label %bb.v

bb.v:                                             ; preds = %.loopexit, %._crit_edge101
  %.8 = phi ptr [ %.7, %.loopexit ], [ %.5.lcssa, %._crit_edge101 ]
  %i.ev = ptrtoint ptr %.8 to i64
  %i.ew = ptrtoint ptr %6 to i64
  %i.ex = sub i64 %i.ev, %i.ew
  store i64 %i.ex, ptr %7, align 8, !tbaa !19
  br label %bb.w

bb.w:                                             ; preds = %bb.v, %bb.e
  call void @free(ptr noundef nonnull %.064) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #17
  ret ptr %6
}

; Function Attrs: mustprogress nofree nosync nounwind willreturn memory(none)
declare ptr @__ctype_b_loc() local_unnamed_addr #3

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i64 @strlen(ptr noundef captures(none)) local_unnamed_addr #4

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr noundef captures(none)) local_unnamed_addr #5

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: write) uwtable
define dso_local noundef nonnull ptr @ap_php_conv_p2(i64 noundef %0, i32 noundef %1, i8 noundef signext %2, ptr noundef %3, ptr nofree noundef writeonly captures(none) %4) local_unnamed_addr #0 {
bb.a:
  %notmask = shl nsw i32 -1, %1
  %i.a = xor i32 %notmask, -1
  %i.b = icmp eq i8 %2, 88
  %i.c = select i1 %i.b, ptr @ap_php_conv_p2.upper_digits, ptr @ap_php_conv_p2.low_digits
  %i.d = zext nneg i32 %i.a to i64
  %i.e = zext nneg i32 %1 to i64
  br label %bb.b

bb.b:                                             ; preds = %bb.b, %bb.a
  %.013 = phi i64 [ %0, %bb.a ], [ %i.j, %bb.b ]  ; 2 uses
  %.0 = phi ptr [ %3, %bb.a ], [ %i.i, %bb.b ]
  %i.f = and i64 %.013, %i.d
  %i.g = getelementptr inbounds nuw i8, ptr %i.c, i64 %i.f
  %i.h = load i8, ptr %i.g, align 1, !tbaa !16
  %i.i = getelementptr inbounds i8, ptr %.0, i64 -1 ; 4 uses
  store i8 %i.h, ptr %i.i, align 1, !tbaa !16
  %i.j = lshr i64 %.013, %i.e                     ; 2 uses
  %.not = icmp eq i64 %i.j, 0
  br i1 %.not, label %bb.c, label %bb.b, !llvm.loop !1

bb.c:                                             ; preds = %bb.b
  %i.k = ptrtoint ptr %3 to i64
  %i.l = ptrtoint ptr %i.i to i64
  %i.m = sub i64 %i.k, %i.l
  store i64 %i.m, ptr %4, align 8, !tbaa !19
  ret ptr %i.i
}

; Function Attrs: nounwind uwtable
define dso_local i32 @ap_php_slprintf(ptr nofree noundef writeonly captures(address) %0, i64 noundef %1, ptr nofree noundef readonly captures(none) %2, ...) local_unnamed_addr #2 {
bb.a:
  %3 = alloca [1 x %struct.__va_list_tag], align 16 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #17
  call void @llvm.va_start.p0(ptr nonnull %3)
  %i.a = call fastcc i64 @strx_printv(ptr noundef %0, i64 noundef %1, ptr noundef %2, ptr noundef nonnull %3) ; 2 uses
  call void @llvm.va_end.p0(ptr nonnull %3)
  %.not = icmp ult i64 %i.a, %1
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = add i64 %1, -1                           ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 %i.b
  store i8 0, ptr %i.c, align 1, !tbaa !16
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %.0 = phi i64 [ %i.b, %bb.b ], [ %i.a, %bb.a ]
  %i.d = trunc i64 %.0 to i32
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #17
  ret i32 %i.d
}

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare void @llvm.va_start.p0(ptr) #6

; Function Attrs: nounwind uwtable
define internal fastcc i64 @strx_printv(ptr nofree noundef writeonly captures(address) %0, i64 noundef %1, ptr nofree noundef readonly captures(none) %2, ptr nofree noundef %3) unnamed_addr #2 {
bb.a:
  %i.a = alloca i64, align 8                      ; 38 uses
  %i.b = alloca [2048 x i8], align 16             ; 9 uses
  %i.c = alloca [2 x i8], align 1                 ; 9 uses
  %i.d = alloca i8, align 1                       ; 5 uses
  %i.e = icmp eq i64 %1, 0                        ; 3 uses
  %i.f = getelementptr i8, ptr %0, i64 %1
  %i.g = getelementptr i8, ptr %i.f, i64 -1       ; 2 uses
  %.sroa.6.0 = select i1 %i.e, ptr inttoptr (i64 -1 to ptr), ptr %0
  %.sroa.0.0 = select i1 %i.e, ptr inttoptr (i64 -1 to ptr), ptr %i.g ; 9 uses
  %i.h = ptrtoaddr ptr %i.b to i64
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #17
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #17
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #17
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #17
  %i.i = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 70 uses
  %i.j = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 33 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.b, i64 2048 ; 5 uses
  %i.l = ptrtoint ptr %i.k to i64                 ; 4 uses
  %i.m = getelementptr inbounds nuw i8, ptr %3, i64 4 ; 4 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.b, i64 1 ; 6 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.c, i64 1
  %i.p = sub i64 -2047, %i.h                      ; 3 uses
  %scevgep1039.i = getelementptr inbounds nuw i8, ptr %i.b, i64 2047 ; 3 uses
  br label %zend_tmp_string_release.exit.i

zend_tmp_string_release.exit.i:                   ; preds = %zend_tmp_string_release.exit.thread.i, %bb.a
  %.0324.ph.i = phi ptr [ %i.xx, %zend_tmp_string_release.exit.thread.i ], [ %2, %bb.a ] ; 3 uses
  %.0309.ph.i = phi ptr [ %.13322.i, %zend_tmp_string_release.exit.thread.i ], [ %.sroa.6.0, %bb.a ] ; 14 uses
  %.0300.ph.i = phi i64 [ %.8308.i, %zend_tmp_string_release.exit.thread.i ], [ 0, %bb.a ] ; 8 uses
  %.0280.ph.i = phi i32 [ %.10.i, %zend_tmp_string_release.exit.thread.i ], [ 0, %bb.a ] ; 4 uses
  %.0273.ph.i = phi i32 [ %.6279.i, %zend_tmp_string_release.exit.thread.i ], [ 0, %bb.a ] ; 4 uses
  %.0255.ph.i = phi i64 [ %.7.i, %zend_tmp_string_release.exit.thread.i ], [ 0, %bb.a ] ; 33 uses
  %.0250.ph.i = phi ptr [ %.5.i, %zend_tmp_string_release.exit.thread.i ], [ null, %bb.a ] ; 33 uses
  %.pre.i = load i8, ptr %.0324.ph.i, align 1, !tbaa !16 ; 2 uses
  switch i8 %.pre.i, label %bb.b [
    i8 0, label %format_converter.exit
    i8 37, label %bb.e
  ]

bb.b:                                             ; preds = %zend_tmp_string_release.exit.i
  %i.q = icmp ult ptr %.0309.ph.i, %.sroa.0.0
  br i1 %i.q, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.r = getelementptr inbounds nuw i8, ptr %.0309.ph.i, i64 1
  store i8 %.pre.i, ptr %.0309.ph.i, align 1, !tbaa !16
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.1310.i = phi ptr [ %i.r, %bb.c ], [ %.0309.ph.i, %bb.b ]
  %i.s = add i64 %.0300.ph.i, 1
  br label %zend_tmp_string_release.exit.thread.i

bb.e:                                             ; preds = %zend_tmp_string_release.exit.i
  %i.t = getelementptr inbounds nuw i8, ptr %.0324.ph.i, i64 1 ; 4 uses
  %i.u = load i8, ptr %i.t, align 1, !tbaa !16    ; 5 uses
  %i.v = icmp sgt i8 %i.u, -1
  br i1 %i.v, label %bb.f, label %.loopexit471.i

bb.f:                                             ; preds = %bb.e
  %i.w = tail call ptr @__ctype_b_loc() #18       ; 2 uses
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !22   ; 4 uses
  %i.y = zext nneg i8 %i.u to i64
  %i.z = getelementptr inbounds nuw [2 x i8], ptr %i.x, i64 %i.y
  %i.aa = load i16, ptr %i.z, align 2, !tbaa !24
  %i.ab = and i16 %i.aa, 512
  %.not377.i = icmp eq i16 %i.ab, 0
  br i1 %.not377.i, label %.preheader473.i, label %.loopexit471.i

.preheader473.i:                                  ; preds = %bb.f, %bb.k
  %i.ac = phi i8 [ %.pre1090.i, %bb.k ], [ %i.u, %bb.f ] ; 5 uses
  %.1325.i = phi ptr [ %i.ad, %bb.k ], [ %i.t, %bb.f ] ; 4 uses
  %.0269.i = phi i32 [ %.1270.i, %bb.k ], [ 1, %bb.f ] ; 8 uses
  %.0265.i = phi i8 [ %.1266.i, %bb.k ], [ 32, %bb.f ] ; 9 uses
  %.0246.i = phi i8 [ %.1247.i, %bb.k ], [ 0, %bb.f ] ; 9 uses
  %.0243.i = phi i8 [ %.1244.i, %bb.k ], [ 0, %bb.f ] ; 9 uses
  %.0241.i = phi i8 [ %.1242.i, %bb.k ], [ 0, %bb.f ] ; 9 uses
  switch i8 %i.ac, label %bb.l [
    i8 45, label %bb.k
    i8 43, label %bb.g
    i8 35, label %bb.h
    i8 32, label %bb.i
    i8 48, label %bb.j
  ]

bb.g:                                             ; preds = %.preheader473.i
  br label %bb.k

bb.h:                                             ; preds = %.preheader473.i
  br label %bb.k

bb.i:                                             ; preds = %.preheader473.i
  br label %bb.k

bb.j:                                             ; preds = %.preheader473.i
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i, %bb.h, %bb.g, %.preheader473.i
  %.1270.i = phi i32 [ %.0269.i, %bb.j ], [ %.0269.i, %bb.g ], [ %.0269.i, %bb.h ], [ %.0269.i, %bb.i ], [ 0, %.preheader473.i ]
  %.1266.i = phi i8 [ 48, %bb.j ], [ %.0265.i, %bb.g ], [ %.0265.i, %bb.h ], [ %.0265.i, %bb.i ], [ %.0265.i, %.preheader473.i ]
  %.1247.i = phi i8 [ %.0246.i, %bb.j ], [ %.0246.i, %bb.g ], [ 1, %bb.h ], [ %.0246.i, %bb.i ], [ %.0246.i, %.preheader473.i ]
  %.1244.i = phi i8 [ %.0243.i, %bb.j ], [ 1, %bb.g ], [ %.0243.i, %bb.h ], [ %.0243.i, %bb.i ], [ %.0243.i, %.preheader473.i ]
  %.1242.i = phi i8 [ %.0241.i, %bb.j ], [ %.0241.i, %bb.g ], [ %.0241.i, %bb.h ], [ 1, %bb.i ], [ %.0241.i, %.preheader473.i ]
  %i.ad = getelementptr inbounds nuw i8, ptr %.1325.i, i64 1 ; 2 uses
  %.pre1090.i = load i8, ptr %i.ad, align 1, !tbaa !16
  br label %.preheader473.i

bb.l:                                             ; preds = %.preheader473.i
  %i.ae = zext i8 %i.ac to i64
  %i.af = getelementptr inbounds nuw [2 x i8], ptr %i.x, i64 %i.ae
  %i.ag = load i16, ptr %i.af, align 2, !tbaa !24
  %i.ah = and i16 %i.ag, 2048
  %.not378.i = icmp eq i16 %i.ah, 0
  br i1 %.not378.i, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.ai = sext i8 %i.ac to i32
  %i.aj = add nsw i32 %i.ai, -48                  ; 2 uses
  %.2326735.i = getelementptr inbounds nuw i8, ptr %.1325.i, i64 1 ; 3 uses
  %i.ak = load i8, ptr %.2326735.i, align 1, !tbaa !16 ; 3 uses
  %i.al = zext i8 %i.ak to i64
  %i.am = getelementptr inbounds nuw [2 x i8], ptr %i.x, i64 %i.al
  %i.an = load i16, ptr %i.am, align 2, !tbaa !24
  %i.ao = and i16 %i.an, 2048
  %.not379736.i = icmp eq i16 %i.ao, 0
  br i1 %.not379736.i, label %.loopexit472.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.m, %.lr.ph.i
  %i.ap = phi i8 [ %i.au, %.lr.ph.i ], [ %i.ak, %bb.m ]
  %.2326738.i = phi ptr [ %.2326.i, %.lr.ph.i ], [ %.2326735.i, %bb.m ]
  %.1281737.i = phi i32 [ %i.at, %.lr.ph.i ], [ %i.aj, %bb.m ]
  %i.aq = mul nsw i32 %.1281737.i, 10
  %i.ar = sext i8 %i.ap to i32
  %i.as = add nsw i32 %i.ar, -48
  %i.at = add i32 %i.as, %i.aq                    ; 2 uses
  %.2326.i = getelementptr inbounds nuw i8, ptr %.2326738.i, i64 1 ; 3 uses
  %i.au = load i8, ptr %.2326.i, align 1, !tbaa !16 ; 3 uses
  %i.av = zext i8 %i.au to i64
  %i.aw = getelementptr inbounds nuw [2 x i8], ptr %i.x, i64 %i.av
  %i.ax = load i16, ptr %i.aw, align 2, !tbaa !24
  %i.ay = and i16 %i.ax, 2048
  %.not379.i = icmp eq i16 %i.ay, 0
  br i1 %.not379.i, label %.loopexit472.i, label %.lr.ph.i, !llvm.loop !48

bb.n:                                             ; preds = %bb.l
  %i.az = icmp eq i8 %i.ac, 42
  br i1 %i.az, label %bb.o, label %.loopexit472.i

bb.o:                                             ; preds = %bb.n
  %i.ba = load i32, ptr %3, align 8               ; 3 uses
  %i.bb = icmp ult i32 %i.ba, 41
  br i1 %i.bb, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  %i.bc = load ptr, ptr %i.j, align 8
  %i.bd = zext nneg i32 %i.ba to i64
  %i.be = getelementptr i8, ptr %i.bc, i64 %i.bd
  %i.bf = add nuw nsw i32 %i.ba, 8
  store i32 %i.bf, ptr %3, align 8
  br label %bb.r

bb.q:                                             ; preds = %bb.o
  %i.bg = load ptr, ptr %i.i, align 8             ; 2 uses
  %i.bh = getelementptr i8, ptr %i.bg, i64 8
  store ptr %i.bh, ptr %i.i, align 8
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %bb.p
  %i.bi = phi ptr [ %i.be, %bb.p ], [ %i.bg, %bb.q ]
  %i.bj = load i32, ptr %i.bi, align 4, !tbaa !25 ; 2 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %.1325.i, i64 1 ; 2 uses
  %i.bl = icmp slt i32 %i.bj, 0
  %spec.select.i = call i32 @llvm.abs.i32(i32 %i.bj, i1 true)
  %spec.select390.i = select i1 %i.bl, i32 0, i32 %.0269.i
  %.pre1091.i = load i8, ptr %i.bk, align 1, !tbaa !16
  br label %.loopexit472.i

.loopexit472.i:                                   ; preds = %.lr.ph.i, %bb.r, %bb.n, %bb.m
  %i.bm = phi i8 [ %i.ac, %bb.n ], [ %.pre1091.i, %bb.r ], [ %i.ak, %bb.m ], [ %i.au, %.lr.ph.i ] ; 2 uses
  %.3327.i = phi ptr [ %.1325.i, %bb.n ], [ %i.bk, %bb.r ], [ %.2326735.i, %bb.m ], [ %.2326.i, %.lr.ph.i ] ; 4 uses
  %.2282.i = phi i32 [ %.0280.ph.i, %bb.n ], [ %spec.select.i, %bb.r ], [ %i.aj, %bb.m ], [ %i.at, %.lr.ph.i ] ; 5 uses
  %.2271.i = phi i32 [ %.0269.i, %bb.n ], [ %spec.select390.i, %bb.r ], [ %.0269.i, %bb.m ], [ %.0269.i, %.lr.ph.i ] ; 5 uses
  %.0239.i = phi i1 [ false, %bb.n ], [ true, %bb.r ], [ true, %bb.m ], [ true, %.lr.ph.i ] ; 5 uses
  %i.bn = icmp eq i8 %i.bm, 46
  br i1 %i.bn, label %bb.s, label %.loopexit471.i

bb.s:                                             ; preds = %.loopexit472.i
  %i.bo = getelementptr inbounds nuw i8, ptr %.3327.i, i64 1 ; 2 uses
  %i.bp = load ptr, ptr %i.w, align 8, !tbaa !22  ; 3 uses
  %i.bq = load i8, ptr %i.bo, align 1, !tbaa !16  ; 4 uses
  %i.br = zext i8 %i.bq to i64
  %i.bs = getelementptr inbounds nuw [2 x i8], ptr %i.bp, i64 %i.br
  %i.bt = load i16, ptr %i.bs, align 2, !tbaa !24
  %i.bu = and i16 %i.bt, 2048
  %.not380.i = icmp eq i16 %i.bu, 0
  br i1 %.not380.i, label %bb.u, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.bv = getelementptr inbounds nuw i8, ptr %.3327.i, i64 2 ; 3 uses
  %i.bw = sext i8 %i.bq to i32
  %i.bx = add nsw i32 %i.bw, -48                  ; 2 uses
  %i.by = load i8, ptr %i.bv, align 1, !tbaa !16  ; 3 uses
  %i.bz = zext i8 %i.by to i64
  %i.ca = getelementptr inbounds nuw [2 x i8], ptr %i.bp, i64 %i.bz
  %i.cb = load i16, ptr %i.ca, align 2, !tbaa !24
  %i.cc = and i16 %i.cb, 2048
  %.not381740.i = icmp eq i16 %i.cc, 0
  br i1 %.not381740.i, label %.loopexit471.i, label %.lr.ph743.i

end_hunk_0
begin_hunk_1_@strx_printv:bb.a

bb.gq:                                            ; preds = %bb.gp, %bb.go
  %i.wc = phi i64 [ %.pre1094.i, %bb.gp ], [ %i.vz, %bb.go ] ; 3 uses
  %.5314.i = phi ptr [ %i.wb, %bb.gp ], [ %.4313.i, %bb.go ] ; 2 uses
  %i.wd = add i64 %.2302.i, 1                     ; 2 uses
  %indvars.iv.next.i = add nsw i64 %indvars.iv1085.i, -1 ; 3 uses
  %i.we = icmp ult i64 %i.wc, %indvars.iv.next.i
  br i1 %i.we, label %bb.go, label %.loopexit464.loopexit.i, !llvm.loop !51

.loopexit464.loopexit.i:                          ; preds = %bb.gq
  %i.wf = trunc nsw i64 %indvars.iv.next.i to i32
  br label %.loopexit464.i

.loopexit464.i:                                   ; preds = %.loopexit464.loopexit.i, %bb.gi, %.thread419.i
  %i.wg = phi i64 [ %.pre1095.i, %.thread419.i ], [ %.pre1095.i, %bb.gi ], [ %i.wc, %.loopexit464.loopexit.i ] ; 6 uses
  %.6315.i = phi ptr [ %.0309.ph.i, %.thread419.i ], [ %.0309.ph.i, %bb.gi ], [ %.5314.i, %.loopexit464.loopexit.i ] ; 3 uses
  %.3303.i = phi i64 [ %.0300.ph.i, %.thread419.i ], [ %.0300.ph.i, %bb.gi ], [ %i.wd, %.loopexit464.loopexit.i ] ; 2 uses
  %.12.i = phi ptr [ %.10298.i, %.thread419.i ], [ %.10298.i, %bb.gi ], [ %.11.i, %.loopexit464.loopexit.i ] ; 2 uses
  %.6286.i = phi i32 [ %.3283.i, %.thread419.i ], [ %.3283.i, %bb.gi ], [ %i.wf, %.loopexit464.loopexit.i ] ; 3 uses
  %.not389762.i = icmp eq i64 %i.wg, 0
  br i1 %.not389762.i, label %._crit_edge.i, label %.lr.ph767.i.preheader

.lr.ph767.i.preheader:                            ; preds = %.loopexit464.i
  %xtraiter = and i64 %i.wg, 3                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph767.i.prol.loopexit, label %.lr.ph767.i.prol

.lr.ph767.i.prol:                                 ; preds = %.lr.ph767.i.preheader, %bb.gs
  %.13766.i.prol = phi ptr [ %i.wk, %bb.gs ], [ %.12.i, %.lr.ph767.i.preheader ] ; 2 uses
  %.0299765.i.prol = phi i64 [ %i.wl, %bb.gs ], [ %i.wg, %.lr.ph767.i.preheader ]
  %.7316763.i.prol = phi ptr [ %.8317.i.prol, %bb.gs ], [ %.6315.i, %.lr.ph767.i.preheader ] ; 4 uses
  %prol.iter = phi i64 [ %prol.iter.next, %bb.gs ], [ 0, %.lr.ph767.i.preheader ]
  %i.wh = icmp ult ptr %.7316763.i.prol, %.sroa.0.0
  br i1 %i.wh, label %bb.gr, label %bb.gs

bb.gr:                                            ; preds = %.lr.ph767.i.prol
  %i.wi = load i8, ptr %.13766.i.prol, align 1, !tbaa !16
  %i.wj = getelementptr inbounds nuw i8, ptr %.7316763.i.prol, i64 1
  store i8 %i.wi, ptr %.7316763.i.prol, align 1, !tbaa !16
  br label %bb.gs

bb.gs:                                            ; preds = %bb.gr, %.lr.ph767.i.prol
  %.8317.i.prol = phi ptr [ %i.wj, %bb.gr ], [ %.7316763.i.prol, %.lr.ph767.i.prol ] ; 3 uses
  %i.wk = getelementptr inbounds nuw i8, ptr %.13766.i.prol, i64 1 ; 2 uses
  %i.wl = add i64 %.0299765.i.prol, -1            ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph767.i.prol.loopexit, label %.lr.ph767.i.prol, !llvm.loop !52

.lr.ph767.i.prol.loopexit:                        ; preds = %bb.gs, %.lr.ph767.i.preheader
  %.8317.i.lcssa.unr = phi ptr [ poison, %.lr.ph767.i.preheader ], [ %.8317.i.prol, %bb.gs ]
  %.13766.i.unr = phi ptr [ %.12.i, %.lr.ph767.i.preheader ], [ %i.wk, %bb.gs ]
  %.0299765.i.unr = phi i64 [ %i.wg, %.lr.ph767.i.preheader ], [ %i.wl, %bb.gs ]
  %.7316763.i.unr = phi ptr [ %.6315.i, %.lr.ph767.i.preheader ], [ %.8317.i.prol, %bb.gs ]
  %i.wm = icmp ult i64 %i.wg, 4
  br i1 %i.wm, label %._crit_edge.loopexit.i, label %.lr.ph767.i

.lr.ph767.i:                                      ; preds = %.lr.ph767.i.prol.loopexit, %bb.gx
  %.13766.i = phi ptr [ %i.xc, %bb.gx ], [ %.13766.i.unr, %.lr.ph767.i.prol.loopexit ] ; 5 uses
  %.0299765.i = phi i64 [ %i.xd, %bb.gx ], [ %.0299765.i.unr, %.lr.ph767.i.prol.loopexit ]
  %.7316763.i = phi ptr [ %.8317.i.3, %bb.gx ], [ %.7316763.i.unr, %.lr.ph767.i.prol.loopexit ] ; 4 uses
  %i.wn = icmp ult ptr %.7316763.i, %.sroa.0.0
  br i1 %i.wn, label %bb.gt, label %.lr.ph767.i.1

bb.gt:                                            ; preds = %.lr.ph767.i
  %i.wo = load i8, ptr %.13766.i, align 1, !tbaa !16
  %i.wp = getelementptr inbounds nuw i8, ptr %.7316763.i, i64 1
  store i8 %i.wo, ptr %.7316763.i, align 1, !tbaa !16
  br label %.lr.ph767.i.1

.lr.ph767.i.1:                                    ; preds = %bb.gt, %.lr.ph767.i
  %.8317.i = phi ptr [ %i.wp, %bb.gt ], [ %.7316763.i, %.lr.ph767.i ] ; 4 uses
  %i.wq = icmp ult ptr %.8317.i, %.sroa.0.0
  br i1 %i.wq, label %bb.gu, label %.lr.ph767.i.2

bb.gu:                                            ; preds = %.lr.ph767.i.1
  %i.wr = getelementptr inbounds nuw i8, ptr %.13766.i, i64 1
  %i.ws = load i8, ptr %i.wr, align 1, !tbaa !16
  %i.wt = getelementptr inbounds nuw i8, ptr %.8317.i, i64 1
  store i8 %i.ws, ptr %.8317.i, align 1, !tbaa !16
  br label %.lr.ph767.i.2

.lr.ph767.i.2:                                    ; preds = %bb.gu, %.lr.ph767.i.1
  %.8317.i.1 = phi ptr [ %i.wt, %bb.gu ], [ %.8317.i, %.lr.ph767.i.1 ] ; 4 uses
  %i.wu = icmp ult ptr %.8317.i.1, %.sroa.0.0
  br i1 %i.wu, label %bb.gv, label %.lr.ph767.i.3

bb.gv:                                            ; preds = %.lr.ph767.i.2
  %i.wv = getelementptr inbounds nuw i8, ptr %.13766.i, i64 2
  %i.ww = load i8, ptr %i.wv, align 1, !tbaa !16
  %i.wx = getelementptr inbounds nuw i8, ptr %.8317.i.1, i64 1
  store i8 %i.ww, ptr %.8317.i.1, align 1, !tbaa !16
  br label %.lr.ph767.i.3

.lr.ph767.i.3:                                    ; preds = %bb.gv, %.lr.ph767.i.2
  %.8317.i.2 = phi ptr [ %i.wx, %bb.gv ], [ %.8317.i.1, %.lr.ph767.i.2 ] ; 4 uses
  %i.wy = icmp ult ptr %.8317.i.2, %.sroa.0.0
  br i1 %i.wy, label %bb.gw, label %bb.gx

bb.gw:                                            ; preds = %.lr.ph767.i.3
  %i.wz = getelementptr inbounds nuw i8, ptr %.13766.i, i64 3
  %i.xa = load i8, ptr %i.wz, align 1, !tbaa !16
  %i.xb = getelementptr inbounds nuw i8, ptr %.8317.i.2, i64 1
  store i8 %i.xa, ptr %.8317.i.2, align 1, !tbaa !16
  br label %bb.gx

bb.gx:                                            ; preds = %bb.gw, %.lr.ph767.i.3
  %.8317.i.3 = phi ptr [ %i.xb, %bb.gw ], [ %.8317.i.2, %.lr.ph767.i.3 ] ; 2 uses
  %i.xc = getelementptr inbounds nuw i8, ptr %.13766.i, i64 4
  %i.xd = add i64 %.0299765.i, -4                 ; 2 uses
  %.not389.i.3 = icmp eq i64 %i.xd, 0
  br i1 %.not389.i.3, label %._crit_edge.loopexit.i, label %.lr.ph767.i, !llvm.loop !53

._crit_edge.loopexit.i:                           ; preds = %bb.gx, %.lr.ph767.i.prol.loopexit
  %.8317.i.lcssa = phi ptr [ %.8317.i.lcssa.unr, %.lr.ph767.i.prol.loopexit ], [ %.8317.i.3, %bb.gx ]
  %i.xe = add i64 %.3303.i, %i.wg
  br label %._crit_edge.i

._crit_edge.i:                                    ; preds = %._crit_edge.loopexit.i, %.loopexit464.i
  %.7316.lcssa.i = phi ptr [ %.6315.i, %.loopexit464.i ], [ %.8317.i.lcssa, %._crit_edge.loopexit.i ] ; 3 uses
  %.4304.lcssa.i = phi i64 [ %.3303.i, %.loopexit464.i ], [ %i.xe, %._crit_edge.loopexit.i ] ; 3 uses
  %i.xf = icmp eq i32 %.3272.i, 0
  %or.cond18.i = select i1 %.1.i, i1 %i.xf, i1 false
  br i1 %or.cond18.i, label %bb.gy, label %.loopexit.i

bb.gy:                                            ; preds = %._crit_edge.i
  %i.xg = sext i32 %.6286.i to i64                ; 2 uses
  %i.xh = load i64, ptr %i.a, align 8, !tbaa !19  ; 2 uses
  %i.xi = icmp ult i64 %i.xh, %i.xg
  br i1 %i.xi, label %.preheader.i, label %.loopexit.i

.preheader.i:                                     ; preds = %bb.gy, %bb.ha
  %i.xj = phi i64 [ %i.xm, %bb.ha ], [ %i.xh, %bb.gy ]
  %indvars.iv1087.i = phi i64 [ %indvars.iv.next1088.i, %bb.ha ], [ %i.xg, %bb.gy ]
  %.9318.i = phi ptr [ %.10319.i, %bb.ha ], [ %.7316.lcssa.i, %bb.gy ] ; 4 uses
  %.5305.i = phi i64 [ %i.xn, %bb.ha ], [ %.4304.lcssa.i, %bb.gy ]
  %i.xk = icmp ult ptr %.9318.i, %.sroa.0.0
  br i1 %i.xk, label %bb.gz, label %bb.ha

bb.gz:                                            ; preds = %.preheader.i
  %i.xl = getelementptr inbounds nuw i8, ptr %.9318.i, i64 1
  store i8 %.3268431.i, ptr %.9318.i, align 1, !tbaa !16
  %.pre1096.i = load i64, ptr %i.a, align 8, !tbaa !19
  br label %bb.ha

bb.ha:                                            ; preds = %bb.gz, %.preheader.i
  %i.xm = phi i64 [ %.pre1096.i, %bb.gz ], [ %i.xj, %.preheader.i ] ; 2 uses
  %.10319.i = phi ptr [ %i.xl, %bb.gz ], [ %.9318.i, %.preheader.i ] ; 2 uses
  %i.xn = add i64 %.5305.i, 1                     ; 2 uses
  %indvars.iv.next1088.i = add nsw i64 %indvars.iv1087.i, -1 ; 3 uses
  %i.xo = icmp ult i64 %i.xm, %indvars.iv.next1088.i
  br i1 %i.xo, label %.preheader.i, label %.loopexit.loopexit.i, !llvm.loop !54

.loopexit.loopexit.i:                             ; preds = %bb.ha
  %i.xp = trunc nsw i64 %indvars.iv.next1088.i to i32
  br label %.loopexit.i

.loopexit.i:                                      ; preds = %.loopexit.loopexit.i, %bb.gy, %._crit_edge.i
  %.11320.i = phi ptr [ %.7316.lcssa.i, %._crit_edge.i ], [ %.7316.lcssa.i, %bb.gy ], [ %.10319.i, %.loopexit.loopexit.i ] ; 4 uses
  %.6306.i = phi i64 [ %.4304.lcssa.i, %._crit_edge.i ], [ %.4304.lcssa.i, %bb.gy ], [ %i.xn, %.loopexit.loopexit.i ] ; 4 uses
  %.8.i = phi i32 [ %.6286.i, %._crit_edge.i ], [ %.6286.i, %bb.gy ], [ %i.xp, %.loopexit.loopexit.i ] ; 4 uses
  %.not.i.i = icmp eq ptr %.0411429.i, null
  br i1 %.not.i.i, label %zend_tmp_string_release.exit.thread.i, label %bb.hb, !prof !57

bb.hb:                                            ; preds = %.loopexit.i
  %i.xq = getelementptr inbounds nuw i8, ptr %.0411429.i, i64 4
  %i.xr = load i32, ptr %i.xq, align 4, !tbaa !16
  %i.xs = and i32 %i.xr, 64
  %.not.i398.i = icmp eq i32 %i.xs, 0
  br i1 %.not.i398.i, label %bb.hc, label %zend_tmp_string_release.exit.thread.i

bb.hc:                                            ; preds = %bb.hb
  %i.xt = load i32, ptr %.0411429.i, align 4, !tbaa !73 ; 2 uses
  %i.xu = icmp ne i32 %i.xt, 0
  call void @llvm.assume(i1 %i.xu)
  %i.xv = add i32 %i.xt, -1                       ; 2 uses
  store i32 %i.xv, ptr %.0411429.i, align 4, !tbaa !73
  %i.xw = icmp eq i32 %i.xv, 0
  br i1 %i.xw, label %bb.hd, label %zend_tmp_string_release.exit.thread.i

bb.hd:                                            ; preds = %bb.hc
  call void @_efree(ptr noundef nonnull %.0411429.i) #17
  br label %zend_tmp_string_release.exit.thread.i

zend_tmp_string_release.exit.thread.i:            ; preds = %bb.hd, %bb.hc, %bb.hb, %.loopexit.i, %bb.gb, %bb.d
  %.8332.i = phi ptr [ %.0324.ph.i, %bb.d ], [ %.7331416428.i, %.loopexit.i ], [ %.7331416428.i, %bb.hb ], [ %.7331416428.i, %bb.hc ], [ %.7331416428.i, %bb.hd ], [ %.7331.i108, %bb.gb ]
  %.13322.i = phi ptr [ %.1310.i, %bb.d ], [ %.11320.i, %.loopexit.i ], [ %.11320.i, %bb.hb ], [ %.11320.i, %bb.hc ], [ %.11320.i, %bb.hd ], [ %.0309.ph.i, %bb.gb ]
  %.8308.i = phi i64 [ %i.s, %bb.d ], [ %.6306.i, %.loopexit.i ], [ %.6306.i, %bb.hb ], [ %.6306.i, %bb.hc ], [ %.6306.i, %bb.hd ], [ %.0300.ph.i, %bb.gb ]
  %.10.i = phi i32 [ %.0280.ph.i, %bb.d ], [ %.8.i, %.loopexit.i ], [ %.8.i, %bb.hb ], [ %.8.i, %bb.hc ], [ %.8.i, %bb.hd ], [ %.3283.i, %bb.gb ]
  %.6279.i = phi i32 [ %.0273.ph.i, %bb.d ], [ %.4277430.i, %.loopexit.i ], [ %.4277430.i, %bb.hb ], [ %.4277430.i, %bb.hc ], [ %.4277430.i, %bb.hd ], [ %.2275.i, %bb.gb ]
  %.7.i = phi i64 [ %.0255.ph.i, %bb.d ], [ %.5260432.i, %.loopexit.i ], [ %.5260432.i, %bb.hb ], [ %.5260432.i, %bb.hc ], [ %.5260432.i, %bb.hd ], [ %.0255.ph.i, %bb.gb ]
  %.5.i = phi ptr [ %.0250.ph.i, %bb.d ], [ %.3433.i, %.loopexit.i ], [ %.3433.i, %bb.hb ], [ %.3433.i, %bb.hc ], [ %.3433.i, %bb.hd ], [ %.0250.ph.i, %bb.gb ]
  %i.xx = getelementptr inbounds nuw i8, ptr %.8332.i, i64 1
  br label %zend_tmp_string_release.exit.i, !llvm.loop !50

format_converter.exit:                            ; preds = %bb.ac, %bb.ad, %bb.ae, %bb.af, %bb.ag, %bb.ah, %bb.ai, %zend_tmp_string_release.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #17
  %.not8 = icmp ugt ptr %.0309.ph.i, %i.g
  %or.cond = select i1 %i.e, i1 true, i1 %.not8
  br i1 %or.cond, label %bb.hf, label %bb.he

bb.he:                                            ; preds = %format_converter.exit
  store i8 0, ptr %.0309.ph.i, align 1, !tbaa !16
  br label %bb.hf

bb.hf:                                            ; preds = %bb.he, %format_converter.exit
  ret i64 %.0300.ph.i
}

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare void @llvm.va_end.p0(ptr) #6

; Function Attrs: nounwind uwtable
define dso_local i32 @ap_php_vslprintf(ptr nofree noundef writeonly captures(address) %0, i64 noundef %1, ptr nofree noundef readonly captures(none) %2, ptr noundef %3) local_unnamed_addr #2 {
bb.a:
  %i.a = tail call fastcc i64 @strx_printv(ptr noundef %0, i64 noundef %1, ptr noundef %2, ptr noundef %3) ; 2 uses
  %.not = icmp ult i64 %i.a, %1
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = add i64 %1, -1                           ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 %i.b
  store i8 0, ptr %i.c, align 1, !tbaa !16
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %.0 = phi i64 [ %i.b, %bb.b ], [ %i.a, %bb.a ]
  %i.d = trunc i64 %.0 to i32
  ret i32 %i.d
}

; Function Attrs: nounwind uwtable
define dso_local i32 @ap_php_snprintf(ptr nofree noundef writeonly captures(address) %0, i64 noundef %1, ptr nofree noundef readonly captures(none) %2, ...) local_unnamed_addr #2 {
bb.a:
  %3 = alloca [1 x %struct.__va_list_tag], align 16 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #17
  call void @llvm.va_start.p0(ptr nonnull %3)
  %i.a = call fastcc i64 @strx_printv(ptr noundef %0, i64 noundef %1, ptr noundef %2, ptr noundef nonnull %3)
  call void @llvm.va_end.p0(ptr nonnull %3)
  %i.b = trunc i64 %i.a to i32
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #17
  ret i32 %i.b
}

; Function Attrs: nounwind uwtable
define dso_local i32 @ap_php_vsnprintf(ptr nofree noundef writeonly captures(address) %0, i64 noundef %1, ptr nofree noundef readonly captures(none) %2, ptr noundef %3) local_unnamed_addr #2 {
bb.a:
  %i.a = tail call fastcc i64 @strx_printv(ptr noundef %0, i64 noundef %1, ptr noundef %2, ptr noundef %3)
  %i.b = trunc i64 %i.a to i32
  ret i32 %i.b
}

; Function Attrs: nounwind uwtable
define dso_local i32 @ap_php_vasprintf(ptr nofree noundef captures(none) initializes((0, 8)) %0, ptr nofree noundef readonly captures(none) %1, ptr noundef %2) local_unnamed_addr #2 {
bb.a:
  %3 = alloca [1 x %struct.__va_list_tag], align 16 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #17
  call void @llvm.va_copy.p0(ptr nonnull %3, ptr %2)
  %i.a = call fastcc i64 @strx_printv(ptr noundef null, i64 noundef 0, ptr noundef readonly %1, ptr noundef nonnull %3)
  %i.b = trunc i64 %i.a to i32                    ; 3 uses
  call void @llvm.va_end.p0(ptr nonnull %3)
  store ptr null, ptr %0, align 8, !tbaa !28
  %i.c = icmp sgt i32 %i.b, -1
  br i1 %i.c, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  %i.d = add nuw nsw i32 %i.b, 1                  ; 2 uses
  %i.e = zext nneg i32 %i.d to i64                ; 2 uses
  %i.f = call noalias ptr @malloc(i64 noundef %i.e) #22 ; 3 uses
  store ptr %i.f, ptr %0, align 8, !tbaa !28
  %.not = icmp eq ptr %i.f, null
  br i1 %.not, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.g = call fastcc i64 @strx_printv(ptr noundef nonnull %i.f, i64 noundef %i.e, ptr noundef readonly %1, ptr noundef %2)
  %i.h = trunc i64 %i.g to i32                    ; 3 uses
  %i.i = icmp slt i32 %i.h, 0
  br i1 %i.i, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.j = load ptr, ptr %0, align 8, !tbaa !28
  call void @free(ptr noundef %i.j) #17
  store ptr null, ptr %0, align 8, !tbaa !28
  br label %bb.e

bb.e:                                             ; preds = %bb.b, %bb.d, %bb.c, %bb.a
  %.0 = phi i32 [ %i.h, %bb.d ], [ %i.h, %bb.c ], [ %i.d, %bb.b ], [ %i.b, %bb.a ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #17
  ret i32 %.0
}

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare void @llvm.va_copy.p0(ptr, ptr) #6

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite, errnomem: write)
declare noalias noundef ptr @malloc(i64 noundef) local_unnamed_addr #7

; Function Attrs: nounwind uwtable
define dso_local i32 @ap_php_asprintf(ptr noundef %0, ptr noundef %1, ...) local_unnamed_addr #2 {
bb.a:
  %2 = alloca [1 x %struct.__va_list_tag], align 16 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #17
  call void @llvm.va_start.p0(ptr nonnull %2)
  %i.a = call i32 @vasprintf(ptr noundef %0, ptr noundef %1, ptr noundef nonnull %2) #17
  call void @llvm.va_end.p0(ptr nonnull %2)
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #17
  ret i32 %i.a
}

; Function Attrs: nounwind
declare i32 @vasprintf(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #8

; Function Attrs: nounwind uwtable
define internal fastcc noundef ptr @__cvt(double noundef %0, i32 noundef %1, ptr noundef nonnull %2, ptr noundef %3, i32 noundef range(i32 0, 2) %4) unnamed_addr #2 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 18 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #17
  %.0.in.p = tail call i32 @llvm.abs.i32(i32 %1, i1 false)
  %.0.in = add nuw i32 %.0.in.p, 1
  %.0 = zext i32 %.0.in to i64                    ; 3 uses
  %i.b = fcmp oeq double %0, 0.000000e+00
  br i1 %i.b, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.c = xor i32 %4, 1
  store i32 %i.c, ptr %2, align 4, !tbaa !25
  store i8 0, ptr %3, align 1, !tbaa !15
  %.not48 = icmp eq i32 %1, 0                     ; 2 uses
  %i.d = select i1 %.not48, i64 2, i64 %.0
  %i.e = tail call noalias ptr @malloc(i64 noundef %i.d) #22 ; 5 uses
  %i.f = icmp eq ptr %i.e, null
  br i1 %i.f, label %bb.j, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %i.e, i64 1 ; 3 uses
  store ptr %i.g, ptr %i.a, align 8, !tbaa !28
  store i8 48, ptr %i.e, align 1, !tbaa !16
  store i8 0, ptr %i.g, align 1, !tbaa !16
  br i1 %.not48, label %bb.j, label %bb.i

bb.d:                                             ; preds = %bb.a
  %i.h = or disjoint i32 %4, 2
  %i.i = call ptr @zend_dtoa(double noundef %0, i32 noundef %i.h, i32 noundef %1, ptr noundef nonnull %2, ptr noundef %3, ptr noundef nonnull %i.a) #17 ; 6 uses
  %i.j = load i32, ptr %2, align 4, !tbaa !25     ; 2 uses
  %i.k = icmp eq i32 %i.j, 9999
  br i1 %i.k, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  store i32 0, ptr %2, align 4, !tbaa !25
  %i.l = load i8, ptr %i.i, align 1, !tbaa !16
  call void @zend_freedtoa(ptr noundef nonnull %i.i) #17
  %i.m = icmp eq i8 %i.l, 73
  %i.n = select i1 %i.m, ptr @.str, ptr @.str.1
  %i.o = call noalias dereferenceable_or_null(4) ptr @strdup(ptr noundef nonnull %i.n) #17
  br label %bb.j

bb.f:                                             ; preds = %bb.d
  %.not = icmp eq i32 %4, 0
  %narrow = select i1 %.not, i32 0, i32 %i.j
  %i.p = sext i32 %narrow to i64
  %.1 = add nsw i64 %i.p, %.0                     ; 3 uses
  %i.q = add nsw i64 %.1, 1
  %i.r = call noalias ptr @malloc(i64 noundef %i.q) #22 ; 4 uses
  %i.s = icmp eq ptr %i.r, null
  br i1 %i.s, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  call void @zend_freedtoa(ptr noundef %i.i) #17
  br label %bb.j

bb.h:                                             ; preds = %bb.f
  %i.t = call i64 @strlcpy(ptr noundef nonnull %i.r, ptr noundef nonnull dereferenceable(1) %i.i, i64 noundef %.1) #17 ; 0 uses
  %i.u = load ptr, ptr %i.a, align 8, !tbaa !28
  %i.v = ptrtoint ptr %i.u to i64
  %i.w = ptrtoint ptr %i.i to i64
  %i.x = sub i64 %i.v, %i.w
  %i.y = getelementptr inbounds i8, ptr %i.r, i64 %i.x
  store ptr %i.y, ptr %i.a, align 8, !tbaa !28
  call void @zend_freedtoa(ptr noundef nonnull %i.i) #17
  %.pre = load ptr, ptr %i.a, align 8, !tbaa !28
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.c
  %i.z = phi ptr [ %i.g, %bb.c ], [ %.pre, %bb.h ] ; 2 uses
  %.039 = phi ptr [ %i.e, %bb.c ], [ %i.r, %bb.h ] ; 2 uses
  %.2 = phi i64 [ %.0, %bb.c ], [ %.1, %bb.h ]    ; 2 uses
  %i.aa = ptrtoint ptr %i.z to i64                ; 2 uses
  %i.ab = ptrtoint ptr %.039 to i64               ; 2 uses
  %.neg = add i64 %.2, %i.ab
  %i.ac = xor i64 %i.aa, -1
  %i.ad = add i64 %.neg, %i.ac                    ; 4 uses
  %.not4951 = icmp eq i64 %i.ad, 0
  br i1 %.not4951, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.i
  %i.ae = add i64 %.2, %i.ab
  %i.af = add i64 %i.ae, -2
  %i.ag = sub i64 %i.af, %i.aa
end_hunk_1
