Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/abc/original/cadical_sweep?download=true
inline.NumInlined: 1667
inline.NumDeleted: 622
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumRuntimeUnrolled: 7
loop-unroll.NumUnrolled: 10
begin_hunk_0_@_ZN7CaDiCaL8Internal33sweep_substitute_new_equivalencesERNS_7SweeperE:bb.a

_ZNSt6vectorIlSaIlEE11_S_relocateEPlS2_S2_RS0_.exit16.i.i83: ; preds = %bb.ak, %_ZNKSt6vectorIlSaIlEE12_M_check_lenEmPKc.exit.i.i80
  %i.fs = getelementptr inbounds nuw i8, ptr %i.fq, i64 8 ; 2 uses
  %.not.i17.i.i84 = icmp eq ptr %i.fe, null
  br i1 %.not.i17.i.i84, label %_ZNSt6vectorIlSaIlEE17_M_realloc_insertIJRKlEEEvN9__gnu_cxx17__normal_iteratorIPlS1_EEDpOT_.exit.i85, label %bb.al

bb.al:                                            ; preds = %_ZNSt6vectorIlSaIlEE11_S_relocateEPlS2_S2_RS0_.exit16.i.i83
  %i.ft = load ptr, ptr %i.m, align 8, !tbaa !282
  %i.fu = ptrtoint ptr %i.ft to i64
  %i.fv = sub i64 %i.fu, %i.fg
  tail call void @_ZdlPvm(ptr noundef nonnull %i.fe, i64 noundef %i.fv) #21
  br label %_ZNSt6vectorIlSaIlEE17_M_realloc_insertIJRKlEEEvN9__gnu_cxx17__normal_iteratorIPlS1_EEDpOT_.exit.i85

_ZNSt6vectorIlSaIlEE17_M_realloc_insertIJRKlEEEvN9__gnu_cxx17__normal_iteratorIPlS1_EEDpOT_.exit.i85: ; preds = %bb.al, %_ZNSt6vectorIlSaIlEE11_S_relocateEPlS2_S2_RS0_.exit16.i.i83
  store ptr %i.fp, ptr %i.k, align 8, !tbaa !260
  store ptr %i.fs, ptr %i.l, align 8, !tbaa !281
  %i.fw = getelementptr inbounds nuw [8 x i8], ptr %i.fp, i64 %i.fn ; 2 uses
  store ptr %i.fw, ptr %i.m, align 8, !tbaa !282
  br label %_ZNSt6vectorIlSaIlEE9push_backERKl.exit86

_ZNSt6vectorIlSaIlEE9push_backERKl.exit86:        ; preds = %bb.ah, %_ZNSt6vectorIlSaIlEE17_M_realloc_insertIJRKlEEEvN9__gnu_cxx17__normal_iteratorIPlS1_EEDpOT_.exit.i85
  %i.fx = phi ptr [ %i.fc, %bb.ah ], [ %i.fw, %_ZNSt6vectorIlSaIlEE17_M_realloc_insertIJRKlEEEvN9__gnu_cxx17__normal_iteratorIPlS1_EEDpOT_.exit.i85 ] ; 2 uses
  %i.fy = phi ptr [ %i.fd, %bb.ah ], [ %i.fs, %_ZNSt6vectorIlSaIlEE17_M_realloc_insertIJRKlEEEvN9__gnu_cxx17__normal_iteratorIPlS1_EEDpOT_.exit.i85 ] ; 3 uses
  %i.fz = getelementptr inbounds nuw i8, ptr %.sroa.0101.0118, i64 8 ; 2 uses
  %.not.i87 = icmp eq ptr %i.fy, %i.fx
  br i1 %.not.i87, label %bb.an, label %bb.am

bb.am:                                            ; preds = %_ZNSt6vectorIlSaIlEE9push_backERKl.exit86
  %i.ga = load i64, ptr %i.fz, align 8, !tbaa !239
  store i64 %i.ga, ptr %i.fy, align 8, !tbaa !239
  %i.gb = getelementptr inbounds nuw i8, ptr %i.fy, i64 8
  store ptr %i.gb, ptr %i.l, align 8, !tbaa !281
  br label %.sink.split

bb.an:                                            ; preds = %_ZNSt6vectorIlSaIlEE9push_backERKl.exit86
  %i.gc = load ptr, ptr %i.k, align 8, !tbaa !260 ; 4 uses
  %i.gd = ptrtoint ptr %i.fx to i64
  %i.ge = ptrtoint ptr %i.gc to i64               ; 2 uses
  %i.gf = sub i64 %i.gd, %i.ge                    ; 5 uses
  %i.gg = icmp eq i64 %i.gf, 9223372036854775800
  br i1 %i.gg, label %bb.ao, label %_ZNKSt6vectorIlSaIlEE12_M_check_lenEmPKc.exit.i.i88

bb.ao:                                            ; preds = %bb.an
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.11) #22
  unreachable

_ZNKSt6vectorIlSaIlEE12_M_check_lenEmPKc.exit.i.i88: ; preds = %bb.an
  %i.gh = ashr exact i64 %i.gf, 3                 ; 3 uses
  %.sroa.speculated.i.i.i89 = tail call i64 @llvm.umax.i64(i64 %i.gh, i64 1)
  %i.gi = add nsw i64 %.sroa.speculated.i.i.i89, %i.gh ; 2 uses
  %i.gj = icmp ult i64 %i.gi, %i.gh
  %i.gk = tail call i64 @llvm.umin.i64(i64 %i.gi, i64 1152921504606846975)
  %i.gl = select i1 %i.gj, i64 1152921504606846975, i64 %i.gk ; 3 uses
  %.not.i.i.i90 = icmp ne i64 %i.gl, 0
  tail call void @llvm.assume(i1 %.not.i.i.i90)
  %i.gm = shl nuw nsw i64 %i.gl, 3
  %i.gn = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.gm) #20 ; 4 uses
  %i.go = getelementptr inbounds i8, ptr %i.gn, i64 %i.gf ; 2 uses
  %i.gp = load i64, ptr %i.fz, align 8, !tbaa !239
  store i64 %i.gp, ptr %i.go, align 8, !tbaa !239
  %i.gq = icmp sgt i64 %i.gf, 0
  br i1 %i.gq, label %bb.ap, label %_ZNSt6vectorIlSaIlEE11_S_relocateEPlS2_S2_RS0_.exit16.i.i91

bb.ap:                                            ; preds = %_ZNKSt6vectorIlSaIlEE12_M_check_lenEmPKc.exit.i.i88
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.gn, ptr align 8 %i.gc, i64 %i.gf, i1 false)
  br label %_ZNSt6vectorIlSaIlEE11_S_relocateEPlS2_S2_RS0_.exit16.i.i91

_ZNSt6vectorIlSaIlEE11_S_relocateEPlS2_S2_RS0_.exit16.i.i91: ; preds = %bb.ap, %_ZNKSt6vectorIlSaIlEE12_M_check_lenEmPKc.exit.i.i88
  %i.gr = getelementptr inbounds nuw i8, ptr %i.go, i64 8
  %.not.i17.i.i92 = icmp eq ptr %i.gc, null
  br i1 %.not.i17.i.i92, label %_ZNSt6vectorIlSaIlEE17_M_realloc_insertIJRKlEEEvN9__gnu_cxx17__normal_iteratorIPlS1_EEDpOT_.exit.i93, label %bb.aq

bb.aq:                                            ; preds = %_ZNSt6vectorIlSaIlEE11_S_relocateEPlS2_S2_RS0_.exit16.i.i91
  %i.gs = load ptr, ptr %i.m, align 8, !tbaa !282
  %i.gt = ptrtoint ptr %i.gs to i64
  %i.gu = sub i64 %i.gt, %i.ge
  tail call void @_ZdlPvm(ptr noundef nonnull %i.gc, i64 noundef %i.gu) #21
  br label %_ZNSt6vectorIlSaIlEE17_M_realloc_insertIJRKlEEEvN9__gnu_cxx17__normal_iteratorIPlS1_EEDpOT_.exit.i93

_ZNSt6vectorIlSaIlEE17_M_realloc_insertIJRKlEEEvN9__gnu_cxx17__normal_iteratorIPlS1_EEDpOT_.exit.i93: ; preds = %bb.aq, %_ZNSt6vectorIlSaIlEE11_S_relocateEPlS2_S2_RS0_.exit16.i.i91
  store ptr %i.gn, ptr %i.k, align 8, !tbaa !260
  store ptr %i.gr, ptr %i.l, align 8, !tbaa !281
  %i.gv = getelementptr inbounds nuw [8 x i8], ptr %i.gn, i64 %i.gl
  store ptr %i.gv, ptr %i.m, align 8, !tbaa !282
  br label %.sink.split

.sink.split:                                      ; preds = %bb.af, %bb.am, %_ZNSt6vectorIlSaIlEE17_M_realloc_insertIJRKlEEEvN9__gnu_cxx17__normal_iteratorIPlS1_EEDpOT_.exit.i93, %bb.k, %bb.m, %_ZNSt6vectorIlSaIlEE17_M_realloc_insertIJRKlEEEvN9__gnu_cxx17__normal_iteratorIPlS1_EEDpOT_.exit.i61
  %.sink = phi i32 [ %i.q, %bb.k ], [ %i.q, %_ZNSt6vectorIlSaIlEE17_M_realloc_insertIJRKlEEEvN9__gnu_cxx17__normal_iteratorIPlS1_EEDpOT_.exit.i61 ], [ %i.q, %bb.m ], [ %i.o, %_ZNSt6vectorIlSaIlEE17_M_realloc_insertIJRKlEEEvN9__gnu_cxx17__normal_iteratorIPlS1_EEDpOT_.exit.i93 ], [ %i.o, %bb.am ], [ %i.o, %bb.af ]
  tail call void @_ZN7CaDiCaL8Internal11assign_unitEi(ptr noundef nonnull align 8 dereferenceable(7296) %0, i32 noundef %.sink) #19
  br label %bb.ar

bb.ar:                                            ; preds = %.sink.split, %bb.ae, %bb.r
  %i.gw = load ptr, ptr %i.k, align 8, !tbaa !260 ; 2 uses
  %i.gx = load ptr, ptr %i.l, align 8, !tbaa !281
  %.not.i.i = icmp eq ptr %i.gx, %i.gw
  br i1 %.not.i.i, label %_ZNSt6vectorIlSaIlEE5clearEv.exit, label %bb.as

bb.as:                                            ; preds = %bb.ar
  store ptr %i.gw, ptr %i.l, align 8, !tbaa !281
  br label %_ZNSt6vectorIlSaIlEE5clearEv.exit

_ZNSt6vectorIlSaIlEE5clearEv.exit:                ; preds = %bb.ar, %bb.as
  tail call void @_ZN7CaDiCaL8Internal19delete_sweep_binaryERKNS_12sweep_binaryE(ptr noundef nonnull align 8 dereferenceable(7296) %0, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0101.0118)
  %i.gy = icmp eq i32 %.045119, 1
  br i1 %i.gy, label %bb.at, label %bb.ax

