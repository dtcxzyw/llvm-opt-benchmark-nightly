Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/hermes/original/Mem2Reg?download=true
inline.NumInlined: 2091
inline.NumDeleted: 876
loop-unroll.NumRuntimeUnrolled: 22
loop-unroll.NumUnrolled: 22
begin_hunk_0_@_ZN6hermes7Mem2Reg13runOnFunctionEPNS_8FunctionE:bb.a
bb.aa:                                            ; preds = %_ZN4llvh12DenseMapBaseINS_8DenseMapIPN6hermes14AllocStackInstEPNS2_5ValueENS_12DenseMapInfoIS4_EENS_6detail12DenseMapPairIS4_S6_EEEES4_S6_S8_SB_E15LookupBucketForIS4_EEbRKT_RPSB_.exit, %bb.w
  %i.hz = phi ptr [ %.sink.i.i373, %_ZN4llvh12DenseMapBaseINS_8DenseMapIPN6hermes14AllocStackInstEPNS2_5ValueENS_12DenseMapInfoIS4_EENS_6detail12DenseMapPairIS4_S6_EEEES4_S6_S8_SB_E15LookupBucketForIS4_EEbRKT_RPSB_.exit ], [ %.sink.i.i.i198, %bb.w ] ; 4 uses
  %i.ia = phi i32 [ %.pre.i.i202, %_ZN4llvh12DenseMapBaseINS_8DenseMapIPN6hermes14AllocStackInstEPNS2_5ValueENS_12DenseMapInfoIS4_EENS_6detail12DenseMapPairIS4_S6_EEEES4_S6_S8_SB_E15LookupBucketForIS4_EEbRKT_RPSB_.exit ], [ %i.gs, %bb.w ]
  %i.ib = add i32 %i.ia, 1
  store i32 %i.ib, ptr %i.ee, align 8, !tbaa !72
  %i.ic = load ptr, ptr %i.hz, align 8, !tbaa !71
  %i.id = icmp eq ptr %i.ic, inttoptr (i64 -8 to ptr)
  br i1 %i.id, label %_ZN4llvh12DenseMapBaseINS_8DenseMapIPN6hermes14AllocStackInstEPNS2_5ValueENS_12DenseMapInfoIS4_EENS_6detail12DenseMapPairIS4_S6_EEEES4_S6_S8_SB_E16InsertIntoBucketIS4_JEEEPSB_SF_OT_DpOT0_.exit.i, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.ie = load i32, ptr %i.ef, align 4, !tbaa !73
  %i.if = add i32 %i.ie, -1
  store i32 %i.if, ptr %i.ef, align 4, !tbaa !73
  br label %_ZN4llvh12DenseMapBaseINS_8DenseMapIPN6hermes14AllocStackInstEPNS2_5ValueENS_12DenseMapInfoIS4_EENS_6detail12DenseMapPairIS4_S6_EEEES4_S6_S8_SB_E16InsertIntoBucketIS4_JEEEPSB_SF_OT_DpOT0_.exit.i

_ZN4llvh12DenseMapBaseINS_8DenseMapIPN6hermes14AllocStackInstEPNS2_5ValueENS_12DenseMapInfoIS4_EENS_6detail12DenseMapPairIS4_S6_EEEES4_S6_S8_SB_E16InsertIntoBucketIS4_JEEEPSB_SF_OT_DpOT0_.exit.i: ; preds = %bb.ab, %bb.aa
  store ptr %i.fs, ptr %i.hz, align 8, !tbaa !71
  %i.ig = getelementptr inbounds nuw i8, ptr %i.hz, i64 8
  store ptr null, ptr %i.ig, align 8, !tbaa !75
  br label %_ZN4llvh12DenseMapBaseINS_8DenseMapIPN6hermes14AllocStackInstEPNS2_5ValueENS_12DenseMapInfoIS4_EENS_6detail12DenseMapPairIS4_S6_EEEES4_S6_S8_SB_E16FindAndConstructEOS4_.exit

_ZN4llvh12DenseMapBaseINS_8DenseMapIPN6hermes14AllocStackInstEPNS2_5ValueENS_12DenseMapInfoIS4_EENS_6detail12DenseMapPairIS4_S6_EEEES4_S6_S8_SB_E16FindAndConstructEOS4_.exit: ; preds = %bb.u, %bb.s, %_ZN4llvh12DenseMapBaseINS_8DenseMapIPN6hermes14AllocStackInstEPNS2_5ValueENS_12DenseMapInfoIS4_EENS_6detail12DenseMapPairIS4_S6_EEEES4_S6_S8_SB_E16InsertIntoBucketIS4_JEEEPSB_SF_OT_DpOT0_.exit.i
  %.0.i196 = phi ptr [ %i.hz, %_ZN4llvh12DenseMapBaseINS_8DenseMapIPN6hermes14AllocStackInstEPNS2_5ValueENS_12DenseMapInfoIS4_EENS_6detail12DenseMapPairIS4_S6_EEEES4_S6_S8_SB_E16InsertIntoBucketIS4_JEEEPSB_SF_OT_DpOT0_.exit.i ], [ %i.gd, %bb.s ], [ %i.gp, %bb.u ]
  %i.ih = getelementptr inbounds nuw i8, ptr %.0.i196, i64 8
  store ptr %i.fo, ptr %i.ih, align 8, !tbaa !75
  br label %_ZN4llvh12DenseMapBaseINS_8DenseMapIPN6hermes8VariableEPNS2_5ValueENS_12DenseMapInfoIS4_EENS_6detail12DenseMapPairIS4_S6_EEEES4_S6_S8_SB_E5clearEv.exit.i

.critedge88.i:                                    ; preds = %.lr.ph223.i
  %i.ii = icmp ne i8 %i.fm, 51
  %.not78.i = or i1 %.not197.i, %i.ii
  br i1 %.not78.i, label %.critedge90.i, label %bb.ac

