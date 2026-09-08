Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/oiio/original/gainmapmetadata?download=true
inline.NumInlined: 93
inline.NumDeleted: 35
loop-unroll.NumCompletelyUnrolled: 4
loop-unroll.NumUnrolled: 4
begin_hunk_0_@_ZN8ultrahdr26uhdr_gainmap_metadata_frac21decodeGainmapMetadataERKSt6vectorIhSaIhEEPS0_:bb.a
  call void @_ZN8ultrahdr13streamReadU32ERKSt6vectorIhSaIhEERjRm(ptr dead_on_unwind nonnull writable sret(%struct.uhdr_error_info) align 4 %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 4 dereferenceable(4) %i.ca, ptr noundef nonnull align 8 dereferenceable(8) %i.a)
  %i.cb = load i32, ptr %0, align 4, !tbaa !18
  %.not155 = icmp eq i32 %i.cb, 0
  br i1 %.not155, label %bb.p, label %bb.s

bb.p:                                             ; preds = %bb.o
  %i.cc = getelementptr inbounds nuw [4 x i8], ptr %i.bp, i64 %indvars.iv
  store i32 %i.bg, ptr %i.cc, align 4, !tbaa !6
  %i.cd = getelementptr inbounds nuw [4 x i8], ptr %i.bq, i64 %indvars.iv
  call void @_ZN8ultrahdr13streamReadS32ERKSt6vectorIhSaIhEERiRm(ptr dead_on_unwind nonnull writable sret(%struct.uhdr_error_info) align 4 %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 4 dereferenceable(4) %i.cd, ptr noundef nonnull align 8 dereferenceable(8) %i.a)
  %i.ce = load i32, ptr %0, align 4, !tbaa !18
  %.not156 = icmp eq i32 %i.ce, 0
  br i1 %.not156, label %bb.q, label %bb.s

bb.q:                                             ; preds = %bb.p
  %i.cf = getelementptr inbounds nuw [4 x i8], ptr %i.br, i64 %indvars.iv
  store i32 %i.bg, ptr %i.cf, align 4, !tbaa !6
  %i.cg = getelementptr inbounds nuw [4 x i8], ptr %i.bs, i64 %indvars.iv
  call void @_ZN8ultrahdr13streamReadS32ERKSt6vectorIhSaIhEERiRm(ptr dead_on_unwind nonnull writable sret(%struct.uhdr_error_info) align 4 %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 4 dereferenceable(4) %i.cg, ptr noundef nonnull align 8 dereferenceable(8) %i.a)
  %i.ch = load i32, ptr %0, align 4, !tbaa !18
  %.not157 = icmp eq i32 %i.ch, 0
  br i1 %.not157, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  %i.ci = getelementptr inbounds nuw [4 x i8], ptr %i.bt, i64 %indvars.iv
  store i32 %i.bg, ptr %i.ci, align 4, !tbaa !6
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %.critedge160, label %bb.m, !llvm.loop !45

bb.s:                                             ; preds = %bb.m, %bb.n, %bb.o, %bb.p, %bb.q
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #17
  br label %.loopexit

bb.t:                                             ; preds = %.thread183
  %i.cj = getelementptr inbounds nuw i8, ptr %2, i64 120
  call void @_ZN8ultrahdr13streamReadU32ERKSt6vectorIhSaIhEERjRm(ptr dead_on_unwind nonnull writable sret(%struct.uhdr_error_info) align 4 %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 4 dereferenceable(4) %i.cj, ptr noundef nonnull align 8 dereferenceable(8) %i.a)
  %i.ck = load i32, ptr %0, align 4, !tbaa !18
  %.not135 = icmp eq i32 %i.ck, 0
  br i1 %.not135, label %bb.u, label %.loopexit

bb.u:                                             ; preds = %bb.t
  %i.cl = getelementptr inbounds nuw i8, ptr %2, i64 124
  call void @_ZN8ultrahdr13streamReadU32ERKSt6vectorIhSaIhEERjRm(ptr dead_on_unwind nonnull writable sret(%struct.uhdr_error_info) align 4 %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 4 dereferenceable(4) %i.cl, ptr noundef nonnull align 8 dereferenceable(8) %i.a)
  %i.cm = load i32, ptr %0, align 4, !tbaa !18
  %.not136 = icmp eq i32 %i.cm, 0
  br i1 %.not136, label %bb.v, label %.loopexit

