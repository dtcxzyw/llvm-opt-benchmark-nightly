Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/abc/original/acecFadds?download=true
inline.NumInlined: 540
inline.NumDeleted: 82
loop-unroll.NumCompletelyUnrolled: 14
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 16
begin_hunk_0_@Dtc_ManComputeCuts:bb.a
.lr.ph.i133:                                      ; preds = %bb.t, %Vec_IntPush.exit.i
  %indvars.iv.i134 = phi i64 [ %indvars.iv.next.i135, %Vec_IntPush.exit.i ], [ 0, %bb.t ] ; 2 uses
  %.val6.i = load ptr, ptr %i.d, align 8, !tbaa !22
  %i.em = getelementptr inbounds nuw [4 x i8], ptr %.val6.i, i64 %indvars.iv.i134
  %i.en = load i32, ptr %i.em, align 4, !tbaa !43
  %i.eo = load i32, ptr %i.ao, align 4, !tbaa !20 ; 7 uses
  %i.ep = load i32, ptr %i.am, align 8, !tbaa !21
  %i.eq = icmp eq i32 %i.eo, %i.ep
  br i1 %i.eq, label %bb.u, label %.Vec_IntPush.exit_crit_edge.i

.Vec_IntPush.exit_crit_edge.i:                    ; preds = %.lr.ph.i133
  %.pre.i = load ptr, ptr %i.bi, align 8, !tbaa !22
  br label %Vec_IntPush.exit.i

bb.u:                                             ; preds = %.lr.ph.i133
  %i.er = icmp slt i32 %i.eo, 16
  br i1 %i.er, label %bb.v, label %bb.y

bb.v:                                             ; preds = %bb.u
  %i.es = load ptr, ptr %i.bi, align 8, !tbaa !22 ; 2 uses
  %.not9.i.i.i = icmp eq ptr %i.es, null
  br i1 %.not9.i.i.i, label %bb.x, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.et = tail call dereferenceable_or_null(64) ptr @realloc(ptr noundef nonnull %i.es, i64 noundef 64) #32
  br label %Vec_IntGrow.exit11.sink.split.i.i

bb.x:                                             ; preds = %bb.v
  %i.eu = tail call noalias dereferenceable_or_null(64) ptr @malloc(i64 noundef 64) #30
  br label %Vec_IntGrow.exit11.sink.split.i.i

bb.y:                                             ; preds = %bb.u
  %i.ev = icmp samesign ult i32 %i.eo, 1073741823
  %i.ew = shl nuw nsw i32 %i.eo, 1
  %spec.select.i.i = select i1 %i.ev, i32 %i.ew, i32 2147483647 ; 4 uses
  %.not.i9.i.i = icmp samesign ult i32 %i.eo, %spec.select.i.i
  %.pre10.i = load ptr, ptr %i.bi, align 8, !tbaa !22 ; 3 uses
  br i1 %.not.i9.i.i, label %bb.z, label %Vec_IntPush.exit.i

bb.z:                                             ; preds = %bb.y
  %.not9.i10.i.i = icmp eq ptr %.pre10.i, null
  %i.ex = zext nneg i32 %spec.select.i.i to i64
  %i.ey = shl nuw nsw i64 %i.ex, 2                ; 2 uses
  br i1 %.not9.i10.i.i, label %bb.ab, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.ez = tail call ptr @realloc(ptr noundef nonnull %.pre10.i, i64 noundef %i.ey) #32
  br label %Vec_IntGrow.exit11.sink.split.i.i

bb.ab:                                            ; preds = %bb.z
  %i.fa = tail call noalias ptr @malloc(i64 noundef %i.ey) #30
  br label %Vec_IntGrow.exit11.sink.split.i.i

Vec_IntGrow.exit11.sink.split.i.i:                ; preds = %bb.ab, %bb.aa, %bb.x, %bb.w
  %i.fb = phi ptr [ %i.eu, %bb.x ], [ %i.et, %bb.w ], [ %i.ez, %bb.aa ], [ %i.fa, %bb.ab ] ; 2 uses
  %spec.select.sink.i.i = phi i32 [ 16, %bb.x ], [ 16, %bb.w ], [ %spec.select.i.i, %bb.aa ], [ %spec.select.i.i, %bb.ab ]
  store ptr %i.fb, ptr %i.bi, align 8, !tbaa !22
  store i32 %spec.select.sink.i.i, ptr %i.am, align 8, !tbaa !21
  br label %Vec_IntPush.exit.i

Vec_IntPush.exit.i:                               ; preds = %Vec_IntGrow.exit11.sink.split.i.i, %bb.y, %.Vec_IntPush.exit_crit_edge.i
  %i.fc = phi ptr [ %.pre.i, %.Vec_IntPush.exit_crit_edge.i ], [ %.pre10.i, %bb.y ], [ %i.fb, %Vec_IntGrow.exit11.sink.split.i.i ]
  %i.fd = add nsw i32 %i.eo, 1
  store i32 %i.fd, ptr %i.ao, align 4, !tbaa !20
  %i.fe = sext i32 %i.eo to i64
  %i.ff = getelementptr inbounds [4 x i8], ptr %i.fc, i64 %i.fe
  store i32 %i.en, ptr %i.ff, align 4, !tbaa !43
  %indvars.iv.next.i135 = add nuw nsw i64 %indvars.iv.i134, 1 ; 2 uses
  %.val.i136 = load i32, ptr %i.b, align 4, !tbaa !20
  %i.fg = sext i32 %.val.i136 to i64
  %i.fh = icmp slt i64 %indvars.iv.next.i135, %i.fg
  br i1 %i.fh, label %.lr.ph.i133, label %Vec_IntAppend.exit, !llvm.loop !4

