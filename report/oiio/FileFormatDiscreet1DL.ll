inline.NumInlined: 455
inline.NumDeleted: 214
begin_hunk_0_@_ZNK16OpenColorIO_v2_512_GLOBAL__N_115LocalFileFormat4readERSiRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_13InterpolationE:bb.a

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit
  %i.at = load i64, ptr %i.ar, align 8, !tbaa !16
  %i.au = add i64 %i.at, 1
  call void @_ZdlPvm(ptr noundef %i.aq, i64 noundef %i.au) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #26
  call void @llvm.lifetime.start.p0(ptr nonnull %11)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h) #26
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i) #26
  store ptr null, ptr %i.i, align 8, !tbaa !27
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j) #26
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k) #26
  store i32 0, ptr %i.o, align 4, !tbaa !3
  %i.av = invoke fastcc noundef zeroext i1 @_ZN16OpenColorIO_v2_512_GLOBAL__N_114FindNonCommentERSiRiPci(ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef nonnull align 4 dereferenceable(4) %i.o, ptr noundef %i.h)
          to label %.noexc unwind label %.loopexit.split-lp

.noexc:                                           ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  br i1 %i.av, label %bb.i, label %.thread

bb.i:                                             ; preds = %.noexc
  %i.aw = load i8, ptr %i.h, align 16, !tbaa !16
  %i.ax = sext i8 %i.aw to i32
  %isdigittmp.i = add nsw i32 %i.ax, -48
  %isdigit.i = icmp ult i32 %isdigittmp.i, 10
  br i1 %isdigit.i, label %bb.j, label %bb.y

bb.j:                                             ; preds = %bb.i
  store i32 1, ptr %i.j, align 4, !tbaa !3
  store i32 256, ptr %i.k, align 4, !tbaa !3
  %i.ay = invoke fastcc noundef zeroext i1 @_ZN16OpenColorIO_v2_512_GLOBAL__N_110Lut1dUtils10IMLutAllocEPPNS1_11IMLutStructEii(ptr noundef %i.i, i32 noundef 1, i32 noundef 256)
          to label %.noexc49 unwind label %.loopexit.split-lp

.noexc49:                                         ; preds = %bb.j
  br i1 %i.ay, label %bb.k, label %.thread

bb.k:                                             ; preds = %.noexc49
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #26
  %i.az = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 7 uses
  store ptr %i.az, ptr %8, align 8, !tbaa !9
  %i.ba = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.h) #26 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #26
  store i64 %i.ba, ptr %i.g, align 8, !tbaa !29
  %i.bb = icmp ugt i64 %i.ba, 15
  br i1 %i.bb, label %.noexc.i.i, label %._crit_edge.i.i.i

.noexc.i.i:                                       ; preds = %bb.k
  %i.bc = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %8, ptr noundef nonnull align 8 dereferenceable(8) %i.g, i64 noundef 0)
          to label %.noexc.i unwind label %bb.x   ; 2 uses

.noexc.i:                                         ; preds = %.noexc.i.i
  store ptr %i.bc, ptr %8, align 8, !tbaa !26
  %i.bd = load i64, ptr %i.g, align 8, !tbaa !29
  store i64 %i.bd, ptr %i.az, align 8, !tbaa !16
  br label %._crit_edge.i.i.i

._crit_edge.i.i.i:                                ; preds = %.noexc.i, %bb.k
  %i.be = phi ptr [ %i.bc, %.noexc.i ], [ %i.az, %bb.k ] ; 2 uses
  switch i64 %i.ba, label %bb.m [
    i64 1, label %bb.l
    i64 0, label %bb.n
  ]

bb.l:                                             ; preds = %._crit_edge.i.i.i
  %i.bf = load i8, ptr %i.h, align 16, !tbaa !16
  store i8 %i.bf, ptr %i.be, align 1, !tbaa !16
  br label %bb.n

bb.m:                                             ; preds = %._crit_edge.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.be, ptr nonnull align 16 %i.h, i64 %i.ba, i1 false)
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l, %._crit_edge.i.i.i
  %i.bg = load i64, ptr %i.g, align 8, !tbaa !29  ; 2 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %8, i64 8
  store i64 %i.bg, ptr %i.bh, align 8, !tbaa !13
  %i.bi = load ptr, ptr %8, align 8, !tbaa !26
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bi, i64 %i.bg
  store i8 0, ptr %i.bj, align 1, !tbaa !16
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #26
  %i.bk = load ptr, ptr %8, align 8, !tbaa !26    ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #26
  %i.bl = tail call ptr @__errno_location() #28   ; 6 uses
  %i.bm = load i32, ptr %i.bl, align 4, !tbaa !3  ; 2 uses
  store i32 0, ptr %i.bl, align 4, !tbaa !3
  %i.bn = call noundef i64 @__isoc23_strtol(ptr noundef %i.bk, ptr noundef nonnull %i.f, i32 noundef 10) ; 2 uses
  %i.bo = load ptr, ptr %i.f, align 8, !tbaa !30
  %i.bp = icmp eq ptr %i.bo, %i.bk
  br i1 %i.bp, label %bb.o, label %bb.s

bb.o:                                             ; preds = %bb.n
  invoke void @_ZSt24__throw_invalid_argumentPKc(ptr noundef nonnull @.str.13) #29
          to label %bb.p unwind label %bb.q

bb.p:                                             ; preds = %bb.o
  unreachable

bb.q:                                             ; preds = %.critedge.i.i.i, %bb.o
  %i.bq = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.br = load i32, ptr %i.bl, align 4, !tbaa !3
  %i.bs = icmp eq i32 %i.br, 0
  br i1 %i.bs, label %bb.r, label %_ZZN9__gnu_cxx6__stoaIlicJiEEET0_PFT_PKT1_PPS3_DpT2_EPKcS5_PmS9_EN11_Save_errnoD2Ev.exit.i.i.i

bb.r:                                             ; preds = %bb.q
  store i32 %i.bm, ptr %i.bl, align 4, !tbaa !3
  br label %_ZZN9__gnu_cxx6__stoaIlicJiEEET0_PFT_PKT1_PPS3_DpT2_EPKcS5_PmS9_EN11_Save_errnoD2Ev.exit.i.i.i

_ZZN9__gnu_cxx6__stoaIlicJiEEET0_PFT_PKT1_PPS3_DpT2_EPKcS5_PmS9_EN11_Save_errnoD2Ev.exit.i.i.i: ; preds = %bb.r, %bb.q
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #26
  %i.bt = load ptr, ptr %8, align 8, !tbaa !26    ; 2 uses
  %i.bu = icmp eq ptr %i.bt, %i.az
  br i1 %i.bu, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit91.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i89.i