bb.v:                                             ; preds = %bb.u
  %i.cn = getelementptr inbounds nuw i8, ptr %2, i64 128
  call void @_ZN8ultrahdr13streamReadU32ERKSt6vectorIhSaIhEERjRm(ptr dead_on_unwind nonnull writable sret(%struct.uhdr_error_info) align 4 %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 4 dereferenceable(4) %i.cn, ptr noundef nonnull align 8 dereferenceable(8) %i.a)
  %i.co = load i32, ptr %0, align 4, !tbaa !18
  %.not137 = icmp eq i32 %i.co, 0
  br i1 %.not137, label %bb.w, label %.loopexit

bb.w:                                             ; preds = %bb.v
  %i.cp = getelementptr inbounds nuw i8, ptr %2, i64 132
  call void @_ZN8ultrahdr13streamReadU32ERKSt6vectorIhSaIhEERjRm(ptr dead_on_unwind nonnull writable sret(%struct.uhdr_error_info) align 4 %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 4 dereferenceable(4) %i.cp, ptr noundef nonnull align 8 dereferenceable(8) %i.a)
  %i.cq = load i32, ptr %0, align 4, !tbaa !18
  %.not138 = icmp eq i32 %i.cq, 0
  br i1 %.not138, label %.preheader, label %.loopexit

.preheader:                                       ; preds = %bb.w
  %i.cr = getelementptr inbounds nuw i8, ptr %2, i64 12
  %i.cs = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.ct = getelementptr inbounds nuw i8, ptr %2, i64 36
  %i.cu = getelementptr inbounds nuw i8, ptr %2, i64 48
  %i.cv = getelementptr inbounds nuw i8, ptr %2, i64 60
  %i.cw = getelementptr inbounds nuw i8, ptr %2, i64 72
  %i.cx = getelementptr inbounds nuw i8, ptr %2, i64 84
  %i.cy = getelementptr inbounds nuw i8, ptr %2, i64 96
  %i.cz = getelementptr inbounds nuw i8, ptr %2, i64 108
  %wide.trip.count194 = zext nneg i32 %i.ax to i64
  br label %bb.y

bb.x:                                             ; preds = %bb.ah
  %indvars.iv.next192 = add nuw nsw i64 %indvars.iv191, 1 ; 2 uses
  %exitcond195.not = icmp eq i64 %indvars.iv.next192, %wide.trip.count194
  br i1 %exitcond195.not, label %.critedge162, label %bb.y, !llvm.loop !46

bb.y:                                             ; preds = %.preheader, %bb.x
  %indvars.iv191 = phi i64 [ 0, %.preheader ], [ %indvars.iv.next192, %bb.x ] ; 11 uses
  %i.da = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %indvars.iv191
  call void @_ZN8ultrahdr13streamReadS32ERKSt6vectorIhSaIhEERiRm(ptr dead_on_unwind nonnull writable sret(%struct.uhdr_error_info) align 4 %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 4 dereferenceable(4) %i.da, ptr noundef nonnull align 8 dereferenceable(8) %i.a)
  %i.db = load i32, ptr %0, align 4, !tbaa !18
  %.not139 = icmp eq i32 %i.db, 0
  br i1 %.not139, label %bb.z, label %.loopexit

bb.z:                                             ; preds = %bb.y
  %i.dc = getelementptr inbounds nuw [4 x i8], ptr %i.cr, i64 %indvars.iv191
  call void @_ZN8ultrahdr13streamReadU32ERKSt6vectorIhSaIhEERjRm(ptr dead_on_unwind nonnull writable sret(%struct.uhdr_error_info) align 4 %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 4 dereferenceable(4) %i.dc, ptr noundef nonnull align 8 dereferenceable(8) %i.a)
  %i.dd = load i32, ptr %0, align 4, !tbaa !18
  %.not140 = icmp eq i32 %i.dd, 0
  br i1 %.not140, label %bb.aa, label %.loopexit

