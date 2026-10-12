Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/gromacs/original/tomorse?download=true
inline.NumInlined: 406
inline.NumDeleted: 250
begin_hunk_0_@_Z17convert_harmonicsN3gmx8ArrayRefI19MoleculeInformationEEP22PreprocessingAtomTypes:bb.a
  %i.n = icmp eq i32 %i.m, 3
  br i1 %i.n, label %bb.f, label %bb.m

bb.f:                                             ; preds = %bb.e
  %i.o = sext i32 %.015.i to i64
  %.not.i = icmp slt i64 %indvars.iv.i, %i.o
  br i1 %.not.i, label %_ZL15gmx_srenew_implI8t_2morseEvPKcS2_iRPT_m.exit.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.p = add nsw i32 %.015.i, 16                  ; 2 uses
  %i.q = sext i32 %i.p to i64
  %i.r = invoke noundef ptr @_Z12save_reallocPKcS0_iPvmm(ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.4, i32 noundef 91, ptr noundef %.0.i, i64 noundef range(i64 -2147483632, 2147483648) %i.q, i64 noundef 24)
          to label %_ZL15gmx_srenew_implI8t_2morseEvPKcS2_iRPT_m.exit.i unwind label %bb.i

bb.h:                                             ; preds = %bb.a
  %i.s = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt10filesystem7__cxx114pathD2Ev(ptr noundef nonnull align 8 dead_on_return(40) dereferenceable(40) %4) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #18
  br label %_ZNSt10unique_ptrI8_IO_FILEN3gmx15functor_wrapperIS0_XadL_ZNS1_14fclose_wrapperEPS0_EEEEED2Ev.exit.i

bb.i:                                             ; preds = %bb.k, %_ZL15gmx_srenew_implI8t_2morseEvPKcS2_iRPT_m.exit.i, %bb.g, %bb.d
  %i.t = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.u = load ptr, ptr %3, align 8, !tbaa !48     ; 2 uses
  %.not.i.i = icmp eq ptr %i.u, null
  br i1 %.not.i.i, label %_ZNSt10unique_ptrI8_IO_FILEN3gmx15functor_wrapperIS0_XadL_ZNS1_14fclose_wrapperEPS0_EEEEED2Ev.exit.i, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.v = call i32 @fclose(ptr noundef nonnull %i.u) ; 0 uses
  br label %_ZNSt10unique_ptrI8_IO_FILEN3gmx15functor_wrapperIS0_XadL_ZNS1_14fclose_wrapperEPS0_EEEEED2Ev.exit.i

_ZL15gmx_srenew_implI8t_2morseEvPKcS2_iRPT_m.exit.i: ; preds = %bb.g, %bb.f
  %.124.i = phi ptr [ %.0.i, %bb.f ], [ %i.r, %bb.g ] ; 2 uses
  %.116.i = phi i32 [ %.015.i, %bb.f ], [ %i.p, %bb.g ]
  %i.w = invoke noundef ptr @_Z10gmx_strdupPKc(ptr noundef nonnull %i.a)
          to label %bb.k unwind label %bb.i

bb.k:                                             ; preds = %_ZL15gmx_srenew_implI8t_2morseEvPKcS2_iRPT_m.exit.i
  %i.x = getelementptr inbounds nuw [24 x i8], ptr %.124.i, i64 %indvars.iv.i ; 3 uses
  store ptr %i.w, ptr %i.x, align 8, !tbaa !51
  %i.y = invoke noundef ptr @_Z10gmx_strdupPKc(ptr noundef nonnull %i.b)
          to label %bb.l unwind label %bb.i

bb.l:                                             ; preds = %bb.k
  %i.z = getelementptr inbounds nuw i8, ptr %i.x, i64 8
  store ptr %i.y, ptr %i.z, align 8, !tbaa !52
  %i.aa = load double, ptr %i.c, align 8, !tbaa !54
  %i.ab = fptrunc double %i.aa to float
  %i.ac = getelementptr inbounds nuw i8, ptr %i.x, i64 16
  store float %i.ab, ptr %i.ac, align 8, !tbaa !55
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1
  br label %bb.d, !llvm.loop !42