bb.s:                                             ; preds = %bb.n
  %i.bv = load i32, ptr %i.bl, align 4, !tbaa !3  ; 2 uses
  %i.bw = icmp eq i32 %i.bv, 34
  %i.bx = add i64 %i.bn, -2147483648
  %i.by = icmp ult i64 %i.bx, -4294967296
  %or.cond.i.i.i = or i1 %i.by, %i.bw
  br i1 %or.cond.i.i.i, label %.critedge.i.i.i, label %bb.u

.critedge.i.i.i:                                  ; preds = %bb.s
  invoke void @_ZSt20__throw_out_of_rangePKc(ptr noundef nonnull @.str.13) #29
          to label %bb.t unwind label %bb.q

bb.t:                                             ; preds = %.critedge.i.i.i
  unreachable

bb.u:                                             ; preds = %bb.s
  %i.bz = icmp eq i32 %i.bv, 0
  br i1 %i.bz, label %bb.v, label %bb.w

bb.v:                                             ; preds = %bb.u
  store i32 %i.bm, ptr %i.bl, align 4, !tbaa !3
  br label %bb.w

bb.w:                                             ; preds = %bb.v, %bb.u
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #26
  %i.ca = trunc i64 %i.bn to i16
  %i.cb = load ptr, ptr %i.i, align 8, !tbaa !27
  %i.cc = getelementptr inbounds nuw i8, ptr %i.cb, i64 16
  %i.cd = load ptr, ptr %i.cc, align 8, !tbaa !31
  %i.ce = load ptr, ptr %i.cd, align 8, !tbaa !35
  store i16 %i.ca, ptr %i.ce, align 2, !tbaa !37
  %i.cf = load ptr, ptr %8, align 8, !tbaa !26    ; 2 uses
  %i.cg = icmp eq ptr %i.cf, %i.az
  br i1 %i.cg, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.w
  %i.ch = load i64, ptr %i.az, align 8, !tbaa !16
  %i.ci = add i64 %i.ch, 1
  call void @_ZdlPvm(ptr noundef %i.cf, i64 noundef %i.ci) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i: ; preds = %bb.w, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #26
  br label %bb.ai

bb.x:                                             ; preds = %.noexc.i.i
  %i.cj = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit91.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i89.i: ; preds = %_ZZN9__gnu_cxx6__stoaIlicJiEEET0_PFT_PKT1_PPS3_DpT2_EPKcS5_PmS9_EN11_Save_errnoD2Ev.exit.i.i.i
  %i.ck = load i64, ptr %i.az, align 8, !tbaa !16
  %i.cl = add i64 %i.ck, 1
  call void @_ZdlPvm(ptr noundef %i.bt, i64 noundef %i.cl) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit91.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit91.i: ; preds = %_ZZN9__gnu_cxx6__stoaIlicJiEEET0_PFT_PKT1_PPS3_DpT2_EPKcS5_PmS9_EN11_Save_errnoD2Ev.exit.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i89.i, %bb.x
  %.pn79.i = phi { ptr, i32 } [ %i.cj, %bb.x ], [ %i.bq, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i89.i ], [ %i.bq, %_ZZN9__gnu_cxx6__stoaIlicJiEEET0_PFT_PKT1_PPS3_DpT2_EPKcS5_PmS9_EN11_Save_errnoD2Ev.exit.i.i.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #26
  br label %bb.cq

bb.y:                                             ; preds = %bb.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l) #26
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.l, i8 0, i64 16, i1 false)
  %i.cm = call i32 (ptr, ptr, ...) @__isoc23_sscanf(ptr noundef nonnull %i.h, ptr noundef nonnull @.str.10, ptr noundef nonnull %i.j, ptr noundef nonnull %i.k, ptr noundef nonnull %i.l) #26 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #26
  %i.cn = getelementptr inbounds nuw i8, ptr %9, i64 16 ; 6 uses
  store ptr %i.cn, ptr %9, align 8, !tbaa !9
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(5) %i.cn, ptr noundef nonnull align 16 dereferenceable(5) %i.h, i64 5, i1 false)
  %i.co = getelementptr inbounds nuw i8, ptr %9, i64 8
  store i64 5, ptr %i.co, align 8, !tbaa !13
  %i.cp = getelementptr inbounds nuw i8, ptr %9, i64 21
  store i8 0, ptr %i.cp, align 1, !tbaa !16
  %i.cq = icmp sgt i32 %i.cm, 1
  br i1 %i.cq, label %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.i, label %.critedge86.thread.i

_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.i: ; preds = %bb.y
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #26
  %i.cr = getelementptr inbounds nuw i8, ptr %11, i64 16 ; 6 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(5) %i.cr, ptr noundef nonnull align 16 dereferenceable(5) %i.h, i64 5, i1 false)
  %i.cs = getelementptr inbounds nuw i8, ptr %11, i64 8
  %i.ct = getelementptr inbounds nuw i8, ptr %11, i64 21
  store i8 0, ptr %i.ct, align 1, !tbaa !16
  call void @llvm.experimental.noalias.scope.decl(metadata !39)
  %i.cu = load <4 x i8>, ptr %i.cr, align 8, !tbaa !16, !noalias !39 ; 2 uses
  %i.cv = add <4 x i8> %i.cu, splat (i8 -65)
  %i.cw = icmp ult <4 x i8> %i.cv, splat (i8 26)
  %20 = select <4 x i1> %i.cw, <4 x i8> splat (i8 32), <4 x i8> zeroinitializer
  %21 = or disjoint <4 x i8> %i.cu, %20
  store <4 x i8> %21, ptr %i.cr, align 8, !tbaa !16, !noalias !39
  %i.cx = getelementptr inbounds nuw i8, ptr %11, i64 20 ; 2 uses
  %i.cy = load i8, ptr %i.cx, align 4, !tbaa !16, !noalias !39 ; 3 uses
  %i.cz = add i8 %i.cy, -65
  %or.cond.i.i.i.i.4.i = icmp ult i8 %i.cz, 26
  %i.da = or disjoint i8 %i.cy, 32
  %.0.i.i.i.i.4.i = select i1 %or.cond.i.i.i.i.4.i, i8 %i.da, i8 %i.cy
  store i8 %.0.i.i.i.i.4.i, ptr %i.cx, align 4, !tbaa !16, !noalias !39
  %i.db = getelementptr inbounds nuw i8, ptr %10, i64 16 ; 4 uses
  store ptr %i.db, ptr %10, align 8, !tbaa !9, !alias.scope !39
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(6) %i.db, ptr noundef nonnull align 8 dereferenceable(6) %i.cr, i64 6, i1 false)
  store ptr %i.cr, ptr %11, align 8, !tbaa !26, !noalias !39
  store i64 0, ptr %i.cs, align 8, !tbaa !13, !noalias !39
  store i8 0, ptr %i.cr, align 8, !tbaa !16, !noalias !39
  %i.dc = load i32, ptr %i.db, align 1
  %i.dd = xor i32 %i.dc, 980710764
  %i.de = getelementptr i8, ptr %i.db, i64 4
  %i.df = load i8, ptr %i.de, align 1
  %i.dg = zext i8 %i.df to i32
  %i.dh = xor i32 %i.dg, 32
  %i.di = or i32 %i.dd, %i.dh
  %i.dj = icmp ne i32 %i.di, 0
  %i.dk = zext i1 %i.dj to i32
  %.not.i48 = icmp eq i32 %i.dk, 0
  br i1 %.not.i48, label %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread170.i, label %.critedge86.thread276.i

