Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/bitwuzla/original/subsume?download=true
inline.NumInlined: 476
inline.NumDeleted: 242
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumRuntimeUnrolled: 4
loop-unroll.NumUnrolled: 6
begin_hunk_0_@_ZN7CaDiCaL5rsortIN9__gnu_cxx17__normal_iteratorIPNS_10ClauseSizeESt6vectorIS3_SaIS3_EEEENS_24smaller_clause_size_rankEEEvT_SA_T0_:bb.a
  %.not.i.i.i.i.i.i = icmp eq ptr %i.cd, %.sroa.9.0145
  br i1 %.not.i.i.i.i.i.i, label %_ZNSt6vectorIN7CaDiCaL10ClauseSizeESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit.i.i, label %.lr.ph.i.i.i.i.i.i, !llvm.loop !0

_ZNSt6vectorIN7CaDiCaL10ClauseSizeESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit.i.i: ; preds = %.lr.ph.i.i.i.i.i.i, %.noexc87
  %.not.i31.i.i = icmp eq ptr %.sroa.099.0144, null
  br i1 %.not.i31.i.i, label %_ZNSt12_Vector_baseIN7CaDiCaL10ClauseSizeESaIS1_EE13_M_deallocateEPS1_m.exit32.i.i, label %bb.n

bb.n:                                             ; preds = %_ZNSt6vectorIN7CaDiCaL10ClauseSizeESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit.i.i
  tail call void @_ZdlPv(ptr noundef nonnull %.sroa.099.0144) #14
  br label %_ZNSt12_Vector_baseIN7CaDiCaL10ClauseSizeESaIS1_EE13_M_deallocateEPS1_m.exit32.i.i

_ZNSt12_Vector_baseIN7CaDiCaL10ClauseSizeESaIS1_EE13_M_deallocateEPS1_m.exit32.i.i: ; preds = %bb.n, %_ZNSt6vectorIN7CaDiCaL10ClauseSizeESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit.i.i
  %i.cf = getelementptr inbounds nuw [16 x i8], ptr %i.cc, i64 %i.bp
  %i.cg = getelementptr inbounds nuw [16 x i8], ptr %i.cb, i64 %i.bz
  br label %.lr.ph141.preheader

bb.o:                                             ; preds = %bb.i
  %i.ch = icmp ult i64 %i.e, %i.bn
  br i1 %i.ch, label %bb.p, label %.lr.ph141.preheader

bb.p:                                             ; preds = %bb.o
  %i.ci = getelementptr inbounds nuw i8, ptr %.sroa.099.0144, i64 %i.d ; 2 uses
  %.not.i4.i = icmp eq ptr %.sroa.9.0145, %i.ci
  %spec.select = select i1 %.not.i4.i, ptr %.sroa.9.0145, ptr %i.ci
  br label %.lr.ph141.preheader

.loopexit.split-lp.loopexit.split-lp:             ; preds = %_ZNKSt6vectorIN7CaDiCaL10ClauseSizeESaIS1_EE12_M_check_lenEmPKc.exit.i.i, %bb.m
  %lpad.loopexit.split-lp191 = landingpad { ptr, i32 }
          cleanup
  %.not.i.i.i = icmp eq ptr %.sroa.099.0144, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorIN7CaDiCaL10ClauseSizeESaIS1_EED2Ev.exit, label %bb.q

bb.q:                                             ; preds = %.loopexit.split-lp.loopexit.split-lp
  tail call void @_ZdlPv(ptr noundef nonnull %.sroa.099.0144) #14
  br label %_ZNSt6vectorIN7CaDiCaL10ClauseSizeESaIS1_EED2Ev.exit

_ZNSt6vectorIN7CaDiCaL10ClauseSizeESaIS1_EED2Ev.exit: ; preds = %.loopexit.split-lp.loopexit.split-lp, %bb.q
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #15
  resume { ptr, i32 } %lpad.loopexit.split-lp191

.lr.ph141.preheader:                              ; preds = %._crit_edge138, %bb.o, %_ZNSt12_Vector_baseIN7CaDiCaL10ClauseSizeESaIS1_EE13_M_deallocateEPS1_m.exit32.i.i, %bb.k, %bb.p
  %.sroa.0107.1 = phi ptr [ %.sroa.0107.0142, %._crit_edge138 ], [ %i.cb, %_ZNSt12_Vector_baseIN7CaDiCaL10ClauseSizeESaIS1_EE13_M_deallocateEPS1_m.exit32.i.i ], [ %.sroa.099.0144, %bb.k ], [ %.sroa.099.0144, %bb.p ], [ %.sroa.099.0144, %bb.o ] ; 2 uses
  %.sroa.099.1 = phi ptr [ %.sroa.099.0144, %._crit_edge138 ], [ %i.cb, %_ZNSt12_Vector_baseIN7CaDiCaL10ClauseSizeESaIS1_EE13_M_deallocateEPS1_m.exit32.i.i ], [ %.sroa.099.0144, %bb.k ], [ %.sroa.099.0144, %bb.p ], [ %.sroa.099.0144, %bb.o ]
  %.sroa.9.1 = phi ptr [ %.sroa.9.0145, %._crit_edge138 ], [ %i.cf, %_ZNSt12_Vector_baseIN7CaDiCaL10ClauseSizeESaIS1_EE13_M_deallocateEPS1_m.exit32.i.i ], [ %scevgep.i.i.i.i.i, %bb.k ], [ %spec.select, %bb.p ], [ %.sroa.9.0145, %bb.o ]
  %.sroa.13.1 = phi ptr [ %.sroa.13.0146, %._crit_edge138 ], [ %i.cg, %_ZNSt12_Vector_baseIN7CaDiCaL10ClauseSizeESaIS1_EE13_M_deallocateEPS1_m.exit32.i.i ], [ %.sroa.13.0146, %bb.k ], [ %.sroa.13.0146, %bb.p ], [ %.sroa.13.0146, %bb.o ]
  %i.cj = icmp eq ptr %.sroa.0103.0143, %0
  %i.ck = select i1 %i.cj, ptr %.sroa.0107.1, ptr %0 ; 2 uses
  br label %.lr.ph141

.lr.ph141:                                        ; preds = %.lr.ph141.preheader, %.lr.ph141
  %.sroa.0.0140 = phi ptr [ %i.cs, %.lr.ph141 ], [ %.sroa.0103.0143, %.lr.ph141.preheader ] ; 3 uses
  %i.cl = load i64, ptr %.sroa.0.0140, align 8, !tbaa !264
  %i.cm = lshr i64 %i.cl, %.076150
  %i.cn = and i64 %i.cm, 255
  %i.co = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %i.cn ; 2 uses
  %i.cp = load i64, ptr %i.co, align 8, !tbaa !192 ; 2 uses
  %i.cq = add i64 %i.cp, 1
  store i64 %i.cq, ptr %i.co, align 8, !tbaa !192
  %i.cr = getelementptr inbounds [16 x i8], ptr %i.ck, i64 %i.cp
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.cr, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0.0140, i64 16, i1 false), !tbaa.struct !194
  %i.cs = getelementptr inbounds nuw i8, ptr %.sroa.0.0140, i64 16 ; 2 uses
  %.not115 = icmp eq ptr %i.cs, %i.o
  br i1 %.not115, label %.loopexit116, label %.lr.ph141, !llvm.loop !261

