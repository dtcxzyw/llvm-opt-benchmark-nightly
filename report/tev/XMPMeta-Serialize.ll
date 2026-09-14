Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/tev/original/XMPMeta-Serialize?download=true
inline.NumInlined: 581
inline.NumDeleted: 138
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0_@_ZL28SerializeCompactRDFElemPropsPK8XMP_NodeRNSt3__112basic_stringIcNS2_11char_traitsIcEENS2_9allocatorIcEEEEPKcSB_i:bb.a
  br i1 %i.ho, label %bb.v, label %bb.w

bb.v:                                             ; preds = %bb.u
  %i.hp = call noundef nonnull align 8 dereferenceable(24) ptr @_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE6appendEPKc(ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull @.str.33) ; 0 uses
  br label %.critedge.sink.split

bb.w:                                             ; preds = %bb.u
  call void @_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE9push_backEc(ptr noundef nonnull align 8 dereferenceable(24) %1, i8 noundef signext 62)
  call fastcc void @_ZL15AppendNodeValueRNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEERKS5_b(ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(24) %i.hg, i1 noundef zeroext false)
  br label %.loopexit

bb.x:                                             ; preds = %._crit_edge239.thread
  %i.hq = and i32 %i.al, 512
  %.not193 = icmp eq i32 %i.hq, 0
  br i1 %.not193, label %bb.ac, label %bb.y

bb.y:                                             ; preds = %bb.x
  call void @_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE9push_backEc(ptr noundef nonnull align 8 dereferenceable(24) %1, i8 noundef signext 62)
  %i.hr = call noundef nonnull align 8 dereferenceable(24) ptr @_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE6appendEPKc(ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef %2) ; 0 uses
  %i.hs = getelementptr inbounds nuw i8, ptr %i.t, i64 72 ; 2 uses
  %i.ht = getelementptr inbounds nuw i8, ptr %i.t, i64 80 ; 2 uses
  %i.hu = load ptr, ptr %i.ht, align 8, !tbaa !26
  %i.hv = load ptr, ptr %i.hs, align 8, !tbaa !27
  %i.hw = ptrtoint ptr %i.hu to i64
  %i.hx = ptrtoint ptr %i.hv to i64
  %i.hy = sub i64 %i.hw, %i.hx
  %i.hz = and i64 %i.hy, 34359738360
  %i.ia = icmp eq i64 %i.hz, 0
  br i1 %i.p, label %.lr.ph.i, label %._crit_edge.i

._crit_edge.i:                                    ; preds = %.lr.ph.i, %bb.y
  %i.ib = call noundef nonnull align 8 dereferenceable(24) ptr @_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE6appendEPKc(ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull @.str.62) ; 0 uses
  %i.ic = and i32 %i.al, 2048
  %.not23.i = icmp eq i32 %i.ic, 0
  %i.id = and i32 %i.al, 1024
  %.not24.i = icmp eq i32 %i.id, 0
  %.str.66..str.65.i = select i1 %.not24.i, ptr @.str.66, ptr @.str.65
  %.str.65.sink.i = select i1 %.not23.i, ptr %.str.66..str.65.i, ptr @.str.64 ; 2 uses
  %i.ie = call noundef nonnull align 8 dereferenceable(24) ptr @_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE6appendEPKc(ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull %.str.65.sink.i) ; 0 uses
  br i1 %i.ia, label %bb.z, label %_ZL15EmitRDFArrayTagjRNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEEPKcS8_iib.exit

.lr.ph.i:                                         ; preds = %bb.y, %.lr.ph.i
  %.025.i = phi i32 [ %i.ig, %.lr.ph.i ], [ %i.o, %bb.y ] ; 2 uses
  %i.if = call noundef nonnull align 8 dereferenceable(24) ptr @_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE6appendEPKc(ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef %3) ; 0 uses
  %i.ig = add nsw i32 %.025.i, -1
  %i.ih = icmp samesign ugt i32 %.025.i, 1
  br i1 %i.ih, label %.lr.ph.i, label %._crit_edge.i, !llvm.loop !2

bb.z:                                             ; preds = %._crit_edge.i
  call void @_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE9push_backEc(ptr noundef nonnull align 8 dereferenceable(24) %1, i8 noundef signext 47)
  br label %_ZL15EmitRDFArrayTagjRNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEEPKcS8_iib.exit

_ZL15EmitRDFArrayTagjRNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEEPKcS8_iib.exit: ; preds = %._crit_edge.i, %bb.z
  call void @_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE9push_backEc(ptr noundef nonnull align 8 dereferenceable(24) %1, i8 noundef signext 62)
  %i.ii = call noundef nonnull align 8 dereferenceable(24) ptr @_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE6appendEPKc(ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef %2) ; 0 uses
  %i.ij = load i32, ptr %i.ak, align 8, !tbaa !37
  %i.ik = and i32 %i.ij, 4096
  %.not195 = icmp eq i32 %i.ik, 0
  br i1 %.not195, label %bb.ab, label %bb.aa

bb.aa:                                            ; preds = %_ZL15EmitRDFArrayTagjRNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEEPKcS8_iib.exit
  call void @_Z18NormalizeLangArrayP8XMP_Node(ptr noundef nonnull %i.t)
  br label %bb.ab

bb.ab:                                            ; preds = %bb.aa, %_ZL15EmitRDFArrayTagjRNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEEPKcS8_iib.exit
  call fastcc void @_ZL28SerializeCompactRDFElemPropsPK8XMP_NodeRNSt3__112basic_stringIcNS2_11char_traitsIcEENS2_9allocatorIcEEEEPKcSB_i(ptr noundef nonnull %i.t, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef %2, ptr noundef %3, i32 noundef %i.q)
  %i.il = load ptr, ptr %i.ht, align 8, !tbaa !26
  %i.im = load ptr, ptr %i.hs, align 8, !tbaa !27
  %i.in = ptrtoint ptr %i.il to i64
  %i.io = ptrtoint ptr %i.im to i64
  %i.ip = sub i64 %i.in, %i.io
  %i.iq = and i64 %i.ip, 34359738360
  %i.ir = icmp eq i64 %i.iq, 0
  br i1 %i.ir, label %.critedge200, label %.preheader.i

.preheader.i:                                     ; preds = %bb.ab
  br i1 %i.p, label %.lr.ph.i209, label %._crit_edge.i204

._crit_edge.i204:                                 ; preds = %.lr.ph.i209, %.preheader.i
  %i.is = call noundef nonnull align 8 dereferenceable(24) ptr @_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE6appendEPKc(ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull @.str.63) ; 0 uses
  %i.it = call noundef nonnull align 8 dereferenceable(24) ptr @_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE6appendEPKc(ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull %.str.65.sink.i) ; 0 uses
  call void @_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE9push_backEc(ptr noundef nonnull align 8 dereferenceable(24) %1, i8 noundef signext 62)
  %i.iu = call noundef nonnull align 8 dereferenceable(24) ptr @_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE6appendEPKc(ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef %2) ; 0 uses
  br label %.critedge200

.lr.ph.i209:                                      ; preds = %.preheader.i, %.lr.ph.i209
  %.025.i210 = phi i32 [ %i.iw, %.lr.ph.i209 ], [ %i.o, %.preheader.i ] ; 2 uses
  %i.iv = call noundef nonnull align 8 dereferenceable(24) ptr @_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE6appendEPKc(ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef %3) ; 0 uses
  %i.iw = add nsw i32 %.025.i210, -1
  %i.ix = icmp samesign ugt i32 %.025.i210, 1
  br i1 %i.ix, label %.lr.ph.i209, label %._crit_edge.i204, !llvm.loop !2

