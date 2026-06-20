inline.NumInlined: 3070
inline.NumDeleted: 1405
begin_hunk_0_@_ZNK8facebook5velox9functions12_GLOBAL__N_117MapFilterFunction5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISA_EERKS8_IKNS0_4TypeEERNS0_4exec7EvalCtxERSA_:bb.a
  store i64 %i.ik, ptr %i.hu, align 8, !tbaa !139
  br label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKmSt6vectorImSaImEEEENS1_IPmS6_EEET0_T_SB_SA_.exit.i.i

bb.bc:                                            ; preds = %bb.ax
  %i.il = icmp sgt i64 %i.ih, 8
  br i1 %i.il, label %bb.bd, label %bb.be, !prof !72

bb.bd:                                            ; preds = %bb.bc
  call void @llvm.memmove.p0.p0.i64(ptr align 8 %i.hu, ptr align 8 %i.hp, i64 %i.ih, i1 false)
  %.pre.i349.i = load ptr, ptr %i.hm, align 8, !tbaa !271
  %.pre25.i.i = load ptr, ptr %i.gz, align 8, !tbaa !315 ; 2 uses
  %.pre26.i.i = load ptr, ptr %i.fo, align 8, !tbaa !271
  %.pre27.i.i = load ptr, ptr %i.hn, align 8, !tbaa !315
  %.pre28.i.i = ptrtoint ptr %.pre25.i.i to i64
  %.pre29.i.i = ptrtoint ptr %.pre26.i.i to i64
  %.pre31.i.i = sub i64 %.pre28.i.i, %.pre29.i.i
  %.pre33.i.i = ptrtoint ptr %.pre27.i.i to i64
  br label %_ZSt4copyIPmS0_ET0_T_S2_S1_.exit.i.i

bb.be:                                            ; preds = %bb.bc
  %i.im = icmp eq i64 %i.ih, 8
  br i1 %i.im, label %bb.bf, label %_ZSt4copyIPmS0_ET0_T_S2_S1_.exit.i.i

bb.bf:                                            ; preds = %bb.be
  %i.in = load i64, ptr %i.hp, align 8, !tbaa !139
  store i64 %i.in, ptr %i.hu, align 8, !tbaa !139
  br label %_ZSt4copyIPmS0_ET0_T_S2_S1_.exit.i.i

_ZSt4copyIPmS0_ET0_T_S2_S1_.exit.i.i:             ; preds = %bb.bf, %bb.be, %bb.bd
  %.pre-phi34.i.i = phi i64 [ %.pre33.i.i, %bb.bd ], [ %i.hq, %bb.be ], [ %i.hq, %bb.bf ]
  %.pre-phi32.i.i = phi i64 [ %.pre31.i.i, %bb.bd ], [ %i.ih, %bb.be ], [ 8, %bb.bf ]
  %i.io = phi ptr [ %.pre25.i.i, %bb.bd ], [ %i.if, %bb.be ], [ %i.if, %bb.bf ] ; 2 uses
  %i.ip = phi ptr [ %.pre.i349.i, %bb.bd ], [ %i.hp, %bb.be ], [ %i.hp, %bb.bf ]
  %i.iq = getelementptr inbounds nuw i8, ptr %i.ip, i64 %.pre-phi32.i.i ; 3 uses
  %i.ir = ptrtoint ptr %i.iq to i64
  %i.is = sub i64 %.pre-phi34.i.i, %i.ir          ; 3 uses
  %i.it = icmp sgt i64 %i.is, 8
  br i1 %i.it, label %bb.bg, label %bb.bh, !prof !72

bb.bg:                                            ; preds = %_ZSt4copyIPmS0_ET0_T_S2_S1_.exit.i.i
  call void @llvm.memmove.p0.p0.i64(ptr align 8 %i.io, ptr align 8 %i.iq, i64 %i.is, i1 false)
  br label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKmSt6vectorImSaImEEEENS1_IPmS6_EEET0_T_SB_SA_.exit.i.i

bb.bh:                                            ; preds = %_ZSt4copyIPmS0_ET0_T_S2_S1_.exit.i.i
  %i.iu = icmp eq i64 %i.is, 8
  br i1 %i.iu, label %bb.bi, label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKmSt6vectorImSaImEEEENS1_IPmS6_EEET0_T_SB_SA_.exit.i.i

bb.bi:                                            ; preds = %bb.bh
  %i.iv = load i64, ptr %i.iq, align 8, !tbaa !139
  store i64 %i.iv, ptr %i.io, align 8, !tbaa !139
  br label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKmSt6vectorImSaImEEEENS1_IPmS6_EEET0_T_SB_SA_.exit.i.i

_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKmSt6vectorImSaImEEEENS1_IPmS6_EEET0_T_SB_SA_.exit.i.i: ; preds = %bb.bi, %bb.bh, %bb.bg, %bb.bb, %bb.ba, %bb.az, %_ZNSt12_Vector_baseImSaImEE13_M_deallocateEPmm.exit.i.i
  %i.iw = load ptr, ptr %i.fo, align 8, !tbaa !271
  %i.ix = getelementptr inbounds nuw i8, ptr %i.iw, i64 %i.hs
  store ptr %i.ix, ptr %i.gz, align 8, !tbaa !315
  br label %.noexc115.i

.noexc115.i:                                      ; preds = %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKmSt6vectorImSaImEEEENS1_IPmS6_EEET0_T_SB_SA_.exit.i.i, %.lr.ph.i.i
  %i.iy = getelementptr inbounds nuw i8, ptr %i.hm, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(12) %i.gu, ptr noundef nonnull align 8 dereferenceable(12) %i.iy, i64 12, i1 false)
  %i.iz = getelementptr inbounds nuw i8, ptr %i.hm, i64 36
  %i.ja = load i16, ptr %i.iz, align 4
  store i16 %i.ja, ptr %i.gv, align 4
  %i.jb = load ptr, ptr %41, align 8, !tbaa !316, !nonnull !77, !align !312
  invoke void @_ZN8facebook5velox17SelectivityVector9intersectERKS1_(ptr noundef nonnull align 8 dereferenceable(38) %i.fo, ptr noundef nonnull align 8 dereferenceable(38) %i.jb)
          to label %.noexc116.i unwind label %.loopexit67.i

.noexc116.i:                                      ; preds = %.noexc115.i
  %i.jc = load i32, ptr %i.gw, align 4, !tbaa !317
  %i.jd = load i32, ptr %i.gx, align 8, !tbaa !213
  %i.je = icmp slt i32 %i.jc, %i.jd
  br i1 %i.je, label %bb.bk, label %bb.bj

bb.bj:                                            ; preds = %.noexc116.i
  %i.jf = load i32, ptr %i.fn, align 8, !tbaa !304
  %i.jg = add nsw i32 %i.jf, 1                    ; 2 uses
  store i32 %i.jg, ptr %i.fn, align 8, !tbaa !304
  %i.jh = sext i32 %i.jg to i64                   ; 2 uses
  %i.ji = load ptr, ptr %i.fk, align 8, !tbaa !318, !nonnull !77, !align !312 ; 2 uses
  %i.jj = getelementptr inbounds nuw i8, ptr %i.ji, i64 8
  %i.jk = load ptr, ptr %i.jj, align 8, !tbaa !307
  %i.jl = load ptr, ptr %i.ji, align 8, !tbaa !310
  %i.jm = ptrtoint ptr %i.jk to i64
  %i.jn = ptrtoint ptr %i.jl to i64
  %i.jo = sub i64 %i.jm, %i.jn
  %i.jp = ashr exact i64 %i.jo, 4
  %i.jq = icmp ugt i64 %i.jp, %i.jh
  br i1 %i.jq, label %.lr.ph.i.i.backedge, label %.thread.i

.lr.ph.i.i.backedge:                              ; preds = %bb.bj, %._crit_edge94.i
  %.be = phi i64 [ %i.jh, %bb.bj ], [ %i.alk, %._crit_edge94.i ]
  br label %.lr.ph.i.i, !llvm.loop !319

bb.bk:                                            ; preds = %.noexc116.i
  %i.jr = load ptr, ptr %i.fk, align 8, !tbaa !318, !nonnull !77, !align !312 ; 2 uses
  %i.js = load i32, ptr %i.fn, align 8, !tbaa !304 ; 2 uses
  %i.jt = sext i32 %i.js to i64
  %i.ju = load ptr, ptr %i.jr, align 8, !tbaa !310 ; 2 uses
  %i.jv = getelementptr inbounds nuw [16 x i8], ptr %i.ju, i64 %i.jt
  %i.jw = load ptr, ptr %i.jv, align 8, !tbaa !320 ; 3 uses
  %i.jx = add nsw i32 %i.js, 1                    ; 2 uses
  store i32 %i.jx, ptr %i.fn, align 8, !tbaa !304
  %.not.i = icmp eq ptr %i.jw, null
  br i1 %.not.i, label %.thread.i, label %bb.bo

bb.bl:                                            ; preds = %._crit_edge.i
  %i.jy = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %38) #24
  br label %bb.ld

bb.bm:                                            ; preds = %bb.ak
  %i.jz = landingpad { ptr, i32 }
          cleanup
  br label %bb.lc

bb.bn:                                            ; preds = %bb.ao
  %i.ka = landingpad { ptr, i32 }
          cleanup
  br label %bb.la

.loopexit67.i:                                    ; preds = %.noexc115.i, %_ZNSt12_Vector_baseImSaImEE11_M_allocateEm.exit.i.i.i
  %lpad.loopexit69.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.kz

.loopexit.split-lp68.i:                           ; preds = %bb.as
  %lpad.loopexit.split-lp70.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.kz

bb.bo:                                            ; preds = %bb.bk
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h) #24
  store i32 0, ptr %i.h, align 4, !tbaa !3
  %i.kb = load ptr, ptr %i.bx, align 8, !tbaa !148
  %i.kc = load ptr, ptr %33, align 8, !tbaa !151
  %.not96.i = icmp eq ptr %i.kb, %i.kc
  br i1 %.not96.i, label %._crit_edge94.i, label %.lr.ph93.i

.lr.ph93.i:                                       ; preds = %bb.bo, %_ZNSt12__shared_ptrIN8facebook5velox10BaseVectorELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit196.i
  %i.kd = phi i32 [ %i.ajp, %_ZNSt12__shared_ptrIN8facebook5velox10BaseVectorELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit196.i ], [ 0, %bb.bo ]
  %i.ke = load ptr, ptr %44, align 8, !tbaa !204  ; 3 uses
  store ptr %i.ke, ptr %45, align 8, !tbaa !204
  %.not.i117.i = icmp eq ptr %i.ke, null
  br i1 %.not.i117.i, label %_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEEC2ERKS4_.exit.i, label %bb.bp

bb.bp:                                            ; preds = %.lr.ph93.i
  %i.kf = getelementptr inbounds nuw i8, ptr %i.ke, i64 40
  %i.kg = atomicrmw add ptr %i.kf, i32 1 acq_rel, align 4 ; 0 uses
  %.pre111.i = load i32, ptr %i.h, align 4, !tbaa !3
  br label %_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEEC2ERKS4_.exit.i