bb.aa:                                            ; preds = %bb.z
  %i.de = getelementptr inbounds nuw [4 x i8], ptr %i.cs, i64 %indvars.iv191
  call void @_ZN8ultrahdr13streamReadS32ERKSt6vectorIhSaIhEERiRm(ptr dead_on_unwind nonnull writable sret(%struct.uhdr_error_info) align 4 %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 4 dereferenceable(4) %i.de, ptr noundef nonnull align 8 dereferenceable(8) %i.a)
  %i.df = load i32, ptr %0, align 4, !tbaa !18
  %.not141 = icmp eq i32 %i.df, 0
  br i1 %.not141, label %bb.ab, label %.loopexit

bb.ab:                                            ; preds = %bb.aa
  %i.dg = getelementptr inbounds nuw [4 x i8], ptr %i.ct, i64 %indvars.iv191
  call void @_ZN8ultrahdr13streamReadU32ERKSt6vectorIhSaIhEERjRm(ptr dead_on_unwind nonnull writable sret(%struct.uhdr_error_info) align 4 %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 4 dereferenceable(4) %i.dg, ptr noundef nonnull align 8 dereferenceable(8) %i.a)
  %i.dh = load i32, ptr %0, align 4, !tbaa !18
  %.not142 = icmp eq i32 %i.dh, 0
  br i1 %.not142, label %bb.ac, label %.loopexit

bb.ac:                                            ; preds = %bb.ab
  %i.di = getelementptr inbounds nuw [4 x i8], ptr %i.cu, i64 %indvars.iv191
  call void @_ZN8ultrahdr13streamReadU32ERKSt6vectorIhSaIhEERjRm(ptr dead_on_unwind nonnull writable sret(%struct.uhdr_error_info) align 4 %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 4 dereferenceable(4) %i.di, ptr noundef nonnull align 8 dereferenceable(8) %i.a)
  %i.dj = load i32, ptr %0, align 4, !tbaa !18
  %.not143 = icmp eq i32 %i.dj, 0
  br i1 %.not143, label %bb.ad, label %.loopexit

bb.ad:                                            ; preds = %bb.ac
  %i.dk = getelementptr inbounds nuw [4 x i8], ptr %i.cv, i64 %indvars.iv191
  call void @_ZN8ultrahdr13streamReadU32ERKSt6vectorIhSaIhEERjRm(ptr dead_on_unwind nonnull writable sret(%struct.uhdr_error_info) align 4 %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 4 dereferenceable(4) %i.dk, ptr noundef nonnull align 8 dereferenceable(8) %i.a)
  %i.dl = load i32, ptr %0, align 4, !tbaa !18
  %.not144 = icmp eq i32 %i.dl, 0
  br i1 %.not144, label %bb.ae, label %.loopexit

bb.ae:                                            ; preds = %bb.ad
  %i.dm = getelementptr inbounds nuw [4 x i8], ptr %i.cw, i64 %indvars.iv191
  call void @_ZN8ultrahdr13streamReadS32ERKSt6vectorIhSaIhEERiRm(ptr dead_on_unwind nonnull writable sret(%struct.uhdr_error_info) align 4 %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 4 dereferenceable(4) %i.dm, ptr noundef nonnull align 8 dereferenceable(8) %i.a)
  %i.dn = load i32, ptr %0, align 4, !tbaa !18
  %.not145 = icmp eq i32 %i.dn, 0
  br i1 %.not145, label %bb.af, label %.loopexit

bb.af:                                            ; preds = %bb.ae
  %i.do = getelementptr inbounds nuw [4 x i8], ptr %i.cx, i64 %indvars.iv191
  call void @_ZN8ultrahdr13streamReadU32ERKSt6vectorIhSaIhEERjRm(ptr dead_on_unwind nonnull writable sret(%struct.uhdr_error_info) align 4 %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 4 dereferenceable(4) %i.do, ptr noundef nonnull align 8 dereferenceable(8) %i.a)
  %i.dp = load i32, ptr %0, align 4, !tbaa !18
  %.not146 = icmp eq i32 %i.dp, 0
  br i1 %.not146, label %bb.ag, label %.loopexit

bb.ag:                                            ; preds = %bb.af
  %i.dq = getelementptr inbounds nuw [4 x i8], ptr %i.cy, i64 %indvars.iv191
  call void @_ZN8ultrahdr13streamReadS32ERKSt6vectorIhSaIhEERiRm(ptr dead_on_unwind nonnull writable sret(%struct.uhdr_error_info) align 4 %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 4 dereferenceable(4) %i.dq, ptr noundef nonnull align 8 dereferenceable(8) %i.a)
  %i.dr = load i32, ptr %0, align 4, !tbaa !18
  %.not147 = icmp eq i32 %i.dr, 0
  br i1 %.not147, label %bb.ah, label %.loopexit