bb.ac:                                            ; preds = %.critedge88.i
  %i.ij = call noundef ptr @_ZNK6hermes11Instruction10getOperandEj(ptr noundef nonnull align 8 dereferenceable(132) %.sroa.0174.0219.i, i32 noundef 1) #10 ; 7 uses
  %i.ik = call noundef ptr @_ZNK6hermes11Instruction10getOperandEj(ptr noundef nonnull align 8 dereferenceable(132) %.sroa.0174.0219.i, i32 noundef 0) #10
  %i.il = load ptr, ptr %19, align 8, !tbaa !78   ; 2 uses
  %i.im = load i32, ptr %i.eh, align 8, !tbaa !79 ; 7 uses
  %i.in = icmp eq i32 %i.im, 0
  br i1 %i.in, label %_ZN4llvh12DenseMapBaseINS_8DenseMapIPN6hermes8VariableEPNS2_5ValueENS_12DenseMapInfoIS4_EENS_6detail12DenseMapPairIS4_S6_EEEES4_S6_S8_SB_E15LookupBucketForIS4_EEbRKT_RPSB_.exit.i, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.io = ptrtoint ptr %i.ij to i64
  %i.ip = trunc i64 %i.io to i32                  ; 2 uses
  %i.iq = lshr i32 %i.ip, 4
  %i.ir = lshr i32 %i.ip, 9
  %i.is = xor i32 %i.iq, %i.ir
  %i.it = add i32 %i.im, -1                       ; 2 uses
  %.02744.i.i.i175 = and i32 %i.is, %i.it         ; 2 uses
  %i.iu = zext nneg i32 %.02744.i.i.i175 to i64
  %i.iv = getelementptr inbounds nuw [16 x i8], ptr %i.il, i64 %i.iu ; 3 uses
  %i.iw = load ptr, ptr %i.iv, align 8, !tbaa !81 ; 2 uses
  %i.ix = icmp eq ptr %i.ij, %i.iw
  br i1 %i.ix, label %_ZN4llvh12DenseMapBaseINS_8DenseMapIPN6hermes8VariableEPNS2_5ValueENS_12DenseMapInfoIS4_EENS_6detail12DenseMapPairIS4_S6_EEEES4_S6_S8_SB_E16FindAndConstructERKS4_.exit, label %.lr.ph.i.i.i176, !prof !37

.lr.ph.i.i.i176:                                  ; preds = %bb.ad, %bb.af
  %i.iy = phi ptr [ %i.ji, %bb.af ], [ %i.iw, %bb.ad ] ; 2 uses
  %i.iz = phi ptr [ %i.jh, %bb.af ], [ %i.iv, %bb.ad ] ; 2 uses
  %.02747.i.i.i177 = phi i32 [ %.027.i.i.i182, %bb.af ], [ %.02744.i.i.i175, %bb.ad ]
  %.046.i.i.i178 = phi i32 [ %i.je, %bb.af ], [ 1, %bb.ad ] ; 2 uses
  %.02945.i.i.i179 = phi ptr [ %spec.select.i.i.i181, %bb.af ], [ null, %bb.ad ] ; 4 uses
  %i.ja = icmp eq ptr %i.iy, inttoptr (i64 -8 to ptr)
  br i1 %i.ja, label %bb.ae, label %bb.af, !prof !29

bb.ae:                                            ; preds = %.lr.ph.i.i.i176
  %.not.i.i.i184 = icmp eq ptr %.02945.i.i.i179, null
  %i.jb = select i1 %.not.i.i.i184, ptr %i.iz, ptr %.02945.i.i.i179
  br label %_ZN4llvh12DenseMapBaseINS_8DenseMapIPN6hermes8VariableEPNS2_5ValueENS_12DenseMapInfoIS4_EENS_6detail12DenseMapPairIS4_S6_EEEES4_S6_S8_SB_E15LookupBucketForIS4_EEbRKT_RPSB_.exit.i

bb.af:                                            ; preds = %.lr.ph.i.i.i176
  %i.jc = icmp eq ptr %i.iy, inttoptr (i64 -16 to ptr)
  %i.jd = icmp eq ptr %.02945.i.i.i179, null
  %or.cond.not.i.i.i180 = select i1 %i.jc, i1 %i.jd, i1 false
  %spec.select.i.i.i181 = select i1 %or.cond.not.i.i.i180, ptr %i.iz, ptr %.02945.i.i.i179
  %i.je = add i32 %.046.i.i.i178, 1
  %i.jf = add i32 %.046.i.i.i178, %.02747.i.i.i177
  %.027.i.i.i182 = and i32 %i.jf, %i.it           ; 2 uses
  %i.jg = zext i32 %.027.i.i.i182 to i64
  %i.jh = getelementptr inbounds nuw [16 x i8], ptr %i.il, i64 %i.jg ; 3 uses
  %i.ji = load ptr, ptr %i.jh, align 8, !tbaa !81 ; 2 uses
  %i.jj = icmp eq ptr %i.ij, %i.ji
  br i1 %i.jj, label %_ZN4llvh12DenseMapBaseINS_8DenseMapIPN6hermes8VariableEPNS2_5ValueENS_12DenseMapInfoIS4_EENS_6detail12DenseMapPairIS4_S6_EEEES4_S6_S8_SB_E16FindAndConstructERKS4_.exit, label %.lr.ph.i.i.i176, !prof !38, !llvm.loop !2

_ZN4llvh12DenseMapBaseINS_8DenseMapIPN6hermes8VariableEPNS2_5ValueENS_12DenseMapInfoIS4_EENS_6detail12DenseMapPairIS4_S6_EEEES4_S6_S8_SB_E15LookupBucketForIS4_EEbRKT_RPSB_.exit.i: ; preds = %bb.ae, %bb.ac
  %.sink.i.i.i185 = phi ptr [ %i.jb, %bb.ae ], [ null, %bb.ac ]
  %i.jk = load i32, ptr %i.ei, align 8, !tbaa !82 ; 3 uses
  %i.jl = shl i32 %i.jk, 2
  %i.jm = add i32 %i.jl, 4
  %i.jn = mul i32 %i.im, 3
  %.not.i.i4.i = icmp ult i32 %i.jm, %i.jn
  br i1 %.not.i.i4.i, label %bb.ah, label %bb.ag, !prof !29

bb.ag:                                            ; preds = %_ZN4llvh12DenseMapBaseINS_8DenseMapIPN6hermes8VariableEPNS2_5ValueENS_12DenseMapInfoIS4_EENS_6detail12DenseMapPairIS4_S6_EEEES4_S6_S8_SB_E15LookupBucketForIS4_EEbRKT_RPSB_.exit.i
  %i.jo = shl i32 %i.im, 1
  br label %.sink.split.i.i.i

bb.ah:                                            ; preds = %_ZN4llvh12DenseMapBaseINS_8DenseMapIPN6hermes8VariableEPNS2_5ValueENS_12DenseMapInfoIS4_EENS_6detail12DenseMapPairIS4_S6_EEEES4_S6_S8_SB_E15LookupBucketForIS4_EEbRKT_RPSB_.exit.i
  %i.jp = load i32, ptr %i.ej, align 4, !tbaa !83
  %.neg.i.i.i = xor i32 %i.jk, -1
  %.neg12.i.i.i = add i32 %i.im, %.neg.i.i.i
  %i.jq = sub i32 %.neg12.i.i.i, %i.jp
  %i.jr = lshr i32 %i.im, 3
  %.not10.i.i.i = icmp ugt i32 %i.jq, %i.jr
  br i1 %.not10.i.i.i, label %bb.al, label %.sink.split.i.i.i, !prof !29

