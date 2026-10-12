Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/abc/original/cadical_sweep?download=true
inline.NumInlined: 1667
inline.NumDeleted: 622
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumRuntimeUnrolled: 7
loop-unroll.NumUnrolled: 10
begin_hunk_0_@_ZN7CaDiCaL8Internal33sweep_substitute_new_equivalencesERNS_7SweeperE:bb.a
  store i64 %i.fa, ptr %i.fb, align 8, !tbaa !239
  %i.fd = getelementptr inbounds nuw i8, ptr %i.fb, i64 8 ; 2 uses
  store ptr %i.fd, ptr %i.l, align 8, !tbaa !281
  br label %_ZNSt6vectorIlSaIlEE9push_backERKl.exit86

bb.ai:                                            ; preds = %bb.ag
  %i.fe = load ptr, ptr %i.k, align 8, !tbaa !260 ; 4 uses
  %i.ff = ptrtoint ptr %i.fb to i64
  %i.fg = ptrtoint ptr %i.fe to i64               ; 2 uses
  %i.fh = sub i64 %i.ff, %i.fg                    ; 5 uses
  %i.fi = icmp eq i64 %i.fh, 9223372036854775800
  br i1 %i.fi, label %bb.aj, label %_ZNKSt6vectorIlSaIlEE12_M_check_lenEmPKc.exit.i.i80

bb.aj:                                            ; preds = %bb.ai
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.11) #22
  unreachable

_ZNKSt6vectorIlSaIlEE12_M_check_lenEmPKc.exit.i.i80: ; preds = %bb.ai
  %i.fj = ashr exact i64 %i.fh, 3                 ; 3 uses
  %.sroa.speculated.i.i.i81 = tail call i64 @llvm.umax.i64(i64 %i.fj, i64 1)
  %i.fk = add nsw i64 %.sroa.speculated.i.i.i81, %i.fj ; 2 uses
  %i.fl = icmp ult i64 %i.fk, %i.fj
  %i.fm = tail call i64 @llvm.umin.i64(i64 %i.fk, i64 1152921504606846975)
  %i.fn = select i1 %i.fl, i64 1152921504606846975, i64 %i.fm ; 3 uses
  %.not.i.i.i82 = icmp ne i64 %i.fn, 0
  tail call void @llvm.assume(i1 %.not.i.i.i82)
  %i.fo = shl nuw nsw i64 %i.fn, 3
  %i.fp = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.fo) #20 ; 4 uses
  %i.fq = getelementptr inbounds i8, ptr %i.fp, i64 %i.fh ; 2 uses
  store i64 %i.fa, ptr %i.fq, align 8, !tbaa !239
  %i.fr = icmp sgt i64 %i.fh, 0
  br i1 %i.fr, label %bb.ak, label %_ZNSt6vectorIlSaIlEE11_S_relocateEPlS2_S2_RS0_.exit16.i.i83

bb.ak:                                            ; preds = %_ZNKSt6vectorIlSaIlEE12_M_check_lenEmPKc.exit.i.i80
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.fp, ptr align 8 %i.fe, i64 %i.fh, i1 false)
  br label %_ZNSt6vectorIlSaIlEE11_S_relocateEPlS2_S2_RS0_.exit16.i.i83

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
  br label %bb.b

bb.b:                                             ; preds = %bb.b, %bb.a
  %indvar = phi i64 [ %indvar.next, %bb.b ], [ 0, %bb.a ] ; 3 uses
  %.sroa.035.0 = phi ptr [ %i.f, %bb.b ], [ %i.b, %bb.a ] ; 7 uses
  %i.e = load i32, ptr %.sroa.035.0, align 4, !tbaa !207
  %.not = icmp eq i32 %i.e, %2
  %i.f = getelementptr inbounds nuw i8, ptr %.sroa.035.0, i64 4
  %indvar.next = add i64 %indvar, 1
  br i1 %.not, label %.preheader46, label %bb.b, !llvm.loop !5

.preheader46:                                     ; preds = %bb.b
  %.cast = ptrtoint ptr %i.b to i64               ; 6 uses
  %.not4069 = icmp eq ptr %.sroa.035.0, %i.b
  br i1 %.not4069, label %.critedge, label %.lr.ph71

bb.c:                                             ; preds = %.lr.ph71
  %.not40 = icmp eq ptr %i.g, %i.b
  br i1 %.not40, label %.critedge, label %.lr.ph71, !llvm.loop !6

.lr.ph71:                                         ; preds = %.preheader46, %bb.c
  %.sroa.028.070 = phi ptr [ %i.g, %bb.c ], [ %.sroa.035.0, %.preheader46 ] ; 3 uses
  %i.g = getelementptr inbounds i8, ptr %.sroa.028.070, i64 -4 ; 3 uses
  %i.h = load i32, ptr %i.g, align 4, !tbaa !207
  %.not10 = icmp eq i32 %i.h, 0
  br i1 %.not10, label %..critedge_crit_edge, label %bb.c, !llvm.loop !6

..critedge_crit_edge:                             ; preds = %.lr.ph71
  %.pre = ptrtoint ptr %.sroa.028.070 to i64
  br label %.critedge, !llvm.loop !6

.critedge:                                        ; preds = %bb.c, %.preheader46, %..critedge_crit_edge
  %.pre-phi = phi i64 [ %.pre, %..critedge_crit_edge ], [ %.cast, %.preheader46 ], [ %.cast, %bb.c ]
  %.sroa.028.0.lcssa = phi ptr [ %.sroa.028.070, %..critedge_crit_edge ], [ %i.b, %.preheader46 ], [ %i.b, %bb.c ] ; 9 uses
  %.sroa.028.0.lcssa72 = ptrtoaddr ptr %.sroa.028.0.lcssa to i64
  %wcslen = tail call i64 @wcslen(ptr nonnull %.sroa.035.0)
  %i.i = shl i64 %wcslen, 2                       ; 3 uses
  %scevgep = getelementptr i8, ptr %.sroa.035.0, i64 %i.i ; 2 uses
  %i.j = ptrtoint ptr %scevgep to i64
  %i.k = sub i64 %i.j, %.pre-phi
  %i.l = and i64 %i.k, 17179869180
  %i.m = icmp eq i64 %i.l, 8
  br i1 %i.m, label %.preheader, label %.preheader44

.preheader44:                                     ; preds = %.critedge
  %.not4147 = icmp eq ptr %.sroa.028.0.lcssa, %i.d
  br i1 %.not4147, label %.loopexit, label %.lr.ph

