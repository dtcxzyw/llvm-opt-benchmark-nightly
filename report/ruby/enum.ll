inline.NumInlined: 672
inline.NumDeleted: 87
begin_hunk_0_@rb_uniform_quicksort_intro_2:bb.a
  br i1 %i.cf, label %bb.v, label %bb.r

rb_uniform_is_less.exit78:                        ; preds = %bb.p
  %i.cg = tail call i32 @rb_float_cmp(i64 noundef %i.ca, i64 noundef %i.bz) #13
  %i.ch = icmp sgt i32 %i.cg, 0
  br i1 %i.ch, label %bb.v, label %bb.r

bb.r:                                             ; preds = %.critedge.i76, %bb.q, %rb_uniform_is_less.exit78
  %i.ci = load i64, ptr %0, align 8, !tbaa !54    ; 4 uses
  %i.cj = load i64, ptr %i.by, align 8, !tbaa !54 ; 4 uses
  %i.ck = trunc i64 %i.ci to i1
  br i1 %i.ck, label %bb.s, label %.critedge.i79

bb.s:                                             ; preds = %bb.r
  %i.cl = trunc i64 %i.cj to i1
  br i1 %i.cl, label %bb.t, label %bb.u

bb.t:                                             ; preds = %bb.s
  %i.cm = icmp slt i64 %i.ci, %i.cj
  br label %rb_uniform_is_less.exit81

bb.u:                                             ; preds = %bb.s
  %i.cn = tail call i32 @rb_float_cmp(i64 noundef %i.cj, i64 noundef %i.ci) #13
  %i.co = icmp sgt i32 %i.cn, 0
  br label %rb_uniform_is_less.exit81

.critedge.i79:                                    ; preds = %bb.r
  %i.cp = tail call i32 @rb_float_cmp(i64 noundef %i.ci, i64 noundef %i.cj) #13
  %i.cq = icmp slt i32 %i.cp, 0
  br label %rb_uniform_is_less.exit81

rb_uniform_is_less.exit81:                        ; preds = %bb.t, %bb.u, %.critedge.i79
  %.0.i80 = phi i1 [ %i.cm, %bb.t ], [ %i.co, %bb.u ], [ %i.cq, %.critedge.i79 ]
  %.67 = select i1 %.0.i80, ptr %0, ptr %i.by
  br label %bb.v

bb.v:                                             ; preds = %.critedge.i76, %bb.q, %.critedge.i70, %bb.j, %rb_uniform_is_less.exit81, %rb_uniform_is_less.exit78, %rb_uniform_is_less.exit75, %rb_uniform_is_less.exit72
  %.in = phi ptr [ %i.aw, %rb_uniform_is_less.exit72 ], [ %i.aw, %rb_uniform_is_less.exit78 ], [ %., %rb_uniform_is_less.exit75 ], [ %.67, %rb_uniform_is_less.exit81 ], [ %i.aw, %bb.j ], [ %i.aw, %.critedge.i70 ], [ %i.aw, %bb.q ], [ %i.aw, %.critedge.i76 ]
  %i.cr = load i64, ptr %.in, align 8, !tbaa !54
  %.fr119 = freeze i64 %i.cr                      ; 8 uses
  %i.cs = getelementptr i8, ptr %.tr88116163, i64 -16 ; 2 uses
  %i.ct = trunc i64 %.fr119 to i1
  br i1 %i.ct, label %.split.us.us, label %.split

.split.us.us:                                     ; preds = %bb.v, %bb.x
  %.061.us = phi ptr [ %.263.us, %bb.x ], [ %0, %bb.v ]
  %.0.us = phi ptr [ %.2.us, %bb.x ], [ %i.cs, %bb.v ]
  br label %bb.y

bb.w:                                             ; preds = %.split105.us109
  %.sroa.0.0.copyload178 = load <2 x i64>, ptr %.162.us.us, align 8
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.162.us.us, ptr noundef nonnull align 8 dereferenceable(16) %.1.us.us, i64 16, i1 false), !tbaa.struct !99
  store <2 x i64> %.sroa.0.0.copyload178, ptr %.1.us.us, align 8
  %i.cu = getelementptr i8, ptr %.162.us.us, i64 16
  %i.cv = getelementptr i8, ptr %.1.us.us, i64 -16
  br label %bb.x