bb.ac:                                            ; preds = %bb.x
  %i.iy = getelementptr inbounds nuw i8, ptr %i.t, i64 72
  %i.iz = getelementptr inbounds nuw i8, ptr %i.t, i64 80
  %i.ja = load ptr, ptr %i.iz, align 8, !tbaa !26 ; 2 uses
  %i.jb = load ptr, ptr %i.iy, align 8, !tbaa !27 ; 3 uses
  %i.jc = ptrtoint ptr %i.ja to i64
  %i.jd = ptrtoint ptr %i.jb to i64
  %i.je = sub i64 %i.jc, %i.jd
  %i.jf = ashr exact i64 %i.je, 3
  %.not194241 = icmp eq ptr %i.ja, %i.jb
  br i1 %.not194241, label %.thread296, label %.lr.ph246

.lr.ph246:                                        ; preds = %bb.ac, %bb.ag
  %.0244 = phi i64 [ %i.ka, %bb.ag ], [ 0, %bb.ac ] ; 2 uses
  %.0170243 = phi i8 [ %.1, %bb.ag ], [ 0, %bb.ac ]
  %.0171242 = phi i8 [ %.1172, %bb.ag ], [ 0, %bb.ac ]
  %i.jg = getelementptr inbounds nuw [8 x i8], ptr %i.jb, i64 %.0244
  %i.jh = load ptr, ptr %i.jg, align 8, !tbaa !29 ; 6 uses
  %i.ji = getelementptr inbounds nuw i8, ptr %i.jh, i64 16
  %i.jj = load i8, ptr %i.ji, align 8
  %i.jk = trunc i8 %i.jj to i1
  %i.jl = getelementptr inbounds nuw i8, ptr %i.jh, i64 32
  %i.jm = load ptr, ptr %i.jl, align 8
  %i.jn = getelementptr inbounds nuw i8, ptr %i.jh, i64 17
  %.pn.i.i212 = select i1 %i.jk, ptr %i.jm, ptr %i.jn
  %i.jo = load i8, ptr %.pn.i.i212, align 1, !tbaa !18
  %i.jp = icmp eq i8 %i.jo, 91
  br i1 %i.jp, label %_ZL16CanBeRDFAttrPropPK8XMP_Node.exit216.thread, label %bb.ad

bb.ad:                                            ; preds = %.lr.ph246
  %i.jq = getelementptr inbounds nuw i8, ptr %i.jh, i64 96
  %i.jr = load ptr, ptr %i.jq, align 8, !tbaa !27
  %i.js = getelementptr inbounds nuw i8, ptr %i.jh, i64 104
  %i.jt = load ptr, ptr %i.js, align 8, !tbaa !26
  %i.ju = icmp eq ptr %i.jr, %i.jt
  br i1 %i.ju, label %bb.ae, label %_ZL16CanBeRDFAttrPropPK8XMP_Node.exit216.thread

bb.ae:                                            ; preds = %bb.ad
  %i.jv = getelementptr inbounds nuw i8, ptr %i.jh, i64 8
  %i.jw = load i32, ptr %i.jv, align 8, !tbaa !37
  %i.jx = and i32 %i.jw, 7938
  %or.cond225 = icmp eq i32 %i.jx, 0
  br i1 %or.cond225, label %bb.af, label %_ZL16CanBeRDFAttrPropPK8XMP_Node.exit216.thread

bb.af:                                            ; preds = %bb.ae
  %i.jy = trunc nuw i8 %.0170243 to i1
  br i1 %i.jy, label %.thread, label %bb.ag

_ZL16CanBeRDFAttrPropPK8XMP_Node.exit216.thread:  ; preds = %bb.ae, %bb.ad, %.lr.ph246
  %i.jz = trunc nuw i8 %.0171242 to i1
  br i1 %i.jz, label %.thread, label %bb.ag

bb.ag:                                            ; preds = %_ZL16CanBeRDFAttrPropPK8XMP_Node.exit216.thread, %bb.af
  %.1172 = phi i8 [ 1, %bb.af ], [ 0, %_ZL16CanBeRDFAttrPropPK8XMP_Node.exit216.thread ] ; 2 uses
  %.1 = phi i8 [ 0, %bb.af ], [ 1, %_ZL16CanBeRDFAttrPropPK8XMP_Node.exit216.thread ] ; 2 uses
  %i.ka = add i64 %.0244, 1                       ; 2 uses
  %.not194 = icmp eq i64 %i.ka, %i.jf
  br i1 %.not194, label %.thread, label %.lr.ph246, !llvm.loop !72

.thread:                                          ; preds = %bb.ag, %bb.af, %_ZL16CanBeRDFAttrPropPK8XMP_Node.exit216.thread
  %.3174.ph = phi i8 [ %.1172, %bb.ag ], [ 1, %_ZL16CanBeRDFAttrPropPK8XMP_Node.exit216.thread ], [ 1, %bb.af ]
  %.3.ph = phi i8 [ %.1, %bb.ag ], [ 1, %_ZL16CanBeRDFAttrPropPK8XMP_Node.exit216.thread ], [ 1, %bb.af ] ; 2 uses
  %i.kb = trunc nuw i8 %.3174.ph to i1
  %i.kc = and i8 %.0182.lcssa291, %.3.ph
  %or.cond.not = icmp eq i8 %i.kc, 0
  br i1 %or.cond.not, label %bb.ai, label %bb.ah

bb.ah:                                            ; preds = %.thread
  %i.kd = call ptr @__cxa_allocate_exception(i64 24) #17 ; 4 uses
  store i32 202, ptr %i.kd, align 8, !tbaa !15
  %i.ke = getelementptr inbounds nuw i8, ptr %i.kd, i64 8
  store ptr @.str.50, ptr %i.ke, align 8, !tbaa !16
  %i.kf = getelementptr inbounds nuw i8, ptr %i.kd, i64 16
  store i8 0, ptr %i.kf, align 8, !tbaa !17
  call void @__cxa_throw(ptr nonnull %i.kd, ptr nonnull @_ZTI9XMP_Error, ptr null) #18
  unreachable

.thread296:                                       ; preds = %bb.ac
  %i.kg = call noundef nonnull align 8 dereferenceable(24) ptr @_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE6appendEPKc(ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull @.str.51) ; 0 uses
  br label %.critedge.sink.split

bb.ai:                                            ; preds = %.thread
  %i.kh = trunc nuw i8 %.3.ph to i1
  br i1 %i.kh, label %bb.ak, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  %i.ki = call fastcc noundef zeroext i1 @_ZL28SerializeCompactRDFAttrPropsPK8XMP_NodeRNSt3__112basic_stringIcNS2_11char_traitsIcEENS2_9allocatorIcEEEEPKcSB_i(ptr noundef %i.t, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef %2, ptr noundef %3, i32 noundef %i.o) ; 0 uses
  %i.kj = call noundef nonnull align 8 dereferenceable(24) ptr @_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE6appendEPKc(ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull @.str.33) ; 0 uses
  br label %.critedge.sink.split

bb.ak:                                            ; preds = %bb.ai
  br i1 %i.kb, label %bb.am, label %bb.al

