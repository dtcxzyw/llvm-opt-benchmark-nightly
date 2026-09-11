Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/abc/original/bacBlast?download=true
inline.NumInlined: 467
inline.NumDeleted: 125
loop-unroll.NumRuntimeUnrolled: 5
loop-unroll.NumUnrolled: 5
begin_hunk_0_@Bac_ManRemapBarbufs:bb.a
  br i1 %i.cl, label %.lr.ph.i79, label %.critedge.preheader

.lr.ph.i79:                                       ; preds = %Vec_IntAppend.exit77
  %i.cm = getelementptr i8, ptr %1, i64 120
  %i.cn = getelementptr inbounds nuw i8, ptr %0, i64 116 ; 3 uses
  %i.co = getelementptr inbounds nuw i8, ptr %0, i64 120 ; 4 uses
  br label %bb.ac

bb.ac:                                            ; preds = %Vec_IntPush.exit.i84, %.lr.ph.i79
  %indvars.iv.i80 = phi i64 [ 0, %.lr.ph.i79 ], [ %indvars.iv.next.i85, %Vec_IntPush.exit.i84 ] ; 2 uses
  %.val6.i81 = load ptr, ptr %i.cm, align 8, !tbaa !24
  %i.cp = getelementptr inbounds nuw [4 x i8], ptr %.val6.i81, i64 %indvars.iv.i80
  %i.cq = load i32, ptr %i.cp, align 4, !tbaa !25
  %i.cr = load i32, ptr %i.cn, align 4, !tbaa !23 ; 7 uses
  %i.cs = load i32, ptr %i.cj, align 8, !tbaa !43
  %i.ct = icmp eq i32 %i.cr, %i.cs
  br i1 %i.ct, label %bb.ad, label %.Vec_IntPush.exit_crit_edge.i82

.Vec_IntPush.exit_crit_edge.i82:                  ; preds = %bb.ac
  %.pre.i83 = load ptr, ptr %i.co, align 8, !tbaa !24
  br label %Vec_IntPush.exit.i84

bb.ad:                                            ; preds = %bb.ac
  %i.cu = icmp slt i32 %i.cr, 16
  br i1 %i.cu, label %bb.ae, label %bb.ah

bb.ae:                                            ; preds = %bb.ad
  %i.cv = load ptr, ptr %i.co, align 8, !tbaa !24 ; 2 uses
  %.not9.i.i.i94 = icmp eq ptr %i.cv, null
  br i1 %.not9.i.i.i94, label %bb.ag, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.cw = tail call dereferenceable_or_null(64) ptr @realloc(ptr noundef nonnull %i.cv, i64 noundef 64) #23
  br label %Vec_IntGrow.exit11.sink.split.i.i91

bb.ag:                                            ; preds = %bb.ae
  %i.cx = tail call noalias dereferenceable_or_null(64) ptr @malloc(i64 noundef 64) #24
  br label %Vec_IntGrow.exit11.sink.split.i.i91

bb.ah:                                            ; preds = %bb.ad
  %i.cy = icmp samesign ult i32 %i.cr, 1073741823
  %i.cz = shl nuw nsw i32 %i.cr, 1
  %spec.select.i.i87 = select i1 %i.cy, i32 %i.cz, i32 2147483647 ; 4 uses
  %.not.i9.i.i88 = icmp samesign ult i32 %i.cr, %spec.select.i.i87
  %.pre10.i89 = load ptr, ptr %i.co, align 8, !tbaa !24 ; 3 uses
  br i1 %.not.i9.i.i88, label %bb.ai, label %Vec_IntPush.exit.i84

bb.ai:                                            ; preds = %bb.ah
  %.not9.i10.i.i90 = icmp eq ptr %.pre10.i89, null
  %i.da = zext nneg i32 %spec.select.i.i87 to i64
  %i.db = shl nuw nsw i64 %i.da, 2                ; 2 uses
  br i1 %.not9.i10.i.i90, label %bb.ak, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  %i.dc = tail call ptr @realloc(ptr noundef nonnull %.pre10.i89, i64 noundef %i.db) #23
  br label %Vec_IntGrow.exit11.sink.split.i.i91