bb.x:                                             ; preds = %.split105.us109, %bb.w
  %.263.us = phi ptr [ %i.cu, %bb.w ], [ %.162.us.us, %.split105.us109 ] ; 3 uses
  %.2.us = phi ptr [ %i.cv, %bb.w ], [ %.1.us.us, %.split105.us109 ] ; 3 uses
  %.not66.us = icmp ugt ptr %.263.us, %.2.us
  br i1 %.not66.us, label %.split113.us, label %.split.us.us, !llvm.loop !105

bb.y:                                             ; preds = %bb.aa, %.split.us.us
  %.162.us.us = phi ptr [ %.061.us, %.split.us.us ], [ %i.db, %bb.aa ] ; 7 uses
  %i.cw = load i64, ptr %.162.us.us, align 8, !tbaa !54 ; 3 uses
  %i.cx = trunc i64 %i.cw to i1
  br i1 %i.cx, label %bb.z, label %.critedge.i82.us.us

.critedge.i82.us.us:                              ; preds = %bb.y
  %i.cy = tail call i32 @rb_float_cmp(i64 noundef %i.cw, i64 noundef %.fr119) #13
  %i.cz = icmp slt i32 %i.cy, 0
  br i1 %i.cz, label %bb.aa, label %.preheader.split103.us.us.preheader

bb.z:                                             ; preds = %bb.y
  %i.da = icmp slt i64 %i.cw, %.fr119
  br i1 %i.da, label %bb.aa, label %.preheader.split103.us.us.preheader

.preheader.split103.us.us.preheader:              ; preds = %.critedge.i82.us.us, %bb.z
  br label %.preheader.split103.us.us

bb.aa:                                            ; preds = %bb.z, %.critedge.i82.us.us
  %i.db = getelementptr i8, ptr %.162.us.us, i64 16
  br label %bb.y, !llvm.loop !106

.split105.us109:                                  ; preds = %rb_uniform_is_less.exit87.us.us, %bb.ab
  %.not.us = icmp ugt ptr %.162.us.us, %.1.us.us
  br i1 %.not.us, label %bb.x, label %bb.w

.preheader.split103.us.us:                        ; preds = %.preheader.split103.us.us.preheader, %bb.ac
  %.1.us.us = phi ptr [ %i.dh, %bb.ac ], [ %.0.us, %.preheader.split103.us.us.preheader ] ; 7 uses
  %i.dc = load i64, ptr %.1.us.us, align 8, !tbaa !54 ; 3 uses
  %i.dd = trunc i64 %i.dc to i1
  br i1 %i.dd, label %bb.ab, label %rb_uniform_is_less.exit87.us.us

rb_uniform_is_less.exit87.us.us:                  ; preds = %.preheader.split103.us.us
  %i.de = tail call i32 @rb_float_cmp(i64 noundef %i.dc, i64 noundef %.fr119) #13
  %i.df = icmp sgt i32 %i.de, 0
  br i1 %i.df, label %bb.ac, label %.split105.us109

bb.ab:                                            ; preds = %.preheader.split103.us.us
  %i.dg = icmp slt i64 %.fr119, %i.dc
  br i1 %i.dg, label %bb.ac, label %.split105.us109

bb.ac:                                            ; preds = %bb.ab, %rb_uniform_is_less.exit87.us.us
  %i.dh = getelementptr i8, ptr %.1.us.us, i64 -16
  br label %.preheader.split103.us.us, !llvm.loop !107

.split:                                           ; preds = %bb.v, %bb.ag
  %.061 = phi ptr [ %.263, %bb.ag ], [ %0, %bb.v ]
  %.0 = phi ptr [ %.2, %bb.ag ], [ %i.cs, %bb.v ]
  br label %bb.ad

bb.ad:                                            ; preds = %bb.ae, %.split
  %.162 = phi ptr [ %.061, %.split ], [ %i.do, %bb.ae ] ; 7 uses
  %i.di = load i64, ptr %.162, align 8, !tbaa !54 ; 3 uses
  %i.dj = trunc i64 %i.di to i1
  br i1 %i.dj, label %rb_uniform_is_less.exit84, label %.critedge.i82