bb.m:                                             ; preds = %bb.e
  %i.ad = load ptr, ptr %3, align 8, !tbaa !48    ; 2 uses
  %.not.i18.i = icmp eq ptr %i.ad, null
  br i1 %.not.i18.i, label %_ZL26read_dissociation_energiesPi.exit, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.ae = call i32 @fclose(ptr noundef nonnull %i.ad) ; 0 uses
  br label %_ZL26read_dissociation_energiesPi.exit

common.resume:                                    ; preds = %_ZNSt14_Optional_baseIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit97, %_ZNSt6vectorIiSaIiEED2Ev.exit106, %_ZNSt10unique_ptrI8_IO_FILEN3gmx15functor_wrapperIS0_XadL_ZNS1_14fclose_wrapperEPS0_EEEEED2Ev.exit.i
  %common.resume.op = phi { ptr, i32 } [ %.pn.i, %_ZNSt10unique_ptrI8_IO_FILEN3gmx15functor_wrapperIS0_XadL_ZNS1_14fclose_wrapperEPS0_EEEEED2Ev.exit.i ], [ %.pn, %_ZNSt14_Optional_baseIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit97 ], [ %.pn64.pn, %_ZNSt6vectorIiSaIiEED2Ev.exit106 ]
  resume { ptr, i32 } %common.resume.op

_ZNSt10unique_ptrI8_IO_FILEN3gmx15functor_wrapperIS0_XadL_ZNS1_14fclose_wrapperEPS0_EEEEED2Ev.exit.i: ; preds = %bb.j, %bb.i, %bb.h
  %.pn.i = phi { ptr, i32 } [ %i.s, %bb.h ], [ %i.t, %bb.i ], [ %i.t, %bb.j ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #18
  br label %common.resume

_ZL26read_dissociation_energiesPi.exit:           ; preds = %bb.m, %bb.n
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #18
  %i.af = icmp eq i64 %indvars.iv.i, 0
  br i1 %i.af, label %bb.o, label %.preheader156

.preheader156:                                    ; preds = %_ZL26read_dissociation_energiesPi.exit
  %.not182 = icmp eq ptr %0, %1
  br i1 %.not182, label %._crit_edge185, label %.preheader.lr.ph

.preheader.lr.ph:                                 ; preds = %.preheader156
  %i.ag = getelementptr inbounds nuw i8, ptr %6, i64 32 ; 4 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 4 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %5, i64 32 ; 4 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 4 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 6 uses
  %i.al = getelementptr inbounds nuw i8, ptr %8, i64 8
  %i.am = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %7, i64 24
  %i.ao = getelementptr inbounds nuw i8, ptr %7, i64 72 ; 3 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %7, i64 88 ; 7 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %7, i64 80 ; 3 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %7, i64 104
  br label %.preheader

bb.o:                                             ; preds = %_ZL26read_dissociation_energiesPi.exit
  %i.as = load ptr, ptr @stderr, align 8, !tbaa !48
  %fwrite = call i64 @fwrite(ptr nonnull @.str, i64 29, i64 1, ptr %i.as) #20 ; 0 uses
  br label %bb.bn

.preheader:                                       ; preds = %.preheader.lr.ph, %bb.p
  %.0184 = phi i32 [ 0, %.preheader.lr.ph ], [ %i.ay, %bb.p ] ; 2 uses
  %.sroa.0148.0183 = phi ptr [ %0, %.preheader.lr.ph ], [ %i.az, %bb.p ] ; 6 uses
  %i.at = getelementptr inbounds nuw i8, ptr %.sroa.0148.0183, i64 160
  %i.au = getelementptr inbounds nuw i8, ptr %.sroa.0148.0183, i64 24 ; 2 uses
  %i.av = getelementptr inbounds nuw i8, ptr %.sroa.0148.0183, i64 608
  %i.aw = getelementptr inbounds nuw i8, ptr %.sroa.0148.0183, i64 616 ; 3 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %.sroa.0148.0183, i64 624
  br label %bb.q

._crit_edge185:                                   ; preds = %bb.p, %.preheader156
  call void @_Z9save_freePKcS0_iPv(ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.4, i32 noundef 260, ptr noundef %.0.i)
  br label %bb.bn

bb.p:                                             ; preds = %bb.bm
  %i.ay = add nuw nsw i32 %.0184, 1
  %i.az = getelementptr inbounds nuw i8, ptr %.sroa.0148.0183, i64 21440 ; 2 uses
  %.not = icmp eq ptr %i.az, %1
  br i1 %.not, label %._crit_edge185, label %.preheader

bb.q:                                             ; preds = %.preheader, %bb.bm
  %indvars.iv = phi i64 [ 0, %.preheader ], [ %indvars.iv.next, %bb.bm ] ; 4 uses
  %i.ba = getelementptr inbounds nuw [32 x i8], ptr @interaction_function, i64 %indvars.iv ; 2 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ba, i64 28
  %i.bc = load i32, ptr %i.bb, align 4, !tbaa !57
  %i.bd = and i32 %i.bc, 16
  %i.be = icmp ne i32 %i.bd, 0
  %i.bf = icmp ne i64 %indvars.iv, 2
  %or.cond = and i1 %i.bf, %i.be
  br i1 %or.cond, label %bb.r, label %bb.bm

bb.r:                                             ; preds = %bb.q
  %i.bg = getelementptr inbounds nuw [224 x i8], ptr %i.at, i64 %indvars.iv ; 4 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bg, i64 8 ; 5 uses
  %i.bi = load ptr, ptr %i.bh, align 8, !tbaa !22 ; 2 uses
  %i.bj = load ptr, ptr %i.bg, align 8, !tbaa !23 ; 3 uses
  %i.bk = ptrtoint ptr %i.bi to i64               ; 3 uses
  %i.bl = ptrtoint ptr %i.bj to i64
  %i.bm = sub i64 %i.bk, %i.bl
  %i.bn = sdiv exact i64 %i.bm, 112
  %i.bo = trunc i64 %i.bn to i32                  ; 2 uses
  %.not154179 = icmp eq ptr %i.bj, %i.bi
  br i1 %.not154179, label %._crit_edge, label %.lr.ph

._crit_edge.loopexit:                             ; preds = %bb.bl
  %.pre202 = load ptr, ptr %i.bg, align 8, !tbaa !23
  %.pre203 = ptrtoint ptr %.sroa.0137.1 to i64
  %.pre204 = ptrtoint ptr %.pre202 to i64
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %bb.r
  %.pre-phi205 = phi i64 [ %.pre204, %._crit_edge.loopexit ], [ %i.bk, %bb.r ]
  %.pre-phi = phi i64 [ %.pre203, %._crit_edge.loopexit ], [ %i.bk, %bb.r ]
  %i.bp = sub i64 %.pre-phi, %.pre-phi205
  %.neg = sdiv exact i64 %i.bp, -112
  %.neg155 = trunc i64 %.neg to i32
  %i.bq = load ptr, ptr @stderr, align 8, !tbaa !48
  %i.br = add i32 %.neg155, %i.bo
  %i.bs = load ptr, ptr %i.ba, align 8, !tbaa !58
  %i.bt = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.bq, ptr noundef nonnull @.str.2, i32 noundef %i.br, i32 noundef %i.bo, ptr noundef %i.bs, i32 noundef %.0184) #21 ; 0 uses
  br label %bb.bm