bb.al:                                            ; preds = %bb.ak
  %i.kk = call noundef nonnull align 8 dereferenceable(24) ptr @_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE6appendEPKc(ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull @.str.47) ; 0 uses
  %i.kl = call noundef nonnull align 8 dereferenceable(24) ptr @_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE6appendEPKc(ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef %2) ; 0 uses
  call fastcc void @_ZL28SerializeCompactRDFElemPropsPK8XMP_NodeRNSt3__112basic_stringIcNS2_11char_traitsIcEENS2_9allocatorIcEEEEPKcSB_i(ptr noundef %i.t, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef %2, ptr noundef %3, i32 noundef %i.o)
  br label %.critedge200

bb.am:                                            ; preds = %bb.ak
  call void @_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE9push_backEc(ptr noundef nonnull align 8 dereferenceable(24) %1, i8 noundef signext 62)
  %i.km = call noundef nonnull align 8 dereferenceable(24) ptr @_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE6appendEPKc(ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef %2) ; 0 uses
  br i1 %i.p, label %.lr.ph256, label %._crit_edge261.critedge

.lr.ph256:                                        ; preds = %bb.am, %.lr.ph256
  %.1176254 = phi i32 [ %i.ko, %.lr.ph256 ], [ %i.o, %bb.am ] ; 2 uses
  %i.kn = call noundef nonnull align 8 dereferenceable(24) ptr @_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE6appendEPKc(ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef %3) ; 0 uses
  %i.ko = add nsw i32 %.1176254, -1
  %6 = icmp samesign ugt i32 %.1176254, 1
  br i1 %6, label %.lr.ph256, label %._crit_edge257, !llvm.loop !73

._crit_edge257:                                   ; preds = %.lr.ph256
  %i.kp = call noundef nonnull align 8 dereferenceable(24) ptr @_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE6appendEPKc(ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull @.str.52) ; 0 uses
  %i.kq = call fastcc noundef zeroext i1 @_ZL28SerializeCompactRDFAttrPropsPK8XMP_NodeRNSt3__112basic_stringIcNS2_11char_traitsIcEENS2_9allocatorIcEEEEPKcSB_i(ptr noundef %i.t, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef %2, ptr noundef %3, i32 noundef %i.q) ; 0 uses
  %i.kr = call noundef nonnull align 8 dereferenceable(24) ptr @_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE6appendEPKc(ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull @.str.23) ; 0 uses
  %i.ks = call noundef nonnull align 8 dereferenceable(24) ptr @_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE6appendEPKc(ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef %2) ; 0 uses
  call fastcc void @_ZL28SerializeCompactRDFElemPropsPK8XMP_NodeRNSt3__112basic_stringIcNS2_11char_traitsIcEENS2_9allocatorIcEEEEPKcSB_i(ptr noundef %i.t, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef %2, ptr noundef %3, i32 noundef %i.o)
  br label %.lr.ph260

.lr.ph260:                                        ; preds = %._crit_edge257, %.lr.ph260
  %.2177258 = phi i32 [ %i.ku, %.lr.ph260 ], [ %i.o, %._crit_edge257 ] ; 2 uses
  %i.kt = call noundef nonnull align 8 dereferenceable(24) ptr @_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE6appendEPKc(ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef %3) ; 0 uses
  %i.ku = add nsw i32 %.2177258, -1
  %7 = icmp samesign ugt i32 %.2177258, 1
  br i1 %7, label %.lr.ph260, label %._crit_edge261, !llvm.loop !74

._crit_edge261.critedge:                          ; preds = %bb.am
  %i.kv = call noundef nonnull align 8 dereferenceable(24) ptr @_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE6appendEPKc(ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull @.str.52) ; 0 uses
  %i.kw = call fastcc noundef zeroext i1 @_ZL28SerializeCompactRDFAttrPropsPK8XMP_NodeRNSt3__112basic_stringIcNS2_11char_traitsIcEENS2_9allocatorIcEEEEPKcSB_i(ptr noundef %i.t, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef %2, ptr noundef %3, i32 noundef %i.q) ; 0 uses
  %i.kx = call noundef nonnull align 8 dereferenceable(24) ptr @_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE6appendEPKc(ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull @.str.23) ; 0 uses
  %i.ky = call noundef nonnull align 8 dereferenceable(24) ptr @_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE6appendEPKc(ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef %2) ; 0 uses
  call fastcc void @_ZL28SerializeCompactRDFElemPropsPK8XMP_NodeRNSt3__112basic_stringIcNS2_11char_traitsIcEENS2_9allocatorIcEEEEPKcSB_i(ptr noundef %i.t, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef %2, ptr noundef %3, i32 noundef %i.o)
  br label %._crit_edge261

._crit_edge261:                                   ; preds = %.lr.ph260, %._crit_edge261.critedge
  %i.kz = call noundef nonnull align 8 dereferenceable(24) ptr @_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE6appendEPKc(ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull @.str.28) ; 0 uses
  %i.la = call noundef nonnull align 8 dereferenceable(24) ptr @_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE6appendEPKc(ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef %2) ; 0 uses
  br label %.critedge200

.critedge200:                                     ; preds = %.lr.ph264, %bb.r, %._crit_edge.i204, %bb.ab, %._crit_edge261, %bb.al
  br i1 %i.j, label %.lr.ph266, label %.loopexit

.lr.ph266:                                        ; preds = %.critedge200, %.lr.ph266
  %.3178265 = phi i32 [ %i.lc, %.lr.ph266 ], [ %4, %.critedge200 ] ; 2 uses
  %i.lb = call noundef nonnull align 8 dereferenceable(24) ptr @_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE6appendEPKc(ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef %3) ; 0 uses
  %i.lc = add nsw i32 %.3178265, -1
  %i.ld = icmp samesign ugt i32 %.3178265, 1
  br i1 %i.ld, label %.lr.ph266, label %.loopexit, !llvm.loop !75

.loopexit:                                        ; preds = %.lr.ph266, %.critedge200, %bb.w
  %i.le = call noundef nonnull align 8 dereferenceable(24) ptr @_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE6appendEPKc(ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull @.str.53) ; 0 uses
  %i.lf = call noundef nonnull align 8 dereferenceable(24) ptr @_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE6appendEPKc(ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull %spec.store.select) ; 0 uses
  call void @_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE9push_backEc(ptr noundef nonnull align 8 dereferenceable(24) %1, i8 noundef signext 62)
  br label %.critedge.sink.split

.critedge.sink.split:                             ; preds = %bb.t, %bb.v, %.thread296, %bb.aj, %.loopexit
  %i.lg = call noundef nonnull align 8 dereferenceable(24) ptr @_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE6appendEPKc(ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef %2) ; 0 uses
  br label %.critedge

.critedge:                                        ; preds = %.critedge.sink.split, %bb.d
  %i.lh = add i64 %.0191268, 1                    ; 2 uses
  %.not = icmp eq i64 %i.lh, %i.i
  br i1 %.not, label %._crit_edge271, label %bb.b, !llvm.loop !76
}