rb_uniform_is_less.exit84:                        ; preds = %bb.ad
  %i.dk = tail call i32 @rb_float_cmp(i64 noundef %.fr119, i64 noundef %i.di) #13
  %i.dl = icmp sgt i32 %i.dk, 0
  br i1 %i.dl, label %bb.ae, label %.critedge.i85.preheader

.critedge.i85.preheader:                          ; preds = %.critedge.i82, %rb_uniform_is_less.exit84
  br label %.critedge.i85

.critedge.i82:                                    ; preds = %bb.ad
  %i.dm = tail call i32 @rb_float_cmp(i64 noundef %i.di, i64 noundef %.fr119) #13
  %i.dn = icmp slt i32 %i.dm, 0
  br i1 %i.dn, label %bb.ae, label %.critedge.i85.preheader

bb.ae:                                            ; preds = %.critedge.i82, %rb_uniform_is_less.exit84
  %i.do = getelementptr i8, ptr %.162, i64 16
  br label %bb.ad, !llvm.loop !106

.critedge.i85:                                    ; preds = %.critedge.i85.preheader, %.critedge.i85
  %.1 = phi ptr [ %i.ds, %.critedge.i85 ], [ %.0, %.critedge.i85.preheader ] ; 7 uses
  %i.dp = load i64, ptr %.1, align 8, !tbaa !54
  %i.dq = tail call i32 @rb_float_cmp(i64 noundef %.fr119, i64 noundef %i.dp) #13
  %i.dr = icmp slt i32 %i.dq, 0
  %i.ds = getelementptr i8, ptr %.1, i64 -16
  br i1 %i.dr, label %.critedge.i85, label %.split105.us, !llvm.loop !107

.split105.us:                                     ; preds = %.critedge.i85
  %.not = icmp ugt ptr %.162, %.1
  br i1 %.not, label %bb.ag, label %bb.af

bb.af:                                            ; preds = %.split105.us
  %.sroa.0.0.copyload = load <2 x i64>, ptr %.162, align 8
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.162, ptr noundef nonnull align 8 dereferenceable(16) %.1, i64 16, i1 false), !tbaa.struct !99
  store <2 x i64> %.sroa.0.0.copyload, ptr %.1, align 8
  %i.dt = getelementptr i8, ptr %.162, i64 16
  %i.du = getelementptr i8, ptr %.1, i64 -16
  br label %bb.ag

bb.ag:                                            ; preds = %.split105.us, %bb.af
  %.263 = phi ptr [ %i.dt, %bb.af ], [ %.162, %.split105.us ] ; 3 uses
  %.2 = phi ptr [ %i.du, %bb.af ], [ %.1, %.split105.us ] ; 3 uses
  %.not66 = icmp ugt ptr %.263, %.2
  br i1 %.not66, label %.split113.us, label %.split, !llvm.loop !105

.split113.us:                                     ; preds = %bb.ag, %bb.x
  %.us-phi114 = phi ptr [ %.263.us, %bb.x ], [ %.263, %bb.ag ] ; 3 uses
  %.us-phi115 = phi ptr [ %.2.us, %bb.x ], [ %.2, %bb.ag ]
  %i.dv = getelementptr i8, ptr %.us-phi115, i64 16 ; 2 uses
  %i.dw = ptrtoint ptr %i.dv to i64
  %i.dx = sub i64 %i.as, %i.dw
  %i.dy = icmp sgt i64 %i.dx, 16
  br i1 %i.dy, label %bb.ah, label %bb.ai

bb.ah:                                            ; preds = %.split113.us
  %i.dz = add i64 %.tr89117162, -1
  tail call fastcc void @rb_uniform_quicksort_intro_2(ptr noundef %i.dv, ptr noundef %.tr88116163, i64 noundef %i.dz)
  br label %bb.ai

bb.ai:                                            ; preds = %bb.ah, %.split113.us
  %i.ea = ptrtoint ptr %.us-phi114 to i64         ; 2 uses
  %i.eb = sub i64 %i.ea, %i.a                     ; 4 uses
  %i.ec = icmp sgt i64 %i.eb, 16
  br i1 %i.ec, label %tailrecurse, label %rb_uniform_insertionsort_2.exit