.lr.ph:                                           ; preds = %bb.r, %bb.bl
  %.sroa.0137.0180 = phi ptr [ %.sroa.0137.1, %bb.bl ], [ %i.bj, %bb.r ] ; 6 uses
  %i.bu = call noundef nonnull align 4 dereferenceable(4) ptr @_ZNK17InteractionOfType2aiEv(ptr noundef nonnull align 8 dereferenceable(105) %.sroa.0137.0180)
  %i.bv = load i32, ptr %i.bu, align 4, !tbaa !59 ; 2 uses
  %i.bw = call noundef nonnull align 4 dereferenceable(4) ptr @_ZNK17InteractionOfType2ajEv(ptr noundef nonnull align 8 dereferenceable(105) %.sroa.0137.0180)
  %i.bx = load i32, ptr %i.bw, align 4, !tbaa !59 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #18
  %i.by = load ptr, ptr %i.au, align 8, !tbaa !72
  %i.bz = sext i32 %i.bv to i64
  %i.ca = getelementptr inbounds [36 x i8], ptr %i.by, i64 %i.bz
  %i.cb = getelementptr inbounds nuw i8, ptr %i.ca, i64 16
  %i.cc = load i16, ptr %i.cb, align 4, !tbaa !76
  %i.cd = zext i16 %i.cc to i32
  call void @_ZNK22PreprocessingAtomTypes20atomNameFromAtomTypeB5cxx11Ei(ptr dead_on_unwind nonnull writable sret(%"class.std::optional.29") align 8 %5, ptr noundef nonnull align 8 dereferenceable(8) %2, i32 noundef %i.cd)
  %i.ce = load ptr, ptr %5, align 8, !tbaa !17    ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #18
  %i.cf = load ptr, ptr %i.au, align 8, !tbaa !72
  %i.cg = sext i32 %i.bx to i64
  %i.ch = getelementptr inbounds [36 x i8], ptr %i.cf, i64 %i.cg
  %i.ci = getelementptr inbounds nuw i8, ptr %i.ch, i64 16
  %i.cj = load i16, ptr %i.ci, align 4, !tbaa !76
  %i.ck = zext i16 %i.cj to i32
  invoke void @_ZNK22PreprocessingAtomTypes20atomNameFromAtomTypeB5cxx11Ei(ptr dead_on_unwind nonnull writable sret(%"class.std::optional.29") align 8 %6, ptr noundef nonnull align 8 dereferenceable(8) %2, i32 noundef %i.ck)
          to label %bb.s unwind label %bb.bd