.sink.split.i.i.i:                                ; preds = %bb.ah, %bb.ag
  %.sink.i.i5.i = phi i32 [ %i.jo, %bb.ag ], [ %i.im, %bb.ah ]
  call void @_ZN4llvh8DenseMapIPN6hermes8VariableEPNS1_5ValueENS_12DenseMapInfoIS3_EENS_6detail12DenseMapPairIS3_S5_EEE4growEj(ptr noundef nonnull align 8 dereferenceable(20) %19, i32 noundef %.sink.i.i5.i)
  %i.js = load ptr, ptr %19, align 8, !tbaa !78   ; 2 uses
  %i.jt = load i32, ptr %i.eh, align 8, !tbaa !79 ; 2 uses
  %i.ju = icmp eq i32 %i.jt, 0
  br i1 %i.ju, label %_ZN4llvh12DenseMapBaseINS_8DenseMapIPN6hermes8VariableEPNS2_5ValueENS_12DenseMapInfoIS4_EENS_6detail12DenseMapPairIS4_S6_EEEES4_S6_S8_SB_E15LookupBucketForIS4_EEbRKT_RPSB_.exit, label %bb.ai

bb.ai:                                            ; preds = %.sink.split.i.i.i
  %i.jv = ptrtoint ptr %i.ij to i64
  %i.jw = trunc i64 %i.jv to i32                  ; 2 uses
  %i.jx = lshr i32 %i.jw, 4
  %i.jy = lshr i32 %i.jw, 9
  %i.jz = xor i32 %i.jx, %i.jy
  %i.ka = add i32 %i.jt, -1                       ; 2 uses
  %.02744.i.i = and i32 %i.ka, %i.jz              ; 2 uses
  %i.kb = zext nneg i32 %.02744.i.i to i64
  %i.kc = getelementptr inbounds nuw [16 x i8], ptr %i.js, i64 %i.kb ; 3 uses
  %i.kd = load ptr, ptr %i.kc, align 8, !tbaa !81 ; 2 uses
  %i.ke = icmp eq ptr %i.ij, %i.kd
  br i1 %i.ke, label %_ZN4llvh12DenseMapBaseINS_8DenseMapIPN6hermes8VariableEPNS2_5ValueENS_12DenseMapInfoIS4_EENS_6detail12DenseMapPairIS4_S6_EEEES4_S6_S8_SB_E15LookupBucketForIS4_EEbRKT_RPSB_.exit, label %.lr.ph.i.i363, !prof !37

.lr.ph.i.i363:                                    ; preds = %bb.ai, %bb.ak
  %i.kf = phi ptr [ %i.kp, %bb.ak ], [ %i.kd, %bb.ai ] ; 2 uses
  %i.kg = phi ptr [ %i.ko, %bb.ak ], [ %i.kc, %bb.ai ] ; 2 uses
  %.02747.i.i = phi i32 [ %.027.i.i, %bb.ak ], [ %.02744.i.i, %bb.ai ]
  %.046.i.i = phi i32 [ %i.kl, %bb.ak ], [ 1, %bb.ai ] ; 2 uses
  %.02945.i.i = phi ptr [ %spec.select.i.i, %bb.ak ], [ null, %bb.ai ] ; 4 uses
  %i.kh = icmp eq ptr %i.kf, inttoptr (i64 -8 to ptr)
  br i1 %i.kh, label %bb.aj, label %bb.ak, !prof !29

bb.aj:                                            ; preds = %.lr.ph.i.i363
  %.not.i.i364 = icmp eq ptr %.02945.i.i, null
  %i.ki = select i1 %.not.i.i364, ptr %i.kg, ptr %.02945.i.i
  br label %_ZN4llvh12DenseMapBaseINS_8DenseMapIPN6hermes8VariableEPNS2_5ValueENS_12DenseMapInfoIS4_EENS_6detail12DenseMapPairIS4_S6_EEEES4_S6_S8_SB_E15LookupBucketForIS4_EEbRKT_RPSB_.exit

bb.ak:                                            ; preds = %.lr.ph.i.i363
  %i.kj = icmp eq ptr %i.kf, inttoptr (i64 -16 to ptr)
  %i.kk = icmp eq ptr %.02945.i.i, null
  %or.cond.not.i.i = select i1 %i.kj, i1 %i.kk, i1 false
  %spec.select.i.i = select i1 %or.cond.not.i.i, ptr %i.kg, ptr %.02945.i.i
  %i.kl = add i32 %.046.i.i, 1
  %i.km = add i32 %.046.i.i, %.02747.i.i
  %.027.i.i = and i32 %i.km, %i.ka                ; 2 uses
  %i.kn = zext i32 %.027.i.i to i64
  %i.ko = getelementptr inbounds nuw [16 x i8], ptr %i.js, i64 %i.kn ; 3 uses
  %i.kp = load ptr, ptr %i.ko, align 8, !tbaa !81 ; 2 uses
  %i.kq = icmp eq ptr %i.ij, %i.kp
  br i1 %i.kq, label %_ZN4llvh12DenseMapBaseINS_8DenseMapIPN6hermes8VariableEPNS2_5ValueENS_12DenseMapInfoIS4_EENS_6detail12DenseMapPairIS4_S6_EEEES4_S6_S8_SB_E15LookupBucketForIS4_EEbRKT_RPSB_.exit, label %.lr.ph.i.i363, !prof !38, !llvm.loop !2

_ZN4llvh12DenseMapBaseINS_8DenseMapIPN6hermes8VariableEPNS2_5ValueENS_12DenseMapInfoIS4_EENS_6detail12DenseMapPairIS4_S6_EEEES4_S6_S8_SB_E15LookupBucketForIS4_EEbRKT_RPSB_.exit: ; preds = %bb.ak, %.sink.split.i.i.i, %bb.ai, %bb.aj
  %.sink.i.i = phi ptr [ %i.ki, %bb.aj ], [ null, %.sink.split.i.i.i ], [ %i.kc, %bb.ai ], [ %i.ko, %bb.ak ]
  %.pre.i.i186 = load i32, ptr %i.ei, align 8, !tbaa !82
  br label %bb.al