_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEEC2ERKS4_.exit.i: ; preds = %bb.bp, %.lr.ph93.i
  %i.kh = phi i32 [ %i.kd, %.lr.ph93.i ], [ %.pre111.i, %bb.bp ]
  %i.ki = sext i32 %i.kh to i64
  %i.kj = load ptr, ptr %i.ha, align 8, !tbaa !738
  %i.kk = getelementptr inbounds nuw [8 x i8], ptr %i.kj, i64 %i.ki
  %i.kl = load ptr, ptr %i.kk, align 8, !tbaa !204 ; 3 uses
  store ptr %i.kl, ptr %46, align 8, !tbaa !204
  %.not.i118.i = icmp eq ptr %i.kl, null
  br i1 %.not.i118.i, label %_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEEC2ERKS4_.exit119.i, label %bb.bq

bb.bq:                                            ; preds = %_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEEC2ERKS4_.exit.i
  %i.km = getelementptr inbounds nuw i8, ptr %i.kl, i64 40
  %i.kn = atomicrmw add ptr %i.km, i32 1 acq_rel, align 4 ; 0 uses
  br label %_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEEC2ERKS4_.exit119.i

_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEEC2ERKS4_.exit119.i: ; preds = %bb.bq, %_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEEC2ERKS4_.exit.i
  %i.ko = load i32, ptr %i.fs, align 8, !tbaa !188 ; 6 uses
  %i.kp = load ptr, ptr %i.hb, align 8, !tbaa !335 ; 2 uses
  %.not.i120.i = icmp eq ptr %i.kp, null
  br i1 %.not.i120.i, label %bb.br, label %_ZNK8facebook5velox13DecodedVector7indicesEv.exit123.i

bb.br:                                            ; preds = %_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEEC2ERKS4_.exit119.i
  invoke void @_ZNK8facebook5velox13DecodedVector13fillInIndicesEv(ptr noundef nonnull align 8 dereferenceable(120) %i.af)
          to label %.noexc122.i unwind label %.loopexit57.i

.noexc122.i:                                      ; preds = %bb.br
  %.pre.i121.i = load ptr, ptr %i.hb, align 8, !tbaa !335
  br label %_ZNK8facebook5velox13DecodedVector7indicesEv.exit123.i

_ZNK8facebook5velox13DecodedVector7indicesEv.exit123.i: ; preds = %.noexc122.i, %_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEEC2ERKS4_.exit119.i
  %i.kq = phi ptr [ %.pre.i121.i, %.noexc122.i ], [ %i.kp, %_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEEC2ERKS4_.exit119.i ] ; 7 uses
  %.val.i = load ptr, ptr %45, align 8, !tbaa !204 ; 2 uses
  %i.kr = getelementptr inbounds nuw i8, ptr %.val.i, i64 44
  %i.ks = load i8, ptr %i.kr, align 4, !tbaa !287
  %i.kt = and i8 %i.ks, 2
  %.not.i.i124.i = icmp eq i8 %i.kt, 0
  br i1 %.not.i.i124.i, label %_ZNK8facebook5velox6Buffer9asMutableImEEPT_v.exit.i.i, label %.invoke.i, !prof !72

.invoke.i:                                        ; preds = %bb.bu, %_ZNK8facebook5velox13DecodedVector7indicesEv.exit123.i
  invoke void @_ZN8facebook5velox6detail14veloxCheckFailINS0_17VeloxRuntimeErrorENS0_22CompileTimeEmptyStringEEEvRKNS1_18VeloxCheckFailArgsET0_(ptr noundef nonnull align 8 dereferenceable(56) @_ZZNK8facebook5velox6Buffer9asMutableImEEPT_vE18veloxCheckFailArgs) #26
          to label %.cont.i unwind label %.loopexit.split-lp58.i

.cont.i:                                          ; preds = %.invoke.i
  unreachable

_ZNK8facebook5velox6Buffer9asMutableImEEPT_v.exit.i.i: ; preds = %_ZNK8facebook5velox13DecodedVector7indicesEv.exit123.i
  %i.ku = getelementptr inbounds nuw i8, ptr %.val.i, i64 16
  %i.kv = load ptr, ptr %i.ku, align 8, !tbaa !288 ; 16 uses
  %.not.i.i.i125.i = icmp sgt i32 %i.ko, 0
  br i1 %.not.i.i.i125.i, label %bb.bs, label %_ZN8facebook5velox4bits8fillBitsEPmiib.exit.i.i

bb.bs:                                            ; preds = %_ZNK8facebook5velox6Buffer9asMutableImEEPT_v.exit.i.i
  %i.kw = and i32 %i.ko, 2147483584               ; 2 uses
  %.not3347.i.i.i.i = icmp eq i32 %i.kw, 0
  br i1 %.not3347.i.i.i.i, label %._crit_edge.i.i.i.i, label %.lr.ph.i.i.preheader.i.i

.lr.ph.i.i.preheader.i.i:                         ; preds = %bb.bs
  %i.kx = add nsw i32 %i.ko, -64
  %i.ky = lshr i32 %i.kx, 3
  %i.kz = and i32 %i.ky, 536870904
  %narrow.i.i = add nuw nsw i32 %i.kz, 8
  %i.la = zext nneg i32 %narrow.i.i to i64
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.kv, i8 0, i64 %i.la, i1 false), !tbaa !139
  br label %._crit_edge.i.i.i.i

._crit_edge.i.i.i.i:                              ; preds = %.lr.ph.i.i.preheader.i.i, %bb.bs
  %.not34.i.i.i.i = icmp eq i32 %i.ko, %i.kw
  br i1 %.not34.i.i.i.i, label %_ZN8facebook5velox4bits8fillBitsEPmiib.exit.i.i, label %bb.bt

bb.bt:                                            ; preds = %._crit_edge.i.i.i.i
  %i.lb = lshr i32 %i.ko, 6
  %i.lc = and i32 %i.ko, 63
  %i.ld = zext nneg i32 %i.lc to i64
  %notmask.i37.i.i.i.i = shl nsw i64 -1, %i.ld
  %i.le = zext nneg i32 %i.lb to i64
  %i.lf = getelementptr inbounds nuw [8 x i8], ptr %i.kv, i64 %i.le ; 2 uses
  %i.lg = load i64, ptr %i.lf, align 8, !tbaa !139
  %i.lh = and i64 %i.lg, %notmask.i37.i.i.i.i
  store i64 %i.lh, ptr %i.lf, align 8, !tbaa !139
  br label %_ZN8facebook5velox4bits8fillBitsEPmiib.exit.i.i

_ZN8facebook5velox4bits8fillBitsEPmiib.exit.i.i:  ; preds = %bb.bt, %._crit_edge.i.i.i.i, %_ZNK8facebook5velox6Buffer9asMutableImEEPT_v.exit.i.i
  %i.li = load ptr, ptr %46, align 8, !tbaa !204  ; 9 uses
  %.not.i126.i = icmp eq ptr %i.li, null          ; 8 uses
  br i1 %.not.i126.i, label %bb.bv, label %bb.bu

bb.bu:                                            ; preds = %_ZN8facebook5velox4bits8fillBitsEPmiib.exit.i.i
  %i.lj = getelementptr inbounds nuw i8, ptr %i.li, i64 44
  %i.lk = load i8, ptr %i.lj, align 4, !tbaa !287
  %i.ll = and i8 %i.lk, 2
  %.not.i6.i127.i = icmp eq i8 %i.ll, 0
  br i1 %.not.i6.i127.i, label %_ZNK8facebook5velox6Buffer9asMutableImEEPT_v.exit7.i.i, label %.invoke.i, !prof !72

_ZNK8facebook5velox6Buffer9asMutableImEEPT_v.exit7.i.i: ; preds = %bb.bu
  %i.lm = getelementptr inbounds nuw i8, ptr %i.li, i64 16
  %i.ln = load ptr, ptr %i.lm, align 8, !tbaa !288
  br label %bb.bv

bb.bv:                                            ; preds = %_ZNK8facebook5velox6Buffer9asMutableImEEPT_v.exit7.i.i, %_ZN8facebook5velox4bits8fillBitsEPmiib.exit.i.i
  %i.lo = phi ptr [ %i.ln, %_ZNK8facebook5velox6Buffer9asMutableImEEPT_v.exit7.i.i ], [ null, %_ZN8facebook5velox4bits8fillBitsEPmiib.exit.i.i ] ; 6 uses
  %i.lp = load i8, ptr %i.fp, align 1, !tbaa !306, !range !76, !noundef !77
  %i.lq = trunc nuw i8 %i.lp to i1
  br i1 %i.lq, label %._ZNRSt8optionalIbE5valueEv.exit_crit_edge.i.i.i.i, label %bb.bw

._ZNRSt8optionalIbE5valueEv.exit_crit_edge.i.i.i.i: ; preds = %bb.bv
  %.0.in.pre.i.i.i.i = load i8, ptr %i.gv, align 4, !tbaa !16, !range !76
  %.pre = load i32, ptr %i.gw, align 4, !tbaa !317
  br label %_ZNK8facebook5velox17SelectivityVector13isAllSelectedEv.exit.i.i.i

bb.bw:                                            ; preds = %bb.bv
  %i.lr = load i32, ptr %i.gw, align 4, !tbaa !317 ; 2 uses
  %i.ls = icmp eq i32 %i.lr, 0
  br i1 %i.ls, label %bb.bx, label %_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i.i.i.i

bb.bx:                                            ; preds = %bb.bw
  %i.lt = load i32, ptr %i.gx, align 8, !tbaa !213 ; 6 uses
  %i.lu = load i32, ptr %i.gu, align 8, !tbaa !326
  %i.lv = icmp eq i32 %i.lt, %i.lu
  br i1 %i.lv, label %bb.by, label %_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i.i.i.i

bb.by:                                            ; preds = %bb.bx
  %i.lw = load ptr, ptr %i.fo, align 8, !tbaa !271 ; 2 uses
  %.not.i.i.i.i129.i = icmp sgt i32 %i.lt, 0
  br i1 %.not.i.i.i.i129.i, label %bb.bz, label %_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i.i.i.i

bb.bz:                                            ; preds = %bb.by
  %i.lx = and i32 %i.lt, 2147483584               ; 3 uses
  %i.ly = zext nneg i32 %i.lx to i64
  %.not37.i.i.not.i.i.i.i309.not = icmp eq i32 %i.lx, 0
  br i1 %.not37.i.i.not.i.i.i.i309.not, label %.critedge.i.i.i.i.i.i, label %.lr.ph

bb.ca:                                            ; preds = %.lr.ph
  %indvars.iv.next.i.i.i.i = add nuw nsw i64 %indvars.iv.i.i.i.i310, 64 ; 2 uses
  %.not37.i.i.not.i.i.i.i = icmp samesign ult i64 %indvars.iv.next.i.i.i.i, %i.ly
  br i1 %.not37.i.i.not.i.i.i.i, label %.lr.ph, label %.critedge.i.i.i.i.i.i, !llvm.loop !327

.lr.ph:                                           ; preds = %bb.bz, %bb.ca
  %indvars.iv.i.i.i.i310 = phi i64 [ %indvars.iv.next.i.i.i.i, %bb.ca ], [ 0, %bb.bz ] ; 2 uses
  %i.lz = lshr exact i64 %indvars.iv.i.i.i.i310, 3
  %i.ma = getelementptr inbounds nuw i8, ptr %i.lw, i64 %i.lz
  %i.mb = load i64, ptr %i.ma, align 8, !tbaa !139
  %i.mc = icmp eq i64 %i.mb, -1
  br i1 %i.mc, label %bb.ca, label %_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i.i.i.i, !llvm.loop !327