bb.ak:                                            ; preds = %bb.ai
  %i.dd = tail call noalias ptr @malloc(i64 noundef %i.db) #24
  br label %Vec_IntGrow.exit11.sink.split.i.i91

Vec_IntGrow.exit11.sink.split.i.i91:              ; preds = %bb.ak, %bb.aj, %bb.ag, %bb.af
  %i.de = phi ptr [ %i.cx, %bb.ag ], [ %i.cw, %bb.af ], [ %i.dc, %bb.aj ], [ %i.dd, %bb.ak ] ; 2 uses
  %spec.select.sink.i.i92 = phi i32 [ 16, %bb.ag ], [ 16, %bb.af ], [ %spec.select.i.i87, %bb.aj ], [ %spec.select.i.i87, %bb.ak ]
  store ptr %i.de, ptr %i.co, align 8, !tbaa !24
  store i32 %spec.select.sink.i.i92, ptr %i.cj, align 8, !tbaa !43
  %.pre11.i93 = load i32, ptr %i.cn, align 4, !tbaa !23
  br label %Vec_IntPush.exit.i84

Vec_IntPush.exit.i84:                             ; preds = %Vec_IntGrow.exit11.sink.split.i.i91, %bb.ah, %.Vec_IntPush.exit_crit_edge.i82
  %i.df = phi i32 [ %i.cr, %.Vec_IntPush.exit_crit_edge.i82 ], [ %i.cr, %bb.ah ], [ %.pre11.i93, %Vec_IntGrow.exit11.sink.split.i.i91 ] ; 2 uses
  %i.dg = phi ptr [ %.pre.i83, %.Vec_IntPush.exit_crit_edge.i82 ], [ %.pre10.i89, %bb.ah ], [ %i.de, %Vec_IntGrow.exit11.sink.split.i.i91 ]
  %i.dh = add nsw i32 %i.df, 1
  store i32 %i.dh, ptr %i.cn, align 4, !tbaa !23
  %i.di = sext i32 %i.df to i64
  %i.dj = getelementptr inbounds [4 x i8], ptr %i.dg, i64 %i.di
  store i32 %i.cq, ptr %i.dj, align 4, !tbaa !25
  %indvars.iv.next.i85 = add nuw nsw i64 %indvars.iv.i80, 1 ; 2 uses
  %.val.i86 = load i32, ptr %i.ck, align 4, !tbaa !23 ; 2 uses
  %i.dk = sext i32 %.val.i86 to i64
  %i.dl = icmp slt i64 %indvars.iv.next.i85, %i.dk
  br i1 %i.dl, label %bb.ac, label %Vec_IntAppend.exit95, !llvm.loop !0

Vec_IntAppend.exit95:                             ; preds = %Vec_IntPush.exit.i84
  %i.dm = icmp sgt i32 %.val.i86, 0
  br i1 %i.dm, label %Bac_ManNtkIsOk.exit.i.lr.ph, label %.critedge.preheader

Bac_ManNtkIsOk.exit.i.lr.ph:                      ; preds = %Vec_IntAppend.exit95
  %i.dn = getelementptr i8, ptr %1, i64 120
  %.val37 = load ptr, ptr %i.dn, align 8, !tbaa !24
  %i.do = getelementptr i8, ptr %1, i64 104
  %.val36 = load ptr, ptr %i.do, align 8, !tbaa !24
  %i.dp = getelementptr i8, ptr %1, i64 36
  %i.dq = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.dr = load ptr, ptr %i.dq, align 8, !tbaa !53
  %i.ds = getelementptr i8, ptr %0, i64 120
  %.val39 = load ptr, ptr %i.ds, align 8, !tbaa !24
  br label %Bac_ManNtkIsOk.exit.i