bb.al:                                            ; preds = %_ZN4llvh12DenseMapBaseINS_8DenseMapIPN6hermes8VariableEPNS2_5ValueENS_12DenseMapInfoIS4_EENS_6detail12DenseMapPairIS4_S6_EEEES4_S6_S8_SB_E15LookupBucketForIS4_EEbRKT_RPSB_.exit, %bb.ah
  %i.kr = phi ptr [ %.sink.i.i, %_ZN4llvh12DenseMapBaseINS_8DenseMapIPN6hermes8VariableEPNS2_5ValueENS_12DenseMapInfoIS4_EENS_6detail12DenseMapPairIS4_S6_EEEES4_S6_S8_SB_E15LookupBucketForIS4_EEbRKT_RPSB_.exit ], [ %.sink.i.i.i185, %bb.ah ] ; 4 uses
  %i.ks = phi i32 [ %.pre.i.i186, %_ZN4llvh12DenseMapBaseINS_8DenseMapIPN6hermes8VariableEPNS2_5ValueENS_12DenseMapInfoIS4_EENS_6detail12DenseMapPairIS4_S6_EEEES4_S6_S8_SB_E15LookupBucketForIS4_EEbRKT_RPSB_.exit ], [ %i.jk, %bb.ah ]
  %i.kt = add i32 %i.ks, 1
  store i32 %i.kt, ptr %i.ei, align 8, !tbaa !82
  %i.ku = load ptr, ptr %i.kr, align 8, !tbaa !81
  %i.kv = icmp eq ptr %i.ku, inttoptr (i64 -8 to ptr)
  br i1 %i.kv, label %_ZN4llvh12DenseMapBaseINS_8DenseMapIPN6hermes8VariableEPNS2_5ValueENS_12DenseMapInfoIS4_EENS_6detail12DenseMapPairIS4_S6_EEEES4_S6_S8_SB_E16InsertIntoBucketIRKS4_JEEEPSB_SH_OT_DpOT0_.exit.i, label %bb.am

bb.am:                                            ; preds = %bb.al
  %i.kw = load i32, ptr %i.ej, align 4, !tbaa !83
  %i.kx = add i32 %i.kw, -1
  store i32 %i.kx, ptr %i.ej, align 4, !tbaa !83
  br label %_ZN4llvh12DenseMapBaseINS_8DenseMapIPN6hermes8VariableEPNS2_5ValueENS_12DenseMapInfoIS4_EENS_6detail12DenseMapPairIS4_S6_EEEES4_S6_S8_SB_E16InsertIntoBucketIRKS4_JEEEPSB_SH_OT_DpOT0_.exit.i

_ZN4llvh12DenseMapBaseINS_8DenseMapIPN6hermes8VariableEPNS2_5ValueENS_12DenseMapInfoIS4_EENS_6detail12DenseMapPairIS4_S6_EEEES4_S6_S8_SB_E16InsertIntoBucketIRKS4_JEEEPSB_SH_OT_DpOT0_.exit.i: ; preds = %bb.am, %bb.al
  store ptr %i.ij, ptr %i.kr, align 8, !tbaa !81
  %i.ky = getelementptr inbounds nuw i8, ptr %i.kr, i64 8
  store ptr null, ptr %i.ky, align 8, !tbaa !75
  br label %_ZN4llvh12DenseMapBaseINS_8DenseMapIPN6hermes8VariableEPNS2_5ValueENS_12DenseMapInfoIS4_EENS_6detail12DenseMapPairIS4_S6_EEEES4_S6_S8_SB_E16FindAndConstructERKS4_.exit

_ZN4llvh12DenseMapBaseINS_8DenseMapIPN6hermes8VariableEPNS2_5ValueENS_12DenseMapInfoIS4_EENS_6detail12DenseMapPairIS4_S6_EEEES4_S6_S8_SB_E16FindAndConstructERKS4_.exit: ; preds = %bb.af, %bb.ad, %_ZN4llvh12DenseMapBaseINS_8DenseMapIPN6hermes8VariableEPNS2_5ValueENS_12DenseMapInfoIS4_EENS_6detail12DenseMapPairIS4_S6_EEEES4_S6_S8_SB_E16InsertIntoBucketIRKS4_JEEEPSB_SH_OT_DpOT0_.exit.i
  %.0.i = phi ptr [ %i.kr, %_ZN4llvh12DenseMapBaseINS_8DenseMapIPN6hermes8VariableEPNS2_5ValueENS_12DenseMapInfoIS4_EENS_6detail12DenseMapPairIS4_S6_EEEES4_S6_S8_SB_E16InsertIntoBucketIRKS4_JEEEPSB_SH_OT_DpOT0_.exit.i ], [ %i.iv, %bb.ad ], [ %i.jh, %bb.af ]
  %i.kz = getelementptr inbounds nuw i8, ptr %.0.i, i64 8
  store ptr %i.ik, ptr %i.kz, align 8, !tbaa !75
  br label %_ZN4llvh12DenseMapBaseINS_8DenseMapIPN6hermes8VariableEPNS2_5ValueENS_12DenseMapInfoIS4_EENS_6detail12DenseMapPairIS4_S6_EEEES4_S6_S8_SB_E5clearEv.exit.i

.critedge90.i:                                    ; preds = %.critedge88.i
  %i.la = call noundef i32 @_ZN6hermes11Instruction20getDerivedSideEffectEv(ptr noundef nonnull align 8 dereferenceable(132) %.sroa.0174.0219.i) #10
  %i.lb = icmp sgt i32 %i.la, 1
  br i1 %i.lb, label %bb.an, label %.loopexit.i

bb.an:                                            ; preds = %.critedge90.i
  %i.lc = call noundef i32 @_ZNK6hermes11Instruction14getNumOperandsEv(ptr noundef nonnull align 8 dereferenceable(132) %.sroa.0174.0219.i) #10 ; 2 uses
  %.not79211.i = icmp eq i32 %i.lc, 0
  br i1 %.not79211.i, label %.loopexit.i, label %.lr.ph.i33

.lr.ph.i33:                                       ; preds = %bb.an, %_ZN4llvh12DenseMapBaseINS_8DenseMapIPN6hermes14AllocStackInstEPNS2_5ValueENS_12DenseMapInfoIS4_EENS_6detail12DenseMapPairIS4_S6_EEEES4_S6_S8_SB_E5eraseERKS4_.exit.i
  %.0212.i = phi i32 [ %i.md, %_ZN4llvh12DenseMapBaseINS_8DenseMapIPN6hermes14AllocStackInstEPNS2_5ValueENS_12DenseMapInfoIS4_EENS_6detail12DenseMapPairIS4_S6_EEEES4_S6_S8_SB_E5eraseERKS4_.exit.i ], [ 0, %bb.an ] ; 2 uses
  %i.ld = call noundef ptr @_ZNK6hermes11Instruction10getOperandEj(ptr noundef nonnull align 8 dereferenceable(132) %.sroa.0174.0219.i, i32 noundef %.0212.i) #10 ; 2 uses
  %i.le = load i8, ptr %i.ld, align 8, !tbaa !65
  %.not199.i = icmp eq i8 %i.le, 52
  %i.lf = getelementptr inbounds i8, ptr %i.ld, i64 -16 ; 3 uses
  br i1 %.not199.i, label %bb.ao, label %_ZN4llvh12DenseMapBaseINS_8DenseMapIPN6hermes14AllocStackInstEPNS2_5ValueENS_12DenseMapInfoIS4_EENS_6detail12DenseMapPairIS4_S6_EEEES4_S6_S8_SB_E5eraseERKS4_.exit.i