.critedge.i.i.i.i.i.i:                            ; preds = %bb.ca, %bb.bz
  %.not38.i.i.i.i.i.i = icmp eq i32 %i.lt, %i.lx
  br i1 %.not38.i.i.i.i.i.i, label %_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i.i.i.i, label %bb.cb

bb.cb:                                            ; preds = %.critedge.i.i.i.i.i.i
  %i.md = lshr i32 %i.lt, 6
  %i.me = and i32 %i.lt, 63
  %i.mf = zext nneg i32 %i.me to i64
  %notmask.i40.i.i.i.i.i.i = shl nsw i64 -1, %i.mf
  %i.mg = zext nneg i32 %i.md to i64
  %i.mh = getelementptr inbounds nuw [8 x i8], ptr %i.lw, i64 %i.mg
  %i.mi = load i64, ptr %i.mh, align 8, !tbaa !139
  %.demorgan.i.i.i.i = or i64 %i.mi, %notmask.i40.i.i.i.i.i.i
  %i.mj = icmp eq i64 %.demorgan.i.i.i.i, -1
  %i.mk = zext i1 %i.mj to i16
  %i.ml = or disjoint i16 %i.mk, 256
  br label %_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i.i.i.i

_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i.i.i.i: ; preds = %.lr.ph, %bb.cb, %.critedge.i.i.i.i.i.i, %bb.by, %bb.bx, %bb.bw
  %.sroa.0.0.insert.ext.i.i.i.i = phi i16 [ 256, %bb.bx ], [ 256, %bb.bw ], [ 257, %bb.by ], [ 257, %.critedge.i.i.i.i.i.i ], [ %i.ml, %bb.cb ], [ 256, %.lr.ph ] ; 2 uses
  store i16 %.sroa.0.0.insert.ext.i.i.i.i, ptr %i.gv, align 4
  %i.mm = trunc i16 %.sroa.0.0.insert.ext.i.i.i.i to i8
  br label %_ZNK8facebook5velox17SelectivityVector13isAllSelectedEv.exit.i.i.i

_ZNK8facebook5velox17SelectivityVector13isAllSelectedEv.exit.i.i.i: ; preds = %_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i.i.i.i, %._ZNRSt8optionalIbE5valueEv.exit_crit_edge.i.i.i.i
  %i.mn = phi i32 [ %.pre, %._ZNRSt8optionalIbE5valueEv.exit_crit_edge.i.i.i.i ], [ %i.lr, %_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i.i.i.i ] ; 8 uses
  %.0.in.i.i.i.i = phi i8 [ %.0.in.pre.i.i.i.i, %._ZNRSt8optionalIbE5valueEv.exit_crit_edge.i.i.i.i ], [ %i.mm, %_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i.i.i.i ]
  %.0.i.i.i.i = trunc nuw i8 %.0.in.i.i.i.i to i1
  br i1 %.0.i.i.i.i, label %bb.cc, label %bb.cf

bb.cc:                                            ; preds = %_ZNK8facebook5velox17SelectivityVector13isAllSelectedEv.exit.i.i.i
  %i.mo = load i32, ptr %i.gx, align 8, !tbaa !213 ; 2 uses
  %i.mp = icmp slt i32 %i.mn, %i.mo
  br i1 %i.mp, label %.lr.ph.i.i.i, label %_ZNK8facebook5velox17SelectivityVector15applyToSelectedIZNKS0_9functions12_GLOBAL__N_117MapFilterFunction27buildInMapSelectivityVectorERS1_N5boost13intrusive_ptrINS0_6BufferEEESA_iRKS1_PKiEUliE_EEvT_.exit.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.cc
  %i.mq = sext i32 %i.mn to i64
  %wide.trip.count.i.i.i = sext i32 %i.mo to i64
  br label %bb.cd

bb.cd:                                            ; preds = %_ZZNK8facebook5velox9functions12_GLOBAL__N_117MapFilterFunction27buildInMapSelectivityVectorERNS0_17SelectivityVectorEN5boost13intrusive_ptrINS0_6BufferEEES9_iRKS4_PKiENKUliE_clEi.exit.i.i.i, %.lr.ph.i.i.i
  %indvars.iv.i.i.i = phi i64 [ %i.mq, %.lr.ph.i.i.i ], [ %indvars.iv.next.i.i.i, %_ZZNK8facebook5velox9functions12_GLOBAL__N_117MapFilterFunction27buildInMapSelectivityVectorERNS0_17SelectivityVectorEN5boost13intrusive_ptrINS0_6BufferEEES9_iRKS4_PKiENKUliE_clEi.exit.i.i.i ] ; 2 uses
  %.phi.trans.insert4.i.i.i.i = getelementptr inbounds [4 x i8], ptr %i.kq, i64 %indvars.iv.i.i.i
  %.pre5.i.i.i.i = load i32, ptr %.phi.trans.insert4.i.i.i.i, align 4, !tbaa !3 ; 2 uses
  %.pre6.i.i.i.i = sext i32 %.pre5.i.i.i.i to i64 ; 3 uses
  br i1 %.not.i126.i, label %._crit_edge.i.i9.i.i, label %bb.ce

bb.ce:                                            ; preds = %bb.cd
  %i.mr = lshr i64 %.pre6.i.i.i.i, 6
  %i.ms = getelementptr inbounds nuw [8 x i8], ptr %i.lo, i64 %i.mr
  %i.mt = load i64, ptr %i.ms, align 8, !tbaa !139
  %i.mu = and i64 %.pre6.i.i.i.i, 63
  %i.mv = shl nuw i64 1, %i.mu
  %i.mw = and i64 %i.mt, %i.mv
  %.not.i.i8.i.i = icmp eq i64 %i.mw, 0
  br i1 %.not.i.i8.i.i, label %_ZZNK8facebook5velox9functions12_GLOBAL__N_117MapFilterFunction27buildInMapSelectivityVectorERNS0_17SelectivityVectorEN5boost13intrusive_ptrINS0_6BufferEEES9_iRKS4_PKiENKUliE_clEi.exit.i.i.i, label %._crit_edge.i.i9.i.i

._crit_edge.i.i9.i.i:                             ; preds = %bb.ce, %bb.cd
  %i.mx = trunc i32 %.pre5.i.i.i.i to i8
  %i.my = and i8 %i.mx, 7
  %i.mz = shl nuw i8 1, %i.my
  %i.na = lshr i64 %.pre6.i.i.i.i, 3
  %i.nb = getelementptr inbounds nuw i8, ptr %i.kv, i64 %i.na ; 2 uses
  %i.nc = load i8, ptr %i.nb, align 1, !tbaa !33
  %i.nd = or i8 %i.nc, %i.mz
  store i8 %i.nd, ptr %i.nb, align 1, !tbaa !33
  br label %_ZZNK8facebook5velox9functions12_GLOBAL__N_117MapFilterFunction27buildInMapSelectivityVectorERNS0_17SelectivityVectorEN5boost13intrusive_ptrINS0_6BufferEEES9_iRKS4_PKiENKUliE_clEi.exit.i.i.i

_ZZNK8facebook5velox9functions12_GLOBAL__N_117MapFilterFunction27buildInMapSelectivityVectorERNS0_17SelectivityVectorEN5boost13intrusive_ptrINS0_6BufferEEES9_iRKS4_PKiENKUliE_clEi.exit.i.i.i: ; preds = %._crit_edge.i.i9.i.i, %bb.ce
  %indvars.iv.next.i.i.i = add nsw i64 %indvars.iv.i.i.i, 1 ; 2 uses
  %exitcond.not.i.i.i = icmp eq i64 %indvars.iv.next.i.i.i, %wide.trip.count.i.i.i
  br i1 %exitcond.not.i.i.i, label %_ZNK8facebook5velox17SelectivityVector15applyToSelectedIZNKS0_9functions12_GLOBAL__N_117MapFilterFunction27buildInMapSelectivityVectorERS1_N5boost13intrusive_ptrINS0_6BufferEEESA_iRKS1_PKiEUliE_EEvT_.exit.i.i, label %bb.cd, !llvm.loop !741

bb.cf:                                            ; preds = %_ZNK8facebook5velox17SelectivityVector13isAllSelectedEv.exit.i.i.i
  %i.ne = load ptr, ptr %i.fo, align 8, !tbaa !271 ; 4 uses
  %i.nf = load i32, ptr %i.gx, align 8, !tbaa !213 ; 7 uses
  %.not.i.i.i.i.i.i = icmp slt i32 %i.mn, %i.nf
  br i1 %.not.i.i.i.i.i.i, label %bb.cg, label %_ZNK8facebook5velox17SelectivityVector15applyToSelectedIZNKS0_9functions12_GLOBAL__N_117MapFilterFunction27buildInMapSelectivityVectorERS1_N5boost13intrusive_ptrINS0_6BufferEEESA_iRKS1_PKiEUliE_EEvT_.exit.i.i

bb.cg:                                            ; preds = %bb.cf
  %i.ng = add i32 %i.mn, 63                       ; 2 uses
  %i.nh = srem i32 %i.ng, 64
  %i.ni = sub nsw i32 %i.ng, %i.nh                ; 6 uses
  %i.nj = and i32 %i.nf, -64                      ; 6 uses
  %i.nk = icmp slt i32 %i.nj, %i.ni
  br i1 %i.nk, label %bb.ch, label %bb.cj

bb.ch:                                            ; preds = %bb.cg
  %i.nl = ashr i32 %i.nf, 6
  %i.nm = and i32 %i.nf, 63
  %i.nn = zext nneg i32 %i.nm to i64
  %notmask.i.i.i.i.i.i.i = shl nsw i64 -1, %i.nn
  %i.no = xor i64 %notmask.i.i.i.i.i.i.i, -1
  %i.np = sub nsw i32 %i.ni, %i.mn                ; 2 uses
  %i.nq = zext nneg i32 %i.np to i64
  %notmask.i.i.i.i.i.i.i.i = shl nsw i64 -1, %i.nq
  %i.nr = xor i64 %notmask.i.i.i.i.i.i.i.i, -1
  %i.ns = sub nsw i32 64, %i.np
  %i.nt = zext nneg i32 %i.ns to i64
  %i.nu = shl i64 %i.nr, %i.nt
  %i.nv = and i64 %i.nu, %i.no
  %i.nw = sext i32 %i.nl to i64
  %i.nx = getelementptr inbounds [8 x i8], ptr %i.ne, i64 %i.nw
  %i.ny = load i64, ptr %i.nx, align 8, !tbaa !139
  %i.nz = and i64 %i.nv, %i.ny                    ; 2 uses
  %.not.i.i.i.i.i.i.i = icmp eq i64 %i.nz, 0
  br i1 %.not.i.i.i.i.i.i.i, label %_ZNK8facebook5velox17SelectivityVector15applyToSelectedIZNKS0_9functions12_GLOBAL__N_117MapFilterFunction27buildInMapSelectivityVectorERS1_N5boost13intrusive_ptrINS0_6BufferEEESA_iRKS1_PKiEUliE_EEvT_.exit.i.i, label %.preheader.i.i.i.i.i.i.preheader.i

.preheader.i.i.i.i.i.i.preheader.i:               ; preds = %bb.ch
  %66 = sext i32 %i.nj to i64
  %invariant.gep96.i = getelementptr [4 x i8], ptr %i.kq, i64 %66
  br label %.preheader.i.i.i.i.i.i.i