_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread170.i: ; preds = %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.i
  %i.dl = load i32, ptr %i.j, align 4, !tbaa !3   ; 2 uses
  switch i32 %i.dl, label %.critedge86.thread276.i [
    i32 4, label %.critedge86.i
    i32 3, label %.critedge86.i
    i32 1, label %.critedge86.i
  ]

.critedge86.thread276.i:                          ; preds = %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread170.i, %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #26
  br label %.critedge86.thread.i

.critedge86.i:                                    ; preds = %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread170.i, %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread170.i, %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread170.i
  %i.dm = load i32, ptr %i.k, align 4, !tbaa !3   ; 2 uses
  %i.dn = icmp slt i32 %i.dm, 1
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #26
  br i1 %i.dn, label %.critedge86.thread.i, label %bb.aa

.critedge86.thread.i:                             ; preds = %.critedge86.i, %.critedge86.thread276.i, %bb.y
  %i.do = load i64, ptr %i.q, align 8, !tbaa !13
  %i.dp = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.h) #26
  %i.dq = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %13, i64 noundef 0, i64 noundef %i.do, ptr noundef nonnull %i.h, i64 noundef %i.dp)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc.exit.i unwind label %bb.z ; 0 uses

bb.z:                                             ; preds = %bb.af, %.critedge86.thread.i
  %i.dr = landingpad { ptr, i32 }
          cleanup
  br label %bb.ah

bb.aa:                                            ; preds = %.critedge86.i
  %.not186.i = icmp eq i32 %i.cm, 2
  br i1 %.not186.i, label %bb.af, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m) #26
  store i32 0, ptr %i.m, align 4, !tbaa !3
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n) #26
  store i8 32, ptr %i.n, align 1, !tbaa !16
  %i.ds = call i32 (ptr, ptr, ...) @__isoc23_sscanf(ptr noundef nonnull %i.l, ptr noundef nonnull @.str.12, ptr noundef nonnull %i.m, ptr noundef nonnull %i.n) #26 ; 0 uses
  %i.dt = load i32, ptr %i.m, align 4, !tbaa !3   ; 2 uses
  %i.du = load i8, ptr %i.n, align 1, !tbaa !16
  %i.dv = and i8 %i.du, -33
  %i.dw = icmp eq i8 %i.dv, 70
  %i.dx = call range(i32 0, 33) i32 @llvm.ctpop.i32(i32 %i.dt)
  %i.dy = icmp eq i32 %i.dx, 1
  br i1 %i.dy, label %.split.i.i, label %_ZN16OpenColorIO_v2_512_GLOBAL__N_110Lut1dUtils24IMLutTableSizeToBitDepthEib.exit.i

.split.i.i:                                       ; preds = %bb.ab
  %i.dz = call range(i32 0, 33) i32 @llvm.cttz.i32(i32 %i.dt, i1 true) ; 4 uses
  switch i32 %i.dz, label %_ZN16OpenColorIO_v2_512_GLOBAL__N_110Lut1dUtils24IMLutTableSizeToBitDepthEib.exit.i [
    i32 8, label %bb.ae
    i32 10, label %bb.ae
    i32 12, label %bb.ae
    i32 16, label %bb.ac
  ]

bb.ac:                                            ; preds = %.split.i.i
  %i.ea = select i1 %i.dw, i32 -16, i32 16
  br label %bb.ae

_ZN16OpenColorIO_v2_512_GLOBAL__N_110Lut1dUtils24IMLutTableSizeToBitDepthEib.exit.i: ; preds = %.split.i.i, %bb.ab
  %i.eb = load i64, ptr %i.q, align 8, !tbaa !13
  %i.ec = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.h) #26
  %i.ed = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %13, i64 noundef 0, i64 noundef %i.eb, ptr noundef nonnull %i.h, i64 noundef %i.ec)
          to label %.thread175.i unwind label %bb.ad ; 0 uses

.thread175.i:                                     ; preds = %_ZN16OpenColorIO_v2_512_GLOBAL__N_110Lut1dUtils24IMLutTableSizeToBitDepthEib.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m) #26
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc.exit.i

bb.ad:                                            ; preds = %_ZN16OpenColorIO_v2_512_GLOBAL__N_110Lut1dUtils24IMLutTableSizeToBitDepthEib.exit.i
  %i.ee = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m) #26
  br label %bb.ah

bb.ae:                                            ; preds = %.split.i.i, %.split.i.i, %bb.ac, %.split.i.i
  %.0.i.ph.i = phi i32 [ %i.dz, %.split.i.i ], [ %i.dz, %.split.i.i ], [ %i.ea, %bb.ac ], [ %i.dz, %.split.i.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m) #26
  %.pre = load i32, ptr %i.j, align 4, !tbaa !3
  %.pre190 = load i32, ptr %i.k, align 4, !tbaa !3
  br label %bb.af

bb.af:                                            ; preds = %bb.ae, %bb.aa
  %i.ef = phi i32 [ %.pre190, %bb.ae ], [ %i.dm, %bb.aa ]
  %i.eg = phi i32 [ %.pre, %bb.ae ], [ %i.dl, %bb.aa ]
  %.058.i = phi i32 [ %.0.i.ph.i, %bb.ae ], [ 0, %bb.aa ]
  %i.eh = invoke fastcc noundef zeroext i1 @_ZN16OpenColorIO_v2_512_GLOBAL__N_110Lut1dUtils10IMLutAllocEPPNS1_11IMLutStructEii(ptr noundef %i.i, i32 noundef %i.eg, i32 noundef %i.ef)
          to label %bb.ag unwind label %bb.z      ; 2 uses

bb.ag:                                            ; preds = %bb.af
  %spec.select = select i1 %i.eh, i32 0, i32 3
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc.exit.i: ; preds = %bb.ag, %.critedge86.thread.i, %.thread175.i
  %.265.i = phi i32 [ %spec.select, %bb.ag ], [ 4, %.thread175.i ], [ 4, %.critedge86.thread.i ] ; 2 uses
  %.159.i = phi i32 [ %.058.i, %bb.ag ], [ 0, %.thread175.i ], [ 0, %.critedge86.thread.i ]
  %i.ei = phi i1 [ %i.eh, %bb.ag ], [ false, %.thread175.i ], [ false, %.critedge86.thread.i ]
  %i.ej = load ptr, ptr %9, align 8, !tbaa !26    ; 2 uses
  %i.ek = icmp eq ptr %i.ej, %i.cn
  br i1 %i.ek, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit114.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i112.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i112.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc.exit.i
  %i.el = load i64, ptr %i.cn, align 8, !tbaa !16
  %i.em = add i64 %i.el, 1
  call void @_ZdlPvm(ptr noundef %i.ej, i64 noundef %i.em) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit114.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit114.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc.exit.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i112.i
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l) #26
  br i1 %i.ei, label %bb.ai, label %bb.cr