bb.ao:                                            ; preds = %.lr.ph.i33
  %i.lg = load ptr, ptr %21, align 8, !tbaa !68   ; 2 uses
  %i.lh = load i32, ptr %i.ed, align 8, !tbaa !69 ; 2 uses
  %i.li = icmp eq i32 %i.lh, 0
  br i1 %i.li, label %_ZN4llvh12DenseMapBaseINS_8DenseMapIPN6hermes14AllocStackInstEPNS2_5ValueENS_12DenseMapInfoIS4_EENS_6detail12DenseMapPairIS4_S6_EEEES4_S6_S8_SB_E5eraseERKS4_.exit.i, label %bb.ap

bb.ap:                                            ; preds = %bb.ao
  %i.lj = ptrtoint ptr %i.lf to i64
  %i.lk = trunc i64 %i.lj to i32                  ; 2 uses
  %i.ll = lshr i32 %i.lk, 4
  %i.lm = lshr i32 %i.lk, 9
  %i.ln = xor i32 %i.ll, %i.lm
  %i.lo = add i32 %i.lh, -1                       ; 2 uses
  %.02744.i.i.i.i34 = and i32 %i.lo, %i.ln        ; 2 uses
  %i.lp = zext nneg i32 %.02744.i.i.i.i34 to i64
  %i.lq = getelementptr inbounds nuw [16 x i8], ptr %i.lg, i64 %i.lp ; 2 uses
  %i.lr = load ptr, ptr %i.lq, align 8, !tbaa !71 ; 2 uses
  %i.ls = icmp eq ptr %i.lf, %i.lr
  br i1 %i.ls, label %.loopexit.i.i, label %.lr.ph.i.i.i.i35, !prof !37

.lr.ph.i.i.i.i35:                                 ; preds = %bb.ap, %bb.aq
  %i.lt = phi ptr [ %i.lz, %bb.aq ], [ %i.lr, %bb.ap ]
  %.02747.i.i.i.i36 = phi i32 [ %.027.i.i.i.i38, %bb.aq ], [ %.02744.i.i.i.i34, %bb.ap ]
  %.046.i.i.i.i37 = phi i32 [ %i.lv, %bb.aq ], [ 1, %bb.ap ] ; 2 uses
  %i.lu = icmp eq ptr %i.lt, inttoptr (i64 -8 to ptr)
  br i1 %i.lu, label %_ZN4llvh12DenseMapBaseINS_8DenseMapIPN6hermes14AllocStackInstEPNS2_5ValueENS_12DenseMapInfoIS4_EENS_6detail12DenseMapPairIS4_S6_EEEES4_S6_S8_SB_E5eraseERKS4_.exit.i, label %bb.aq, !prof !29

bb.aq:                                            ; preds = %.lr.ph.i.i.i.i35
  %i.lv = add i32 %.046.i.i.i.i37, 1
  %i.lw = add i32 %.046.i.i.i.i37, %.02747.i.i.i.i36
  %.027.i.i.i.i38 = and i32 %i.lw, %i.lo          ; 2 uses
  %i.lx = zext i32 %.027.i.i.i.i38 to i64
  %i.ly = getelementptr inbounds nuw [16 x i8], ptr %i.lg, i64 %i.lx ; 2 uses
  %i.lz = load ptr, ptr %i.ly, align 8, !tbaa !71 ; 2 uses
  %i.ma = icmp eq ptr %i.lf, %i.lz
  br i1 %i.ma, label %.loopexit.i.i, label %.lr.ph.i.i.i.i35, !prof !38, !llvm.loop !1

.loopexit.i.i:                                    ; preds = %bb.aq, %bb.ap
  %.sink.i.i.ph.i.i = phi ptr [ %i.lq, %bb.ap ], [ %i.ly, %bb.aq ]
  store ptr inttoptr (i64 -16 to ptr), ptr %.sink.i.i.ph.i.i, align 8, !tbaa !71
  %i.mb = load <2 x i32>, ptr %i.ee, align 8, !tbaa !19
  %i.mc = add <2 x i32> %i.mb, <i32 -1, i32 1>
  store <2 x i32> %i.mc, ptr %i.ee, align 8, !tbaa !19
  br label %_ZN4llvh12DenseMapBaseINS_8DenseMapIPN6hermes14AllocStackInstEPNS2_5ValueENS_12DenseMapInfoIS4_EENS_6detail12DenseMapPairIS4_S6_EEEES4_S6_S8_SB_E5eraseERKS4_.exit.i

_ZN4llvh12DenseMapBaseINS_8DenseMapIPN6hermes14AllocStackInstEPNS2_5ValueENS_12DenseMapInfoIS4_EENS_6detail12DenseMapPairIS4_S6_EEEES4_S6_S8_SB_E5eraseERKS4_.exit.i: ; preds = %.lr.ph.i.i.i.i35, %.loopexit.i.i, %bb.ao, %.lr.ph.i33
  %i.md = add nuw i32 %.0212.i, 1                 ; 2 uses
  %.not79.i = icmp eq i32 %i.md, %i.lc
  br i1 %.not79.i, label %.loopexit.i, label %.lr.ph.i33, !llvm.loop !196

.loopexit.i:                                      ; preds = %_ZN4llvh12DenseMapBaseINS_8DenseMapIPN6hermes14AllocStackInstEPNS2_5ValueENS_12DenseMapInfoIS4_EENS_6detail12DenseMapPairIS4_S6_EEEES4_S6_S8_SB_E5eraseERKS4_.exit.i, %bb.an, %.critedge90.i
  %i.me = load i8, ptr %i.fl, align 8, !tbaa !65  ; 2 uses
  switch i8 %i.me, label %.thread186.i [
    i8 22, label %bb.ar
    i8 49, label %bb.ax
  ]

bb.ar:                                            ; preds = %.loopexit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #10
  %i.mf = call noundef ptr @_ZNK6hermes11Instruction10getOperandEj(ptr noundef nonnull align 8 dereferenceable(132) %.sroa.0174.0219.i, i32 noundef 0) #10 ; 2 uses
  %i.mg = icmp eq ptr %i.mf, null
  %i.mh = getelementptr inbounds i8, ptr %i.mf, i64 -16
  %i.mi = select i1 %i.mg, ptr null, ptr %i.mh    ; 4 uses
  store ptr %i.mi, ptr %i.c, align 8, !tbaa !71
  %i.mj = load ptr, ptr %21, align 8, !tbaa !68   ; 4 uses
  %i.mk = load i32, ptr %i.ed, align 8, !tbaa !69 ; 4 uses
  %i.ml = icmp eq i32 %i.mk, 0
  br i1 %i.ml, label %_ZN4llvh12DenseMapBaseINS_8DenseMapIPN6hermes14AllocStackInstEPNS2_5ValueENS_12DenseMapInfoIS4_EENS_6detail12DenseMapPairIS4_S6_EEEES4_S6_S8_SB_E15LookupBucketForIPKS3_EEbRKT_RPSB_.exit.i.i, label %bb.as