Vec_IntAppend.exit:                               ; preds = %Vec_IntPush.exit.i, %bb.t
  %.val86 = load ptr, ptr %i.d, align 8, !tbaa !22
  %i.fi = load i32, ptr %.val86, align 4, !tbaa !43
  %i.fj = add nsw i32 %i.fi, %.0157
  %.pre = load i32, ptr %i.e, align 8, !tbaa !41
  br label %bb.ac

bb.ac:                                            ; preds = %Vec_IntAppend.exit, %bb.s
  %i.fk = phi i32 [ %.pre, %Vec_IntAppend.exit ], [ %i.dp, %bb.s ] ; 3 uses
  %.1 = phi i32 [ %i.fj, %Vec_IntAppend.exit ], [ %.0157, %bb.s ] ; 2 uses
  %indvars.iv.next165 = add nuw nsw i64 %indvars.iv164, 1 ; 2 uses
  %i.fl = sext i32 %i.fk to i64
  %i.fm = icmp slt i64 %indvars.iv.next165, %i.fl
  br i1 %i.fm, label %.lr.ph158, label %.critedge2, !llvm.loop !82

.critedge2:                                       ; preds = %.lr.ph158, %bb.ac, %.critedge
  %.0.lcssa = phi i32 [ 0, %.critedge ], [ %.1, %bb.ac ], [ %.0157, %.lr.ph158 ] ; 2 uses
  %.lcssa = phi i32 [ %i.dn, %.critedge ], [ %i.fk, %bb.ac ], [ %i.dp, %.lr.ph158 ]
  %.not74 = icmp eq i32 %4, 0
  br i1 %.not74, label %bb.ae, label %bb.ad

bb.ad:                                            ; preds = %.critedge2
  %i.fn = load ptr, ptr %i.g, align 8, !tbaa !48
  %i.fo = getelementptr i8, ptr %i.fn, i64 4
  %.val3.i137 = load i32, ptr %i.fo, align 4, !tbaa !20
  %i.fp = load ptr, ptr %i.j, align 8, !tbaa !47
  %i.fq = getelementptr i8, ptr %i.fp, i64 4
  %.val.i138 = load i32, ptr %i.fq, align 4, !tbaa !20
  %i.fr = add i32 %.val.i138, %.val3.i137
  %i.fs = xor i32 %i.fr, -1
  %i.ft = add i32 %.lcssa, %i.fs                  ; 2 uses
  %i.fu = sitofp i32 %i.ft to double
  %.val82 = load i32, ptr %i.ao, align 4, !tbaa !20
  %i.fv = insertelement <2 x i32> poison, i32 %.0.lcssa, i64 0
  %i.fw = insertelement <2 x i32> %i.fv, i32 %.val82, i64 1
  %i.fx = sitofp <2 x i32> %i.fw to <2 x double>
  %i.fy = insertelement <2 x double> poison, double %i.fu, i64 0
  %i.fz = shufflevector <2 x double> %i.fy, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ga = fdiv <2 x double> %i.fx, %i.fz          ; 2 uses
  %i.gb = extractelement <2 x double> %i.ga, i64 0
  %i.gc = extractelement <2 x double> %i.ga, i64 1
  %i.gd = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.10, i32 noundef %i.ft, i32 noundef %.0.lcssa, double noundef %i.gb, double noundef %i.gc) ; 0 uses
  br label %bb.ae

bb.ae:                                            ; preds = %bb.ad, %.critedge2
  %i.ge = load ptr, ptr %i.d, align 8, !tbaa !22  ; 2 uses
  %.not.i143 = icmp eq ptr %i.ge, null
  br i1 %.not.i143, label %Vec_IntFree.exit, label %bb.af

bb.af:                                            ; preds = %bb.ae
  tail call void @free(ptr noundef nonnull %i.ge) #31
  br label %Vec_IntFree.exit

Vec_IntFree.exit:                                 ; preds = %bb.ae, %bb.af
  tail call void @free(ptr noundef nonnull %i.a) #31
  %i.gf = load ptr, ptr %i.bi, align 8, !tbaa !22 ; 2 uses
  %.not.i144 = icmp eq ptr %i.gf, null
  br i1 %.not.i144, label %Vec_IntFree.exit145, label %bb.ag

bb.ag:                                            ; preds = %Vec_IntFree.exit
  tail call void @free(ptr noundef nonnull %i.gf) #31
  br label %Vec_IntFree.exit145

Vec_IntFree.exit145:                              ; preds = %Vec_IntFree.exit, %bb.ag
  tail call void @free(ptr noundef nonnull %i.am) #31
  %.not75 = icmp eq ptr %1, null
  br i1 %.not75, label %bb.ai, label %bb.ah

bb.ah:                                            ; preds = %Vec_IntFree.exit145
  store ptr %i.p, ptr %1, align 8, !tbaa !51
  br label %bb.ak

bb.ai:                                            ; preds = %Vec_IntFree.exit145
  %i.gg = load ptr, ptr %i.w, align 8, !tbaa !22  ; 2 uses
  %.not.i146 = icmp eq ptr %i.gg, null
  br i1 %.not.i146, label %Vec_IntFree.exit147, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  tail call void @free(ptr noundef nonnull %i.gg) #31
  br label %Vec_IntFree.exit147

Vec_IntFree.exit147:                              ; preds = %bb.ai, %bb.aj
  tail call void @free(ptr noundef nonnull %i.p) #31
  br label %bb.ak

bb.ak:                                            ; preds = %Vec_IntFree.exit147, %bb.ah
  store ptr %i.x, ptr %2, align 8, !tbaa !51
  store ptr %i.ae, ptr %3, align 8, !tbaa !51
  ret void
}