; Function Attrs: mustprogress uwtable
define internal fastcc void @_ZL21DeclareUsedNamespacesPK8XMP_NodeRNSt3__112basic_stringIcNS2_11char_traitsIcEENS2_9allocatorIcEEEES9_PKcSB_i(ptr noundef %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef %3, ptr noundef %4, i32 noundef range(i32 -2147483644, -2147483648) %5) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load i32, ptr %i.a, align 8, !tbaa !37   ; 2 uses
  %.not = icmp sgt i32 %i.b, -1
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.d = load i8, ptr %i.c, align 8
  %i.e = trunc i8 %i.d to i1
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.g = load ptr, ptr %i.f, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 41
  %i.i = select i1 %i.e, ptr %i.g, ptr %i.h
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.k = load i8, ptr %i.j, align 8
  %i.l = trunc i8 %i.k to i1
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.n = load ptr, ptr %i.m, align 8
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 17
  %i.p = select i1 %i.l, ptr %i.n, ptr %i.o
  tail call fastcc void @_ZL19DeclareOneNamespacePKcS0_RNSt3__112basic_stringIcNS1_11char_traitsIcEENS1_9allocatorIcEEEES8_S0_S0_i(ptr noundef %i.i, ptr noundef %i.p, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef %3, ptr noundef %4, i32 noundef %5)
  br label %.loopexit

bb.c:                                             ; preds = %bb.a
  %i.q = and i32 %i.b, 256
  %.not52 = icmp eq i32 %i.q, 0
  br i1 %.not52, label %.loopexit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !26   ; 2 uses
  %i.u = load ptr, ptr %i.r, align 8, !tbaa !27   ; 2 uses
  %.not60 = icmp eq ptr %i.t, %i.u
  br i1 %.not60, label %.loopexit, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.d
  %i.v = ptrtoint ptr %i.t to i64
  %i.w = ptrtoint ptr %i.u to i64
  %i.x = sub i64 %i.v, %i.w
  %i.y = ashr exact i64 %i.x, 3
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.lr.ph
  %.053 = phi i64 [ %i.ad, %.lr.ph ], [ 0, %.lr.ph.preheader ] ; 2 uses
  %i.z = load ptr, ptr %i.r, align 8, !tbaa !27
  %i.aa = getelementptr inbounds nuw [8 x i8], ptr %i.z, i64 %.053
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !29
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 16
  tail call fastcc void @_ZL20DeclareElemNamespaceRKNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEERS5_S8_PKcSA_i(ptr noundef nonnull align 8 dereferenceable(24) %i.ac, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef %3, ptr noundef %4, i32 noundef %5)
  %i.ad = add nuw i64 %.053, 1                    ; 2 uses
  %exitcond.not = icmp eq i64 %i.ad, %i.y
  br i1 %exitcond.not, label %.loopexit, label %.lr.ph, !llvm.loop !77

.loopexit:                                        ; preds = %.lr.ph, %bb.d, %bb.c, %bb.b
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !26 ; 2 uses
  %i.ah = load ptr, ptr %i.ae, align 8, !tbaa !27 ; 2 uses
  %.not61 = icmp eq ptr %i.ag, %i.ah
  br i1 %.not61, label %._crit_edge, label %.lr.ph55.preheader

.lr.ph55.preheader:                               ; preds = %.loopexit
  %i.ai = ptrtoint ptr %i.ag to i64
  %i.aj = ptrtoint ptr %i.ah to i64
  %i.ak = sub i64 %i.ai, %i.aj
  %i.al = ashr exact i64 %i.ak, 3
  br label %.lr.ph55

._crit_edge:                                      ; preds = %.lr.ph55, %.loopexit
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !26 ; 2 uses
  %i.ap = load ptr, ptr %i.am, align 8, !tbaa !27 ; 2 uses
  %.not62 = icmp eq ptr %i.ao, %i.ap
  br i1 %.not62, label %._crit_edge59, label %.lr.ph58.preheader

.lr.ph58.preheader:                               ; preds = %._crit_edge
  %i.aq = ptrtoint ptr %i.ao to i64
  %i.ar = ptrtoint ptr %i.ap to i64
  %i.as = sub i64 %i.aq, %i.ar
  %i.at = ashr exact i64 %i.as, 3
  br label %.lr.ph58

.lr.ph55:                                         ; preds = %.lr.ph55.preheader, %.lr.ph55
  %.05154 = phi i64 [ %i.ax, %.lr.ph55 ], [ 0, %.lr.ph55.preheader ] ; 2 uses
  %i.au = load ptr, ptr %i.ae, align 8, !tbaa !27
  %i.av = getelementptr inbounds nuw [8 x i8], ptr %i.au, i64 %.05154
  %i.aw = load ptr, ptr %i.av, align 8, !tbaa !29
  tail call fastcc void @_ZL21DeclareUsedNamespacesPK8XMP_NodeRNSt3__112basic_stringIcNS2_11char_traitsIcEENS2_9allocatorIcEEEES9_PKcSB_i(ptr noundef %i.aw, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef %3, ptr noundef %4, i32 noundef %5)
  %i.ax = add nuw i64 %.05154, 1                  ; 2 uses
  %exitcond64.not = icmp eq i64 %i.ax, %i.al
  br i1 %exitcond64.not, label %._crit_edge, label %.lr.ph55, !llvm.loop !78

._crit_edge59:                                    ; preds = %.lr.ph58, %._crit_edge
  ret void

.lr.ph58:                                         ; preds = %.lr.ph58.preheader, %.lr.ph58
  %.05056 = phi i64 [ %i.bc, %.lr.ph58 ], [ 0, %.lr.ph58.preheader ] ; 2 uses
  %i.ay = load ptr, ptr %i.am, align 8, !tbaa !27
  %i.az = getelementptr inbounds nuw [8 x i8], ptr %i.ay, i64 %.05056
  %i.ba = load ptr, ptr %i.az, align 8, !tbaa !29 ; 2 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ba, i64 16
  tail call fastcc void @_ZL20DeclareElemNamespaceRKNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEERS5_S8_PKcSA_i(ptr noundef nonnull align 8 dereferenceable(24) %i.bb, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef %3, ptr noundef %4, i32 noundef %5)
  tail call fastcc void @_ZL21DeclareUsedNamespacesPK8XMP_NodeRNSt3__112basic_stringIcNS2_11char_traitsIcEENS2_9allocatorIcEEEES9_PKcSB_i(ptr noundef %i.ba, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef %3, ptr noundef %4, i32 noundef %5)
  %i.bc = add nuw i64 %.05056, 1                  ; 2 uses
  %exitcond66.not = icmp eq i64 %i.bc, %i.at
  br i1 %exitcond66.not, label %._crit_edge59, label %.lr.ph58, !llvm.loop !79
}

declare void @_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE9push_backEc(ptr noundef nonnull align 8 dereferenceable(24), i8 noundef signext) local_unnamed_addr #3

; Function Attrs: mustprogress uwtable
define internal fastcc void @_ZL19DeclareOneNamespacePKcS0_RNSt3__112basic_stringIcNS1_11char_traitsIcEENS1_9allocatorIcEEEES8_S0_S0_i(ptr noundef %0, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull align 8 dereferenceable(24) %3, ptr noundef %4, ptr noundef %5, i32 noundef range(i32 -2147483644, -2147483648) %6) unnamed_addr #0 personality ptr @__gxx_personality_v0 {
_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEC2B8ne180100ILi0EEEPKc.exit:
  %7 = alloca %"class.std::__1::basic_string", align 8 ; 13 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #17
  store i8 2, ptr %7, align 8
  %i.a = getelementptr inbounds nuw i8, ptr %7, i64 1 ; 2 uses
  store i8 58, ptr %i.a, align 1
  %i.b = getelementptr inbounds nuw i8, ptr %7, i64 2
  store i8 0, ptr %i.b, align 2, !tbaa !18
  %i.c = invoke noundef nonnull align 8 dereferenceable(24) ptr @_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE6appendEPKc(ptr noundef nonnull align 8 dereferenceable(24) %7, ptr noundef %0)
          to label %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEpLB8ne180100EPKc.exit unwind label %bb.e ; 0 uses