bb.as:                                            ; preds = %bb.ar
  %i.mm = ptrtoint ptr %i.mi to i64
  %i.mn = trunc i64 %i.mm to i32                  ; 2 uses
  %i.mo = lshr i32 %i.mn, 4
  %i.mp = lshr i32 %i.mn, 9
  %i.mq = xor i32 %i.mo, %i.mp
  %i.mr = add i32 %i.mk, -1                       ; 2 uses
  %.02744.i.i.i94.i = and i32 %i.mq, %i.mr        ; 2 uses
  %i.ms = zext nneg i32 %.02744.i.i.i94.i to i64
  %i.mt = getelementptr inbounds nuw [16 x i8], ptr %i.mj, i64 %i.ms ; 2 uses
  %i.mu = load ptr, ptr %i.mt, align 8, !tbaa !71 ; 2 uses
  %i.mv = icmp eq ptr %i.mi, %i.mu
  br i1 %i.mv, label %_ZN4llvh12DenseMapBaseINS_8DenseMapIPN6hermes14AllocStackInstEPNS2_5ValueENS_12DenseMapInfoIS4_EENS_6detail12DenseMapPairIS4_S6_EEEES4_S6_S8_SB_E4findEPKS3_.exit.i, label %.lr.ph.i.i.i95.i, !prof !37

.lr.ph.i.i.i95.i:                                 ; preds = %bb.as, %bb.at
  %i.mw = phi ptr [ %i.nc, %bb.at ], [ %i.mu, %bb.as ]
  %.02747.i.i.i96.i = phi i32 [ %.027.i.i.i98.i, %bb.at ], [ %.02744.i.i.i94.i, %bb.as ]
  %.046.i.i.i97.i = phi i32 [ %i.my, %bb.at ], [ 1, %bb.as ] ; 2 uses
  %i.mx = icmp eq ptr %i.mw, inttoptr (i64 -8 to ptr)
  br i1 %i.mx, label %_ZN4llvh12DenseMapBaseINS_8DenseMapIPN6hermes14AllocStackInstEPNS2_5ValueENS_12DenseMapInfoIS4_EENS_6detail12DenseMapPairIS4_S6_EEEES4_S6_S8_SB_E15LookupBucketForIPKS3_EEbRKT_RPSB_.exit.i.i, label %bb.at, !prof !29

bb.at:                                            ; preds = %.lr.ph.i.i.i95.i
  %i.my = add i32 %.046.i.i.i97.i, 1
  %i.mz = add i32 %.046.i.i.i97.i, %.02747.i.i.i96.i
  %.027.i.i.i98.i = and i32 %i.mz, %i.mr          ; 2 uses
  %i.na = zext i32 %.027.i.i.i98.i to i64
  %i.nb = getelementptr inbounds nuw [16 x i8], ptr %i.mj, i64 %i.na ; 2 uses
  %i.nc = load ptr, ptr %i.nb, align 8, !tbaa !71 ; 2 uses
  %i.nd = icmp eq ptr %i.mi, %i.nc
  br i1 %i.nd, label %_ZN4llvh12DenseMapBaseINS_8DenseMapIPN6hermes14AllocStackInstEPNS2_5ValueENS_12DenseMapInfoIS4_EENS_6detail12DenseMapPairIS4_S6_EEEES4_S6_S8_SB_E4findEPKS3_.exit.i, label %.lr.ph.i.i.i95.i, !prof !38, !llvm.loop !197

_ZN4llvh12DenseMapBaseINS_8DenseMapIPN6hermes14AllocStackInstEPNS2_5ValueENS_12DenseMapInfoIS4_EENS_6detail12DenseMapPairIS4_S6_EEEES4_S6_S8_SB_E15LookupBucketForIPKS3_EEbRKT_RPSB_.exit.i.i: ; preds = %.lr.ph.i.i.i95.i, %bb.ar
  %i.ne = zext i32 %i.mk to i64
  %i.nf = getelementptr inbounds nuw [16 x i8], ptr %i.mj, i64 %i.ne
  br label %_ZN4llvh12DenseMapBaseINS_8DenseMapIPN6hermes14AllocStackInstEPNS2_5ValueENS_12DenseMapInfoIS4_EENS_6detail12DenseMapPairIS4_S6_EEEES4_S6_S8_SB_E4findEPKS3_.exit.i

_ZN4llvh12DenseMapBaseINS_8DenseMapIPN6hermes14AllocStackInstEPNS2_5ValueENS_12DenseMapInfoIS4_EENS_6detail12DenseMapPairIS4_S6_EEEES4_S6_S8_SB_E4findEPKS3_.exit.i: ; preds = %bb.at, %_ZN4llvh12DenseMapBaseINS_8DenseMapIPN6hermes14AllocStackInstEPNS2_5ValueENS_12DenseMapInfoIS4_EENS_6detail12DenseMapPairIS4_S6_EEEES4_S6_S8_SB_E15LookupBucketForIPKS3_EEbRKT_RPSB_.exit.i.i, %bb.as
  %.sink.i.i.ph.pn.i.i = phi ptr [ %i.nf, %_ZN4llvh12DenseMapBaseINS_8DenseMapIPN6hermes14AllocStackInstEPNS2_5ValueENS_12DenseMapInfoIS4_EENS_6detail12DenseMapPairIS4_S6_EEEES4_S6_S8_SB_E15LookupBucketForIPKS3_EEbRKT_RPSB_.exit.i.i ], [ %i.mt, %bb.as ], [ %i.nb, %bb.at ] ; 2 uses
  %i.ng = zext i32 %i.mk to i64
  %i.nh = getelementptr inbounds nuw [16 x i8], ptr %i.mj, i64 %i.ng
  %i.ni = icmp eq ptr %.sink.i.i.ph.pn.i.i, %i.nh
  br i1 %i.ni, label %bb.aw, label %bb.au

bb.au:                                            ; preds = %_ZN4llvh12DenseMapBaseINS_8DenseMapIPN6hermes14AllocStackInstEPNS2_5ValueENS_12DenseMapInfoIS4_EENS_6detail12DenseMapPairIS4_S6_EEEES4_S6_S8_SB_E4findEPKS3_.exit.i
  %i.nj = getelementptr inbounds nuw i8, ptr %.sink.i.i.ph.pn.i.i, i64 8
  %i.nk = load ptr, ptr %i.nj, align 8, !tbaa !247
  call void @_ZN6hermes5Value18replaceAllUsesWithEPS0_(ptr noundef nonnull align 8 dereferenceable(40) %i.fl, ptr noundef %i.nk) #10
  %i.nl = load i32, ptr %i.eb, align 8, !tbaa !26 ; 2 uses
  %i.nm = load i32, ptr %i.ec, align 4, !tbaa !27
  %.not.i.i.i29 = icmp ult i32 %i.nl, %i.nm
  br i1 %.not.i.i.i29, label %.thread180.i, label %bb.av, !prof !29