bb.at:                                            ; preds = %_ZNSt6vectorIlSaIlEE5clearEv.exit
  %i.gz = load ptr, ptr %i.h, align 8, !tbaa !241 ; 2 uses
  %i.ha = getelementptr inbounds i8, ptr %i.gz, i64 %i.y
  %i.hb = load i8, ptr %i.ha, align 1, !tbaa !242
  %.not51 = icmp eq i8 %i.hb, 0
  br i1 %.not51, label %bb.au, label %bb.ax

bb.au:                                            ; preds = %bb.at
  %i.hc = sext i32 %i.q to i64
  %i.hd = getelementptr inbounds i8, ptr %i.gz, i64 %i.hc
  %i.he = load i8, ptr %i.hd, align 1, !tbaa !242
  %.not52 = icmp eq i8 %i.he, 0
  br i1 %.not52, label %bb.av, label %bb.ax

bb.av:                                            ; preds = %bb.au
  %. = tail call i32 @llvm.umax.i32(i32 %i.r, i32 %i.s) ; 2 uses
  %i.hf = zext nneg i32 %. to i64
  %i.hg = load ptr, ptr %i.n, align 8, !tbaa !263
  %i.hh = getelementptr inbounds nuw [6 x i8], ptr %i.hg, i64 %i.hf
  %i.hi = getelementptr inbounds nuw i8, ptr %i.hh, i64 5
  %i.hj = load i8, ptr %i.hi, align 1
  %.mask.i = and i8 %i.hj, -32
  %i.hk = icmp eq i8 %.mask.i, 64
  br i1 %i.hk, label %bb.ax, label %bb.aw

bb.aw:                                            ; preds = %bb.av
  tail call void @_ZN7CaDiCaL8Internal16mark_substitutedEi(ptr noundef nonnull align 8 dereferenceable(7296) %0, i32 noundef %.) #19
  br label %bb.ax

bb.ax:                                            ; preds = %bb.at, %bb.au, %bb.aw, %bb.av, %_ZNSt6vectorIlSaIlEE5clearEv.exit
  %.2 = phi i32 [ 0, %bb.at ], [ 1, %_ZNSt6vectorIlSaIlEE5clearEv.exit ], [ 0, %bb.av ], [ 0, %bb.aw ], [ 0, %bb.au ]
  %i.hl = getelementptr inbounds nuw i8, ptr %.sroa.0101.0118, i64 16 ; 2 uses
  %.not104 = icmp eq ptr %i.hl, %i.g
  br i1 %.not104, label %.critedge54, label %bb.c

.critedge54:                                      ; preds = %bb.ax
  %.pre130 = load ptr, ptr %i.d, align 8, !tbaa !255 ; 2 uses
  %.pre131 = load ptr, ptr %i.f, align 8, !tbaa !297
  %i.hm = icmp eq ptr %.pre131, %.pre130
  br i1 %i.hm, label %_ZNSt6vectorIN7CaDiCaL12sweep_binaryESaIS1_EE5clearEv.exit, label %bb.ay

bb.ay:                                            ; preds = %.critedge54
  store ptr %.pre130, ptr %i.f, align 8, !tbaa !297
  br label %_ZNSt6vectorIN7CaDiCaL12sweep_binaryESaIS1_EE5clearEv.exit

_ZNSt6vectorIN7CaDiCaL12sweep_binaryESaIS1_EE5clearEv.exit: ; preds = %bb.b, %bb.ay, %.critedge54, %.critedge, %bb.a
  ret void
}