bb.ah:                                            ; preds = %bb.ad, %bb.z
  %.pn76.i = phi { ptr, i32 } [ %i.dr, %bb.z ], [ %i.ee, %bb.ad ]
  %i.en = load ptr, ptr %9, align 8, !tbaa !26    ; 2 uses
  %i.eo = icmp eq ptr %i.en, %i.cn
  br i1 %i.eo, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit117.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i115.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i115.i: ; preds = %bb.ah
  %i.ep = load i64, ptr %i.cn, align 8, !tbaa !16
  %i.eq = add i64 %i.ep, 1
  call void @_ZdlPvm(ptr noundef %i.en, i64 noundef %i.eq) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit117.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit117.i: ; preds = %bb.ah, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i115.i
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l) #26
  br label %bb.cq

bb.ai:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit114.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i
  %.170.i = phi i32 [ 1, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i ], [ 0, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit114.i ]
  %.366.i = phi i32 [ 0, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i ], [ %.265.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit114.i ]
  %.260.i = phi i32 [ 0, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i ], [ %.159.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit114.i ] ; 2 uses
  %i.er = load i32, ptr %i.j, align 4, !tbaa !3   ; 2 uses
  %i.es = icmp sgt i32 %i.er, 0
  br i1 %i.es, label %.lr.ph.i, label %._crit_edge.thread.i

.lr.ph.i:                                         ; preds = %bb.ai
  %i.et = load ptr, ptr %i.i, align 8, !tbaa !27  ; 8 uses
  %i.eu = getelementptr inbounds nuw i8, ptr %i.et, i64 16 ; 5 uses
  %i.ev = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 7 uses
  %i.ew = getelementptr inbounds nuw i8, ptr %7, i64 8
  %.promoted150 = load i32, ptr %i.o, align 4
  br label %bb.aj

bb.aj:                                            ; preds = %.loopexit187.i, %.lr.ph.i
  %.lcssa149152 = phi i32 [ %.promoted150, %.lr.ph.i ], [ %.lcssa149151, %.loopexit187.i ] ; 2 uses
  %i.ex = phi i32 [ %i.er, %.lr.ph.i ], [ %i.jw, %.loopexit187.i ]
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.i ], [ %indvars.iv.next.i, %.loopexit187.i ] ; 2 uses
  %i.ey = load ptr, ptr %i.eu, align 8, !tbaa !31
  %i.ez = getelementptr inbounds nuw [8 x i8], ptr %i.ey, i64 %indvars.iv.i
  %i.fa = load ptr, ptr %i.ez, align 8, !tbaa !35
  %i.fb = load i32, ptr %i.k, align 4, !tbaa !3
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #26
  %i.fc = load ptr, ptr %2, align 8, !tbaa !7
  %i.fd = getelementptr i8, ptr %i.fc, i64 -24
  %i.fe = load i64, ptr %i.fd, align 8            ; 2 uses
  %i.ff = getelementptr inbounds i8, ptr %2, i64 %i.fe
  %i.fg = getelementptr inbounds nuw i8, ptr %i.ff, i64 32
  %i.fh = load i32, ptr %i.fg, align 8, !tbaa !42
  %i.fi = icmp eq i32 %i.fh, 0
  br i1 %i.fi, label %.lr.ph.i.i, label %.loopexit187.i

.lr.ph.i.i:                                       ; preds = %bb.aj, %bb.bl
  %i.fj = phi i64 [ %i.jc, %bb.bl ], [ %i.fe, %bb.aj ]
  %i.fk = phi i32 [ %i.fl, %bb.bl ], [ %.lcssa149152, %bb.aj ]
  %.01331.i.i = phi i32 [ %.1.i.i, %bb.bl ], [ %.170.i, %bb.aj ] ; 3 uses
  %i.fl = add nsw i32 %i.fk, 1                    ; 4 uses
  %i.fm = getelementptr inbounds i8, ptr %2, i64 %i.fj
  %i.fn = getelementptr inbounds nuw i8, ptr %i.fm, i64 240
end_hunk_0
begin_hunk_1_@_ZNK16OpenColorIO_v2_512_GLOBAL__N_115LocalFileFormat4readERSiRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_13InterpolationE:bb.a
  %.not12.i.i.i = icmp eq ptr %i.jn, null
  br i1 %.not12.i.i.i, label %bb.bo, label %.preheader.i.i124.i

.preheader.i.i124.i:                              ; preds = %.lr.ph18.i.i.i
  %.not20.i.i.i = icmp eq i64 %indvars.iv22.i.i.i, 0
  br i1 %.not20.i.i.i, label %._crit_edge.thread.i.i.i, label %.lr.ph.i.i125.i

.lr.ph.i.i125.i:                                  ; preds = %.preheader.i.i124.i, %bb.bn
  %indvars.iv.i.i126.i = phi i64 [ %indvars.iv.next.i.i127.i, %bb.bn ], [ 0, %.preheader.i.i124.i ] ; 3 uses
  %i.jo = getelementptr inbounds nuw [8 x i8], ptr %i.jl, i64 %indvars.iv.i.i126.i
  %i.jp = load ptr, ptr %i.jo, align 8, !tbaa !35
  %i.jq = icmp eq ptr %i.jp, %i.jn
  br i1 %i.jq, label %._crit_edge.i.i128.i, label %bb.bn

bb.bn:                                            ; preds = %.lr.ph.i.i125.i
  %indvars.iv.next.i.i127.i = add nuw nsw i64 %indvars.iv.i.i126.i, 1 ; 2 uses
  %exitcond.not.i.i.i = icmp eq i64 %indvars.iv.next.i.i127.i, %indvars.iv22.i.i.i
  br i1 %exitcond.not.i.i.i, label %._crit_edge.i.i128.i, label %.lr.ph.i.i125.i, !llvm.loop !72

._crit_edge.i.i128.i:                             ; preds = %bb.bn, %.lr.ph.i.i125.i
  %.0.lcssa.ph.in.i.i.i = phi i64 [ %indvars.iv22.i.i.i, %bb.bn ], [ %indvars.iv.i.i126.i, %.lr.ph.i.i125.i ]
  %i.jr = and i64 %.0.lcssa.ph.in.i.i.i, 4294967295
  %i.js = icmp eq i64 %i.jr, %indvars.iv22.i.i.i
  br i1 %i.js, label %._crit_edge.thread.i.i.i, label %bb.bo