.preheader:                                       ; preds = %.critedge
  %.sroa.018.050 = getelementptr inbounds nuw i8, ptr %scevgep, i64 4 ; 5 uses
  %.not4351 = icmp eq ptr %.sroa.018.050, %i.d
  br i1 %.not4351, label %.loopexit, label %.lr.ph54.preheader

.lr.ph54.preheader:                               ; preds = %.preheader
  %3 = ptrtoaddr ptr %i.d to i64
  %i.n = add i64 %3, -8
  %i.o = shl i64 %indvar, 2
  %i.p = add i64 %i.o, %.cast
  %i.q = add i64 %i.p, %i.i
  %i.r = sub i64 %i.n, %i.q                       ; 2 uses
  %i.s = lshr i64 %i.r, 2
  %i.t = add nuw nsw i64 %i.s, 1                  ; 2 uses
  %min.iters.check = icmp ult i64 %i.r, 108
  br i1 %min.iters.check, label %.lr.ph54.preheader77, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph54.preheader
  %i.u = sub i64 %.sroa.028.0.lcssa72, %i.i
  %i.v = mul i64 %indvar, -4
  %reass.sub = sub i64 %i.v, %.cast
  %op.rdx = add i64 %reass.sub, -5
  %op.rdx76 = add i64 %op.rdx, %i.u
  %diff.check = icmp ult i64 %op.rdx76, 31
  br i1 %diff.check, label %.lr.ph54.preheader77, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.t, 9223372036854775800      ; 3 uses
  %i.w = shl i64 %n.vec, 2                        ; 2 uses
  %i.x = getelementptr i8, ptr %.sroa.018.050, i64 %i.w
  %i.y = getelementptr i8, ptr %.sroa.028.0.lcssa, i64 %i.w ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.z = shl i64 %index, 2                        ; 2 uses
  %next.gep = getelementptr i8, ptr %.sroa.018.050, i64 %i.z ; 2 uses
  %next.gep73 = getelementptr i8, ptr %.sroa.028.0.lcssa, i64 %i.z ; 2 uses
  %i.aa = getelementptr i8, ptr %next.gep, i64 16
  %wide.load = load <4 x i32>, ptr %next.gep, align 4, !tbaa !207
  %wide.load74 = load <4 x i32>, ptr %i.aa, align 4, !tbaa !207
  %i.ab = getelementptr i8, ptr %next.gep73, i64 16
  store <4 x i32> %wide.load, ptr %next.gep73, align 4, !tbaa !207
  store <4 x i32> %wide.load74, ptr %i.ab, align 4, !tbaa !207
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.ac = icmp eq i64 %index.next, %n.vec
  br i1 %i.ac, label %middle.block, label %vector.body, !llvm.loop !342

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.t, %n.vec
  br i1 %cmp.n, label %.loopexit, label %.lr.ph54.preheader77

.lr.ph54.preheader77:                             ; preds = %vector.memcheck, %.lr.ph54.preheader, %middle.block
  %.sroa.018.053.ph = phi ptr [ %.sroa.018.050, %vector.memcheck ], [ %.sroa.018.050, %.lr.ph54.preheader ], [ %i.x, %middle.block ]
  %.sroa.021.052.ph = phi ptr [ %.sroa.028.0.lcssa, %vector.memcheck ], [ %.sroa.028.0.lcssa, %.lr.ph54.preheader ], [ %i.y, %middle.block ]
  br label %.lr.ph54

.lr.ph54:                                         ; preds = %.lr.ph54.preheader77, %.lr.ph54
  %.sroa.018.053 = phi ptr [ %.sroa.018.0, %.lr.ph54 ], [ %.sroa.018.053.ph, %.lr.ph54.preheader77 ] ; 2 uses
  %.sroa.021.052 = phi ptr [ %i.ae, %.lr.ph54 ], [ %.sroa.021.052.ph, %.lr.ph54.preheader77 ] ; 2 uses
  %i.ad = load i32, ptr %.sroa.018.053, align 4, !tbaa !207
  %i.ae = getelementptr inbounds nuw i8, ptr %.sroa.021.052, i64 4 ; 2 uses
  store i32 %i.ad, ptr %.sroa.021.052, align 4, !tbaa !207
  %.sroa.018.0 = getelementptr inbounds nuw i8, ptr %.sroa.018.053, i64 4 ; 2 uses
  %.not43 = icmp eq ptr %.sroa.018.0, %i.d
  br i1 %.not43, label %.loopexit, label %.lr.ph54, !llvm.loop !343

.lr.ph:                                           ; preds = %.preheader44, %bb.e
  %.sroa.013.049 = phi ptr [ %i.ah, %bb.e ], [ %.sroa.028.0.lcssa, %.preheader44 ] ; 3 uses
  %.sroa.021.148 = phi ptr [ %.sroa.021.2, %bb.e ], [ %.sroa.028.0.lcssa, %.preheader44 ] ; 3 uses
  %.not42 = icmp eq ptr %.sroa.013.049, %.sroa.035.0
  br i1 %.not42, label %bb.e, label %bb.d

bb.d:                                             ; preds = %.lr.ph
  %i.af = load i32, ptr %.sroa.013.049, align 4, !tbaa !207
  %i.ag = getelementptr inbounds nuw i8, ptr %.sroa.021.148, i64 4
  store i32 %i.af, ptr %.sroa.021.148, align 4, !tbaa !207
  br label %bb.e

bb.e:                                             ; preds = %.lr.ph, %bb.d
  %.sroa.021.2 = phi ptr [ %i.ag, %bb.d ], [ %.sroa.021.148, %.lr.ph ] ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %.sroa.013.049, i64 4 ; 2 uses
  %.not41 = icmp eq ptr %i.ah, %i.d
  br i1 %.not41, label %.loopexit, label %.lr.ph, !llvm.loop !7

.loopexit:                                        ; preds = %bb.e, %.lr.ph54, %middle.block, %.preheader44, %.preheader
  %.sroa.021.3 = phi ptr [ %i.ae, %.lr.ph54 ], [ %.sroa.028.0.lcssa, %.preheader ], [ %i.d, %.preheader44 ], [ %i.y, %middle.block ], [ %.sroa.021.2, %bb.e ] ; 2 uses
  %i.ai = ptrtoint ptr %.sroa.021.3 to i64
  %i.aj = sub i64 %i.ai, %.cast                   ; 2 uses
  %i.ak = ashr exact i64 %i.aj, 2                 ; 3 uses
  %i.al = ptrtoint ptr %i.d to i64
  %i.am = sub i64 %i.al, %.cast
  %i.an = ashr exact i64 %i.am, 2                 ; 3 uses
  %i.ao = icmp ugt i64 %i.ak, %i.an
  br i1 %i.ao, label %bb.f, label %bb.g