declare void @_ZN7CaDiCaL8Internal16mark_substitutedEi(ptr noundef nonnull align 8 dereferenceable(7296), i32 noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nounwind uwtable
define void @_ZN7CaDiCaL8Internal12sweep_removeERNS_7SweeperEi(ptr nofree noundef nonnull readnone align 8 captures(none) dereferenceable(7296) %0, ptr noundef nonnull align 8 dereferenceable(464) %1, i32 noundef %2) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 296 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !268  ; 7 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 304 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !268  ; 8 uses
  %i.e = ptrtoaddr ptr %i.d to i64
  br label %bb.b

bb.b:                                             ; preds = %bb.b, %bb.a
  %indvar = phi i64 [ %indvar.next, %bb.b ], [ 0, %bb.a ] ; 2 uses
  %.sroa.035.0 = phi ptr [ %i.g, %bb.b ], [ %i.b, %bb.a ] ; 7 uses
  %i.f = load i32, ptr %.sroa.035.0, align 4, !tbaa !207
  %.not = icmp eq i32 %i.f, %2
  %i.g = getelementptr inbounds nuw i8, ptr %.sroa.035.0, i64 4
  %indvar.next = add i64 %indvar, 1
  br i1 %.not, label %.preheader46, label %bb.b, !llvm.loop !5

.preheader46:                                     ; preds = %bb.b
  %.cast = ptrtoint ptr %i.b to i64               ; 6 uses
  %.not4069 = icmp eq ptr %.sroa.035.0, %i.b
  br i1 %.not4069, label %.critedge, label %.lr.ph71

bb.c:                                             ; preds = %.lr.ph71
  %.not40 = icmp eq ptr %i.h, %i.b
  br i1 %.not40, label %.critedge, label %.lr.ph71, !llvm.loop !6

.lr.ph71:                                         ; preds = %.preheader46, %bb.c
  %.sroa.028.070 = phi ptr [ %i.h, %bb.c ], [ %.sroa.035.0, %.preheader46 ] ; 3 uses
  %i.h = getelementptr inbounds i8, ptr %.sroa.028.070, i64 -4 ; 3 uses
  %i.i = load i32, ptr %i.h, align 4, !tbaa !207
  %.not10 = icmp eq i32 %i.i, 0
  br i1 %.not10, label %..critedge_crit_edge, label %bb.c, !llvm.loop !6

..critedge_crit_edge:                             ; preds = %.lr.ph71
  %.pre = ptrtoint ptr %.sroa.028.070 to i64
  br label %.critedge, !llvm.loop !6

.critedge:                                        ; preds = %bb.c, %.preheader46, %..critedge_crit_edge
  %.pre-phi = phi i64 [ %.pre, %..critedge_crit_edge ], [ %.cast, %.preheader46 ], [ %.cast, %bb.c ]
  %.sroa.028.0.lcssa = phi ptr [ %.sroa.028.070, %..critedge_crit_edge ], [ %i.b, %.preheader46 ], [ %i.b, %bb.c ] ; 9 uses
  %.sroa.028.0.lcssa73 = ptrtoaddr ptr %.sroa.028.0.lcssa to i64
  %wcslen = tail call i64 @wcslen(ptr nonnull %.sroa.035.0)
  %i.j = shl i64 %wcslen, 2                       ; 3 uses
  %scevgep = getelementptr i8, ptr %.sroa.035.0, i64 %i.j ; 2 uses
  %i.k = ptrtoint ptr %scevgep to i64
  %i.l = sub i64 %i.k, %.pre-phi
  %i.m = and i64 %i.l, 17179869180
  %i.n = icmp eq i64 %i.m, 8
  br i1 %i.n, label %.preheader, label %.preheader44

.preheader44:                                     ; preds = %.critedge
  %.not4147 = icmp eq ptr %.sroa.028.0.lcssa, %i.d
  br i1 %.not4147, label %.loopexit, label %.lr.ph

.preheader:                                       ; preds = %.critedge
  %.sroa.018.050 = getelementptr inbounds nuw i8, ptr %scevgep, i64 4 ; 5 uses
  %.not4351 = icmp eq ptr %.sroa.018.050, %i.d
  br i1 %.not4351, label %.loopexit, label %.lr.ph54.preheader

.lr.ph54.preheader:                               ; preds = %.preheader
  %i.o = add i64 %i.e, -8
  %i.p = mul i64 %indvar, -4                      ; 2 uses
  %i.q = add i64 %i.o, %i.p
  %i.r = add i64 %i.j, %.cast
  %i.s = sub i64 %i.q, %i.r                       ; 2 uses
  %i.t = lshr i64 %i.s, 2
  %i.u = add nuw nsw i64 %i.t, 1                  ; 2 uses
  %min.iters.check = icmp ult i64 %i.s, 108
  br i1 %min.iters.check, label %.lr.ph54.preheader77, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph54.preheader
  %reass.sub = sub i64 %i.p, %.cast
  %i.v = add i64 %reass.sub, -4
  %i.w = add i64 %i.v, %.sroa.028.0.lcssa73
  %i.x = sub i64 %i.j, %i.w
  %diff.check = icmp ugt i64 %i.x, -32
  br i1 %diff.check, label %.lr.ph54.preheader77, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.u, 9223372036854775800      ; 3 uses
  %i.y = shl i64 %n.vec, 2                        ; 2 uses
  %i.z = getelementptr i8, ptr %.sroa.018.050, i64 %i.y
  %i.aa = getelementptr i8, ptr %.sroa.028.0.lcssa, i64 %i.y ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.ab = shl i64 %index, 2                       ; 2 uses
  %next.gep = getelementptr i8, ptr %.sroa.018.050, i64 %i.ab ; 2 uses
  %next.gep74 = getelementptr i8, ptr %.sroa.028.0.lcssa, i64 %i.ab ; 2 uses
  %i.ac = getelementptr i8, ptr %next.gep, i64 16
  %wide.load = load <4 x i32>, ptr %next.gep, align 4, !tbaa !207
  %wide.load75 = load <4 x i32>, ptr %i.ac, align 4, !tbaa !207
  %i.ad = getelementptr i8, ptr %next.gep74, i64 16
  store <4 x i32> %wide.load, ptr %next.gep74, align 4, !tbaa !207
  store <4 x i32> %wide.load75, ptr %i.ad, align 4, !tbaa !207
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.ae = icmp eq i64 %index.next, %n.vec
  br i1 %i.ae, label %middle.block, label %vector.body, !llvm.loop !343

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.u, %n.vec
  br i1 %cmp.n, label %.loopexit, label %.lr.ph54.preheader77

.lr.ph54.preheader77:                             ; preds = %vector.memcheck, %.lr.ph54.preheader, %middle.block
  %.sroa.018.053.ph = phi ptr [ %.sroa.018.050, %vector.memcheck ], [ %.sroa.018.050, %.lr.ph54.preheader ], [ %i.z, %middle.block ]
  %.sroa.021.052.ph = phi ptr [ %.sroa.028.0.lcssa, %vector.memcheck ], [ %.sroa.028.0.lcssa, %.lr.ph54.preheader ], [ %i.aa, %middle.block ]
  br label %.lr.ph54

.lr.ph54:                                         ; preds = %.lr.ph54.preheader77, %.lr.ph54
  %.sroa.018.053 = phi ptr [ %.sroa.018.0, %.lr.ph54 ], [ %.sroa.018.053.ph, %.lr.ph54.preheader77 ] ; 2 uses
  %.sroa.021.052 = phi ptr [ %i.ag, %.lr.ph54 ], [ %.sroa.021.052.ph, %.lr.ph54.preheader77 ] ; 2 uses
  %i.af = load i32, ptr %.sroa.018.053, align 4, !tbaa !207
  %i.ag = getelementptr inbounds nuw i8, ptr %.sroa.021.052, i64 4 ; 2 uses
  store i32 %i.af, ptr %.sroa.021.052, align 4, !tbaa !207
  %.sroa.018.0 = getelementptr inbounds nuw i8, ptr %.sroa.018.053, i64 4 ; 2 uses
  %.not43 = icmp eq ptr %.sroa.018.0, %i.d
  br i1 %.not43, label %.loopexit, label %.lr.ph54, !llvm.loop !344

.lr.ph:                                           ; preds = %.preheader44, %bb.e
  %.sroa.013.049 = phi ptr [ %i.aj, %bb.e ], [ %.sroa.028.0.lcssa, %.preheader44 ] ; 3 uses
  %.sroa.021.148 = phi ptr [ %.sroa.021.2, %bb.e ], [ %.sroa.028.0.lcssa, %.preheader44 ] ; 3 uses
  %.not42 = icmp eq ptr %.sroa.013.049, %.sroa.035.0
  br i1 %.not42, label %bb.e, label %bb.d

bb.d:                                             ; preds = %.lr.ph
  %i.ah = load i32, ptr %.sroa.013.049, align 4, !tbaa !207
  %i.ai = getelementptr inbounds nuw i8, ptr %.sroa.021.148, i64 4
  store i32 %i.ah, ptr %.sroa.021.148, align 4, !tbaa !207
  br label %bb.e

bb.e:                                             ; preds = %.lr.ph, %bb.d
  %.sroa.021.2 = phi ptr [ %i.ai, %bb.d ], [ %.sroa.021.148, %.lr.ph ] ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %.sroa.013.049, i64 4 ; 2 uses
  %.not41 = icmp eq ptr %i.aj, %i.d
  br i1 %.not41, label %.loopexit, label %.lr.ph, !llvm.loop !7

.loopexit:                                        ; preds = %bb.e, %.lr.ph54, %middle.block, %.preheader44, %.preheader
  %.sroa.021.3 = phi ptr [ %i.ag, %.lr.ph54 ], [ %.sroa.028.0.lcssa, %.preheader ], [ %i.d, %.preheader44 ], [ %i.aa, %middle.block ], [ %.sroa.021.2, %bb.e ] ; 2 uses
  %i.ak = ptrtoint ptr %.sroa.021.3 to i64
  %i.al = sub i64 %i.ak, %.cast                   ; 2 uses
  %i.am = ashr exact i64 %i.al, 2                 ; 3 uses
  %i.an = ptrtoint ptr %i.d to i64
  %i.ao = sub i64 %i.an, %.cast
  %i.ap = ashr exact i64 %i.ao, 2                 ; 3 uses
  %i.aq = icmp ugt i64 %i.am, %i.ap
  br i1 %i.aq, label %bb.f, label %bb.g

bb.f:                                             ; preds = %.loopexit
  %i.ar = sub nuw nsw i64 %i.am, %i.ap
  tail call void @_ZNSt6vectorIiSaIiEE17_M_default_appendEm(ptr noundef nonnull align 8 dereferenceable(24) %i.a, i64 noundef %i.ar)
  br label %_ZNSt6vectorIiSaIiEE6resizeEm.exit

bb.g:                                             ; preds = %.loopexit
  %i.as = icmp uge i64 %i.am, %i.ap
  %.not.i.i = icmp eq ptr %i.d, %.sroa.021.3
  %or.cond = select i1 %i.as, i1 true, i1 %.not.i.i
  br i1 %or.cond, label %_ZNSt6vectorIiSaIiEE6resizeEm.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.at = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.al
  store ptr %i.at, ptr %i.c, align 8, !tbaa !211
  br label %_ZNSt6vectorIiSaIiEE6resizeEm.exit

_ZNSt6vectorIiSaIiEE6resizeEm.exit:               ; preds = %bb.f, %bb.g, %bb.h
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define void @_ZN7CaDiCaL8Internal23flip_partition_literalsERNS_7SweeperE(ptr nofree noundef nonnull align 8 captures(address) dereferenceable(7296) %0, ptr noundef nonnull align 8 dereferenceable(464) %1) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 4384
  %i.b = load i32, ptr %i.a, align 8, !tbaa !287  ; 2 uses
  %.not = icmp eq i32 %i.b, 0
  br i1 %.not, label %_ZN7CaDiCaL8Internal25terminated_asynchronouslyEi.exit.thread85, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 2216 ; 4 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !220
  %i.e = tail call i32 @cadical_kitten_status(ptr noundef %i.d) #19
  %.not42 = icmp eq i32 %i.e, 10
  br i1 %.not42, label %.preheader, label %_ZN7CaDiCaL8Internal25terminated_asynchronouslyEi.exit.thread85

.preheader:                                       ; preds = %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 296 ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 304 ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 432 ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 440 ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 6368 ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 6376 ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 7272 ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 3208 ; 3 uses
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 3212 ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 7264
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 4416
  br label %bb.c

bb.c:                                             ; preds = %.preheader, %_ZN7CaDiCaL8Internal25terminated_asynchronouslyEi.exit
  %.037 = phi i32 [ %i.q, %_ZN7CaDiCaL8Internal25terminated_asynchronouslyEi.exit ], [ 0, %.preheader ]
  %i.q = add nuw i32 %.037, 1                     ; 2 uses
  %i.r = load ptr, ptr %i.f, align 8, !tbaa !268  ; 6 uses
  %i.s = load ptr, ptr %i.g, align 8, !tbaa !268  ; 2 uses
  %.not87104 = icmp eq ptr %i.r, %i.s
  br i1 %.not87104, label %._crit_edge111, label %.lr.ph110

.lr.ph110:                                        ; preds = %bb.c, %.thread76
  %.029108 = phi i32 [ %.482, %.thread76 ], [ 0, %bb.c ] ; 2 uses
  %.033107 = phi i1 [ %.33681, %.thread76 ], [ false, %bb.c ] ; 2 uses
  %.sroa.066.0106 = phi ptr [ %.sroa.066.1, %.thread76 ], [ %i.r, %bb.c ] ; 4 uses
  %.sroa.063.0105 = phi ptr [ %i.ao, %.thread76 ], [ %i.r, %bb.c ] ; 3 uses
  %wcslen = tail call i64 @wcslen(ptr %.sroa.063.0105) ; 2 uses
  %i.t = shl i64 %wcslen, 2                       ; 2 uses
  %scevgep = getelementptr i8, ptr %.sroa.063.0105, i64 %i.t ; 2 uses
  %i.u = trunc i64 %wcslen to i32                 ; 2 uses
  %.not8895 = icmp eq i64 %i.t, 0
  br i1 %.not8895, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph110, %bb.k
  %.027100 = phi i32 [ %.2.ph, %bb.k ], [ %i.u, %.lr.ph110 ] ; 4 uses
  %.13099 = phi i32 [ %.332.ph, %bb.k ], [ %.029108, %.lr.ph110 ] ; 4 uses
  %.13498 = phi i1 [ %.235.ph, %bb.k ], [ %.033107, %.lr.ph110 ]
  %.sroa.050.097 = phi ptr [ %i.al, %bb.k ], [ %.sroa.063.0105, %.lr.ph110 ] ; 2 uses
  %.sroa.053.096 = phi ptr [ %.sroa.053.2.ph, %bb.k ], [ %.sroa.066.0106, %.lr.ph110 ] ; 7 uses
  %i.v = load i32, ptr %.sroa.050.097, align 4, !tbaa !207 ; 4 uses
  br i1 %.13498, label %bb.d, label %bb.e

bb.d:                                             ; preds = %.lr.ph
  %i.w = getelementptr inbounds nuw i8, ptr %.sroa.053.096, i64 4
  store i32 %i.v, ptr %.sroa.053.096, align 4, !tbaa !207
  br label %bb.k

bb.e:                                             ; preds = %.lr.ph
  %i.x = load ptr, ptr %i.c, align 8, !tbaa !220
  %i.y = tail call i64 @cadical_kitten_current_ticks(ptr noundef %i.x) #19
  %i.z = load i64, ptr %i.h, align 8, !tbaa !219
  %i.aa = add i64 %i.z, %i.y
  %i.ab = load i64, ptr %i.i, align 8, !tbaa !259
  %.not.i.not = icmp ult i64 %i.aa, %i.ab
  br i1 %.not.i.not, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ac = getelementptr inbounds nuw i8, ptr %.sroa.053.096, i64 4
  store i32 %i.v, ptr %.sroa.053.096, align 4, !tbaa !207
  br label %bb.k

bb.g:                                             ; preds = %bb.e
  %i.ad = load ptr, ptr %i.c, align 8, !tbaa !220
  %i.ae = tail call noundef zeroext i1 @cadical_kitten_flip_signed_literal(ptr noundef %i.ad, i32 noundef %i.v) #19
  br i1 %i.ae, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.af = add i32 %.13099, 1                      ; 2 uses
  %i.ag = add i32 %.027100, -1                    ; 2 uses
  %i.ah = icmp ult i32 %i.ag, 2
  br i1 %i.ah, label %.thread76, label %bb.j

bb.i:                                             ; preds = %bb.g
  %i.ai = getelementptr inbounds nuw i8, ptr %.sroa.053.096, i64 4
  store i32 %i.v, ptr %.sroa.053.096, align 4, !tbaa !207
  br label %bb.j

bb.j:                                             ; preds = %bb.h, %bb.i
  %.sroa.053.1 = phi ptr [ %.sroa.053.096, %bb.h ], [ %i.ai, %bb.i ]
  %.231 = phi i32 [ %i.af, %bb.h ], [ %.13099, %bb.i ]
  %.128 = phi i32 [ %i.ag, %bb.h ], [ %.027100, %bb.i ]
  %i.aj = load i64, ptr %i.j, align 8, !tbaa !298
  %i.ak = add nsw i64 %i.aj, 1
  store i64 %i.ak, ptr %i.j, align 8, !tbaa !298
  br label %bb.k

bb.k:                                             ; preds = %bb.d, %bb.f, %bb.j
  %.sroa.053.2.ph = phi ptr [ %.sroa.053.1, %bb.j ], [ %i.ac, %bb.f ], [ %i.w, %bb.d ] ; 2 uses
  %.235.ph = phi i1 [ false, %bb.j ], [ true, %bb.f ], [ true, %bb.d ] ; 2 uses
  %.332.ph = phi i32 [ %.231, %bb.j ], [ %.13099, %bb.f ], [ %.13099, %bb.d ] ; 2 uses
  %.2.ph = phi i32 [ %.128, %bb.j ], [ %.027100, %bb.f ], [ %.027100, %bb.d ] ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %.sroa.050.097, i64 4 ; 2 uses
  %.not88 = icmp eq ptr %i.al, %scevgep
  br i1 %.not88, label %._crit_edge, label %.lr.ph, !llvm.loop !345

._crit_edge:                                      ; preds = %bb.k, %.lr.ph110
  %.sroa.053.0.lcssa = phi ptr [ %.sroa.066.0106, %.lr.ph110 ], [ %.sroa.053.2.ph, %bb.k ] ; 2 uses
  %.134.lcssa = phi i1 [ %.033107, %.lr.ph110 ], [ %.235.ph, %bb.k ] ; 2 uses
  %.130.lcssa = phi i32 [ %.029108, %.lr.ph110 ], [ %.332.ph, %bb.k ] ; 2 uses
  %.027.lcssa = phi i32 [ %i.u, %.lr.ph110 ], [ %.2.ph, %bb.k ]
  %i.am = icmp ugt i32 %.027.lcssa, 1
  br i1 %i.am, label %bb.l, label %.thread76

bb.l:                                             ; preds = %._crit_edge
  %i.an = getelementptr inbounds nuw i8, ptr %.sroa.053.0.lcssa, i64 4
  store i32 0, ptr %.sroa.053.0.lcssa, align 4, !tbaa !207
  br label %.thread76

.thread76:                                        ; preds = %bb.h, %bb.l, %._crit_edge
  %.482 = phi i32 [ %.130.lcssa, %bb.l ], [ %.130.lcssa, %._crit_edge ], [ %i.af, %bb.h ] ; 2 uses
  %.33681 = phi i1 [ %.134.lcssa, %bb.l ], [ %.134.lcssa, %._crit_edge ], [ false, %bb.h ]
  %.sroa.066.1 = phi ptr [ %i.an, %bb.l ], [ %.sroa.066.0106, %._crit_edge ], [ %.sroa.066.0106, %bb.h ] ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %scevgep, i64 4 ; 2 uses
  %.not87 = icmp eq ptr %i.ao, %i.s
  br i1 %.not87, label %._crit_edge111.loopexit, label %.lr.ph110, !llvm.loop !346

._crit_edge111.loopexit:                          ; preds = %.thread76
  %.pre = load ptr, ptr %i.f, align 8, !tbaa !268
  %.pre114 = load ptr, ptr %i.g, align 8, !tbaa !211
  br label %._crit_edge111

._crit_edge111:                                   ; preds = %._crit_edge111.loopexit, %bb.c
  %i.ap = phi ptr [ %i.r, %bb.c ], [ %.pre114, %._crit_edge111.loopexit ] ; 2 uses
  %i.aq = phi ptr [ %i.r, %bb.c ], [ %.pre, %._crit_edge111.loopexit ] ; 2 uses
  %.sroa.066.0.lcssa = phi ptr [ %i.r, %bb.c ], [ %.sroa.066.1, %._crit_edge111.loopexit ] ; 2 uses
  %.029.lcssa = phi i32 [ 0, %bb.c ], [ %.482, %._crit_edge111.loopexit ] ; 2 uses
  %i.ar = zext i32 %.029.lcssa to i64
  %i.as = load i64, ptr %i.k, align 8, !tbaa !299
  %i.at = add nsw i64 %i.as, %i.ar
  store i64 %i.at, ptr %i.k, align 8, !tbaa !299
  %i.au = ptrtoint ptr %.sroa.066.0.lcssa to i64
  %i.av = ptrtoint ptr %i.aq to i64               ; 2 uses
  %i.aw = sub i64 %i.au, %i.av                    ; 2 uses
  %i.ax = ashr exact i64 %i.aw, 2                 ; 3 uses
  %i.ay = ptrtoint ptr %i.ap to i64
  %i.az = sub i64 %i.ay, %i.av
  %i.ba = ashr exact i64 %i.az, 2                 ; 3 uses
  %i.bb = icmp ugt i64 %i.ax, %i.ba
  br i1 %i.bb, label %bb.m, label %bb.n

bb.m:                                             ; preds = %._crit_edge111
  %i.bc = sub nuw nsw i64 %i.ax, %i.ba
  tail call void @_ZNSt6vectorIiSaIiEE17_M_default_appendEm(ptr noundef nonnull align 8 dereferenceable(24) %i.f, i64 noundef %i.bc)
  br label %_ZNSt6vectorIiSaIiEE6resizeEm.exit

bb.n:                                             ; preds = %._crit_edge111
  %i.bd = icmp uge i64 %i.ax, %i.ba
  %.not.i.i = icmp eq ptr %i.ap, %.sroa.066.0.lcssa
  %or.cond = or i1 %i.bd, %.not.i.i
  br i1 %or.cond, label %_ZNSt6vectorIiSaIiEE6resizeEm.exit, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.be = getelementptr inbounds nuw i8, ptr %i.aq, i64 %i.aw
  store ptr %i.be, ptr %i.g, align 8, !tbaa !211
  br label %_ZNSt6vectorIiSaIiEE6resizeEm.exit

_ZNSt6vectorIiSaIiEE6resizeEm.exit:               ; preds = %bb.m, %bb.n, %bb.o
  %i.bf = load volatile i8, ptr %i.l, align 8, !tbaa !270, !range !237, !noundef !213
  %i.bg = trunc nuw i8 %i.bf to i1
  br i1 %i.bg, label %_ZN7CaDiCaL8Internal25terminated_asynchronouslyEi.exit.thread85, label %bb.p

bb.p:                                             ; preds = %_ZNSt6vectorIiSaIiEE6resizeEm.exit
  %i.bh = load i32, ptr %i.n, align 4, !tbaa !271 ; 3 uses
  %.not.i44 = icmp eq i32 %i.bh, 0
  br i1 %.not.i44, label %bb.r, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.bi = add nsw i32 %i.bh, -1
  store i32 %i.bi, ptr %i.n, align 4, !tbaa !271
  %i.bj = icmp eq i32 %i.bh, 1
  br i1 %i.bj, label %.sink.split.i, label %bb.r

bb.r:                                             ; preds = %bb.q, %bb.p
  %i.bk = load ptr, ptr %i.o, align 8, !tbaa !221
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bk, i64 400
  %i.bm = load ptr, ptr %i.bl, align 8, !tbaa !234 ; 3 uses
  %.not3.i = icmp eq ptr %i.bm, null
  br i1 %.not3.i, label %bb.u, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.bn = load i32, ptr %i.m, align 8, !tbaa !272 ; 2 uses
  %i.bo = add nsw i32 %i.bn, -1
  store i32 %i.bo, ptr %i.m, align 8, !tbaa !272
  %.not4.i = icmp eq i32 %i.bn, 0
  br i1 %.not4.i, label %bb.t, label %bb.u

bb.t:                                             ; preds = %bb.s
  %i.bp = load i32, ptr %i.p, align 8, !tbaa !273
  store i32 %i.bp, ptr %i.m, align 8, !tbaa !272
  %i.bq = load ptr, ptr %i.bm, align 8, !tbaa !275
  %i.br = getelementptr inbounds nuw i8, ptr %i.bq, i64 16
  %i.bs = load ptr, ptr %i.br, align 8
  %i.bt = tail call noundef zeroext i1 %i.bs(ptr noundef nonnull align 8 dereferenceable(8) %i.bm) #19, !inline_history !3
  br i1 %i.bt, label %.sink.split.i, label %bb.u

.sink.split.i:                                    ; preds = %bb.t, %bb.q
  store volatile i8 1, ptr %i.l, align 8, !tbaa !270
  br label %_ZN7CaDiCaL8Internal25terminated_asynchronouslyEi.exit.thread85

bb.u:                                             ; preds = %bb.s, %bb.r, %bb.t
  %i.bu = load ptr, ptr %i.c, align 8, !tbaa !220
  %i.bv = tail call i64 @cadical_kitten_current_ticks(ptr noundef %i.bu) #19
  %i.bw = load i64, ptr %i.h, align 8, !tbaa !219
  %i.bx = add i64 %i.bw, %i.bv
  %i.by = load i64, ptr %i.i, align 8, !tbaa !259
  %.not.i45.not = icmp ult i64 %i.bx, %i.by
  br i1 %.not.i45.not, label %_ZN7CaDiCaL8Internal25terminated_asynchronouslyEi.exit, label %_ZN7CaDiCaL8Internal25terminated_asynchronouslyEi.exit.thread85

_ZN7CaDiCaL8Internal25terminated_asynchronouslyEi.exit: ; preds = %bb.u
  %i.bz = icmp ne i32 %.029.lcssa, 0
  %i.ca = icmp ult i32 %i.q, %i.b
  %i.cb = select i1 %i.bz, i1 %i.ca, i1 false
  br i1 %i.cb, label %bb.c, label %_ZN7CaDiCaL8Internal25terminated_asynchronouslyEi.exit.thread85, !llvm.loop !347

_ZN7CaDiCaL8Internal25terminated_asynchronouslyEi.exit.thread85: ; preds = %bb.u, %_ZNSt6vectorIiSaIiEE6resizeEm.exit, %_ZN7CaDiCaL8Internal25terminated_asynchronouslyEi.exit, %.sink.split.i, %bb.b, %bb.a
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define noundef zeroext i1 @_ZN7CaDiCaL8Internal28sweep_equivalence_candidatesERNS_7SweeperEii(ptr noundef nonnull align 8 dereferenceable(7296) %0, ptr noundef nonnull align 8 dereferenceable(464) %1, i32 noundef %2, i32 noundef %3) local_unnamed_addr #0 align 2 {
bb.a:
  %4 = alloca %"struct.CaDiCaL::sweep_binary", align 8 ; 8 uses
  %5 = alloca %"struct.CaDiCaL::sweep_binary", align 8 ; 8 uses
  %6 = alloca %"struct.CaDiCaL::sweep_proof_clause", align 8 ; 3 uses
  %7 = alloca %"struct.CaDiCaL::sweep_proof_clause", align 8 ; 3 uses
  %8 = alloca %"struct.CaDiCaL::sweep_proof_clause", align 8 ; 3 uses
  %9 = alloca %"struct.CaDiCaL::sweep_proof_clause", align 8 ; 3 uses
end_hunk_0
begin_hunk_1_@_ZN7CaDiCaL8Internal28sweep_equivalence_candidatesERNS_7SweeperEii:bb.a
  %i.im = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i, i64 48
  %i.in = load ptr, ptr %i.im, align 8, !tbaa !209 ; 3 uses
  %.not.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.in, null
  br i1 %.not.i.i.i.i.i.i.i.i.i, label %_ZNSt6vectorIjSaIjEED2Ev.exit.i.i.i.i.i.i, label %bb.bo

bb.bo:                                            ; preds = %.lr.ph.i.i.i.i
  %i.io = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i, i64 64
  %i.ip = load ptr, ptr %i.io, align 8, !tbaa !251
  %i.iq = ptrtoint ptr %i.ip to i64
  %i.ir = ptrtoint ptr %i.in to i64
  %i.is = sub i64 %i.iq, %i.ir
  tail call void @_ZdlPvm(ptr noundef nonnull %i.in, i64 noundef %i.is) #21
  br label %_ZNSt6vectorIjSaIjEED2Ev.exit.i.i.i.i.i.i

_ZNSt6vectorIjSaIjEED2Ev.exit.i.i.i.i.i.i:        ; preds = %bb.bo, %.lr.ph.i.i.i.i
  %i.it = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i, i64 24
  %i.iu = load ptr, ptr %i.it, align 8, !tbaa !212 ; 3 uses
  %.not.i.i.i1.i.i.i.i.i.i = icmp eq ptr %i.iu, null
  br i1 %.not.i.i.i1.i.i.i.i.i.i, label %_ZSt8_DestroyIN7CaDiCaL18sweep_proof_clauseEEvPT_.exit.i.i.i.i, label %bb.bp

bb.bp:                                            ; preds = %_ZNSt6vectorIjSaIjEED2Ev.exit.i.i.i.i.i.i
  %i.iv = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i, i64 40
  %i.iw = load ptr, ptr %i.iv, align 8, !tbaa !252
  %i.ix = ptrtoint ptr %i.iw to i64
  %i.iy = ptrtoint ptr %i.iu to i64
  %i.iz = sub i64 %i.ix, %i.iy
  tail call void @_ZdlPvm(ptr noundef nonnull %i.iu, i64 noundef %i.iz) #21
  br label %_ZSt8_DestroyIN7CaDiCaL18sweep_proof_clauseEEvPT_.exit.i.i.i.i

_ZSt8_DestroyIN7CaDiCaL18sweep_proof_clauseEEvPT_.exit.i.i.i.i: ; preds = %bb.bp, %_ZNSt6vectorIjSaIjEED2Ev.exit.i.i.i.i.i.i
  %i.ja = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i, i64 72 ; 2 uses
  %.not.i.i.i.i145 = icmp eq ptr %i.ja, %i.il
  br i1 %.not.i.i.i.i145, label %_ZSt8_DestroyIPN7CaDiCaL18sweep_proof_clauseEEvT_S3_.exit.i.i, label %.lr.ph.i.i.i.i, !llvm.loop !0

_ZSt8_DestroyIPN7CaDiCaL18sweep_proof_clauseEEvT_S3_.exit.i.i: ; preds = %_ZSt8_DestroyIN7CaDiCaL18sweep_proof_clauseEEvPT_.exit.i.i.i.i
  store ptr %i.ij, ptr %i.ik, align 8, !tbaa !250
  br label %_ZNSt6vectorIiSaIiEE6resizeEm.exit

bb.bq:                                            ; preds = %_ZN7CaDiCaL8Internal11sweep_solveEv.exit130
  %i.jb = load i64, ptr %i.gc, align 8, !tbaa !355
  %i.jc = add nsw i64 %i.jb, 1
  store i64 %i.jc, ptr %i.gc, align 8, !tbaa !355
  store i32 1, ptr %i.gf, align 8, !tbaa !285
  %i.jd = load ptr, ptr %i.m, align 8, !tbaa !220
  %i.je = tail call i32 @cadical_kitten_compute_clausal_core(ptr noundef %i.jd, ptr noundef null) #19 ; 0 uses
  %i.jf = load i8, ptr %i.gi, align 8, !tbaa !236, !range !237, !noundef !213
  %i.jg = trunc nuw i8 %i.jf to i1
  %i.jh = load ptr, ptr %i.m, align 8, !tbaa !220 ; 2 uses
  br i1 %i.jg, label %bb.br, label %bb.bs

bb.br:                                            ; preds = %bb.bq
  tail call void @cadical_kitten_trace_core(ptr noundef %i.jh, ptr noundef nonnull align 8 dereferenceable(464) %1, ptr noundef nonnull @_ZN7CaDiCaLL26save_core_clause_with_lratEPvjjbmPKjmS2_) #19
  br label %_ZN7CaDiCaL8Internal9save_coreERNS_7SweeperEj.exit146

bb.bs:                                            ; preds = %bb.bq
  tail call void @cadical_kitten_traverse_core_clauses_with_id(ptr noundef %i.jh, ptr noundef nonnull align 8 dereferenceable(464) %1, ptr noundef nonnull @_ZN7CaDiCaLL16save_core_clauseEPvjbmPKj) #19
  br label %_ZN7CaDiCaL8Internal9save_coreERNS_7SweeperEj.exit146

_ZN7CaDiCaL8Internal9save_coreERNS_7SweeperEj.exit146: ; preds = %bb.br, %bb.bs
  tail call void @_ZN7CaDiCaL8Internal8add_coreERNS_7SweeperEj(ptr noundef nonnull align 8 dereferenceable(7296) %0, ptr noundef nonnull align 8 dereferenceable(464) %1, i32 noundef 0)
  tail call void @_ZN7CaDiCaL8Internal8add_coreERNS_7SweeperEj(ptr noundef nonnull align 8 dereferenceable(7296) %0, ptr noundef nonnull align 8 dereferenceable(464) %1, i32 noundef 1)
  %i.ji = getelementptr inbounds nuw i8, ptr %0, i64 472
  %i.jj = load ptr, ptr %i.ji, align 8, !tbaa !241 ; 2 uses
  %i.jk = sext i32 %2 to i64                      ; 2 uses
  %i.jl = getelementptr inbounds i8, ptr %i.jj, i64 %i.jk
  %i.jm = load i8, ptr %i.jl, align 1, !tbaa !242
  %.not110 = icmp eq i8 %i.jm, 0
  br i1 %.not110, label %bb.bt, label %bb.ca

bb.bt:                                            ; preds = %_ZN7CaDiCaL8Internal9save_coreERNS_7SweeperEj.exit146
  %i.jn = sext i32 %3 to i64
  %i.jo = getelementptr inbounds i8, ptr %i.jj, i64 %i.jn
  %i.jp = load i8, ptr %i.jo, align 1, !tbaa !242
  %.not111 = icmp eq i8 %i.jp, 0
  br i1 %.not111, label %bb.bu, label %bb.ca

bb.bu:                                            ; preds = %bb.bt
  %i.jq = getelementptr inbounds nuw i8, ptr %0, i64 6416 ; 2 uses
  %i.jr = load i64, ptr %i.jq, align 8, !tbaa !300
  %i.js = add nsw i64 %i.jr, 1
  store i64 %i.js, ptr %i.jq, align 8, !tbaa !300
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #19
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #19
  %i.jt = getelementptr inbounds nuw i8, ptr %4, i64 4 ; 2 uses
  %i.ju = getelementptr inbounds nuw i8, ptr %5, i64 4 ; 2 uses
  %i.jv = getelementptr inbounds nuw i8, ptr %1, i64 392 ; 2 uses
  %i.jw = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  %i.jx = getelementptr inbounds nuw i8, ptr %1, i64 416 ; 2 uses
  %i.jy = getelementptr inbounds nuw i8, ptr %5, i64 8
  br i1 %i.bq, label %bb.bv, label %bb.bw

bb.bv:                                            ; preds = %bb.bu
  store i32 %2, ptr %4, align 8, !tbaa !295
  store i32 %i.dz, ptr %i.jt, align 4, !tbaa !296
  store i32 %i.ea, ptr %5, align 8, !tbaa !295
  store i32 %3, ptr %i.ju, align 4, !tbaa !296
  %i.jz = load ptr, ptr %i.jv, align 8, !tbaa !276
  %i.ka = getelementptr inbounds i8, ptr %i.jz, i64 -72
  call void @_ZN7CaDiCaL18sweep_proof_clauseC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(72) %6, ptr noundef nonnull align 8 dereferenceable(72) %i.ka)
  %i.kb = call noundef i64 @_ZN7CaDiCaL8Internal16add_sweep_binaryENS_18sweep_proof_clauseEii(ptr noundef nonnull align 8 dereferenceable(7296) %0, ptr noundef nonnull align 8 %6, i32 noundef %2, i32 noundef %i.dz)
  store i64 %i.kb, ptr %i.jw, align 8, !tbaa !294
  call void @_ZN7CaDiCaL18sweep_proof_clauseD2Ev(ptr noundef nonnull align 8 dead_on_return(72) dereferenceable(72) %6) #19
  %i.kc = load ptr, ptr %i.jx, align 8, !tbaa !276
  %i.kd = getelementptr inbounds i8, ptr %i.kc, i64 -72
  call void @_ZN7CaDiCaL18sweep_proof_clauseC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(72) %7, ptr noundef nonnull align 8 dereferenceable(72) %i.kd)
  %i.ke = call noundef i64 @_ZN7CaDiCaL8Internal16add_sweep_binaryENS_18sweep_proof_clauseEii(ptr noundef nonnull align 8 dereferenceable(7296) %0, ptr noundef nonnull align 8 %7, i32 noundef %i.ea, i32 noundef %3)
  br label %bb.bx

