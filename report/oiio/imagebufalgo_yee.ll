inline.NumInlined: 303
inline.NumDeleted: 171
begin_hunk_0_@_ZNSt17_Function_handlerIFvllllEZN11OpenImageIO4v3_112ImageBufAlgo14parallel_imageENS2_3ROIENS2_6paroptESt8functionIFvS4_EEEUlllllE_E10_M_managerERSt9_Any_dataRKSB_St18_Manager_operation:bb.a
  br label %_ZNSt14_Function_base13_Base_managerIZN11OpenImageIO4v3_112ImageBufAlgo14parallel_imageENS2_3ROIENS2_6paroptESt8functionIFvS4_EEEUlllllE_E10_M_managerERSt9_Any_dataRKSB_St18_Manager_operation.exit

bb.c:                                             ; preds = %bb.a
  store ptr %1, ptr %0, align 8, !tbaa !87
  br label %_ZNSt14_Function_base13_Base_managerIZN11OpenImageIO4v3_112ImageBufAlgo14parallel_imageENS2_3ROIENS2_6paroptESt8functionIFvS4_EEEUlllllE_E10_M_managerERSt9_Any_dataRKSB_St18_Manager_operation.exit

bb.d:                                             ; preds = %bb.a
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, i64 16, i1 false), !tbaa.struct !108
  br label %_ZNSt14_Function_base13_Base_managerIZN11OpenImageIO4v3_112ImageBufAlgo14parallel_imageENS2_3ROIENS2_6paroptESt8functionIFvS4_EEEUlllllE_E10_M_managerERSt9_Any_dataRKSB_St18_Manager_operation.exit

_ZNSt14_Function_base13_Base_managerIZN11OpenImageIO4v3_112ImageBufAlgo14parallel_imageENS2_3ROIENS2_6paroptESt8functionIFvS4_EEEUlllllE_E10_M_managerERSt9_Any_dataRKSB_St18_Manager_operation.exit: ; preds = %bb.a, %bb.d, %bb.c, %bb.b
  ret i1 false
}

; Function Attrs: mustprogress uwtable
define internal void @"_ZNSt17_Function_handlerIFvN11OpenImageIO4v3_13ROIEEZNS1_12_GLOBAL__N_113AdobeRGBToXYZERNS1_8ImageBufES2_iE3$_0E9_M_invokeERKSt9_Any_dataOS2_"(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %0, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(32) %1) #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.OpenImageIO::v3_1::ImageBuf::Iterator", align 8 ; 37 uses
  %3 = alloca %"struct.OpenImageIO::v3_1::ROI", align 8 ; 4 uses
  %.val = load ptr, ptr %0, align 8, !tbaa !109
  call void @llvm.lifetime.start.p0(ptr nonnull %3)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull readonly align 4 dereferenceable(32) %1, i64 32, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #15
  call void @_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseC2ERKS1_RKNS0_3ROIENS1_8WrapModeEb(ptr noundef nonnull align 8 dereferenceable(126) %2, ptr noundef nonnull align 8 dereferenceable(16) %.val, ptr noundef nonnull align 8 dereferenceable(32) %3, i32 noundef 0, i1 noundef zeroext true)
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 60 ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 36 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 64 ; 6 uses
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 44 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 68 ; 5 uses
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 56 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %2, i64 112 ; 7 uses
  %i.i = getelementptr inbounds nuw i8, ptr %2, i64 40
  %i.j = getelementptr inbounds nuw i8, ptr %2, i64 48
  %i.k = getelementptr inbounds nuw i8, ptr %2, i64 9 ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %2, i64 11
  %i.m = getelementptr inbounds nuw i8, ptr %2, i64 10
  %i.n = getelementptr inbounds nuw i8, ptr %2, i64 104 ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %2, i64 92 ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %2, i64 72 ; 3 uses
  %i.r = getelementptr inbounds nuw i8, ptr %2, i64 80
  %i.s = getelementptr inbounds nuw i8, ptr %2, i64 84
  %i.t = getelementptr inbounds nuw i8, ptr %2, i64 88
  %i.u = getelementptr inbounds nuw i8, ptr %2, i64 124
  %i.v = getelementptr inbounds nuw i8, ptr %2, i64 120
  br label %_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseppEv.exit.i.i

_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseppEv.exit.i.i: ; preds = %_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseppEv.exit.i.i.backedge, %bb.a
  %i.w = load i8, ptr %i.a, align 8, !tbaa !111, !range !115, !noundef !101
  %i.x = icmp eq i8 %i.w, 0
  br i1 %i.x, label %bb.b, label %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit.thread.i.i.i

bb.b:                                             ; preds = %_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseppEv.exit.i.i
  %i.y = load i32, ptr %i.b, align 4, !tbaa !116
  %i.z = load i32, ptr %i.c, align 4, !tbaa !117
  %i.aa = icmp eq i32 %i.y, %i.z
  br i1 %i.aa, label %bb.c, label %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit.thread.i.i.i

bb.c:                                             ; preds = %bb.b
  %i.ab = load i32, ptr %i.d, align 8, !tbaa !118
  %i.ac = load i32, ptr %i.e, align 4, !tbaa !119
  %i.ad = icmp eq i32 %i.ab, %i.ac
  br i1 %i.ad, label %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit.i.i.i, label %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit.thread.i.i.i

_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit.i.i.i: ; preds = %bb.c
  %i.ae = load i32, ptr %i.f, align 4, !tbaa !120
  %i.af = load i32, ptr %i.g, align 8, !tbaa !121
  %i.ag = icmp eq i32 %i.ae, %i.af
  br i1 %i.ag, label %bb.d, label %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit.thread.i.i.i

bb.d:                                             ; preds = %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit.i.i.i
  %i.ah = load ptr, ptr %i.q, align 8, !tbaa !122
  %.not.i.i.i.i = icmp eq ptr %i.ah, null
  br i1 %.not.i.i.i.i, label %"_ZSt10__invoke_rIvRZN11OpenImageIO4v3_112_GLOBAL__N_113AdobeRGBToXYZERNS1_8ImageBufENS1_3ROIEiE3$_0JS5_EENSt9enable_ifIX16is_invocable_r_vIT_T0_DpT1_EES9_E4typeEOSA_DpOSB_.exit", label %bb.e

bb.e:                                             ; preds = %bb.d
  invoke void @_ZN11OpenImageIO4v3_18ImageBuf12IteratorBase12release_tileEv(ptr noundef nonnull align 8 dereferenceable(126) %2)
          to label %"_ZSt10__invoke_rIvRZN11OpenImageIO4v3_112_GLOBAL__N_113AdobeRGBToXYZERNS1_8ImageBufENS1_3ROIEiE3$_0JS5_EENSt9enable_ifIX16is_invocable_r_vIT_T0_DpT1_EES9_E4typeEOSA_DpOSB_.exit" unwind label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ai = landingpad { ptr, i32 }
          catch ptr null
  %i.aj = extractvalue { ptr, i32 } %i.ai, 0
  call void @__clang_call_terminate(ptr %i.aj) #16
  unreachable

bb.g:                                             ; preds = %bb.x, %bb.t, %bb.q
  %i.ak = landingpad { ptr, i32 }
          cleanup
  br label %bb.ab