.preheader.i.i.i.i.i.i.i:                         ; preds = %_ZZNK8facebook5velox9functions12_GLOBAL__N_117MapFilterFunction27buildInMapSelectivityVectorERNS0_17SelectivityVectorEN5boost13intrusive_ptrINS0_6BufferEEES9_iRKS4_PKiENKUliE_clEi.exit.i.i.i.i.i.i.i, %.preheader.i.i.i.i.i.i.preheader.i
  %.011.i.i.i.i.i.i.i = phi i64 [ %i.op, %_ZZNK8facebook5velox9functions12_GLOBAL__N_117MapFilterFunction27buildInMapSelectivityVectorERNS0_17SelectivityVectorEN5boost13intrusive_ptrINS0_6BufferEEES9_iRKS4_PKiENKUliE_clEi.exit.i.i.i.i.i.i.i ], [ %i.nz, %.preheader.i.i.i.i.i.i.preheader.i ] ; 3 uses
  %i.oa = call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.011.i.i.i.i.i.i.i, i1 true)
  %.phi.trans.insert4.i.i.i.i.i.i.i.i = getelementptr [4 x i8], ptr %invariant.gep96.i, i64 %i.oa
  %.pre5.i.i.i.i.i.i.i.i = load i32, ptr %.phi.trans.insert4.i.i.i.i.i.i.i.i, align 4, !tbaa !3 ; 2 uses
  %.pre6.i.i.i.i.i.i.i.i = sext i32 %.pre5.i.i.i.i.i.i.i.i to i64 ; 3 uses
  br i1 %.not.i126.i, label %._crit_edge.i.i.i.i.i.i.i.i, label %bb.ci

bb.ci:                                            ; preds = %.preheader.i.i.i.i.i.i.i
  %i.ob = lshr i64 %.pre6.i.i.i.i.i.i.i.i, 6
  %i.oc = getelementptr inbounds nuw [8 x i8], ptr %i.lo, i64 %i.ob
  %i.od = load i64, ptr %i.oc, align 8, !tbaa !139
  %i.oe = and i64 %.pre6.i.i.i.i.i.i.i.i, 63
  %i.of = shl nuw i64 1, %i.oe
  %i.og = and i64 %i.od, %i.of
  %.not.i.i.i.i.i.i.i.i = icmp eq i64 %i.og, 0
  br i1 %.not.i.i.i.i.i.i.i.i, label %_ZZNK8facebook5velox9functions12_GLOBAL__N_117MapFilterFunction27buildInMapSelectivityVectorERNS0_17SelectivityVectorEN5boost13intrusive_ptrINS0_6BufferEEES9_iRKS4_PKiENKUliE_clEi.exit.i.i.i.i.i.i.i, label %._crit_edge.i.i.i.i.i.i.i.i

._crit_edge.i.i.i.i.i.i.i.i:                      ; preds = %bb.ci, %.preheader.i.i.i.i.i.i.i
  %i.oh = trunc i32 %.pre5.i.i.i.i.i.i.i.i to i8
  %i.oi = and i8 %i.oh, 7
  %i.oj = shl nuw i8 1, %i.oi
  %i.ok = lshr i64 %.pre6.i.i.i.i.i.i.i.i, 3
  %i.ol = getelementptr inbounds nuw i8, ptr %i.kv, i64 %i.ok ; 2 uses
  %i.om = load i8, ptr %i.ol, align 1, !tbaa !33
  %i.on = or i8 %i.om, %i.oj
  store i8 %i.on, ptr %i.ol, align 1, !tbaa !33
  br label %_ZZNK8facebook5velox9functions12_GLOBAL__N_117MapFilterFunction27buildInMapSelectivityVectorERNS0_17SelectivityVectorEN5boost13intrusive_ptrINS0_6BufferEEES9_iRKS4_PKiENKUliE_clEi.exit.i.i.i.i.i.i.i

_ZZNK8facebook5velox9functions12_GLOBAL__N_117MapFilterFunction27buildInMapSelectivityVectorERNS0_17SelectivityVectorEN5boost13intrusive_ptrINS0_6BufferEEES9_iRKS4_PKiENKUliE_clEi.exit.i.i.i.i.i.i.i: ; preds = %._crit_edge.i.i.i.i.i.i.i.i, %bb.ci
  %i.oo = add nsw i64 %.011.i.i.i.i.i.i.i, -1
  %i.op = and i64 %i.oo, %.011.i.i.i.i.i.i.i      ; 2 uses
  %.not10.i.i.i.i.i.i.i = icmp eq i64 %i.op, 0
  br i1 %.not10.i.i.i.i.i.i.i, label %_ZNK8facebook5velox17SelectivityVector15applyToSelectedIZNKS0_9functions12_GLOBAL__N_117MapFilterFunction27buildInMapSelectivityVectorERS1_N5boost13intrusive_ptrINS0_6BufferEEESA_iRKS1_PKiEUliE_EEvT_.exit.i.i, label %.preheader.i.i.i.i.i.i.i, !llvm.loop !742

bb.cj:                                            ; preds = %bb.cg
  %.not32.i.i.i.i.i.i = icmp eq i32 %i.mn, %i.ni
  br i1 %.not32.i.i.i.i.i.i, label %_ZZN8facebook5velox4bits10forEachBitIZNKS0_9functions12_GLOBAL__N_117MapFilterFunction27buildInMapSelectivityVectorERNS0_17SelectivityVectorEN5boost13intrusive_ptrINS0_6BufferEEESB_iRKS6_PKiEUliE_EEvPKmiibT_ENKUlimE_clEim.exit50.i.i.i.i.i.i, label %bb.ck

bb.ck:                                            ; preds = %bb.cj
  %i.oq = sdiv i32 %i.mn, 64                      ; 2 uses
  %i.or = sub nsw i32 %i.ni, %i.mn                ; 2 uses
  %i.os = zext nneg i32 %i.or to i64
  %notmask.i.i35.i.i.i.i.i.i = shl nsw i64 -1, %i.os
  %i.ot = xor i64 %notmask.i.i35.i.i.i.i.i.i, -1
  %i.ou = sub nsw i32 64, %i.or
  %i.ov = zext nneg i32 %i.ou to i64
  %i.ow = shl i64 %i.ot, %i.ov
  %i.ox = sext i32 %i.oq to i64
  %i.oy = getelementptr inbounds [8 x i8], ptr %i.ne, i64 %i.ox
  %i.oz = load i64, ptr %i.oy, align 8, !tbaa !139
  %i.pa = and i64 %i.oz, %i.ow                    ; 2 uses
  %.not.i36.i.i.i.i.i.i = icmp eq i64 %i.pa, 0
  br i1 %.not.i36.i.i.i.i.i.i, label %_ZZN8facebook5velox4bits10forEachBitIZNKS0_9functions12_GLOBAL__N_117MapFilterFunction27buildInMapSelectivityVectorERNS0_17SelectivityVectorEN5boost13intrusive_ptrINS0_6BufferEEESB_iRKS6_PKiEUliE_EEvPKmiibT_ENKUlimE_clEim.exit50.i.i.i.i.i.i, label %.preheader.i37.i.i.i.i.i.i

.preheader.i37.i.i.i.i.i.i:                       ; preds = %bb.ck
  %i.pb = shl nsw i32 %i.oq, 6
  %67 = sext i32 %i.pb to i64
  %invariant.gep.i = getelementptr [4 x i8], ptr %i.kq, i64 %67
  br label %bb.cl

bb.cl:                                            ; preds = %_ZZNK8facebook5velox9functions12_GLOBAL__N_117MapFilterFunction27buildInMapSelectivityVectorERNS0_17SelectivityVectorEN5boost13intrusive_ptrINS0_6BufferEEES9_iRKS4_PKiENKUliE_clEi.exit.i41.i.i.i.i.i.i, %.preheader.i37.i.i.i.i.i.i
  %.011.i38.i.i.i.i.i.i = phi i64 [ %i.pa, %.preheader.i37.i.i.i.i.i.i ], [ %i.pr, %_ZZNK8facebook5velox9functions12_GLOBAL__N_117MapFilterFunction27buildInMapSelectivityVectorERNS0_17SelectivityVectorEN5boost13intrusive_ptrINS0_6BufferEEES9_iRKS4_PKiENKUliE_clEi.exit.i41.i.i.i.i.i.i ] ; 3 uses
  %i.pc = call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.011.i38.i.i.i.i.i.i, i1 true)
  %.phi.trans.insert4.i.i47.i.i.i.i.i.i = getelementptr [4 x i8], ptr %invariant.gep.i, i64 %i.pc
  %.pre5.i.i48.i.i.i.i.i.i = load i32, ptr %.phi.trans.insert4.i.i47.i.i.i.i.i.i, align 4, !tbaa !3 ; 2 uses
  %.pre6.i.i49.i.i.i.i.i.i = sext i32 %.pre5.i.i48.i.i.i.i.i.i to i64 ; 3 uses
  br i1 %.not.i126.i, label %._crit_edge.i.i43.i.i.i.i.i.i, label %bb.cm

bb.cm:                                            ; preds = %bb.cl
  %i.pd = lshr i64 %.pre6.i.i49.i.i.i.i.i.i, 6
  %i.pe = getelementptr inbounds nuw [8 x i8], ptr %i.lo, i64 %i.pd
  %i.pf = load i64, ptr %i.pe, align 8, !tbaa !139
  %i.pg = and i64 %.pre6.i.i49.i.i.i.i.i.i, 63
  %i.ph = shl nuw i64 1, %i.pg
  %i.pi = and i64 %i.pf, %i.ph
  %.not.i.i39.i.i.i.i.i.i = icmp eq i64 %i.pi, 0
  br i1 %.not.i.i39.i.i.i.i.i.i, label %_ZZNK8facebook5velox9functions12_GLOBAL__N_117MapFilterFunction27buildInMapSelectivityVectorERNS0_17SelectivityVectorEN5boost13intrusive_ptrINS0_6BufferEEES9_iRKS4_PKiENKUliE_clEi.exit.i41.i.i.i.i.i.i, label %._crit_edge.i.i43.i.i.i.i.i.i

._crit_edge.i.i43.i.i.i.i.i.i:                    ; preds = %bb.cm, %bb.cl
  %i.pj = trunc i32 %.pre5.i.i48.i.i.i.i.i.i to i8
  %i.pk = and i8 %i.pj, 7
  %i.pl = shl nuw i8 1, %i.pk
  %i.pm = lshr i64 %.pre6.i.i49.i.i.i.i.i.i, 3
  %i.pn = getelementptr inbounds nuw i8, ptr %i.kv, i64 %i.pm ; 2 uses
  %i.po = load i8, ptr %i.pn, align 1, !tbaa !33
  %i.pp = or i8 %i.po, %i.pl
  store i8 %i.pp, ptr %i.pn, align 1, !tbaa !33
  br label %_ZZNK8facebook5velox9functions12_GLOBAL__N_117MapFilterFunction27buildInMapSelectivityVectorERNS0_17SelectivityVectorEN5boost13intrusive_ptrINS0_6BufferEEES9_iRKS4_PKiENKUliE_clEi.exit.i41.i.i.i.i.i.i