.critedge.preheader:                              ; preds = %Bac_ManNtkIsOk.exit.i, %Vec_IntAppend.exit77, %Vec_IntAppend.exit95
  %.val102 = load i32, ptr %i.ae, align 4, !tbaa !23
  %i.dt = icmp sgt i32 %.val102, 0
  br i1 %i.dt, label %Bac_ManNtkIsOk.exit.i96.lr.ph, label %.critedge2

Bac_ManNtkIsOk.exit.i96.lr.ph:                    ; preds = %.critedge.preheader
  %i.du = getelementptr i8, ptr %1, i64 88
  %.val35 = load ptr, ptr %i.du, align 8, !tbaa !24
  %i.dv = getelementptr i8, ptr %1, i64 72
  %.val34 = load ptr, ptr %i.dv, align 8, !tbaa !24
  %i.dw = getelementptr i8, ptr %1, i64 36
  %i.dx = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.dy = load ptr, ptr %i.dx, align 8, !tbaa !53
  %i.dz = getelementptr i8, ptr %0, i64 88
  %.val38 = load ptr, ptr %i.dz, align 8, !tbaa !24
  br label %Bac_ManNtkIsOk.exit.i96

Bac_ManNtkIsOk.exit.i:                            ; preds = %Bac_ManNtkIsOk.exit.i.lr.ph, %Bac_ManNtkIsOk.exit.i
  %indvars.iv = phi i64 [ 0, %Bac_ManNtkIsOk.exit.i.lr.ph ], [ %indvars.iv.next, %Bac_ManNtkIsOk.exit.i ] ; 4 uses
  %i.ea = getelementptr inbounds nuw [4 x i8], ptr %.val37, i64 %indvars.iv
  %i.eb = load i32, ptr %i.ea, align 4, !tbaa !25
  %i.ec = getelementptr inbounds nuw [4 x i8], ptr %.val36, i64 %indvars.iv
  %i.ed = load i32, ptr %i.ec, align 4, !tbaa !25 ; 3 uses
  %i.ee = icmp sgt i32 %i.ed, 0
  tail call void @llvm.assume(i1 %i.ee)
  %.val.i.i = load i32, ptr %i.dp, align 4, !tbaa !52
  %.not4.i = icmp sle i32 %i.ed, %.val.i.i
  tail call void @llvm.assume(i1 %.not4.i)
  %i.ef = zext nneg i32 %i.ed to i64
  %i.eg = getelementptr inbounds nuw [208 x i8], ptr %i.dr, i64 %i.ef
  %i.eh = getelementptr i8, ptr %i.eg, i64 168
  %.val41 = load ptr, ptr %i.eh, align 8, !tbaa !24
  %i.ei = sext i32 %i.eb to i64
  %i.ej = getelementptr inbounds [4 x i8], ptr %.val41, i64 %i.ei
  %i.ek = load i32, ptr %i.ej, align 4, !tbaa !25
  %i.el = getelementptr inbounds nuw [4 x i8], ptr %.val39, i64 %indvars.iv
  store i32 %i.ek, ptr %i.el, align 4, !tbaa !25
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %.val33 = load i32, ptr %i.ck, align 4, !tbaa !23
  %i.em = sext i32 %.val33 to i64
  %i.en = icmp slt i64 %indvars.iv.next, %i.em
  br i1 %i.en, label %Bac_ManNtkIsOk.exit.i, label %.critedge.preheader, !llvm.loop !122