_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit.thread.i.i.i: ; preds = %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit.i.i.i, %bb.c, %bb.b, %_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseppEv.exit.i.i
  %i.al = load ptr, ptr %i.h, align 8, !tbaa !123 ; 3 uses
  %i.am = load float, ptr %i.al, align 4, !tbaa !7 ; 3 uses
  %i.an = getelementptr inbounds nuw i8, ptr %i.al, i64 4
  %i.ao = load float, ptr %i.an, align 4, !tbaa !7 ; 3 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %i.al, i64 8
  %i.aq = load float, ptr %i.ap, align 4, !tbaa !7 ; 3 uses
  %i.ar = fmul float %i.ao, 1.855560e-01
  %i.as = call float @llvm.fmuladd.f32(float %i.am, float 5.767000e-01, float %i.ar)
  %i.at = call float @llvm.fmuladd.f32(float %i.aq, float 1.882120e-01, float %i.as)
  %i.au = fmul float %i.ao, 6.273550e-01
  %i.av = call float @llvm.fmuladd.f32(float %i.am, float 2.973610e-01, float %i.au)
  %i.aw = call float @llvm.fmuladd.f32(float %i.aq, float 7.528470e-02, float %i.av)
  %i.ax = fmul float %i.ao, 7.068790e-02
  %i.ay = call float @llvm.fmuladd.f32(float %i.am, float 2.703280e-02, float %i.ax)
  %i.az = call float @llvm.fmuladd.f32(float %i.aq, float 9.912480e-01, float %i.ay)
  %i.ba = load ptr, ptr %2, align 8, !tbaa !124
  %i.bb = invoke noundef i32 @_ZNK11OpenImageIO4v3_18ImageBuf7storageEv(ptr noundef nonnull align 8 dereferenceable(16) %i.ba)
          to label %.noexc.i.i.i unwind label %bb.y

.noexc.i.i.i:                                     ; preds = %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit.thread.i.i.i
  %i.bc = icmp eq i32 %i.bb, 3
  br i1 %i.bc, label %bb.h, label %bb.i, !prof !125

bb.h:                                             ; preds = %.noexc.i.i.i
  invoke void @_ZN11OpenImageIO4v3_18ImageBuf12IteratorBase13make_writableEv(ptr noundef nonnull align 8 dereferenceable(126) %2)
          to label %bb.i unwind label %bb.y

bb.i:                                             ; preds = %bb.h, %.noexc.i.i.i
  %i.bd = load ptr, ptr %i.h, align 8, !tbaa !123
  store float %i.at, ptr %i.bd, align 4, !tbaa !7
  %i.be = load ptr, ptr %2, align 8, !tbaa !124
  %i.bf = invoke noundef i32 @_ZNK11OpenImageIO4v3_18ImageBuf7storageEv(ptr noundef nonnull align 8 dereferenceable(16) %i.be)
          to label %.noexc43.i.i.i unwind label %bb.z

.noexc43.i.i.i:                                   ; preds = %bb.i
  %i.bg = icmp eq i32 %i.bf, 3
  br i1 %i.bg, label %bb.j, label %bb.k, !prof !125

bb.j:                                             ; preds = %.noexc43.i.i.i
  invoke void @_ZN11OpenImageIO4v3_18ImageBuf12IteratorBase13make_writableEv(ptr noundef nonnull align 8 dereferenceable(126) %2)
          to label %bb.k unwind label %bb.z

bb.k:                                             ; preds = %bb.j, %.noexc43.i.i.i
  %i.bh = load ptr, ptr %i.h, align 8, !tbaa !123
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bh, i64 4
  store float %i.aw, ptr %i.bi, align 4, !tbaa !7
  %i.bj = load ptr, ptr %2, align 8, !tbaa !124
  %i.bk = invoke noundef i32 @_ZNK11OpenImageIO4v3_18ImageBuf7storageEv(ptr noundef nonnull align 8 dereferenceable(16) %i.bj)
          to label %.noexc48.i.i.i unwind label %bb.aa

.noexc48.i.i.i:                                   ; preds = %bb.k
  %i.bl = icmp eq i32 %i.bk, 3
  br i1 %i.bl, label %bb.l, label %bb.m, !prof !125

bb.l:                                             ; preds = %.noexc48.i.i.i
  invoke void @_ZN11OpenImageIO4v3_18ImageBuf12IteratorBase13make_writableEv(ptr noundef nonnull align 8 dereferenceable(126) %2)
          to label %bb.m unwind label %bb.aa

bb.m:                                             ; preds = %bb.l, %.noexc48.i.i.i
  %i.bm = load ptr, ptr %i.h, align 8, !tbaa !123 ; 3 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bm, i64 8
  store float %i.az, ptr %i.bn, align 4, !tbaa !7
  %i.bo = load i32, ptr %i.b, align 4, !tbaa !116
  %i.bp = add nsw i32 %i.bo, 1                    ; 7 uses
  store i32 %i.bp, ptr %i.b, align 4, !tbaa !116
  %i.bq = load i32, ptr %i.i, align 8, !tbaa !126
  %i.br = icmp slt i32 %i.bp, %i.bq
  br i1 %i.br, label %bb.n, label %bb.u

bb.n:                                             ; preds = %bb.m
  %i.bs = load i8, ptr %i.k, align 1, !tbaa !127, !range !115, !noundef !101
  %i.bt = trunc nuw i8 %i.bs to i1
  br i1 %i.bt, label %bb.o, label %._crit_edge.i.i.i

._crit_edge.i.i.i:                                ; preds = %bb.n
  %.pre.i.i.i = load i32, ptr %i.d, align 8, !tbaa !118
  %.pre.i.i = load i32, ptr %i.f, align 4, !tbaa !120
  br label %bb.x

bb.o:                                             ; preds = %bb.n
  %i.bu = load i8, ptr %i.l, align 1, !tbaa !128, !range !115, !noundef !101
  %i.bv = trunc nuw i8 %i.bu to i1
  br i1 %i.bv, label %bb.p, label %bb.r

bb.p:                                             ; preds = %bb.o
  %i.bw = load i64, ptr %i.n, align 8, !tbaa !129
  %i.bx = getelementptr inbounds i8, ptr %i.bm, i64 %i.bw
  store ptr %i.bx, ptr %i.h, align 8, !tbaa !123
  %i.by = load i32, ptr %i.o, align 8, !tbaa !130
  %.not.i.i2.i.i = icmp slt i32 %i.bp, %i.by
  br i1 %.not.i.i2.i.i, label %_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseppEv.exit.i.i.backedge, label %bb.q, !prof !131

bb.q:                                             ; preds = %bb.p
  invoke void @_ZN11OpenImageIO4v3_18ImageBuf12IteratorBase24pos_xincr_local_past_endEv(ptr noundef nonnull align 8 dereferenceable(126) %2)
          to label %_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseppEv.exit.i.i.backedge unwind label %bb.g

bb.r:                                             ; preds = %bb.o
  %i.bz = load i8, ptr %i.m, align 2, !tbaa !132, !range !115, !noundef !101
  %i.ca = trunc nuw i8 %i.bz to i1
  br i1 %i.ca, label %_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseppEv.exit.i.i.backedge, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.cb = load i64, ptr %i.n, align 8, !tbaa !129
  %i.cc = getelementptr inbounds i8, ptr %i.bm, i64 %i.cb
  store ptr %i.cc, ptr %i.h, align 8, !tbaa !123
  %i.cd = load i32, ptr %i.o, align 8, !tbaa !130
  %i.ce = icmp slt i32 %i.bp, %i.cd               ; 3 uses
  %i.cf = load i32, ptr %i.p, align 4
  %i.cg = icmp sge i32 %i.bp, %i.cf
  %not..i.i.i.i = xor i1 %i.ce, true
  %or.cond.i.i.i.i = select i1 %not..i.i.i.i, i1 true, i1 %i.cg, !prof !133
  %i.ch = load ptr, ptr %i.q, align 8
  %i.ci = icmp eq ptr %i.ch, null
  %i.cj = select i1 %or.cond.i.i.i.i, i1 true, i1 %i.ci, !prof !133
  br i1 %i.cj, label %bb.t, label %_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseppEv.exit.i.i.backedge, !prof !125

bb.t:                                             ; preds = %bb.s
  %i.ck = load ptr, ptr %2, align 8, !tbaa !124
  %i.cl = load i32, ptr %i.d, align 8, !tbaa !118
  %i.cm = load i32, ptr %i.f, align 4, !tbaa !120
  %i.cn = load i32, ptr %i.v, align 8, !tbaa !134
  %i.co = invoke noundef ptr @_ZNK11OpenImageIO4v3_18ImageBuf6retileEiiiRPNS0_14ImageCacheTileERiS5_S5_S5_RbbNS1_8WrapModeE(ptr noundef nonnull align 8 dereferenceable(16) %i.ck, i32 noundef %i.bp, i32 noundef %i.cl, i32 noundef %i.cm, ptr noundef nonnull align 8 dereferenceable(8) %i.q, ptr noundef nonnull align 4 dereferenceable(4) %i.r, ptr noundef nonnull align 4 dereferenceable(4) %i.s, ptr noundef nonnull align 4 dereferenceable(4) %i.t, ptr noundef nonnull align 4 dereferenceable(4) %i.p, ptr noundef nonnull align 1 dereferenceable(1) %i.u, i1 noundef zeroext %i.ce, i32 noundef %i.cn)
          to label %.noexc3.i.i unwind label %bb.g