bb.s:                                             ; preds = %.lr.ph
  %i.cl = load ptr, ptr %6, align 8, !tbaa !17    ; 6 uses
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.am, %bb.s
  %indvars.iv.i70 = phi i64 [ 0, %bb.s ], [ %indvars.iv.next.i72, %bb.am ] ; 3 uses
  %.0137.i = phi i32 [ 0, %bb.s ], [ %.1.i, %bb.am ] ; 7 uses
  %.061136.i = phi i32 [ 0, %bb.s ], [ %.162.i, %bb.am ] ; 7 uses
  %.063135.i = phi i32 [ -1, %bb.s ], [ %.164.i, %bb.am ] ; 3 uses
  %i.cm = getelementptr inbounds nuw [24 x i8], ptr %.0.i, i64 %indvars.iv.i70 ; 5 uses
  %i.cn = load ptr, ptr %i.cm, align 8, !tbaa !51
  %i.co = invoke noundef i32 @_Z14gmx_strcasecmpPKcS0_(ptr noundef %i.cn, ptr noundef %i.ce)
          to label %.noexc unwind label %bb.be

.noexc:                                           ; preds = %.lr.ph.i
  %i.cp = icmp eq i32 %i.co, 0
  %i.cq = trunc nuw nsw i64 %indvars.iv.i70 to i32 ; 4 uses
  br i1 %i.cp, label %bb.t, label %bb.u

bb.t:                                             ; preds = %.noexc
  %i.cr = getelementptr inbounds nuw i8, ptr %i.cm, i64 8
  %i.cs = load ptr, ptr %i.cr, align 8, !tbaa !52
  %i.ct = invoke noundef i32 @_Z14gmx_strcasecmpPKcS0_(ptr noundef %i.cs, ptr noundef %i.cl)
          to label %.noexc74 unwind label %bb.be

.noexc74:                                         ; preds = %bb.t
  %i.cu = icmp eq i32 %i.ct, 0
  br i1 %i.cu, label %.thread.i, label %bb.u

bb.u:                                             ; preds = %.noexc74, %.noexc
  %i.cv = getelementptr inbounds nuw i8, ptr %i.cm, i64 8 ; 2 uses
  %i.cw = load ptr, ptr %i.cv, align 8, !tbaa !52
  %i.cx = invoke noundef i32 @_Z14gmx_strcasecmpPKcS0_(ptr noundef %i.cw, ptr noundef %i.ce)
          to label %.noexc75 unwind label %bb.be

.noexc75:                                         ; preds = %bb.u
  %i.cy = icmp eq i32 %i.cx, 0
  br i1 %i.cy, label %bb.v, label %bb.w

bb.v:                                             ; preds = %.noexc75
  %i.cz = load ptr, ptr %i.cm, align 8, !tbaa !51
  %i.da = invoke noundef i32 @_Z14gmx_strcasecmpPKcS0_(ptr noundef %i.cz, ptr noundef %i.cl)
          to label %.noexc76 unwind label %bb.be