rb_uniform_insertionsort_2.exit:                  ; preds = %bb.ai, %.lr.ph25.i, %.loopexit.i, %tailrecurse._crit_edge
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.ctlz.i64(i64, i1 immarg) #5

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #2

; Function Attrs: inlinehint nounwind sspstrong uwtable
define internal fastcc void @rb_uniform_heap_down_2(ptr nofree noundef captures(none) %0, i64 noundef range(i64 0, 9223372036854775807) %1, i64 noundef %2) unnamed_addr #6 {
bb.a:
  %i.a = getelementptr [16 x i8], ptr %0, i64 %1  ; 2 uses
  %.sroa.0.0.copyload = load i64, ptr %i.a, align 8, !tbaa !11
  %.sroa.0.0.copyload.fr = freeze i64 %.sroa.0.0.copyload ; 5 uses
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %.sroa.5.0.copyload = load i64, ptr %.sroa.5.0..sroa_idx, align 8, !tbaa !11
  %i.b = shl nuw i64 %1, 1                        ; 4 uses
  %.not.not28 = icmp ult i64 %i.b, %2
  br i1 %.not.not28, label %.lr.ph, label %.critedge.i25._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %3 = or disjoint i64 %i.b, 1                    ; 2 uses
  %i.c = trunc i64 %.sroa.0.0.copyload.fr to i1
  br i1 %i.c, label %.lr.ph.split.us, label %.lr.ph.split

.lr.ph.split.us:                                  ; preds = %.lr.ph, %bb.h
  %i.d = phi i64 [ %i.aa, %bb.h ], [ %3, %.lr.ph ] ; 4 uses
  %i.e = phi i64 [ %i.z, %bb.h ], [ %i.b, %.lr.ph ]
  %.029.us = phi i64 [ %.022.us, %bb.h ], [ %1, %.lr.ph ] ; 3 uses
  %i.f = icmp ult i64 %i.d, %2
  br i1 %i.f, label %bb.b, label %bb.f

bb.b:                                             ; preds = %.lr.ph.split.us
  %i.g = getelementptr [16 x i8], ptr %0, i64 %i.d
  %i.h = load i64, ptr %i.g, align 8, !tbaa !54   ; 4 uses
  %i.i = add nuw i64 %i.e, 2                      ; 2 uses
  %i.j = getelementptr [16 x i8], ptr %0, i64 %i.i
  %i.k = load i64, ptr %i.j, align 8, !tbaa !54   ; 4 uses
  %i.l = trunc i64 %i.h to i1
  br i1 %i.l, label %bb.c, label %.critedge.i.us

.critedge.i.us:                                   ; preds = %bb.b
  %i.m = tail call i32 @rb_float_cmp(i64 noundef %i.h, i64 noundef %i.k) #13
  %i.n = icmp slt i32 %i.m, 0
  br label %rb_uniform_is_less.exit.us

bb.c:                                             ; preds = %bb.b
  %i.o = trunc i64 %i.k to i1
  br i1 %i.o, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.p = tail call i32 @rb_float_cmp(i64 noundef %i.k, i64 noundef %i.h) #13
  %i.q = icmp sgt i32 %i.p, 0
  br label %rb_uniform_is_less.exit.us

bb.e:                                             ; preds = %bb.c
  %i.r = icmp slt i64 %i.h, %i.k
  br label %rb_uniform_is_less.exit.us

rb_uniform_is_less.exit.us:                       ; preds = %bb.e, %bb.d, %.critedge.i.us
  %.0.i.us = phi i1 [ %i.r, %bb.e ], [ %i.q, %bb.d ], [ %i.n, %.critedge.i.us ]
  %spec.select.us = select i1 %.0.i.us, i64 %i.i, i64 %i.d
  br label %bb.f

bb.f:                                             ; preds = %rb_uniform_is_less.exit.us, %.lr.ph.split.us
  %.022.us = phi i64 [ %i.d, %.lr.ph.split.us ], [ %spec.select.us, %rb_uniform_is_less.exit.us ] ; 4 uses
  %i.s = getelementptr [16 x i8], ptr %0, i64 %.022.us ; 2 uses
  %i.t = load i64, ptr %i.s, align 8, !tbaa !54   ; 3 uses
  %i.u = trunc i64 %i.t to i1
  br i1 %i.u, label %bb.g, label %rb_uniform_is_less.exit27.us