declare void @Gia_ManCleanValue(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind memory(readwrite, target_mem: none) uwtable
define noalias noundef ptr @Dtc_ManFindCommonCuts(ptr nofree readnone captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readonly captures(none) %2) local_unnamed_addr #11 {
bb.a:
  %i.a = getelementptr i8, ptr %1, i64 8
  %.val40 = load ptr, ptr %i.a, align 8, !tbaa !22 ; 2 uses
  %i.b = getelementptr i8, ptr %2, i64 8
  %.val = load ptr, ptr %i.b, align 8, !tbaa !22  ; 2 uses
  %i.c = getelementptr i8, ptr %1, i64 4
  %.val43 = load i32, ptr %i.c, align 4, !tbaa !20 ; 2 uses
  %i.d = sext i32 %.val43 to i64
  %.idx = shl nsw i64 %i.d, 2
  %i.e = getelementptr inbounds i8, ptr %.val40, i64 %.idx
  %i.f = getelementptr i8, ptr %2, i64 4
  %.val41 = load i32, ptr %i.f, align 4, !tbaa !20 ; 2 uses
  %i.g = sext i32 %.val41 to i64
  %.idx69 = shl nsw i64 %i.g, 2
  %i.h = getelementptr inbounds i8, ptr %.val, i64 %.idx69
  %i.i = tail call noalias dereferenceable_or_null(16) ptr @malloc(i64 noundef 16) #30 ; 10 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 4 ; 7 uses
  store i32 0, ptr %i.j, align 4, !tbaa !20
  store i32 1000, ptr %i.i, align 8, !tbaa !21
  %i.k = tail call noalias dereferenceable_or_null(4000) ptr @malloc(i64 noundef 4000) #30 ; 3 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.i, i64 8 ; 6 uses
  store ptr %i.k, ptr %i.l, align 8, !tbaa !22
  %i.m = icmp sgt i32 %.val43, 0
  %i.n = icmp sgt i32 %.val41, 0
  %i.o = select i1 %i.m, i1 %i.n, i1 false
  br i1 %i.o, label %.preheader54, label %._crit_edge

.preheader54:                                     ; preds = %bb.a, %bb.z
  %i.p = phi ptr [ %i.ct, %bb.z ], [ %i.k, %bb.a ] ; 4 uses
  %.promoted61 = phi ptr [ %.promoted6182, %bb.z ], [ %i.k, %bb.a ] ; 8 uses
  %.promoted58 = phi i32 [ %.promoted5879, %bb.z ], [ 1000, %bb.a ] ; 5 uses
  %.promoted = phi i32 [ %.promoted77, %bb.z ], [ 0, %bb.a ] ; 15 uses
  %.03468 = phi ptr [ %.135, %bb.z ], [ %.val, %bb.a ] ; 8 uses
  %.03667 = phi ptr [ %.137, %bb.z ], [ %.val40, %bb.a ] ; 8 uses
  %i.q = load i32, ptr %.03667, align 4, !tbaa !43 ; 2 uses
  %i.r = load i32, ptr %.03468, align 4, !tbaa !43
  %.not = icmp eq i32 %i.q, %i.r
  br i1 %.not, label %bb.b, label %.thread

bb.b:                                             ; preds = %.preheader54
  %i.s = getelementptr inbounds nuw i8, ptr %.03667, i64 4 ; 2 uses
  %i.t = load i32, ptr %i.s, align 4, !tbaa !43
  %i.u = getelementptr inbounds nuw i8, ptr %.03468, i64 4
  %i.v = load i32, ptr %i.u, align 4, !tbaa !43
  %.not.1 = icmp eq i32 %i.t, %i.v
  br i1 %.not.1, label %bb.c, label %.thread

bb.c:                                             ; preds = %bb.b
  %i.w = getelementptr inbounds nuw i8, ptr %.03667, i64 8 ; 2 uses
  %i.x = load i32, ptr %i.w, align 4, !tbaa !43
  %i.y = getelementptr inbounds nuw i8, ptr %.03468, i64 8
  %i.z = load i32, ptr %i.y, align 4, !tbaa !43
  %.not.2 = icmp eq i32 %i.x, %i.z
  br i1 %.not.2, label %.preheader, label %.thread

.preheader:                                       ; preds = %bb.c
  %i.aa = sext i32 %.promoted to i64              ; 4 uses
  %i.ab = icmp eq i32 %.promoted, %.promoted58
  br i1 %i.ab, label %bb.d, label %Vec_IntPush.exit

bb.d:                                             ; preds = %.preheader
  %i.ac = icmp slt i32 %.promoted, 16
  br i1 %i.ac, label %bb.e, label %bb.h

bb.e:                                             ; preds = %bb.d
  %.not9.i.i = icmp eq ptr %.promoted61, null
  br i1 %.not9.i.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ad = tail call dereferenceable_or_null(64) ptr @realloc(ptr noundef nonnull %.promoted61, i64 noundef 64) #32
  br label %Vec_IntGrow.exit11.sink.split.i

bb.g:                                             ; preds = %bb.e
  %i.ae = tail call noalias dereferenceable_or_null(64) ptr @malloc(i64 noundef 64) #30
  br label %Vec_IntGrow.exit11.sink.split.i

bb.h:                                             ; preds = %bb.d
  %i.af = icmp samesign ult i32 %.promoted, 1073741823
  %i.ag = shl nuw i32 %.promoted, 1
  %spec.select.i = select i1 %i.af, i32 %i.ag, i32 2147483647 ; 4 uses
  %.not.i9.i = icmp ult i32 %.promoted, %spec.select.i
  br i1 %.not.i9.i, label %bb.i, label %Vec_IntPush.exit

bb.i:                                             ; preds = %bb.h
  %.not9.i10.i = icmp eq ptr %.promoted61, null
  %i.ah = zext nneg i32 %spec.select.i to i64
  %i.ai = shl nuw nsw i64 %i.ah, 2                ; 2 uses
  br i1 %.not9.i10.i, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.aj = tail call ptr @realloc(ptr noundef nonnull %.promoted61, i64 noundef %i.ai) #32
  br label %Vec_IntGrow.exit11.sink.split.i

bb.k:                                             ; preds = %bb.i
  %i.ak = tail call noalias ptr @malloc(i64 noundef %i.ai) #30
  br label %Vec_IntGrow.exit11.sink.split.i

Vec_IntGrow.exit11.sink.split.i:                  ; preds = %bb.j, %bb.k, %bb.f, %bb.g
  %storemerge53 = phi ptr [ %i.ae, %bb.g ], [ %i.ad, %bb.f ], [ %i.aj, %bb.j ], [ %i.ak, %bb.k ] ; 3 uses
  %spec.select.sink.i = phi i32 [ 16, %bb.g ], [ 16, %bb.f ], [ %spec.select.i, %bb.j ], [ %spec.select.i, %bb.k ] ; 2 uses
  store ptr %storemerge53, ptr %i.l, align 8, !tbaa !22
  store i32 %spec.select.sink.i, ptr %i.i, align 8, !tbaa !21
  br label %Vec_IntPush.exit

Vec_IntPush.exit:                                 ; preds = %.preheader, %bb.h, %Vec_IntGrow.exit11.sink.split.i
  %i.al = phi ptr [ %i.p, %.preheader ], [ %i.p, %bb.h ], [ %storemerge53, %Vec_IntGrow.exit11.sink.split.i ] ; 2 uses
  %storemerge5363 = phi ptr [ %.promoted61, %.preheader ], [ %.promoted61, %bb.h ], [ %storemerge53, %Vec_IntGrow.exit11.sink.split.i ] ; 4 uses
  %spec.select.sink.i59 = phi i32 [ %.promoted58, %.preheader ], [ %.promoted58, %bb.h ], [ %spec.select.sink.i, %Vec_IntGrow.exit11.sink.split.i ] ; 3 uses
  %indvars.iv.next73 = add nsw i64 %i.aa, 1       ; 4 uses
  %i.am = trunc nsw i64 %indvars.iv.next73 to i32 ; 2 uses
  store i32 %i.am, ptr %i.j, align 4, !tbaa !20
  %i.an = getelementptr inbounds [4 x i8], ptr %storemerge5363, i64 %i.aa
  store i32 %i.q, ptr %i.an, align 4, !tbaa !43
  %i.ao = load i32, ptr %i.s, align 4, !tbaa !43
  %i.ap = icmp eq i32 %spec.select.sink.i59, %i.am
  br i1 %i.ap, label %bb.l, label %Vec_IntPush.exit.1

bb.l:                                             ; preds = %Vec_IntPush.exit
  %i.aq = icmp slt i32 %.promoted, 15
  br i1 %i.aq, label %Vec_IntGrow.exit11.sink.split.i.1, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.ar = icmp samesign ult i32 %.promoted, 1073741822
  %indvars.iv.next73.tr = trunc nuw nsw i64 %indvars.iv.next73 to i32
  %i.as = shl nsw i32 %indvars.iv.next73.tr, 1
  %spec.select.i.1 = select i1 %i.ar, i32 %i.as, i32 2147483647 ; 3 uses
  %i.at = sext i32 %spec.select.i.1 to i64
  %.not.i9.i.1 = icmp samesign ult i64 %indvars.iv.next73, %i.at
  br i1 %.not.i9.i.1, label %bb.n, label %Vec_IntPush.exit.1

bb.n:                                             ; preds = %bb.m
  %i.au = zext nneg i32 %spec.select.i.1 to i64
  %i.av = shl nuw nsw i64 %i.au, 2
  br label %Vec_IntGrow.exit11.sink.split.i.1

Vec_IntGrow.exit11.sink.split.i.1:                ; preds = %bb.l, %bb.n
  %.sink = phi i64 [ %i.av, %bb.n ], [ 64, %bb.l ]
  %spec.select.sink.i.1 = phi i32 [ %spec.select.i.1, %bb.n ], [ 16, %bb.l ] ; 2 uses
  %i.aw = tail call ptr @realloc(ptr noundef nonnull %storemerge5363, i64 noundef %.sink) #32 ; 3 uses
  store ptr %i.aw, ptr %i.l, align 8, !tbaa !22
  store i32 %spec.select.sink.i.1, ptr %i.i, align 8, !tbaa !21
  br label %Vec_IntPush.exit.1

Vec_IntPush.exit.1:                               ; preds = %Vec_IntGrow.exit11.sink.split.i.1, %bb.m, %Vec_IntPush.exit
  %i.ax = phi ptr [ %i.al, %Vec_IntPush.exit ], [ %i.al, %bb.m ], [ %i.aw, %Vec_IntGrow.exit11.sink.split.i.1 ] ; 2 uses
  %storemerge5363.1 = phi ptr [ %storemerge5363, %Vec_IntPush.exit ], [ %storemerge5363, %bb.m ], [ %i.aw, %Vec_IntGrow.exit11.sink.split.i.1 ] ; 4 uses
  %spec.select.sink.i59.1 = phi i32 [ %spec.select.sink.i59, %Vec_IntPush.exit ], [ %spec.select.sink.i59, %bb.m ], [ %spec.select.sink.i.1, %Vec_IntGrow.exit11.sink.split.i.1 ] ; 3 uses
  %indvars.iv.next73.1 = add nsw i64 %i.aa, 2     ; 4 uses
  %i.ay = trunc nsw i64 %indvars.iv.next73.1 to i32 ; 2 uses
  store i32 %i.ay, ptr %i.j, align 4, !tbaa !20
  %i.az = getelementptr inbounds [4 x i8], ptr %storemerge5363.1, i64 %indvars.iv.next73
  store i32 %i.ao, ptr %i.az, align 4, !tbaa !43
  %i.ba = load i32, ptr %i.w, align 4, !tbaa !43
  %i.bb = icmp eq i32 %spec.select.sink.i59.1, %i.ay
  br i1 %i.bb, label %bb.o, label %Vec_IntPush.exit.2

bb.o:                                             ; preds = %Vec_IntPush.exit.1
  %i.bc = icmp slt i32 %.promoted, 14
  br i1 %i.bc, label %Vec_IntGrow.exit11.sink.split.i.2, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.bd = icmp samesign ult i32 %.promoted, 1073741821
  %indvars.iv.next73.1.tr = trunc nuw nsw i64 %indvars.iv.next73.1 to i32
  %i.be = shl nsw i32 %indvars.iv.next73.1.tr, 1
  %spec.select.i.2 = select i1 %i.bd, i32 %i.be, i32 2147483647 ; 3 uses
  %i.bf = sext i32 %spec.select.i.2 to i64
  %.not.i9.i.2 = icmp samesign ult i64 %indvars.iv.next73.1, %i.bf
  br i1 %.not.i9.i.2, label %bb.q, label %Vec_IntPush.exit.2

bb.q:                                             ; preds = %bb.p
  %i.bg = zext nneg i32 %spec.select.i.2 to i64
  %i.bh = shl nuw nsw i64 %i.bg, 2
  br label %Vec_IntGrow.exit11.sink.split.i.2

Vec_IntGrow.exit11.sink.split.i.2:                ; preds = %bb.o, %bb.q
  %.sink92 = phi i64 [ %i.bh, %bb.q ], [ 64, %bb.o ]
  %spec.select.sink.i.2 = phi i32 [ %spec.select.i.2, %bb.q ], [ 16, %bb.o ] ; 2 uses
  %i.bi = tail call ptr @realloc(ptr noundef nonnull %storemerge5363.1, i64 noundef %.sink92) #32 ; 3 uses
  store ptr %i.bi, ptr %i.l, align 8, !tbaa !22
  store i32 %spec.select.sink.i.2, ptr %i.i, align 8, !tbaa !21
  br label %Vec_IntPush.exit.2

Vec_IntPush.exit.2:                               ; preds = %Vec_IntGrow.exit11.sink.split.i.2, %bb.p, %Vec_IntPush.exit.1
  %i.bj = phi ptr [ %i.ax, %Vec_IntPush.exit.1 ], [ %i.ax, %bb.p ], [ %i.bi, %Vec_IntGrow.exit11.sink.split.i.2 ] ; 2 uses
  %storemerge5363.2 = phi ptr [ %storemerge5363.1, %Vec_IntPush.exit.1 ], [ %storemerge5363.1, %bb.p ], [ %i.bi, %Vec_IntGrow.exit11.sink.split.i.2 ] ; 4 uses
  %spec.select.sink.i59.2 = phi i32 [ %spec.select.sink.i59.1, %Vec_IntPush.exit.1 ], [ %spec.select.sink.i59.1, %bb.p ], [ %spec.select.sink.i.2, %Vec_IntGrow.exit11.sink.split.i.2 ]
  %indvars.iv.next73.2 = add nsw i64 %i.aa, 3     ; 4 uses
  %i.bk = trunc nsw i64 %indvars.iv.next73.2 to i32 ; 2 uses
  store i32 %i.bk, ptr %i.j, align 4, !tbaa !20
  %i.bl = getelementptr inbounds [4 x i8], ptr %storemerge5363.2, i64 %indvars.iv.next73.1
  store i32 %i.ba, ptr %i.bl, align 4, !tbaa !43
  %i.bm = getelementptr inbounds nuw i8, ptr %.03667, i64 12
  %i.bn = load i32, ptr %i.bm, align 4, !tbaa !43
  %i.bo = icmp eq i32 %spec.select.sink.i59.2, %i.bk
  br i1 %i.bo, label %bb.r, label %Vec_IntPush.exit.3

bb.r:                                             ; preds = %Vec_IntPush.exit.2
  %i.bp = icmp slt i32 %.promoted, 13
  br i1 %i.bp, label %Vec_IntGrow.exit11.sink.split.i.3, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.bq = icmp samesign ult i32 %.promoted, 1073741820
  %indvars.iv.next73.2.tr = trunc nuw nsw i64 %indvars.iv.next73.2 to i32
  %i.br = shl nsw i32 %indvars.iv.next73.2.tr, 1
  %spec.select.i.3 = select i1 %i.bq, i32 %i.br, i32 2147483647 ; 3 uses
  %i.bs = sext i32 %spec.select.i.3 to i64
  %.not.i9.i.3 = icmp samesign ult i64 %indvars.iv.next73.2, %i.bs
  br i1 %.not.i9.i.3, label %bb.t, label %Vec_IntPush.exit.3

bb.t:                                             ; preds = %bb.s
  %i.bt = zext nneg i32 %spec.select.i.3 to i64
  %i.bu = shl nuw nsw i64 %i.bt, 2
  br label %Vec_IntGrow.exit11.sink.split.i.3

Vec_IntGrow.exit11.sink.split.i.3:                ; preds = %bb.r, %bb.t
  %.sink93 = phi i64 [ %i.bu, %bb.t ], [ 64, %bb.r ]
  %spec.select.sink.i.3 = phi i32 [ %spec.select.i.3, %bb.t ], [ 16, %bb.r ]
  %i.bv = tail call ptr @realloc(ptr noundef nonnull %storemerge5363.2, i64 noundef %.sink93) #32 ; 3 uses
  store ptr %i.bv, ptr %i.l, align 8, !tbaa !22
  store i32 %spec.select.sink.i.3, ptr %i.i, align 8, !tbaa !21
  br label %Vec_IntPush.exit.3

Vec_IntPush.exit.3:                               ; preds = %Vec_IntGrow.exit11.sink.split.i.3, %bb.s, %Vec_IntPush.exit.2
  %i.bw = phi ptr [ %i.bj, %Vec_IntPush.exit.2 ], [ %i.bj, %bb.s ], [ %i.bv, %Vec_IntGrow.exit11.sink.split.i.3 ] ; 2 uses
  %i.bx = phi ptr [ %storemerge5363.2, %Vec_IntPush.exit.2 ], [ %storemerge5363.2, %bb.s ], [ %i.bv, %Vec_IntGrow.exit11.sink.split.i.3 ] ; 2 uses
  %indvars.iv.next73.3 = add i32 %.promoted, 4
  store i32 %indvars.iv.next73.3, ptr %i.j, align 4, !tbaa !20
  %i.by = getelementptr inbounds [4 x i8], ptr %i.bx, i64 %indvars.iv.next73.2
  store i32 %i.bn, ptr %i.by, align 4, !tbaa !43
  %i.bz = getelementptr inbounds nuw i8, ptr %.03468, i64 12
  %i.ca = load i32, ptr %i.bz, align 4, !tbaa !43
  %i.cb = load i32, ptr %i.j, align 4, !tbaa !20  ; 8 uses
  %i.cc = load i32, ptr %i.i, align 8, !tbaa !21  ; 2 uses
  %i.cd = icmp eq i32 %i.cb, %i.cc
  br i1 %i.cd, label %bb.u, label %Vec_IntPush.exit52

bb.u:                                             ; preds = %Vec_IntPush.exit.3
  %i.ce = icmp slt i32 %i.cb, 16
  br i1 %i.ce, label %Vec_IntGrow.exit11.sink.split.i48, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.cf = icmp samesign ult i32 %i.cb, 1073741823
  %i.cg = shl nuw nsw i32 %i.cb, 1
  %spec.select.i45 = select i1 %i.cf, i32 %i.cg, i32 2147483647 ; 3 uses
  %.not.i9.i46 = icmp samesign ult i32 %i.cb, %spec.select.i45
  br i1 %.not.i9.i46, label %bb.w, label %Vec_IntPush.exit52

bb.w:                                             ; preds = %bb.v
  %i.ch = zext nneg i32 %spec.select.i45 to i64
  %i.ci = shl nuw nsw i64 %i.ch, 2
  br label %Vec_IntGrow.exit11.sink.split.i48

Vec_IntGrow.exit11.sink.split.i48:                ; preds = %bb.u, %bb.w
  %.sink94 = phi i64 [ %i.ci, %bb.w ], [ 64, %bb.u ]
  %spec.select.sink.i49 = phi i32 [ %spec.select.i45, %bb.w ], [ 16, %bb.u ] ; 2 uses
  %i.cj = tail call ptr @realloc(ptr noundef nonnull %i.bx, i64 noundef %.sink94) #32 ; 2 uses
  store ptr %i.cj, ptr %i.l, align 8, !tbaa !22
  store i32 %spec.select.sink.i49, ptr %i.i, align 8, !tbaa !21
  br label %Vec_IntPush.exit52

Vec_IntPush.exit52:                               ; preds = %Vec_IntPush.exit.3, %bb.v, %Vec_IntGrow.exit11.sink.split.i48
  %i.ck = phi ptr [ %i.bw, %Vec_IntPush.exit.3 ], [ %i.bw, %bb.v ], [ %i.cj, %Vec_IntGrow.exit11.sink.split.i48 ] ; 3 uses
  %.promoted5881 = phi i32 [ %i.cc, %Vec_IntPush.exit.3 ], [ %i.cb, %bb.v ], [ %spec.select.sink.i49, %Vec_IntGrow.exit11.sink.split.i48 ]
  %i.cl = add nsw i32 %i.cb, 1                    ; 2 uses
  store i32 %i.cl, ptr %i.j, align 4, !tbaa !20
  %i.cm = sext i32 %i.cb to i64
  %i.cn = getelementptr inbounds [4 x i8], ptr %i.ck, i64 %i.cm
  store i32 %i.ca, ptr %i.cn, align 4, !tbaa !43
  %i.co = getelementptr inbounds nuw i8, ptr %.03667, i64 16
  %i.cp = getelementptr inbounds nuw i8, ptr %.03468, i64 16
  br label %bb.z

.thread:                                          ; preds = %.preheader54, %bb.b, %bb.c
  %.057.lcssa.wide = phi i64 [ 0, %.preheader54 ], [ 1, %bb.b ], [ 2, %bb.c ] ; 2 uses
  %3 = getelementptr inbounds nuw [4 x i8], ptr %.03667, i64 %.057.lcssa.wide
  %4 = load i32, ptr %3, align 4, !tbaa !43       ; 2 uses
  %5 = getelementptr inbounds nuw [4 x i8], ptr %.03468, i64 %.057.lcssa.wide
  %6 = load i32, ptr %5, align 4, !tbaa !43       ; 2 uses
  %i.cq = icmp slt i32 %4, %6
  br i1 %i.cq, label %bb.x, label %bb.y

bb.x:                                             ; preds = %.thread
  %i.cr = getelementptr inbounds nuw i8, ptr %.03667, i64 16
  br label %bb.z

bb.y:                                             ; preds = %.thread
  %i.cs = icmp sgt i32 %4, %6
  %spec.select.idx = select i1 %i.cs, i64 16, i64 0
  %spec.select = getelementptr inbounds nuw i8, ptr %.03468, i64 %spec.select.idx
  br label %bb.z

bb.z:                                             ; preds = %bb.y, %bb.x, %Vec_IntPush.exit52
  %i.ct = phi ptr [ %i.ck, %Vec_IntPush.exit52 ], [ %i.p, %bb.x ], [ %i.p, %bb.y ]
  %.promoted6182 = phi ptr [ %i.ck, %Vec_IntPush.exit52 ], [ %.promoted61, %bb.x ], [ %.promoted61, %bb.y ]
  %.promoted5879 = phi i32 [ %.promoted5881, %Vec_IntPush.exit52 ], [ %.promoted58, %bb.x ], [ %.promoted58, %bb.y ]
  %.promoted77 = phi i32 [ %i.cl, %Vec_IntPush.exit52 ], [ %.promoted, %bb.x ], [ %.promoted, %bb.y ]
  %.137 = phi ptr [ %i.co, %Vec_IntPush.exit52 ], [ %i.cr, %bb.x ], [ %.03667, %bb.y ] ; 2 uses
  %.135 = phi ptr [ %i.cp, %Vec_IntPush.exit52 ], [ %.03468, %bb.x ], [ %spec.select, %bb.y ] ; 2 uses
  %i.cu = icmp ult ptr %.137, %i.e
  %i.cv = icmp ult ptr %.135, %i.h
  %i.cw = select i1 %i.cu, i1 %i.cv, i1 false
  br i1 %i.cw, label %.preheader54, label %._crit_edge, !llvm.loop !83

._crit_edge:                                      ; preds = %bb.z, %bb.a
  ret ptr %i.i
}