bb.f:                                             ; preds = %.loopexit
  %i.ap = sub nuw nsw i64 %i.ak, %i.an
  tail call void @_ZNSt6vectorIiSaIiEE17_M_default_appendEm(ptr noundef nonnull align 8 dereferenceable(24) %i.a, i64 noundef %i.ap)
  br label %_ZNSt6vectorIiSaIiEE6resizeEm.exit

bb.g:                                             ; preds = %.loopexit
  %i.aq = icmp uge i64 %i.ak, %i.an
  %.not.i.i = icmp eq ptr %i.d, %.sroa.021.3
  %or.cond = select i1 %i.aq, i1 true, i1 %.not.i.i
  br i1 %or.cond, label %_ZNSt6vectorIiSaIiEE6resizeEm.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ar = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.aj
  store ptr %i.ar, ptr %i.c, align 8, !tbaa !211
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
end_hunk_0
begin_hunk_1_@_ZN7CaDiCaL8Internal28sweep_equivalence_candidatesERNS_7SweeperEii:bb.a
  store i32 %i.hs, ptr %.sroa.015.020.i.i133, align 4, !tbaa !207
  br label %bb.bm

bb.bm:                                            ; preds = %bb.bl, %bb.bk, %bb.bj
  %.sroa.015.1.i.i135 = phi ptr [ %i.ia, %bb.bl ], [ %.sroa.015.020.i.i133, %bb.bk ], [ %.sroa.015.020.i.i133, %bb.bj ] ; 3 uses
  %i.ib = getelementptr inbounds nuw i8, ptr %.sroa.012.021.i.i132, i64 4 ; 2 uses
  %.not18.i.i136 = icmp eq ptr %i.ib, %i.he
  br i1 %.not18.i.i136, label %._crit_edge.i.i137, label %bb.bj, !llvm.loop !4

_ZN7CaDiCaL8Internal21sweep_refine_backboneERNS_7SweeperE.exit.i142: ; preds = %bb.bi, %bb.bh, %bb.bg, %bb.bf
  %i.ic = load ptr, ptr %i.a, align 8, !tbaa !268
  %i.id = load ptr, ptr %i.c, align 8, !tbaa !268
  %i.ie = icmp eq ptr %i.ic, %i.id
  br i1 %i.ie, label %_ZN7CaDiCaL8Internal12sweep_refineERNS_7SweeperE.exit143, label %bb.bn

bb.bn:                                            ; preds = %_ZN7CaDiCaL8Internal21sweep_refine_backboneERNS_7SweeperE.exit.i142
  tail call void @_ZN7CaDiCaL8Internal22sweep_refine_partitionERNS_7SweeperE(ptr noundef nonnull readonly align 8 dereferenceable(7296) %0, ptr noundef nonnull align 8 dereferenceable(464) %1)
  br label %_ZN7CaDiCaL8Internal12sweep_refineERNS_7SweeperE.exit143

_ZN7CaDiCaL8Internal12sweep_refineERNS_7SweeperE.exit143.thread: ; preds = %_ZN7CaDiCaL8Internal11sweep_solveEv.exit130
  %i.if = getelementptr inbounds nuw i8, ptr %0, i64 6400 ; 2 uses
  %i.ig = load i64, ptr %i.if, align 8, !tbaa !353
  %i.ih = add nsw i64 %i.ig, 1
  store i64 %i.ih, ptr %i.if, align 8, !tbaa !353
  br label %_ZN7CaDiCaL8Internal12sweep_refineERNS_7SweeperE.exit143

_ZN7CaDiCaL8Internal12sweep_refineERNS_7SweeperE.exit143: ; preds = %_ZN7CaDiCaL8Internal21sweep_refine_backboneERNS_7SweeperE.exit.i142, %bb.bn, %_ZN7CaDiCaL8Internal12sweep_refineERNS_7SweeperE.exit143.thread, %_ZN7CaDiCaL8Internal11sweep_solveEv.exit130
  %i.ii = getelementptr inbounds nuw i8, ptr %1, i64 384
  %i.ij = load ptr, ptr %i.ii, align 8, !tbaa !249 ; 3 uses
  %i.ik = getelementptr inbounds nuw i8, ptr %1, i64 392 ; 2 uses
  %i.il = load ptr, ptr %i.ik, align 8, !tbaa !250 ; 2 uses
  %.not.i.i144 = icmp eq ptr %i.il, %i.ij
  br i1 %.not.i.i144, label %_ZNSt6vectorIiSaIiEE6resizeEm.exit, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %_ZN7CaDiCaL8Internal12sweep_refineERNS_7SweeperE.exit143, %_ZSt8_DestroyIN7CaDiCaL18sweep_proof_clauseEEvPT_.exit.i.i.i.i
  %.05.i.i.i.i = phi ptr [ %i.ja, %_ZSt8_DestroyIN7CaDiCaL18sweep_proof_clauseEEvPT_.exit.i.i.i.i ], [ %i.ij, %_ZN7CaDiCaL8Internal12sweep_refineERNS_7SweeperE.exit143 ] ; 5 uses
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
  %i.jb = load i64, ptr %i.gc, align 8, !tbaa !354
  %i.jc = add nsw i64 %i.jb, 1
  store i64 %i.jc, ptr %i.gc, align 8, !tbaa !354
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
  br label %bb.cc

bb.cc:                                            ; preds = %bb.cc, %bb.cb
  %indvar292 = phi i64 [ %indvar.next293, %bb.cc ], [ 0, %bb.cb ] ; 3 uses
  %.sroa.035.0.i = phi ptr [ %i.lb, %bb.cc ], [ %i.ky, %bb.cb ] ; 7 uses
  %i.la = load i32, ptr %.sroa.035.0.i, align 4, !tbaa !207
  %.not.i = icmp eq i32 %i.la, %3
  %i.lb = getelementptr inbounds nuw i8, ptr %.sroa.035.0.i, i64 4
  %indvar.next293 = add i64 %indvar292, 1
  br i1 %.not.i, label %.preheader46.i, label %bb.cc, !llvm.loop !5