bb.bw:                                            ; preds = %bb.bu
  store i32 %i.dz, ptr %4, align 8, !tbaa !295
  store i32 %2, ptr %i.jt, align 4, !tbaa !296
  store i32 %3, ptr %5, align 8, !tbaa !295
  store i32 %i.ea, ptr %i.ju, align 4, !tbaa !296
  %i.kf = load ptr, ptr %i.jv, align 8, !tbaa !276
  %i.kg = getelementptr inbounds i8, ptr %i.kf, i64 -72
  call void @_ZN7CaDiCaL18sweep_proof_clauseC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(72) %8, ptr noundef nonnull align 8 dereferenceable(72) %i.kg)
  %i.kh = call noundef i64 @_ZN7CaDiCaL8Internal16add_sweep_binaryENS_18sweep_proof_clauseEii(ptr noundef nonnull align 8 dereferenceable(7296) %0, ptr noundef nonnull align 8 %8, i32 noundef %i.dz, i32 noundef %2)
  store i64 %i.kh, ptr %i.jw, align 8, !tbaa !294
  call void @_ZN7CaDiCaL18sweep_proof_clauseD2Ev(ptr noundef nonnull align 8 dead_on_return(72) dereferenceable(72) %8) #19
  %i.ki = load ptr, ptr %i.jx, align 8, !tbaa !276
  %i.kj = getelementptr inbounds i8, ptr %i.ki, i64 -72
  call void @_ZN7CaDiCaL18sweep_proof_clauseC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(72) %9, ptr noundef nonnull align 8 dereferenceable(72) %i.kj)
  %i.kk = call noundef i64 @_ZN7CaDiCaL8Internal16add_sweep_binaryENS_18sweep_proof_clauseEii(ptr noundef nonnull align 8 dereferenceable(7296) %0, ptr noundef nonnull align 8 %9, i32 noundef %3, i32 noundef %i.ea)
  br label %bb.bx