.loopexit116:                                     ; preds = %.lr.ph141, %._crit_edge.thread, %bb.g, %bb.h, %bb.e
  %.sroa.0107.3 = phi ptr [ %.sroa.0107.0142, %bb.e ], [ %.sroa.0107.0142, %bb.h ], [ %.sroa.0107.0142, %bb.g ], [ %.sroa.0107.0142, %._crit_edge.thread ], [ %.sroa.0107.1, %.lr.ph141 ] ; 5 uses
  %.sroa.0103.2 = phi ptr [ %.sroa.0103.0143, %bb.e ], [ %.sroa.0103.0143, %bb.h ], [ %.sroa.0103.0143, %bb.g ], [ %.sroa.0103.0143, %._crit_edge.thread ], [ %i.ck, %.lr.ph141 ] ; 2 uses
  %.sroa.099.3 = phi ptr [ %.sroa.099.0144, %bb.e ], [ %.sroa.099.0144, %bb.h ], [ %.sroa.099.0144, %bb.g ], [ %.sroa.099.0144, %._crit_edge.thread ], [ %.sroa.099.1, %.lr.ph141 ] ; 3 uses
  %.sroa.9.3 = phi ptr [ %.sroa.9.0145, %bb.e ], [ %.sroa.9.0145, %bb.h ], [ %.sroa.9.0145, %bb.g ], [ %.sroa.9.0145, %._crit_edge.thread ], [ %.sroa.9.1, %.lr.ph141 ]
  %.sroa.13.3 = phi ptr [ %.sroa.13.0146, %bb.e ], [ %.sroa.13.0146, %bb.h ], [ %.sroa.13.0146, %bb.g ], [ %.sroa.13.0146, %._crit_edge.thread ], [ %.sroa.13.1, %.lr.ph141 ]
  %.180 = phi i64 [ %.079148, %bb.e ], [ %i.r, %bb.h ], [ %i.r, %bb.g ], [ %i.v, %._crit_edge.thread ], [ %i.r, %.lr.ph141 ]
  %.178 = phi i64 [ %.077149, %bb.e ], [ %i.t, %bb.h ], [ %i.t, %bb.g ], [ %i.x, %._crit_edge.thread ], [ %i.t, %.lr.ph141 ]
  %.370 = phi i64 [ %.067153, %bb.e ], [ %.269, %bb.h ], [ %.269, %bb.g ], [ %.067153, %._crit_edge.thread ], [ %.269, %.lr.ph141 ]
  %.366 = phi i64 [ %.063154, %bb.e ], [ %.265, %bb.h ], [ %.265, %bb.g ], [ %.063154, %._crit_edge.thread ], [ %.265, %.lr.ph141 ]
  %.3 = phi i1 [ %.060155, %bb.e ], [ %.060155, %bb.h ], [ %.060155, %bb.g ], [ %.060155, %._crit_edge.thread ], [ true, %.lr.ph141 ]
  %i.ct = add nuw nsw i64 %.076150, 8
  %i.cu = shl i64 %.071151, 8
  %i.cv = icmp samesign ult i64 %.076150, 56
  br i1 %i.cv, label %bb.d, label %bb.c, !llvm.loop !262

.preheader:                                       ; preds = %.preheader, %.preheader.preheader.new
  %.0156 = phi i64 [ 0, %.preheader.preheader.new ], [ %i.db, %.preheader ] ; 4 uses
  %niter201 = phi i64 [ 0, %.preheader.preheader.new ], [ %niter201.next.1, %.preheader ]
  %i.cw = getelementptr inbounds [16 x i8], ptr %.sroa.0107.3, i64 %.0156
  %i.cx = getelementptr inbounds [16 x i8], ptr %0, i64 %.0156
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.cx, ptr noundef nonnull align 8 dereferenceable(16) %i.cw, i64 16, i1 false), !tbaa.struct !194
  %i.cy = or disjoint i64 %.0156, 1               ; 2 uses
  %i.cz = getelementptr inbounds [16 x i8], ptr %.sroa.0107.3, i64 %i.cy
  %i.da = getelementptr inbounds [16 x i8], ptr %0, i64 %i.cy
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.da, ptr noundef nonnull align 8 dereferenceable(16) %i.cz, i64 16, i1 false), !tbaa.struct !194
  %i.db = add nuw i64 %.0156, 2                   ; 3 uses
  %niter201.next.1 = add nuw i64 %niter201, 2     ; 2 uses
  %niter201.ncmp.1 = icmp eq i64 %niter201.next.1, %unroll_iter200
  br i1 %niter201.ncmp.1, label %.loopexit.loopexit.unr-lcssa, label %.preheader, !llvm.loop !263

.loopexit.loopexit.unr-lcssa:                     ; preds = %.preheader
  %i.dc = and i64 %i.d, 16
  %lcmp.mod198.not = icmp eq i64 %i.dc, 0
  br i1 %lcmp.mod198.not, label %.loopexit, label %.preheader.epil.preheader

.preheader.epil.preheader:                        ; preds = %.loopexit.loopexit.unr-lcssa
  %lcmp.mod199 = trunc i64 %i.e to i1
  tail call void @llvm.assume(i1 %lcmp.mod199)
  %i.dd = getelementptr inbounds [16 x i8], ptr %.sroa.0107.3, i64 %i.db
  %i.de = getelementptr inbounds [16 x i8], ptr %0, i64 %i.db
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.de, ptr noundef nonnull align 8 dereferenceable(16) %i.dd, i64 16, i1 false), !tbaa.struct !194
  br label %.loopexit

.loopexit:                                        ; preds = %.preheader.epil.preheader, %.loopexit.loopexit.unr-lcssa, %bb.c
  %.not.i.i.i88 = icmp eq ptr %.sroa.099.3, null
  br i1 %.not.i.i.i88, label %_ZNSt6vectorIN7CaDiCaL10ClauseSizeESaIS1_EED2Ev.exit89, label %bb.r

bb.r:                                             ; preds = %.loopexit
  tail call void @_ZdlPv(ptr noundef nonnull %.sroa.099.3) #14
  br label %_ZNSt6vectorIN7CaDiCaL10ClauseSizeESaIS1_EED2Ev.exit89

_ZNSt6vectorIN7CaDiCaL10ClauseSizeESaIS1_EED2Ev.exit89: ; preds = %.loopexit, %bb.r
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #15
  br label %bb.s

bb.s:                                             ; preds = %bb.a, %_ZNSt6vectorIN7CaDiCaL10ClauseSizeESaIS1_EED2Ev.exit89
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #3

declare void @_ZN7CaDiCaL8Internal9init_occsEv(ptr noundef nonnull align 8 dereferenceable(7288)) local_unnamed_addr #2

declare void @_ZN7CaDiCaL8Internal9init_binsEv(ptr noundef nonnull align 8 dereferenceable(7288)) local_unnamed_addr #2

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr noundef i32 @_ZN7CaDiCaL8Internal21try_to_subsume_clauseEPNS_6ClauseERSt6vectorIS2_SaIS2_EE(ptr noundef nonnull align 8 dereferenceable(7288) %0, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(24) %2) local_unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 4800 ; 2 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !268
  %i.c = add nsw i64 %i.b, 1
  store i64 %i.c, ptr %i.a, align 8, !tbaa !268
  tail call void @_ZN7CaDiCaL8Internal4markEPNS_6ClauseE(ptr noundef nonnull align 8 dereferenceable(7288) %0, ptr noundef %1)
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.f = load i32, ptr %i.e, align 8, !tbaa !167  ; 2 uses
  %i.g = sext i32 %i.f to i64
  %.idx = shl nsw i64 %i.g, 2
  %i.h = getelementptr inbounds i8, ptr %i.d, i64 %.idx
  %.not173 = icmp eq i32 %i.f, 0
  br i1 %.not173, label %.thread134.thread233, label %.lr.ph176