_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEpLB8ne180100EPKc.exit: ; preds = %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEC2B8ne180100ILi0EEEPKc.exit
  %i.d = load i8, ptr %2, align 8                 ; 2 uses
  %i.e = trunc i8 %i.d to i1                      ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.g = load ptr, ptr %i.f, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %2, i64 1
  %i.i = select i1 %i.e, ptr %i.g, ptr %i.h       ; 3 uses
  %i.j = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.k = load i64, ptr %i.j, align 8
  %i.l = lshr i8 %i.d, 1
  %i.m = zext nneg i8 %i.l to i64
  %i.n = select i1 %i.e, i64 %i.k, i64 %i.m       ; 3 uses
  %i.o = load i8, ptr %7, align 8                 ; 4 uses
  %i.p = trunc i8 %i.o to i1                      ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 2 uses
  %i.r = load ptr, ptr %i.q, align 8
  %i.s = select i1 %i.p, ptr %i.r, ptr %i.a       ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.u = load i64, ptr %i.t, align 8
  %i.v = lshr i8 %i.o, 1
  %i.w = zext nneg i8 %i.v to i64
  %i.x = select i1 %i.p, i64 %i.u, i64 %i.w       ; 5 uses
  %i.y = icmp eq i64 %i.x, 0
  br i1 %i.y, label %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEpLB8ne180100EPKc.exit37, label %bb.a

bb.a:                                             ; preds = %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEpLB8ne180100EPKc.exit
  %i.z = getelementptr i8, ptr %i.i, i64 %i.n     ; 2 uses
  %i.aa = ptrtoint ptr %i.z to i64
  %i.ab = icmp slt i64 %i.n, %i.x
  br i1 %i.ab, label %_ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE4findB8ne180100ERKS5_m.exit.thread, label %.lr.ph.i.i.i

end_hunk_0
begin_hunk_1_@_ZL29SerializeCanonicalRDFPropertyPK8XMP_NodeRNSt3__112basic_stringIcNS2_11char_traitsIcEENS2_9allocatorIcEEEEPKcSB_ibb:bb.a
  %i.fm = icmp eq i64 %i.fl, 0
  br i1 %i.fm, label %_ZL15EmitRDFArrayTagjRNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEEPKcS8_iib.exit244, label %.preheader.i

.preheader.i:                                     ; preds = %._crit_edge274
  br i1 %i.es, label %.lr.ph.i242, label %._crit_edge.i237

._crit_edge.i237:                                 ; preds = %.lr.ph.i242, %.preheader.i
  %i.fn = call noundef nonnull align 8 dereferenceable(24) ptr @_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE6appendEPKc(ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull @.str.63) ; 0 uses
  %i.fo = call noundef nonnull align 8 dereferenceable(24) ptr @_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE6appendEPKc(ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull %.str.65.sink.i) ; 0 uses
  call void @_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE9push_backEc(ptr noundef nonnull align 8 dereferenceable(24) %1, i8 noundef signext 62)
  %i.fp = call noundef nonnull align 8 dereferenceable(24) ptr @_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE6appendEPKc(ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef %2) ; 0 uses
  br label %_ZL15EmitRDFArrayTagjRNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEEPKcS8_iib.exit244

.lr.ph.i242:                                      ; preds = %.preheader.i, %.lr.ph.i242
  %.025.i243 = phi i32 [ %i.fr, %.lr.ph.i242 ], [ %i.ei, %.preheader.i ] ; 2 uses
  %i.fq = call noundef nonnull align 8 dereferenceable(24) ptr @_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE6appendEPKc(ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef %3) ; 0 uses
  %i.fr = add nsw i32 %.025.i243, -1
  %i.fs = icmp samesign ugt i32 %.025.i243, 1
  br i1 %i.fs, label %.lr.ph.i242, label %._crit_edge.i237, !llvm.loop !2

bb.ad:                                            ; preds = %.lr.ph273, %bb.ad
  %.0218271 = phi i64 [ 0, %.lr.ph273 ], [ %i.fw, %bb.ad ] ; 2 uses
  %i.ft = load ptr, ptr %i.ej, align 8, !tbaa !27
  %i.fu = getelementptr inbounds nuw [8 x i8], ptr %i.ft, i64 %.0218271
  %i.fv = load ptr, ptr %i.fu, align 8, !tbaa !29
  call fastcc void @_ZL29SerializeCanonicalRDFPropertyPK8XMP_NodeRNSt3__112basic_stringIcNS2_11char_traitsIcEENS2_9allocatorIcEEEEPKcSB_ibb(ptr noundef %i.fv, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef %2, ptr noundef %3, i32 noundef %i.fj, i1 noundef zeroext %5, i1 noundef zeroext false)
  %i.fw = add nuw i64 %.0218271, 1                ; 2 uses
  %exitcond308.not = icmp eq i64 %i.fw, %i.fi
  br i1 %exitcond308.not, label %._crit_edge274.loopexit, label %bb.ad, !llvm.loop !93

bb.ae:                                            ; preds = %bb.y
  %i.fx = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 4 uses
  %i.fy = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 2 uses
  %i.fz = load ptr, ptr %i.fy, align 8, !tbaa !26 ; 2 uses
  %i.ga = load ptr, ptr %i.fx, align 8, !tbaa !27 ; 2 uses
  %.not304 = icmp eq ptr %i.fz, %i.ga             ; 2 uses
  br i1 %.0221.lcssa323, label %bb.am, label %bb.af

bb.af:                                            ; preds = %bb.ae
  br i1 %.not304, label %bb.ag, label %bb.aj

bb.ag:                                            ; preds = %bb.af
  br i1 %5, label %bb.ai, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  %i.gb = call noundef nonnull align 8 dereferenceable(24) ptr @_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE6appendEPKc(ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull @.str.51) ; 0 uses
  br label %.critedge

bb.ai:                                            ; preds = %bb.ag
  call void @_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE9push_backEc(ptr noundef nonnull align 8 dereferenceable(24) %1, i8 noundef signext 62)
  %i.gc = call noundef nonnull align 8 dereferenceable(24) ptr @_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE6appendEPKc(ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef %2) ; 0 uses
  %i.gd = icmp sgt i32 %4, -1
  br i1 %i.gd, label %.lr.ph288.preheader, label %._crit_edge289

.lr.ph288.preheader:                              ; preds = %bb.ai
  %i.ge = add nuw nsw i32 %4, 1
  br label %.lr.ph288

.lr.ph288:                                        ; preds = %.lr.ph288.preheader, %.lr.ph288
  %.3286 = phi i32 [ %i.gg, %.lr.ph288 ], [ %i.ge, %.lr.ph288.preheader ] ; 2 uses
  %i.gf = call noundef nonnull align 8 dereferenceable(24) ptr @_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE6appendEPKc(ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef %3) ; 0 uses
  %i.gg = add nsw i32 %.3286, -1
  %i.gh = icmp samesign ugt i32 %.3286, 1
  br i1 %i.gh, label %.lr.ph288, label %._crit_edge289, !llvm.loop !94