bb.bx:                                            ; preds = %bb.bw, %bb.bv
  %.sink275 = phi i64 [ %i.kk, %bb.bw ], [ %i.ke, %bb.bv ]
  %.sink = phi ptr [ %9, %bb.bw ], [ %7, %bb.bv ]
  store i64 %.sink275, ptr %i.jy, align 8, !tbaa !294
  call void @_ZN7CaDiCaL18sweep_proof_clauseD2Ev(ptr noundef nonnull align 8 dead_on_return(72) dereferenceable(72) %.sink) #19
  %i.kl = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.km = load i64, ptr %i.kl, align 8, !tbaa !294
  %i.kn = icmp ne i64 %i.km, 0
  %i.ko = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.kp = load i64, ptr %i.ko, align 8
  %i.kq = icmp ne i64 %i.kp, 0
  %or.cond = select i1 %i.kn, i1 %i.kq, i1 false
  br i1 %or.cond, label %bb.by, label %bb.bz

bb.by:                                            ; preds = %bb.bx
  %i.kr = getelementptr inbounds nuw i8, ptr %1, i64 360 ; 2 uses
  call void @_ZNSt6vectorIN7CaDiCaL12sweep_binaryESaIS1_EE9push_backERKS1_(ptr noundef nonnull align 8 dereferenceable(24) %i.kr, ptr noundef nonnull align 8 dereferenceable(16) %4)
  call void @_ZNSt6vectorIN7CaDiCaL12sweep_binaryESaIS1_EE9push_backERKS1_(ptr noundef nonnull align 8 dereferenceable(24) %i.kr, ptr noundef nonnull align 8 dereferenceable(16) %5)
  br label %bb.bz