.preheader46.i:                                   ; preds = %bb.cc
  %.cast.i = ptrtoint ptr %i.ky to i64            ; 6 uses
  %.not40.i283 = icmp eq ptr %.sroa.035.0.i, %i.ky
  br i1 %.not40.i283, label %.critedge.i, label %.lr.ph285

bb.cd:                                            ; preds = %.lr.ph285
  %.not40.i = icmp eq ptr %i.lc, %i.ky
  br i1 %.not40.i, label %.critedge.i, label %.lr.ph285, !llvm.loop !6

.lr.ph285:                                        ; preds = %.preheader46.i, %bb.cd
  %.sroa.028.0.i284 = phi ptr [ %i.lc, %bb.cd ], [ %.sroa.035.0.i, %.preheader46.i ] ; 3 uses
  %i.lc = getelementptr inbounds i8, ptr %.sroa.028.0.i284, i64 -4 ; 3 uses
  %i.ld = load i32, ptr %i.lc, align 4, !tbaa !207
  %.not10.i = icmp eq i32 %i.ld, 0
  br i1 %.not10.i, label %..critedge_crit_edge.i, label %bb.cd, !llvm.loop !6

..critedge_crit_edge.i:                           ; preds = %.lr.ph285
  %.pre.i = ptrtoint ptr %.sroa.028.0.i284 to i64
  br label %.critedge.i, !llvm.loop !6

.critedge.i:                                      ; preds = %bb.cd, %.preheader46.i, %..critedge_crit_edge.i
  %.pre-phi.i = phi i64 [ %.pre.i, %..critedge_crit_edge.i ], [ %.cast.i, %.preheader46.i ], [ %.cast.i, %bb.cd ]
  %.sroa.028.0.lcssa.i = phi ptr [ %.sroa.028.0.i284, %..critedge_crit_edge.i ], [ %i.ky, %.preheader46.i ], [ %i.ky, %bb.cd ] ; 9 uses
  %.sroa.028.0.lcssa.i291 = ptrtoaddr ptr %.sroa.028.0.lcssa.i to i64
  %wcslen.i = call i64 @wcslen(ptr nonnull %.sroa.035.0.i)
  %i.le = shl i64 %wcslen.i, 2                    ; 3 uses
  %scevgep.i = getelementptr i8, ptr %.sroa.035.0.i, i64 %i.le ; 2 uses
  %i.lf = ptrtoint ptr %scevgep.i to i64
  %i.lg = sub i64 %i.lf, %.pre-phi.i
  %i.lh = and i64 %i.lg, 17179869180
  %i.li = icmp eq i64 %i.lh, 8
  br i1 %i.li, label %.preheader.i, label %.preheader44.i

.preheader44.i:                                   ; preds = %.critedge.i
  %.not4147.i = icmp eq ptr %.sroa.028.0.lcssa.i, %i.kz
  br i1 %.not4147.i, label %.loopexit.i, label %.lr.ph.i

.preheader.i:                                     ; preds = %.critedge.i
  %.sroa.018.050.i = getelementptr inbounds nuw i8, ptr %scevgep.i, i64 4 ; 5 uses
  %.not4351.i = icmp eq ptr %.sroa.018.050.i, %i.kz
  br i1 %.not4351.i, label %.loopexit.i, label %.lr.ph54.i.preheader

.lr.ph54.i.preheader:                             ; preds = %.preheader.i
  %10 = ptrtoaddr ptr %i.kz to i64
  %i.lj = add i64 %10, -8
  %i.lk = shl i64 %indvar292, 2
  %i.ll = add i64 %i.lk, %.cast.i
  %i.lm = add i64 %i.ll, %i.le
  %i.ln = sub i64 %i.lj, %i.lm                    ; 2 uses
  %i.lo = lshr i64 %i.ln, 2
  %i.lp = add nuw nsw i64 %i.lo, 1                ; 2 uses
  %min.iters.check296 = icmp ult i64 %i.ln, 108
  br i1 %min.iters.check296, label %.lr.ph54.i.preheader314, label %vector.memcheck290

vector.memcheck290:                               ; preds = %.lr.ph54.i.preheader
  %i.lq = sub i64 %.sroa.028.0.lcssa.i291, %i.le
  %i.lr = mul i64 %indvar292, -4
  %reass.sub310 = sub i64 %i.lr, %.cast.i
  %op.rdx = add i64 %reass.sub310, -5
  %op.rdx311 = add i64 %op.rdx, %i.lq
  %diff.check294 = icmp ult i64 %op.rdx311, 31
  br i1 %diff.check294, label %.lr.ph54.i.preheader314, label %vector.ph297

vector.ph297:                                     ; preds = %vector.memcheck290
  %n.vec298 = and i64 %i.lp, 9223372036854775800  ; 3 uses
  %i.ls = shl i64 %n.vec298, 2                    ; 2 uses
  %i.lt = getelementptr i8, ptr %.sroa.018.050.i, i64 %i.ls
  %i.lu = getelementptr i8, ptr %.sroa.028.0.lcssa.i, i64 %i.ls ; 2 uses
  br label %vector.body299

vector.body299:                                   ; preds = %vector.body299, %vector.ph297
  %index300 = phi i64 [ 0, %vector.ph297 ], [ %index.next305, %vector.body299 ] ; 2 uses
  %i.lv = shl i64 %index300, 2                    ; 2 uses
  %next.gep301 = getelementptr i8, ptr %.sroa.018.050.i, i64 %i.lv ; 2 uses
  %next.gep302 = getelementptr i8, ptr %.sroa.028.0.lcssa.i, i64 %i.lv ; 2 uses
  %i.lw = getelementptr i8, ptr %next.gep301, i64 16
  %wide.load303 = load <4 x i32>, ptr %next.gep301, align 4, !tbaa !207
  %wide.load304 = load <4 x i32>, ptr %i.lw, align 4, !tbaa !207
  %i.lx = getelementptr i8, ptr %next.gep302, i64 16
  store <4 x i32> %wide.load303, ptr %next.gep302, align 4, !tbaa !207
  store <4 x i32> %wide.load304, ptr %i.lx, align 4, !tbaa !207
  %index.next305 = add nuw i64 %index300, 8       ; 2 uses
  %i.ly = icmp eq i64 %index.next305, %n.vec298
  br i1 %i.ly, label %middle.block306, label %vector.body299, !llvm.loop !347

middle.block306:                                  ; preds = %vector.body299
  %cmp.n307 = icmp eq i64 %i.lp, %n.vec298
  br i1 %cmp.n307, label %.loopexit.i, label %.lr.ph54.i.preheader314