_ZZNK8facebook5velox9functions12_GLOBAL__N_117MapFilterFunction27buildInMapSelectivityVectorERNS0_17SelectivityVectorEN5boost13intrusive_ptrINS0_6BufferEEES9_iRKS4_PKiENKUliE_clEi.exit.i41.i.i.i.i.i.i: ; preds = %._crit_edge.i.i43.i.i.i.i.i.i, %bb.cm
  %i.pq = add i64 %.011.i38.i.i.i.i.i.i, -1
  %i.pr = and i64 %i.pq, %.011.i38.i.i.i.i.i.i    ; 2 uses
  %.not10.i42.i.i.i.i.i.i = icmp eq i64 %i.pr, 0
  br i1 %.not10.i42.i.i.i.i.i.i, label %_ZZN8facebook5velox4bits10forEachBitIZNKS0_9functions12_GLOBAL__N_117MapFilterFunction27buildInMapSelectivityVectorERNS0_17SelectivityVectorEN5boost13intrusive_ptrINS0_6BufferEEESB_iRKS6_PKiEUliE_EEvPKmiibT_ENKUlimE_clEim.exit50.i.i.i.i.i.i, label %bb.cl, !llvm.loop !742

_ZZN8facebook5velox4bits10forEachBitIZNKS0_9functions12_GLOBAL__N_117MapFilterFunction27buildInMapSelectivityVectorERNS0_17SelectivityVectorEN5boost13intrusive_ptrINS0_6BufferEEESB_iRKS6_PKiEUliE_EEvPKmiibT_ENKUlimE_clEim.exit50.i.i.i.i.i.i: ; preds = %_ZZNK8facebook5velox9functions12_GLOBAL__N_117MapFilterFunction27buildInMapSelectivityVectorERNS0_17SelectivityVectorEN5boost13intrusive_ptrINS0_6BufferEEES9_iRKS4_PKiENKUliE_clEi.exit.i41.i.i.i.i.i.i, %bb.ck, %bb.cj
  %i.ps = add nsw i32 %i.ni, 64                   ; 2 uses
  %.not3379.i.i.i.i.i.i = icmp sgt i32 %i.ps, %i.nj
  br i1 %.not3379.i.i.i.i.i.i, label %._crit_edge.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i128.i

._crit_edge.i.i.i.i.i.i:                          ; preds = %_ZZN8facebook5velox4bits10forEachBitIZNKS0_9functions12_GLOBAL__N_117MapFilterFunction27buildInMapSelectivityVectorERNS0_17SelectivityVectorEN5boost13intrusive_ptrINS0_6BufferEEESB_iRKS6_PKiEUliE_EEvPKmiibT_ENKUliE_clEi.exit.i.i.i.i.i.i, %_ZZN8facebook5velox4bits10forEachBitIZNKS0_9functions12_GLOBAL__N_117MapFilterFunction27buildInMapSelectivityVectorERNS0_17SelectivityVectorEN5boost13intrusive_ptrINS0_6BufferEEESB_iRKS6_PKiEUliE_EEvPKmiibT_ENKUlimE_clEim.exit50.i.i.i.i.i.i
  %.not34.i.i.i.i.i.i = icmp eq i32 %i.nf, %i.nj
  br i1 %.not34.i.i.i.i.i.i, label %_ZNK8facebook5velox17SelectivityVector15applyToSelectedIZNKS0_9functions12_GLOBAL__N_117MapFilterFunction27buildInMapSelectivityVectorERS1_N5boost13intrusive_ptrINS0_6BufferEEESA_iRKS1_PKiEUliE_EEvT_.exit.i.i, label %bb.cp

.lr.ph.i.i.i.i.i128.i:                            ; preds = %_ZZN8facebook5velox4bits10forEachBitIZNKS0_9functions12_GLOBAL__N_117MapFilterFunction27buildInMapSelectivityVectorERNS0_17SelectivityVectorEN5boost13intrusive_ptrINS0_6BufferEEESB_iRKS6_PKiEUliE_EEvPKmiibT_ENKUlimE_clEim.exit50.i.i.i.i.i.i, %_ZZN8facebook5velox4bits10forEachBitIZNKS0_9functions12_GLOBAL__N_117MapFilterFunction27buildInMapSelectivityVectorERNS0_17SelectivityVectorEN5boost13intrusive_ptrINS0_6BufferEEESB_iRKS6_PKiEUliE_EEvPKmiibT_ENKUliE_clEi.exit.i.i.i.i.i.i
  %i.pt = phi i32 [ %i.rs, %_ZZN8facebook5velox4bits10forEachBitIZNKS0_9functions12_GLOBAL__N_117MapFilterFunction27buildInMapSelectivityVectorERNS0_17SelectivityVectorEN5boost13intrusive_ptrINS0_6BufferEEESB_iRKS6_PKiEUliE_EEvPKmiibT_ENKUliE_clEi.exit.i.i.i.i.i.i ], [ %i.ps, %_ZZN8facebook5velox4bits10forEachBitIZNKS0_9functions12_GLOBAL__N_117MapFilterFunction27buildInMapSelectivityVectorERNS0_17SelectivityVectorEN5boost13intrusive_ptrINS0_6BufferEEESB_iRKS6_PKiEUliE_EEvPKmiibT_ENKUlimE_clEim.exit50.i.i.i.i.i.i ] ; 2 uses
  %.080.i.i.i.i.i.i = phi i32 [ %i.pt, %_ZZN8facebook5velox4bits10forEachBitIZNKS0_9functions12_GLOBAL__N_117MapFilterFunction27buildInMapSelectivityVectorERNS0_17SelectivityVectorEN5boost13intrusive_ptrINS0_6BufferEEESB_iRKS6_PKiEUliE_EEvPKmiibT_ENKUliE_clEi.exit.i.i.i.i.i.i ], [ %i.ni, %_ZZN8facebook5velox4bits10forEachBitIZNKS0_9functions12_GLOBAL__N_117MapFilterFunction27buildInMapSelectivityVectorERNS0_17SelectivityVectorEN5boost13intrusive_ptrINS0_6BufferEEESB_iRKS6_PKiEUliE_EEvPKmiibT_ENKUlimE_clEim.exit50.i.i.i.i.i.i ] ; 2 uses
  %i.pu = sdiv i32 %.080.i.i.i.i.i.i, 64          ; 3 uses
  %i.pv = sext i32 %i.pu to i64
  %i.pw = getelementptr inbounds [8 x i8], ptr %i.ne, i64 %i.pv
  %i.px = load i64, ptr %i.pw, align 8, !tbaa !139 ; 3 uses
  switch i64 %i.px, label %.lr.ph.i.i.i.i.i.i.i [
    i64 -1, label %bb.cn
    i64 0, label %_ZZN8facebook5velox4bits10forEachBitIZNKS0_9functions12_GLOBAL__N_117MapFilterFunction27buildInMapSelectivityVectorERNS0_17SelectivityVectorEN5boost13intrusive_ptrINS0_6BufferEEESB_iRKS6_PKiEUliE_EEvPKmiibT_ENKUliE_clEi.exit.i.i.i.i.i.i
  ]

.lr.ph.i.i.i.i.i.i.i:                             ; preds = %.lr.ph.i.i.i.i.i128.i
  %i.py = shl nsw i32 %i.pu, 6
  %68 = sext i32 %i.py to i64
  %invariant.gep92.i = getelementptr [4 x i8], ptr %i.kq, i64 %68 ; 2 uses
  br i1 %.not.i126.i, label %._crit_edge.i19.i.i.i.i.i.i.i.us, label %bb.co

._crit_edge.i19.i.i.i.i.i.i.i.us:                 ; preds = %.lr.ph.i.i.i.i.i.i.i, %._crit_edge.i19.i.i.i.i.i.i.i.us
  %.01531.i.i.i.i.i.i.i.us = phi i64 [ %78, %._crit_edge.i19.i.i.i.i.i.i.i.us ], [ %i.px, %.lr.ph.i.i.i.i.i.i.i ] ; 3 uses
  %69 = call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.01531.i.i.i.i.i.i.i.us, i1 true)
  %gep93.i.us = getelementptr [4 x i8], ptr %invariant.gep92.i, i64 %69
  %.pre5.i25.i.i.i.i.i.i.i.us = load i32, ptr %gep93.i.us, align 4, !tbaa !3 ; 2 uses
  %.pre6.i26.i.i.i.i.i.i.i.us = sext i32 %.pre5.i25.i.i.i.i.i.i.i.us to i64
  %70 = trunc i32 %.pre5.i25.i.i.i.i.i.i.i.us to i8
  %71 = and i8 %70, 7
  %72 = shl nuw i8 1, %71
  %73 = lshr i64 %.pre6.i26.i.i.i.i.i.i.i.us, 3
  %74 = getelementptr inbounds nuw i8, ptr %i.kv, i64 %73 ; 2 uses
  %75 = load i8, ptr %74, align 1, !tbaa !33
  %76 = or i8 %75, %72
  store i8 %76, ptr %74, align 1, !tbaa !33
  %77 = add i64 %.01531.i.i.i.i.i.i.i.us, -1
  %78 = and i64 %77, %.01531.i.i.i.i.i.i.i.us     ; 2 uses
  %.not.i60.i.i.i.i.i.i.us = icmp eq i64 %78, 0
  br i1 %.not.i60.i.i.i.i.i.i.us, label %_ZZN8facebook5velox4bits10forEachBitIZNKS0_9functions12_GLOBAL__N_117MapFilterFunction27buildInMapSelectivityVectorERNS0_17SelectivityVectorEN5boost13intrusive_ptrINS0_6BufferEEESB_iRKS6_PKiEUliE_EEvPKmiibT_ENKUliE_clEi.exit.i.i.i.i.i.i, label %._crit_edge.i19.i.i.i.i.i.i.i.us, !llvm.loop !743

bb.cn:                                            ; preds = %.lr.ph.i.i.i.i.i128.i
  %i.pz = shl nsw i32 %i.pu, 6                    ; 2 uses
  %i.qa = add i32 %i.pz, 64
  %i.qb = sext i32 %i.qa to i64                   ; 2 uses
  %.0.off.i.i.i.i.i.i = add i32 %.080.i.i.i.i.i.i, 127
  %.not34.i.i.i.i.i.i.i = icmp ult i32 %.0.off.i.i.i.i.i.i, 64
  br i1 %.not34.i.i.i.i.i.i.i, label %_ZZN8facebook5velox4bits10forEachBitIZNKS0_9functions12_GLOBAL__N_117MapFilterFunction27buildInMapSelectivityVectorERNS0_17SelectivityVectorEN5boost13intrusive_ptrINS0_6BufferEEESB_iRKS6_PKiEUliE_EEvPKmiibT_ENKUliE_clEi.exit.i.i.i.i.i.i, label %.lr.ph33.i.i.i.i.i.i.i

.lr.ph33.i.i.i.i.i.i.i:                           ; preds = %bb.cn
  %i.qc = sext i32 %i.pz to i64                   ; 2 uses
  br i1 %.not.i126.i, label %._crit_edge.i.i54.i.i.i.i.i.i.us, label %.lr.ph33.i.i.i.i.i.i.i.split