.noexc3.i.i:                                      ; preds = %bb.t
  %4 = zext i1 %i.ce to i8
  store ptr %i.co, ptr %i.h, align 8, !tbaa !123
  store i8 %4, ptr %i.k, align 1, !tbaa !127
  br label %_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseppEv.exit.i.i.backedge

bb.u:                                             ; preds = %bb.m
  %i.cp = load i32, ptr %i.c, align 4, !tbaa !117 ; 3 uses
  store i32 %i.cp, ptr %i.b, align 4, !tbaa !116
  %i.cq = load i32, ptr %i.d, align 8, !tbaa !118
  %i.cr = add nsw i32 %i.cq, 1                    ; 3 uses
  store i32 %i.cr, ptr %i.d, align 8, !tbaa !118
  %i.cs = load i32, ptr %i.j, align 8, !tbaa !135
  %.not.i.i.i = icmp slt i32 %i.cr, %i.cs
  %.pre1.i.i = load i32, ptr %i.f, align 4, !tbaa !120 ; 2 uses
  br i1 %.not.i.i.i, label %bb.x, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.ct = load i32, ptr %i.e, align 4, !tbaa !119 ; 2 uses
  store i32 %i.ct, ptr %i.d, align 8, !tbaa !118
  %i.cu = add nsw i32 %.pre1.i.i, 1               ; 3 uses
  store i32 %i.cu, ptr %i.f, align 4, !tbaa !120
  %i.cv = load i32, ptr %i.g, align 8, !tbaa !121
  %.not1.i.i.i = icmp slt i32 %i.cu, %i.cv
  br i1 %.not1.i.i.i, label %bb.x, label %bb.w

bb.w:                                             ; preds = %bb.v
  store i8 0, ptr %i.a, align 8, !tbaa !111
  br label %_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseppEv.exit.i.i.backedge

bb.x:                                             ; preds = %bb.v, %bb.u, %._crit_edge.i.i.i
  %i.cw = phi i32 [ %.pre1.i.i, %bb.u ], [ %i.cu, %bb.v ], [ %.pre.i.i, %._crit_edge.i.i.i ]
  %i.cx = phi i32 [ %i.cr, %bb.u ], [ %i.ct, %bb.v ], [ %.pre.i.i.i, %._crit_edge.i.i.i ]
  %i.cy = phi i32 [ %i.cp, %bb.u ], [ %i.cp, %bb.v ], [ %i.bp, %._crit_edge.i.i.i ]
  invoke void @_ZN11OpenImageIO4v3_18ImageBuf12IteratorBase3posEiii(ptr noundef nonnull align 8 dereferenceable(126) %2, i32 noundef %i.cy, i32 noundef %i.cx, i32 noundef %i.cw)
          to label %_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseppEv.exit.i.i.backedge unwind label %bb.g

_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseppEv.exit.i.i.backedge: ; preds = %bb.x, %bb.w, %.noexc3.i.i, %bb.s, %bb.r, %bb.q, %bb.p
  br label %_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseppEv.exit.i.i

bb.y:                                             ; preds = %bb.h, %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit.thread.i.i.i
  %i.cz = landingpad { ptr, i32 }
          cleanup
  br label %bb.ab

bb.z:                                             ; preds = %bb.j, %bb.i
  %i.da = landingpad { ptr, i32 }
          cleanup
  br label %bb.ab

bb.aa:                                            ; preds = %bb.l, %bb.k
  %i.db = landingpad { ptr, i32 }
          cleanup
  br label %bb.ab

bb.ab:                                            ; preds = %bb.aa, %bb.z, %bb.y, %bb.g
  %.pn32.i.i.i = phi { ptr, i32 } [ %i.ak, %bb.g ], [ %i.cz, %bb.y ], [ %i.db, %bb.aa ], [ %i.da, %bb.z ]
  call void @_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseD2Ev(ptr noundef nonnull align 8 dereferenceable(126) %2) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #15
  resume { ptr, i32 } %.pn32.i.i.i

"_ZSt10__invoke_rIvRZN11OpenImageIO4v3_112_GLOBAL__N_113AdobeRGBToXYZERNS1_8ImageBufENS1_3ROIEiE3$_0JS5_EENSt9enable_ifIX16is_invocable_r_vIT_T0_DpT1_EES9_E4typeEOSA_DpOSB_.exit": ; preds = %bb.d, %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %3)
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define internal noundef zeroext i1 @"_ZNSt17_Function_handlerIFvN11OpenImageIO4v3_13ROIEEZNS1_12_GLOBAL__N_113AdobeRGBToXYZERNS1_8ImageBufES2_iE3$_0E10_M_managerERSt9_Any_dataRKS9_St18_Manager_operation"(ptr nofree noundef nonnull writeonly align 8 captures(none) dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, i32 noundef %2) #12 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  switch i32 %2, label %"_ZNSt14_Function_base13_Base_managerIZN11OpenImageIO4v3_112_GLOBAL__N_113AdobeRGBToXYZERNS2_8ImageBufENS2_3ROIEiE3$_0E10_M_managerERSt9_Any_dataRKS9_St18_Manager_operation.exit" [
    i32 0, label %bb.b
    i32 1, label %bb.c
    i32 2, label %bb.d
  ]

bb.b:                                             ; preds = %bb.a
  store ptr @"_ZTIZN11OpenImageIO4v3_112_GLOBAL__N_113AdobeRGBToXYZERNS0_8ImageBufENS0_3ROIEiE3$_0", ptr %0, align 8, !tbaa !106
  br label %"_ZNSt14_Function_base13_Base_managerIZN11OpenImageIO4v3_112_GLOBAL__N_113AdobeRGBToXYZERNS2_8ImageBufENS2_3ROIEiE3$_0E10_M_managerERSt9_Any_dataRKS9_St18_Manager_operation.exit"

bb.c:                                             ; preds = %bb.a
  store ptr %1, ptr %0, align 8, !tbaa !87
  br label %"_ZNSt14_Function_base13_Base_managerIZN11OpenImageIO4v3_112_GLOBAL__N_113AdobeRGBToXYZERNS2_8ImageBufENS2_3ROIEiE3$_0E10_M_managerERSt9_Any_dataRKS9_St18_Manager_operation.exit"

bb.d:                                             ; preds = %bb.a
  %.val.i = load i64, ptr %1, align 8, !tbaa !34
  store i64 %.val.i, ptr %0, align 8, !tbaa !34
  br label %"_ZNSt14_Function_base13_Base_managerIZN11OpenImageIO4v3_112_GLOBAL__N_113AdobeRGBToXYZERNS2_8ImageBufENS2_3ROIEiE3$_0E10_M_managerERSt9_Any_dataRKS9_St18_Manager_operation.exit"

"_ZNSt14_Function_base13_Base_managerIZN11OpenImageIO4v3_112_GLOBAL__N_113AdobeRGBToXYZERNS2_8ImageBufENS2_3ROIEiE3$_0E10_M_managerERSt9_Any_dataRKS9_St18_Manager_operation.exit": ; preds = %bb.a, %bb.d, %bb.c, %bb.b
  ret i1 false
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseD2Ev(ptr noundef nonnull align 8 dead_on_return(126) dereferenceable(126) %0) unnamed_addr #13 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !122
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  invoke void @_ZN11OpenImageIO4v3_18ImageBuf12IteratorBase12release_tileEv(ptr noundef nonnull align 8 dereferenceable(126) %0)
          to label %bb.c unwind label %bb.d

bb.c:                                             ; preds = %bb.b, %bb.a
  ret void