.thread134.thread233:                             ; preds = %bb.a
  tail call void @_ZN7CaDiCaL8Internal6unmarkEPNS_6ClauseE(ptr noundef nonnull align 8 dereferenceable(7288) %0, ptr noundef nonnull %1)
  br label %_ZN7CaDiCaL8Internal14subsume_clauseEPNS_6ClauseES2_.exit

.lr.ph176:                                        ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 760
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 904 ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 480 ; 4 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 968 ; 4 uses
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 832 ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 4808 ; 4 uses
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 4816 ; 4 uses
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 3796 ; 2 uses
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph176, %select.unfold126
  %.054175 = phi ptr [ %i.d, %.lr.ph176 ], [ %i.eq, %select.unfold126 ] ; 7 uses
  %.055174 = phi i32 [ 0, %.lr.ph176 ], [ %.10.ph, %select.unfold126 ] ; 3 uses
  %i.q = load i32, ptr %.054175, align 4, !tbaa !167
  %i.r = tail call noundef i32 @llvm.abs.i32(i32 %i.q, i1 true)
  %i.s = zext nneg i32 %i.r to i64
  %i.t = load ptr, ptr %i.i, align 8, !tbaa !165
  %i.u = getelementptr inbounds nuw [4 x i8], ptr %i.t, i64 %i.s
  %i.v = load i32, ptr %i.u, align 1
  %i.w = and i32 %i.v, 512
  %.not73 = icmp eq i32 %i.w, 0
  br i1 %.not73, label %select.unfold126, label %.preheader

.preheader:                                       ; preds = %bb.b
  %i.x = load i32, ptr %.054175, align 4, !tbaa !167 ; 2 uses
  %i.y = sub nsw i32 0, %i.x                      ; 2 uses
  %i.z = tail call i32 @llvm.abs.i32(i32 %i.x, i1 true)
  %i.aa = tail call noundef i32 @llvm.fshl.i32(i32 %i.z, i32 %i.y, i32 1)
  %i.ab = zext i32 %i.aa to i64                   ; 3 uses
  %i.ac = load ptr, ptr %i.j, align 8, !tbaa !199
  %i.ad = getelementptr inbounds nuw [24 x i8], ptr %i.ac, i64 %i.ab ; 2 uses
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !269 ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %i.ad, i64 8
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !269 ; 2 uses
  %.not138152 = icmp eq ptr %i.ae, %i.ag
  br i1 %.not138152, label %.thread114, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader
  %i.ah = load ptr, ptr %i.k, align 8, !tbaa !270
  br label %.lr.ph.split

.lr.ph.split:                                     ; preds = %.lr.ph, %bb.c
  %.sroa.099.0153 = phi ptr [ %i.av, %bb.c ], [ %i.ae, %.lr.ph ] ; 4 uses
  %i.ai = load i32, ptr %.sroa.099.0153, align 4, !tbaa !167 ; 2 uses
  %i.aj = tail call noundef i32 @llvm.abs.i32(i32 %i.ai, i1 true)
  %i.ak = zext nneg i32 %i.aj to i64
  %i.al = getelementptr inbounds nuw i8, ptr %i.ah, i64 %i.ak
  %i.am = load i8, ptr %i.al, align 1, !tbaa !196 ; 3 uses
  %.not75 = icmp eq i8 %i.am, 0
  br i1 %.not75, label %bb.c, label %3

3:                                                ; preds = %.lr.ph.split
  %4 = icmp slt i32 %i.ai, 0
  %5 = sub i8 0, %i.am
  %spec.select.i = select i1 %4, i8 %5, i8 %i.am
  %6 = icmp slt i8 %spec.select.i, 0
  br i1 %6, label %bb.c, label %.split.us.loopexit

.split.us.loopexit:                               ; preds = %3
  %.pre = load ptr, ptr %i.l, align 8, !tbaa !271 ; 3 uses
  %i.an = getelementptr inbounds nuw i8, ptr %.pre, i64 24
  store i32 %i.y, ptr %i.an, align 8, !tbaa !167
  %i.ao = load i32, ptr %.sroa.099.0153, align 4, !tbaa !167
  %i.ap = getelementptr inbounds nuw i8, ptr %.pre, i64 28
  store i32 %i.ao, ptr %i.ap, align 4, !tbaa !167
  %i.aq = load i32, ptr %.054175, align 4, !tbaa !167
  %i.ar = sub nsw i32 0, %i.aq                    ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %.sroa.099.0153, i64 8
  %i.at = load i64, ptr %i.as, align 8, !tbaa !273
  store i64 %i.at, ptr %.pre, align 8, !tbaa !196
  %i.au = load ptr, ptr %i.l, align 8, !tbaa !271 ; 2 uses
  %.not76 = icmp eq ptr %i.au, null
  br i1 %.not76, label %..thread114_crit_edge, label %.thread134

bb.c:                                             ; preds = %.lr.ph.split, %3
  %i.av = getelementptr inbounds nuw i8, ptr %.sroa.099.0153, i64 16 ; 2 uses
  %.not138 = icmp eq ptr %i.av, %i.ag
  br i1 %.not138, label %.thread114, label %.lr.ph.split

..thread114_crit_edge:                            ; preds = %.split.us.loopexit
  %.pre192 = load i32, ptr %.054175, align 4, !tbaa !167 ; 2 uses
  %.pre193 = sub nsw i32 0, %.pre192
  %.pre194 = tail call i32 @llvm.abs.i32(i32 %.pre192, i1 true)
  %.pre196 = tail call noundef i32 @llvm.fshl.i32(i32 %.pre194, i32 %.pre193, i32 1)
  %.pre198 = zext i32 %.pre196 to i64
  br label %.thread114

.thread114:                                       ; preds = %bb.c, %..thread114_crit_edge, %.preheader
  %.pre-phi199 = phi i64 [ %.pre198, %..thread114_crit_edge ], [ %i.ab, %.preheader ], [ %i.ab, %bb.c ]
  %.5118 = phi i32 [ %i.ar, %..thread114_crit_edge ], [ %.055174, %.preheader ], [ %.055174, %bb.c ] ; 2 uses
  %i.aw = load ptr, ptr %i.m, align 8, !tbaa !201
  %i.ax = getelementptr inbounds nuw [24 x i8], ptr %i.aw, i64 %.pre-phi199 ; 2 uses
  %i.ay = load ptr, ptr %i.ax, align 8, !tbaa !191 ; 2 uses
  %i.az = getelementptr inbounds nuw i8, ptr %i.ax, i64 8
  %i.ba = load ptr, ptr %i.az, align 8, !tbaa !191 ; 2 uses
  %.not139158 = icmp eq ptr %i.ay, %i.ba
  br i1 %.not139158, label %_ZN7CaDiCaL8Internal13subsume_checkEPNS_6ClauseES2_.exit.thread122, label %.lr.ph161