._crit_edge.thread.i.i.i:                         ; preds = %._crit_edge.i.i128.i, %.preheader.i.i124.i
  call void @free(ptr noundef %i.jn) #26
  %.pre.i.i.i = load i32, ptr %i.et, align 8, !tbaa !71
  br label %bb.bo

bb.bo:                                            ; preds = %._crit_edge.thread.i.i.i, %._crit_edge.i.i128.i, %.lr.ph18.i.i.i
  %i.jt = phi i32 [ %i.jk, %._crit_edge.i.i128.i ], [ %.pre.i.i.i, %._crit_edge.thread.i.i.i ], [ %i.jk, %.lr.ph18.i.i.i ] ; 2 uses
  %indvars.iv.next23.i.i.i = add nuw nsw i64 %indvars.iv22.i.i.i, 1 ; 2 uses
  %i.ju = sext i32 %i.jt to i64
  %i.jv = icmp slt i64 %indvars.iv.next23.i.i.i, %i.ju
  br i1 %i.jv, label %.lr.ph18.i.i.i, label %._crit_edge19.loopexit.i.i.i, !llvm.loop !73

.loopexit187.loopexit.i:                          ; preds = %bb.bl, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i
  %.pre.i47 = load i32, ptr %i.j, align 4, !tbaa !3
  br label %.loopexit187.i

.loopexit187.i:                                   ; preds = %.loopexit187.loopexit.i, %bb.aj
  %.lcssa149151 = phi i32 [ %i.fl, %.loopexit187.loopexit.i ], [ %.lcssa149152, %bb.aj ] ; 2 uses
  %i.jw = phi i32 [ %.pre.i47, %.loopexit187.loopexit.i ], [ %i.ex, %bb.aj ] ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #26
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %i.jx = sext i32 %i.jw to i64
  %i.jy = icmp slt i64 %indvars.iv.next.i, %i.jx
  br i1 %i.jy, label %bb.aj, label %._crit_edge.i, !llvm.loop !74

._crit_edge.i:                                    ; preds = %.loopexit187.i
  store i32 %.lcssa149151, ptr %i.o, align 4
  %i.jz = icmp eq i32 %i.jw, 1
  br i1 %i.jz, label %bb.bp, label %._crit_edge.thread.i

bb.bp:                                            ; preds = %._crit_edge.i
  store i32 3, ptr %i.et, align 8, !tbaa !71
  %i.ka = load ptr, ptr %i.eu, align 8, !tbaa !31 ; 3 uses
  %i.kb = load ptr, ptr %i.ka, align 8, !tbaa !35 ; 2 uses
  %i.kc = getelementptr inbounds nuw i8, ptr %i.ka, i64 8
  store ptr %i.kb, ptr %i.kc, align 8, !tbaa !35
  %i.kd = getelementptr inbounds nuw i8, ptr %i.ka, i64 16
  store ptr %i.kb, ptr %i.kd, align 8, !tbaa !35
  br label %._crit_edge.thread.i

._crit_edge.thread.i:                             ; preds = %bb.bp, %._crit_edge.i, %bb.ai
  %.467.lcssa280.i = phi i32 [ 0, %._crit_edge.i ], [ 0, %bb.bp ], [ %.366.i, %bb.ai ]
  %i.ke = icmp eq i32 %.260.i, 0
  br i1 %i.ke, label %bb.bq, label %.thread182.i

bb.bq:                                            ; preds = %._crit_edge.thread.i
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #26
  %i.kf = load ptr, ptr %16, align 8, !tbaa !26   ; 4 uses
  %i.kg = getelementptr inbounds nuw i8, ptr %12, i64 16 ; 7 uses
  store ptr %i.kg, ptr %12, align 8, !tbaa !9
  %i.kh = icmp eq ptr %i.kf, null
  br i1 %i.kh, label %bb.br, label %bb.bs

bb.br:                                            ; preds = %bb.bq
  invoke void @_ZSt19__throw_logic_errorPKc(ptr noundef nonnull @.str.14) #29
          to label %.noexc131.i unwind label %bb.ci

.noexc131.i:                                      ; preds = %bb.br
  unreachable

bb.bs:                                            ; preds = %bb.bq
  %i.ki = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.kf) #26 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #26
  store i64 %i.ki, ptr %i.b, align 8, !tbaa !29
  %i.kj = icmp ugt i64 %i.ki, 15
  br i1 %i.kj, label %.noexc.i130.i, label %._crit_edge.i.i129.i

.noexc.i130.i:                                    ; preds = %bb.bs
  %i.kk = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %12, ptr noundef nonnull align 8 dereferenceable(8) %i.b, i64 noundef 0)
          to label %.noexc132.i unwind label %bb.ci ; 2 uses

.noexc132.i:                                      ; preds = %.noexc.i130.i
  store ptr %i.kk, ptr %12, align 8, !tbaa !26
  %i.kl = load i64, ptr %i.b, align 8, !tbaa !29
  store i64 %i.kl, ptr %i.kg, align 8, !tbaa !16
  br label %._crit_edge.i.i129.i

._crit_edge.i.i129.i:                             ; preds = %.noexc132.i, %bb.bs
  %i.km = phi ptr [ %i.kk, %.noexc132.i ], [ %i.kg, %bb.bs ] ; 2 uses
  switch i64 %i.ki, label %bb.bu [
    i64 1, label %bb.bt
    i64 0, label %bb.bv
  ]

bb.bt:                                            ; preds = %._crit_edge.i.i129.i
  %i.kn = load i8, ptr %i.kf, align 1, !tbaa !16
  store i8 %i.kn, ptr %i.km, align 1, !tbaa !16
  br label %bb.bv

bb.bu:                                            ; preds = %._crit_edge.i.i129.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.km, ptr nonnull align 1 %i.kf, i64 %i.ki, i1 false)
  br label %bb.bv

bb.bv:                                            ; preds = %bb.bu, %bb.bt, %._crit_edge.i.i129.i
  %i.ko = load i64, ptr %i.b, align 8, !tbaa !29  ; 2 uses
  %i.kp = getelementptr inbounds nuw i8, ptr %12, i64 8 ; 2 uses
  store i64 %i.ko, ptr %i.kp, align 8, !tbaa !13
  %i.kq = load ptr, ptr %12, align 8, !tbaa !26
  %i.kr = getelementptr inbounds nuw i8, ptr %i.kq, i64 %i.ko
  store i8 0, ptr %i.kr, align 1, !tbaa !16
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #26
  %.val.i = load ptr, ptr %12, align 8            ; 3 uses
  %.val88.i = load i64, ptr %i.kp, align 8, !tbaa !13 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6)
  %i.ks = icmp eq i64 %.val88.i, 0
  br i1 %i.ks, label %bb.ch, label %bb.bw