.noexc76:                                         ; preds = %bb.v
  %i.db = icmp eq i32 %i.da, 0
  br i1 %i.db, label %.thread.i, label %bb.w

bb.w:                                             ; preds = %.noexc76, %.noexc75
  %i.dc = load ptr, ptr %i.cm, align 8, !tbaa !51 ; 3 uses
  %i.dd = load i8, ptr %i.dc, align 1, !tbaa !18  ; 3 uses
  %.not20.i.i = icmp eq i8 %i.dd, 0               ; 2 uses
  br i1 %.not20.i.i, label %.critedge.i.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.w, %bb.y
  %indvars.iv.i.i = phi i64 [ %indvars.iv.next.i.i, %bb.y ], [ 0, %bb.w ] ; 3 uses
  %.in.i.i = phi i8 [ %i.dl, %bb.y ], [ %i.dd, %bb.w ]
  %i.de = getelementptr inbounds nuw i8, ptr %i.ce, i64 %indvars.iv.i.i
  %i.df = load i8, ptr %i.de, align 1, !tbaa !18  ; 2 uses
  %.not16.i.i = icmp eq i8 %i.df, 0
  br i1 %.not16.i.i, label %.critedge.thread.loopexit.i.i, label %bb.x

bb.x:                                             ; preds = %.lr.ph.i.i
  %i.dg = sext i8 %.in.i.i to i32
  %i.dh = sext i8 %i.df to i32
  %i.di = call i32 @toupper(i32 noundef %i.dg) #22
  %i.dj = call i32 @toupper(i32 noundef %i.dh) #22
  %.not17.i.i = icmp eq i32 %i.di, %i.dj
  br i1 %.not17.i.i, label %bb.y, label %.critedge.thread.loopexit.i.i

bb.y:                                             ; preds = %bb.x
  %indvars.iv.next.i.i = add nuw nsw i64 %indvars.iv.i.i, 1 ; 4 uses
  %i.dk = getelementptr inbounds nuw i8, ptr %i.dc, i64 %indvars.iv.next.i.i
  %i.dl = load i8, ptr %i.dk, align 1, !tbaa !18  ; 2 uses
  %.not.i.i73 = icmp eq i8 %i.dl, 0
  br i1 %.not.i.i73, label %.critedge.loopexit.i.i, label %.lr.ph.i.i, !llvm.loop !43

.critedge.loopexit.i.i:                           ; preds = %bb.y
  %i.dm = trunc nuw i64 %indvars.iv.next.i.i to i32
  br label %.critedge.i.i

.critedge.i.i:                                    ; preds = %.critedge.loopexit.i.i, %bb.w
  %.0.lcssa.i.i = phi i32 [ 0, %bb.w ], [ %i.dm, %.critedge.loopexit.i.i ]
  %.lcssa.i.i = phi i64 [ 0, %bb.w ], [ %indvars.iv.next.i.i, %.critedge.loopexit.i.i ]
  %i.dn = getelementptr inbounds nuw i8, ptr %i.ce, i64 %.lcssa.i.i
  %i.do = load i8, ptr %i.dn, align 1, !tbaa !18
  %i.dp = icmp eq i8 %i.do, 0
  %i.dq = zext i1 %i.dp to i32
  %spec.select.i.i = add nuw nsw i32 %.0.lcssa.i.i, %i.dq
  br label %_ZL6nequalPKcS0_.exit.i

.critedge.thread.loopexit.i.i:                    ; preds = %bb.x, %.lr.ph.i.i
  %i.dr = trunc nuw nsw i64 %indvars.iv.i.i to i32
  br label %_ZL6nequalPKcS0_.exit.i

_ZL6nequalPKcS0_.exit.i:                          ; preds = %.critedge.thread.loopexit.i.i, %.critedge.i.i
  %.1.i.i = phi i32 [ %spec.select.i.i, %.critedge.i.i ], [ %i.dr, %.critedge.thread.loopexit.i.i ] ; 4 uses
  %i.ds = load ptr, ptr %i.cv, align 8, !tbaa !52 ; 3 uses
  %i.dt = load i8, ptr %i.ds, align 1, !tbaa !18  ; 3 uses
  %.not20.i78.i = icmp eq i8 %i.dt, 0             ; 2 uses
  br i1 %.not20.i78.i, label %.critedge.i89.i, label %.lr.ph.i79.i