.lr.ph161:                                        ; preds = %.thread114, %_ZN7CaDiCaL8Internal13subsume_checkEPNS_6ClauseES2_.exit
  %.6160 = phi i32 [ %.7, %_ZN7CaDiCaL8Internal13subsume_checkEPNS_6ClauseES2_.exit ], [ %.5118, %.thread114 ]
  %.sroa.095.0159 = phi ptr [ %i.cf, %_ZN7CaDiCaL8Internal13subsume_checkEPNS_6ClauseES2_.exit ], [ %i.ay, %.thread114 ] ; 2 uses
  %i.bb = load ptr, ptr %.sroa.095.0159, align 8, !tbaa !193 ; 8 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %i.bb, i64 8
  %i.bd = load i32, ptr %i.bc, align 8
  %i.be = and i32 %i.bd, 16
  %.not77 = icmp eq i32 %i.be, 0
  br i1 %.not77, label %bb.d, label %_ZN7CaDiCaL8Internal13subsume_checkEPNS_6ClauseES2_.exit

bb.d:                                             ; preds = %.lr.ph161
  %i.bf = load i64, ptr %i.n, align 8, !tbaa !190
  %i.bg = add nsw i64 %i.bf, 1
  store i64 %i.bg, ptr %i.n, align 8, !tbaa !190
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bb, i64 16
  %i.bi = load i32, ptr %i.bh, align 8, !tbaa !167 ; 3 uses
  %i.bj = icmp eq i32 %i.bi, 2
  br i1 %i.bj, label %.thread.i, label %bb.e

.thread.i:                                        ; preds = %bb.d
  %i.bk = load i64, ptr %i.o, align 8, !tbaa !274
  %i.bl = add nsw i64 %i.bk, 1
  store i64 %i.bl, ptr %i.o, align 8, !tbaa !274
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bb, i64 24
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bb, i64 32
  br label %.lr.ph.i

bb.e:                                             ; preds = %bb.d
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bb, i64 24 ; 3 uses
  %i.bp = sext i32 %i.bi to i64
  %.idx.i = shl nsw i64 %i.bp, 2
  %i.bq = getelementptr inbounds i8, ptr %i.bo, i64 %.idx.i
  %i.br = icmp eq i32 %i.bi, 0
  br i1 %i.br, label %.thread134.thread, label %.lr.ph.i

.thread134.thread:                                ; preds = %bb.n, %bb.e
  %.lcssa263 = phi ptr [ %i.bb, %bb.e ], [ %i.dl, %bb.n ]
  %.lcssa262 = phi ptr [ %i.bo, %bb.e ], [ %i.du, %bb.n ]
  store i32 0, ptr %.lcssa262, align 8, !tbaa !167
  tail call void @_ZN7CaDiCaL8Internal6unmarkEPNS_6ClauseE(ptr noundef nonnull align 8 dereferenceable(7288) %0, ptr noundef %1)
  br label %bb.t

.lr.ph.i:                                         ; preds = %bb.e, %.thread.i
  %i.bs = phi ptr [ %i.bn, %.thread.i ], [ %i.bq, %bb.e ]
  %i.bt = phi ptr [ %i.bm, %.thread.i ], [ %i.bo, %bb.e ] ; 3 uses
  %i.bu = load ptr, ptr %i.k, align 8, !tbaa !270
  br label %bb.f

._crit_edge.i:                                    ; preds = %bb.g
  store i32 %i.bv, ptr %i.bt, align 8, !tbaa !167
  br i1 %.2.i, label %_ZN7CaDiCaL8Internal13subsume_checkEPNS_6ClauseES2_.exit, label %bb.h

bb.f:                                             ; preds = %bb.g, %.lr.ph.i
  %.037.i = phi ptr [ %i.bt, %.lr.ph.i ], [ %i.cc, %bb.g ] ; 3 uses
  %.02335.i = phi i32 [ 0, %.lr.ph.i ], [ %i.bv, %bb.g ]
  %.02434.i = phi i32 [ 0, %.lr.ph.i ], [ %.226.i, %bb.g ] ; 2 uses
  %i.bv = load i32, ptr %.037.i, align 4, !tbaa !167 ; 6 uses
  store i32 %.02335.i, ptr %.037.i, align 4, !tbaa !167
  %i.bw = tail call noundef i32 @llvm.abs.i32(i32 %i.bv, i1 true)
  %i.bx = zext nneg i32 %i.bw to i64
  %i.by = getelementptr inbounds nuw i8, ptr %i.bu, i64 %i.bx
  %i.bz = load i8, ptr %i.by, align 1, !tbaa !196 ; 3 uses
  %.not31.i = icmp eq i8 %i.bz, 0
  br i1 %.not31.i, label %._crit_edge.thread52.i, label %bb.g

._crit_edge.thread52.i:                           ; preds = %bb.f
  store i32 %i.bv, ptr %i.bt, align 8, !tbaa !167
  br label %_ZN7CaDiCaL8Internal13subsume_checkEPNS_6ClauseES2_.exit

bb.g:                                             ; preds = %bb.f
  %7 = icmp slt i32 %i.bv, 0
  %8 = sub i8 0, %i.bz
  %spec.select.i.i = select i1 %7, i8 %8, i8 %i.bz
  %i.ca = icmp sgt i8 %spec.select.i.i, 0         ; 2 uses
  %.not32.i = icmp ne i32 %.02434.i, 0            ; 2 uses
  %i.cb = select i1 %i.ca, i1 true, i1 %.not32.i
  %.226.i = select i1 %i.cb, i32 %.02434.i, i32 %i.bv ; 3 uses
  %not..i = xor i1 %i.ca, true
  %.2.i = select i1 %not..i, i1 %.not32.i, i1 false ; 2 uses
  %i.cc = getelementptr inbounds nuw i8, ptr %.037.i, i64 4 ; 2 uses
  %i.cd = icmp eq ptr %i.cc, %i.bs
  %.not29.i = select i1 %.2.i, i1 true, i1 %i.cd
  br i1 %.not29.i, label %._crit_edge.i, label %bb.f, !llvm.loop !267

bb.h:                                             ; preds = %._crit_edge.i
  %.not.i = icmp eq i32 %.226.i, 0
  br i1 %.not.i, label %_ZN7CaDiCaL8Internal13subsume_checkEPNS_6ClauseES2_.exit.thread122, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ce = load i32, ptr %i.p, align 4, !tbaa !275
  %.not30.i = icmp eq i32 %i.ce, 0
  br i1 %.not30.i, label %_ZN7CaDiCaL8Internal13subsume_checkEPNS_6ClauseES2_.exit, label %_ZN7CaDiCaL8Internal13subsume_checkEPNS_6ClauseES2_.exit.thread122

_ZN7CaDiCaL8Internal13subsume_checkEPNS_6ClauseES2_.exit: ; preds = %bb.i, %._crit_edge.thread52.i, %._crit_edge.i, %.lr.ph161
  %.7 = phi i32 [ %.6160, %.lr.ph161 ], [ 0, %._crit_edge.i ], [ 0, %._crit_edge.thread52.i ], [ 0, %bb.i ] ; 2 uses
  %i.cf = getelementptr inbounds nuw i8, ptr %.sroa.095.0159, i64 8 ; 2 uses
  %.not139 = icmp eq ptr %i.cf, %i.ba
  br i1 %.not139, label %_ZN7CaDiCaL8Internal13subsume_checkEPNS_6ClauseES2_.exit.thread122, label %.lr.ph161