._crit_edge289:                                   ; preds = %.lr.ph288, %bb.ai
  %i.gi = call noundef nonnull align 8 dereferenceable(24) ptr @_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE6appendEPKc(ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull @.str.60) ; 0 uses
  %i.gj = call noundef nonnull align 8 dereferenceable(24) ptr @_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE6appendEPKc(ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef %2) ; 0 uses
  br label %_ZL15EmitRDFArrayTagjRNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEEPKcS8_iib.exit244

bb.aj:                                            ; preds = %bb.af
  br i1 %5, label %bb.ak, label %._crit_edge278

bb.ak:                                            ; preds = %bb.aj
  call void @_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE9push_backEc(ptr noundef nonnull align 8 dereferenceable(24) %1, i8 noundef signext 62)
  %i.gk = call noundef nonnull align 8 dereferenceable(24) ptr @_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE6appendEPKc(ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef %2) ; 0 uses
  %i.gl = add nsw i32 %4, 1                       ; 3 uses
  %i.gm = icmp sgt i32 %4, -1
  br i1 %i.gm, label %.lr.ph277, label %._crit_edge278

.lr.ph277:                                        ; preds = %bb.ak, %.lr.ph277
  %.4275 = phi i32 [ %i.go, %.lr.ph277 ], [ %i.gl, %bb.ak ] ; 2 uses
  %i.gn = call noundef nonnull align 8 dereferenceable(24) ptr @_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE6appendEPKc(ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef %3) ; 0 uses
  %i.go = add nsw i32 %.4275, -1
  %i.gp = icmp samesign ugt i32 %.4275, 1
  br i1 %i.gp, label %.lr.ph277, label %._crit_edge278, !llvm.loop !95

._crit_edge278:                                   ; preds = %.lr.ph277, %bb.ak, %bb.aj
  %.str.29.sink324 = phi ptr [ @.str.47, %bb.aj ], [ @.str.29, %bb.ak ], [ @.str.29, %.lr.ph277 ]
  %.1 = phi i32 [ %4, %bb.aj ], [ %i.gl, %bb.ak ], [ %i.gl, %.lr.ph277 ] ; 5 uses
  %i.gq = call noundef nonnull align 8 dereferenceable(24) ptr @_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE6appendEPKc(ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull %.str.29.sink324) ; 0 uses
  %i.gr = call noundef nonnull align 8 dereferenceable(24) ptr @_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE6appendEPKc(ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef %2) ; 0 uses
  %i.gs = load ptr, ptr %i.fy, align 8, !tbaa !26 ; 2 uses
  %i.gt = load ptr, ptr %i.fx, align 8, !tbaa !27 ; 2 uses
  %.not303 = icmp eq ptr %i.gs, %i.gt
  br i1 %.not303, label %._crit_edge282, label %.lr.ph281

.lr.ph281:                                        ; preds = %._crit_edge278
  %i.gu = ptrtoint ptr %i.gs to i64
  %i.gv = ptrtoint ptr %i.gt to i64
  %i.gw = sub i64 %i.gu, %i.gv
  %i.gx = ashr exact i64 %i.gw, 3
  %i.gy = add nsw i32 %.1, 1
  br label %bb.al

._crit_edge282:                                   ; preds = %bb.al, %._crit_edge278
  br i1 %5, label %.preheader, label %_ZL15EmitRDFArrayTagjRNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEEPKcS8_iib.exit244

.preheader:                                       ; preds = %._crit_edge282
  %i.gz = icmp sgt i32 %.1, 0
  br i1 %i.gz, label %.lr.ph284, label %._crit_edge285

bb.al:                                            ; preds = %.lr.ph281, %bb.al
  %.0214279 = phi i64 [ 0, %.lr.ph281 ], [ %i.hd, %bb.al ] ; 2 uses
  %i.ha = load ptr, ptr %i.fx, align 8, !tbaa !27
  %i.hb = getelementptr inbounds nuw [8 x i8], ptr %i.ha, i64 %.0214279
  %i.hc = load ptr, ptr %i.hb, align 8, !tbaa !29
  call fastcc void @_ZL29SerializeCanonicalRDFPropertyPK8XMP_NodeRNSt3__112basic_stringIcNS2_11char_traitsIcEENS2_9allocatorIcEEEEPKcSB_ibb(ptr noundef %i.hc, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef %2, ptr noundef %3, i32 noundef %i.gy, i1 noundef zeroext %5, i1 noundef zeroext false)
  %i.hd = add nuw i64 %.0214279, 1                ; 2 uses
  %exitcond310.not = icmp eq i64 %i.hd, %i.gx
  br i1 %exitcond310.not, label %._crit_edge282, label %bb.al, !llvm.loop !96

.lr.ph284:                                        ; preds = %.preheader, %.lr.ph284
  %.5283 = phi i32 [ %i.hf, %.lr.ph284 ], [ %.1, %.preheader ] ; 2 uses
  %i.he = call noundef nonnull align 8 dereferenceable(24) ptr @_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE6appendEPKc(ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef %3) ; 0 uses
  %i.hf = add nsw i32 %.5283, -1
  %i.hg = icmp samesign ugt i32 %.5283, 1
  br i1 %i.hg, label %.lr.ph284, label %._crit_edge285, !llvm.loop !97

._crit_edge285:                                   ; preds = %.lr.ph284, %.preheader
  %i.hh = call noundef nonnull align 8 dereferenceable(24) ptr @_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE6appendEPKc(ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull @.str.28) ; 0 uses
  %i.hi = call noundef nonnull align 8 dereferenceable(24) ptr @_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE6appendEPKc(ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef %2) ; 0 uses
  %i.hj = add nsw i32 %.1, -1
  br label %_ZL15EmitRDFArrayTagjRNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEEPKcS8_iib.exit244

bb.am:                                            ; preds = %bb.ae
  br i1 %.not304, label %._crit_edge299, label %.lr.ph298

.lr.ph298:                                        ; preds = %bb.am
  %i.hk = ptrtoint ptr %i.fz to i64
  %i.hl = ptrtoint ptr %i.ga to i64
  %i.hm = sub i64 %i.hk, %i.hl
  %i.hn = ashr exact i64 %i.hm, 3
  %i.ho = add nsw i32 %4, 1
  %i.hp = icmp sgt i32 %4, -1
  br label %bb.an

._crit_edge299:                                   ; preds = %._crit_edge295, %bb.am
  %i.hq = call noundef nonnull align 8 dereferenceable(24) ptr @_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE6appendEPKc(ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull @.str.33) ; 0 uses
  br label %.critedge

bb.an:                                            ; preds = %.lr.ph298, %._crit_edge295
  %.0296 = phi i64 [ 0, %.lr.ph298 ], [ %i.jo, %._crit_edge295 ] ; 2 uses
  %i.hr = load ptr, ptr %i.fx, align 8, !tbaa !27
  %i.hs = getelementptr inbounds nuw [8 x i8], ptr %i.hr, i64 %.0296
  %i.ht = load ptr, ptr %i.hs, align 8, !tbaa !29 ; 11 uses
  %i.hu = getelementptr inbounds nuw i8, ptr %i.ht, i64 16 ; 2 uses
  %i.hv = load i8, ptr %i.hu, align 8
  %i.hw = trunc i8 %i.hv to i1
  %i.hx = getelementptr inbounds nuw i8, ptr %i.ht, i64 32 ; 2 uses
  %i.hy = load ptr, ptr %i.hx, align 8
  %i.hz = getelementptr inbounds nuw i8, ptr %i.ht, i64 17 ; 2 uses
  %.pn.i.i = select i1 %i.hw, ptr %i.hy, ptr %i.hz
  %i.ia = load i8, ptr %.pn.i.i, align 1, !tbaa !18
  %i.ib = icmp eq i8 %i.ia, 91
  br i1 %i.ib, label %_ZL16CanBeRDFAttrPropPK8XMP_Node.exit.thread, label %bb.ao