bb.d:                                             ; preds = %bb.b
  %i.c = landingpad { ptr, i32 }
          catch ptr null
  %i.d = extractvalue { ptr, i32 } %i.c, 0
  tail call void @__clang_call_terminate(ptr %i.d) #16
  unreachable
}

declare void @_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseC2ERKS1_RKNS0_3ROIENS1_8WrapModeEb(ptr noundef nonnull align 8 dereferenceable(126), ptr noundef nonnull align 8 dereferenceable(16), ptr noundef nonnull align 4 dereferenceable(32), i32 noundef, i1 noundef zeroext) unnamed_addr #2

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fmuladd.f32(float, float, float) #6

declare noundef i32 @_ZNK11OpenImageIO4v3_18ImageBuf7storageEv(ptr noundef nonnull align 8 dereferenceable(16)) local_unnamed_addr #2

declare void @_ZN11OpenImageIO4v3_18ImageBuf12IteratorBase13make_writableEv(ptr noundef nonnull align 8 dereferenceable(126)) local_unnamed_addr #2

declare void @_ZN11OpenImageIO4v3_18ImageBuf12IteratorBase3posEiii(ptr noundef nonnull align 8 dereferenceable(126), i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

declare void @_ZN11OpenImageIO4v3_18ImageBuf12IteratorBase24pos_xincr_local_past_endEv(ptr noundef nonnull align 8 dereferenceable(126)) local_unnamed_addr #2

declare noundef ptr @_ZNK11OpenImageIO4v3_18ImageBuf6retileEiiiRPNS0_14ImageCacheTileERiS5_S5_S5_RbbNS1_8WrapModeE(ptr noundef nonnull align 8 dereferenceable(16), i32 noundef, i32 noundef, i32 noundef, ptr noundef nonnull align 8 dereferenceable(8), ptr noundef nonnull align 4 dereferenceable(4), ptr noundef nonnull align 4 dereferenceable(4), ptr noundef nonnull align 4 dereferenceable(4), ptr noundef nonnull align 4 dereferenceable(4), ptr noundef nonnull align 1 dereferenceable(1), i1 noundef zeroext, i32 noundef) local_unnamed_addr #2

declare void @_ZN11OpenImageIO4v3_18ImageBuf12IteratorBase12release_tileEv(ptr noundef nonnull align 8 dereferenceable(126)) local_unnamed_addr #2

; Function Attrs: mustprogress uwtable
define internal void @"_ZNSt17_Function_handlerIFvN11OpenImageIO4v3_13ROIEEZNS1_12_GLOBAL__N_18XYZToLABERNS1_8ImageBufES2_iE3$_0E9_M_invokeERKSt9_Any_dataOS2_"(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %0, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(32) %1) #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.OpenImageIO::v3_1::ImageBuf::Iterator", align 8 ; 37 uses
  %3 = alloca %"struct.OpenImageIO::v3_1::ROI", align 8 ; 4 uses
  %.val = load ptr, ptr %0, align 8, !tbaa !136
  call void @llvm.lifetime.start.p0(ptr nonnull %3)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull readonly align 4 dereferenceable(32) %1, i64 32, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #15
  call void @_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseC2ERKS1_RKNS0_3ROIENS1_8WrapModeEb(ptr noundef nonnull align 8 dereferenceable(126) %2, ptr noundef nonnull align 8 dereferenceable(16) %.val, ptr noundef nonnull align 8 dereferenceable(32) %3, i32 noundef 0, i1 noundef zeroext true)
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 60 ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 36 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 64 ; 6 uses
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 44 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 68 ; 5 uses
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 56 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %2, i64 112 ; 7 uses
  %i.i = getelementptr inbounds nuw i8, ptr %2, i64 40
  %i.j = getelementptr inbounds nuw i8, ptr %2, i64 48
  %i.k = getelementptr inbounds nuw i8, ptr %2, i64 9 ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %2, i64 11
  %i.m = getelementptr inbounds nuw i8, ptr %2, i64 10
  %i.n = getelementptr inbounds nuw i8, ptr %2, i64 104 ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %2, i64 92 ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %2, i64 72 ; 3 uses
  %i.r = getelementptr inbounds nuw i8, ptr %2, i64 80
  %i.s = getelementptr inbounds nuw i8, ptr %2, i64 84
  %i.t = getelementptr inbounds nuw i8, ptr %2, i64 88
  %i.u = getelementptr inbounds nuw i8, ptr %2, i64 124
  %i.v = getelementptr inbounds nuw i8, ptr %2, i64 120
  br label %_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseppEv.exit.i.i

_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseppEv.exit.i.i: ; preds = %_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseppEv.exit.i.i.backedge, %bb.a
  %i.w = load i8, ptr %i.a, align 8, !tbaa !111, !range !115, !noundef !101
  %i.x = icmp eq i8 %i.w, 0
  br i1 %i.x, label %bb.b, label %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit.thread.i.i.i

bb.b:                                             ; preds = %_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseppEv.exit.i.i
  %i.y = load i32, ptr %i.b, align 4, !tbaa !116
  %i.z = load i32, ptr %i.c, align 4, !tbaa !117
  %i.aa = icmp eq i32 %i.y, %i.z
  br i1 %i.aa, label %bb.c, label %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit.thread.i.i.i

bb.c:                                             ; preds = %bb.b
  %i.ab = load i32, ptr %i.d, align 8, !tbaa !118
  %i.ac = load i32, ptr %i.e, align 4, !tbaa !119
  %i.ad = icmp eq i32 %i.ab, %i.ac
  br i1 %i.ad, label %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit.i.i.i, label %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit.thread.i.i.i

_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit.i.i.i: ; preds = %bb.c
  %i.ae = load i32, ptr %i.f, align 4, !tbaa !120
  %i.af = load i32, ptr %i.g, align 8, !tbaa !121
  %i.ag = icmp eq i32 %i.ae, %i.af
  br i1 %i.ag, label %bb.d, label %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit.thread.i.i.i

bb.d:                                             ; preds = %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit.i.i.i
  %i.ah = load ptr, ptr %i.q, align 8, !tbaa !122
  %.not.i.i.i.i = icmp eq ptr %i.ah, null
  br i1 %.not.i.i.i.i, label %"_ZSt10__invoke_rIvRZN11OpenImageIO4v3_112_GLOBAL__N_18XYZToLABERNS1_8ImageBufENS1_3ROIEiE3$_0JS5_EENSt9enable_ifIX16is_invocable_r_vIT_T0_DpT1_EES9_E4typeEOSA_DpOSB_.exit", label %bb.e

bb.e:                                             ; preds = %bb.d
  invoke void @_ZN11OpenImageIO4v3_18ImageBuf12IteratorBase12release_tileEv(ptr noundef nonnull align 8 dereferenceable(126) %2)
          to label %"_ZSt10__invoke_rIvRZN11OpenImageIO4v3_112_GLOBAL__N_18XYZToLABERNS1_8ImageBufENS1_3ROIEiE3$_0JS5_EENSt9enable_ifIX16is_invocable_r_vIT_T0_DpT1_EES9_E4typeEOSA_DpOSB_.exit" unwind label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ai = landingpad { ptr, i32 }
          catch ptr null
  %i.aj = extractvalue { ptr, i32 } %i.ai, 0
  call void @__clang_call_terminate(ptr %i.aj) #16
  unreachable

_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit.thread.i.i.i: ; preds = %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit.i.i.i, %bb.c, %bb.b, %_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseppEv.exit.i.i
  %i.ak = load ptr, ptr %i.h, align 8, !tbaa !123 ; 3 uses
  %i.al = load float, ptr %i.ak, align 4, !tbaa !7
  %i.am = getelementptr inbounds nuw i8, ptr %i.ak, i64 4
  %i.an = load float, ptr %i.am, align 4, !tbaa !7
  %i.ao = getelementptr inbounds nuw i8, ptr %i.ak, i64 8
  %i.ap = load float, ptr %i.ao, align 4, !tbaa !7
  %i.aq = fdiv float %i.al, f0x3F7351DE           ; 5 uses
  %i.ar = fdiv float %i.an, f0x3F800006           ; 5 uses
  %i.as = fdiv float %i.ap, f0x3F8B6354           ; 5 uses
  %i.at = fcmp ogt float %i.aq, f0x3C111AA7
  br i1 %i.at, label %bb.g, label %bb.h

bb.g:                                             ; preds = %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit.thread.i.i.i
  %i.au = bitcast float %i.aq to i32
  %i.av = udiv i32 %i.au, 3
  %i.aw = add nuw nsw i32 %i.av, 709965728
  %i.ax = bitcast i32 %i.aw to float              ; 3 uses
  %i.ay = fmul float %i.ax, %i.ax
  %i.az = fdiv float %i.aq, %i.ay
  %i.ba = call float @llvm.fmuladd.f32(float %i.ax, float 2.000000e+00, float %i.az)
  %i.bb = fmul float %i.ba, f0x3EAAAAAB           ; 3 uses
  %i.bc = fmul float %i.bb, %i.bb
  %i.bd = fdiv float %i.aq, %i.bc
  %i.be = call float @llvm.fmuladd.f32(float %i.bb, float 2.000000e+00, float %i.bd)
  %i.bf = fmul float %i.be, f0x3EAAAAAB
  %i.bg = call float @llvm.fabs.f32(float %i.bf)
  br label %bb.i

bb.h:                                             ; preds = %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit.thread.i.i.i
  %i.bh = call float @llvm.fmuladd.f32(float %i.aq, float f0x4461D2F7, float 1.600000e+01)
  %i.bi = fdiv float %i.bh, 1.160000e+02
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %.sroa.0.0.i.i.i.i = phi float [ %i.bg, %bb.g ], [ %i.bi, %bb.h ]
  %i.bj = fcmp ogt float %i.ar, f0x3C111AA7
  br i1 %i.bj, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.bk = call float @llvm.fmuladd.f32(float %i.ar, float f0x4461D2F7, float 1.600000e+01)
  %i.bl = fdiv float %i.bk, 1.160000e+02
  br label %bb.l

bb.k:                                             ; preds = %bb.i
  %i.bm = bitcast float %i.ar to i32
  %i.bn = udiv i32 %i.bm, 3
  %i.bo = add nuw nsw i32 %i.bn, 709965728
  %i.bp = bitcast i32 %i.bo to float              ; 3 uses
  %i.bq = fmul float %i.bp, %i.bp
  %i.br = fdiv float %i.ar, %i.bq
  %i.bs = call float @llvm.fmuladd.f32(float %i.bp, float 2.000000e+00, float %i.br)
  %i.bt = fmul float %i.bs, f0x3EAAAAAB           ; 3 uses
  %i.bu = fmul float %i.bt, %i.bt
  %i.bv = fdiv float %i.ar, %i.bu
  %i.bw = call float @llvm.fmuladd.f32(float %i.bt, float 2.000000e+00, float %i.bv)
  %i.bx = fmul float %i.bw, f0x3EAAAAAB
  %i.by = call float @llvm.fabs.f32(float %i.bx)
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  %.sroa.5.0.i.i.i.i = phi float [ %i.by, %bb.k ], [ %i.bl, %bb.j ] ; 3 uses
  %i.bz = fcmp ogt float %i.as, f0x3C111AA7
  br i1 %i.bz, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.ca = call float @llvm.fmuladd.f32(float %i.as, float f0x4461D2F7, float 1.600000e+01)
  %i.cb = fdiv float %i.ca, 1.160000e+02
  br label %bb.o

bb.n:                                             ; preds = %bb.l
  %i.cc = bitcast float %i.as to i32
  %i.cd = udiv i32 %i.cc, 3
  %i.ce = add nuw nsw i32 %i.cd, 709965728
  %i.cf = bitcast i32 %i.ce to float              ; 3 uses
  %i.cg = fmul float %i.cf, %i.cf
  %i.ch = fdiv float %i.as, %i.cg
  %i.ci = call float @llvm.fmuladd.f32(float %i.cf, float 2.000000e+00, float %i.ch)
  %i.cj = fmul float %i.ci, f0x3EAAAAAB           ; 3 uses
  %i.ck = fmul float %i.cj, %i.cj
  %i.cl = fdiv float %i.as, %i.ck
  %i.cm = call float @llvm.fmuladd.f32(float %i.cj, float 2.000000e+00, float %i.cl)
  %i.cn = fmul float %i.cm, f0x3EAAAAAB
  %i.co = call float @llvm.fabs.f32(float %i.cn)
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m
  %.sroa.8.0.i.i.i.i = phi float [ %i.co, %bb.n ], [ %i.cb, %bb.m ]
  %i.cp = call float @llvm.fmuladd.f32(float %.sroa.5.0.i.i.i.i, float 1.160000e+02, float -1.600000e+01)
  %i.cq = fsub float %.sroa.0.0.i.i.i.i, %.sroa.5.0.i.i.i.i
  %i.cr = fmul float %i.cq, 5.000000e+02
  %i.cs = fsub float %.sroa.5.0.i.i.i.i, %.sroa.8.0.i.i.i.i
  %i.ct = fmul float %i.cs, 2.000000e+02
  %i.cu = load ptr, ptr %2, align 8, !tbaa !124
  %i.cv = invoke noundef i32 @_ZNK11OpenImageIO4v3_18ImageBuf7storageEv(ptr noundef nonnull align 8 dereferenceable(16) %i.cu)
          to label %.noexc.i.i.i unwind label %bb.ag

.noexc.i.i.i:                                     ; preds = %bb.o
  %i.cw = icmp eq i32 %i.cv, 3
  br i1 %i.cw, label %bb.p, label %bb.q, !prof !125

bb.p:                                             ; preds = %.noexc.i.i.i
  invoke void @_ZN11OpenImageIO4v3_18ImageBuf12IteratorBase13make_writableEv(ptr noundef nonnull align 8 dereferenceable(126) %2)
          to label %bb.q unwind label %bb.ag

bb.q:                                             ; preds = %bb.p, %.noexc.i.i.i
  %i.cx = load ptr, ptr %i.h, align 8, !tbaa !123
  store float %i.cp, ptr %i.cx, align 4, !tbaa !7
  %i.cy = load ptr, ptr %2, align 8, !tbaa !124
  %i.cz = invoke noundef i32 @_ZNK11OpenImageIO4v3_18ImageBuf7storageEv(ptr noundef nonnull align 8 dereferenceable(16) %i.cy)
          to label %.noexc43.i.i.i unwind label %bb.ah

.noexc43.i.i.i:                                   ; preds = %bb.q
  %i.da = icmp eq i32 %i.cz, 3
  br i1 %i.da, label %bb.r, label %bb.s, !prof !125

bb.r:                                             ; preds = %.noexc43.i.i.i
  invoke void @_ZN11OpenImageIO4v3_18ImageBuf12IteratorBase13make_writableEv(ptr noundef nonnull align 8 dereferenceable(126) %2)
          to label %bb.s unwind label %bb.ah

bb.s:                                             ; preds = %bb.r, %.noexc43.i.i.i
  %i.db = load ptr, ptr %i.h, align 8, !tbaa !123
  %i.dc = getelementptr inbounds nuw i8, ptr %i.db, i64 4
  store float %i.cr, ptr %i.dc, align 4, !tbaa !7
  %i.dd = load ptr, ptr %2, align 8, !tbaa !124
  %i.de = invoke noundef i32 @_ZNK11OpenImageIO4v3_18ImageBuf7storageEv(ptr noundef nonnull align 8 dereferenceable(16) %i.dd)
          to label %.noexc48.i.i.i unwind label %bb.ai

.noexc48.i.i.i:                                   ; preds = %bb.s
  %i.df = icmp eq i32 %i.de, 3
  br i1 %i.df, label %bb.t, label %bb.u, !prof !125

bb.t:                                             ; preds = %.noexc48.i.i.i
  invoke void @_ZN11OpenImageIO4v3_18ImageBuf12IteratorBase13make_writableEv(ptr noundef nonnull align 8 dereferenceable(126) %2)
          to label %bb.u unwind label %bb.ai

bb.u:                                             ; preds = %bb.t, %.noexc48.i.i.i
  %i.dg = load ptr, ptr %i.h, align 8, !tbaa !123 ; 3 uses
  %i.dh = getelementptr inbounds nuw i8, ptr %i.dg, i64 8
  store float %i.ct, ptr %i.dh, align 4, !tbaa !7
  %i.di = load i32, ptr %i.b, align 4, !tbaa !116
  %i.dj = add nsw i32 %i.di, 1                    ; 7 uses
  store i32 %i.dj, ptr %i.b, align 4, !tbaa !116
  %i.dk = load i32, ptr %i.i, align 8, !tbaa !126
  %i.dl = icmp slt i32 %i.dj, %i.dk
  br i1 %i.dl, label %bb.v, label %bb.ac

bb.v:                                             ; preds = %bb.u
  %i.dm = load i8, ptr %i.k, align 1, !tbaa !127, !range !115, !noundef !101
  %i.dn = trunc nuw i8 %i.dm to i1
  br i1 %i.dn, label %bb.w, label %._crit_edge.i.i.i

._crit_edge.i.i.i:                                ; preds = %bb.v
  %.pre.i.i.i = load i32, ptr %i.d, align 8, !tbaa !118
  %.pre.i.i = load i32, ptr %i.f, align 4, !tbaa !120
  br label %bb.af

bb.w:                                             ; preds = %bb.v
  %i.do = load i8, ptr %i.l, align 1, !tbaa !128, !range !115, !noundef !101
  %i.dp = trunc nuw i8 %i.do to i1
  br i1 %i.dp, label %bb.x, label %bb.z

bb.x:                                             ; preds = %bb.w
  %i.dq = load i64, ptr %i.n, align 8, !tbaa !129
  %i.dr = getelementptr inbounds i8, ptr %i.dg, i64 %i.dq
  store ptr %i.dr, ptr %i.h, align 8, !tbaa !123
  %i.ds = load i32, ptr %i.o, align 8, !tbaa !130
  %.not.i.i2.i.i = icmp slt i32 %i.dj, %i.ds
  br i1 %.not.i.i2.i.i, label %_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseppEv.exit.i.i.backedge, label %bb.y, !prof !131

bb.y:                                             ; preds = %bb.x
  invoke void @_ZN11OpenImageIO4v3_18ImageBuf12IteratorBase24pos_xincr_local_past_endEv(ptr noundef nonnull align 8 dereferenceable(126) %2)
          to label %_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseppEv.exit.i.i.backedge unwind label %bb.aj

bb.z:                                             ; preds = %bb.w
  %i.dt = load i8, ptr %i.m, align 2, !tbaa !132, !range !115, !noundef !101
  %i.du = trunc nuw i8 %i.dt to i1
  br i1 %i.du, label %_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseppEv.exit.i.i.backedge, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.dv = load i64, ptr %i.n, align 8, !tbaa !129
  %i.dw = getelementptr inbounds i8, ptr %i.dg, i64 %i.dv
  store ptr %i.dw, ptr %i.h, align 8, !tbaa !123
  %i.dx = load i32, ptr %i.o, align 8, !tbaa !130
  %i.dy = icmp slt i32 %i.dj, %i.dx               ; 3 uses
  %i.dz = load i32, ptr %i.p, align 4
  %i.ea = icmp sge i32 %i.dj, %i.dz
  %not..i.i.i.i = xor i1 %i.dy, true
  %or.cond.i.i.i.i = select i1 %not..i.i.i.i, i1 true, i1 %i.ea, !prof !133
  %i.eb = load ptr, ptr %i.q, align 8
  %i.ec = icmp eq ptr %i.eb, null
  %i.ed = select i1 %or.cond.i.i.i.i, i1 true, i1 %i.ec, !prof !133
  br i1 %i.ed, label %bb.ab, label %_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseppEv.exit.i.i.backedge, !prof !125

bb.ab:                                            ; preds = %bb.aa
  %i.ee = load ptr, ptr %2, align 8, !tbaa !124
  %i.ef = load i32, ptr %i.d, align 8, !tbaa !118
  %i.eg = load i32, ptr %i.f, align 4, !tbaa !120
  %i.eh = load i32, ptr %i.v, align 8, !tbaa !134
  %i.ei = invoke noundef ptr @_ZNK11OpenImageIO4v3_18ImageBuf6retileEiiiRPNS0_14ImageCacheTileERiS5_S5_S5_RbbNS1_8WrapModeE(ptr noundef nonnull align 8 dereferenceable(16) %i.ee, i32 noundef %i.dj, i32 noundef %i.ef, i32 noundef %i.eg, ptr noundef nonnull align 8 dereferenceable(8) %i.q, ptr noundef nonnull align 4 dereferenceable(4) %i.r, ptr noundef nonnull align 4 dereferenceable(4) %i.s, ptr noundef nonnull align 4 dereferenceable(4) %i.t, ptr noundef nonnull align 4 dereferenceable(4) %i.p, ptr noundef nonnull align 1 dereferenceable(1) %i.u, i1 noundef zeroext %i.dy, i32 noundef %i.eh)
          to label %.noexc3.i.i unwind label %bb.aj

.noexc3.i.i:                                      ; preds = %bb.ab
  %4 = zext i1 %i.dy to i8
  store ptr %i.ei, ptr %i.h, align 8, !tbaa !123
  store i8 %4, ptr %i.k, align 1, !tbaa !127
  br label %_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseppEv.exit.i.i.backedge

bb.ac:                                            ; preds = %bb.u
  %i.ej = load i32, ptr %i.c, align 4, !tbaa !117 ; 3 uses
  store i32 %i.ej, ptr %i.b, align 4, !tbaa !116
  %i.ek = load i32, ptr %i.d, align 8, !tbaa !118
  %i.el = add nsw i32 %i.ek, 1                    ; 3 uses
  store i32 %i.el, ptr %i.d, align 8, !tbaa !118
  %i.em = load i32, ptr %i.j, align 8, !tbaa !135
  %.not.i.i.i = icmp slt i32 %i.el, %i.em
  %.pre1.i.i = load i32, ptr %i.f, align 4, !tbaa !120 ; 2 uses
  br i1 %.not.i.i.i, label %bb.af, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.en = load i32, ptr %i.e, align 4, !tbaa !119 ; 2 uses
  store i32 %i.en, ptr %i.d, align 8, !tbaa !118
  %i.eo = add nsw i32 %.pre1.i.i, 1               ; 3 uses
  store i32 %i.eo, ptr %i.f, align 4, !tbaa !120
  %i.ep = load i32, ptr %i.g, align 8, !tbaa !121
  %.not1.i.i.i = icmp slt i32 %i.eo, %i.ep
  br i1 %.not1.i.i.i, label %bb.af, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  store i8 0, ptr %i.a, align 8, !tbaa !111
  br label %_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseppEv.exit.i.i.backedge

bb.af:                                            ; preds = %bb.ad, %bb.ac, %._crit_edge.i.i.i
  %i.eq = phi i32 [ %.pre1.i.i, %bb.ac ], [ %i.eo, %bb.ad ], [ %.pre.i.i, %._crit_edge.i.i.i ]
  %i.er = phi i32 [ %i.el, %bb.ac ], [ %i.en, %bb.ad ], [ %.pre.i.i.i, %._crit_edge.i.i.i ]
  %i.es = phi i32 [ %i.ej, %bb.ac ], [ %i.ej, %bb.ad ], [ %i.dj, %._crit_edge.i.i.i ]
  invoke void @_ZN11OpenImageIO4v3_18ImageBuf12IteratorBase3posEiii(ptr noundef nonnull align 8 dereferenceable(126) %2, i32 noundef %i.es, i32 noundef %i.er, i32 noundef %i.eq)
          to label %_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseppEv.exit.i.i.backedge unwind label %bb.aj

_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseppEv.exit.i.i.backedge: ; preds = %bb.af, %bb.ae, %.noexc3.i.i, %bb.aa, %bb.z, %bb.y, %bb.x
  br label %_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseppEv.exit.i.i

bb.ag:                                            ; preds = %bb.p, %bb.o
  %i.et = landingpad { ptr, i32 }
          cleanup
  br label %bb.ak

bb.ah:                                            ; preds = %bb.r, %bb.q
  %i.eu = landingpad { ptr, i32 }
          cleanup
  br label %bb.ak

bb.ai:                                            ; preds = %bb.t, %bb.s
  %i.ev = landingpad { ptr, i32 }
          cleanup
  br label %bb.ak

bb.aj:                                            ; preds = %bb.af, %bb.ab, %bb.y
  %i.ew = landingpad { ptr, i32 }
          cleanup
  br label %bb.ak

bb.ak:                                            ; preds = %bb.aj, %bb.ai, %bb.ah, %bb.ag
  %.pn32.i.i.i = phi { ptr, i32 } [ %i.ew, %bb.aj ], [ %i.et, %bb.ag ], [ %i.ev, %bb.ai ], [ %i.eu, %bb.ah ]
  call void @_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseD2Ev(ptr noundef nonnull align 8 dereferenceable(126) %2) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #15
  resume { ptr, i32 } %.pn32.i.i.i

"_ZSt10__invoke_rIvRZN11OpenImageIO4v3_112_GLOBAL__N_18XYZToLABERNS1_8ImageBufENS1_3ROIEiE3$_0JS5_EENSt9enable_ifIX16is_invocable_r_vIT_T0_DpT1_EES9_E4typeEOSA_DpOSB_.exit": ; preds = %bb.d, %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %3)
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define internal noundef zeroext i1 @"_ZNSt17_Function_handlerIFvN11OpenImageIO4v3_13ROIEEZNS1_12_GLOBAL__N_18XYZToLABERNS1_8ImageBufES2_iE3$_0E10_M_managerERSt9_Any_dataRKS9_St18_Manager_operation"(ptr nofree noundef nonnull writeonly align 8 captures(none) dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, i32 noundef %2) #12 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  switch i32 %2, label %"_ZNSt14_Function_base13_Base_managerIZN11OpenImageIO4v3_112_GLOBAL__N_18XYZToLABERNS2_8ImageBufENS2_3ROIEiE3$_0E10_M_managerERSt9_Any_dataRKS9_St18_Manager_operation.exit" [
    i32 0, label %bb.b
    i32 1, label %bb.c
    i32 2, label %bb.d
  ]