bb.av:                                            ; preds = %bb.au
  call void @_ZN4llvh15SmallVectorBase8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(80) %24, ptr noundef nonnull %i.ea, i64 noundef 0, i64 noundef 8) #10
  %.pre.i.i.i30 = load i32, ptr %i.eb, align 8, !tbaa !26
  br label %.thread180.i

.thread180.i:                                     ; preds = %bb.av, %bb.au
  %i.nn = phi i32 [ %.pre.i.i.i30, %bb.av ], [ %i.nl, %bb.au ]
  %i.no = load ptr, ptr %24, align 8, !tbaa !25
  %i.np = zext i32 %i.nn to i64
  %i.nq = getelementptr inbounds nuw [8 x i8], ptr %i.no, i64 %i.np
  %i.nr = ptrtoint ptr %.sroa.0174.0219.i to i64
  store i64 %i.nr, ptr %i.nq, align 1
  %i.ns = load i32, ptr %i.eb, align 8, !tbaa !26
  %i.nt = add i32 %i.ns, 1
  store i32 %i.nt, ptr %i.eb, align 8, !tbaa !26
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #10
  br label %_ZN4llvh12DenseMapBaseINS_8DenseMapIPN6hermes8VariableEPNS2_5ValueENS_12DenseMapInfoIS4_EENS_6detail12DenseMapPairIS4_S6_EEEES4_S6_S8_SB_E5clearEv.exit.i

bb.aw:                                            ; preds = %_ZN4llvh12DenseMapBaseINS_8DenseMapIPN6hermes14AllocStackInstEPNS2_5ValueENS_12DenseMapInfoIS4_EENS_6detail12DenseMapPairIS4_S6_EEEES4_S6_S8_SB_E4findEPKS3_.exit.i
  %i.nu = call noundef nonnull align 8 dereferenceable(16) ptr @_ZN4llvh12DenseMapBaseINS_8DenseMapIPN6hermes14AllocStackInstEPNS2_5ValueENS_12DenseMapInfoIS4_EENS_6detail12DenseMapPairIS4_S6_EEEES4_S6_S8_SB_E16FindAndConstructERKS4_(ptr noundef nonnull align 1 dereferenceable(1) %21, ptr noundef nonnull align 8 dereferenceable(8) %i.c)
  %i.nv = getelementptr inbounds nuw i8, ptr %i.nu, i64 8
  store ptr %i.fl, ptr %i.nv, align 8, !tbaa !75
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #10
  br label %_ZN4llvh12DenseMapBaseINS_8DenseMapIPN6hermes8VariableEPNS2_5ValueENS_12DenseMapInfoIS4_EENS_6detail12DenseMapPairIS4_S6_EEEES4_S6_S8_SB_E5clearEv.exit.i

bb.ax:                                            ; preds = %.loopexit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #10
  %i.nw = call noundef ptr @_ZNK6hermes11Instruction10getOperandEj(ptr noundef nonnull align 8 dereferenceable(132) %.sroa.0174.0219.i, i32 noundef 0) #10 ; 7 uses
  store ptr %i.nw, ptr %i.d, align 8, !tbaa !81
  %i.nx = load ptr, ptr %20, align 8, !tbaa !78   ; 4 uses
  %i.ny = load i32, ptr %i.eg, align 8, !tbaa !79 ; 4 uses
  %i.nz = icmp eq i32 %i.ny, 0
  br i1 %i.nz, label %_ZN4llvh12DenseMapBaseINS_8DenseMapIPN6hermes8VariableEPNS2_5ValueENS_12DenseMapInfoIS4_EENS_6detail12DenseMapPairIS4_S6_EEEES4_S6_S8_SB_E15LookupBucketForIPKS3_EEbRKT_RPSB_.exit.i.i, label %bb.ay

bb.ay:                                            ; preds = %bb.ax
  %i.oa = ptrtoint ptr %i.nw to i64
  %i.ob = trunc i64 %i.oa to i32                  ; 2 uses
  %i.oc = lshr i32 %i.ob, 4
  %i.od = lshr i32 %i.ob, 9
  %i.oe = xor i32 %i.oc, %i.od
  %i.of = add i32 %i.ny, -1                       ; 2 uses
  %.02744.i.i.i102.i = and i32 %i.of, %i.oe       ; 2 uses
  %i.og = zext nneg i32 %.02744.i.i.i102.i to i64
  %i.oh = getelementptr inbounds nuw [16 x i8], ptr %i.nx, i64 %i.og ; 2 uses
  %i.oi = load ptr, ptr %i.oh, align 8, !tbaa !81 ; 2 uses
  %i.oj = icmp eq ptr %i.nw, %i.oi
  br i1 %i.oj, label %_ZN4llvh12DenseMapBaseINS_8DenseMapIPN6hermes8VariableEPNS2_5ValueENS_12DenseMapInfoIS4_EENS_6detail12DenseMapPairIS4_S6_EEEES4_S6_S8_SB_E4findEPKS3_.exit.i, label %.lr.ph.i.i.i103.i, !prof !37

.lr.ph.i.i.i103.i:                                ; preds = %bb.ay, %bb.az
  %i.ok = phi ptr [ %i.oq, %bb.az ], [ %i.oi, %bb.ay ]
  %.02747.i.i.i104.i = phi i32 [ %.027.i.i.i106.i, %bb.az ], [ %.02744.i.i.i102.i, %bb.ay ]
  %.046.i.i.i105.i = phi i32 [ %i.om, %bb.az ], [ 1, %bb.ay ] ; 2 uses
  %i.ol = icmp eq ptr %i.ok, inttoptr (i64 -8 to ptr)
  br i1 %i.ol, label %_ZN4llvh12DenseMapBaseINS_8DenseMapIPN6hermes8VariableEPNS2_5ValueENS_12DenseMapInfoIS4_EENS_6detail12DenseMapPairIS4_S6_EEEES4_S6_S8_SB_E15LookupBucketForIPKS3_EEbRKT_RPSB_.exit.i.i, label %bb.az, !prof !29