bb.ah:                                            ; preds = %bb.ag
  %i.ds = getelementptr inbounds nuw [4 x i8], ptr %i.cz, i64 %indvars.iv191
  call void @_ZN8ultrahdr13streamReadU32ERKSt6vectorIhSaIhEERjRm(ptr dead_on_unwind nonnull writable sret(%struct.uhdr_error_info) align 4 %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 4 dereferenceable(4) %i.ds, ptr noundef nonnull align 8 dereferenceable(8) %i.a)
  %i.dt = load i32, ptr %0, align 4, !tbaa !18
  %.not148 = icmp eq i32 %i.dt, 0
  br i1 %.not148, label %bb.x, label %.loopexit

.critedge160:                                     ; preds = %bb.r
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #17
  br label %.critedge162

.critedge162:                                     ; preds = %bb.x, %.critedge160
  %i.du = icmp samesign ult i32 %i.ax, 3
  br i1 %i.du, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %.critedge162
  %i.dv = getelementptr inbounds nuw i8, ptr %2, i64 12 ; 4 uses
  %i.dw = getelementptr inbounds nuw i8, ptr %2, i64 24 ; 4 uses
  %i.dx = getelementptr inbounds nuw i8, ptr %2, i64 36 ; 4 uses
  %i.dy = getelementptr inbounds nuw i8, ptr %2, i64 48 ; 4 uses
  %i.dz = getelementptr inbounds nuw i8, ptr %2, i64 60 ; 4 uses
  %i.ea = getelementptr inbounds nuw i8, ptr %2, i64 72 ; 4 uses
  %i.eb = getelementptr inbounds nuw i8, ptr %2, i64 84 ; 4 uses
  %i.ec = getelementptr inbounds nuw i8, ptr %2, i64 96 ; 4 uses
  %i.ed = getelementptr inbounds nuw i8, ptr %2, i64 108 ; 4 uses
  %.pre201 = load i32, ptr %2, align 4, !tbaa !6  ; 2 uses
  %i.ee = zext nneg i32 %i.ax to i64              ; 11 uses
  %i.ef = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %i.ee
  store i32 %.pre201, ptr %i.ef, align 4, !tbaa !6
  %i.eg = load i32, ptr %i.dv, align 4, !tbaa !6
  %i.eh = getelementptr inbounds nuw [4 x i8], ptr %i.dv, i64 %i.ee
  store i32 %i.eg, ptr %i.eh, align 4, !tbaa !6
  %i.ei = load i32, ptr %i.dw, align 4, !tbaa !6
  %i.ej = getelementptr inbounds nuw [4 x i8], ptr %i.dw, i64 %i.ee
  store i32 %i.ei, ptr %i.ej, align 4, !tbaa !6
  %i.ek = load i32, ptr %i.dx, align 4, !tbaa !6
  %i.el = getelementptr inbounds nuw [4 x i8], ptr %i.dx, i64 %i.ee
  store i32 %i.ek, ptr %i.el, align 4, !tbaa !6
  %i.em = load i32, ptr %i.dy, align 4, !tbaa !6
  %i.en = getelementptr inbounds nuw [4 x i8], ptr %i.dy, i64 %i.ee
  store i32 %i.em, ptr %i.en, align 4, !tbaa !6
  %i.eo = load i32, ptr %i.dz, align 4, !tbaa !6
  %i.ep = getelementptr inbounds nuw [4 x i8], ptr %i.dz, i64 %i.ee
  store i32 %i.eo, ptr %i.ep, align 4, !tbaa !6
  %i.eq = load i32, ptr %i.ea, align 4, !tbaa !6
  %i.er = getelementptr inbounds nuw [4 x i8], ptr %i.ea, i64 %i.ee
  store i32 %i.eq, ptr %i.er, align 4, !tbaa !6
  %i.es = load i32, ptr %i.eb, align 4, !tbaa !6
  %i.et = getelementptr inbounds nuw [4 x i8], ptr %i.eb, i64 %i.ee
  store i32 %i.es, ptr %i.et, align 4, !tbaa !6
  %i.eu = load i32, ptr %i.ec, align 4, !tbaa !6
  %i.ev = getelementptr inbounds nuw [4 x i8], ptr %i.ec, i64 %i.ee
  store i32 %i.eu, ptr %i.ev, align 4, !tbaa !6
  %i.ew = load i32, ptr %i.ed, align 4, !tbaa !6
  %i.ex = getelementptr inbounds nuw [4 x i8], ptr %i.ed, i64 %i.ee
  store i32 %i.ew, ptr %i.ex, align 4, !tbaa !6
  %indvars.iv.next197 = add nuw nsw i64 %i.ee, 1  ; 10 uses
  %3 = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %indvars.iv.next197
  store i32 %.pre201, ptr %3, align 4, !tbaa !6
  %4 = load i32, ptr %i.dv, align 4, !tbaa !6
  %5 = getelementptr inbounds nuw [4 x i8], ptr %i.dv, i64 %indvars.iv.next197
  store i32 %4, ptr %5, align 4, !tbaa !6
  %6 = load i32, ptr %i.dw, align 4, !tbaa !6
  %7 = getelementptr inbounds nuw [4 x i8], ptr %i.dw, i64 %indvars.iv.next197
  store i32 %6, ptr %7, align 4, !tbaa !6
  %8 = load i32, ptr %i.dx, align 4, !tbaa !6
  %9 = getelementptr inbounds nuw [4 x i8], ptr %i.dx, i64 %indvars.iv.next197
  store i32 %8, ptr %9, align 4, !tbaa !6
  %10 = load i32, ptr %i.dy, align 4, !tbaa !6
  %11 = getelementptr inbounds nuw [4 x i8], ptr %i.dy, i64 %indvars.iv.next197
  store i32 %10, ptr %11, align 4, !tbaa !6
  %12 = load i32, ptr %i.dz, align 4, !tbaa !6
  %13 = getelementptr inbounds nuw [4 x i8], ptr %i.dz, i64 %indvars.iv.next197
  store i32 %12, ptr %13, align 4, !tbaa !6
  %14 = load i32, ptr %i.ea, align 4, !tbaa !6
  %15 = getelementptr inbounds nuw [4 x i8], ptr %i.ea, i64 %indvars.iv.next197
  store i32 %14, ptr %15, align 4, !tbaa !6
  %16 = load i32, ptr %i.eb, align 4, !tbaa !6
  %17 = getelementptr inbounds nuw [4 x i8], ptr %i.eb, i64 %indvars.iv.next197
  store i32 %16, ptr %17, align 4, !tbaa !6
  %18 = load i32, ptr %i.ec, align 4, !tbaa !6
  %19 = getelementptr inbounds nuw [4 x i8], ptr %i.ec, i64 %indvars.iv.next197
  store i32 %18, ptr %19, align 4, !tbaa !6
  %20 = load i32, ptr %i.ed, align 4, !tbaa !6
  %21 = getelementptr inbounds nuw [4 x i8], ptr %i.ed, i64 %indvars.iv.next197
  store i32 %20, ptr %21, align 4, !tbaa !6
  br label %._crit_edge