.lr.ph54.i.preheader314:                          ; preds = %vector.memcheck290, %.lr.ph54.i.preheader, %middle.block306
  %.sroa.018.053.i.ph = phi ptr [ %.sroa.018.050.i, %vector.memcheck290 ], [ %.sroa.018.050.i, %.lr.ph54.i.preheader ], [ %i.lt, %middle.block306 ]
  %.sroa.021.052.i.ph = phi ptr [ %.sroa.028.0.lcssa.i, %vector.memcheck290 ], [ %.sroa.028.0.lcssa.i, %.lr.ph54.i.preheader ], [ %i.lu, %middle.block306 ]
  br label %.lr.ph54.i

.lr.ph54.i:                                       ; preds = %.lr.ph54.i.preheader314, %.lr.ph54.i
  %.sroa.018.053.i = phi ptr [ %.sroa.018.0.i, %.lr.ph54.i ], [ %.sroa.018.053.i.ph, %.lr.ph54.i.preheader314 ] ; 2 uses
  %.sroa.021.052.i = phi ptr [ %i.ma, %.lr.ph54.i ], [ %.sroa.021.052.i.ph, %.lr.ph54.i.preheader314 ] ; 2 uses
  %i.lz = load i32, ptr %.sroa.018.053.i, align 4, !tbaa !207
  %i.ma = getelementptr inbounds nuw i8, ptr %.sroa.021.052.i, i64 4 ; 2 uses
  store i32 %i.lz, ptr %.sroa.021.052.i, align 4, !tbaa !207
  %.sroa.018.0.i = getelementptr inbounds nuw i8, ptr %.sroa.018.053.i, i64 4 ; 2 uses
  %.not43.i = icmp eq ptr %.sroa.018.0.i, %i.kz
  br i1 %.not43.i, label %.loopexit.i, label %.lr.ph54.i, !llvm.loop !348

.lr.ph.i:                                         ; preds = %.preheader44.i, %bb.cf
  %.sroa.013.049.i = phi ptr [ %i.md, %bb.cf ], [ %.sroa.028.0.lcssa.i, %.preheader44.i ] ; 3 uses
  %.sroa.021.148.i = phi ptr [ %.sroa.021.2.i, %bb.cf ], [ %.sroa.028.0.lcssa.i, %.preheader44.i ] ; 3 uses
  %.not42.i = icmp eq ptr %.sroa.013.049.i, %.sroa.035.0.i
  br i1 %.not42.i, label %bb.cf, label %bb.ce

bb.ce:                                            ; preds = %.lr.ph.i
  %i.mb = load i32, ptr %.sroa.013.049.i, align 4, !tbaa !207
  %i.mc = getelementptr inbounds nuw i8, ptr %.sroa.021.148.i, i64 4
  store i32 %i.mb, ptr %.sroa.021.148.i, align 4, !tbaa !207
  br label %bb.cf

bb.cf:                                            ; preds = %bb.ce, %.lr.ph.i
  %.sroa.021.2.i = phi ptr [ %i.mc, %bb.ce ], [ %.sroa.021.148.i, %.lr.ph.i ] ; 2 uses
  %i.md = getelementptr inbounds nuw i8, ptr %.sroa.013.049.i, i64 4 ; 2 uses
  %.not41.i = icmp eq ptr %i.md, %i.kz
  br i1 %.not41.i, label %.loopexit.i, label %.lr.ph.i, !llvm.loop !7

.loopexit.i:                                      ; preds = %bb.cf, %.lr.ph54.i, %middle.block306, %.preheader.i, %.preheader44.i
  %.sroa.021.3.i = phi ptr [ %i.ma, %.lr.ph54.i ], [ %.sroa.028.0.lcssa.i, %.preheader.i ], [ %i.kz, %.preheader44.i ], [ %i.lu, %middle.block306 ], [ %.sroa.021.2.i, %bb.cf ] ; 2 uses
  %i.me = ptrtoint ptr %.sroa.021.3.i to i64
  %i.mf = sub i64 %i.me, %.cast.i                 ; 2 uses
  %i.mg = ashr exact i64 %i.mf, 2                 ; 3 uses
  %i.mh = ptrtoint ptr %i.kz to i64
  %i.mi = sub i64 %i.mh, %.cast.i
  %i.mj = ashr exact i64 %i.mi, 2                 ; 3 uses
  %i.mk = icmp ugt i64 %i.mg, %i.mj
  br i1 %i.mk, label %bb.cg, label %bb.ch

bb.cg:                                            ; preds = %.loopexit.i
  %i.ml = sub nuw nsw i64 %i.mg, %i.mj
  call void @_ZNSt6vectorIiSaIiEE17_M_default_appendEm(ptr noundef nonnull align 8 dereferenceable(24) %i.a, i64 noundef %i.ml)
  br label %_ZN7CaDiCaL8Internal12sweep_removeERNS_7SweeperEi.exit

bb.ch:                                            ; preds = %.loopexit.i
  %i.mm = icmp uge i64 %i.mg, %i.mj
  %.not.i.i.i = icmp eq ptr %i.kz, %.sroa.021.3.i
  %or.cond.i = select i1 %i.mm, i1 true, i1 %.not.i.i.i
  br i1 %or.cond.i, label %_ZN7CaDiCaL8Internal12sweep_removeERNS_7SweeperEi.exit, label %bb.ci

bb.ci:                                            ; preds = %bb.ch
  %i.mn = getelementptr inbounds nuw i8, ptr %i.ky, i64 %i.mf
  store ptr %i.mn, ptr %i.c, align 8, !tbaa !211
  br label %_ZN7CaDiCaL8Internal12sweep_removeERNS_7SweeperEi.exit

bb.cj:                                            ; preds = %bb.ca
  %i.mo = getelementptr inbounds [4 x i8], ptr %i.kt, i64 %i.jk
  store i32 %3, ptr %i.mo, align 4, !tbaa !207
  %i.mp = sext i32 %i.ea to i64
  %i.mq = getelementptr inbounds [4 x i8], ptr %i.kt, i64 %i.mp
  store i32 %i.dz, ptr %i.mq, align 4, !tbaa !207
  %i.mr = load ptr, ptr %i.a, align 8, !tbaa !268 ; 7 uses
  %i.ms = load ptr, ptr %i.c, align 8, !tbaa !268 ; 8 uses
  br label %bb.ck