Bac_ManNtkIsOk.exit.i96:                          ; preds = %Bac_ManNtkIsOk.exit.i96.lr.ph, %Bac_ManNtkIsOk.exit.i96
  %indvars.iv105 = phi i64 [ 0, %Bac_ManNtkIsOk.exit.i96.lr.ph ], [ %indvars.iv.next106, %Bac_ManNtkIsOk.exit.i96 ] ; 4 uses
  %i.eo = getelementptr inbounds nuw [4 x i8], ptr %.val35, i64 %indvars.iv105
  %i.ep = load i32, ptr %i.eo, align 4, !tbaa !25
  %i.eq = getelementptr inbounds nuw [4 x i8], ptr %.val34, i64 %indvars.iv105
  %i.er = load i32, ptr %i.eq, align 4, !tbaa !25 ; 3 uses
  %i.es = icmp sgt i32 %i.er, 0
  tail call void @llvm.assume(i1 %i.es)
  %.val.i.i97 = load i32, ptr %i.dw, align 4, !tbaa !52
  %.not4.i98 = icmp sle i32 %i.er, %.val.i.i97
  tail call void @llvm.assume(i1 %.not4.i98)
  %i.et = zext nneg i32 %i.er to i64
  %i.eu = getelementptr inbounds nuw [208 x i8], ptr %i.dy, i64 %i.et
  %i.ev = getelementptr i8, ptr %i.eu, i64 168
  %.val40 = load ptr, ptr %i.ev, align 8, !tbaa !24
  %i.ew = sext i32 %i.ep to i64
  %i.ex = getelementptr inbounds [4 x i8], ptr %.val40, i64 %i.ew
  %i.ey = load i32, ptr %i.ex, align 4, !tbaa !25
  %i.ez = getelementptr inbounds nuw [4 x i8], ptr %.val38, i64 %indvars.iv105
  store i32 %i.ey, ptr %i.ez, align 4, !tbaa !25
  %indvars.iv.next106 = add nuw nsw i64 %indvars.iv105, 1 ; 2 uses
  %.val = load i32, ptr %i.ae, align 4, !tbaa !23
  %i.fa = sext i32 %.val to i64
  %i.fb = icmp slt i64 %indvars.iv.next106, %i.fa
  br i1 %i.fb, label %Bac_ManNtkIsOk.exit.i96, label %.critedge2, !llvm.loop !123

.critedge2:                                       ; preds = %Bac_ManNtkIsOk.exit.i96, %.critedge.preheader
  ret void
}

; Function Attrs: mustprogress nounwind willreturn memory(readwrite, target_mem: none) uwtable
define void @Bac_NtkCreateAndConnectBuffer(ptr nofree noundef readonly captures(address_is_null) %0, ptr noundef %1, ptr nofree noundef captures(none) %2, i32 noundef %3) local_unnamed_addr #7 {
bb.a:
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %.critedge, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr i8, ptr %0, i64 32
  %.val = load ptr, ptr %i.a, align 8, !tbaa !44
  %i.b = ptrtoint ptr %1 to i64
  %i.c = ptrtoint ptr %.val to i64
  %i.d = sub i64 %i.b, %i.c
  %i.e = sdiv exact i64 %i.d, 12
  %i.f = trunc i64 %i.e to i32
  %.val3.i = load i64, ptr %1, align 4            ; 2 uses
  %i.g = trunc i64 %.val3.i to i32                ; 2 uses
  %i.h = and i32 %i.g, 536870911
  %i.i = icmp slt i32 %i.h, %i.f
  br i1 %i.i, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.j = and i64 %.val3.i, 536870911
  %i.k = sub nsw i64 0, %i.j
  %i.l = getelementptr inbounds [12 x i8], ptr %1, i64 %i.k
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  %i.n = load i32, ptr %i.m, align 4, !tbaa !65
  %i.o = tail call fastcc i32 @Bac_ObjAlloc(ptr noundef %2, i32 noundef 3, i32 noundef %i.n) ; 0 uses
  %.val16 = load i64, ptr %1, align 4
  %4 = and i64 %.val16, 536870912
  %.not14 = icmp eq i64 %4, 0
  %5 = select i1 %.not14, i32 10, i32 11
  br label %.critedge