._crit_edge:                                      ; preds = %.lr.ph, %.critedge162
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(264) %0, i8 0, i64 264, i1 false)
  br label %.loopexit

.critedge:                                        ; preds = %bb.j, %bb.i, %bb.k
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #17
  br label %.loopexit

.loopexit:                                        ; preds = %bb.ah, %bb.ag, %bb.af, %bb.ae, %bb.ad, %bb.ac, %bb.ab, %bb.aa, %bb.z, %bb.y, %_ZN8ultrahdr12streamReadU8ERKSt6vectorIhSaIhEERhRm.exit, %._crit_edge, %.critedge, %bb.t, %bb.u, %bb.v, %bb.w, %bb.h, %bb.s, %_ZN8ultrahdr13streamReadU16ERKSt6vectorIhSaIhEERtRm.exit164, %_ZN8ultrahdr13streamReadU16ERKSt6vectorIhSaIhEERtRm.exit, %.thread
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #17
  br label %bb.ai

bb.ai:                                            ; preds = %.loopexit, %bb.b
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN8ultrahdr26uhdr_gainmap_metadata_frac30gainmapMetadataFractionToFloatEPKS0_PNS_25uhdr_gainmap_metadata_extE(ptr dead_on_unwind noalias nofree writable writeonly sret(%struct.uhdr_error_info) align 4 captures(none) initializes((0, 8)) %0, ptr nofree noundef readonly captures(address_is_null) %1, ptr noundef %2) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = icmp eq ptr %1, null
  %i.b = icmp eq ptr %2, null
  %or.cond = or i1 %i.a, %i.b
  br i1 %or.cond, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  store i32 3, ptr %0, align 4, !tbaa !18
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i32 1, ptr %i.c, align 4, !tbaa !19
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(50) %i.d, ptr noundef nonnull align 1 dereferenceable(50) @.str.3, i64 50, i1 false)
  br label %.thread