bb.bw:                                            ; preds = %bb.bv
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #26
  %i.kt = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 10 uses
  store ptr %i.kt, ptr %6, align 8, !tbaa !9
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #26
  store i64 %.val88.i, ptr %i.a, align 8, !tbaa !29
  %i.ku = icmp ugt i64 %.val88.i, 15
  br i1 %i.ku, label %._crit_edge.i.i.thread.i.i, label %._crit_edge.i.i.i134.i

._crit_edge.i.i.thread.i.i:                       ; preds = %bb.bw
  %i.kv = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %6, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0)
          to label %.noexc139.i unwind label %bb.cj ; 2 uses

.noexc139.i:                                      ; preds = %._crit_edge.i.i.thread.i.i
  store ptr %i.kv, ptr %6, align 8, !tbaa !26
  %i.kw = load i64, ptr %i.a, align 8, !tbaa !29
  store i64 %i.kw, ptr %i.kt, align 8, !tbaa !16
  br label %bb.by

._crit_edge.i.i.i134.i:                           ; preds = %bb.bw
  %cond.i.i = icmp eq i64 %.val88.i, 1
  br i1 %cond.i.i, label %bb.bx, label %bb.by

bb.bx:                                            ; preds = %._crit_edge.i.i.i134.i
  %i.kx = load i8, ptr %.val.i, align 1, !tbaa !16
  store i8 %i.kx, ptr %i.kt, align 8, !tbaa !16
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i.i

bb.by:                                            ; preds = %._crit_edge.i.i.i134.i, %.noexc139.i
  %i.ky = phi ptr [ %i.kv, %.noexc139.i ], [ %i.kt, %._crit_edge.i.i.i134.i ]
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.ky, ptr readonly align 1 %.val.i, i64 %.val88.i, i1 false)
  %.pre235.i = load i64, ptr %i.a, align 8, !tbaa !29
  %.pre236.i = load ptr, ptr %6, align 8, !tbaa !26
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i.i: ; preds = %bb.by, %bb.bx
  %i.kz = phi ptr [ %.pre236.i, %bb.by ], [ %i.kt, %bb.bx ]
  %i.la = phi i64 [ %.pre235.i, %bb.by ], [ 1, %bb.bx ] ; 2 uses
  %i.lb = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 5 uses
  store i64 %i.la, ptr %i.lb, align 8, !tbaa !13
  %i.lc = getelementptr inbounds nuw i8, ptr %i.kz, i64 %i.la
  store i8 0, ptr %i.lc, align 1, !tbaa !16
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #26
  call void @llvm.experimental.noalias.scope.decl(metadata !75)
  %i.ld = load ptr, ptr %6, align 8, !tbaa !26, !noalias !75 ; 7 uses
  %i.le = load i64, ptr %i.lb, align 8, !tbaa !13, !noalias !75 ; 9 uses
  %i.lf = getelementptr inbounds nuw i8, ptr %i.ld, i64 %i.le
  %.not6.i.i.i.i = icmp samesign eq i64 %i.le, 0
  br i1 %.not6.i.i.i.i, label %_ZSt9transformIN9__gnu_cxx17__normal_iteratorIPcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEES9_ZN11StringUtils5LowerES8_EUlhE_ET0_T_SD_SC_T1_.exit.i.i.i, label %iter.check

iter.check:                                       ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i.i
  %min.iters.check = icmp ult i64 %i.le, 8
  br i1 %min.iters.check, label %.lr.ph.i.i.i.i.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check296 = icmp ult i64 %i.le, 32
  br i1 %min.iters.check296, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %n.mod.vf = and i64 %i.le, 24
  %n.vec = and i64 %i.le, -32                     ; 4 uses
  %i.lg = getelementptr i8, ptr %i.ld, i64 %n.vec
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %next.gep = getelementptr i8, ptr %i.ld, i64 %index ; 3 uses
  %i.lh = getelementptr i8, ptr %next.gep, i64 16 ; 2 uses
  %wide.load = load <16 x i8>, ptr %next.gep, align 1, !tbaa !16, !noalias !75 ; 2 uses
  %wide.load297 = load <16 x i8>, ptr %i.lh, align 1, !tbaa !16, !noalias !75 ; 2 uses
  %i.li = add <16 x i8> %wide.load, splat (i8 -65)
  %i.lj = add <16 x i8> %wide.load297, splat (i8 -65)
  %i.lk = icmp ult <16 x i8> %i.li, splat (i8 26)
  %i.ll = icmp ult <16 x i8> %i.lj, splat (i8 26)
  %22 = select <16 x i1> %i.lk, <16 x i8> splat (i8 32), <16 x i8> zeroinitializer
  %i.lm = or disjoint <16 x i8> %wide.load, %22
  %i.ln = select <16 x i1> %i.ll, <16 x i8> splat (i8 32), <16 x i8> zeroinitializer
  %23 = or disjoint <16 x i8> %wide.load297, %i.ln
  store <16 x i8> %i.lm, ptr %next.gep, align 1, !tbaa !16, !noalias !75
  store <16 x i8> %23, ptr %i.lh, align 1, !tbaa !16, !noalias !75
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %i.lo = icmp eq i64 %index.next, %n.vec
  br i1 %i.lo, label %middle.block, label %vector.body, !llvm.loop !78

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.le, %n.vec
  br i1 %cmp.n, label %_ZSt9transformIN9__gnu_cxx17__normal_iteratorIPcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEES9_ZN11StringUtils5LowerES8_EUlhE_ET0_T_SD_SC_T1_.exit.loopexit.i.i.i, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %n.mod.vf, 0
  br i1 %min.epilog.iters.check, label %.lr.ph.i.i.i.i.preheader, label %vec.epilog.ph, !prof !81

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec299 = and i64 %i.le, -8                   ; 3 uses
  %i.lp = getelementptr i8, ptr %i.ld, i64 %n.vec299
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index300 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next303, %vec.epilog.vector.body ] ; 2 uses
  %next.gep301 = getelementptr i8, ptr %i.ld, i64 %index300 ; 2 uses
  %wide.load302 = load <8 x i8>, ptr %next.gep301, align 1, !tbaa !16, !noalias !75 ; 2 uses
  %i.lq = add <8 x i8> %wide.load302, splat (i8 -65)
  %i.lr = icmp ult <8 x i8> %i.lq, splat (i8 26)
  %24 = select <8 x i1> %i.lr, <8 x i8> splat (i8 32), <8 x i8> zeroinitializer
  %25 = or disjoint <8 x i8> %wide.load302, %24
  store <8 x i8> %25, ptr %next.gep301, align 1, !tbaa !16, !noalias !75
  %index.next303 = add nuw i64 %index300, 8       ; 2 uses
  %i.ls = icmp eq i64 %index.next303, %n.vec299
  br i1 %i.ls, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !82

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n304 = icmp eq i64 %i.le, %n.vec299
  br i1 %cmp.n304, label %_ZSt9transformIN9__gnu_cxx17__normal_iteratorIPcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEES9_ZN11StringUtils5LowerES8_EUlhE_ET0_T_SD_SC_T1_.exit.loopexit.i.i.i, label %.lr.ph.i.i.i.i.preheader