bb.ck:                                            ; preds = %bb.ck, %bb.cj
  %indvar = phi i64 [ %indvar.next, %bb.ck ], [ 0, %bb.cj ] ; 3 uses
  %.sroa.035.0.i147 = phi ptr [ %i.mu, %bb.ck ], [ %i.mr, %bb.cj ] ; 7 uses
  %i.mt = load i32, ptr %.sroa.035.0.i147, align 4, !tbaa !207
  %.not.i148 = icmp eq i32 %i.mt, %2
  %i.mu = getelementptr inbounds nuw i8, ptr %.sroa.035.0.i147, i64 4
  %indvar.next = add i64 %indvar, 1
  br i1 %.not.i148, label %.preheader46.i149, label %bb.ck, !llvm.loop !5

.preheader46.i149:                                ; preds = %bb.ck
  %.cast.i150 = ptrtoint ptr %i.mr to i64         ; 6 uses
  %.not40.i152281 = icmp eq ptr %.sroa.035.0.i147, %i.mr
  br i1 %.not40.i152281, label %.critedge.i156, label %.lr.ph

bb.cl:                                            ; preds = %.lr.ph
  %.not40.i152 = icmp eq ptr %i.mv, %i.mr
  br i1 %.not40.i152, label %.critedge.i156, label %.lr.ph, !llvm.loop !6

.lr.ph:                                           ; preds = %.preheader46.i149, %bb.cl
  %.sroa.028.0.i151282 = phi ptr [ %i.mv, %bb.cl ], [ %.sroa.035.0.i147, %.preheader46.i149 ] ; 3 uses
  %i.mv = getelementptr inbounds i8, ptr %.sroa.028.0.i151282, i64 -4 ; 3 uses
  %i.mw = load i32, ptr %i.mv, align 4, !tbaa !207
  %.not10.i153 = icmp eq i32 %i.mw, 0
  br i1 %.not10.i153, label %..critedge_crit_edge.i154, label %bb.cl, !llvm.loop !6

..critedge_crit_edge.i154:                        ; preds = %.lr.ph
  %.pre.i155 = ptrtoint ptr %.sroa.028.0.i151282 to i64
  br label %.critedge.i156, !llvm.loop !6

.critedge.i156:                                   ; preds = %bb.cl, %.preheader46.i149, %..critedge_crit_edge.i154
  %.pre-phi.i157 = phi i64 [ %.pre.i155, %..critedge_crit_edge.i154 ], [ %.cast.i150, %.preheader46.i149 ], [ %.cast.i150, %bb.cl ]
  %.sroa.028.0.lcssa.i158 = phi ptr [ %.sroa.028.0.i151282, %..critedge_crit_edge.i154 ], [ %i.mr, %.preheader46.i149 ], [ %i.mr, %bb.cl ] ; 9 uses
  %.sroa.028.0.lcssa.i158286 = ptrtoaddr ptr %.sroa.028.0.lcssa.i158 to i64
  %wcslen.i159 = call i64 @wcslen(ptr nonnull %.sroa.035.0.i147)
  %i.mx = shl i64 %wcslen.i159, 2                 ; 3 uses
  %scevgep.i160 = getelementptr i8, ptr %.sroa.035.0.i147, i64 %i.mx ; 2 uses
  %i.my = ptrtoint ptr %scevgep.i160 to i64
  %i.mz = sub i64 %i.my, %.pre-phi.i157
  %i.na = and i64 %i.mz, 17179869180
  %i.nb = icmp eq i64 %i.na, 8
  br i1 %i.nb, label %.preheader.i173, label %.preheader44.i161

.preheader44.i161:                                ; preds = %.critedge.i156
  %.not4147.i162 = icmp eq ptr %.sroa.028.0.lcssa.i158, %i.ms
  br i1 %.not4147.i162, label %.loopexit.i169, label %.lr.ph.i163

.preheader.i173:                                  ; preds = %.critedge.i156
  %.sroa.018.050.i174 = getelementptr inbounds nuw i8, ptr %scevgep.i160, i64 4 ; 5 uses
  %.not4351.i175 = icmp eq ptr %.sroa.018.050.i174, %i.ms
  br i1 %.not4351.i175, label %.loopexit.i169, label %.lr.ph54.i176.preheader

.lr.ph54.i176.preheader:                          ; preds = %.preheader.i173
  %11 = ptrtoaddr ptr %i.ms to i64
  %i.nc = add i64 %11, -8
  %i.nd = shl i64 %indvar, 2
  %i.ne = add i64 %i.nd, %.cast.i150
  %i.nf = add i64 %i.ne, %i.mx
  %i.ng = sub i64 %i.nc, %i.nf                    ; 2 uses
  %i.nh = lshr i64 %i.ng, 2
  %i.ni = add nuw nsw i64 %i.nh, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %i.ng, 108
  br i1 %min.iters.check, label %.lr.ph54.i176.preheader317, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph54.i176.preheader
  %i.nj = sub i64 %.sroa.028.0.lcssa.i158286, %i.mx
  %i.nk = mul i64 %indvar, -4
  %reass.sub = sub i64 %i.nk, %.cast.i150
  %op.rdx312 = add i64 %reass.sub, -5
  %op.rdx313 = add i64 %op.rdx312, %i.nj
  %diff.check = icmp ult i64 %op.rdx313, 31
  br i1 %diff.check, label %.lr.ph54.i176.preheader317, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.ni, 9223372036854775800     ; 3 uses
  %i.nl = shl i64 %n.vec, 2                       ; 2 uses
  %i.nm = getelementptr i8, ptr %.sroa.018.050.i174, i64 %i.nl
  %i.nn = getelementptr i8, ptr %.sroa.028.0.lcssa.i158, i64 %i.nl ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.no = shl i64 %index, 2                       ; 2 uses
  %next.gep = getelementptr i8, ptr %.sroa.018.050.i174, i64 %i.no ; 2 uses
  %next.gep287 = getelementptr i8, ptr %.sroa.028.0.lcssa.i158, i64 %i.no ; 2 uses
  %i.np = getelementptr i8, ptr %next.gep, i64 16
  %wide.load = load <4 x i32>, ptr %next.gep, align 4, !tbaa !207
  %wide.load288 = load <4 x i32>, ptr %i.np, align 4, !tbaa !207
  %i.nq = getelementptr i8, ptr %next.gep287, i64 16
  store <4 x i32> %wide.load, ptr %next.gep287, align 4, !tbaa !207
  store <4 x i32> %wide.load288, ptr %i.nq, align 4, !tbaa !207
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.nr = icmp eq i64 %index.next, %n.vec
  br i1 %i.nr, label %middle.block, label %vector.body, !llvm.loop !349

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.ni, %n.vec
  br i1 %cmp.n, label %.loopexit.i169, label %.lr.ph54.i176.preheader317