bb.c:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 124 ; 2 uses
  %i.f = load i32, ptr %i.e, align 4, !tbaa !26
  %i.g = icmp eq i32 %i.f, 0
  br i1 %i.g, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  store i32 3, ptr %0, align 4, !tbaa !18
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i32 1, ptr %i.h, align 4, !tbaa !19
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.j = tail call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) %i.i, i64 noundef 256, ptr noundef nonnull @.str.6, ptr noundef nonnull @.str.7) #17 ; 0 uses
  br label %.thread

bb.e:                                             ; preds = %bb.c
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 132 ; 2 uses
  %i.l = load i32, ptr %i.k, align 4, !tbaa !27
  %i.m = icmp eq i32 %i.l, 0
  br i1 %i.m, label %bb.f, label %.preheader

.preheader:                                       ; preds = %bb.e
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 36 ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 60 ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 12 ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 84 ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 108 ; 2 uses
  %i.s = load i32, ptr %i.n, align 4, !tbaa !6
  %i.t = icmp eq i32 %i.s, 0
  br i1 %i.t, label %bb.r, label %bb.s

bb.f:                                             ; preds = %bb.e
  store i32 3, ptr %0, align 4, !tbaa !18
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i32 1, ptr %i.u, align 4, !tbaa !19
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.w = tail call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) %i.v, i64 noundef 256, ptr noundef nonnull @.str.6, ptr noundef nonnull @.str.8) #17 ; 0 uses
  br label %.thread

bb.g:                                             ; preds = %bb.y
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 2 uses
  %i.y = load i32, ptr %i.x, align 4, !tbaa !6
  %i.z = icmp eq i32 %i.y, 0
  br i1 %i.z, label %bb.r, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.aa = getelementptr inbounds nuw i8, ptr %1, i64 64 ; 2 uses
  %i.ab = load i32, ptr %i.aa, align 4, !tbaa !6
  %i.ac = icmp eq i32 %i.ab, 0
  br i1 %i.ac, label %bb.t, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ad = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.ae = load i32, ptr %i.ad, align 4, !tbaa !6
  %i.af = icmp eq i32 %i.ae, 0
  br i1 %i.af, label %bb.v, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ag = getelementptr inbounds nuw i8, ptr %1, i64 88 ; 2 uses
  %i.ah = load i32, ptr %i.ag, align 4, !tbaa !6
  %i.ai = icmp eq i32 %i.ah, 0
  br i1 %i.ai, label %bb.x, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.aj = getelementptr inbounds nuw i8, ptr %1, i64 112 ; 2 uses
  %i.ak = load i32, ptr %i.aj, align 4, !tbaa !6
  %i.al = icmp eq i32 %i.ak, 0
  br i1 %i.al, label %bb.z, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.am = getelementptr inbounds nuw i8, ptr %1, i64 44 ; 2 uses
  %i.an = load i32, ptr %i.am, align 4, !tbaa !6
  %i.ao = icmp eq i32 %i.an, 0
  br i1 %i.ao, label %bb.r, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.ap = getelementptr inbounds nuw i8, ptr %1, i64 68 ; 2 uses
  %i.aq = load i32, ptr %i.ap, align 4, !tbaa !6
  %i.ar = icmp eq i32 %i.aq, 0
  br i1 %i.ar, label %bb.t, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.as = getelementptr inbounds nuw i8, ptr %1, i64 20 ; 2 uses
  %i.at = load i32, ptr %i.as, align 4, !tbaa !6
  %i.au = icmp eq i32 %i.at, 0
  br i1 %i.au, label %bb.v, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.av = getelementptr inbounds nuw i8, ptr %1, i64 92 ; 2 uses
  %i.aw = load i32, ptr %i.av, align 4, !tbaa !6
  %i.ax = icmp eq i32 %i.aw, 0
  br i1 %i.ax, label %bb.x, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.ay = getelementptr inbounds nuw i8, ptr %1, i64 116 ; 2 uses
  %i.az = load i32, ptr %i.ay, align 4, !tbaa !6
  %i.ba = icmp eq i32 %i.az, 0
  br i1 %i.ba, label %bb.z, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.bb = getelementptr inbounds nuw i8, ptr %1, i64 136
  %i.bc = load i8, ptr %i.bb, align 4, !tbaa !25, !range !23, !noundef !24
  %i.bd = trunc nuw i8 %i.bc to i1
  br i1 %i.bd, label %bb.aa, label %bb.ab