.lr.ph.i.i.i.i.preheader:                         ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.sroa.0.08.i.i.i.i.ph = phi ptr [ %i.ld, %iter.check ], [ %i.lg, %vec.epilog.iter.check ], [ %i.lp, %vec.epilog.middle.block ]
  br label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %.lr.ph.i.i.i.i.preheader, %.lr.ph.i.i.i.i
  %.sroa.0.08.i.i.i.i = phi ptr [ %i.lw, %.lr.ph.i.i.i.i ], [ %.sroa.0.08.i.i.i.i.ph, %.lr.ph.i.i.i.i.preheader ] ; 3 uses
  %i.lt = load i8, ptr %.sroa.0.08.i.i.i.i, align 1, !tbaa !16, !noalias !75 ; 3 uses
  %i.lu = add i8 %i.lt, -65
  %or.cond.i.i.i.i.i.i = icmp ult i8 %i.lu, 26
  %i.lv = or disjoint i8 %i.lt, 32
  %.0.i.i.i.i.i.i = select i1 %or.cond.i.i.i.i.i.i, i8 %i.lv, i8 %i.lt
  store i8 %.0.i.i.i.i.i.i, ptr %.sroa.0.08.i.i.i.i, align 1, !tbaa !16, !noalias !75
  %i.lw = getelementptr i8, ptr %.sroa.0.08.i.i.i.i, i64 1 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.lw, %i.lf
  br i1 %.not.i.i.i.i, label %_ZSt9transformIN9__gnu_cxx17__normal_iteratorIPcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEES9_ZN11StringUtils5LowerES8_EUlhE_ET0_T_SD_SC_T1_.exit.loopexit.i.i.i, label %.lr.ph.i.i.i.i, !llvm.loop !83

_ZSt9transformIN9__gnu_cxx17__normal_iteratorIPcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEES9_ZN11StringUtils5LowerES8_EUlhE_ET0_T_SD_SC_T1_.exit.loopexit.i.i.i: ; preds = %.lr.ph.i.i.i.i, %vec.epilog.middle.block, %middle.block
  %.pre.i.i135.i = load ptr, ptr %6, align 8, !tbaa !26, !noalias !75
  br label %_ZSt9transformIN9__gnu_cxx17__normal_iteratorIPcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEES9_ZN11StringUtils5LowerES8_EUlhE_ET0_T_SD_SC_T1_.exit.i.i.i

_ZSt9transformIN9__gnu_cxx17__normal_iteratorIPcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEES9_ZN11StringUtils5LowerES8_EUlhE_ET0_T_SD_SC_T1_.exit.i.i.i: ; preds = %_ZSt9transformIN9__gnu_cxx17__normal_iteratorIPcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEES9_ZN11StringUtils5LowerES8_EUlhE_ET0_T_SD_SC_T1_.exit.loopexit.i.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i.i
  %i.lx = phi ptr [ %.pre.i.i135.i, %_ZSt9transformIN9__gnu_cxx17__normal_iteratorIPcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEES9_ZN11StringUtils5LowerES8_EUlhE_ET0_T_SD_SC_T1_.exit.loopexit.i.i.i ], [ %i.ld, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i.i ] ; 3 uses
  %i.ly = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 6 uses
  store ptr %i.ly, ptr %5, align 8, !tbaa !9, !alias.scope !75
  %i.lz = icmp eq ptr %i.lx, %i.kt
  br i1 %i.lz, label %bb.bz, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i136.i

bb.bz:                                            ; preds = %_ZSt9transformIN9__gnu_cxx17__normal_iteratorIPcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEES9_ZN11StringUtils5LowerES8_EUlhE_ET0_T_SD_SC_T1_.exit.i.i.i
  %i.ma = load i64, ptr %i.lb, align 8, !tbaa !13, !noalias !75 ; 3 uses
  %i.mb = icmp ult i64 %i.ma, 16
  call void @llvm.assume(i1 %i.mb)
  %i.mc = add nuw nsw i64 %i.ma, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.ly, ptr noundef nonnull align 8 dereferenceable(1) %i.kt, i64 %i.mc, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i137.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i136.i: ; preds = %_ZSt9transformIN9__gnu_cxx17__normal_iteratorIPcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEES9_ZN11StringUtils5LowerES8_EUlhE_ET0_T_SD_SC_T1_.exit.i.i.i
  store ptr %i.lx, ptr %5, align 8, !tbaa !26, !alias.scope !75
  %i.md = load i64, ptr %i.kt, align 8, !tbaa !16, !noalias !75
  store i64 %i.md, ptr %i.ly, align 8, !tbaa !16, !alias.scope !75
  %.pre4.i.i.i = load i64, ptr %i.lb, align 8, !tbaa !13, !noalias !75
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i137.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i137.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i136.i, %bb.bz
  %i.me = phi ptr [ %i.ly, %bb.bz ], [ %i.lx, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i136.i ] ; 3 uses
  %i.mf = phi i64 [ %i.ma, %bb.bz ], [ %.pre4.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i136.i ] ; 2 uses
  %i.mg = getelementptr inbounds nuw i8, ptr %5, i64 8
  store i64 %i.mf, ptr %i.mg, align 8, !tbaa !13, !alias.scope !75
  store ptr %i.kt, ptr %6, align 8, !tbaa !26, !noalias !75
  store i64 0, ptr %i.lb, align 8, !tbaa !13, !noalias !75
  store i8 0, ptr %i.kt, align 8, !tbaa !16, !noalias !75
  %i.mh = call noundef ptr @strstr(ptr noundef nonnull dereferenceable(1) %i.me, ptr noundef nonnull dereferenceable(1) @.str.15) #30 ; 6 uses
  %.not.i138.i = icmp eq ptr %i.mh, null
  br i1 %.not.i138.i, label %bb.cg, label %bb.ca

bb.ca:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i137.i
  %i.mi = getelementptr inbounds nuw i8, ptr %i.mh, i64 2
  %i.mj = load i8, ptr %i.mi, align 1, !tbaa !16
  switch i8 %i.mj, label %bb.cg [
    i8 56, label %.thread4.i.i
    i8 49, label %bb.cb
    i8 51, label %bb.ce
  ]

bb.cb:                                            ; preds = %bb.ca
  %i.mk = getelementptr inbounds nuw i8, ptr %i.mh, i64 3
  %i.ml = load i8, ptr %i.mk, align 1, !tbaa !16
  switch i8 %i.ml, label %bb.cg [
    i8 48, label %.thread4.i.i
    i8 50, label %bb.cc
    i8 54, label %bb.cd
  ]