bb.d:                                             ; preds = %bb.b
  %6 = and i32 %i.g, 536870912
  %.not13 = icmp eq i32 %6, 0
  %7 = select i1 %.not13, i32 6, i32 7
  br label %.critedge

.critedge:                                        ; preds = %bb.d, %bb.a, %bb.c
  %.sink = phi i32 [ %5, %bb.c ], [ 6, %bb.a ], [ %7, %bb.d ]
  %i.p = tail call fastcc i32 @Bac_ObjAlloc(ptr noundef %2, i32 noundef %.sink, i32 noundef -1) ; 0 uses
  %i.q = tail call fastcc i32 @Bac_ObjAlloc(ptr noundef %2, i32 noundef 4, i32 noundef -1)
  %i.r = getelementptr inbounds nuw i8, ptr %2, i64 96 ; 2 uses
  %i.s = add nsw i32 %3, 1                        ; 4 uses
  %i.t = getelementptr inbounds nuw i8, ptr %2, i64 100 ; 3 uses
  %i.u = load i32, ptr %i.t, align 4, !tbaa !23   ; 4 uses
  %.not.i.not.i.i = icmp slt i32 %3, %i.u
  br i1 %.not.i.not.i.i, label %Bac_ObjSetFanin.exit, label %bb.e

bb.e:                                             ; preds = %.critedge
  %i.v = load i32, ptr %i.r, align 8, !tbaa !43   ; 4 uses
  %i.w = shl nsw i32 %i.v, 1                      ; 2 uses
  %.not.i.i = icmp slt i32 %3, %i.w
  %.not.i.i.not.i.i = icmp sgt i32 %i.v, %3       ; 2 uses
  br i1 %.not.i.i, label %bb.k, label %bb.f

bb.f:                                             ; preds = %bb.e
  br i1 %.not.i.i.not.i.i, label %Vec_IntGrow.exit.i.i.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.x = getelementptr inbounds nuw i8, ptr %2, i64 104 ; 2 uses
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !24   ; 2 uses
  %.not9.i.i.i.i = icmp eq ptr %i.y, null
  %i.z = sext i32 %i.s to i64
  %i.aa = shl nsw i64 %i.z, 2                     ; 2 uses
  br i1 %.not9.i.i.i.i, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ab = tail call ptr @realloc(ptr noundef nonnull %i.y, i64 noundef %i.aa) #23
  br label %bb.j

bb.i:                                             ; preds = %bb.g
  %i.ac = tail call noalias ptr @malloc(i64 noundef %i.aa) #24
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %i.ad = phi ptr [ %i.ab, %bb.h ], [ %i.ac, %bb.i ]
  store ptr %i.ad, ptr %i.x, align 8, !tbaa !24
  br label %Vec_IntGrow.exit.sink.split.i.i.i

bb.k:                                             ; preds = %bb.e
  br i1 %.not.i.i.not.i.i, label %Vec_IntGrow.exit.i.i.i, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.ae = icmp slt i32 %i.v, 1073741823
  %spec.select.i.i.i = select i1 %i.ae, i32 %i.w, i32 2147483647 ; 3 uses
  %.not.i22.i.i.i = icmp slt i32 %i.v, %spec.select.i.i.i
  br i1 %.not.i22.i.i.i, label %bb.m, label %Vec_IntGrow.exit.i.i.i

bb.m:                                             ; preds = %bb.l
  %i.af = getelementptr inbounds nuw i8, ptr %2, i64 104 ; 2 uses
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !24 ; 2 uses
  %.not9.i23.i.i.i = icmp eq ptr %i.ag, null
  %i.ah = sext i32 %spec.select.i.i.i to i64
  %i.ai = shl nuw nsw i64 %i.ah, 2                ; 2 uses
  br i1 %.not9.i23.i.i.i, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.aj = tail call ptr @realloc(ptr noundef nonnull %i.ag, i64 noundef %i.ai) #23
  br label %bb.p