.lr.ph54.i176.preheader317:                       ; preds = %vector.memcheck, %.lr.ph54.i176.preheader, %middle.block
  %.sroa.018.053.i177.ph = phi ptr [ %.sroa.018.050.i174, %vector.memcheck ], [ %.sroa.018.050.i174, %.lr.ph54.i176.preheader ], [ %i.nm, %middle.block ]
  %.sroa.021.052.i178.ph = phi ptr [ %.sroa.028.0.lcssa.i158, %vector.memcheck ], [ %.sroa.028.0.lcssa.i158, %.lr.ph54.i176.preheader ], [ %i.nn, %middle.block ]
  br label %.lr.ph54.i176

.lr.ph54.i176:                                    ; preds = %.lr.ph54.i176.preheader317, %.lr.ph54.i176
  %.sroa.018.053.i177 = phi ptr [ %.sroa.018.0.i179, %.lr.ph54.i176 ], [ %.sroa.018.053.i177.ph, %.lr.ph54.i176.preheader317 ] ; 2 uses
  %.sroa.021.052.i178 = phi ptr [ %i.nt, %.lr.ph54.i176 ], [ %.sroa.021.052.i178.ph, %.lr.ph54.i176.preheader317 ] ; 2 uses
  %i.ns = load i32, ptr %.sroa.018.053.i177, align 4, !tbaa !207
  %i.nt = getelementptr inbounds nuw i8, ptr %.sroa.021.052.i178, i64 4 ; 2 uses
  store i32 %i.ns, ptr %.sroa.021.052.i178, align 4, !tbaa !207
  %.sroa.018.0.i179 = getelementptr inbounds nuw i8, ptr %.sroa.018.053.i177, i64 4 ; 2 uses
  %.not43.i180 = icmp eq ptr %.sroa.018.0.i179, %i.ms
  br i1 %.not43.i180, label %.loopexit.i169, label %.lr.ph54.i176, !llvm.loop !350

.lr.ph.i163:                                      ; preds = %.preheader44.i161, %bb.cn
  %.sroa.013.049.i164 = phi ptr [ %i.nw, %bb.cn ], [ %.sroa.028.0.lcssa.i158, %.preheader44.i161 ] ; 3 uses
  %.sroa.021.148.i165 = phi ptr [ %.sroa.021.2.i167, %bb.cn ], [ %.sroa.028.0.lcssa.i158, %.preheader44.i161 ] ; 3 uses
  %.not42.i166 = icmp eq ptr %.sroa.013.049.i164, %.sroa.035.0.i147
  br i1 %.not42.i166, label %bb.cn, label %bb.cm

bb.cm:                                            ; preds = %.lr.ph.i163
  %i.nu = load i32, ptr %.sroa.013.049.i164, align 4, !tbaa !207
  %i.nv = getelementptr inbounds nuw i8, ptr %.sroa.021.148.i165, i64 4
  store i32 %i.nu, ptr %.sroa.021.148.i165, align 4, !tbaa !207
  br label %bb.cn

bb.cn:                                            ; preds = %bb.cm, %.lr.ph.i163
  %.sroa.021.2.i167 = phi ptr [ %i.nv, %bb.cm ], [ %.sroa.021.148.i165, %.lr.ph.i163 ] ; 2 uses
  %i.nw = getelementptr inbounds nuw i8, ptr %.sroa.013.049.i164, i64 4 ; 2 uses
  %.not41.i168 = icmp eq ptr %i.nw, %i.ms
  br i1 %.not41.i168, label %.loopexit.i169, label %.lr.ph.i163, !llvm.loop !7

.loopexit.i169:                                   ; preds = %bb.cn, %.lr.ph54.i176, %middle.block, %.preheader.i173, %.preheader44.i161
  %.sroa.021.3.i170 = phi ptr [ %i.nt, %.lr.ph54.i176 ], [ %.sroa.028.0.lcssa.i158, %.preheader.i173 ], [ %i.ms, %.preheader44.i161 ], [ %i.nn, %middle.block ], [ %.sroa.021.2.i167, %bb.cn ] ; 2 uses
  %i.nx = ptrtoint ptr %.sroa.021.3.i170 to i64
  %i.ny = sub i64 %i.nx, %.cast.i150              ; 2 uses
  %i.nz = ashr exact i64 %i.ny, 2                 ; 3 uses
  %i.oa = ptrtoint ptr %i.ms to i64
  %i.ob = sub i64 %i.oa, %.cast.i150
  %i.oc = ashr exact i64 %i.ob, 2                 ; 3 uses
  %i.od = icmp ugt i64 %i.nz, %i.oc
  br i1 %i.od, label %bb.co, label %bb.cp

bb.co:                                            ; preds = %.loopexit.i169
  %i.oe = sub nuw nsw i64 %i.nz, %i.oc
  call void @_ZNSt6vectorIiSaIiEE17_M_default_appendEm(ptr noundef nonnull align 8 dereferenceable(24) %i.a, i64 noundef %i.oe)
  br label %_ZN7CaDiCaL8Internal12sweep_removeERNS_7SweeperEi.exit

bb.cp:                                            ; preds = %.loopexit.i169
  %i.of = icmp uge i64 %i.nz, %i.oc
  %.not.i.i.i171 = icmp eq ptr %i.ms, %.sroa.021.3.i170
  %or.cond.i172 = select i1 %i.of, i1 true, i1 %.not.i.i.i171
  br i1 %or.cond.i172, label %_ZN7CaDiCaL8Internal12sweep_removeERNS_7SweeperEi.exit, label %bb.cq

bb.cq:                                            ; preds = %bb.cp
  %i.og = getelementptr inbounds nuw i8, ptr %i.mr, i64 %i.ny
  store ptr %i.og, ptr %i.c, align 8, !tbaa !211
  br label %_ZN7CaDiCaL8Internal12sweep_removeERNS_7SweeperEi.exit