bb.ao:                                            ; preds = %bb.an
  %i.ic = getelementptr inbounds nuw i8, ptr %i.ht, i64 96
  %i.id = load ptr, ptr %i.ic, align 8, !tbaa !27
  %i.ie = getelementptr inbounds nuw i8, ptr %i.ht, i64 104
  %i.if = load ptr, ptr %i.ie, align 8, !tbaa !26
  %i.ig = icmp eq ptr %i.id, %i.if
  br i1 %i.ig, label %bb.ap, label %_ZL16CanBeRDFAttrPropPK8XMP_Node.exit.thread

bb.ap:                                            ; preds = %bb.ao
  %i.ih = getelementptr inbounds nuw i8, ptr %i.ht, i64 8
  %i.ii = load i32, ptr %i.ih, align 8, !tbaa !37
  %i.ij = and i32 %i.ii, 7938
  %or.cond250 = icmp eq i32 %i.ij, 0
  br i1 %or.cond250, label %bb.aq, label %_ZL16CanBeRDFAttrPropPK8XMP_Node.exit.thread

_ZL16CanBeRDFAttrPropPK8XMP_Node.exit.thread:     ; preds = %bb.ap, %bb.ao, %bb.an
  %i.ik = call ptr @__cxa_allocate_exception(i64 24) #17 ; 4 uses
  store i32 202, ptr %i.ik, align 8, !tbaa !15
  %i.il = getelementptr inbounds nuw i8, ptr %i.ik, i64 8
  store ptr @.str.61, ptr %i.il, align 8, !tbaa !16
  %i.im = getelementptr inbounds nuw i8, ptr %i.ik, i64 16
  store i8 0, ptr %i.im, align 8, !tbaa !17
  call void @__cxa_throw(ptr nonnull %i.ik, ptr nonnull @_ZTI9XMP_Error, ptr null) #18
  unreachable

bb.aq:                                            ; preds = %bb.ap
  %i.in = call noundef nonnull align 8 dereferenceable(24) ptr @_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE6appendEPKc(ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef %2) ; 0 uses
  br i1 %i.hp, label %.lr.ph294, label %._crit_edge295

.lr.ph294:                                        ; preds = %bb.aq, %.lr.ph294
  %.6292 = phi i32 [ %i.ip, %.lr.ph294 ], [ %i.ho, %bb.aq ] ; 2 uses
  %i.io = call noundef nonnull align 8 dereferenceable(24) ptr @_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE6appendEPKc(ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef %3) ; 0 uses
  %i.ip = add nsw i32 %.6292, -1
  %9 = icmp samesign ugt i32 %.6292, 1
  br i1 %9, label %.lr.ph294, label %._crit_edge295, !llvm.loop !98

._crit_edge295:                                   ; preds = %.lr.ph294, %bb.aq
  call void @_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE9push_backEc(ptr noundef nonnull align 8 dereferenceable(24) %1, i8 noundef signext 32)
  %i.iq = load i8, ptr %i.hu, align 8             ; 2 uses
  %i.ir = trunc i8 %i.iq to i1                    ; 2 uses
  %i.is = load ptr, ptr %i.hx, align 8
  %i.it = select i1 %i.ir, ptr %i.is, ptr %i.hz
  %i.iu = getelementptr inbounds nuw i8, ptr %i.ht, i64 24
  %i.iv = load i64, ptr %i.iu, align 8
  %i.iw = lshr i8 %i.iq, 1
  %i.ix = zext nneg i8 %i.iw to i64
  %i.iy = select i1 %i.ir, i64 %i.iv, i64 %i.ix
  %i.iz = call noundef nonnull align 8 dereferenceable(24) ptr @_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE6appendEPKcm(ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef %i.it, i64 noundef %i.iy) ; 0 uses
  %i.ja = call noundef nonnull align 8 dereferenceable(24) ptr @_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE6appendEPKc(ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull @.str.39) ; 0 uses
  %i.jb = getelementptr inbounds nuw i8, ptr %i.ht, i64 40
  %i.jc = load i8, ptr %i.jb, align 8             ; 2 uses
  %i.jd = trunc i8 %i.jc to i1                    ; 2 uses
  %i.je = getelementptr inbounds nuw i8, ptr %i.ht, i64 56
  %i.jf = load ptr, ptr %i.je, align 8
  %i.jg = getelementptr inbounds nuw i8, ptr %i.ht, i64 41
  %i.jh = select i1 %i.jd, ptr %i.jf, ptr %i.jg
  %i.ji = getelementptr inbounds nuw i8, ptr %i.ht, i64 48
  %i.jj = load i64, ptr %i.ji, align 8
  %i.jk = lshr i8 %i.jc, 1
  %i.jl = zext nneg i8 %i.jk to i64
  %i.jm = select i1 %i.jd, i64 %i.jj, i64 %i.jl
  %i.jn = call noundef nonnull align 8 dereferenceable(24) ptr @_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE6appendEPKcm(ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef %i.jh, i64 noundef %i.jm) ; 0 uses
  call void @_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE9push_backEc(ptr noundef nonnull align 8 dereferenceable(24) %1, i8 noundef signext 34)
  %i.jo = add nuw i64 %.0296, 1                   ; 2 uses
  %exitcond312.not = icmp eq i64 %i.jo, %i.hn
  br i1 %exitcond312.not, label %._crit_edge299, label %bb.an, !llvm.loop !99

_ZL15EmitRDFArrayTagjRNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEEPKcS8_iib.exit244: ; preds = %._crit_edge.i237, %._crit_edge274, %._crit_edge282, %._crit_edge285, %._crit_edge289, %._crit_edge267, %._crit_edge270
  %.2 = phi i32 [ %i.hj, %._crit_edge285 ], [ %.1, %._crit_edge282 ], [ %.0213, %._crit_edge267 ], [ %4, %._crit_edge289 ], [ %i.dp, %._crit_edge270 ], [ %4, %._crit_edge274 ], [ %4, %._crit_edge.i237 ] ; 2 uses
  %i.jp = icmp sgt i32 %.2, 0
  br i1 %i.jp, label %.lr.ph291, label %.loopexit

.lr.ph291:                                        ; preds = %_ZL15EmitRDFArrayTagjRNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEEPKcS8_iib.exit244, %.lr.ph291
  %.7290 = phi i32 [ %i.jr, %.lr.ph291 ], [ %.2, %_ZL15EmitRDFArrayTagjRNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEEPKcS8_iib.exit244 ] ; 2 uses
  %i.jq = call noundef nonnull align 8 dereferenceable(24) ptr @_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE6appendEPKc(ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef %3) ; 0 uses
  %i.jr = add nsw i32 %.7290, -1
  %i.js = icmp samesign ugt i32 %.7290, 1
  br i1 %i.js, label %.lr.ph291, label %.loopexit, !llvm.loop !100