._crit_edge.i.i54.i.i.i.i.i.i.us:                 ; preds = %.lr.ph33.i.i.i.i.i.i.i, %._crit_edge.i.i54.i.i.i.i.i.i.us
  %.032.i.i.i.i.i.i.i.us = phi i64 [ %i.ql, %._crit_edge.i.i54.i.i.i.i.i.i.us ], [ %i.qc, %.lr.ph33.i.i.i.i.i.i.i ] ; 2 uses
  %sext28.i.i.i.i.i.i.i.us = shl i64 %.032.i.i.i.i.i.i.i.us, 32
  %i.qd = ashr exact i64 %sext28.i.i.i.i.i.i.i.us, 30
  %.phi.trans.insert4.i.i57.i.i.i.i.i.i.us = getelementptr inbounds i8, ptr %i.kq, i64 %i.qd
  %.pre5.i.i58.i.i.i.i.i.i.us = load i32, ptr %.phi.trans.insert4.i.i57.i.i.i.i.i.i.us, align 4, !tbaa !3 ; 2 uses
  %.pre6.i.i59.i.i.i.i.i.i.us = sext i32 %.pre5.i.i58.i.i.i.i.i.i.us to i64
  %i.qe = trunc i32 %.pre5.i.i58.i.i.i.i.i.i.us to i8
  %i.qf = and i8 %i.qe, 7
  %i.qg = shl nuw i8 1, %i.qf
  %i.qh = lshr i64 %.pre6.i.i59.i.i.i.i.i.i.us, 3
  %i.qi = getelementptr inbounds nuw i8, ptr %i.kv, i64 %i.qh ; 2 uses
  %i.qj = load i8, ptr %i.qi, align 1, !tbaa !33
  %i.qk = or i8 %i.qj, %i.qg
  store i8 %i.qk, ptr %i.qi, align 1, !tbaa !33
  %i.ql = add nuw i64 %.032.i.i.i.i.i.i.i.us, 1   ; 2 uses
  %i.qm = icmp ult i64 %i.ql, %i.qb
  br i1 %i.qm, label %._crit_edge.i.i54.i.i.i.i.i.i.us, label %_ZZN8facebook5velox4bits10forEachBitIZNKS0_9functions12_GLOBAL__N_117MapFilterFunction27buildInMapSelectivityVectorERNS0_17SelectivityVectorEN5boost13intrusive_ptrINS0_6BufferEEESB_iRKS6_PKiEUliE_EEvPKmiibT_ENKUliE_clEi.exit.i.i.i.i.i.i, !llvm.loop !744

.lr.ph33.i.i.i.i.i.i.i.split:                     ; preds = %.lr.ph33.i.i.i.i.i.i.i, %_ZZNK8facebook5velox9functions12_GLOBAL__N_117MapFilterFunction27buildInMapSelectivityVectorERNS0_17SelectivityVectorEN5boost13intrusive_ptrINS0_6BufferEEES9_iRKS4_PKiENKUliE_clEi.exit.i53.i.i.i.i.i.i
  %.032.i.i.i.i.i.i.i = phi i64 [ %i.rb, %_ZZNK8facebook5velox9functions12_GLOBAL__N_117MapFilterFunction27buildInMapSelectivityVectorERNS0_17SelectivityVectorEN5boost13intrusive_ptrINS0_6BufferEEES9_iRKS4_PKiENKUliE_clEi.exit.i53.i.i.i.i.i.i ], [ %i.qc, %.lr.ph33.i.i.i.i.i.i.i ] ; 2 uses
  %sext28.i.i.i.i.i.i.i = shl i64 %.032.i.i.i.i.i.i.i, 32
  %i.qn = ashr exact i64 %sext28.i.i.i.i.i.i.i, 30
  %.phi.trans.insert4.i.i57.i.i.i.i.i.i = getelementptr inbounds i8, ptr %i.kq, i64 %i.qn
  %.pre5.i.i58.i.i.i.i.i.i = load i32, ptr %.phi.trans.insert4.i.i57.i.i.i.i.i.i, align 4, !tbaa !3 ; 2 uses
  %.pre6.i.i59.i.i.i.i.i.i = sext i32 %.pre5.i.i58.i.i.i.i.i.i to i64 ; 3 uses
  %i.qo = lshr i64 %.pre6.i.i59.i.i.i.i.i.i, 6
  %i.qp = getelementptr inbounds nuw [8 x i8], ptr %i.lo, i64 %i.qo
  %i.qq = load i64, ptr %i.qp, align 8, !tbaa !139
  %i.qr = and i64 %.pre6.i.i59.i.i.i.i.i.i, 63
  %i.qs = shl nuw i64 1, %i.qr
  %i.qt = and i64 %i.qq, %i.qs
  %.not.i.i51.i.i.i.i.i.i = icmp eq i64 %i.qt, 0
  br i1 %.not.i.i51.i.i.i.i.i.i, label %_ZZNK8facebook5velox9functions12_GLOBAL__N_117MapFilterFunction27buildInMapSelectivityVectorERNS0_17SelectivityVectorEN5boost13intrusive_ptrINS0_6BufferEEES9_iRKS4_PKiENKUliE_clEi.exit.i53.i.i.i.i.i.i, label %._crit_edge.i.i54.i.i.i.i.i.i

._crit_edge.i.i54.i.i.i.i.i.i:                    ; preds = %.lr.ph33.i.i.i.i.i.i.i.split
  %i.qu = trunc i32 %.pre5.i.i58.i.i.i.i.i.i to i8
  %i.qv = and i8 %i.qu, 7
  %i.qw = shl nuw i8 1, %i.qv
  %i.qx = lshr i64 %.pre6.i.i59.i.i.i.i.i.i, 3
  %i.qy = getelementptr inbounds nuw i8, ptr %i.kv, i64 %i.qx ; 2 uses
  %i.qz = load i8, ptr %i.qy, align 1, !tbaa !33
  %i.ra = or i8 %i.qz, %i.qw
  store i8 %i.ra, ptr %i.qy, align 1, !tbaa !33
  br label %_ZZNK8facebook5velox9functions12_GLOBAL__N_117MapFilterFunction27buildInMapSelectivityVectorERNS0_17SelectivityVectorEN5boost13intrusive_ptrINS0_6BufferEEES9_iRKS4_PKiENKUliE_clEi.exit.i53.i.i.i.i.i.i

_ZZNK8facebook5velox9functions12_GLOBAL__N_117MapFilterFunction27buildInMapSelectivityVectorERNS0_17SelectivityVectorEN5boost13intrusive_ptrINS0_6BufferEEES9_iRKS4_PKiENKUliE_clEi.exit.i53.i.i.i.i.i.i: ; preds = %._crit_edge.i.i54.i.i.i.i.i.i, %.lr.ph33.i.i.i.i.i.i.i.split
  %i.rb = add nuw i64 %.032.i.i.i.i.i.i.i, 1      ; 2 uses
  %i.rc = icmp ult i64 %i.rb, %i.qb
  br i1 %i.rc, label %.lr.ph33.i.i.i.i.i.i.i.split, label %_ZZN8facebook5velox4bits10forEachBitIZNKS0_9functions12_GLOBAL__N_117MapFilterFunction27buildInMapSelectivityVectorERNS0_17SelectivityVectorEN5boost13intrusive_ptrINS0_6BufferEEESB_iRKS6_PKiEUliE_EEvPKmiibT_ENKUliE_clEi.exit.i.i.i.i.i.i, !llvm.loop !744

bb.co:                                            ; preds = %.lr.ph.i.i.i.i.i.i.i, %_ZZNK8facebook5velox9functions12_GLOBAL__N_117MapFilterFunction27buildInMapSelectivityVectorERNS0_17SelectivityVectorEN5boost13intrusive_ptrINS0_6BufferEEES9_iRKS4_PKiENKUliE_clEi.exit27.i.i.i.i.i.i.i
  %.01531.i.i.i.i.i.i.i = phi i64 [ %i.rr, %_ZZNK8facebook5velox9functions12_GLOBAL__N_117MapFilterFunction27buildInMapSelectivityVectorERNS0_17SelectivityVectorEN5boost13intrusive_ptrINS0_6BufferEEES9_iRKS4_PKiENKUliE_clEi.exit27.i.i.i.i.i.i.i ], [ %i.px, %.lr.ph.i.i.i.i.i.i.i ] ; 3 uses
  %79 = call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.01531.i.i.i.i.i.i.i, i1 true)
  %gep93.i = getelementptr [4 x i8], ptr %invariant.gep92.i, i64 %79
  %.pre5.i25.i.i.i.i.i.i.i = load i32, ptr %gep93.i, align 4, !tbaa !3 ; 2 uses
  %.pre6.i26.i.i.i.i.i.i.i = sext i32 %.pre5.i25.i.i.i.i.i.i.i to i64 ; 3 uses
  %i.rd = lshr i64 %.pre6.i26.i.i.i.i.i.i.i, 6
  %i.re = getelementptr inbounds nuw [8 x i8], ptr %i.lo, i64 %i.rd
  %i.rf = load i64, ptr %i.re, align 8, !tbaa !139
  %i.rg = and i64 %.pre6.i26.i.i.i.i.i.i.i, 63
  %i.rh = shl nuw i64 1, %i.rg
  %i.ri = and i64 %i.rf, %i.rh
  %.not.i17.i.i.i.i.i.i.i = icmp eq i64 %i.ri, 0
  br i1 %.not.i17.i.i.i.i.i.i.i, label %_ZZNK8facebook5velox9functions12_GLOBAL__N_117MapFilterFunction27buildInMapSelectivityVectorERNS0_17SelectivityVectorEN5boost13intrusive_ptrINS0_6BufferEEES9_iRKS4_PKiENKUliE_clEi.exit27.i.i.i.i.i.i.i, label %._crit_edge.i19.i.i.i.i.i.i.i

._crit_edge.i19.i.i.i.i.i.i.i:                    ; preds = %bb.co
  %i.rj = trunc i32 %.pre5.i25.i.i.i.i.i.i.i to i8
  %i.rk = and i8 %i.rj, 7
  %i.rl = shl nuw i8 1, %i.rk
  %i.rm = lshr i64 %.pre6.i26.i.i.i.i.i.i.i, 3
  %i.rn = getelementptr inbounds nuw i8, ptr %i.kv, i64 %i.rm ; 2 uses
  %i.ro = load i8, ptr %i.rn, align 1, !tbaa !33
  %i.rp = or i8 %i.ro, %i.rl
  store i8 %i.rp, ptr %i.rn, align 1, !tbaa !33
  br label %_ZZNK8facebook5velox9functions12_GLOBAL__N_117MapFilterFunction27buildInMapSelectivityVectorERNS0_17SelectivityVectorEN5boost13intrusive_ptrINS0_6BufferEEES9_iRKS4_PKiENKUliE_clEi.exit27.i.i.i.i.i.i.i

_ZZNK8facebook5velox9functions12_GLOBAL__N_117MapFilterFunction27buildInMapSelectivityVectorERNS0_17SelectivityVectorEN5boost13intrusive_ptrINS0_6BufferEEES9_iRKS4_PKiENKUliE_clEi.exit27.i.i.i.i.i.i.i: ; preds = %._crit_edge.i19.i.i.i.i.i.i.i, %bb.co
  %i.rq = add i64 %.01531.i.i.i.i.i.i.i, -1
  %i.rr = and i64 %i.rq, %.01531.i.i.i.i.i.i.i    ; 2 uses
  %.not.i60.i.i.i.i.i.i = icmp eq i64 %i.rr, 0
  br i1 %.not.i60.i.i.i.i.i.i, label %_ZZN8facebook5velox4bits10forEachBitIZNKS0_9functions12_GLOBAL__N_117MapFilterFunction27buildInMapSelectivityVectorERNS0_17SelectivityVectorEN5boost13intrusive_ptrINS0_6BufferEEESB_iRKS6_PKiEUliE_EEvPKmiibT_ENKUliE_clEi.exit.i.i.i.i.i.i, label %bb.co, !llvm.loop !743