_ZN7CaDiCaL8Internal12sweep_removeERNS_7SweeperEi.exit: ; preds = %bb.cq, %bb.cp, %bb.co, %bb.ci, %bb.ch, %bb.cg
  %.pre-phi = phi i32 [ %i.bp, %bb.cq ], [ %i.bp, %bb.cp ], [ %i.bp, %bb.co ], [ %i.bo, %bb.ci ], [ %i.bo, %bb.ch ], [ %i.bo, %bb.cg ] ; 8 uses
  call void @_ZN7CaDiCaL8Internal10clear_coreERNS_7SweeperEj(ptr noundef nonnull align 8 dereferenceable(7296) %0, ptr noundef nonnull align 8 dereferenceable(464) %1, i32 noundef 0)
  call void @_ZN7CaDiCaL8Internal10clear_coreERNS_7SweeperEj(ptr noundef nonnull align 8 dereferenceable(7296) %0, ptr noundef nonnull align 8 dereferenceable(464) %1, i32 noundef 1)
  %i.oh = getelementptr inbounds nuw i8, ptr %0, i64 760
  %i.oi = zext nneg i32 %.pre-phi to i64          ; 4 uses
  %i.oj = load ptr, ptr %i.oh, align 8, !tbaa !263
  %i.ok = getelementptr inbounds nuw [6 x i8], ptr %i.oj, i64 %i.oi
  %i.ol = getelementptr inbounds nuw i8, ptr %i.ok, i64 5
  %i.om = load i8, ptr %i.ol, align 1
  %.mask.i.i.i = and i8 %i.om, -32
  %i.on = icmp eq i8 %.mask.i.i.i, 32
  br i1 %i.on, label %bb.cr, label %_ZNSt6vectorIiSaIiEE6resizeEm.exit

bb.cr:                                            ; preds = %_ZN7CaDiCaL8Internal12sweep_removeERNS_7SweeperEi.exit
  %i.oo = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.op = load ptr, ptr %i.oo, align 8, !tbaa !212 ; 4 uses
  %i.oq = getelementptr inbounds nuw [4 x i8], ptr %i.op, i64 %i.oi ; 2 uses
  %i.or = load i32, ptr %i.oq, align 4, !tbaa !207 ; 4 uses
  %.not.i182 = icmp eq i32 %i.or, 0
  br i1 %.not.i182, label %bb.cz, label %bb.cs

bb.cs:                                            ; preds = %bb.cr
  %i.os = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.ot = load ptr, ptr %i.os, align 8, !tbaa !212 ; 2 uses
  %i.ou = getelementptr inbounds nuw [4 x i8], ptr %i.ot, i64 %i.oi ; 2 uses
  %i.ov = load i32, ptr %i.ou, align 4, !tbaa !207 ; 3 uses
  %i.ow = sext i32 %i.or to i64
  %i.ox = getelementptr inbounds nuw [4 x i8], ptr %i.ot, i64 %i.ow
  store i32 %i.ov, ptr %i.ox, align 4, !tbaa !207
  %i.oy = icmp eq i32 %i.ov, 0
  br i1 %i.oy, label %bb.ct, label %bb.cu

bb.ct:                                            ; preds = %bb.cs
  %i.oz = getelementptr inbounds nuw i8, ptr %1, i64 96
  store i32 %i.or, ptr %i.oz, align 8, !tbaa !216
  br label %bb.cv

bb.cu:                                            ; preds = %bb.cs
  %i.pa = zext i32 %i.ov to i64
  %i.pb = getelementptr inbounds nuw [4 x i8], ptr %i.op, i64 %i.pa
  store i32 %i.or, ptr %i.pb, align 4, !tbaa !207
  br label %bb.cv

bb.cv:                                            ; preds = %bb.cu, %bb.ct
  %i.pc = getelementptr inbounds nuw i8, ptr %1, i64 100 ; 2 uses
  %i.pd = load i32, ptr %i.pc, align 4, !tbaa !215 ; 3 uses
  %i.pe = icmp eq i32 %i.pd, 0
  br i1 %i.pe, label %bb.cw, label %bb.cx

bb.cw:                                            ; preds = %bb.cv
  %i.pf = getelementptr inbounds nuw i8, ptr %1, i64 96
  store i32 %.pre-phi, ptr %i.pf, align 8, !tbaa !216
  br label %bb.cy

bb.cx:                                            ; preds = %bb.cv
  %i.pg = zext i32 %i.pd to i64
  %i.ph = getelementptr inbounds nuw [4 x i8], ptr %i.op, i64 %i.pg
  store i32 %.pre-phi, ptr %i.ph, align 4, !tbaa !207
  br label %bb.cy

bb.cy:                                            ; preds = %bb.cx, %bb.cw
  store i32 %i.pd, ptr %i.ou, align 4, !tbaa !207
  store i32 0, ptr %i.oq, align 4, !tbaa !207
  store i32 %.pre-phi, ptr %i.pc, align 4, !tbaa !215
  br label %_ZNSt6vectorIiSaIiEE6resizeEm.exit

bb.cz:                                            ; preds = %bb.cr
  %i.pi = getelementptr inbounds nuw i8, ptr %1, i64 100 ; 2 uses
  %i.pj = load i32, ptr %i.pi, align 4, !tbaa !215 ; 4 uses
  %.not47.i = icmp eq i32 %i.pj, %.pre-phi
  br i1 %.not47.i, label %_ZNSt6vectorIiSaIiEE6resizeEm.exit, label %bb.da

bb.da:                                            ; preds = %bb.cz
  %i.pk = icmp eq i32 %i.pj, 0
  br i1 %i.pk, label %bb.db, label %bb.dc

bb.db:                                            ; preds = %bb.da
  %i.pl = getelementptr inbounds nuw i8, ptr %1, i64 96
  store i32 %.pre-phi, ptr %i.pl, align 8, !tbaa !216
  br label %bb.dd

bb.dc:                                            ; preds = %bb.da
  %i.pm = zext i32 %i.pj to i64
  %i.pn = getelementptr inbounds nuw [4 x i8], ptr %i.op, i64 %i.pm
  store i32 %.pre-phi, ptr %i.pn, align 4, !tbaa !207
  br label %bb.dd

bb.dd:                                            ; preds = %bb.dc, %bb.db
  %i.po = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.pp = load ptr, ptr %i.po, align 8, !tbaa !212
  %i.pq = getelementptr inbounds nuw [4 x i8], ptr %i.pp, i64 %i.oi
  store i32 %i.pj, ptr %i.pq, align 4, !tbaa !207
  store i32 %.pre-phi, ptr %i.pi, align 4, !tbaa !215
  br label %_ZNSt6vectorIiSaIiEE6resizeEm.exit
end_hunk_1