.lr.ph.i79.i:                                     ; preds = %_ZL6nequalPKcS0_.exit.i, %bb.aa
  %indvars.iv.i80.i = phi i64 [ %indvars.iv.next.i86.i, %bb.aa ], [ 0, %_ZL6nequalPKcS0_.exit.i ] ; 3 uses
  %.in.i81.i = phi i8 [ %i.eb, %bb.aa ], [ %i.dt, %_ZL6nequalPKcS0_.exit.i ]
  %i.du = getelementptr inbounds nuw i8, ptr %i.cl, i64 %indvars.iv.i80.i
  %i.dv = load i8, ptr %i.du, align 1, !tbaa !18  ; 2 uses
  %.not16.i82.i = icmp eq i8 %i.dv, 0
  br i1 %.not16.i82.i, label %.critedge.thread.loopexit.i84.i, label %bb.z

bb.z:                                             ; preds = %.lr.ph.i79.i
  %i.dw = sext i8 %.in.i81.i to i32
  %i.dx = sext i8 %i.dv to i32
  %i.dy = call i32 @toupper(i32 noundef %i.dw) #22
  %i.dz = call i32 @toupper(i32 noundef %i.dx) #22
  %.not17.i83.i = icmp eq i32 %i.dy, %i.dz
  br i1 %.not17.i83.i, label %bb.aa, label %.critedge.thread.loopexit.i84.i

bb.aa:                                            ; preds = %bb.z
  %indvars.iv.next.i86.i = add nuw nsw i64 %indvars.iv.i80.i, 1 ; 4 uses
  %i.ea = getelementptr inbounds nuw i8, ptr %i.ds, i64 %indvars.iv.next.i86.i
  %i.eb = load i8, ptr %i.ea, align 1, !tbaa !18  ; 2 uses
  %.not.i87.i = icmp eq i8 %i.eb, 0
  br i1 %.not.i87.i, label %.critedge.loopexit.i88.i, label %.lr.ph.i79.i, !llvm.loop !43

.critedge.loopexit.i88.i:                         ; preds = %bb.aa
  %i.ec = trunc nuw i64 %indvars.iv.next.i86.i to i32
  br label %.critedge.i89.i

.critedge.i89.i:                                  ; preds = %.critedge.loopexit.i88.i, %_ZL6nequalPKcS0_.exit.i
  %.0.lcssa.i90.i = phi i32 [ 0, %_ZL6nequalPKcS0_.exit.i ], [ %i.ec, %.critedge.loopexit.i88.i ]
  %.lcssa.i91.i = phi i64 [ 0, %_ZL6nequalPKcS0_.exit.i ], [ %indvars.iv.next.i86.i, %.critedge.loopexit.i88.i ]
  %i.ed = getelementptr inbounds nuw i8, ptr %i.cl, i64 %.lcssa.i91.i
  %i.ee = load i8, ptr %i.ed, align 1, !tbaa !18
  %i.ef = icmp eq i8 %i.ee, 0
  %i.eg = zext i1 %i.ef to i32
  %spec.select.i92.i = add nuw nsw i32 %.0.lcssa.i90.i, %i.eg
  br label %_ZL6nequalPKcS0_.exit93.i

.critedge.thread.loopexit.i84.i:                  ; preds = %bb.z, %.lr.ph.i79.i
  %i.eh = trunc nuw nsw i64 %indvars.iv.i80.i to i32
  br label %_ZL6nequalPKcS0_.exit93.i

_ZL6nequalPKcS0_.exit93.i:                        ; preds = %.critedge.thread.loopexit.i84.i, %.critedge.i89.i
  %.1.i85.i = phi i32 [ %spec.select.i92.i, %.critedge.i89.i ], [ %i.eh, %.critedge.thread.loopexit.i84.i ] ; 4 uses
  %i.ei = icmp sle i32 %.1.i.i, %.061136.i
  %.not.i71 = icmp slt i32 %.1.i85.i, %.0137.i
  %or.cond74.i = select i1 %i.ei, i1 true, i1 %.not.i71
  br i1 %or.cond74.i, label %bb.ab, label %bb.ac