_ZZN8facebook5velox4bits10forEachBitIZNKS0_9functions12_GLOBAL__N_117MapFilterFunction27buildInMapSelectivityVectorERNS0_17SelectivityVectorEN5boost13intrusive_ptrINS0_6BufferEEESB_iRKS6_PKiEUliE_EEvPKmiibT_ENKUliE_clEi.exit.i.i.i.i.i.i: ; preds = %_ZZNK8facebook5velox9functions12_GLOBAL__N_117MapFilterFunction27buildInMapSelectivityVectorERNS0_17SelectivityVectorEN5boost13intrusive_ptrINS0_6BufferEEES9_iRKS4_PKiENKUliE_clEi.exit.i53.i.i.i.i.i.i, %._crit_edge.i.i54.i.i.i.i.i.i.us, %_ZZNK8facebook5velox9functions12_GLOBAL__N_117MapFilterFunction27buildInMapSelectivityVectorERNS0_17SelectivityVectorEN5boost13intrusive_ptrINS0_6BufferEEES9_iRKS4_PKiENKUliE_clEi.exit27.i.i.i.i.i.i.i, %._crit_edge.i19.i.i.i.i.i.i.i.us, %bb.cn, %.lr.ph.i.i.i.i.i128.i
  %i.rs = add nsw i32 %i.pt, 64                   ; 2 uses
  %.not33.i.i.i.i.i.i = icmp sgt i32 %i.rs, %i.nj
  br i1 %.not33.i.i.i.i.i.i, label %._crit_edge.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i128.i, !llvm.loop !745

bb.cp:                                            ; preds = %._crit_edge.i.i.i.i.i.i
  %i.rt = ashr i32 %i.nf, 6
  %i.ru = and i32 %i.nf, 63
  %i.rv = zext nneg i32 %i.ru to i64
  %notmask.i61.i.i.i.i.i.i = shl nsw i64 -1, %i.rv
  %i.rw = xor i64 %notmask.i61.i.i.i.i.i.i, -1
  %i.rx = sext i32 %i.rt to i64
  %i.ry = getelementptr inbounds [8 x i8], ptr %i.ne, i64 %i.rx
  %i.rz = load i64, ptr %i.ry, align 8, !tbaa !139
  %i.sa = and i64 %i.rz, %i.rw                    ; 2 uses
  %.not.i62.i.i.i.i.i.i = icmp eq i64 %i.sa, 0
  br i1 %.not.i62.i.i.i.i.i.i, label %_ZNK8facebook5velox17SelectivityVector15applyToSelectedIZNKS0_9functions12_GLOBAL__N_117MapFilterFunction27buildInMapSelectivityVectorERS1_N5boost13intrusive_ptrINS0_6BufferEEESA_iRKS1_PKiEUliE_EEvT_.exit.i.i, label %.preheader.i63.i.i.i.i.i.preheader.i

.preheader.i63.i.i.i.i.i.preheader.i:             ; preds = %bb.cp
  %80 = sext i32 %i.nj to i64
  %invariant.gep94.i = getelementptr [4 x i8], ptr %i.kq, i64 %80
  br label %.preheader.i63.i.i.i.i.i.i

.preheader.i63.i.i.i.i.i.i:                       ; preds = %_ZZNK8facebook5velox9functions12_GLOBAL__N_117MapFilterFunction27buildInMapSelectivityVectorERNS0_17SelectivityVectorEN5boost13intrusive_ptrINS0_6BufferEEES9_iRKS4_PKiENKUliE_clEi.exit.i67.i.i.i.i.i.i, %.preheader.i63.i.i.i.i.i.preheader.i
  %.011.i64.i.i.i.i.i.i = phi i64 [ %i.sq, %_ZZNK8facebook5velox9functions12_GLOBAL__N_117MapFilterFunction27buildInMapSelectivityVectorERNS0_17SelectivityVectorEN5boost13intrusive_ptrINS0_6BufferEEES9_iRKS4_PKiENKUliE_clEi.exit.i67.i.i.i.i.i.i ], [ %i.sa, %.preheader.i63.i.i.i.i.i.preheader.i ] ; 3 uses
  %i.sb = call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.011.i64.i.i.i.i.i.i, i1 true)
  %.phi.trans.insert4.i.i73.i.i.i.i.i.i = getelementptr [4 x i8], ptr %invariant.gep94.i, i64 %i.sb
  %.pre5.i.i74.i.i.i.i.i.i = load i32, ptr %.phi.trans.insert4.i.i73.i.i.i.i.i.i, align 4, !tbaa !3 ; 2 uses
  %.pre6.i.i75.i.i.i.i.i.i = sext i32 %.pre5.i.i74.i.i.i.i.i.i to i64 ; 3 uses
  br i1 %.not.i126.i, label %._crit_edge.i.i69.i.i.i.i.i.i, label %bb.cq

bb.cq:                                            ; preds = %.preheader.i63.i.i.i.i.i.i
  %i.sc = lshr i64 %.pre6.i.i75.i.i.i.i.i.i, 6
  %i.sd = getelementptr inbounds nuw [8 x i8], ptr %i.lo, i64 %i.sc
  %i.se = load i64, ptr %i.sd, align 8, !tbaa !139
  %i.sf = and i64 %.pre6.i.i75.i.i.i.i.i.i, 63
  %i.sg = shl nuw i64 1, %i.sf
  %i.sh = and i64 %i.se, %i.sg
  %.not.i.i65.i.i.i.i.i.i = icmp eq i64 %i.sh, 0
  br i1 %.not.i.i65.i.i.i.i.i.i, label %_ZZNK8facebook5velox9functions12_GLOBAL__N_117MapFilterFunction27buildInMapSelectivityVectorERNS0_17SelectivityVectorEN5boost13intrusive_ptrINS0_6BufferEEES9_iRKS4_PKiENKUliE_clEi.exit.i67.i.i.i.i.i.i, label %._crit_edge.i.i69.i.i.i.i.i.i

._crit_edge.i.i69.i.i.i.i.i.i:                    ; preds = %bb.cq, %.preheader.i63.i.i.i.i.i.i
  %i.si = trunc i32 %.pre5.i.i74.i.i.i.i.i.i to i8
  %i.sj = and i8 %i.si, 7
  %i.sk = shl nuw i8 1, %i.sj
  %i.sl = lshr i64 %.pre6.i.i75.i.i.i.i.i.i, 3
  %i.sm = getelementptr inbounds nuw i8, ptr %i.kv, i64 %i.sl ; 2 uses
  %i.sn = load i8, ptr %i.sm, align 1, !tbaa !33
  %i.so = or i8 %i.sn, %i.sk
  store i8 %i.so, ptr %i.sm, align 1, !tbaa !33
  br label %_ZZNK8facebook5velox9functions12_GLOBAL__N_117MapFilterFunction27buildInMapSelectivityVectorERNS0_17SelectivityVectorEN5boost13intrusive_ptrINS0_6BufferEEES9_iRKS4_PKiENKUliE_clEi.exit.i67.i.i.i.i.i.i

_ZZNK8facebook5velox9functions12_GLOBAL__N_117MapFilterFunction27buildInMapSelectivityVectorERNS0_17SelectivityVectorEN5boost13intrusive_ptrINS0_6BufferEEES9_iRKS4_PKiENKUliE_clEi.exit.i67.i.i.i.i.i.i: ; preds = %._crit_edge.i.i69.i.i.i.i.i.i, %bb.cq
  %i.sp = add nsw i64 %.011.i64.i.i.i.i.i.i, -1
  %i.sq = and i64 %i.sp, %.011.i64.i.i.i.i.i.i    ; 2 uses
  %.not10.i68.i.i.i.i.i.i = icmp eq i64 %i.sq, 0
  br i1 %.not10.i68.i.i.i.i.i.i, label %_ZNK8facebook5velox17SelectivityVector15applyToSelectedIZNKS0_9functions12_GLOBAL__N_117MapFilterFunction27buildInMapSelectivityVectorERS1_N5boost13intrusive_ptrINS0_6BufferEEESA_iRKS1_PKiEUliE_EEvT_.exit.i.i, label %.preheader.i63.i.i.i.i.i.i, !llvm.loop !742

_ZNK8facebook5velox17SelectivityVector15applyToSelectedIZNKS0_9functions12_GLOBAL__N_117MapFilterFunction27buildInMapSelectivityVectorERS1_N5boost13intrusive_ptrINS0_6BufferEEESA_iRKS1_PKiEUliE_EEvT_.exit.i.i: ; preds = %_ZZNK8facebook5velox9functions12_GLOBAL__N_117MapFilterFunction27buildInMapSelectivityVectorERNS0_17SelectivityVectorEN5boost13intrusive_ptrINS0_6BufferEEES9_iRKS4_PKiENKUliE_clEi.exit.i67.i.i.i.i.i.i, %_ZZNK8facebook5velox9functions12_GLOBAL__N_117MapFilterFunction27buildInMapSelectivityVectorERNS0_17SelectivityVectorEN5boost13intrusive_ptrINS0_6BufferEEES9_iRKS4_PKiENKUliE_clEi.exit.i.i.i.i.i.i.i, %_ZZNK8facebook5velox9functions12_GLOBAL__N_117MapFilterFunction27buildInMapSelectivityVectorERNS0_17SelectivityVectorEN5boost13intrusive_ptrINS0_6BufferEEES9_iRKS4_PKiENKUliE_clEi.exit.i.i.i, %bb.cp, %._crit_edge.i.i.i.i.i.i, %bb.ch, %bb.cf, %bb.cc
  %i.sr = load ptr, ptr %43, align 8, !tbaa !271  ; 14 uses
  %i.ss = load i32, ptr %i.gd, align 8, !tbaa !326 ; 17 uses
  %.not.i.i.i10.i.i = icmp sgt i32 %i.ss, 0
  br i1 %.not.i.i.i10.i.i, label %bb.cr, label %_ZN8facebook5velox4bits12findFirstBitEPKmii.exit.thread.i.i.i

bb.cr:                                            ; preds = %_ZNK8facebook5velox17SelectivityVector15applyToSelectedIZNKS0_9functions12_GLOBAL__N_117MapFilterFunction27buildInMapSelectivityVectorERS1_N5boost13intrusive_ptrINS0_6BufferEEESA_iRKS1_PKiEUliE_EEvT_.exit.i.i
  %i.st = and i32 %i.ss, 2147483584               ; 6 uses
  %.not3347.i.i.i.i.i = icmp eq i32 %i.st, 0      ; 2 uses
  br i1 %.not3347.i.i.i.i.i, label %._crit_edge.i.i.i.i.i, label %.lr.ph.i.i.preheader.i.i.i

.lr.ph.i.i.preheader.i.i.i:                       ; preds = %bb.cr
  %i.su = add nsw i32 %i.ss, -64
  %i.sv = lshr i32 %i.su, 3
  %i.sw = and i32 %i.sv, 536870904
  %narrow.i.i.i = add nuw nsw i32 %i.sw, 8
  %i.sx = zext nneg i32 %narrow.i.i.i to i64
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.sr, i8 0, i64 %i.sx, i1 false), !tbaa !139
  br label %._crit_edge.i.i.i.i.i