bb.bz:                                            ; preds = %bb.by, %bb.bx
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #19
  br label %bb.ca

bb.ca:                                            ; preds = %bb.bz, %bb.bt, %_ZN7CaDiCaL8Internal9save_coreERNS_7SweeperEj.exit146
  %i.ks = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.kt = load ptr, ptr %i.ks, align 8, !tbaa !210 ; 4 uses
  br i1 %i.cv, label %bb.cb, label %bb.cj

bb.cb:                                            ; preds = %bb.ca
  %i.ku = sext i32 %3 to i64
  %i.kv = getelementptr inbounds [4 x i8], ptr %i.kt, i64 %i.ku
  store i32 %2, ptr %i.kv, align 4, !tbaa !207
  %i.kw = sext i32 %i.dz to i64
  %i.kx = getelementptr inbounds [4 x i8], ptr %i.kt, i64 %i.kw
  store i32 %i.ea, ptr %i.kx, align 4, !tbaa !207
  %i.ky = load ptr, ptr %i.a, align 8, !tbaa !268 ; 7 uses
  %i.kz = load ptr, ptr %i.c, align 8, !tbaa !268 ; 8 uses
  %i.la = ptrtoaddr ptr %i.kz to i64
  br label %bb.cc

bb.cc:                                            ; preds = %bb.cc, %bb.cb
  %indvar297 = phi i64 [ %indvar.next298, %bb.cc ], [ 0, %bb.cb ] ; 2 uses
  %.sroa.035.0.i = phi ptr [ %i.lc, %bb.cc ], [ %i.ky, %bb.cb ] ; 7 uses
  %i.lb = load i32, ptr %.sroa.035.0.i, align 4, !tbaa !207
  %.not.i = icmp eq i32 %i.lb, %3
  %i.lc = getelementptr inbounds nuw i8, ptr %.sroa.035.0.i, i64 4
  %indvar.next298 = add i64 %indvar297, 1
  br i1 %.not.i, label %.preheader46.i, label %bb.cc, !llvm.loop !5

.preheader46.i:                                   ; preds = %bb.cc
  %.cast.i = ptrtoint ptr %i.ky to i64            ; 6 uses
  %.not40.i283 = icmp eq ptr %.sroa.035.0.i, %i.ky
  br i1 %.not40.i283, label %.critedge.i, label %.lr.ph285

bb.cd:                                            ; preds = %.lr.ph285
  %.not40.i = icmp eq ptr %i.ld, %i.ky
  br i1 %.not40.i, label %.critedge.i, label %.lr.ph285, !llvm.loop !6

.lr.ph285:                                        ; preds = %.preheader46.i, %bb.cd
  %.sroa.028.0.i284 = phi ptr [ %i.ld, %bb.cd ], [ %.sroa.035.0.i, %.preheader46.i ] ; 3 uses
  %i.ld = getelementptr inbounds i8, ptr %.sroa.028.0.i284, i64 -4 ; 3 uses
  %i.le = load i32, ptr %i.ld, align 4, !tbaa !207
  %.not10.i = icmp eq i32 %i.le, 0
  br i1 %.not10.i, label %..critedge_crit_edge.i, label %bb.cd, !llvm.loop !6

..critedge_crit_edge.i:                           ; preds = %.lr.ph285
  %.pre.i = ptrtoint ptr %.sroa.028.0.i284 to i64
  br label %.critedge.i, !llvm.loop !6

.critedge.i:                                      ; preds = %bb.cd, %.preheader46.i, %..critedge_crit_edge.i
  %.pre-phi.i = phi i64 [ %.pre.i, %..critedge_crit_edge.i ], [ %.cast.i, %.preheader46.i ], [ %.cast.i, %bb.cd ]
  %.sroa.028.0.lcssa.i = phi ptr [ %.sroa.028.0.i284, %..critedge_crit_edge.i ], [ %i.ky, %.preheader46.i ], [ %i.ky, %bb.cd ] ; 9 uses
  %.sroa.028.0.lcssa.i296 = ptrtoaddr ptr %.sroa.028.0.lcssa.i to i64
  %wcslen.i = call i64 @wcslen(ptr nonnull %.sroa.035.0.i)
  %i.lf = shl i64 %wcslen.i, 2                    ; 3 uses
  %scevgep.i = getelementptr i8, ptr %.sroa.035.0.i, i64 %i.lf ; 2 uses
  %i.lg = ptrtoint ptr %scevgep.i to i64
  %i.lh = sub i64 %i.lg, %.pre-phi.i
  %i.li = and i64 %i.lh, 17179869180
  %i.lj = icmp eq i64 %i.li, 8
  br i1 %i.lj, label %.preheader.i, label %.preheader44.i

.preheader44.i:                                   ; preds = %.critedge.i
  %.not4147.i = icmp eq ptr %.sroa.028.0.lcssa.i, %i.kz
  br i1 %.not4147.i, label %.loopexit.i, label %.lr.ph.i

.preheader.i:                                     ; preds = %.critedge.i
  %.sroa.018.050.i = getelementptr inbounds nuw i8, ptr %scevgep.i, i64 4 ; 5 uses
  %.not4351.i = icmp eq ptr %.sroa.018.050.i, %i.kz
  br i1 %.not4351.i, label %.loopexit.i, label %.lr.ph54.i.preheader

.lr.ph54.i.preheader:                             ; preds = %.preheader.i
  %i.lk = add i64 %i.la, -8
  %i.ll = mul i64 %indvar297, -4                  ; 2 uses
  %i.lm = add i64 %i.lk, %i.ll
  %i.ln = add i64 %i.lf, %.cast.i
  %i.lo = sub i64 %i.lm, %i.ln                    ; 2 uses
  %i.lp = lshr i64 %i.lo, 2
  %i.lq = add nuw nsw i64 %i.lp, 1                ; 2 uses
  %min.iters.check300 = icmp ult i64 %i.lo, 108
  br i1 %min.iters.check300, label %.lr.ph54.i.preheader317, label %vector.memcheck301

vector.memcheck301:                               ; preds = %.lr.ph54.i.preheader
  %reass.sub316 = sub i64 %i.ll, %.cast.i
  %i.lr = add i64 %reass.sub316, -4
  %i.ls = add i64 %i.lr, %.sroa.028.0.lcssa.i296
  %i.lt = sub i64 %i.lf, %i.ls
  %diff.check302 = icmp ugt i64 %i.lt, -32
  br i1 %diff.check302, label %.lr.ph54.i.preheader317, label %vector.ph303

vector.ph303:                                     ; preds = %vector.memcheck301
  %n.vec304 = and i64 %i.lq, 9223372036854775800  ; 3 uses
  %i.lu = shl i64 %n.vec304, 2                    ; 2 uses
  %i.lv = getelementptr i8, ptr %.sroa.018.050.i, i64 %i.lu
  %i.lw = getelementptr i8, ptr %.sroa.028.0.lcssa.i, i64 %i.lu ; 2 uses
  br label %vector.body305

vector.body305:                                   ; preds = %vector.body305, %vector.ph303
  %index306 = phi i64 [ 0, %vector.ph303 ], [ %index.next311, %vector.body305 ] ; 2 uses
  %i.lx = shl i64 %index306, 2                    ; 2 uses
  %next.gep307 = getelementptr i8, ptr %.sroa.018.050.i, i64 %i.lx ; 2 uses
  %next.gep308 = getelementptr i8, ptr %.sroa.028.0.lcssa.i, i64 %i.lx ; 2 uses
  %i.ly = getelementptr i8, ptr %next.gep307, i64 16
  %wide.load309 = load <4 x i32>, ptr %next.gep307, align 4, !tbaa !207
  %wide.load310 = load <4 x i32>, ptr %i.ly, align 4, !tbaa !207
  %i.lz = getelementptr i8, ptr %next.gep308, i64 16
  store <4 x i32> %wide.load309, ptr %next.gep308, align 4, !tbaa !207
  store <4 x i32> %wide.load310, ptr %i.lz, align 4, !tbaa !207
  %index.next311 = add nuw i64 %index306, 8       ; 2 uses
  %i.ma = icmp eq i64 %index.next311, %n.vec304
  br i1 %i.ma, label %middle.block312, label %vector.body305, !llvm.loop !348

middle.block312:                                  ; preds = %vector.body305
  %cmp.n313 = icmp eq i64 %i.lq, %n.vec304
  br i1 %cmp.n313, label %.loopexit.i, label %.lr.ph54.i.preheader317

.lr.ph54.i.preheader317:                          ; preds = %vector.memcheck301, %.lr.ph54.i.preheader, %middle.block312
  %.sroa.018.053.i.ph = phi ptr [ %.sroa.018.050.i, %vector.memcheck301 ], [ %.sroa.018.050.i, %.lr.ph54.i.preheader ], [ %i.lv, %middle.block312 ]
  %.sroa.021.052.i.ph = phi ptr [ %.sroa.028.0.lcssa.i, %vector.memcheck301 ], [ %.sroa.028.0.lcssa.i, %.lr.ph54.i.preheader ], [ %i.lw, %middle.block312 ]
  br label %.lr.ph54.i

.lr.ph54.i:                                       ; preds = %.lr.ph54.i.preheader317, %.lr.ph54.i
  %.sroa.018.053.i = phi ptr [ %.sroa.018.0.i, %.lr.ph54.i ], [ %.sroa.018.053.i.ph, %.lr.ph54.i.preheader317 ] ; 2 uses
  %.sroa.021.052.i = phi ptr [ %i.mc, %.lr.ph54.i ], [ %.sroa.021.052.i.ph, %.lr.ph54.i.preheader317 ] ; 2 uses
  %i.mb = load i32, ptr %.sroa.018.053.i, align 4, !tbaa !207
  %i.mc = getelementptr inbounds nuw i8, ptr %.sroa.021.052.i, i64 4 ; 2 uses
  store i32 %i.mb, ptr %.sroa.021.052.i, align 4, !tbaa !207
  %.sroa.018.0.i = getelementptr inbounds nuw i8, ptr %.sroa.018.053.i, i64 4 ; 2 uses
  %.not43.i = icmp eq ptr %.sroa.018.0.i, %i.kz
  br i1 %.not43.i, label %.loopexit.i, label %.lr.ph54.i, !llvm.loop !349

.lr.ph.i:                                         ; preds = %.preheader44.i, %bb.cf
  %.sroa.013.049.i = phi ptr [ %i.mf, %bb.cf ], [ %.sroa.028.0.lcssa.i, %.preheader44.i ] ; 3 uses
  %.sroa.021.148.i = phi ptr [ %.sroa.021.2.i, %bb.cf ], [ %.sroa.028.0.lcssa.i, %.preheader44.i ] ; 3 uses
  %.not42.i = icmp eq ptr %.sroa.013.049.i, %.sroa.035.0.i
  br i1 %.not42.i, label %bb.cf, label %bb.ce