bb.b:                                             ; preds = %bb.a
  store ptr @"_ZTIZN11OpenImageIO4v3_112_GLOBAL__N_18XYZToLABERNS0_8ImageBufENS0_3ROIEiE3$_0", ptr %0, align 8, !tbaa !106
  br label %"_ZNSt14_Function_base13_Base_managerIZN11OpenImageIO4v3_112_GLOBAL__N_18XYZToLABERNS2_8ImageBufENS2_3ROIEiE3$_0E10_M_managerERSt9_Any_dataRKS9_St18_Manager_operation.exit"

bb.c:                                             ; preds = %bb.a
  store ptr %1, ptr %0, align 8, !tbaa !87
  br label %"_ZNSt14_Function_base13_Base_managerIZN11OpenImageIO4v3_112_GLOBAL__N_18XYZToLABERNS2_8ImageBufENS2_3ROIEiE3$_0E10_M_managerERSt9_Any_dataRKS9_St18_Manager_operation.exit"

bb.d:                                             ; preds = %bb.a
  %.val.i = load i64, ptr %1, align 8, !tbaa !34
  store i64 %.val.i, ptr %0, align 8, !tbaa !34
  br label %"_ZNSt14_Function_base13_Base_managerIZN11OpenImageIO4v3_112_GLOBAL__N_18XYZToLABERNS2_8ImageBufENS2_3ROIEiE3$_0E10_M_managerERSt9_Any_dataRKS9_St18_Manager_operation.exit"