; Function Attrs: nofree nounwind uwtable
define void @Dtc_ManPrintFadds(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #12 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 4          ; 2 uses
  %.val19 = load i32, ptr %i.a, align 4, !tbaa !20
  %i.b = icmp sgt i32 %.val19, 4
  br i1 %i.b, label %.lr.ph, label %.loopexit

.lr.ph:                                           ; preds = %bb.a
  %i.c = getelementptr i8, ptr %0, i64 8          ; 5 uses
  br label %bb.c

bb.b:                                             ; preds = %bb.c
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %.val = load i32, ptr %i.a, align 4, !tbaa !20
  %i.d = sdiv i32 %.val, 5
  %i.e = sext i32 %i.d to i64
  %i.f = icmp slt i64 %indvars.iv.next, %i.e
  br i1 %i.f, label %bb.c, label %.loopexit, !llvm.loop !84

bb.c:                                             ; preds = %.lr.ph, %bb.b
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.b ] ; 4 uses
  %i.g = trunc nuw nsw i64 %indvars.iv to i32
  %i.h = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.11, i32 noundef %i.g) ; 0 uses
  %i.i = mul nuw nsw i64 %indvars.iv, 5           ; 5 uses
  %.val18 = load ptr, ptr %i.c, align 8, !tbaa !22
  %i.j = getelementptr inbounds nuw [4 x i8], ptr %.val18, i64 %i.i
  %i.k = load i32, ptr %i.j, align 4, !tbaa !43
  %i.l = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.12, i32 noundef %i.k) ; 0 uses
  %.val17 = load ptr, ptr %i.c, align 8, !tbaa !22
  %i.m = getelementptr inbounds nuw [4 x i8], ptr %.val17, i64 %i.i
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 4
  %i.o = load i32, ptr %i.n, align 4, !tbaa !43
  %i.p = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.12, i32 noundef %i.o) ; 0 uses
  %.val16 = load ptr, ptr %i.c, align 8, !tbaa !22
  %i.q = getelementptr inbounds nuw [4 x i8], ptr %.val16, i64 %i.i
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  %i.s = load i32, ptr %i.r, align 4, !tbaa !43
  %i.t = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.12, i32 noundef %i.s) ; 0 uses
  %i.u = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.13) ; 0 uses
  %.val15 = load ptr, ptr %i.c, align 8, !tbaa !22
  %i.v = getelementptr inbounds nuw [4 x i8], ptr %.val15, i64 %i.i
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 12
  %i.x = load i32, ptr %i.w, align 4, !tbaa !43
  %i.y = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.12, i32 noundef %i.x) ; 0 uses
  %.val14 = load ptr, ptr %i.c, align 8, !tbaa !22
  %i.z = getelementptr inbounds nuw [4 x i8], ptr %.val14, i64 %i.i
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 16
  %i.ab = load i32, ptr %i.aa, align 4, !tbaa !43
  %i.ac = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.12, i32 noundef %i.ab) ; 0 uses
  %putchar = tail call i32 @putchar(i32 10)       ; 0 uses
  %i.ad = icmp eq i64 %indvars.iv, 100
  br i1 %i.ad, label %bb.d, label %bb.b