._crit_edge.i.i.i.i.i:                            ; preds = %.lr.ph.i.i.preheader.i.i.i, %bb.cr
  %.not34.i.i.i.i.i = icmp eq i32 %i.ss, %i.st    ; 4 uses
  br i1 %.not34.i.i.i.i.i, label %.thread.i.i, label %bb.cs

.thread.i.i:                                      ; preds = %._crit_edge.i.i.i.i.i
  store i16 256, ptr %i.ge, align 4
  br label %iter.check

bb.cs:                                            ; preds = %._crit_edge.i.i.i.i.i
  %i.sy = lshr i32 %i.ss, 6
  %i.sz = and i32 %i.ss, 63
  %i.ta = zext nneg i32 %i.sz to i64
  %notmask.i37.i.i.i.i.i = shl nsw i64 -1, %i.ta  ; 2 uses
  %i.tb = zext nneg i32 %i.sy to i64              ; 2 uses
  %i.tc = getelementptr inbounds nuw [8 x i8], ptr %i.sr, i64 %i.tb ; 2 uses
  %i.td = load i64, ptr %i.tc, align 8, !tbaa !139
  %i.te = and i64 %i.td, %notmask.i37.i.i.i.i.i
  store i64 %i.te, ptr %i.tc, align 8, !tbaa !139
  store i16 256, ptr %i.ge, align 4
  br i1 %.not3347.i.i.i.i.i, label %._crit_edge.i.i.i12.thread.i.i, label %iter.check

iter.check:                                       ; preds = %bb.cs, %.thread.i.i
  %i.tf = zext nneg i32 %i.st to i64              ; 5 uses
  %i.tg = call i64 @llvm.usub.sat.i64(i64 %i.tf, i64 64) ; 3 uses
  %i.th = lshr exact i64 %i.tg, 6
  %i.ti = add nuw nsw i64 %i.th, 1                ; 5 uses
  %min.iters.check = icmp samesign ult i64 %i.tg, 192
  br i1 %min.iters.check, label %.lr.ph.i.i.i.i.i.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %iter.check
  %scevgep = getelementptr i8, ptr %i.sr, i64 8
  %i.tj = call i64 @llvm.usub.sat.i64(i64 %i.tf, i64 64)
  %i.tk = lshr exact i64 %i.tj, 3                 ; 2 uses
  %scevgep314 = getelementptr i8, ptr %scevgep, i64 %i.tk
  %scevgep315 = getelementptr i8, ptr %i.kv, i64 8
  %scevgep316 = getelementptr i8, ptr %scevgep315, i64 %i.tk
  %bound0 = icmp ult ptr %i.sr, %scevgep316
  %bound1 = icmp ult ptr %i.kv, %scevgep314
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.i.i.i.i.i.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %vector.memcheck
  %min.iters.check318 = icmp samesign ult i64 %i.tg, 960
  br i1 %min.iters.check318, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %n.mod.vf = and i64 %i.ti, 12
  %n.vec = and i64 %i.ti, 67108848                ; 4 uses
  %i.tl = shl nuw nsw i64 %n.vec, 6               ; 2 uses
  %i.tm = or disjoint i64 %i.tl, 64
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.tn = and i64 %index, 288230376151711728      ; 2 uses
  %i.to = getelementptr inbounds nuw [8 x i8], ptr %i.sr, i64 %i.tn ; 5 uses
  %i.tp = getelementptr inbounds nuw i8, ptr %i.to, i64 32 ; 2 uses
  %i.tq = getelementptr inbounds nuw i8, ptr %i.to, i64 64 ; 2 uses
  %i.tr = getelementptr inbounds nuw i8, ptr %i.to, i64 96 ; 2 uses
  %wide.load = load <4 x i64>, ptr %i.to, align 8, !tbaa !139, !alias.scope !746, !noalias !749
  %wide.load319 = load <4 x i64>, ptr %i.tp, align 8, !tbaa !139, !alias.scope !746, !noalias !749
  %wide.load320 = load <4 x i64>, ptr %i.tq, align 8, !tbaa !139, !alias.scope !746, !noalias !749
  %wide.load321 = load <4 x i64>, ptr %i.tr, align 8, !tbaa !139, !alias.scope !746, !noalias !749
  %i.ts = getelementptr inbounds nuw [8 x i8], ptr %i.kv, i64 %i.tn ; 4 uses
  %i.tt = getelementptr inbounds nuw i8, ptr %i.ts, i64 32
  %i.tu = getelementptr inbounds nuw i8, ptr %i.ts, i64 64
  %i.tv = getelementptr inbounds nuw i8, ptr %i.ts, i64 96
  %wide.load322 = load <4 x i64>, ptr %i.ts, align 8, !tbaa !139, !alias.scope !749
  %wide.load323 = load <4 x i64>, ptr %i.tt, align 8, !tbaa !139, !alias.scope !749
  %wide.load324 = load <4 x i64>, ptr %i.tu, align 8, !tbaa !139, !alias.scope !749
  %wide.load325 = load <4 x i64>, ptr %i.tv, align 8, !tbaa !139, !alias.scope !749
  %i.tw = or <4 x i64> %wide.load322, %wide.load
  %i.tx = or <4 x i64> %wide.load323, %wide.load319
  %i.ty = or <4 x i64> %wide.load324, %wide.load320
  %i.tz = or <4 x i64> %wide.load325, %wide.load321
  store <4 x i64> %i.tw, ptr %i.to, align 8, !tbaa !139, !alias.scope !746, !noalias !749
  store <4 x i64> %i.tx, ptr %i.tp, align 8, !tbaa !139, !alias.scope !746, !noalias !749
  store <4 x i64> %i.ty, ptr %i.tq, align 8, !tbaa !139, !alias.scope !746, !noalias !749
  store <4 x i64> %i.tz, ptr %i.tr, align 8, !tbaa !139, !alias.scope !746, !noalias !749
  %index.next = add nuw i64 %index, 16            ; 2 uses
  %i.ua = icmp eq i64 %index.next, %n.vec
  br i1 %i.ua, label %middle.block, label %vector.body, !llvm.loop !751

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.ti, %n.vec
  br i1 %cmp.n, label %._crit_edge.i.i.i12.i.i, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %n.mod.vf, 0
  br i1 %min.epilog.iters.check, label %.lr.ph.i.i.i.i.i.preheader, label %vec.epilog.ph, !prof !561

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec328 = and i64 %i.ti, 67108860             ; 3 uses
  %i.ub = shl nuw nsw i64 %n.vec328, 6            ; 2 uses
  %i.uc = or disjoint i64 %i.ub, 64
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index329 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next332, %vec.epilog.vector.body ] ; 2 uses
  %i.ud = and i64 %index329, 288230376151711740   ; 2 uses
  %i.ue = getelementptr inbounds nuw [8 x i8], ptr %i.sr, i64 %i.ud ; 2 uses
  %wide.load330 = load <4 x i64>, ptr %i.ue, align 8, !tbaa !139, !alias.scope !746, !noalias !749
  %i.uf = getelementptr inbounds nuw [8 x i8], ptr %i.kv, i64 %i.ud
  %wide.load331 = load <4 x i64>, ptr %i.uf, align 8, !tbaa !139, !alias.scope !749
  %i.ug = or <4 x i64> %wide.load331, %wide.load330
  store <4 x i64> %i.ug, ptr %i.ue, align 8, !tbaa !139, !alias.scope !746, !noalias !749
  %index.next332 = add nuw i64 %index329, 4       ; 2 uses
  %i.uh = icmp eq i64 %index.next332, %n.vec328
  br i1 %i.uh, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !752

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n333 = icmp eq i64 %i.ti, %n.vec328
  br i1 %cmp.n333, label %._crit_edge.i.i.i12.i.i, label %.lr.ph.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.preheader:                       ; preds = %vector.memcheck, %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %indvars.iv37.i.i.ph = phi i64 [ 0, %iter.check ], [ 0, %vector.memcheck ], [ %i.tl, %vec.epilog.iter.check ], [ %i.ub, %vec.epilog.middle.block ]
  %indvars.iv.i.i.ph = phi i64 [ 64, %iter.check ], [ 64, %vector.memcheck ], [ %i.tm, %vec.epilog.iter.check ], [ %i.uc, %vec.epilog.middle.block ]
  br label %.lr.ph.i.i.i.i.i

._crit_edge.i.i.i12.i.i:                          ; preds = %.lr.ph.i.i.i.i.i, %vec.epilog.middle.block, %middle.block
  br i1 %.not34.i.i.i.i.i, label %bb.ct, label %._crit_edge.i.i.i12.i.._crit_edge.i.i.i12.thread.i_crit_edge.i

._crit_edge.i.i.i12.i.._crit_edge.i.i.i12.thread.i_crit_edge.i: ; preds = %._crit_edge.i.i.i12.i.i
  %.pre118.i.a = lshr i32 %i.ss, 6
  %.pre120.i.a = and i32 %i.ss, 63
  %.pre122.i = zext nneg i32 %.pre120.i.a to i64
  %.pre124.i = shl nsw i64 -1, %.pre122.i
  %.pre125.i = zext nneg i32 %.pre118.i.a to i64
  br label %._crit_edge.i.i.i12.thread.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %.lr.ph.i.i.i.i.i.preheader, %.lr.ph.i.i.i.i.i
  %indvars.iv37.i.i = phi i64 [ %indvars.iv.next38.i.i, %.lr.ph.i.i.i.i.i ], [ %indvars.iv37.i.i.ph, %.lr.ph.i.i.i.i.i.preheader ] ; 2 uses
  %indvars.iv.i.i = phi i64 [ %indvars.iv.next.i.i, %.lr.ph.i.i.i.i.i ], [ %indvars.iv.i.i.ph, %.lr.ph.i.i.i.i.i.preheader ] ; 2 uses
  %i.ui = lshr exact i64 %indvars.iv37.i.i, 6     ; 2 uses
  %i.uj = getelementptr inbounds nuw [8 x i8], ptr %i.sr, i64 %i.ui ; 2 uses
  %i.uk = load i64, ptr %i.uj, align 8, !tbaa !139
  %i.ul = getelementptr inbounds nuw [8 x i8], ptr %i.kv, i64 %i.ui
  %i.um = load i64, ptr %i.ul, align 8, !tbaa !139
  %i.un = or i64 %i.um, %i.uk
  store i64 %i.un, ptr %i.uj, align 8, !tbaa !139
  %indvars.iv.next.i.i = add nuw nsw i64 %indvars.iv.i.i, 64
  %.not33.i.i.i.not.i.i = icmp samesign ult i64 %indvars.iv.i.i, %i.tf
  %indvars.iv.next38.i.i = add nuw nsw i64 %indvars.iv37.i.i, 64
  br i1 %.not33.i.i.i.not.i.i, label %.lr.ph.i.i.i.i.i, label %._crit_edge.i.i.i12.i.i, !llvm.loop !753

._crit_edge.i.i.i12.thread.i.i:                   ; preds = %._crit_edge.i.i.i12.i.._crit_edge.i.i.i12.thread.i_crit_edge.i, %bb.cs
  %.pre116.pre-phi.i = phi i64 [ %i.tf, %._crit_edge.i.i.i12.i.._crit_edge.i.i.i12.thread.i_crit_edge.i ], [ 0, %bb.cs ]
  %.pre-phi126.i = phi i64 [ %.pre125.i, %._crit_edge.i.i.i12.i.._crit_edge.i.i.i12.thread.i_crit_edge.i ], [ %i.tb, %bb.cs ] ; 2 uses
end_hunk_0