"_ZNSt14_Function_base13_Base_managerIZN11OpenImageIO4v3_112_GLOBAL__N_18XYZToLABERNS2_8ImageBufENS2_3ROIEiE3$_0E10_M_managerERSt9_Any_dataRKS9_St18_Manager_operation.exit": ; preds = %bb.a, %bb.d, %bb.c, %bb.b
  ret i1 false
}

declare void @_ZN11OpenImageIO4v3_112ImageBufAlgo11make_kernelENS0_17basic_string_viewIcSt11char_traitsIcEEEfffb(ptr dead_on_unwind writable sret(%"class.OpenImageIO::v3_1::ImageBuf") align 8, ptr noundef dead_on_return, float noundef, float noundef, float noundef, i1 noundef zeroext) local_unnamed_addr #2

declare noundef zeroext i1 @_ZN11OpenImageIO4v3_112ImageBufAlgo8convolveERNS0_8ImageBufERKS2_S5_bNS0_3ROIEi(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef nonnull align 8 dereferenceable(16), ptr noundef nonnull align 8 dereferenceable(16), i1 noundef zeroext, ptr noundef byval(%"struct.OpenImageIO::v3_1::ROI") align 8, i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.pow.f32(float, float) #6

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.exp.f32(float) #6

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.sqrt.f32(float) #6

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.log10.f32(float) #6

; Function Attrs: nounwind
declare void @_ZN11OpenImageIO4v3_110ParamValue11clear_valueEv(ptr noundef nonnull align 8 dereferenceable(39)) local_unnamed_addr #3

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPvm(ptr noundef, i64 noundef) local_unnamed_addr #14

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #6

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #6

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #6

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smax.i64(i64, i64) #6

attributes #0 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #5 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #6 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #7 = { mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, argmem: none, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { noinline noreturn nounwind uwtable "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { cold nofree noreturn }
attributes #10 = { inlinehint mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { nounwind }
attributes #16 = { noreturn nounwind }
attributes #17 = { builtin nounwind }
attributes #18 = { noreturn }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}
!llvm.errno.tbaa = !{!3}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{!"Ubuntu clang version 23.0.0 (++20260310081906+9c464ee5f9df-1~exp1~20260310202043.1510)"}
!3 = !{!4, !4, i64 0}
!4 = !{!"int", !5, i64 0}
!5 = !{!"omnipotent char", !6, i64 0}
!6 = !{!"Simple C++ TBAA"}
!7 = !{!8, !8, i64 0}
!8 = !{!"float", !5, i64 0}
!9 = !{!10, !4, i64 0}
!10 = !{!"_ZTSN11OpenImageIO4v3_13ROIE", !4, i64 0, !4, i64 4, !4, i64 8, !4, i64 12, !4, i64 16, !4, i64 20, !4, i64 24, !4, i64 28}
!11 = !{!10, !4, i64 24}
!12 = !{!10, !4, i64 12}
!13 = !{!10, !4, i64 8}
!14 = !{!10, !4, i64 20}
!15 = !{!10, !4, i64 16}
!16 = !{!10, !4, i64 4}
!17 = !{!18}
!18 = distinct !{!18, !19, !"_ZN11OpenImageIO4v3_19roi_unionERKNS0_3ROIES3_: argument 0"}
!19 = distinct !{!19, !"_ZN11OpenImageIO4v3_19roi_unionERKNS0_3ROIES3_"}
!20 = !{!10, !4, i64 28}
!21 = !{!22, !4, i64 0}
!22 = !{!"_ZTSN11OpenImageIO4v3_16paroptE", !4, i64 0, !23, i64 4, !24, i64 6, !25, i64 8, !26, i64 16, !28, i64 24}
!23 = !{!"_ZTSN11OpenImageIO4v3_16paropt11ParStrategyE", !5, i64 0}
!24 = !{!"_ZTSN11OpenImageIO4v3_16paropt8SplitDirE", !5, i64 0}
!25 = !{!"long", !5, i64 0}
!26 = !{!"p1 _ZTSN11OpenImageIO4v3_111thread_poolE", !27, i64 0}
!27 = !{!"any pointer", !5, i64 0}
!28 = !{!"bool", !5, i64 0}
!29 = !{!22, !23, i64 4}
!30 = !{!22, !24, i64 6}
!31 = !{!22, !25, i64 8}
!32 = !{!22, !26, i64 16}
!33 = !{!22, !28, i64 24}
!34 = !{!35, !35, i64 0}
!35 = !{!"p1 _ZTSN11OpenImageIO4v3_18ImageBufE", !27, i64 0}
!36 = !{!37, !27, i64 24}
!37 = !{!"_ZTSSt8functionIFvN11OpenImageIO4v3_13ROIEEE", !38, i64 0, !27, i64 24}
!38 = !{!"_ZTSSt14_Function_base", !5, i64 0, !27, i64 16}
!39 = !{!38, !27, i64 16}
!40 = !{!41, !42, i64 0}
!41 = !{!"_ZTSN11OpenImageIO4v3_114Image_or_ConstE", !42, i64 0, !35, i64 8, !43, i64 16}
!42 = !{!"_ZTSN11OpenImageIO4v3_114Image_or_Const8ContentsE", !5, i64 0}
!43 = !{!"_ZTSN11OpenImageIO4v3_14spanIKfLm18446744073709551615EEE", !44, i64 0, !25, i64 8}
!44 = !{!"p1 float", !27, i64 0}
!45 = !{!41, !35, i64 8}
!46 = !{!43, !44, i64 0}
!47 = !{!43, !25, i64 8}
!48 = !{!49}
!49 = distinct !{!49, !50, !"_ZN11OpenImageIO4v3_13ROI3AllEv: argument 0"}
!50 = distinct !{!50, !"_ZN11OpenImageIO4v3_13ROI3AllEv"}
!51 = !{!52}
!52 = distinct !{!52, !53, !"_ZN11OpenImageIO4v3_13ROI3AllEv: argument 0"}
!53 = distinct !{!53, !"_ZN11OpenImageIO4v3_13ROI3AllEv"}
!54 = !{!55, !25, i64 56}
!55 = !{!"_ZTSN11OpenImageIO4v3_112ImageBufAlgo14CompareResultsE", !56, i64 0, !56, i64 8, !56, i64 16, !56, i64 24, !4, i64 32, !4, i64 36, !4, i64 40, !4, i64 44, !25, i64 48, !25, i64 56, !28, i64 64}
!56 = !{!"double", !5, i64 0}
!57 = !{!55, !56, i64 24}
!58 = !{!55, !4, i64 32}
!59 = !{!55, !4, i64 36}
!60 = distinct !{!60, !61}
!61 = !{!"llvm.loop.mustprogress"}
!62 = distinct !{!62, !61}
!63 = distinct !{!63, !61}
!64 = !{!65, !66, i64 0}
!65 = !{!"_ZTSNSt12_Vector_baseIN11OpenImageIO4v3_110ParamValueESaIS2_EE17_Vector_impl_dataE", !66, i64 0, !66, i64 8, !66, i64 16}
!66 = !{!"p1 _ZTSN11OpenImageIO4v3_110ParamValueE", !27, i64 0}
!67 = !{!65, !66, i64 8}
!68 = distinct !{!68, !61}
!69 = !{!65, !66, i64 16}
!70 = !{!71, !72, i64 0}
!71 = !{!"_ZTSNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE17_Vector_impl_dataE", !72, i64 0, !72, i64 8, !72, i64 16}
!72 = !{!"p1 _ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE", !27, i64 0}
!73 = !{!71, !72, i64 8}
!74 = !{!75, !77, i64 0}
!75 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE", !76, i64 0, !25, i64 8, !5, i64 16}
!76 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_Alloc_hiderE", !77, i64 0}
!77 = !{!"p1 omnipotent char", !27, i64 0}
!78 = !{!5, !5, i64 0}
!79 = distinct !{!79, !61}
!80 = !{!71, !72, i64 16}
!81 = !{!82, !83, i64 0}
!82 = !{!"_ZTSNSt12_Vector_baseIN11OpenImageIO4v3_18TypeDescESaIS2_EE17_Vector_impl_dataE", !83, i64 0, !83, i64 8, !83, i64 16}
!83 = !{!"p1 _ZTSN11OpenImageIO4v3_18TypeDescE", !27, i64 0}
!84 = !{!82, !83, i64 16}
!85 = !{!86, !86, i64 0}
!86 = !{!"p1 _ZTSN11OpenImageIO4v3_112ImageBufImplE", !27, i64 0}
!87 = !{!27, !27, i64 0}
!88 = !{!89, !77, i64 0}
!89 = !{!"_ZTSN11OpenImageIO4v3_117basic_string_viewIcSt11char_traitsIcEEE", !77, i64 0, !25, i64 8}
!90 = !{!89, !25, i64 8}
!91 = distinct !{null}
!92 = !{!93, !93, i64 0}
!93 = !{!"p1 _ZTSSt8functionIFvN11OpenImageIO4v3_13ROIEEE", !27, i64 0}
!94 = !{!95, !95, i64 0}
!95 = !{!"p1 _ZTSN11OpenImageIO4v3_13ROIE", !27, i64 0}
!96 = !{!97, !27, i64 24}
!97 = !{!"_ZTSSt8functionIFvllllEE", !38, i64 0, !27, i64 24}
!98 = !{!25, !25, i64 0}
!99 = !{!100, !93, i64 0}
!100 = !{!"_ZTSZN11OpenImageIO4v3_112ImageBufAlgo14parallel_imageENS0_3ROIENS0_6paroptESt8functionIFvS2_EEEUlllllE_", !93, i64 0, !95, i64 8}
!101 = !{}
!102 = !{i64 8}
!103 = !{!100, !95, i64 8}
!104 = !{i64 4}
!105 = distinct !{null, null, null, null}
!106 = !{!107, !107, i64 0}
!107 = !{!"p1 _ZTSSt9type_info", !27, i64 0}
!108 = !{i64 0, i64 8, !92, i64 8, i64 8, !94}
!109 = !{!110, !35, i64 0}
!110 = !{!"_ZTSZN11OpenImageIO4v3_112_GLOBAL__N_113AdobeRGBToXYZERNS0_8ImageBufENS0_3ROIEiE3$_0", !35, i64 0}
!111 = !{!112, !28, i64 8}
!112 = !{!"_ZTSN11OpenImageIO4v3_18ImageBuf12IteratorBaseE", !35, i64 0, !28, i64 8, !28, i64 9, !28, i64 10, !28, i64 11, !4, i64 12, !4, i64 16, !4, i64 20, !4, i64 24, !4, i64 28, !4, i64 32, !4, i64 36, !4, i64 40, !4, i64 44, !4, i64 48, !4, i64 52, !4, i64 56, !4, i64 60, !4, i64 64, !4, i64 68, !113, i64 72, !4, i64 80, !4, i64 84, !4, i64 88, !4, i64 92, !4, i64 96, !25, i64 104, !77, i64 112, !114, i64 120, !28, i64 124, !5, i64 125}
!113 = !{!"p1 _ZTSN11OpenImageIO4v3_114ImageCacheTileE", !27, i64 0}
!114 = !{!"_ZTSN11OpenImageIO4v3_18ImageBuf8WrapModeE", !5, i64 0}
!115 = !{i8 0, i8 2}
!116 = !{!112, !4, i64 60}
!117 = !{!112, !4, i64 36}
!118 = !{!112, !4, i64 64}
!119 = !{!112, !4, i64 44}
!120 = !{!112, !4, i64 68}
!121 = !{!112, !4, i64 56}
!122 = !{!112, !113, i64 72}
!123 = !{!112, !77, i64 112}
!124 = !{!112, !35, i64 0}
!125 = !{!"branch_weights", !"expected", i32 1, i32 2000}
!126 = !{!112, !4, i64 40}
!127 = !{!112, !28, i64 9}
!128 = !{!112, !28, i64 11}
!129 = !{!112, !25, i64 104}
!130 = !{!112, !4, i64 16}
!131 = !{!"branch_weights", !"expected", i32 2000, i32 1}
!132 = !{!112, !28, i64 10}
!133 = !{!"branch_weights", i32 4001, i32 4000000}
!134 = !{!112, !114, i64 120}
!135 = !{!112, !4, i64 48}
!136 = !{!137, !35, i64 0}
!137 = !{!"_ZTSZN11OpenImageIO4v3_112_GLOBAL__N_18XYZToLABERNS0_8ImageBufENS0_3ROIEiE3$_0", !35, i64 0}
end_hunk_0