rb_uniform_is_less.exit27.us:                     ; preds = %bb.f
  %i.v = tail call i32 @rb_float_cmp(i64 noundef %i.t, i64 noundef %.sroa.0.0.copyload.fr) #13
  %i.w = icmp sgt i32 %i.v, 0
  br i1 %i.w, label %bb.h, label %.critedge.i25._crit_edge

bb.g:                                             ; preds = %bb.f
  %i.x = icmp slt i64 %.sroa.0.0.copyload.fr, %i.t
  br i1 %i.x, label %bb.h, label %.critedge.i25._crit_edge

bb.h:                                             ; preds = %bb.g, %rb_uniform_is_less.exit27.us
  %i.y = getelementptr [16 x i8], ptr %0, i64 %.029.us
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.y, ptr noundef nonnull align 8 dereferenceable(16) %i.s, i64 16, i1 false), !tbaa.struct !99
  %i.z = shl i64 %.022.us, 1                      ; 3 uses
  %i.aa = or disjoint i64 %i.z, 1
  %.not.not.us = icmp ult i64 %i.z, %2
  br i1 %.not.not.us, label %.lr.ph.split.us, label %.critedge.i25._crit_edge, !llvm.loop !108

.lr.ph.split:                                     ; preds = %.lr.ph, %bb.m
  %i.ab = phi i64 [ %i.aw, %bb.m ], [ %3, %.lr.ph ] ; 4 uses
  %i.ac = phi i64 [ %i.av, %bb.m ], [ %i.b, %.lr.ph ]
  %.029 = phi i64 [ %.022, %bb.m ], [ %1, %.lr.ph ] ; 2 uses
  %i.ad = icmp ult i64 %i.ab, %2
  br i1 %i.ad, label %bb.i, label %.critedge.i25

bb.i:                                             ; preds = %.lr.ph.split
  %i.ae = getelementptr [16 x i8], ptr %0, i64 %i.ab
  %i.af = load i64, ptr %i.ae, align 8, !tbaa !54 ; 4 uses
  %i.ag = add nuw i64 %i.ac, 2                    ; 2 uses
  %i.ah = getelementptr [16 x i8], ptr %0, i64 %i.ag
  %i.ai = load i64, ptr %i.ah, align 8, !tbaa !54 ; 4 uses
  %i.aj = trunc i64 %i.af to i1
  br i1 %i.aj, label %bb.j, label %.critedge.i

bb.j:                                             ; preds = %bb.i
  %i.ak = trunc i64 %i.ai to i1
  br i1 %i.ak, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.al = icmp slt i64 %i.af, %i.ai
  br label %rb_uniform_is_less.exit

bb.l:                                             ; preds = %bb.j
  %i.am = tail call i32 @rb_float_cmp(i64 noundef %i.ai, i64 noundef %i.af) #13
  %i.an = icmp sgt i32 %i.am, 0
  br label %rb_uniform_is_less.exit

.critedge.i:                                      ; preds = %bb.i
  %i.ao = tail call i32 @rb_float_cmp(i64 noundef %i.af, i64 noundef %i.ai) #13
  %i.ap = icmp slt i32 %i.ao, 0
  br label %rb_uniform_is_less.exit

rb_uniform_is_less.exit:                          ; preds = %bb.k, %bb.l, %.critedge.i
  %.0.i = phi i1 [ %i.al, %bb.k ], [ %i.an, %bb.l ], [ %i.ap, %.critedge.i ]
  %spec.select = select i1 %.0.i, i64 %i.ag, i64 %i.ab
  br label %.critedge.i25

.critedge.i25:                                    ; preds = %rb_uniform_is_less.exit, %.lr.ph.split
  %.022 = phi i64 [ %i.ab, %.lr.ph.split ], [ %spec.select, %rb_uniform_is_less.exit ] ; 4 uses
  %i.aq = getelementptr [16 x i8], ptr %0, i64 %.022 ; 2 uses
  %i.ar = load i64, ptr %i.aq, align 8, !tbaa !54
  %i.as = tail call i32 @rb_float_cmp(i64 noundef %.sroa.0.0.copyload.fr, i64 noundef %i.ar) #13
  %i.at = icmp slt i32 %i.as, 0
  br i1 %i.at, label %bb.m, label %.critedge.i25._crit_edge