bb.ce:                                            ; preds = %.lr.ph.i
  %i.md = load i32, ptr %.sroa.013.049.i, align 4, !tbaa !207
  %i.me = getelementptr inbounds nuw i8, ptr %.sroa.021.148.i, i64 4
  store i32 %i.md, ptr %.sroa.021.148.i, align 4, !tbaa !207
  br label %bb.cf

bb.cf:                                            ; preds = %bb.ce, %.lr.ph.i
  %.sroa.021.2.i = phi ptr [ %i.me, %bb.ce ], [ %.sroa.021.148.i, %.lr.ph.i ] ; 2 uses
  %i.mf = getelementptr inbounds nuw i8, ptr %.sroa.013.049.i, i64 4 ; 2 uses
  %.not41.i = icmp eq ptr %i.mf, %i.kz
  br i1 %.not41.i, label %.loopexit.i, label %.lr.ph.i, !llvm.loop !7

.loopexit.i:                                      ; preds = %bb.cf, %.lr.ph54.i, %middle.block312, %.preheader.i, %.preheader44.i
  %.sroa.021.3.i = phi ptr [ %i.mc, %.lr.ph54.i ], [ %.sroa.028.0.lcssa.i, %.preheader.i ], [ %i.kz, %.preheader44.i ], [ %i.lw, %middle.block312 ], [ %.sroa.021.2.i, %bb.cf ] ; 2 uses
  %i.mg = ptrtoint ptr %.sroa.021.3.i to i64
  %i.mh = sub i64 %i.mg, %.cast.i                 ; 2 uses
  %i.mi = ashr exact i64 %i.mh, 2                 ; 3 uses
  %i.mj = ptrtoint ptr %i.kz to i64
  %i.mk = sub i64 %i.mj, %.cast.i
  %i.ml = ashr exact i64 %i.mk, 2                 ; 3 uses
  %i.mm = icmp ugt i64 %i.mi, %i.ml
  br i1 %i.mm, label %bb.cg, label %bb.ch

bb.cg:                                            ; preds = %.loopexit.i
  %i.mn = sub nuw nsw i64 %i.mi, %i.ml
  call void @_ZNSt6vectorIiSaIiEE17_M_default_appendEm(ptr noundef nonnull align 8 dereferenceable(24) %i.a, i64 noundef %i.mn)
  br label %_ZN7CaDiCaL8Internal12sweep_removeERNS_7SweeperEi.exit

bb.ch:                                            ; preds = %.loopexit.i
  %i.mo = icmp uge i64 %i.mi, %i.ml
  %.not.i.i.i = icmp eq ptr %i.kz, %.sroa.021.3.i
  %or.cond.i = select i1 %i.mo, i1 true, i1 %.not.i.i.i
  br i1 %or.cond.i, label %_ZN7CaDiCaL8Internal12sweep_removeERNS_7SweeperEi.exit, label %bb.ci

bb.ci:                                            ; preds = %bb.ch
  %i.mp = getelementptr inbounds nuw i8, ptr %i.ky, i64 %i.mh
  store ptr %i.mp, ptr %i.c, align 8, !tbaa !211
  br label %_ZN7CaDiCaL8Internal12sweep_removeERNS_7SweeperEi.exit

bb.cj:                                            ; preds = %bb.ca
  %i.mq = getelementptr inbounds [4 x i8], ptr %i.kt, i64 %i.jk
  store i32 %3, ptr %i.mq, align 4, !tbaa !207
  %i.mr = sext i32 %i.ea to i64
  %i.ms = getelementptr inbounds [4 x i8], ptr %i.kt, i64 %i.mr
  store i32 %i.dz, ptr %i.ms, align 4, !tbaa !207
  %i.mt = load ptr, ptr %i.a, align 8, !tbaa !268 ; 7 uses
  %i.mu = load ptr, ptr %i.c, align 8, !tbaa !268 ; 8 uses
  %i.mv = ptrtoaddr ptr %i.mu to i64
  br label %bb.ck

bb.ck:                                            ; preds = %bb.ck, %bb.cj
  %indvar = phi i64 [ %indvar.next, %bb.ck ], [ 0, %bb.cj ] ; 2 uses
  %.sroa.035.0.i147 = phi ptr [ %i.mx, %bb.ck ], [ %i.mt, %bb.cj ] ; 7 uses
  %i.mw = load i32, ptr %.sroa.035.0.i147, align 4, !tbaa !207
  %.not.i148 = icmp eq i32 %i.mw, %2
  %i.mx = getelementptr inbounds nuw i8, ptr %.sroa.035.0.i147, i64 4
  %indvar.next = add i64 %indvar, 1
  br i1 %.not.i148, label %.preheader46.i149, label %bb.ck, !llvm.loop !5

.preheader46.i149:                                ; preds = %bb.ck
  %.cast.i150 = ptrtoint ptr %i.mt to i64         ; 6 uses
  %.not40.i152281 = icmp eq ptr %.sroa.035.0.i147, %i.mt
  br i1 %.not40.i152281, label %.critedge.i156, label %.lr.ph

bb.cl:                                            ; preds = %.lr.ph
  %.not40.i152 = icmp eq ptr %i.my, %i.mt
  br i1 %.not40.i152, label %.critedge.i156, label %.lr.ph, !llvm.loop !6

.lr.ph:                                           ; preds = %.preheader46.i149, %bb.cl
  %.sroa.028.0.i151282 = phi ptr [ %i.my, %bb.cl ], [ %.sroa.035.0.i147, %.preheader46.i149 ] ; 3 uses
  %i.my = getelementptr inbounds i8, ptr %.sroa.028.0.i151282, i64 -4 ; 3 uses
  %i.mz = load i32, ptr %i.my, align 4, !tbaa !207
  %.not10.i153 = icmp eq i32 %i.mz, 0
  br i1 %.not10.i153, label %..critedge_crit_edge.i154, label %bb.cl, !llvm.loop !6

..critedge_crit_edge.i154:                        ; preds = %.lr.ph
  %.pre.i155 = ptrtoint ptr %.sroa.028.0.i151282 to i64
  br label %.critedge.i156, !llvm.loop !6

.critedge.i156:                                   ; preds = %bb.cl, %.preheader46.i149, %..critedge_crit_edge.i154
  %.pre-phi.i157 = phi i64 [ %.pre.i155, %..critedge_crit_edge.i154 ], [ %.cast.i150, %.preheader46.i149 ], [ %.cast.i150, %bb.cl ]
  %.sroa.028.0.lcssa.i158 = phi ptr [ %.sroa.028.0.i151282, %..critedge_crit_edge.i154 ], [ %i.mt, %.preheader46.i149 ], [ %i.mt, %bb.cl ] ; 9 uses
  %.sroa.028.0.lcssa.i158287 = ptrtoaddr ptr %.sroa.028.0.lcssa.i158 to i64
  %wcslen.i159 = call i64 @wcslen(ptr nonnull %.sroa.035.0.i147)
  %i.na = shl i64 %wcslen.i159, 2                 ; 3 uses
  %scevgep.i160 = getelementptr i8, ptr %.sroa.035.0.i147, i64 %i.na ; 2 uses
  %i.nb = ptrtoint ptr %scevgep.i160 to i64
  %i.nc = sub i64 %i.nb, %.pre-phi.i157
  %i.nd = and i64 %i.nc, 17179869180
  %i.ne = icmp eq i64 %i.nd, 8
  br i1 %i.ne, label %.preheader.i173, label %.preheader44.i161

.preheader44.i161:                                ; preds = %.critedge.i156
  %.not4147.i162 = icmp eq ptr %.sroa.028.0.lcssa.i158, %i.mu
  br i1 %.not4147.i162, label %.loopexit.i169, label %.lr.ph.i163

.preheader.i173:                                  ; preds = %.critedge.i156
  %.sroa.018.050.i174 = getelementptr inbounds nuw i8, ptr %scevgep.i160, i64 4 ; 5 uses
  %.not4351.i175 = icmp eq ptr %.sroa.018.050.i174, %i.mu
  br i1 %.not4351.i175, label %.loopexit.i169, label %.lr.ph54.i176.preheader

.lr.ph54.i176.preheader:                          ; preds = %.preheader.i173
  %i.nf = add i64 %i.mv, -8
  %i.ng = mul i64 %indvar, -4                     ; 2 uses
  %i.nh = add i64 %i.nf, %i.ng
  %i.ni = add i64 %i.na, %.cast.i150
  %i.nj = sub i64 %i.nh, %i.ni                    ; 2 uses
  %i.nk = lshr i64 %i.nj, 2
  %i.nl = add nuw nsw i64 %i.nk, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %i.nj, 108
  br i1 %min.iters.check, label %.lr.ph54.i176.preheader320, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph54.i176.preheader
  %reass.sub = sub i64 %i.ng, %.cast.i150
  %i.nm = add i64 %reass.sub, -4
  %i.nn = add i64 %i.nm, %.sroa.028.0.lcssa.i158287
  %i.no = sub i64 %i.na, %i.nn
  %diff.check = icmp ugt i64 %i.no, -32
  br i1 %diff.check, label %.lr.ph54.i176.preheader320, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.nl, 9223372036854775800     ; 3 uses
  %i.np = shl i64 %n.vec, 2                       ; 2 uses
  %i.nq = getelementptr i8, ptr %.sroa.018.050.i174, i64 %i.np
  %i.nr = getelementptr i8, ptr %.sroa.028.0.lcssa.i158, i64 %i.np ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.ns = shl i64 %index, 2                       ; 2 uses
  %next.gep = getelementptr i8, ptr %.sroa.018.050.i174, i64 %i.ns ; 2 uses
  %next.gep288 = getelementptr i8, ptr %.sroa.028.0.lcssa.i158, i64 %i.ns ; 2 uses
  %i.nt = getelementptr i8, ptr %next.gep, i64 16
  %wide.load = load <4 x i32>, ptr %next.gep, align 4, !tbaa !207
  %wide.load289 = load <4 x i32>, ptr %i.nt, align 4, !tbaa !207
  %i.nu = getelementptr i8, ptr %next.gep288, i64 16
  store <4 x i32> %wide.load, ptr %next.gep288, align 4, !tbaa !207
  store <4 x i32> %wide.load289, ptr %i.nu, align 4, !tbaa !207
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.nv = icmp eq i64 %index.next, %n.vec
  br i1 %i.nv, label %middle.block, label %vector.body, !llvm.loop !350

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.nl, %n.vec
  br i1 %cmp.n, label %.loopexit.i169, label %.lr.ph54.i176.preheader320