bb.d:                                             ; preds = %bb.c
  %puts = tail call i32 @puts(ptr nonnull dereferenceable(1) @str) ; 0 uses
  br label %.loopexit

.loopexit:                                        ; preds = %bb.b, %bb.a, %bb.d
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define range(i32 -1, 2) i32 @Dtc_ManCompare(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1) #13 {
bb.a:
  %i.a = load i32, ptr %0, align 4, !tbaa !43     ; 2 uses
  %i.b = load i32, ptr %1, align 4, !tbaa !43     ; 2 uses
  %i.c = icmp slt i32 %i.a, %i.b
  br i1 %i.c, label %bb.g, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = icmp sgt i32 %i.a, %i.b
  br i1 %i.d, label %bb.g, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.f = load i32, ptr %i.e, align 4, !tbaa !43   ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.h = load i32, ptr %i.g, align 4, !tbaa !43   ; 2 uses
  %i.i = icmp slt i32 %i.f, %i.h
  br i1 %i.i, label %bb.g, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.j = icmp sgt i32 %i.f, %i.h
  br i1 %i.j, label %bb.g, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.l = load i32, ptr %i.k, align 4, !tbaa !43   ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.n = load i32, ptr %i.m, align 4, !tbaa !43   ; 2 uses
  %i.o = icmp slt i32 %i.l, %i.n
  br i1 %i.o, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.p = icmp sgt i32 %i.l, %i.n
  %. = zext i1 %i.p to i32
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e, %bb.d, %bb.c, %bb.b, %bb.a
  %.0 = phi i32 [ -1, %bb.e ], [ -1, %bb.a ], [ 1, %bb.b ], [ -1, %bb.c ], [ 1, %bb.d ], [ %., %bb.f ]
  ret i32 %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define range(i32 -1, 2) i32 @Dtc_ManCompare2(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1) #13 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load i32, ptr %i.a, align 4, !tbaa !43
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.d = load i32, ptr %i.c, align 4, !tbaa !43
  %.0 = tail call i32 @llvm.scmp.i32.i32(i32 %i.b, i32 %i.d)
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define noalias noundef ptr @Gia_ManDetectFullAdders(ptr noundef %0, i32 noundef %1, ptr nofree noundef writeonly captures(address_is_null) %2) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 4 uses
  %i.b = alloca ptr, align 8                      ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #31
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #31
  call void @Dtc_ManComputeCuts(ptr noundef %0, ptr noundef %2, ptr noundef nonnull %i.a, ptr noundef nonnull %i.b, i32 noundef %1)
  %i.c = load ptr, ptr %i.a, align 8, !tbaa !51   ; 4 uses
  %i.d = getelementptr i8, ptr %i.c, i64 8        ; 2 uses
  %.val17 = load ptr, ptr %i.d, align 8, !tbaa !22
  %i.e = getelementptr i8, ptr %i.c, i64 4        ; 2 uses
  %.val14 = load i32, ptr %i.e, align 4, !tbaa !20
  %i.f = sdiv i32 %.val14, 4
  %i.g = sext i32 %i.f to i64
  tail call void @qsort(ptr noundef %.val17, i64 noundef %i.g, i64 noundef 16, ptr noundef nonnull @Dtc_ManCompare) #31
  %i.h = load ptr, ptr %i.b, align 8, !tbaa !51   ; 4 uses
  %i.i = getelementptr i8, ptr %i.h, i64 8        ; 2 uses
  %.val16 = load ptr, ptr %i.i, align 8, !tbaa !22
  %i.j = getelementptr i8, ptr %i.h, i64 4        ; 2 uses
  %.val13 = load i32, ptr %i.j, align 4, !tbaa !20
  %i.k = sdiv i32 %.val13, 4
  %i.l = sext i32 %i.k to i64
  tail call void @qsort(ptr noundef %.val16, i64 noundef %i.l, i64 noundef 16, ptr noundef nonnull @Dtc_ManCompare) #31
  %i.m = tail call ptr @Dtc_ManFindCommonCuts(ptr poison, ptr noundef %i.c, ptr noundef %i.h) ; 4 uses
  %i.n = getelementptr i8, ptr %i.m, i64 8
  %.val15 = load ptr, ptr %i.n, align 8, !tbaa !22
  %i.o = getelementptr i8, ptr %i.m, i64 4
  %.val12 = load i32, ptr %i.o, align 4, !tbaa !20
  %i.p = sdiv i32 %.val12, 5                      ; 2 uses
  %i.q = sext i32 %i.p to i64
  tail call void @qsort(ptr noundef %.val15, i64 noundef %i.q, i64 noundef 20, ptr noundef nonnull @Dtc_ManCompare2) #31
  %.not = icmp eq i32 %1, 0
  br i1 %.not, label %.critedge, label %bb.b