.loopexit:                                        ; preds = %.lr.ph291, %_ZL15EmitRDFArrayTagjRNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEEPKcS8_iib.exit244, %.critedge234
  %i.jt = call noundef nonnull align 8 dereferenceable(24) ptr @_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE6appendEPKc(ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull @.str.53) ; 0 uses
  %i.ju = call noundef nonnull align 8 dereferenceable(24) ptr @_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE6appendEPKc(ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef %.0226) ; 0 uses
  call void @_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE9push_backEc(ptr noundef nonnull align 8 dereferenceable(24) %1, i8 noundef signext 62)
  br label %.critedge

.critedge:                                        ; preds = %bb.v, %bb.x, %._crit_edge299, %bb.ah, %.loopexit
  %i.jv = call noundef nonnull align 8 dereferenceable(24) ptr @_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE6appendEPKc(ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef %2) ; 0 uses
  ret void
}

declare void @_Z18NormalizeLangArrayP8XMP_Node(ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress noinline uwtable
define linkonce_odr dso_local void @_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE25__init_copy_ctor_externalEPKcm(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef %1, i64 noundef %2) local_unnamed_addr #11 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = icmp ult i64 %2, 23
  br i1 %i.a, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 1
  %i.c = trunc nuw nsw i64 %2 to i8
  %i.d = shl nuw nsw i8 %i.c, 1
  store i8 %i.d, ptr %0, align 8
  br label %_ZNSt3__111char_traitsIcE4copyB8ne180100EPcPKcm.exit

bb.c:                                             ; preds = %bb.a
  %i.e = icmp ugt i64 %2, -9
  br i1 %i.e, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  tail call void @_ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE20__throw_length_errorB8ne180100Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) #18
  unreachable

bb.e:                                             ; preds = %bb.c
  %i.f = or i64 %2, 7                             ; 2 uses
  %i.g = icmp eq i64 %i.f, 23
  %i.h = add nuw i64 %i.f, 1
  %i.i = select i1 %i.g, i64 25, i64 %i.h         ; 2 uses
  %i.j = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.i) #20 ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.j, ptr %i.k, align 8, !tbaa !18
  %i.l = or i64 %i.i, 1
  store i64 %i.l, ptr %0, align 8
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %2, ptr %i.m, align 8, !tbaa !18
  br label %_ZNSt3__111char_traitsIcE4copyB8ne180100EPcPKcm.exit

_ZNSt3__111char_traitsIcE4copyB8ne180100EPcPKcm.exit: ; preds = %bb.e, %bb.b
  %.0 = phi ptr [ %i.b, %bb.b ], [ %i.j, %bb.e ]
  %i.n = add nuw i64 %2, 1
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %.0, ptr noundef nonnull align 1 dereferenceable(1) %1, i64 %i.n, i1 false)
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #12

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPv(ptr noundef) local_unnamed_addr #13

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i32 @bcmp(ptr captures(none), ptr captures(none), i64) local_unnamed_addr #14

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #15

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #16

attributes #0 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { cold noreturn }
attributes #3 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nofree nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress noreturn uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { inlinehint mustprogress noreturn uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { nobuiltin allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { mustprogress noinline uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #13 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { nocallback nofree nosync nounwind willreturn memory(argmem: read) }
attributes #15 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #16 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #17 = { nounwind }
attributes #18 = { noreturn }
attributes #19 = { nounwind willreturn memory(read) }
attributes #20 = { builtin allocsize(0) }
attributes #21 = { builtin nounwind }

!llvm.module.flags = !{!3, !4, !5}
!llvm.ident = !{!6}
!llvm.errno.tbaa = !{!11}

!0 = distinct !{!0, !30}
!1 = distinct !{!1, !30}
!2 = distinct !{!2, !30}
!3 = !{i32 8, !"PIC Level", i32 2}
!4 = !{i32 7, !"PIE Level", i32 2}
!5 = !{i32 7, !"uwtable", i32 2}
!6 = !{!"Ubuntu clang version 24.0.0 (++20260816081927+7cb5d896117c-1~exp1~20260816201937.1790)"}
!7 = !{!"Simple C++ TBAA"}
!8 = !{!"omnipotent char", !7, i64 0}
!9 = !{!"int", !8, i64 0}
!10 = !{!"__libc_errno", !9, i64 0}
!11 = !{!10, !9, i64 0}
!12 = !{!"any pointer", !8, i64 0}
!13 = !{!"p1 omnipotent char", !12, i64 0}
!14 = !{!"_ZTS9XMP_Error", !9, i64 0, !13, i64 8, !8, i64 16}
!15 = !{!14, !9, i64 0}
!16 = !{!14, !13, i64 8}
!17 = !{!14, !8, i64 16}
!18 = !{!8, !8, i64 0}
!19 = !{!"vtable pointer", !7, i64 0}
!20 = !{!19, !19, i64 0}
!21 = !{!"any p2 pointer", !12, i64 0}
!22 = !{!"p2 _ZTS8XMP_Node", !21, i64 0}
!23 = !{!"_ZTSNSt3__122__compressed_pair_elemIPP8XMP_NodeLi0ELb0EEE", !22, i64 0}
!24 = !{!"_ZTSNSt3__117__compressed_pairIPP8XMP_NodeNS_9allocatorIS2_EEEE", !23, i64 0}
!25 = !{!"_ZTSNSt3__16vectorIP8XMP_NodeNS_9allocatorIS2_EEEE", !22, i64 0, !22, i64 8, !24, i64 16}
!26 = !{!25, !22, i64 8}
!27 = !{!25, !22, i64 0}
!28 = !{!"p1 _ZTS8XMP_Node", !12, i64 0}
!29 = !{!28, !28, i64 0}
!30 = !{!"llvm.loop.mustprogress"}
!31 = !{i64 0, i64 24, !18}
!32 = !{!"_ZTSNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE5__repE", !8, i64 0}
!33 = !{!"_ZTSNSt3__122__compressed_pair_elemINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE5__repELi0ELb0EEE", !32, i64 0}
!34 = !{!"_ZTSNSt3__117__compressed_pairINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE5__repES5_EE", !33, i64 0}
!35 = !{!"_ZTSNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEE", !34, i64 0}
!36 = !{!"_ZTS8XMP_Node", !9, i64 8, !35, i64 16, !35, i64 40, !28, i64 64, !25, i64 72, !25, i64 96}
!37 = !{!36, !9, i64 8}
!38 = distinct !{!38, !30}
!39 = distinct !{!39, !30}
!40 = distinct !{!40, !30}
!41 = distinct !{!41, !30}
!42 = distinct !{!42, !30}
!43 = distinct !{!43, !30}
!44 = distinct !{!44, !30}
!45 = distinct !{!45, !30}
!46 = distinct !{!46, !30}
!47 = distinct !{!47, !30}
!48 = distinct !{!48, !"_ZNSt3__1plB8ne180100IcNS_11char_traitsIcEENS_9allocatorIcEEEENS_12basic_stringIT_T0_T1_EERKS9_PKS6_"}
!49 = distinct !{!49, !48, !"_ZNSt3__1plB8ne180100IcNS_11char_traitsIcEENS_9allocatorIcEEEENS_12basic_stringIT_T0_T1_EERKS9_PKS6_: argument 0"}
!50 = distinct !{!50, !30}
!51 = distinct !{!51, !30}
!52 = distinct !{!52, !30}
!53 = distinct !{!53, !30}
!54 = distinct !{!54, !30}
!55 = distinct !{!55, !30}
!56 = distinct !{!56, !30}
!57 = distinct !{!57, !30}
end_hunk_1