bb.az:                                            ; preds = %.lr.ph.i.i.i103.i
  %i.om = add i32 %.046.i.i.i105.i, 1
  %i.on = add i32 %.046.i.i.i105.i, %.02747.i.i.i104.i
  %.027.i.i.i106.i = and i32 %i.on, %i.of         ; 2 uses
  %i.oo = zext i32 %.027.i.i.i106.i to i64
  %i.op = getelementptr inbounds nuw [16 x i8], ptr %i.nx, i64 %i.oo ; 2 uses
  %i.oq = load ptr, ptr %i.op, align 8, !tbaa !81 ; 2 uses
  %i.or = icmp eq ptr %i.nw, %i.oq
  br i1 %i.or, label %_ZN4llvh12DenseMapBaseINS_8DenseMapIPN6hermes8VariableEPNS2_5ValueENS_12DenseMapInfoIS4_EENS_6detail12DenseMapPairIS4_S6_EEEES4_S6_S8_SB_E4findEPKS3_.exit.i, label %.lr.ph.i.i.i103.i, !prof !38, !llvm.loop !198

_ZN4llvh12DenseMapBaseINS_8DenseMapIPN6hermes8VariableEPNS2_5ValueENS_12DenseMapInfoIS4_EENS_6detail12DenseMapPairIS4_S6_EEEES4_S6_S8_SB_E15LookupBucketForIPKS3_EEbRKT_RPSB_.exit.i.i: ; preds = %.lr.ph.i.i.i103.i, %bb.ax
  %i.os = zext i32 %i.ny to i64
  %i.ot = getelementptr inbounds nuw [16 x i8], ptr %i.nx, i64 %i.os
  br label %_ZN4llvh12DenseMapBaseINS_8DenseMapIPN6hermes8VariableEPNS2_5ValueENS_12DenseMapInfoIS4_EENS_6detail12DenseMapPairIS4_S6_EEEES4_S6_S8_SB_E4findEPKS3_.exit.i

_ZN4llvh12DenseMapBaseINS_8DenseMapIPN6hermes8VariableEPNS2_5ValueENS_12DenseMapInfoIS4_EENS_6detail12DenseMapPairIS4_S6_EEEES4_S6_S8_SB_E4findEPKS3_.exit.i: ; preds = %bb.az, %_ZN4llvh12DenseMapBaseINS_8DenseMapIPN6hermes8VariableEPNS2_5ValueENS_12DenseMapInfoIS4_EENS_6detail12DenseMapPairIS4_S6_EEEES4_S6_S8_SB_E15LookupBucketForIPKS3_EEbRKT_RPSB_.exit.i.i, %bb.ay
  %.sink.i.i.ph.pn.i109.i = phi ptr [ %i.ot, %_ZN4llvh12DenseMapBaseINS_8DenseMapIPN6hermes8VariableEPNS2_5ValueENS_12DenseMapInfoIS4_EENS_6detail12DenseMapPairIS4_S6_EEEES4_S6_S8_SB_E15LookupBucketForIPKS3_EEbRKT_RPSB_.exit.i.i ], [ %i.oh, %bb.ay ], [ %i.op, %bb.az ] ; 2 uses
  %i.ou = zext i32 %i.ny to i64
  %i.ov = getelementptr inbounds nuw [16 x i8], ptr %i.nx, i64 %i.ou
  %.not203.i = icmp eq ptr %.sink.i.i.ph.pn.i109.i, %i.ov
  br i1 %.not203.i, label %.critedge.i, label %bb.ba

bb.ba:                                            ; preds = %_ZN4llvh12DenseMapBaseINS_8DenseMapIPN6hermes8VariableEPNS2_5ValueENS_12DenseMapInfoIS4_EENS_6detail12DenseMapPairIS4_S6_EEEES4_S6_S8_SB_E4findEPKS3_.exit.i
  %i.ow = getelementptr inbounds nuw i8, ptr %i.nw, i64 56
  %i.ox = load ptr, ptr %i.ow, align 8, !tbaa !89
  %i.oy = getelementptr inbounds nuw i8, ptr %i.ox, i64 144
  %i.oz = load ptr, ptr %i.oy, align 8, !tbaa !106
  %i.pa = getelementptr inbounds nuw i8, ptr %.sroa.0174.0219.i, i64 56
  %i.pb = load ptr, ptr %i.pa, align 8, !tbaa !118
  %i.pc = getelementptr inbounds nuw i8, ptr %i.pb, i64 72
  %i.pd = load ptr, ptr %i.pc, align 8, !tbaa !62
  %.not82.i = icmp eq ptr %i.oz, %i.pd
  br i1 %.not82.i, label %.critedge.i, label %bb.bb

bb.bb:                                            ; preds = %bb.ba
  %i.pe = getelementptr inbounds nuw i8, ptr %.sink.i.i.ph.pn.i109.i, i64 8
  %i.pf = load ptr, ptr %i.pe, align 8, !tbaa !249
  call void @_ZN6hermes5Value18replaceAllUsesWithEPS0_(ptr noundef nonnull align 8 dereferenceable(40) %i.fl, ptr noundef %i.pf) #10
  %i.pg = load i32, ptr %i.eb, align 8, !tbaa !26 ; 2 uses
  %i.ph = load i32, ptr %i.ec, align 4, !tbaa !27
  %.not.i.i115.i = icmp ult i32 %i.pg, %i.ph
  br i1 %.not.i.i115.i, label %.thread189.i, label %.thread189.sink.split.i, !prof !29

.critedge.i:                                      ; preds = %bb.ba, %_ZN4llvh12DenseMapBaseINS_8DenseMapIPN6hermes8VariableEPNS2_5ValueENS_12DenseMapInfoIS4_EENS_6detail12DenseMapPairIS4_S6_EEEES4_S6_S8_SB_E4findEPKS3_.exit.i
  %i.pi = call noundef nonnull align 8 dereferenceable(32) ptr @_ZNK6hermes5Value8getUsersEv(ptr noundef nonnull align 8 dereferenceable(40) %i.nw) #10 ; 2 uses
  %i.pj = load ptr, ptr %i.pi, align 8, !tbaa !25 ; 2 uses
  %i.pk = getelementptr inbounds nuw i8, ptr %i.pi, i64 8
  %i.pl = load i32, ptr %i.pk, align 8, !tbaa !26 ; 2 uses
  %i.pm = zext i32 %i.pl to i64
  %.idx.i118.i = shl nuw nsw i64 %i.pm, 3
  %i.pn = getelementptr inbounds nuw i8, ptr %i.pj, i64 %.idx.i118.i
  %.not37.i.i = icmp eq i32 %i.pl, 0
  br i1 %.not37.i.i, label %_ZL20getSingleInitializerPN6hermes8VariableE.exit.thread.i, label %.lr.ph.i119.i

.lr.ph.i119.i:                                    ; preds = %.critedge.i
  %i.po = getelementptr inbounds nuw i8, ptr %i.nw, i64 56
  br label %bb.bc

bb.bc:                                            ; preds = %.thread.i.i, %.lr.ph.i119.i
end_hunk_0