bb.ab:                                            ; preds = %_ZL6nequalPKcS0_.exit93.i
  %.not71.i = icmp sge i32 %.1.i.i, %.061136.i
  %i.ej = icmp sgt i32 %.1.i85.i, %.0137.i
  %or.cond75.i = select i1 %.not71.i, i1 %i.ej, i1 false
  br i1 %or.cond75.i, label %bb.ac, label %bb.ae

bb.ac:                                            ; preds = %bb.ab, %_ZL6nequalPKcS0_.exit93.i
  %i.ek = icmp sgt i32 %.1.i.i, 0
  %i.el = icmp sgt i32 %.1.i85.i, 0
  %or.cond.i = and i1 %i.ek, %i.el
  br i1 %or.cond.i, label %bb.ad, label %bb.am

bb.ad:                                            ; preds = %bb.ac
  br label %bb.am

bb.ae:                                            ; preds = %bb.ab
  br i1 %.not20.i.i, label %.critedge.i105.i, label %.lr.ph.i95.i

.lr.ph.i95.i:                                     ; preds = %bb.ae, %bb.ag
  %indvars.iv.i96.i = phi i64 [ %indvars.iv.next.i102.i, %bb.ag ], [ 0, %bb.ae ] ; 3 uses
  %.in.i97.i = phi i8 [ %i.et, %bb.ag ], [ %i.dd, %bb.ae ]
  %i.em = getelementptr inbounds nuw i8, ptr %i.cl, i64 %indvars.iv.i96.i
  %i.en = load i8, ptr %i.em, align 1, !tbaa !18  ; 2 uses
  %.not16.i98.i = icmp eq i8 %i.en, 0
  br i1 %.not16.i98.i, label %.critedge.thread.loopexit.i100.i, label %bb.af

bb.af:                                            ; preds = %.lr.ph.i95.i
  %i.eo = sext i8 %.in.i97.i to i32
  %i.ep = sext i8 %i.en to i32
  %i.eq = call i32 @toupper(i32 noundef %i.eo) #22
  %i.er = call i32 @toupper(i32 noundef %i.ep) #22
  %.not17.i99.i = icmp eq i32 %i.eq, %i.er
  br i1 %.not17.i99.i, label %bb.ag, label %.critedge.thread.loopexit.i100.i

bb.ag:                                            ; preds = %bb.af
  %indvars.iv.next.i102.i = add nuw nsw i64 %indvars.iv.i96.i, 1 ; 4 uses
  %i.es = getelementptr inbounds nuw i8, ptr %i.dc, i64 %indvars.iv.next.i102.i
  %i.et = load i8, ptr %i.es, align 1, !tbaa !18  ; 2 uses
  %.not.i103.i = icmp eq i8 %i.et, 0
  br i1 %.not.i103.i, label %.critedge.loopexit.i104.i, label %.lr.ph.i95.i, !llvm.loop !43

.critedge.loopexit.i104.i:                        ; preds = %bb.ag
  %i.eu = trunc nuw i64 %indvars.iv.next.i102.i to i32
  br label %.critedge.i105.i

.critedge.i105.i:                                 ; preds = %.critedge.loopexit.i104.i, %bb.ae
  %.0.lcssa.i106.i = phi i32 [ 0, %bb.ae ], [ %i.eu, %.critedge.loopexit.i104.i ]
  %.lcssa.i107.i = phi i64 [ 0, %bb.ae ], [ %indvars.iv.next.i102.i, %.critedge.loopexit.i104.i ]
  %i.ev = getelementptr inbounds nuw i8, ptr %i.cl, i64 %.lcssa.i107.i
  %i.ew = load i8, ptr %i.ev, align 1, !tbaa !18
  %i.ex = icmp eq i8 %i.ew, 0
  %i.ey = zext i1 %i.ex to i32
  %spec.select.i108.i = add nuw nsw i32 %.0.lcssa.i106.i, %i.ey
  br label %_ZL6nequalPKcS0_.exit109.i

.critedge.thread.loopexit.i100.i:                 ; preds = %bb.af, %.lr.ph.i95.i
  %i.ez = trunc nuw nsw i64 %indvars.iv.i96.i to i32
  br label %_ZL6nequalPKcS0_.exit109.i

end_hunk_0