_ZN7CaDiCaL8Internal13subsume_checkEPNS_6ClauseES2_.exit.thread122: ; preds = %_ZN7CaDiCaL8Internal13subsume_checkEPNS_6ClauseES2_.exit, %bb.h, %bb.i, %.thread114
  %.765 = phi ptr [ null, %.thread114 ], [ null, %_ZN7CaDiCaL8Internal13subsume_checkEPNS_6ClauseES2_.exit ], [ %i.bb, %bb.i ], [ %i.bb, %bb.h ] ; 2 uses
  %.8 = phi i32 [ %.5118, %.thread114 ], [ %.7, %_ZN7CaDiCaL8Internal13subsume_checkEPNS_6ClauseES2_.exit ], [ %.226.i, %bb.i ], [ -2147483648, %bb.h ] ; 3 uses
  %.not74 = icmp eq ptr %.765, null
  br i1 %.not74, label %.preheader.1, label %bb.s

.preheader.1:                                     ; preds = %_ZN7CaDiCaL8Internal13subsume_checkEPNS_6ClauseES2_.exit.thread122
  %i.cg = load i32, ptr %.054175, align 4, !tbaa !167 ; 4 uses
  %i.ch = tail call noundef i32 @llvm.abs.i32(i32 %i.cg, i1 true)
  %i.ci = tail call noundef i32 @llvm.fshl.i32(i32 %i.ch, i32 %i.cg, i32 1)
  %i.cj = zext i32 %i.ci to i64                   ; 3 uses
  %i.ck = load ptr, ptr %i.j, align 8, !tbaa !199
  %i.cl = getelementptr inbounds nuw [24 x i8], ptr %i.ck, i64 %i.cj ; 2 uses
  %i.cm = load ptr, ptr %i.cl, align 8, !tbaa !269 ; 2 uses
  %i.cn = getelementptr inbounds nuw i8, ptr %i.cl, i64 8
  %i.co = load ptr, ptr %i.cn, align 8, !tbaa !269 ; 2 uses
  %.not138152.1 = icmp eq ptr %i.cm, %i.co
  br i1 %.not138152.1, label %.thread114.1, label %.lr.ph.1

.lr.ph.1:                                         ; preds = %.preheader.1
  %i.cp = load ptr, ptr %i.k, align 8, !tbaa !270
  br label %.lr.ph.split.us.1

.lr.ph.split.us.1:                                ; preds = %bb.k, %.lr.ph.1
  %.sroa.099.0153.us.1 = phi ptr [ %i.cz, %bb.k ], [ %i.cm, %.lr.ph.1 ] ; 5 uses
  %i.cq = load i32, ptr %.sroa.099.0153.us.1, align 4, !tbaa !167 ; 2 uses
  %i.cr = tail call noundef i32 @llvm.abs.i32(i32 %i.cq, i1 true)
  %i.cs = zext nneg i32 %i.cr to i64
  %i.ct = getelementptr inbounds nuw i8, ptr %i.cp, i64 %i.cs
  %i.cu = load i8, ptr %i.ct, align 1, !tbaa !196 ; 3 uses
  %.not75.us.1 = icmp eq i8 %i.cu, 0
  br i1 %.not75.us.1, label %bb.k, label %bb.j

bb.j:                                             ; preds = %.lr.ph.split.us.1
  %9 = icmp slt i32 %i.cq, 0
  %10 = sub i8 0, %i.cu
  %spec.select.i.us.1 = select i1 %9, i8 %10, i8 %i.cu
  %i.cv = icmp slt i8 %spec.select.i.us.1, 0
  %.pre191.1 = load ptr, ptr %i.l, align 8, !tbaa !271 ; 5 uses
  br i1 %i.cv, label %.split156.us.1, label %.split.us.1

.split156.us.1:                                   ; preds = %bb.j
  %i.cw = getelementptr inbounds nuw i8, ptr %.pre191.1, i64 24
  store i32 %i.cg, ptr %i.cw, align 8, !tbaa !167
  %i.cx = load i32, ptr %.sroa.099.0153.us.1, align 4, !tbaa !167 ; 2 uses
  %i.cy = getelementptr inbounds nuw i8, ptr %.pre191.1, i64 28
  store i32 %i.cx, ptr %i.cy, align 4, !tbaa !167
  br label %bb.l

bb.k:                                             ; preds = %.lr.ph.split.us.1
  %i.cz = getelementptr inbounds nuw i8, ptr %.sroa.099.0153.us.1, i64 16 ; 2 uses
  %.not138.us.1 = icmp eq ptr %i.cz, %i.co
  br i1 %.not138.us.1, label %.thread114.1, label %.lr.ph.split.us.1

.split.us.1:                                      ; preds = %bb.j
  %i.da = getelementptr inbounds nuw i8, ptr %.pre191.1, i64 24
  store i32 %i.cg, ptr %i.da, align 8, !tbaa !167
  %i.db = load i32, ptr %.sroa.099.0153.us.1, align 4, !tbaa !167
  %i.dc = getelementptr inbounds nuw i8, ptr %.pre191.1, i64 28
  store i32 %i.db, ptr %i.dc, align 4, !tbaa !167
  br label %bb.l

bb.l:                                             ; preds = %.split.us.1, %.split156.us.1
  %.3.1 = phi i32 [ %i.cx, %.split156.us.1 ], [ -2147483648, %.split.us.1 ] ; 2 uses
  %i.dd = getelementptr inbounds nuw i8, ptr %.sroa.099.0153.us.1, i64 8
  %i.de = load i64, ptr %i.dd, align 8, !tbaa !273
  store i64 %i.de, ptr %.pre191.1, align 8, !tbaa !196
  %i.df = load ptr, ptr %i.l, align 8, !tbaa !271 ; 2 uses
  %.not76.1 = icmp eq ptr %i.df, null
  br i1 %.not76.1, label %..thread114_crit_edge.1, label %.thread134

..thread114_crit_edge.1:                          ; preds = %bb.l
  %.pre192.1 = load i32, ptr %.054175, align 4, !tbaa !167 ; 2 uses
  %.pre194.1 = tail call noundef i32 @llvm.abs.i32(i32 %.pre192.1, i1 true)
  %.pre196.1 = tail call noundef i32 @llvm.fshl.i32(i32 %.pre194.1, i32 %.pre192.1, i32 1)
  %.pre198.1 = zext i32 %.pre196.1 to i64
  br label %.thread114.1

.thread114.1:                                     ; preds = %bb.k, %..thread114_crit_edge.1, %.preheader.1
  %.pre-phi199.1 = phi i64 [ %.pre198.1, %..thread114_crit_edge.1 ], [ %i.cj, %.preheader.1 ], [ %i.cj, %bb.k ]
  %.5118.1 = phi i32 [ %.3.1, %..thread114_crit_edge.1 ], [ %.8, %.preheader.1 ], [ %.8, %bb.k ] ; 2 uses
  %i.dg = load ptr, ptr %i.m, align 8, !tbaa !201
  %i.dh = getelementptr inbounds nuw [24 x i8], ptr %i.dg, i64 %.pre-phi199.1 ; 2 uses
  %i.di = load ptr, ptr %i.dh, align 8, !tbaa !191 ; 2 uses
  %i.dj = getelementptr inbounds nuw i8, ptr %i.dh, i64 8
  %i.dk = load ptr, ptr %i.dj, align 8, !tbaa !191 ; 2 uses
  %.not139158.1 = icmp eq ptr %i.di, %i.dk
  br i1 %.not139158.1, label %_ZN7CaDiCaL8Internal13subsume_checkEPNS_6ClauseES2_.exit.thread122.1, label %.lr.ph161.1