bb.o:                                             ; preds = %bb.m
  %i.ak = tail call noalias ptr @malloc(i64 noundef %i.ai) #24
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.n
  %i.al = phi ptr [ %i.aj, %bb.n ], [ %i.ak, %bb.o ]
  store ptr %i.al, ptr %i.af, align 8, !tbaa !24
  br label %Vec_IntGrow.exit.sink.split.i.i.i

Vec_IntGrow.exit.sink.split.i.i.i:                ; preds = %bb.p, %bb.j
  %spec.select.sink.i.i.i = phi i32 [ %spec.select.i.i.i, %bb.p ], [ %i.s, %bb.j ]
  store i32 %spec.select.sink.i.i.i, ptr %i.r, align 8, !tbaa !43
  %.pre.i.i = load i32, ptr %i.t, align 4, !tbaa !23
  br label %Vec_IntGrow.exit.i.i.i

Vec_IntGrow.exit.i.i.i:                           ; preds = %Vec_IntGrow.exit.sink.split.i.i.i, %bb.l, %bb.k, %bb.f
  %i.am = phi i32 [ %.pre.i.i, %Vec_IntGrow.exit.sink.split.i.i.i ], [ %i.u, %bb.l ], [ %i.u, %bb.k ], [ %i.u, %bb.f ] ; 2 uses
  %.not4.i.i = icmp sgt i32 %i.am, %3
  br i1 %.not4.i.i, label %._crit_edge.i.i.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %Vec_IntGrow.exit.i.i.i
  %i.an = getelementptr inbounds nuw i8, ptr %2, i64 104
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !24
  %i.ap = sext i32 %i.am to i64                   ; 2 uses
  %wide.trip.count.i.i.i = sext i32 %i.s to i64
  %i.aq = shl nsw i64 %i.ap, 2
  %scevgep.i.i = getelementptr i8, ptr %i.ao, i64 %i.aq
  %i.ar = sub nsw i64 %wide.trip.count.i.i.i, %i.ap
  %i.as = shl nuw nsw i64 %i.ar, 2
  tail call void @llvm.memset.p0.i64(ptr align 4 %scevgep.i.i, i8 0, i64 %i.as, i1 false), !tbaa !25
  br label %._crit_edge.i.i.i

._crit_edge.i.i.i:                                ; preds = %.lr.ph.i.i.i, %Vec_IntGrow.exit.i.i.i
  store i32 %i.s, ptr %i.t, align 4, !tbaa !23
  br label %Bac_ObjSetFanin.exit

Bac_ObjSetFanin.exit:                             ; preds = %.critedge, %._crit_edge.i.i.i
  %i.at = getelementptr i8, ptr %2, i64 104
  %.val.i.i = load ptr, ptr %i.at, align 8, !tbaa !24
  %i.au = sext i32 %3 to i64
  %i.av = getelementptr inbounds [4 x i8], ptr %.val.i.i, i64 %i.au
  store i32 %i.q, ptr %i.av, align 4, !tbaa !25
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind willreturn memory(readwrite, target_mem: none) uwtable
define internal fastcc i32 @Bac_ObjAlloc(ptr nofree noundef captures(none) %0, i32 noundef range(i32 -1073741824, 1073741824) %1, i32 noundef %2) unnamed_addr #8 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 84         ; 4 uses
  %.val = load i32, ptr %i.a, align 4, !tbaa !56  ; 3 uses
  switch i32 %1, label %bb.v [
    i32 1, label %bb.b
    i32 2, label %bb.l
  ]

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 36 ; 3 uses
  %i.d = load i32, ptr %i.c, align 4, !tbaa !23   ; 7 uses
  %i.e = load i32, ptr %i.b, align 8, !tbaa !43
  %i.f = icmp eq i32 %i.d, %i.e
  br i1 %i.f, label %bb.c, label %Vec_IntPush.exit