bb.m:                                             ; preds = %.critedge.i25
  %i.au = getelementptr [16 x i8], ptr %0, i64 %.029
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.au, ptr noundef nonnull align 8 dereferenceable(16) %i.aq, i64 16, i1 false), !tbaa.struct !99
  %i.av = shl i64 %.022, 1                        ; 3 uses
  %i.aw = or disjoint i64 %i.av, 1
  %.not.not = icmp ult i64 %i.av, %2
  br i1 %.not.not, label %.lr.ph.split, label %.critedge.i25._crit_edge, !llvm.loop !108

.critedge.i25._crit_edge:                         ; preds = %bb.m, %.critedge.i25, %bb.h, %rb_uniform_is_less.exit27.us, %bb.g, %bb.a
  %.0.lcssa = phi i64 [ %1, %bb.a ], [ %.029.us, %bb.g ], [ %.029.us, %rb_uniform_is_less.exit27.us ], [ %.022.us, %bb.h ], [ %.022, %bb.m ], [ %.029, %.critedge.i25 ]
  %i.ax = getelementptr [16 x i8], ptr %0, i64 %.0.lcssa ; 2 uses
  store i64 %.sroa.0.0.copyload.fr, ptr %i.ax, align 8, !tbaa !11
  %.sroa.5.0..sroa_idx2 = getelementptr inbounds nuw i8, ptr %i.ax, i64 8
  store i64 %.sroa.5.0.copyload, ptr %.sroa.5.0..sroa_idx2, align 8, !tbaa !11
  ret void
}

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc i64 @enum_grep0(i64 noundef %0, i64 noundef %1, i64 noundef range(i64 0, 21) %2) unnamed_addr #0 {
bb.a:
  %i.a = tail call i64 @rb_ary_new() #13          ; 2 uses
  %i.b = tail call i64 @rb_imemo_new(i32 noundef 5, i64 noundef 0, i64 noundef 40, i1 noundef zeroext false) #13 ; 2 uses
  %i.c = inttoptr i64 %i.b to ptr                 ; 3 uses
  %i.d = getelementptr i8, ptr %i.c, i64 16
  store i64 %1, ptr %i.d, align 8, !tbaa !11
  %i.e = getelementptr i8, ptr %i.c, i64 24
  store i64 %i.a, ptr %i.e, align 8, !tbaa !11
  %i.f = getelementptr i8, ptr %i.c, i64 32
  store i64 %2, ptr %i.f, align 8, !tbaa !23
  %i.g = tail call i32 @rb_block_given_p() #13
  %.not = icmp eq i32 %i.g, 0
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.h = icmp eq i64 %1, 0
  %i.i = and i64 %1, 7
  %i.j = icmp ne i64 %i.i, 0
  %i.k = or i1 %i.h, %i.j
  br i1 %i.k, label %rbimpl_RB_TYPE_P_fastpath.exit.thread, label %rbimpl_RB_TYPE_P_fastpath.exit

rbimpl_RB_TYPE_P_fastpath.exit:                   ; preds = %bb.b
  %i.l = inttoptr i64 %1 to ptr                   ; 2 uses
  %i.m = load i64, ptr %i.l, align 8, !tbaa !21
  %i.n = and i64 %i.m, 31
  %i.o = icmp eq i64 %i.n, 6
  br i1 %i.o, label %rb_class_of.exit, label %rbimpl_RB_TYPE_P_fastpath.exit.thread

rb_class_of.exit:                                 ; preds = %rbimpl_RB_TYPE_P_fastpath.exit
  %i.p = getelementptr i8, ptr %i.l, i64 8
  %.0.i9 = load i64, ptr %i.p, align 8, !tbaa !11
  %i.q = tail call i32 @rb_method_basic_definition_p(i64 noundef %.0.i9, i64 noundef 141) #13
  %.not8 = icmp eq i32 %i.q, 0
  br i1 %.not8, label %rbimpl_RB_TYPE_P_fastpath.exit.thread, label %bb.c, !prof !109