.lr.ph161.1:                                      ; preds = %.thread114.1, %_ZN7CaDiCaL8Internal13subsume_checkEPNS_6ClauseES2_.exit.1
  %.6160.1 = phi i32 [ %.7.1, %_ZN7CaDiCaL8Internal13subsume_checkEPNS_6ClauseES2_.exit.1 ], [ %.5118.1, %.thread114.1 ]
  %.sroa.095.0159.1 = phi ptr [ %i.ep, %_ZN7CaDiCaL8Internal13subsume_checkEPNS_6ClauseES2_.exit.1 ], [ %i.di, %.thread114.1 ] ; 2 uses
  %i.dl = load ptr, ptr %.sroa.095.0159.1, align 8, !tbaa !193 ; 8 uses
  %i.dm = getelementptr inbounds nuw i8, ptr %i.dl, i64 8
  %i.dn = load i32, ptr %i.dm, align 8
  %i.do = and i32 %i.dn, 16
  %.not77.1 = icmp eq i32 %i.do, 0
  br i1 %.not77.1, label %bb.m, label %_ZN7CaDiCaL8Internal13subsume_checkEPNS_6ClauseES2_.exit.1

bb.m:                                             ; preds = %.lr.ph161.1
  %i.dp = load i64, ptr %i.n, align 8, !tbaa !190
  %i.dq = add nsw i64 %i.dp, 1
  store i64 %i.dq, ptr %i.n, align 8, !tbaa !190
  %i.dr = getelementptr inbounds nuw i8, ptr %i.dl, i64 16
  %i.ds = load i32, ptr %i.dr, align 8, !tbaa !167 ; 3 uses
  %i.dt = icmp eq i32 %i.ds, 2
  br i1 %i.dt, label %.thread.i.1, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.du = getelementptr inbounds nuw i8, ptr %i.dl, i64 24 ; 3 uses
  %i.dv = sext i32 %i.ds to i64
  %.idx.i.1 = shl nsw i64 %i.dv, 2
  %i.dw = getelementptr inbounds i8, ptr %i.du, i64 %.idx.i.1
  %i.dx = icmp eq i32 %i.ds, 0
  br i1 %i.dx, label %.thread134.thread, label %.lr.ph.i.1

.thread.i.1:                                      ; preds = %bb.m
  %i.dy = load i64, ptr %i.o, align 8, !tbaa !274
  %i.dz = add nsw i64 %i.dy, 1
  store i64 %i.dz, ptr %i.o, align 8, !tbaa !274
  %i.ea = getelementptr inbounds nuw i8, ptr %i.dl, i64 24
  %i.eb = getelementptr inbounds nuw i8, ptr %i.dl, i64 32
  br label %.lr.ph.i.1

.lr.ph.i.1:                                       ; preds = %.thread.i.1, %bb.n
  %i.ec = phi ptr [ %i.eb, %.thread.i.1 ], [ %i.dw, %bb.n ]
  %i.ed = phi ptr [ %i.ea, %.thread.i.1 ], [ %i.du, %bb.n ] ; 3 uses
  %i.ee = load ptr, ptr %i.k, align 8, !tbaa !270
  br label %bb.o

bb.o:                                             ; preds = %bb.p, %.lr.ph.i.1
  %.037.i.1 = phi ptr [ %i.ed, %.lr.ph.i.1 ], [ %i.em, %bb.p ] ; 3 uses
  %.02335.i.1 = phi i32 [ 0, %.lr.ph.i.1 ], [ %i.ef, %bb.p ]
  %.02434.i.1 = phi i32 [ 0, %.lr.ph.i.1 ], [ %.226.i.1, %bb.p ] ; 2 uses
  %i.ef = load i32, ptr %.037.i.1, align 4, !tbaa !167 ; 6 uses
  store i32 %.02335.i.1, ptr %.037.i.1, align 4, !tbaa !167
  %i.eg = tail call noundef i32 @llvm.abs.i32(i32 %i.ef, i1 true)
  %i.eh = zext nneg i32 %i.eg to i64
  %i.ei = getelementptr inbounds nuw i8, ptr %i.ee, i64 %i.eh
  %i.ej = load i8, ptr %i.ei, align 1, !tbaa !196 ; 3 uses
  %.not31.i.1 = icmp eq i8 %i.ej, 0
  br i1 %.not31.i.1, label %._crit_edge.thread52.i.1, label %bb.p

bb.p:                                             ; preds = %bb.o
  %11 = icmp slt i32 %i.ef, 0
  %12 = sub i8 0, %i.ej
  %spec.select.i.i.1 = select i1 %11, i8 %12, i8 %i.ej
  %i.ek = icmp sgt i8 %spec.select.i.i.1, 0       ; 2 uses
  %.not32.i.1 = icmp ne i32 %.02434.i.1, 0        ; 2 uses
  %i.el = select i1 %i.ek, i1 true, i1 %.not32.i.1
  %.226.i.1 = select i1 %i.el, i32 %.02434.i.1, i32 %i.ef ; 3 uses
  %not..i.1 = xor i1 %i.ek, true
  %.2.i.1 = select i1 %not..i.1, i1 %.not32.i.1, i1 false ; 2 uses
  %i.em = getelementptr inbounds nuw i8, ptr %.037.i.1, i64 4 ; 2 uses
  %i.en = icmp eq ptr %i.em, %i.ec
  %.not29.i.1 = select i1 %.2.i.1, i1 true, i1 %i.en
  br i1 %.not29.i.1, label %._crit_edge.i.1, label %bb.o, !llvm.loop !267

._crit_edge.i.1:                                  ; preds = %bb.p
  store i32 %i.ef, ptr %i.ed, align 8, !tbaa !167
  br i1 %.2.i.1, label %_ZN7CaDiCaL8Internal13subsume_checkEPNS_6ClauseES2_.exit.1, label %bb.q

bb.q:                                             ; preds = %._crit_edge.i.1
  %.not.i.1 = icmp eq i32 %.226.i.1, 0
  br i1 %.not.i.1, label %_ZN7CaDiCaL8Internal13subsume_checkEPNS_6ClauseES2_.exit.thread122.1, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.eo = load i32, ptr %i.p, align 4, !tbaa !275
  %.not30.i.1 = icmp eq i32 %i.eo, 0
  br i1 %.not30.i.1, label %_ZN7CaDiCaL8Internal13subsume_checkEPNS_6ClauseES2_.exit.1, label %_ZN7CaDiCaL8Internal13subsume_checkEPNS_6ClauseES2_.exit.thread122.1

._crit_edge.thread52.i.1:                         ; preds = %bb.o
  store i32 %i.ef, ptr %i.ed, align 8, !tbaa !167
  br label %_ZN7CaDiCaL8Internal13subsume_checkEPNS_6ClauseES2_.exit.1