bb.r:                                             ; preds = %bb.l, %bb.g, %.preheader
  store i32 3, ptr %0, align 4, !tbaa !18
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i32 1, ptr %i.be, align 4, !tbaa !19
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.bg = tail call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) %i.bf, i64 noundef 256, ptr noundef nonnull @.str.6, ptr noundef nonnull @.str.9) #17 ; 0 uses
  br label %.thread

bb.s:                                             ; preds = %.preheader
  %i.bh = load i32, ptr %i.o, align 4, !tbaa !6
  %i.bi = icmp eq i32 %i.bh, 0
  br i1 %i.bi, label %bb.t, label %bb.u

bb.t:                                             ; preds = %bb.m, %bb.h, %bb.s
  store i32 3, ptr %0, align 4, !tbaa !18
  %i.bj = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i32 1, ptr %i.bj, align 4, !tbaa !19
  %i.bk = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.bl = tail call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) %i.bk, i64 noundef 256, ptr noundef nonnull @.str.6, ptr noundef nonnull @.str.10) #17 ; 0 uses
  br label %.thread

bb.u:                                             ; preds = %bb.s
  %i.bm = load i32, ptr %i.p, align 4, !tbaa !6
  %i.bn = icmp eq i32 %i.bm, 0
  br i1 %i.bn, label %bb.v, label %bb.w

bb.v:                                             ; preds = %bb.n, %bb.i, %bb.u
  store i32 3, ptr %0, align 4, !tbaa !18
  %i.bo = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i32 1, ptr %i.bo, align 4, !tbaa !19
  %i.bp = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.bq = tail call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) %i.bp, i64 noundef 256, ptr noundef nonnull @.str.6, ptr noundef nonnull @.str.11) #17 ; 0 uses
  br label %.thread

bb.w:                                             ; preds = %bb.u
  %i.br = load i32, ptr %i.q, align 4, !tbaa !6
  %i.bs = icmp eq i32 %i.br, 0
  br i1 %i.bs, label %bb.x, label %bb.y

bb.x:                                             ; preds = %bb.o, %bb.j, %bb.w
  store i32 3, ptr %0, align 4, !tbaa !18
  %i.bt = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i32 1, ptr %i.bt, align 4, !tbaa !19
  %i.bu = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.bv = tail call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) %i.bu, i64 noundef 256, ptr noundef nonnull @.str.6, ptr noundef nonnull @.str.12) #17 ; 0 uses
  br label %.thread

bb.y:                                             ; preds = %bb.w
  %i.bw = load i32, ptr %i.r, align 4, !tbaa !6
  %i.bx = icmp eq i32 %i.bw, 0
  br i1 %i.bx, label %bb.z, label %bb.g

bb.z:                                             ; preds = %bb.p, %bb.k, %bb.y
  store i32 3, ptr %0, align 4, !tbaa !18
  %i.by = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i32 1, ptr %i.by, align 4, !tbaa !19
  %i.bz = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ca = tail call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) %i.bz, i64 noundef 256, ptr noundef nonnull @.str.6, ptr noundef nonnull @.str.13) #17 ; 0 uses
  br label %.thread

bb.aa:                                            ; preds = %bb.q
  store i32 6, ptr %0, align 4, !tbaa !18
  %i.cb = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i32 1, ptr %i.cb, align 4, !tbaa !19
  %i.cc = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(46) %i.cc, ptr noundef nonnull align 1 dereferenceable(46) @.str.14, i64 46, i1 false)
  br label %.thread

end_hunk_0