rbimpl_RB_TYPE_P_fastpath.exit.thread:            ; preds = %bb.b, %rb_class_of.exit, %rbimpl_RB_TYPE_P_fastpath.exit
  br label %bb.c

bb.c:                                             ; preds = %rb_class_of.exit, %bb.a, %rbimpl_RB_TYPE_P_fastpath.exit.thread
  %.0 = phi ptr [ @grep_i, %rbimpl_RB_TYPE_P_fastpath.exit.thread ], [ @grep_iter_i, %bb.a ], [ @grep_regexp_i, %rb_class_of.exit ]
  %i.r = tail call i64 @rb_block_call(i64 noundef %0, i64 noundef 3089, i32 noundef 0, ptr noundef null, ptr noundef nonnull %.0, i64 noundef %i.b) #13 ; 0 uses
  ret i64 %i.a
}

; Function Attrs: nounwind sspstrong uwtable
define internal noundef i64 @grep_iter_i(i64 %0, i64 noundef %1, i32 noundef %2, ptr noundef %3, i64 %4) #0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 3 uses
  %i.b = inttoptr i64 %1 to ptr                   ; 3 uses
  switch i32 %2, label %bb.c [
    i32 0, label %rb_enum_values_pack.exit
    i32 1, label %bb.b
  ]

bb.b:                                             ; preds = %bb.a
  %i.c = load i64, ptr %3, align 8, !tbaa !11
  br label %rb_enum_values_pack.exit

bb.c:                                             ; preds = %bb.a
  %i.d = sext i32 %2 to i64
  %i.e = tail call i64 @rb_ary_new_from_values(i64 noundef %i.d, ptr noundef %3) #13
  br label %rb_enum_values_pack.exit

rb_enum_values_pack.exit:                         ; preds = %bb.a, %bb.b, %bb.c
  %.0.i = phi i64 [ %i.e, %bb.c ], [ %i.c, %bb.b ], [ 4, %bb.a ]
  store i64 %.0.i, ptr %i.a, align 8, !tbaa !11
  %i.f = getelementptr i8, ptr %i.b, i64 16
  %i.g = load i64, ptr %i.f, align 8, !tbaa !60
  %i.h = call i64 @rb_funcallv(i64 noundef %i.g, i64 noundef 141, i32 noundef 1, ptr noundef nonnull %i.a) #13
  %i.i = and i64 %i.h, -5
  %i.j = icmp ne i64 %i.i, 0
  %i.k = getelementptr i8, ptr %i.b, i64 32
  %i.l = load i64, ptr %i.k, align 8, !tbaa !23
  %i.m = and i64 %i.l, -5
  %i.n = icmp ne i64 %i.m, 0
  %i.o = xor i1 %i.j, %i.n
  br i1 %i.o, label %bb.i, label %bb.d

bb.d:                                             ; preds = %rb_enum_values_pack.exit
  %i.p = getelementptr i8, ptr %i.b, i64 24
  %i.q = load i64, ptr %i.p, align 8, !tbaa !63
  %i.r = load i64, ptr %i.a, align 8, !tbaa !11   ; 2 uses
  %i.s = icmp sgt i32 %2, 1
  br i1 %i.s, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.t = call i64 @rb_yield_force_blockarg(i64 noundef %i.r) #13
  br label %enum_yield.exit

bb.f:                                             ; preds = %bb.d
  %i.u = icmp eq i32 %2, 1
  br i1 %i.u, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.v = call i64 @rb_yield(i64 noundef %i.r) #13
  br label %enum_yield.exit

bb.h:                                             ; preds = %bb.f
  %i.w = call i64 @rb_yield_values2(i32 noundef 0, ptr noundef null) #13
  br label %enum_yield.exit

enum_yield.exit:                                  ; preds = %bb.e, %bb.g, %bb.h
  %.0.i6 = phi i64 [ %i.t, %bb.e ], [ %i.v, %bb.g ], [ %i.w, %bb.h ]
  %i.x = call i64 @rb_ary_push(i64 noundef %i.q, i64 noundef %.0.i6) #13 ; 0 uses
  br label %bb.i

bb.i:                                             ; preds = %enum_yield.exit, %rb_enum_values_pack.exit
  ret i64 4
}