_ZN7CaDiCaL8Internal13subsume_checkEPNS_6ClauseES2_.exit.1: ; preds = %._crit_edge.thread52.i.1, %bb.r, %._crit_edge.i.1, %.lr.ph161.1
  %.7.1 = phi i32 [ %.6160.1, %.lr.ph161.1 ], [ 0, %._crit_edge.i.1 ], [ 0, %._crit_edge.thread52.i.1 ], [ 0, %bb.r ] ; 2 uses
  %i.ep = getelementptr inbounds nuw i8, ptr %.sroa.095.0159.1, i64 8 ; 2 uses
  %.not139.1 = icmp eq ptr %i.ep, %i.dk
  br i1 %.not139.1, label %_ZN7CaDiCaL8Internal13subsume_checkEPNS_6ClauseES2_.exit.thread122.1, label %.lr.ph161.1

_ZN7CaDiCaL8Internal13subsume_checkEPNS_6ClauseES2_.exit.thread122.1: ; preds = %bb.q, %bb.r, %_ZN7CaDiCaL8Internal13subsume_checkEPNS_6ClauseES2_.exit.1, %.thread114.1
  %.765.1 = phi ptr [ null, %.thread114.1 ], [ null, %_ZN7CaDiCaL8Internal13subsume_checkEPNS_6ClauseES2_.exit.1 ], [ %i.dl, %bb.r ], [ %i.dl, %bb.q ] ; 2 uses
  %.8.1 = phi i32 [ %.5118.1, %.thread114.1 ], [ %.7.1, %_ZN7CaDiCaL8Internal13subsume_checkEPNS_6ClauseES2_.exit.1 ], [ %.226.i.1, %bb.r ], [ -2147483648, %bb.q ]
  %.not74.1 = icmp eq ptr %.765.1, null
  br label %bb.s

bb.s:                                             ; preds = %_ZN7CaDiCaL8Internal13subsume_checkEPNS_6ClauseES2_.exit.thread122.1, %_ZN7CaDiCaL8Internal13subsume_checkEPNS_6ClauseES2_.exit.thread122
  %.765.lcssa = phi ptr [ %.765, %_ZN7CaDiCaL8Internal13subsume_checkEPNS_6ClauseES2_.exit.thread122 ], [ %.765.1, %_ZN7CaDiCaL8Internal13subsume_checkEPNS_6ClauseES2_.exit.thread122.1 ]
  %.8.lcssa = phi i32 [ %.8, %_ZN7CaDiCaL8Internal13subsume_checkEPNS_6ClauseES2_.exit.thread122 ], [ %.8.1, %_ZN7CaDiCaL8Internal13subsume_checkEPNS_6ClauseES2_.exit.thread122.1 ] ; 2 uses
  %.not74.lcssa = phi i1 [ false, %_ZN7CaDiCaL8Internal13subsume_checkEPNS_6ClauseES2_.exit.thread122 ], [ %.not74.1, %_ZN7CaDiCaL8Internal13subsume_checkEPNS_6ClauseES2_.exit.thread122.1 ]
  br i1 %.not74.lcssa, label %select.unfold126, label %.thread134

select.unfold126:                                 ; preds = %bb.s, %bb.b
  %.10.ph = phi i32 [ %.055174, %bb.b ], [ %.8.lcssa, %bb.s ] ; 2 uses
  %i.eq = getelementptr inbounds nuw i8, ptr %.054175, i64 4 ; 2 uses
  %.not = icmp eq ptr %i.eq, %i.h
  br i1 %.not, label %.thread134, label %bb.b

.thread134:                                       ; preds = %select.unfold126, %bb.s, %.split.us.loopexit, %bb.l
  %.1068 = phi ptr [ %i.df, %bb.l ], [ %i.au, %.split.us.loopexit ], [ null, %select.unfold126 ], [ %.765.lcssa, %bb.s ] ; 3 uses
  %.11 = phi i32 [ %.3.1, %bb.l ], [ %i.ar, %.split.us.loopexit ], [ %.10.ph, %select.unfold126 ], [ %.8.lcssa, %bb.s ] ; 3 uses
  tail call void @_ZN7CaDiCaL8Internal6unmarkEPNS_6ClauseE(ptr noundef nonnull align 8 dereferenceable(7288) %0, ptr noundef %1)
  switch i32 %.11, label %bb.z [
    i32 -2147483648, label %bb.t
    i32 0, label %_ZN7CaDiCaL8Internal14subsume_clauseEPNS_6ClauseES2_.exit
  ]

bb.t:                                             ; preds = %.thread134.thread, %.thread134
  %.1068232 = phi ptr [ %.lcssa263, %.thread134.thread ], [ %.1068, %.thread134 ] ; 3 uses
  %i.er = getelementptr inbounds nuw i8, ptr %0, i64 4744 ; 2 uses
  %i.es = load i64, ptr %i.er, align 8, !tbaa !276
  %i.et = add nsw i64 %i.es, 1
  store i64 %i.et, ptr %i.er, align 8, !tbaa !276
  %i.eu = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.ev = load i32, ptr %i.eu, align 8
  %i.ew = and i32 %i.ev, 2048
  %.not.i81 = icmp eq i32 %i.ew, 0
  %..i = select i1 %.not.i81, i64 4784, i64 4792
  %i.ex = getelementptr inbounds nuw i8, ptr %0, i64 %..i ; 2 uses
  %i.ey = load i64, ptr %i.ex, align 8, !tbaa !192
  %i.ez = add nsw i64 %i.ey, 1
  store i64 %i.ez, ptr %i.ex, align 8, !tbaa !192
  %i.fa = load i32, ptr %i.eu, align 8
  %i.fb = and i32 %i.fa, 2048
  %.not9.i = icmp eq i32 %i.fb, 0
  br i1 %.not9.i, label %bb.u, label %bb.v

bb.u:                                             ; preds = %bb.t
  %i.fc = getelementptr inbounds nuw i8, ptr %.1068232, i64 8 ; 2 uses
  %i.fd = load i32, ptr %i.fc, align 8            ; 2 uses
  %i.fe = and i32 %i.fd, 2048
  %.not10.i = icmp eq i32 %i.fe, 0
  br i1 %.not10.i, label %bb.v, label %bb.w

bb.v:                                             ; preds = %bb.u, %bb.t
  tail call void @_ZN7CaDiCaL8Internal12mark_garbageEPNS_6ClauseE(ptr noundef nonnull align 8 dereferenceable(7288) %0, ptr noundef nonnull %1)
  br label %_ZN7CaDiCaL8Internal14subsume_clauseEPNS_6ClauseES2_.exit

bb.w:                                             ; preds = %bb.u
  %i.ff = and i32 %i.fd, -2049
  store i32 %i.ff, ptr %i.fc, align 8
  %i.fg = getelementptr inbounds nuw i8, ptr %0, i64 3104
  %i.fh = load ptr, ptr %i.fg, align 8, !tbaa !164 ; 2 uses
  %.not11.i = icmp eq ptr %i.fh, null
  br i1 %.not11.i, label %bb.y, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.fi = load i64, ptr %.1068232, align 8, !tbaa !196
  tail call void @_ZN7CaDiCaL5Proof10strengthenEm(ptr noundef nonnull align 8 dereferenceable(128) %i.fh, i64 noundef %i.fi)
  br label %bb.y