bb.cc:                                            ; preds = %bb.cb
  br label %.thread4.i.i

bb.cd:                                            ; preds = %bb.cb
  %i.mm = getelementptr inbounds nuw i8, ptr %i.mh, i64 4
  %i.mn = load i8, ptr %i.mm, align 1, !tbaa !16
  %i.mo = and i8 %i.mn, -33
  %or.cond.i.i = icmp eq i8 %i.mo, 70
  %..i.i = select i1 %or.cond.i.i, i32 -16, i32 16
  br label %.thread4.i.i

bb.ce:                                            ; preds = %bb.ca
  %i.mp = getelementptr inbounds nuw i8, ptr %i.mh, i64 3
  %i.mq = load i8, ptr %i.mp, align 1, !tbaa !16
  %i.mr = icmp eq i8 %i.mq, 50
  br i1 %i.mr, label %bb.cf, label %bb.cg

bb.cf:                                            ; preds = %bb.ce
  %i.ms = getelementptr inbounds nuw i8, ptr %i.mh, i64 4
  %i.mt = load i8, ptr %i.ms, align 1, !tbaa !16
  %i.mu = and i8 %i.mt, -33
  %or.cond8.not.i.i = icmp eq i8 %i.mu, 70
  br i1 %or.cond8.not.i.i, label %.thread4.i.i, label %bb.cg

.thread4.i.i:                                     ; preds = %bb.cf, %bb.cd, %bb.cc, %bb.cb, %bb.ca
  %.6.ph.i.i = phi i32 [ -32, %bb.cf ], [ 8, %bb.ca ], [ 10, %bb.cb ], [ %..i.i, %bb.cd ], [ 12, %bb.cc ]
  br label %bb.cg

bb.cg:                                            ; preds = %.thread4.i.i, %bb.cf, %bb.ce, %bb.cb, %bb.ca, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i137.i
  %.7.i.i = phi i32 [ %.6.ph.i.i, %.thread4.i.i ], [ 0, %bb.cb ], [ 0, %bb.ce ], [ 0, %bb.cf ], [ 0, %bb.ca ], [ 0, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i137.i ]
  %i.mv = icmp eq ptr %i.me, %i.ly
  br i1 %i.mv, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i50.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i49.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i50.i.i: ; preds = %bb.cg
  %i.mw = icmp ult i64 %i.mf, 16
  call void @llvm.assume(i1 %i.mw)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit51.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i49.i.i: ; preds = %bb.cg
  %i.mx = load i64, ptr %i.ly, align 8, !tbaa !16
  %i.my = add i64 %i.mx, 1
  call void @_ZdlPvm(ptr noundef nonnull %i.me, i64 noundef %i.my) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit51.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit51.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i49.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i50.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #26
  %.pre237.i = load ptr, ptr %12, align 8, !tbaa !26
  br label %bb.ch

bb.ch:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit51.i.i, %bb.bv
  %i.mz = phi ptr [ %.pre237.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit51.i.i ], [ %.val.i, %bb.bv ] ; 2 uses
  %.8.i.i = phi i32 [ %.7.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit51.i.i ], [ 0, %bb.bv ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %6)
  %i.na = icmp eq ptr %i.mz, %i.kg
  br i1 %i.na, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i141.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i140.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i140.i: ; preds = %bb.ch
  %i.nb = load i64, ptr %i.kg, align 8, !tbaa !16
  %i.nc = add i64 %i.nb, 1
  call void @_ZdlPvm(ptr noundef %i.mz, i64 noundef %i.nc) #27
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i141.i

bb.ci:                                            ; preds = %.noexc.i130.i, %bb.br
  %i.nd = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit145.i

bb.cj:                                            ; preds = %._crit_edge.i.i.thread.i.i
  %i.ne = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.nf = load ptr, ptr %12, align 8, !tbaa !26   ; 2 uses
  %i.ng = icmp eq ptr %i.nf, %i.kg
  br i1 %i.ng, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit145.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i143.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i143.i: ; preds = %bb.cj
  %i.nh = load i64, ptr %i.kg, align 8, !tbaa !16
  %i.ni = add i64 %i.nh, 1
  call void @_ZdlPvm(ptr noundef %i.nf, i64 noundef %i.ni) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit145.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit145.i: ; preds = %bb.cj, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i143.i, %bb.ci
  %.pn81.i = phi { ptr, i32 } [ %i.nd, %bb.ci ], [ %i.ne, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i143.i ], [ %i.ne, %bb.cj ]
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #26
  br label %bb.cq

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i141.i: ; preds = %bb.ch, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i140.i
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #26
  %.not84.i = icmp eq i32 %.8.i.i, 0
  br i1 %.not84.i, label %bb.ck, label %.thread182.i

.thread182.i:                                     ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i141.i, %._crit_edge.thread.i
  %.361185.i = phi i32 [ %.8.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i141.i ], [ %.260.i, %._crit_edge.thread.i ]
  %i.nj = load ptr, ptr %i.i, align 8, !tbaa !27
  %i.nk = getelementptr inbounds nuw i8, ptr %i.nj, i64 12
  store i32 %.361185.i, ptr %i.nk, align 4, !tbaa !84
  br label %bb.ck

bb.ck:                                            ; preds = %.thread182.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i141.i
  %i.nl = invoke fastcc noundef zeroext i1 @_ZN16OpenColorIO_v2_512_GLOBAL__N_114FindNonCommentERSiRiPci(ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef nonnull align 4 dereferenceable(4) %i.o, ptr noundef %i.h)
          to label %.noexc56 unwind label %.loopexit.split-lp

.noexc56:                                         ; preds = %bb.ck
  br i1 %i.nl, label %bb.cl, label %bb.cp

bb.cl:                                            ; preds = %.noexc56
  %i.nm = load i64, ptr %i.q, align 8, !tbaa !13
  %i.nn = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.h) #26
  %i.no = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %13, i64 noundef 0, i64 noundef %i.nm, ptr noundef nonnull %i.h, i64 noundef %i.nn)
          to label %.noexc57 unwind label %.loopexit.split-lp ; 0 uses

.noexc57:                                         ; preds = %bb.cl
  %i.np = load ptr, ptr %i.i, align 8, !tbaa !27  ; 7 uses
  %.not.i146.i = icmp eq ptr %i.np, null
  br i1 %.not.i146.i, label %.thread, label %bb.cm

bb.cm:                                            ; preds = %.noexc57
  %i.nq = getelementptr inbounds nuw i8, ptr %i.np, i64 16 ; 3 uses
  %i.nr = load ptr, ptr %i.nq, align 8, !tbaa !31 ; 2 uses
  %.not.i.i147.i = icmp eq ptr %i.nr, null
end_hunk_1