bb.b:                                             ; preds = %bb.a
  %.val11 = load i32, ptr %i.e, align 4, !tbaa !20
  %i.r = sdiv i32 %.val11, 4
  %.val10 = load i32, ptr %i.j, align 4, !tbaa !20
  %i.s = sdiv i32 %.val10, 4
  %i.t = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.15, i32 noundef %i.r, i32 noundef %i.s, i32 noundef %i.p) ; 0 uses
  tail call void @Dtc_ManPrintFadds(ptr noundef nonnull %i.m)
  br label %.critedge

.critedge:                                        ; preds = %bb.a, %bb.b
  %i.u = load ptr, ptr %i.d, align 8, !tbaa !22   ; 2 uses
  %.not.i = icmp eq ptr %i.u, null
  br i1 %.not.i, label %Vec_IntFree.exit, label %bb.c

bb.c:                                             ; preds = %.critedge
  tail call void @free(ptr noundef nonnull %i.u) #31
  br label %Vec_IntFree.exit

Vec_IntFree.exit:                                 ; preds = %.critedge, %bb.c
  tail call void @free(ptr noundef nonnull %i.c) #31
  %i.v = load ptr, ptr %i.i, align 8, !tbaa !22   ; 2 uses
  %.not.i18 = icmp eq ptr %i.v, null
  br i1 %.not.i18, label %Vec_IntFree.exit19, label %bb.d

bb.d:                                             ; preds = %Vec_IntFree.exit
  tail call void @free(ptr noundef nonnull %i.v) #31
  br label %Vec_IntFree.exit19

Vec_IntFree.exit19:                               ; preds = %Vec_IntFree.exit, %bb.d
  tail call void @free(ptr noundef nonnull %i.h) #31
end_hunk_0