.lr.ph54.i176.preheader320:                       ; preds = %vector.memcheck, %.lr.ph54.i176.preheader, %middle.block
  %.sroa.018.053.i177.ph = phi ptr [ %.sroa.018.050.i174, %vector.memcheck ], [ %.sroa.018.050.i174, %.lr.ph54.i176.preheader ], [ %i.nq, %middle.block ]
  %.sroa.021.052.i178.ph = phi ptr [ %.sroa.028.0.lcssa.i158, %vector.memcheck ], [ %.sroa.028.0.lcssa.i158, %.lr.ph54.i176.preheader ], [ %i.nr, %middle.block ]
  br label %.lr.ph54.i176

.lr.ph54.i176:                                    ; preds = %.lr.ph54.i176.preheader320, %.lr.ph54.i176
  %.sroa.018.053.i177 = phi ptr [ %.sroa.018.0.i179, %.lr.ph54.i176 ], [ %.sroa.018.053.i177.ph, %.lr.ph54.i176.preheader320 ] ; 2 uses
  %.sroa.021.052.i178 = phi ptr [ %i.nx, %.lr.ph54.i176 ], [ %.sroa.021.052.i178.ph, %.lr.ph54.i176.preheader320 ] ; 2 uses
  %i.nw = load i32, ptr %.sroa.018.053.i177, align 4, !tbaa !207
  %i.nx = getelementptr inbounds nuw i8, ptr %.sroa.021.052.i178, i64 4 ; 2 uses
  store i32 %i.nw, ptr %.sroa.021.052.i178, align 4, !tbaa !207
  %.sroa.018.0.i179 = getelementptr inbounds nuw i8, ptr %.sroa.018.053.i177, i64 4 ; 2 uses
  %.not43.i180 = icmp eq ptr %.sroa.018.0.i179, %i.mu
  br i1 %.not43.i180, label %.loopexit.i169, label %.lr.ph54.i176, !llvm.loop !351

.lr.ph.i163:                                      ; preds = %.preheader44.i161, %bb.cn
  %.sroa.013.049.i164 = phi ptr [ %i.oa, %bb.cn ], [ %.sroa.028.0.lcssa.i158, %.preheader44.i161 ] ; 3 uses
  %.sroa.021.148.i165 = phi ptr [ %.sroa.021.2.i167, %bb.cn ], [ %.sroa.028.0.lcssa.i158, %.preheader44.i161 ] ; 3 uses
  %.not42.i166 = icmp eq ptr %.sroa.013.049.i164, %.sroa.035.0.i147
  br i1 %.not42.i166, label %bb.cn, label %bb.cm

bb.cm:                                            ; preds = %.lr.ph.i163
  %i.ny = load i32, ptr %.sroa.013.049.i164, align 4, !tbaa !207
  %i.nz = getelementptr inbounds nuw i8, ptr %.sroa.021.148.i165, i64 4
  store i32 %i.ny, ptr %.sroa.021.148.i165, align 4, !tbaa !207
  br label %bb.cn

bb.cn:                                            ; preds = %bb.cm, %.lr.ph.i163
  %.sroa.021.2.i167 = phi ptr [ %i.nz, %bb.cm ], [ %.sroa.021.148.i165, %.lr.ph.i163 ] ; 2 uses
  %i.oa = getelementptr inbounds nuw i8, ptr %.sroa.013.049.i164, i64 4 ; 2 uses
  %.not41.i168 = icmp eq ptr %i.oa, %i.mu
  br i1 %.not41.i168, label %.loopexit.i169, label %.lr.ph.i163, !llvm.loop !7

.loopexit.i169:                                   ; preds = %bb.cn, %.lr.ph54.i176, %middle.block, %.preheader.i173, %.preheader44.i161
  %.sroa.021.3.i170 = phi ptr [ %i.nx, %.lr.ph54.i176 ], [ %.sroa.028.0.lcssa.i158, %.preheader.i173 ], [ %i.mu, %.preheader44.i161 ], [ %i.nr, %middle.block ], [ %.sroa.021.2.i167, %bb.cn ] ; 2 uses
  %i.ob = ptrtoint ptr %.sroa.021.3.i170 to i64
  %i.oc = sub i64 %i.ob, %.cast.i150              ; 2 uses
  %i.od = ashr exact i64 %i.oc, 2                 ; 3 uses
  %i.oe = ptrtoint ptr %i.mu to i64
  %i.of = sub i64 %i.oe, %.cast.i150
  %i.og = ashr exact i64 %i.of, 2                 ; 3 uses
  %i.oh = icmp ugt i64 %i.od, %i.og
  br i1 %i.oh, label %bb.co, label %bb.cp

bb.co:                                            ; preds = %.loopexit.i169
  %i.oi = sub nuw nsw i64 %i.od, %i.og
  call void @_ZNSt6vectorIiSaIiEE17_M_default_appendEm(ptr noundef nonnull align 8 dereferenceable(24) %i.a, i64 noundef %i.oi)
  br label %_ZN7CaDiCaL8Internal12sweep_removeERNS_7SweeperEi.exit

bb.cp:                                            ; preds = %.loopexit.i169
  %i.oj = icmp uge i64 %i.od, %i.og
  %.not.i.i.i171 = icmp eq ptr %i.mu, %.sroa.021.3.i170
  %or.cond.i172 = select i1 %i.oj, i1 true, i1 %.not.i.i.i171
  br i1 %or.cond.i172, label %_ZN7CaDiCaL8Internal12sweep_removeERNS_7SweeperEi.exit, label %bb.cq

bb.cq:                                            ; preds = %bb.cp
  %i.ok = getelementptr inbounds nuw i8, ptr %i.mt, i64 %i.oc
  store ptr %i.ok, ptr %i.c, align 8, !tbaa !211
  br label %_ZN7CaDiCaL8Internal12sweep_removeERNS_7SweeperEi.exit

_ZN7CaDiCaL8Internal12sweep_removeERNS_7SweeperEi.exit: ; preds = %bb.cq, %bb.cp, %bb.co, %bb.ci, %bb.ch, %bb.cg
  %.pre-phi = phi i32 [ %i.bp, %bb.cq ], [ %i.bp, %bb.cp ], [ %i.bp, %bb.co ], [ %i.bo, %bb.ci ], [ %i.bo, %bb.ch ], [ %i.bo, %bb.cg ] ; 8 uses
  call void @_ZN7CaDiCaL8Internal10clear_coreERNS_7SweeperEj(ptr noundef nonnull align 8 dereferenceable(7296) %0, ptr noundef nonnull align 8 dereferenceable(464) %1, i32 noundef 0)
  call void @_ZN7CaDiCaL8Internal10clear_coreERNS_7SweeperEj(ptr noundef nonnull align 8 dereferenceable(7296) %0, ptr noundef nonnull align 8 dereferenceable(464) %1, i32 noundef 1)
  %i.ol = getelementptr inbounds nuw i8, ptr %0, i64 760
  %i.om = zext nneg i32 %.pre-phi to i64          ; 4 uses
  %i.on = load ptr, ptr %i.ol, align 8, !tbaa !263
  %i.oo = getelementptr inbounds nuw [6 x i8], ptr %i.on, i64 %i.om
  %i.op = getelementptr inbounds nuw i8, ptr %i.oo, i64 5
  %i.oq = load i8, ptr %i.op, align 1
  %.mask.i.i.i = and i8 %i.oq, -32
  %i.or = icmp eq i8 %.mask.i.i.i, 32
  br i1 %i.or, label %bb.cr, label %_ZNSt6vectorIiSaIiEE6resizeEm.exit

bb.cr:                                            ; preds = %_ZN7CaDiCaL8Internal12sweep_removeERNS_7SweeperEi.exit
  %i.os = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.ot = load ptr, ptr %i.os, align 8, !tbaa !212 ; 4 uses
  %i.ou = getelementptr inbounds nuw [4 x i8], ptr %i.ot, i64 %i.om ; 2 uses
  %i.ov = load i32, ptr %i.ou, align 4, !tbaa !207 ; 4 uses
  %.not.i182 = icmp eq i32 %i.ov, 0
  br i1 %.not.i182, label %bb.cz, label %bb.cs

bb.cs:                                            ; preds = %bb.cr
  %i.ow = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.ox = load ptr, ptr %i.ow, align 8, !tbaa !212 ; 2 uses
  %i.oy = getelementptr inbounds nuw [4 x i8], ptr %i.ox, i64 %i.om ; 2 uses
  %i.oz = load i32, ptr %i.oy, align 4, !tbaa !207 ; 3 uses
  %i.pa = sext i32 %i.ov to i64
  %i.pb = getelementptr inbounds nuw [4 x i8], ptr %i.ox, i64 %i.pa
  store i32 %i.oz, ptr %i.pb, align 4, !tbaa !207
  %i.pc = icmp eq i32 %i.oz, 0
  br i1 %i.pc, label %bb.ct, label %bb.cu

bb.ct:                                            ; preds = %bb.cs
  %i.pd = getelementptr inbounds nuw i8, ptr %1, i64 96
  store i32 %i.ov, ptr %i.pd, align 8, !tbaa !216
  br label %bb.cv

bb.cu:                                            ; preds = %bb.cs
  %i.pe = zext i32 %i.oz to i64
  %i.pf = getelementptr inbounds nuw [4 x i8], ptr %i.ot, i64 %i.pe
  store i32 %i.ov, ptr %i.pf, align 4, !tbaa !207
  br label %bb.cv

bb.cv:                                            ; preds = %bb.cu, %bb.ct
  %i.pg = getelementptr inbounds nuw i8, ptr %1, i64 100 ; 2 uses
  %i.ph = load i32, ptr %i.pg, align 4, !tbaa !215 ; 3 uses
  %i.pi = icmp eq i32 %i.ph, 0
  br i1 %i.pi, label %bb.cw, label %bb.cx

bb.cw:                                            ; preds = %bb.cv
  %i.pj = getelementptr inbounds nuw i8, ptr %1, i64 96
  store i32 %.pre-phi, ptr %i.pj, align 8, !tbaa !216
  br label %bb.cy

bb.cx:                                            ; preds = %bb.cv
  %i.pk = zext i32 %i.ph to i64
  %i.pl = getelementptr inbounds nuw [4 x i8], ptr %i.ot, i64 %i.pk
  store i32 %.pre-phi, ptr %i.pl, align 4, !tbaa !207
  br label %bb.cy

bb.cy:                                            ; preds = %bb.cx, %bb.cw
  store i32 %i.ph, ptr %i.oy, align 4, !tbaa !207
  store i32 0, ptr %i.ou, align 4, !tbaa !207
  store i32 %.pre-phi, ptr %i.pg, align 4, !tbaa !215
  br label %_ZNSt6vectorIiSaIiEE6resizeEm.exit

bb.cz:                                            ; preds = %bb.cr
  %i.pm = getelementptr inbounds nuw i8, ptr %1, i64 100 ; 2 uses
  %i.pn = load i32, ptr %i.pm, align 4, !tbaa !215 ; 4 uses
  %.not47.i = icmp eq i32 %i.pn, %.pre-phi
  br i1 %.not47.i, label %_ZNSt6vectorIiSaIiEE6resizeEm.exit, label %bb.da

bb.da:                                            ; preds = %bb.cz
  %i.po = icmp eq i32 %i.pn, 0
  br i1 %i.po, label %bb.db, label %bb.dc

bb.db:                                            ; preds = %bb.da
end_hunk_1