declare i32 @rb_method_basic_definition_p(i64 noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: nounwind sspstrong uwtable
define internal noundef i64 @grep_regexp_i(i64 %0, i64 noundef %1, i32 noundef %2, ptr noundef %3, i64 %4) #0 {
bb.a:
  %i.a = inttoptr i64 %1 to ptr                   ; 3 uses
  switch i32 %2, label %bb.c [
    i32 0, label %bb.e
    i32 1, label %bb.b
  ]

bb.b:                                             ; preds = %bb.a
  %i.b = load i64, ptr %3, align 8, !tbaa !11
  br label %rb_enum_values_pack.exit

bb.c:                                             ; preds = %bb.a
  %i.c = sext i32 %2 to i64
  %i.d = tail call i64 @rb_ary_new_from_values(i64 noundef %i.c, ptr noundef %3) #13
  br label %rb_enum_values_pack.exit

rb_enum_values_pack.exit:                         ; preds = %bb.b, %bb.c
  %.0.i = phi i64 [ %i.d, %bb.c ], [ %i.b, %bb.b ] ; 8 uses
  %i.e = and i64 %.0.i, 255
  %i.f = icmp eq i64 %i.e, 12
  br i1 %i.f, label %.thread21, label %bb.d

bb.d:                                             ; preds = %rb_enum_values_pack.exit
  %i.g = icmp eq i64 %.0.i, 0
  %i.h = and i64 %.0.i, 7
  %i.i = icmp ne i64 %i.h, 0
  %i.j = or i1 %i.g, %i.i
  br i1 %i.j, label %bb.e, label %RB_SYMBOL_P.exit

RB_SYMBOL_P.exit:                                 ; preds = %bb.d
  %i.k = inttoptr i64 %.0.i to ptr
  %i.l = load i64, ptr %i.k, align 8, !tbaa !21
  %i.m = and i64 %i.l, 31
  %i.n = icmp eq i64 %i.m, 20
  br i1 %i.n, label %.thread21, label %bb.e

bb.e:                                             ; preds = %RB_SYMBOL_P.exit, %bb.d, %bb.a
  %.0.i1417 = phi i64 [ %.0.i, %RB_SYMBOL_P.exit ], [ %.0.i, %bb.d ], [ 4, %bb.a ] ; 3 uses
  %i.o = tail call i64 @rb_check_string_type(i64 noundef %.0.i1417) #13
  %i.p = icmp eq i64 %i.o, 4
  br i1 %i.p, label %bb.f, label %.thread21

.thread21:                                        ; preds = %RB_SYMBOL_P.exit, %rb_enum_values_pack.exit, %bb.e
  %.0.i141823 = phi i64 [ %.0.i1417, %bb.e ], [ %.0.i, %rb_enum_values_pack.exit ], [ %.0.i, %RB_SYMBOL_P.exit ] ; 2 uses
  %i.q = getelementptr i8, ptr %i.a, i64 16
  %i.r = load i64, ptr %i.q, align 8, !tbaa !60
  %i.s = tail call i64 @rb_reg_match_p(i64 noundef %i.r, i64 noundef %.0.i141823, i64 noundef 0) #13
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %.thread21
  %.0.i141824 = phi i64 [ %.0.i141823, %.thread21 ], [ %.0.i1417, %bb.e ]
  %i.t = phi i64 [ %i.s, %.thread21 ], [ 0, %bb.e ]
  %i.u = getelementptr i8, ptr %i.a, i64 32
  %i.v = load i64, ptr %i.u, align 8, !tbaa !23
  %i.w = icmp eq i64 %i.t, %i.v
  br i1 %i.w, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.x = getelementptr i8, ptr %i.a, i64 24
  %i.y = load i64, ptr %i.x, align 8, !tbaa !63
  %i.z = tail call i64 @rb_ary_push(i64 noundef %i.y, i64 noundef %.0.i141824) #13 ; 0 uses
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  ret i64 4
}

; Function Attrs: nounwind sspstrong uwtable
define internal noundef i64 @grep_i(i64 %0, i64 noundef %1, i32 noundef %2, ptr noundef %3, i64 %4) #0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 3 uses
  %i.b = inttoptr i64 %1 to ptr                   ; 3 uses
  switch i32 %2, label %bb.c [
    i32 0, label %rb_enum_values_pack.exit
end_hunk_0