bb.c:                                             ; preds = %bb.b
  %i.g = icmp slt i32 %i.d, 16
  br i1 %i.g, label %bb.d, label %bb.g

bb.d:                                             ; preds = %bb.c
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !24   ; 2 uses
  %.not9.i.i = icmp eq ptr %i.i, null
  br i1 %.not9.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.j = tail call dereferenceable_or_null(64) ptr @realloc(ptr noundef nonnull %i.i, i64 noundef 64) #23
  br label %Vec_IntGrow.exit.i

bb.f:                                             ; preds = %bb.d
  %i.k = tail call noalias dereferenceable_or_null(64) ptr @malloc(i64 noundef 64) #24
  br label %Vec_IntGrow.exit.i

Vec_IntGrow.exit.i:                               ; preds = %bb.f, %bb.e
  %i.l = phi ptr [ %i.j, %bb.e ], [ %i.k, %bb.f ]
  store ptr %i.l, ptr %i.h, align 8, !tbaa !24
  br label %Vec_IntGrow.exit11.sink.split.i

bb.g:                                             ; preds = %bb.c
  %i.m = icmp samesign ult i32 %i.d, 1073741823
  %i.n = shl nuw nsw i32 %i.d, 1
  %spec.select.i = select i1 %i.m, i32 %i.n, i32 2147483647 ; 3 uses
  %.not.i9.i = icmp samesign ult i32 %i.d, %spec.select.i
  br i1 %.not.i9.i, label %bb.h, label %Vec_IntPush.exit

bb.h:                                             ; preds = %bb.g
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !24   ; 2 uses
  %.not9.i10.i = icmp eq ptr %i.p, null
  %i.q = zext nneg i32 %spec.select.i to i64
  %i.r = shl nuw nsw i64 %i.q, 2                  ; 2 uses
  br i1 %.not9.i10.i, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.s = tail call ptr @realloc(ptr noundef nonnull %i.p, i64 noundef %i.r) #23
  br label %bb.k

bb.j:                                             ; preds = %bb.h
  %i.t = tail call noalias ptr @malloc(i64 noundef %i.r) #24
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  %i.u = phi ptr [ %i.s, %bb.i ], [ %i.t, %bb.j ]
  store ptr %i.u, ptr %i.o, align 8, !tbaa !24
  br label %Vec_IntGrow.exit11.sink.split.i

Vec_IntGrow.exit11.sink.split.i:                  ; preds = %bb.k, %Vec_IntGrow.exit.i
  %spec.select.sink.i = phi i32 [ %spec.select.i, %bb.k ], [ 16, %Vec_IntGrow.exit.i ]
  store i32 %spec.select.sink.i, ptr %i.b, align 8, !tbaa !43
  %.pre32 = load i32, ptr %i.c, align 4, !tbaa !23
  br label %Vec_IntPush.exit

Vec_IntPush.exit:                                 ; preds = %bb.b, %bb.g, %Vec_IntGrow.exit11.sink.split.i
  %i.v = phi i32 [ %i.d, %bb.b ], [ %i.d, %bb.g ], [ %.pre32, %Vec_IntGrow.exit11.sink.split.i ] ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !24
  %i.y = add nsw i32 %i.v, 1
  store i32 %i.y, ptr %i.c, align 4, !tbaa !23
  br label %thread-pre-split

bb.l:                                             ; preds = %bb.a
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 52 ; 3 uses
  %i.ab = load i32, ptr %i.aa, align 4, !tbaa !23 ; 7 uses
  %i.ac = load i32, ptr %i.z, align 8, !tbaa !43
  %i.ad = icmp eq i32 %i.ab, %i.ac
  br i1 %i.ad, label %bb.m, label %Vec_IntPush.exit18

bb.m:                                             ; preds = %bb.l
  %i.ae = icmp slt i32 %i.ab, 16
  br i1 %i.ae, label %bb.n, label %bb.q
end_hunk_0