bb.y:                                             ; preds = %bb.x, %bb.w
  tail call void @_ZN7CaDiCaL8Internal12mark_garbageEPNS_6ClauseE(ptr noundef nonnull align 8 dereferenceable(7288) %0, ptr noundef nonnull %1)
  %i.fj = getelementptr inbounds nuw i8, ptr %.1068232, i64 16
  %i.fk = load i32, ptr %i.fj, align 8, !tbaa !167
  %i.fl = sext i32 %i.fk to i64
  %i.fm = getelementptr inbounds nuw i8, ptr %0, i64 5184 ; 2 uses
  %i.fn = load i64, ptr %i.fm, align 8, !tbaa !277
  %i.fo = add nsw i64 %i.fn, %i.fl
  store i64 %i.fo, ptr %i.fm, align 8, !tbaa !277
  %i.fp = getelementptr inbounds nuw i8, ptr %0, i64 4216 ; 2 uses
  %i.fq = load <2 x i64>, ptr %i.fp, align 8, !tbaa !192
  %i.fr = add nsw <2 x i64> %i.fq, <i64 -1, i64 1>
  store <2 x i64> %i.fr, ptr %i.fp, align 8, !tbaa !192
  %i.fs = getelementptr inbounds nuw i8, ptr %0, i64 4240 ; 2 uses
  %i.ft = load <2 x i64>, ptr %i.fs, align 8, !tbaa !192
  %i.fu = add nsw <2 x i64> %i.ft, <i64 -1, i64 1>
  store <2 x i64> %i.fu, ptr %i.fs, align 8, !tbaa !192
  br label %_ZN7CaDiCaL8Internal14subsume_clauseEPNS_6ClauseES2_.exit

bb.z:                                             ; preds = %.thread134
  %i.fv = getelementptr inbounds nuw i8, ptr %0, i64 320
  %i.fw = load i8, ptr %i.fv, align 8, !tbaa !278, !range !160, !noundef !161
  %i.fx = trunc nuw i8 %i.fw to i1
  br i1 %i.fx, label %bb.aa, label %_ZNSt6vectorImSaImEE9push_backERKm.exit90

bb.aa:                                            ; preds = %bb.z
  %i.fy = getelementptr inbounds nuw i8, ptr %0, i64 176 ; 4 uses
  %i.fz = getelementptr inbounds nuw i8, ptr %0, i64 184 ; 5 uses
  %i.ga = load ptr, ptr %i.fz, align 8, !tbaa !279 ; 4 uses
  %i.gb = getelementptr inbounds nuw i8, ptr %0, i64 192 ; 3 uses
  %i.gc = load ptr, ptr %i.gb, align 8, !tbaa !280 ; 2 uses
  %.not.i82 = icmp eq ptr %i.ga, %i.gc
  br i1 %.not.i82, label %bb.ac, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.gd = load i64, ptr %1, align 8, !tbaa !192
  store i64 %i.gd, ptr %i.ga, align 8, !tbaa !192
  %i.ge = getelementptr inbounds nuw i8, ptr %i.ga, i64 8 ; 2 uses
  store ptr %i.ge, ptr %i.fz, align 8, !tbaa !279
  br label %_ZNSt6vectorImSaImEE9push_backERKm.exit

bb.ac:                                            ; preds = %bb.aa
  %i.gf = load ptr, ptr %i.fy, align 8, !tbaa !281 ; 4 uses
  %i.gg = ptrtoint ptr %i.ga to i64
  %i.gh = ptrtoint ptr %i.gf to i64
  %i.gi = sub i64 %i.gg, %i.gh                    ; 5 uses
  %i.gj = icmp eq i64 %i.gi, 9223372036854775800
  br i1 %i.gj, label %bb.ad, label %_ZNKSt6vectorImSaImEE12_M_check_lenEmPKc.exit.i.i

bb.ad:                                            ; preds = %bb.ac
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.9) #12
  unreachable

_ZNKSt6vectorImSaImEE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.ac
  %i.gk = ashr exact i64 %i.gi, 3                 ; 3 uses
  %.sroa.speculated.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.gk, i64 1)
  %i.gl = add nsw i64 %.sroa.speculated.i.i.i, %i.gk ; 2 uses
  %i.gm = icmp ult i64 %i.gl, %i.gk
  %i.gn = tail call i64 @llvm.umin.i64(i64 %i.gl, i64 1152921504606846975)
  %i.go = select i1 %i.gm, i64 1152921504606846975, i64 %i.gn ; 3 uses
  %.not.i.i.i = icmp ne i64 %i.go, 0
  tail call void @llvm.assume(i1 %.not.i.i.i)
  %i.gp = shl nuw nsw i64 %i.go, 3
  %i.gq = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.gp) #13 ; 4 uses
  %i.gr = getelementptr inbounds i8, ptr %i.gq, i64 %i.gi ; 2 uses
  %i.gs = load i64, ptr %1, align 8, !tbaa !192
  store i64 %i.gs, ptr %i.gr, align 8, !tbaa !192
  %i.gt = icmp sgt i64 %i.gi, 0
  br i1 %i.gt, label %bb.ae, label %_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_.exit16.i.i

bb.ae:                                            ; preds = %_ZNKSt6vectorImSaImEE12_M_check_lenEmPKc.exit.i.i
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.gq, ptr align 8 %i.gf, i64 %i.gi, i1 false)
  br label %_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_.exit16.i.i

_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_.exit16.i.i: ; preds = %bb.ae, %_ZNKSt6vectorImSaImEE12_M_check_lenEmPKc.exit.i.i
  %i.gu = getelementptr inbounds nuw i8, ptr %i.gr, i64 8 ; 2 uses
  %.not.i17.i.i = icmp eq ptr %i.gf, null
  br i1 %.not.i17.i.i, label %_ZNSt6vectorImSaImEE17_M_realloc_insertIJRKmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i, label %bb.af

bb.af:                                            ; preds = %_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_.exit16.i.i
  tail call void @_ZdlPv(ptr noundef nonnull %i.gf) #14
  br label %_ZNSt6vectorImSaImEE17_M_realloc_insertIJRKmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i

_ZNSt6vectorImSaImEE17_M_realloc_insertIJRKmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i: ; preds = %bb.af, %_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_.exit16.i.i
  store ptr %i.gq, ptr %i.fy, align 8, !tbaa !281
  store ptr %i.gu, ptr %i.fz, align 8, !tbaa !279
  %i.gv = getelementptr inbounds nuw [8 x i8], ptr %i.gq, i64 %i.go ; 2 uses
  store ptr %i.gv, ptr %i.gb, align 8, !tbaa !280
  br label %_ZNSt6vectorImSaImEE9push_backERKm.exit

_ZNSt6vectorImSaImEE9push_backERKm.exit:          ; preds = %bb.ab, %_ZNSt6vectorImSaImEE17_M_realloc_insertIJRKmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i
  %i.gw = phi ptr [ %i.gc, %bb.ab ], [ %i.gv, %_ZNSt6vectorImSaImEE17_M_realloc_insertIJRKmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i ] ; 2 uses
  %i.gx = phi ptr [ %i.ge, %bb.ab ], [ %i.gu, %_ZNSt6vectorImSaImEE17_M_realloc_insertIJRKmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i ] ; 3 uses
  %.not.i83 = icmp eq ptr %i.gx, %i.gw
  br i1 %.not.i83, label %bb.ah, label %bb.ag
end_hunk_0
