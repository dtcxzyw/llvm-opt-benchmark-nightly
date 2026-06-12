inline.NumInlined: 10360
inline.NumDeleted: 3521
begin_hunk_0_@_ZN6Assimp13glTF2Importer10ImportNodeERN5glTF25AssetERN10glTFCommon3RefINS1_4NodeEEE:bb.a
  %i.er = icmp eq ptr %i.eo, %i.eq
  br i1 %i.er, label %.loopexit, label %bb.v

bb.v:                                             ; preds = %_Z11ParseExtrasP10aiMetadataRKN5glTF26ExtrasE.exit
  %i.es = ptrtoint ptr %i.eq to i64
  %i.et = ptrtoint ptr %i.eo to i64
  %i.eu = sub i64 %i.es, %i.et
  %i.ev = icmp ugt i64 %i.eu, 16
  br i1 %i.ev, label %bb.w, label %bb.ab

bb.w:                                             ; preds = %bb.v
  %i.ew = call ptr @__cxa_allocate_exception(i64 16) #34 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q) #34
  %i.ex = load ptr, ptr %i.ep, align 8
  %i.ey = load ptr, ptr %i.en, align 8
  %i.ez = ptrtoint ptr %i.ex to i64
  %i.fa = ptrtoint ptr %i.ey to i64
  %i.fb = sub i64 %i.ez, %i.fa
  %i.fc = ashr exact i64 %i.fb, 4
  store i64 %i.fc, ptr %i.q, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %20) #34
  %i.fd = getelementptr inbounds nuw i8, ptr %i.z, i64 16
  %i.fe = getelementptr inbounds nuw i8, ptr %i.z, i64 48
  invoke void @_ZN5glTF226getContextForErrorMessagesERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES7_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %20, ptr noundef nonnull align 8 dereferenceable(32) %i.fd, ptr noundef nonnull align 8 dereferenceable(32) %i.fe)
          to label %bb.x unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit156.thread

bb.x:                                             ; preds = %bb.w
  invoke void @_ZN17DeadlyImportErrorC2IJRA28_KcmRA12_S1_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERA36_S1_EEEDpOT_(ptr noundef nonnull align 8 dereferenceable(16) %i.ew, ptr noundef nonnull align 1 dereferenceable(28) @.str.29, ptr noundef nonnull align 8 dereferenceable(8) %i.q, ptr noundef nonnull align 1 dereferenceable(12) @.str.30, ptr noundef nonnull align 8 dereferenceable(32) %20, ptr noundef nonnull align 1 dereferenceable(36) @.str.31)
          to label %bb.y unwind label %bb.z

bb.y:                                             ; preds = %bb.x
  invoke void @__cxa_throw(ptr nonnull %i.ew, ptr nonnull @_ZTI17DeadlyImportError, ptr nonnull @_ZNSt13runtime_errorD2Ev) #36
          to label %bb.iv unwind label %bb.z

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit156.thread: ; preds = %bb.w
  %i.ff = landingpad { ptr, i32 }
          catch ptr null
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #34
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q) #34
  br label %bb.aa

bb.z:                                             ; preds = %bb.y, %bb.x
  %.0127 = phi i1 [ false, %bb.y ], [ true, %bb.x ] ; 2 uses
  %i.fg = landingpad { ptr, i32 }
          catch ptr null                          ; 4 uses
  %i.fh = load ptr, ptr %20, align 8              ; 2 uses
  %i.fi = getelementptr inbounds nuw i8, ptr %20, i64 16 ; 2 uses
  %i.fj = icmp eq ptr %i.fh, %i.fi
  br i1 %i.fj, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit156, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i154

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i154: ; preds = %bb.z
  %i.fk = load i64, ptr %i.fi, align 8
  %i.fl = add i64 %i.fk, 1
  call void @_ZdlPvm(ptr noundef %i.fh, i64 noundef %i.fl) #35
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #34
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q) #34
  br i1 %.0127, label %bb.aa, label %bb.ir

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit156: ; preds = %bb.z
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #34
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q) #34
  br i1 %.0127, label %bb.aa, label %bb.ir

bb.aa:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i154, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit156.thread, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit156
  %.pn138230 = phi { ptr, i32 } [ %i.ff, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit156.thread ], [ %i.fg, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit156 ], [ %i.fg, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i154 ]
  call void @__cxa_free_exception(ptr %i.ew) #34
  br label %bb.ir

bb.ab:                                            ; preds = %bb.v
  %i.fm = getelementptr inbounds nuw i8, ptr %i.eo, i64 8
  %i.fn = load i32, ptr %i.fm, align 8            ; 2 uses
  %i.fo = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 4 uses
  %i.fp = add nsw i32 %i.fn, 1
  %i.fq = sext i32 %i.fp to i64                   ; 3 uses
  %i.fr = load ptr, ptr %i.fo, align 8            ; 4 uses
  %i.fs = getelementptr inbounds nuw [4 x i8], ptr %i.fr, i64 %i.fq
  %i.ft = load i32, ptr %i.fs, align 4
  %i.fu = sext i32 %i.fn to i64                   ; 3 uses
  %i.fv = getelementptr inbounds nuw [4 x i8], ptr %i.fr, i64 %i.fu
  %i.fw = load i32, ptr %i.fv, align 4
  %i.fx = sub i32 %i.ft, %i.fw                    ; 5 uses
  %i.fy = getelementptr inbounds nuw i8, ptr %i.aa, i64 1120
  store i32 %i.fx, ptr %i.fy, align 8
  %i.fz = sext i32 %i.fx to i64
  %i.ga = icmp slt i32 %i.fx, 0
  %i.gb = shl nsw i64 %i.fz, 2
  %i.gc = select i1 %i.ga, i64 -1, i64 %i.gb
  %i.gd = invoke noalias noundef nonnull ptr @_Znam(i64 noundef %i.gc) #37
          to label %bb.ac unwind label %bb.ad

bb.ac:                                            ; preds = %bb.ab
  %i.ge = getelementptr inbounds nuw i8, ptr %i.aa, i64 1128 ; 2 uses
  store ptr %i.gd, ptr %i.ge, align 8
  %i.gf = getelementptr inbounds nuw i8, ptr %i.z, i64 488 ; 4 uses
  %i.gg = load ptr, ptr %i.gf, align 8            ; 3 uses
  %.not.i157 = icmp eq ptr %i.gg, null
  br i1 %.not.i157, label %_ZNK10glTFCommon3RefIN5glTF24SkinEEcvbEv.exit.thread, label %_ZNK10glTFCommon3RefIN5glTF24SkinEEcvbEv.exit

_ZNK10glTFCommon3RefIN5glTF24SkinEEcvbEv.exit:    ; preds = %bb.ac
  %i.gh = getelementptr inbounds nuw i8, ptr %i.z, i64 496 ; 4 uses
  %i.gi = load i32, ptr %i.gh, align 8
  %i.gj = zext i32 %i.gi to i64
  %i.gk = getelementptr inbounds nuw i8, ptr %i.gg, i64 8
  %i.gl = load ptr, ptr %i.gk, align 8
  %i.gm = load ptr, ptr %i.gg, align 8
  %i.gn = ptrtoint ptr %i.gl to i64
  %i.go = ptrtoint ptr %i.gm to i64
  %i.gp = sub i64 %i.gn, %i.go
  %i.gq = ashr exact i64 %i.gp, 3
  %i.gr = icmp ugt i64 %i.gq, %i.gj
  %i.gs = icmp sgt i32 %i.fx, 0
  %or.cond = and i1 %i.gr, %i.gs
  br i1 %or.cond, label %.lr.ph355, label %_ZNK10glTFCommon3RefIN5glTF24SkinEEcvbEv.exit.thread

.lr.ph355:                                        ; preds = %_ZNK10glTFCommon3RefIN5glTF24SkinEEcvbEv.exit
  %i.gt = getelementptr inbounds nuw i8, ptr %0, i64 144
  %i.gu = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.gv = getelementptr inbounds nuw i8, ptr %21, i64 8 ; 2 uses
  %i.gw = getelementptr inbounds nuw i8, ptr %21, i64 16 ; 2 uses
  %i.gx = getelementptr inbounds nuw i8, ptr %i.s, i64 1
  %i.gy = getelementptr inbounds nuw i8, ptr %23, i64 16 ; 6 uses
  %i.gz = getelementptr inbounds nuw i8, ptr %23, i64 8 ; 4 uses
  %wide.trip.count454 = zext nneg i32 %i.fx to i64
  br label %bb.ae

bb.ad:                                            ; preds = %bb.ab
  %i.ha = landingpad { ptr, i32 }
          catch ptr null
  br label %bb.ir

bb.ae:                                            ; preds = %.lr.ph355, %_ZNSt6vectorIS_I14aiVertexWeightSaIS0_EESaIS2_EED2Ev.exit
  %indvars.iv451 = phi i64 [ 0, %.lr.ph355 ], [ %indvars.iv.next452, %_ZNSt6vectorIS_I14aiVertexWeightSaIS0_EESaIS2_EED2Ev.exit ] ; 3 uses
  %i.hb = load ptr, ptr %i.fo, align 8
  %i.hc = getelementptr inbounds nuw [4 x i8], ptr %i.hb, i64 %i.fu
  %i.hd = load i32, ptr %i.hc, align 4
  %i.he = trunc nuw nsw i64 %indvars.iv451 to i32
  %i.hf = add i32 %i.hd, %i.he
  %i.hg = load ptr, ptr %i.gt, align 8
  %i.hh = getelementptr inbounds nuw i8, ptr %i.hg, i64 24
  %i.hi = load ptr, ptr %i.hh, align 8
  %i.hj = zext i32 %i.hf to i64                   ; 2 uses
  %i.hk = getelementptr inbounds nuw [8 x i8], ptr %i.hi, i64 %i.hj
  %i.hl = load ptr, ptr %i.hk, align 8            ; 2 uses
  %i.hm = load ptr, ptr %i.gf, align 8
  %i.hn = load i32, ptr %i.gh, align 8
  %i.ho = zext i32 %i.hn to i64
  %i.hp = load ptr, ptr %i.hm, align 8
  %i.hq = getelementptr inbounds nuw [8 x i8], ptr %i.hp, i64 %i.ho
  %i.hr = load ptr, ptr %i.hq, align 8            ; 2 uses
  %i.hs = getelementptr inbounds nuw i8, ptr %i.hr, i64 352
  %i.ht = getelementptr inbounds nuw i8, ptr %i.hr, i64 360
  %i.hu = load ptr, ptr %i.ht, align 8
  %i.hv = load ptr, ptr %i.hs, align 8
  %i.hw = ptrtoint ptr %i.hu to i64
  %i.hx = ptrtoint ptr %i.hv to i64
  %i.hy = sub i64 %i.hw, %i.hx
  %i.hz = ashr exact i64 %i.hy, 4                 ; 3 uses
  %i.ia = trunc i64 %i.hz to i32                  ; 2 uses
  %i.ib = load ptr, ptr %i.gu, align 8
  %i.ic = getelementptr inbounds nuw [24 x i8], ptr %i.ib, i64 %i.hj ; 9 uses
  %i.id = load ptr, ptr %i.ic, align 8
  %i.ie = getelementptr inbounds nuw i8, ptr %i.ic, i64 8
  %i.if = load ptr, ptr %i.ie, align 8
  %i.ig = icmp eq ptr %i.id, %i.if                ; 7 uses
  %spec.select = select i1 %i.ig, ptr null, ptr %i.ic
  call void @llvm.lifetime.start.p0(ptr nonnull %21) #34
  %i.ih = and i64 %i.hz, 4294967295               ; 4 uses
  store i64 0, ptr %21, align 8
  %.not.i.i.i.i = icmp eq i64 %i.ih, 0
  br i1 %.not.i.i.i.i, label %_ZNSt12_Vector_baseISt6vectorI14aiVertexWeightSaIS1_EESaIS3_EEC2EmRKS4_.exit.thread.i, label %.lr.ph.preheader.i.i.i.i.i

.lr.ph.preheader.i.i.i.i.i:                       ; preds = %bb.ae
  %i.ii = mul nuw nsw i64 %i.ih, 24               ; 3 uses
  %i.ij = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ii) #37
          to label %.noexc158 unwind label %bb.hg ; 5 uses

.noexc158:                                        ; preds = %.lr.ph.preheader.i.i.i.i.i
  store ptr %i.ij, ptr %21, align 8
  %i.ik = getelementptr inbounds nuw [24 x i8], ptr %i.ij, i64 %i.ih
  call void @llvm.memset.p0.i64(ptr nonnull align 8 %i.ij, i8 0, i64 %i.ii, i1 false)
  %scevgep.i.i.i.i.i = getelementptr i8, ptr %i.ij, i64 %i.ii
  br label %_ZNSt12_Vector_baseISt6vectorI14aiVertexWeightSaIS1_EESaIS3_EEC2EmRKS4_.exit.thread.i

_ZNSt12_Vector_baseISt6vectorI14aiVertexWeightSaIS1_EESaIS3_EEC2EmRKS4_.exit.thread.i: ; preds = %bb.ae, %.noexc158
  %i.il = phi ptr [ %i.ij, %.noexc158 ], [ null, %bb.ae ]
  %.sink.i = phi ptr [ %i.ik, %.noexc158 ], [ null, %bb.ae ]
  %i.im = phi ptr [ %scevgep.i.i.i.i.i, %.noexc158 ], [ null, %bb.ae ] ; 2 uses
  store ptr %.sink.i, ptr %i.gw, align 8
  store ptr %i.im, ptr %i.gv, align 8
  %i.in = load ptr, ptr %i.en, align 8            ; 2 uses
  %i.io = load ptr, ptr %i.in, align 8
  %i.ip = getelementptr inbounds nuw i8, ptr %i.in, i64 8
  %i.iq = load i32, ptr %i.ip, align 8
  %i.ir = zext i32 %i.iq to i64
  %i.is = load ptr, ptr %i.io, align 8
  %i.it = getelementptr inbounds nuw [8 x i8], ptr %i.is, i64 %i.ir
  %i.iu = load ptr, ptr %i.it, align 8
  %i.iv = getelementptr inbounds nuw i8, ptr %i.iu, i64 264
  %i.iw = load ptr, ptr %i.iv, align 8
  %i.ix = getelementptr inbounds nuw [264 x i8], ptr %i.iw, i64 %indvars.iv451 ; 4 uses
  %i.iy = getelementptr inbounds nuw i8, ptr %i.ix, i64 176 ; 7 uses
  %i.iz = load ptr, ptr %i.iy, align 8            ; 5 uses
  %i.ja = getelementptr inbounds nuw i8, ptr %i.ix, i64 184 ; 7 uses
  %i.jb = load ptr, ptr %i.ja, align 8            ; 2 uses
  %i.jc = icmp eq ptr %i.iz, %i.jb
  br i1 %i.jc, label %_ZL24BuildVertexWeightMappingRN5glTF24Mesh9PrimitiveERSt6vectorIS3_I14aiVertexWeightSaIS4_EESaIS6_EEPS3_IjSaIjEE.exit, label %bb.af

bb.af:                                            ; preds = %_ZNSt12_Vector_baseISt6vectorI14aiVertexWeightSaIS1_EESaIS3_EEC2EmRKS4_.exit.thread.i
  %i.jd = getelementptr inbounds nuw i8, ptr %i.ix, i64 128 ; 4 uses
  %i.je = load ptr, ptr %i.jd, align 8            ; 3 uses
  %i.jf = getelementptr inbounds nuw i8, ptr %i.ix, i64 136 ; 4 uses
  %i.jg = load ptr, ptr %i.jf, align 8
  %i.jh = icmp eq ptr %i.je, %i.jg
  br i1 %i.jh, label %_ZL24BuildVertexWeightMappingRN5glTF24Mesh9PrimitiveERSt6vectorIS3_I14aiVertexWeightSaIS4_EESaIS6_EEPS3_IjSaIjEE.exit, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %i.ji = load ptr, ptr %i.iz, align 8
  %i.jj = getelementptr inbounds nuw i8, ptr %i.iz, i64 8
  %i.jk = load i32, ptr %i.jj, align 8
  %i.jl = zext i32 %i.jk to i64
  %i.jm = load ptr, ptr %i.ji, align 8
  %i.jn = getelementptr inbounds nuw [8 x i8], ptr %i.jm, i64 %i.jl
  %i.jo = load ptr, ptr %i.jn, align 8
  %i.jp = getelementptr inbounds nuw i8, ptr %i.jo, i64 296
  %i.jq = load i64, ptr %i.jp, align 8
  %i.jr = load ptr, ptr %i.je, align 8
  %i.js = getelementptr inbounds nuw i8, ptr %i.je, i64 8
  %i.jt = load i32, ptr %i.js, align 8
  %i.ju = zext i32 %i.jt to i64
  %i.jv = load ptr, ptr %i.jr, align 8
  %i.jw = getelementptr inbounds nuw [8 x i8], ptr %i.jv, i64 %i.ju
  %i.jx = load ptr, ptr %i.jw, align 8
  %i.jy = getelementptr inbounds nuw i8, ptr %i.jx, i64 296
  %i.jz = load i64, ptr %i.jy, align 8
  %.not.i159 = icmp eq i64 %i.jq, %i.jz
  br i1 %.not.i159, label %.lr.ph.i160, label %_ZL24BuildVertexWeightMappingRN5glTF24Mesh9PrimitiveERSt6vectorIS3_I14aiVertexWeightSaIS4_EESaIS6_EEPS3_IjSaIjEE.exit

.lr.ph.i160:                                      ; preds = %bb.ag
  %i.ka = ptrtoint ptr %i.jb to i64
  %i.kb = ptrtoint ptr %i.iz to i64
  %i.kc = sub i64 %i.ka, %i.kb
  %i.kd = call i64 @llvm.smax.i64(i64 %i.kc, i64 -1)
  %i.ke = ashr i64 %i.kd, 1
  %i.kf = invoke noalias noundef nonnull ptr @_Znam(i64 noundef %i.ke) #37
          to label %.noexc163 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit ; 7 uses

.noexc163:                                        ; preds = %.lr.ph.i160
  %i.kg = getelementptr inbounds nuw i8, ptr %spec.select, i64 8 ; 3 uses
  br label %bb.an

._crit_edge.i:                                    ; preds = %_ZN5glTF28Accessor11ExtractDataIZL24BuildVertexWeightMappingRNS_4Mesh9PrimitiveERSt6vectorIS5_I14aiVertexWeightSaIS6_EESaIS8_EEPS5_IjSaIjEEE7WeightsEEmRPT_PKSD_.exit.i
  %.pre.i = load ptr, ptr %i.jd, align 8          ; 6 uses
  %.pre367.i = load ptr, ptr %.pre.i, align 8
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %.pre.i, i64 8
  %.pre368.i = load i32, ptr %.phi.trans.insert.i, align 8
  %.pre369.i = load ptr, ptr %.pre367.i, align 8
  %.phi.trans.insert370.i = zext i32 %.pre368.i to i64
  %.phi.trans.insert371.i = getelementptr inbounds nuw [8 x i8], ptr %.pre369.i, i64 %.phi.trans.insert370.i
  %.pre372.i = load ptr, ptr %.phi.trans.insert371.i, align 8 ; 2 uses
  %.phi.trans.insert375.i = getelementptr inbounds nuw i8, ptr %.pre372.i, i64 288
  %.pre376.i = load i32, ptr %.phi.trans.insert375.i, align 8 ; 3 uses
  %.phi.trans.insert373.i = getelementptr inbounds nuw i8, ptr %.pre372.i, i64 304
  %.pre374.i = load i32, ptr %.phi.trans.insert373.i, align 8
  %i.kh = zext i32 %.pre374.i to i64
  %i.ki = getelementptr inbounds nuw [16 x i8], ptr @_ZN5glTF210AttribType4dataILi0EE5infosE, i64 %i.kh
  %i.kj = getelementptr inbounds nuw i8, ptr %i.ki, i64 8
  %i.kk = load i32, ptr %i.kj, align 8
  %switch.tableidx = add i32 %.pre376.i, -5120    ; 2 uses
  %i.kl = icmp ult i32 %switch.tableidx, 7
  %switch.maskindex = trunc i32 %.pre376.i to i8
  %switch.shifted = lshr i8 111, %switch.maskindex
  %switch.lobit = trunc i8 %switch.shifted to i1
  %or.cond820 = select i1 %i.kl, i1 %switch.lobit, i1 false
  br i1 %or.cond820, label %switch.lookup, label %bb.ah

bb.ah:                                            ; preds = %._crit_edge.i
  %i.km = call ptr @__cxa_allocate_exception(i64 16) #34 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %18) #34
  invoke void @_Z12ai_to_stringIN5glTF213ComponentTypeEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEET_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %18, i32 noundef %.pre376.i)
          to label %bb.ai unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i.i.i

bb.ai:                                            ; preds = %bb.ah
  invoke void @_ZN17DeadlyImportErrorC2IJRA34_KcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEDpOT_(ptr noundef nonnull align 8 dereferenceable(16) %i.km, ptr noundef nonnull align 1 dereferenceable(34) @.str.305, ptr noundef nonnull align 8 dereferenceable(32) %18)
          to label %bb.aj unwind label %bb.ak

bb.aj:                                            ; preds = %bb.ai
  invoke void @__cxa_throw(ptr nonnull %i.km, ptr nonnull @_ZTI17DeadlyImportError, ptr nonnull @_ZNSt13runtime_errorD2Ev) #36
          to label %bb.am unwind label %bb.ak

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i.i.i: ; preds = %bb.ah
  %i.kn = landingpad { ptr, i32 }
          catch ptr null
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #34
  br label %bb.al

bb.ak:                                            ; preds = %bb.aj, %bb.ai
  %.0.i.i.i.i = phi i1 [ false, %bb.aj ], [ true, %bb.ai ] ; 2 uses
  %i.ko = landingpad { ptr, i32 }
          catch ptr null                          ; 4 uses
  %i.kp = load ptr, ptr %18, align 8              ; 2 uses
  %i.kq = getelementptr inbounds nuw i8, ptr %18, i64 16 ; 2 uses
  %i.kr = icmp eq ptr %i.kp, %i.kq
  br i1 %i.kr, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i: ; preds = %bb.ak
  %i.ks = load i64, ptr %i.kq, align 8
  %i.kt = add i64 %i.ks, 1
  call void @_ZdlPvm(ptr noundef %i.kp, i64 noundef %i.kt) #35
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #34
  br i1 %.0.i.i.i.i, label %bb.al, label %.body

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i: ; preds = %bb.ak
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #34
  br i1 %.0.i.i.i.i, label %bb.al, label %.body

bb.al:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i.i.i
  %.pn12.i.i.i.i = phi { ptr, i32 } [ %i.kn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i.i.i ], [ %i.ko, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i ], [ %i.ko, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i ]
  call void @__cxa_free_exception(ptr %i.km) #34
  br label %.body

bb.am:                                            ; preds = %bb.aj
  unreachable

switch.lookup:                                    ; preds = %._crit_edge.i
  %i.ku = zext nneg i32 %switch.tableidx to i64
  %switch.gep = getelementptr inbounds nuw i8, ptr @switch.table._ZN5glTF28Accessor11ExtractDataI9aiColor4tItEEEmRPT_PKSt6vectorIjSaIjEE, i64 %i.ku
  %switch.load = load i8, ptr %switch.gep, align 1
  %i.kv = load ptr, ptr %i.jf, align 8            ; 2 uses
  %i.kw = ptrtoint ptr %i.kv to i64
  %i.kx = ptrtoint ptr %.pre.i to i64
  %i.ky = sub i64 %i.kw, %i.kx
  %i.kz = call i64 @llvm.smax.i64(i64 %i.ky, i64 -1)
  %i.la = ashr i64 %i.kz, 1
  %i.lb = invoke noalias noundef nonnull ptr @_Znam(i64 noundef %i.la) #37
          to label %.noexc164 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit ; 6 uses

.noexc164:                                        ; preds = %switch.lookup
  %switch.ext = zext i8 %switch.load to i32
  %i.lc = mul i32 %i.kk, %switch.ext
  %i.ld = icmp eq i32 %i.lc, 4
  %.not297.i = icmp eq ptr %i.kv, %.pre.i         ; 2 uses
  br i1 %i.ld, label %bb.cm, label %bb.el

bb.an:                                            ; preds = %_ZN5glTF28Accessor11ExtractDataIZL24BuildVertexWeightMappingRNS_4Mesh9PrimitiveERSt6vectorIS5_I14aiVertexWeightSaIS6_EESaIS8_EEPS5_IjSaIjEEE7WeightsEEmRPT_PKSD_.exit.i, %.noexc163
  %i.le = phi ptr [ %i.iz, %.noexc163 ], [ %i.sx, %_ZN5glTF28Accessor11ExtractDataIZL24BuildVertexWeightMappingRNS_4Mesh9PrimitiveERSt6vectorIS5_I14aiVertexWeightSaIS6_EESaIS8_EEPS5_IjSaIjEEE7WeightsEEmRPT_PKSD_.exit.i ]
  %.084281.i = phi i64 [ 0, %.noexc163 ], [ %i.sv, %_ZN5glTF28Accessor11ExtractDataIZL24BuildVertexWeightMappingRNS_4Mesh9PrimitiveERSt6vectorIS5_I14aiVertexWeightSaIS6_EESaIS8_EEPS5_IjSaIjEEE7WeightsEEmRPT_PKSD_.exit.i ] ; 3 uses
  %i.lf = getelementptr inbounds nuw [16 x i8], ptr %i.le, i64 %.084281.i ; 2 uses
  %i.lg = load ptr, ptr %i.lf, align 8
  %i.lh = getelementptr inbounds nuw i8, ptr %i.lf, i64 8
  %i.li = load i32, ptr %i.lh, align 8
  %i.lj = zext i32 %i.li to i64
  %i.lk = load ptr, ptr %i.lg, align 8
  %i.ll = getelementptr inbounds nuw [8 x i8], ptr %i.lk, i64 %i.lj
  %i.lm = load ptr, ptr %i.ll, align 8            ; 20 uses
  %i.ln = getelementptr inbounds nuw [8 x i8], ptr %i.kf, i64 %.084281.i
  %i.lo = getelementptr inbounds nuw i8, ptr %i.lm, i64 368 ; 2 uses
  %i.lp = load ptr, ptr %i.lo, align 8            ; 2 uses
  %.not21.i.i.i = icmp eq ptr %i.lp, null
  br i1 %.not21.i.i.i, label %bb.ap, label %bb.ao

bb.ao:                                            ; preds = %bb.an
  %i.lq = getelementptr inbounds nuw i8, ptr %i.lp, i64 296
  %i.lr = load ptr, ptr %i.lq, align 8
  br label %_ZN5glTF28Accessor10GetPointerEv.exit.i.i

bb.ap:                                            ; preds = %bb.an
  %i.ls = getelementptr inbounds nuw i8, ptr %i.lm, i64 360
  %i.lt = load ptr, ptr %i.ls, align 8            ; 2 uses
  %.not22.i.i.i = icmp eq ptr %i.lt, null
  br i1 %.not22.i.i.i, label %bb.ar, label %bb.aq

bb.aq:                                            ; preds = %bb.ap
  %i.lu = getelementptr inbounds nuw i8, ptr %i.lt, i64 64
  %i.lv = load ptr, ptr %i.lu, align 8
  br label %_ZN5glTF28Accessor10GetPointerEv.exit.i.i

bb.ar:                                            ; preds = %bb.ap
  %i.lw = getelementptr inbounds nuw i8, ptr %i.lm, i64 264
  %i.lx = load ptr, ptr %i.lw, align 8            ; 3 uses
  %.not.i.i.i.i162 = icmp eq ptr %i.lx, null
  br i1 %.not.i.i.i.i162, label %_ZN5glTF28Accessor10GetPointerEv.exit.thread.i.i, label %_ZNK10glTFCommon3RefIN5glTF210BufferViewEEcvbEv.exit.i.i.i

_ZNK10glTFCommon3RefIN5glTF210BufferViewEEcvbEv.exit.i.i.i: ; preds = %bb.ar
  %i.ly = getelementptr inbounds nuw i8, ptr %i.lm, i64 272
  %i.lz = load i32, ptr %i.ly, align 8
  %i.ma = zext i32 %i.lz to i64                   ; 2 uses
  %i.mb = getelementptr inbounds nuw i8, ptr %i.lx, i64 8
  %i.mc = load ptr, ptr %i.mb, align 8
  %i.md = load ptr, ptr %i.lx, align 8            ; 2 uses
  %i.me = ptrtoint ptr %i.mc to i64
  %i.mf = ptrtoint ptr %i.md to i64
  %i.mg = sub i64 %i.me, %i.mf
  %i.mh = ashr exact i64 %i.mg, 3
  %i.mi = icmp ugt i64 %i.mh, %i.ma
  br i1 %i.mi, label %bb.as, label %_ZN5glTF28Accessor10GetPointerEv.exit.thread.i.i

bb.as:                                            ; preds = %_ZNK10glTFCommon3RefIN5glTF210BufferViewEEcvbEv.exit.i.i.i
  %i.mj = getelementptr inbounds nuw [8 x i8], ptr %i.md, i64 %i.ma
  %i.mk = load ptr, ptr %i.mj, align 8            ; 3 uses
  %i.ml = getelementptr inbounds nuw i8, ptr %i.mk, i64 264
  %i.mm = load ptr, ptr %i.ml, align 8            ; 3 uses
  %.not.i18.i.i.i = icmp eq ptr %i.mm, null
  br i1 %.not.i18.i.i.i, label %_ZN5glTF28Accessor10GetPointerEv.exit.thread.i.i, label %_ZNK10glTFCommon3RefIN5glTF26BufferEEcvbEv.exit.i.i.i

_ZNK10glTFCommon3RefIN5glTF26BufferEEcvbEv.exit.i.i.i: ; preds = %bb.as
  %i.mn = getelementptr inbounds nuw i8, ptr %i.mk, i64 272
  %i.mo = load i32, ptr %i.mn, align 8
  %i.mp = zext i32 %i.mo to i64                   ; 2 uses
  %i.mq = getelementptr inbounds nuw i8, ptr %i.mm, i64 8
  %i.mr = load ptr, ptr %i.mq, align 8
  %i.ms = load ptr, ptr %i.mm, align 8            ; 2 uses
  %i.mt = ptrtoint ptr %i.mr to i64
  %i.mu = ptrtoint ptr %i.ms to i64
  %i.mv = sub i64 %i.mt, %i.mu
  %i.mw = ashr exact i64 %i.mv, 3
  %i.mx = icmp ugt i64 %i.mw, %i.mp
  br i1 %i.mx, label %bb.at, label %_ZN5glTF28Accessor10GetPointerEv.exit.thread.i.i

bb.at:                                            ; preds = %_ZNK10glTFCommon3RefIN5glTF26BufferEEcvbEv.exit.i.i.i
  %i.my = getelementptr inbounds nuw [8 x i8], ptr %i.ms, i64 %i.mp
  %i.mz = load ptr, ptr %i.my, align 8            ; 2 uses
  %i.na = getelementptr inbounds nuw i8, ptr %i.mz, i64 296
  %i.nb = load ptr, ptr %i.na, align 8            ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.nb, null
  br i1 %.not.i.i.i, label %_ZN5glTF28Accessor10GetPointerEv.exit.thread.i.i, label %bb.au

bb.au:                                            ; preds = %bb.at
  %i.nc = getelementptr inbounds nuw i8, ptr %i.lm, i64 280
  %i.nd = load i64, ptr %i.nc, align 8
  %i.ne = getelementptr inbounds nuw i8, ptr %i.mk, i64 280
  %i.nf = load i64, ptr %i.ne, align 8
  %i.ng = add i64 %i.nf, %i.nd                    ; 4 uses
  %i.nh = getelementptr inbounds nuw i8, ptr %i.mz, i64 288
  %i.ni = load ptr, ptr %i.nh, align 8            ; 4 uses
  %.not16.i.i.i = icmp eq ptr %i.ni, null
  br i1 %.not16.i.i.i, label %.thread.i.i.i, label %bb.av

bb.av:                                            ; preds = %bb.au
  %i.nj = load i64, ptr %i.ni, align 8            ; 3 uses
  %.not17.i.i.i = icmp ult i64 %i.ng, %i.nj
  br i1 %.not17.i.i.i, label %.thread.i.i.i, label %bb.aw

bb.aw:                                            ; preds = %bb.av
  %i.nk = getelementptr inbounds nuw i8, ptr %i.ni, i64 24
  %i.nl = load i64, ptr %i.nk, align 8
end_hunk_0
begin_hunk_1_@_ZN6Assimp13glTF2Importer10ImportNodeERN5glTF25AssetERN10glTFCommon3RefINS1_4NodeEEE:bb.a
          to label %bb.gj unwind label %bb.fy

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit89.thread.i171.i: ; preds = %bb.fv
  %i.ahr = landingpad { ptr, i32 }
          catch ptr null
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #34
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #34
  br label %.sink.split.i172.i

bb.fy:                                            ; preds = %bb.fx, %bb.fw
  %.047.i179.i = phi i1 [ false, %bb.fx ], [ true, %bb.fw ] ; 2 uses
  %i.ahs = landingpad { ptr, i32 }
          catch ptr null                          ; 4 uses
  %i.aht = load ptr, ptr %6, align 8              ; 2 uses
  %i.ahu = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 2 uses
  %i.ahv = icmp eq ptr %i.aht, %i.ahu
  br i1 %i.ahv, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit89.i181.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i87.i180.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i87.i180.i: ; preds = %bb.fy
  %i.ahw = load i64, ptr %i.ahu, align 8
  %i.ahx = add i64 %i.ahw, 1
  call void @_ZdlPvm(ptr noundef %i.aht, i64 noundef %i.ahx) #35
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #34
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #34
  br i1 %.047.i179.i, label %.sink.split.i172.i, label %bb.gh

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit89.i181.i: ; preds = %bb.fy
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #34
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #34
  br i1 %.047.i179.i, label %.sink.split.i172.i, label %bb.gh

bb.fz:                                            ; preds = %bb.fu
  %i.ahy = getelementptr inbounds nuw [8 x i8], ptr %i.ahg, i64 %.051108.i169.i
  %i.ahz = mul i64 %i.afo, %i.ahm
  %i.aia = getelementptr inbounds nuw i8, ptr %.3.i.i159.i, i64 %i.ahz
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 2 %i.ahy, ptr nonnull align 1 %i.aia, i64 %i.afm, i1 false)
  %i.aib = add nuw i64 %.051108.i169.i, 1         ; 2 uses
  %exitcond.not.i182.i = icmp eq i64 %i.aib, %i.aes
  br i1 %exitcond.not.i182.i, label %_ZN5glTF28Accessor11ExtractDataIZL24BuildVertexWeightMappingRNS_4Mesh9PrimitiveERSt6vectorIS5_I14aiVertexWeightSaIS6_EESaIS8_EEPS5_IjSaIjEEE9Indices16EEmRPT_PKSD_.exit.i, label %bb.fu, !llvm.loop !137

bb.ga:                                            ; preds = %.noexc170
  %i.aic = mul i64 %i.afo, %i.aes                 ; 2 uses
  %i.aid = icmp ugt i64 %i.aic, %.0.i.i166.i
  br i1 %i.aid, label %bb.gb, label %bb.gf

bb.gb:                                            ; preds = %bb.ga
  %i.aie = call ptr @__cxa_allocate_exception(i64 16) #34 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #34
  store i64 %i.aic, ptr %i.e, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #34
  %i.aif = getelementptr inbounds nuw i8, ptr %i.abt, i64 16
  %i.aig = getelementptr inbounds nuw i8, ptr %i.abt, i64 48
  invoke void @_ZN5glTF226getContextForErrorMessagesERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES7_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %7, ptr noundef nonnull align 8 dereferenceable(32) %i.aif, ptr noundef nonnull align 8 dereferenceable(32) %i.aig)
          to label %bb.gc unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit92.thread.i189.i

bb.gc:                                            ; preds = %bb.gb
  invoke void @_ZN17DeadlyImportErrorC2IJRA20_KcmRA12_S1_RKmRA5_S1_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEDpOT_(ptr noundef nonnull align 8 dereferenceable(16) %i.aie, ptr noundef nonnull align 1 dereferenceable(20) @.str.317, ptr noundef nonnull align 8 dereferenceable(8) %i.e, ptr noundef nonnull align 1 dereferenceable(12) @.str.316, ptr noundef nonnull align 8 dereferenceable(8) %i.c, ptr noundef nonnull align 1 dereferenceable(5) @.str.314, ptr noundef nonnull align 8 dereferenceable(32) %7)
          to label %bb.gd unwind label %bb.ge

bb.gd:                                            ; preds = %bb.gc
  invoke void @__cxa_throw(ptr nonnull %i.aie, ptr nonnull @_ZTI17DeadlyImportError, ptr nonnull @_ZNSt13runtime_errorD2Ev) #36
          to label %bb.gj unwind label %bb.ge

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit92.thread.i189.i: ; preds = %bb.gb
  %i.aih = landingpad { ptr, i32 }
          catch ptr null
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #34
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #34
  br label %.sink.split.i172.i

bb.ge:                                            ; preds = %bb.gd, %bb.gc
  %.046.i190.i = phi i1 [ false, %bb.gd ], [ true, %bb.gc ] ; 2 uses
  %i.aii = landingpad { ptr, i32 }
          catch ptr null                          ; 4 uses
  %i.aij = load ptr, ptr %7, align 8              ; 2 uses
  %i.aik = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 2 uses
  %i.ail = icmp eq ptr %i.aij, %i.aik
  br i1 %i.ail, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit92.i192.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i90.i191.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i90.i191.i: ; preds = %bb.ge
  %i.aim = load i64, ptr %i.aik, align 8
  %i.ain = add i64 %i.aim, 1
  call void @_ZdlPvm(ptr noundef %i.aij, i64 noundef %i.ain) #35
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #34
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #34
  br i1 %.046.i190.i, label %.sink.split.i172.i, label %bb.gh

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit92.i192.i: ; preds = %bb.ge
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #34
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #34
  br i1 %.046.i190.i, label %.sink.split.i172.i, label %bb.gh

bb.gf:                                            ; preds = %bb.ga
  %i.aio = icmp eq i32 %i.afl, 8
  %i.aip = icmp eq i64 %i.afo, 8
  %or.cond.i183.i = and i1 %i.aio, %i.aip
  br i1 %or.cond.i183.i, label %bb.gg, label %.preheader.i184.i

.preheader.i184.i:                                ; preds = %bb.gf
  %.not112.i185.i = icmp eq i64 %i.aes, 0
  br i1 %.not112.i185.i, label %_ZN5glTF28Accessor11ExtractDataIZL24BuildVertexWeightMappingRNS_4Mesh9PrimitiveERSt6vectorIS5_I14aiVertexWeightSaIS6_EESaIS8_EEPS5_IjSaIjEEE9Indices16EEmRPT_PKSD_.exit.i, label %.lr.ph110.i186.i.preheader

.lr.ph110.i186.i.preheader:                       ; preds = %.preheader.i184.i
  %xtraiter943 = and i64 %i.aes, 3                ; 3 uses
  %i.aiq = icmp ult i64 %i.aes, 4
  br i1 %i.aiq, label %.lr.ph110.i186.i.epil.preheader, label %.lr.ph110.i186.i.preheader.new

.lr.ph110.i186.i.preheader.new:                   ; preds = %.lr.ph110.i186.i.preheader
  %unroll_iter946 = and i64 %i.aes, -4
  br label %.lr.ph110.i186.i

bb.gg:                                            ; preds = %bb.gf
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 2 %i.ahg, ptr nonnull align 1 %.3.i.i159.i, i64 %i.afn, i1 false)
  br label %_ZN5glTF28Accessor11ExtractDataIZL24BuildVertexWeightMappingRNS_4Mesh9PrimitiveERSt6vectorIS5_I14aiVertexWeightSaIS6_EESaIS8_EEPS5_IjSaIjEEE9Indices16EEmRPT_PKSD_.exit.i

.lr.ph110.i186.i:                                 ; preds = %.lr.ph110.i186.i, %.lr.ph110.i186.i.preheader.new
  %.0109.i187.i = phi i64 [ 0, %.lr.ph110.i186.i.preheader.new ], [ %i.ajg, %.lr.ph110.i186.i ] ; 6 uses
  %niter947 = phi i64 [ 0, %.lr.ph110.i186.i.preheader.new ], [ %niter947.next.3, %.lr.ph110.i186.i ]
  %i.air = getelementptr inbounds nuw [8 x i8], ptr %i.ahg, i64 %.0109.i187.i
  %i.ais = mul i64 %.0109.i187.i, %i.afo
  %i.ait = getelementptr inbounds nuw i8, ptr %.3.i.i159.i, i64 %i.ais
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 2 %i.air, ptr nonnull align 1 %i.ait, i64 %i.afm, i1 false)
  %i.aiu = or disjoint i64 %.0109.i187.i, 1       ; 2 uses
  %i.aiv = getelementptr inbounds nuw [8 x i8], ptr %i.ahg, i64 %i.aiu
  %i.aiw = mul i64 %i.aiu, %i.afo
  %i.aix = getelementptr inbounds nuw i8, ptr %.3.i.i159.i, i64 %i.aiw
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 2 %i.aiv, ptr nonnull align 1 %i.aix, i64 %i.afm, i1 false)
  %i.aiy = or disjoint i64 %.0109.i187.i, 2       ; 2 uses
  %i.aiz = getelementptr inbounds nuw [8 x i8], ptr %i.ahg, i64 %i.aiy
  %i.aja = mul i64 %i.aiy, %i.afo
  %i.ajb = getelementptr inbounds nuw i8, ptr %.3.i.i159.i, i64 %i.aja
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 2 %i.aiz, ptr nonnull align 1 %i.ajb, i64 %i.afm, i1 false)
  %i.ajc = or disjoint i64 %.0109.i187.i, 3       ; 2 uses
  %i.ajd = getelementptr inbounds nuw [8 x i8], ptr %i.ahg, i64 %i.ajc
  %i.aje = mul i64 %i.ajc, %i.afo
  %i.ajf = getelementptr inbounds nuw i8, ptr %.3.i.i159.i, i64 %i.aje
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 2 %i.ajd, ptr nonnull align 1 %i.ajf, i64 %i.afm, i1 false)
  %i.ajg = add nuw i64 %.0109.i187.i, 4           ; 2 uses
  %niter947.next.3 = add i64 %niter947, 4         ; 2 uses
  %niter947.ncmp.3 = icmp eq i64 %niter947.next.3, %unroll_iter946
  br i1 %niter947.ncmp.3, label %_ZN5glTF28Accessor11ExtractDataIZL24BuildVertexWeightMappingRNS_4Mesh9PrimitiveERSt6vectorIS5_I14aiVertexWeightSaIS6_EESaIS8_EEPS5_IjSaIjEEE9Indices16EEmRPT_PKSD_.exit.i.loopexit.unr-lcssa, label %.lr.ph110.i186.i, !llvm.loop !138

.sink.split.i172.i:                               ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit92.i192.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i90.i191.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit92.thread.i189.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit89.i181.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i87.i180.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit89.thread.i171.i
  %.sink.i173.i = phi ptr [ %i.ahn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit89.i181.i ], [ %i.ahn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i87.i180.i ], [ %i.ahn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit89.thread.i171.i ], [ %i.aie, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i90.i191.i ], [ %i.aie, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit92.thread.i189.i ], [ %i.aie, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit92.i192.i ]
  %.pn74.pn.ph.i174.i = phi { ptr, i32 } [ %i.ahs, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit89.i181.i ], [ %i.ahs, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i87.i180.i ], [ %i.ahr, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit89.thread.i171.i ], [ %i.aii, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i90.i191.i ], [ %i.aih, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit92.thread.i189.i ], [ %i.aii, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit92.i192.i ]
  call void @__cxa_free_exception(ptr %.sink.i173.i) #34
  br label %bb.gh

bb.gh:                                            ; preds = %.sink.split.i172.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit92.i192.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i90.i191.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit89.i181.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i87.i180.i
  %.pn74.pn.i175.i = phi { ptr, i32 } [ %i.aii, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit92.i192.i ], [ %i.ahs, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i87.i180.i ], [ %i.aii, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i90.i191.i ], [ %i.ahs, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit89.i181.i ], [ %.pn74.pn.ph.i174.i, %.sink.split.i172.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #34
  br label %bb.gi

bb.gi:                                            ; preds = %bb.gh, %bb.fo, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit83.i200.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i81.i199.i
  %.pn77.pn.i176.i = phi { ptr, i32 } [ %.pn77100.i197.i, %bb.fo ], [ %i.afu, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit83.i200.i ], [ %.pn74.pn.i175.i, %bb.gh ], [ %i.afu, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i81.i199.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #34
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #34
  br label %.body

bb.gj:                                            ; preds = %bb.gd, %bb.fx, %bb.fm, %bb.ex
  unreachable

_ZN5glTF28Accessor11ExtractDataIZL24BuildVertexWeightMappingRNS_4Mesh9PrimitiveERSt6vectorIS5_I14aiVertexWeightSaIS6_EESaIS8_EEPS5_IjSaIjEEE9Indices16EEmRPT_PKSD_.exit.i.loopexit.unr-lcssa: ; preds = %.lr.ph110.i186.i
  %lcmp.mod944.not = icmp eq i64 %xtraiter943, 0
  br i1 %lcmp.mod944.not, label %_ZN5glTF28Accessor11ExtractDataIZL24BuildVertexWeightMappingRNS_4Mesh9PrimitiveERSt6vectorIS5_I14aiVertexWeightSaIS6_EESaIS8_EEPS5_IjSaIjEEE9Indices16EEmRPT_PKSD_.exit.i, label %.lr.ph110.i186.i.epil.preheader

.lr.ph110.i186.i.epil.preheader:                  ; preds = %_ZN5glTF28Accessor11ExtractDataIZL24BuildVertexWeightMappingRNS_4Mesh9PrimitiveERSt6vectorIS5_I14aiVertexWeightSaIS6_EESaIS8_EEPS5_IjSaIjEEE9Indices16EEmRPT_PKSD_.exit.i.loopexit.unr-lcssa, %.lr.ph110.i186.i.preheader
  %.0109.i187.i.epil.init = phi i64 [ 0, %.lr.ph110.i186.i.preheader ], [ %i.ajg, %_ZN5glTF28Accessor11ExtractDataIZL24BuildVertexWeightMappingRNS_4Mesh9PrimitiveERSt6vectorIS5_I14aiVertexWeightSaIS6_EESaIS8_EEPS5_IjSaIjEEE9Indices16EEmRPT_PKSD_.exit.i.loopexit.unr-lcssa ]
  %lcmp.mod945 = icmp ne i64 %xtraiter943, 0
  call void @llvm.assume(i1 %lcmp.mod945)
  br label %.lr.ph110.i186.i.epil

.lr.ph110.i186.i.epil:                            ; preds = %.lr.ph110.i186.i.epil, %.lr.ph110.i186.i.epil.preheader
  %.0109.i187.i.epil = phi i64 [ %i.ajk, %.lr.ph110.i186.i.epil ], [ %.0109.i187.i.epil.init, %.lr.ph110.i186.i.epil.preheader ] ; 3 uses
  %epil.iter = phi i64 [ %epil.iter.next, %.lr.ph110.i186.i.epil ], [ 0, %.lr.ph110.i186.i.epil.preheader ]
  %i.ajh = getelementptr inbounds nuw [8 x i8], ptr %i.ahg, i64 %.0109.i187.i.epil
  %i.aji = mul i64 %.0109.i187.i.epil, %i.afo
  %i.ajj = getelementptr inbounds nuw i8, ptr %.3.i.i159.i, i64 %i.aji
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 2 %i.ajh, ptr nonnull align 1 %i.ajj, i64 %i.afm, i1 false)
  %i.ajk = add nuw i64 %.0109.i187.i.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter943
  br i1 %epil.iter.cmp.not, label %_ZN5glTF28Accessor11ExtractDataIZL24BuildVertexWeightMappingRNS_4Mesh9PrimitiveERSt6vectorIS5_I14aiVertexWeightSaIS6_EESaIS8_EEPS5_IjSaIjEEE9Indices16EEmRPT_PKSD_.exit.i, label %.lr.ph110.i186.i.epil, !llvm.loop !139

_ZN5glTF28Accessor11ExtractDataIZL24BuildVertexWeightMappingRNS_4Mesh9PrimitiveERSt6vectorIS5_I14aiVertexWeightSaIS6_EESaIS8_EEPS5_IjSaIjEEE9Indices16EEmRPT_PKSD_.exit.i: ; preds = %bb.fz, %_ZN5glTF28Accessor11ExtractDataIZL24BuildVertexWeightMappingRNS_4Mesh9PrimitiveERSt6vectorIS5_I14aiVertexWeightSaIS6_EESaIS8_EEPS5_IjSaIjEEE9Indices16EEmRPT_PKSD_.exit.i.loopexit.unr-lcssa, %.lr.ph110.i186.i.epil, %bb.gg, %.preheader.i184.i, %bb.ft
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #34
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #34
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #34
  %i.ajl = add nuw i64 %.080282.i, 1              ; 2 uses
  %i.ajm = load ptr, ptr %i.jf, align 8
  %i.ajn = load ptr, ptr %i.jd, align 8           ; 2 uses
  %i.ajo = ptrtoint ptr %i.ajm to i64
  %i.ajp = ptrtoint ptr %i.ajn to i64
  %i.ajq = sub i64 %i.ajo, %i.ajp
  %i.ajr = ashr exact i64 %i.ajq, 4
  %i.ajs = icmp ult i64 %i.ajl, %i.ajr
  br i1 %i.ajs, label %.lr.ph284.i, label %.loopexit.i, !llvm.loop !140

.loopexit.i:                                      ; preds = %_ZN5glTF28Accessor11ExtractDataIZL24BuildVertexWeightMappingRNS_4Mesh9PrimitiveERSt6vectorIS5_I14aiVertexWeightSaIS6_EESaIS8_EEPS5_IjSaIjEEE9Indices16EEmRPT_PKSD_.exit.i, %_ZN5glTF28Accessor11ExtractDataIZL24BuildVertexWeightMappingRNS_4Mesh9PrimitiveERSt6vectorIS5_I14aiVertexWeightSaIS6_EESaIS8_EEPS5_IjSaIjEEE8Indices8EEmRPT_PKSD_.exit.i, %bb.el, %bb.cm
  %.083.i = phi ptr [ %i.lb, %bb.cm ], [ null, %bb.el ], [ %i.lb, %_ZN5glTF28Accessor11ExtractDataIZL24BuildVertexWeightMappingRNS_4Mesh9PrimitiveERSt6vectorIS5_I14aiVertexWeightSaIS6_EESaIS8_EEPS5_IjSaIjEEE8Indices8EEmRPT_PKSD_.exit.i ], [ null, %_ZN5glTF28Accessor11ExtractDataIZL24BuildVertexWeightMappingRNS_4Mesh9PrimitiveERSt6vectorIS5_I14aiVertexWeightSaIS6_EESaIS8_EEPS5_IjSaIjEEE9Indices16EEmRPT_PKSD_.exit.i ] ; 4 uses
  %.082.i = phi ptr [ null, %bb.cm ], [ %i.lb, %bb.el ], [ null, %_ZN5glTF28Accessor11ExtractDataIZL24BuildVertexWeightMappingRNS_4Mesh9PrimitiveERSt6vectorIS5_I14aiVertexWeightSaIS6_EESaIS8_EEPS5_IjSaIjEEE8Indices8EEmRPT_PKSD_.exit.i ], [ %i.lb, %_ZN5glTF28Accessor11ExtractDataIZL24BuildVertexWeightMappingRNS_4Mesh9PrimitiveERSt6vectorIS5_I14aiVertexWeightSaIS6_EESaIS8_EEPS5_IjSaIjEEE9Indices16EEmRPT_PKSD_.exit.i ] ; 5 uses
  %i.ajt = icmp eq ptr %.083.i, null              ; 3 uses
  %i.aju = icmp eq ptr %.082.i, null              ; 3 uses
  %i.ajv = load ptr, ptr %i.ja, align 8           ; 2 uses
  %i.ajw = load ptr, ptr %i.iy, align 8           ; 2 uses
  %.not298.i = icmp eq ptr %i.ajv, %i.ajw
  br i1 %.not298.i, label %._crit_edge294.i, label %.preheader226.lr.ph.i

.preheader226.lr.ph.i:                            ; preds = %.loopexit.i
  %.not299.i = icmp eq i64 %i.ol, 0
  br i1 %.not299.i, label %.preheader.i, label %.preheader226.us.i.preheader

.preheader226.us.i.preheader:                     ; preds = %.preheader226.lr.ph.i
  %i.ajx = ptrtoint ptr %i.im to i64
  br label %.preheader226.us.i

.preheader226.us.i:                               ; preds = %.preheader226.us.i.preheader, %._crit_edge290.i
  %i.ajy = phi ptr [ %i.ans, %._crit_edge290.i ], [ %i.il, %.preheader226.us.i.preheader ]
  %.079291.us.i = phi i64 [ %63, %._crit_edge290.i ], [ 0, %.preheader226.us.i.preheader ] ; 4 uses
  %i.ajz = getelementptr inbounds nuw [8 x i8], ptr %i.kf, i64 %.079291.us.i
  %i.aka = getelementptr inbounds nuw [8 x i8], ptr %.083.i, i64 %.079291.us.i
  %i.akb = getelementptr inbounds nuw [8 x i8], ptr %.082.i, i64 %.079291.us.i
  br label %.preheader225.i

.preheader.i:                                     ; preds = %._crit_edge290.i, %.preheader226.lr.ph.i
  %26 = phi ptr [ %i.ajw, %.preheader226.lr.ph.i ], [ %65, %._crit_edge290.i ] ; 2 uses
  %27 = phi ptr [ %i.ajv, %.preheader226.lr.ph.i ], [ %64, %._crit_edge290.i ] ; 2 uses
  %.not300.i = icmp eq ptr %27, %26
  br i1 %.not300.i, label %._crit_edge294.i, label %.lr.ph293.i

.lr.ph293.i:                                      ; preds = %.preheader.i
  br i1 %i.ajt, label %.lr.ph293.split.us.i, label %.lr.ph293.i.a

.lr.ph293.split.us.i:                             ; preds = %.lr.ph293.i
  br i1 %i.aju, label %.lr.ph293.split.us.split.us.i, label %.lr.ph293.split.us.split.i

.lr.ph293.split.us.split.us.i:                    ; preds = %.lr.ph293.split.us.i, %34
  %28 = phi ptr [ %35, %34 ], [ %26, %.lr.ph293.split.us.i ]
  %29 = phi ptr [ %36, %34 ], [ %27, %.lr.ph293.split.us.i ]
  %.0292.us.us.i = phi i64 [ %37, %34 ], [ 0, %.lr.ph293.split.us.i ] ; 2 uses
  %30 = getelementptr inbounds nuw [8 x i8], ptr %i.kf, i64 %.0292.us.us.i
  %31 = load ptr, ptr %30, align 8                ; 2 uses
  %32 = icmp eq ptr %31, null
  br i1 %32, label %34, label %33

33:                                               ; preds = %.lr.ph293.split.us.split.us.i
  call void @_ZdaPv(ptr noundef nonnull %31) #35
  %.pre382.i = load ptr, ptr %i.ja, align 8
  %.pre383.i = load ptr, ptr %i.iy, align 8
  br label %34

34:                                               ; preds = %33, %.lr.ph293.split.us.split.us.i
  %35 = phi ptr [ %.pre383.i, %33 ], [ %28, %.lr.ph293.split.us.split.us.i ] ; 2 uses
  %36 = phi ptr [ %.pre382.i, %33 ], [ %29, %.lr.ph293.split.us.split.us.i ] ; 2 uses
  %37 = add nuw i64 %.0292.us.us.i, 1             ; 2 uses
  %38 = ptrtoint ptr %36 to i64
  %39 = ptrtoint ptr %35 to i64
  %40 = sub i64 %38, %39
  %41 = ashr exact i64 %40, 4
  %42 = icmp ult i64 %37, %41
  br i1 %42, label %.lr.ph293.split.us.split.us.i, label %._crit_edge294.i, !llvm.loop !141

.lr.ph293.split.us.split.i:                       ; preds = %.lr.ph293.split.us.i, %52
  %.0292.us.i = phi i64 [ %53, %52 ], [ 0, %.lr.ph293.split.us.i ] ; 3 uses
  %43 = getelementptr inbounds nuw [8 x i8], ptr %i.kf, i64 %.0292.us.i
  %44 = load ptr, ptr %43, align 8                ; 2 uses
  %45 = icmp eq ptr %44, null
  br i1 %45, label %47, label %46

46:                                               ; preds = %.lr.ph293.split.us.split.i
  call void @_ZdaPv(ptr noundef nonnull %44) #35
  br label %47

47:                                               ; preds = %46, %.lr.ph293.split.us.split.i
  %48 = getelementptr inbounds nuw [8 x i8], ptr %.082.i, i64 %.0292.us.i
  %49 = load ptr, ptr %48, align 8                ; 2 uses
  %50 = icmp eq ptr %49, null
  br i1 %50, label %52, label %51

51:                                               ; preds = %47
  call void @_ZdaPv(ptr noundef nonnull %49) #35
  br label %52

52:                                               ; preds = %51, %47
  %53 = add nuw i64 %.0292.us.i, 1                ; 2 uses
  %54 = load ptr, ptr %i.ja, align 8
  %55 = load ptr, ptr %i.iy, align 8
  %56 = ptrtoint ptr %54 to i64
  %57 = ptrtoint ptr %55 to i64
  %58 = sub i64 %56, %57
  %59 = ashr exact i64 %58, 4
  %60 = icmp ult i64 %53, %59
  br i1 %60, label %.lr.ph293.split.us.split.i, label %._crit_edge294.i, !llvm.loop !141

.preheader225.i:                                  ; preds = %bb.gk, %.preheader226.us.i
  %61 = phi ptr [ %i.ajy, %.preheader226.us.i ], [ %i.ans, %bb.gk ]
  %.078289.i = phi i64 [ 0, %.preheader226.us.i ], [ %i.akc, %bb.gk ] ; 5 uses
  %62 = trunc i64 %.078289.i to i32               ; 2 uses
  br label %bb.gl

._crit_edge290.i:                                 ; preds = %bb.gk
  %63 = add nuw i64 %.079291.us.i, 1              ; 2 uses
  %64 = load ptr, ptr %i.ja, align 8              ; 2 uses
  %65 = load ptr, ptr %i.iy, align 8              ; 2 uses
  %66 = ptrtoint ptr %64 to i64
  %67 = ptrtoint ptr %65 to i64
  %68 = sub i64 %66, %67
  %69 = ashr exact i64 %68, 4
  %70 = icmp ult i64 %63, %69
  br i1 %70, label %.preheader226.us.i, label %.preheader.i, !llvm.loop !142

bb.gk:                                            ; preds = %_ZNSt6vectorI14aiVertexWeightSaIS0_EE12emplace_backIJjRKfEEERS0_DpOT_.exit.us.i
  %i.akc = add nuw i64 %.078289.i, 1              ; 2 uses
  %exitcond366.not.i = icmp eq i64 %i.akc, %i.ol
  br i1 %exitcond366.not.i, label %._crit_edge290.i, label %.preheader225.i, !llvm.loop !143

bb.gl:                                            ; preds = %_ZNSt6vectorI14aiVertexWeightSaIS0_EE12emplace_backIJjRKfEEERS0_DpOT_.exit.us.i, %.preheader225.i
  %i.akd = phi ptr [ %61, %.preheader225.i ], [ %i.ans, %_ZNSt6vectorI14aiVertexWeightSaIS0_EE12emplace_backIJjRKfEEERS0_DpOT_.exit.us.i ] ; 5 uses
  %indvars.iv.i = phi i64 [ 0, %.preheader225.i ], [ %indvars.iv.next.i, %_ZNSt6vectorI14aiVertexWeightSaIS0_EE12emplace_backIJjRKfEEERS0_DpOT_.exit.us.i ] ; 4 uses
  br i1 %i.ajt, label %bb.gn, label %bb.gm

bb.gm:                                            ; preds = %bb.gl
  %i.ake = load ptr, ptr %i.aka, align 8
  %i.akf = getelementptr inbounds nuw [4 x i8], ptr %i.ake, i64 %.078289.i
  %i.akg = getelementptr inbounds nuw i8, ptr %i.akf, i64 %indvars.iv.i
  %i.akh = load i8, ptr %i.akg, align 1
  %i.aki = zext i8 %i.akh to i64
  br label %bb.go

bb.gn:                                            ; preds = %bb.gl
  %i.akj = load ptr, ptr %i.akb, align 8
  %i.akk = getelementptr inbounds nuw [8 x i8], ptr %i.akj, i64 %.078289.i
  %i.akl = getelementptr inbounds nuw [2 x i8], ptr %i.akk, i64 %indvars.iv.i
  %i.akm = load i16, ptr %i.akl, align 2
  %i.akn = zext i16 %i.akm to i64
  br label %bb.go

bb.go:                                            ; preds = %bb.gn, %bb.gm
  %i.ako = phi i64 [ %i.aki, %bb.gm ], [ %i.akn, %bb.gn ] ; 4 uses
  %i.akp = load ptr, ptr %i.ajz, align 8
  %i.akq = getelementptr inbounds nuw [16 x i8], ptr %i.akp, i64 %.078289.i
  %i.akr = getelementptr inbounds nuw [4 x i8], ptr %i.akq, i64 %indvars.iv.i
  %i.aks = load float, ptr %i.akr, align 4        ; 3 uses
  %i.akt = fcmp ogt float %i.aks, 0.000000e+00
  br i1 %i.akt, label %bb.gp, label %_ZNSt6vectorI14aiVertexWeightSaIS0_EE12emplace_backIJjRKfEEERS0_DpOT_.exit.us.i

bb.gp:                                            ; preds = %bb.go
  %i.aku = ptrtoint ptr %i.akd to i64
  %i.akv = sub i64 %i.ajx, %i.aku
  %i.akw = sdiv exact i64 %i.akv, 24
  %i.akx = icmp ult i64 %i.ako, %i.akw
  br i1 %i.akx, label %bb.gq, label %_ZNSt6vectorI14aiVertexWeightSaIS0_EE12emplace_backIJjRKfEEERS0_DpOT_.exit.us.i

bb.gq:                                            ; preds = %bb.gp
  %i.aky = getelementptr inbounds nuw [24 x i8], ptr %i.akd, i64 %i.ako ; 4 uses
  %i.akz = getelementptr inbounds nuw i8, ptr %i.aky, i64 16 ; 2 uses
  %i.ala = load ptr, ptr %i.akz, align 8          ; 2 uses
  %i.alb = load ptr, ptr %i.aky, align 8          ; 7 uses
  %i.alc = ptrtoint ptr %i.ala to i64
  %i.ald = ptrtoint ptr %i.alb to i64             ; 4 uses
  %i.ale = sub i64 %i.alc, %i.ald                 ; 2 uses
  %i.alf = icmp ult i64 %i.ale, 64
  br i1 %i.alf, label %_ZNSt12_Vector_baseI14aiVertexWeightSaIS0_EE11_M_allocateEm.exit.i.us.i, label %_ZNSt6vectorI14aiVertexWeightSaIS0_EE7reserveEm.exit.us.i

_ZNSt12_Vector_baseI14aiVertexWeightSaIS0_EE11_M_allocateEm.exit.i.us.i: ; preds = %bb.gq
  %i.alg = getelementptr inbounds nuw i8, ptr %i.aky, i64 8 ; 2 uses
  %i.alh = load ptr, ptr %i.alg, align 8          ; 3 uses
  %i.ali = ptrtoint ptr %i.alh to i64             ; 2 uses
  %i.alj = sub i64 %i.ali, %i.ald
  %i.alk = invoke noalias noundef nonnull dereferenceable(64) ptr @_Znwm(i64 noundef 64) #37
          to label %.noexc171 unwind label %.loopexit236 ; 7 uses

.noexc171:                                        ; preds = %_ZNSt12_Vector_baseI14aiVertexWeightSaIS0_EE11_M_allocateEm.exit.i.us.i
  %.not10.i.i.i.i.us.i = icmp eq ptr %i.alb, %i.alh
  br i1 %.not10.i.i.i.i.us.i, label %_ZNSt6vectorI14aiVertexWeightSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit.i.us.i, label %.lr.ph.i.i.i.i.us.i.preheader

.lr.ph.i.i.i.i.us.i.preheader:                    ; preds = %.noexc171
  %i.all = ptrtoaddr ptr %i.alk to i64
  %i.alm = add i64 %i.ali, -8
  %i.aln = sub i64 %i.alm, %i.ald                 ; 2 uses
  %i.alo = lshr i64 %i.aln, 3
  %i.alp = add nuw nsw i64 %i.alo, 1              ; 2 uses
  %min.iters.check805 = icmp ult i64 %i.aln, 24
  %i.alq = sub i64 %i.all, %i.ald
  %diff.check803 = icmp ult i64 %i.alq, 32
  %or.cond851 = or i1 %min.iters.check805, %diff.check803
  br i1 %or.cond851, label %.lr.ph.i.i.i.i.us.i.preheader854, label %vector.ph806

vector.ph806:                                     ; preds = %.lr.ph.i.i.i.i.us.i.preheader
  %n.vec808 = and i64 %i.alp, 4611686018427387900 ; 3 uses
  %i.alr = shl i64 %n.vec808, 3                   ; 2 uses
  %i.als = getelementptr i8, ptr %i.alk, i64 %i.alr
  %i.alt = getelementptr i8, ptr %i.alb, i64 %i.alr
  br label %vector.body809

vector.body809:                                   ; preds = %vector.body809, %vector.ph806
  %index810 = phi i64 [ 0, %vector.ph806 ], [ %index.next815, %vector.body809 ] ; 2 uses
  %i.alu = shl i64 %index810, 3                   ; 2 uses
  %next.gep811 = getelementptr i8, ptr %i.alk, i64 %i.alu ; 2 uses
  %next.gep812.a = getelementptr i8, ptr %i.alb, i64 %i.alu ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !144)
  call void @llvm.experimental.noalias.scope.decl(metadata !147)
  %i.alv = getelementptr i8, ptr %next.gep812.a, i64 16
  %wide.load813.a = load <2 x i64>, ptr %next.gep812.a, align 4, !alias.scope !147, !noalias !144
  %wide.load814 = load <2 x i64>, ptr %i.alv, align 4, !alias.scope !147, !noalias !144
  %i.alw = getelementptr i8, ptr %next.gep811, i64 16
  store <2 x i64> %wide.load813.a, ptr %next.gep811, align 4, !alias.scope !144, !noalias !147
  store <2 x i64> %wide.load814, ptr %i.alw, align 4, !alias.scope !144, !noalias !147
  %index.next815 = add nuw i64 %index810, 4       ; 2 uses
  %i.alx = icmp eq i64 %index.next815, %n.vec808
  br i1 %i.alx, label %middle.block816, label %vector.body809, !llvm.loop !149

middle.block816:                                  ; preds = %vector.body809
  %cmp.n817 = icmp eq i64 %i.alp, %n.vec808
  br i1 %cmp.n817, label %_ZNSt6vectorI14aiVertexWeightSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit.i.us.i, label %.lr.ph.i.i.i.i.us.i.preheader854

.lr.ph.i.i.i.i.us.i.preheader854:                 ; preds = %.lr.ph.i.i.i.i.us.i.preheader, %middle.block816
  %.012.i.i.i.i.us.i.ph = phi ptr [ %i.alk, %.lr.ph.i.i.i.i.us.i.preheader ], [ %i.als, %middle.block816 ]
  %.0911.i.i.i.i.us.i.ph = phi ptr [ %i.alb, %.lr.ph.i.i.i.i.us.i.preheader ], [ %i.alt, %middle.block816 ]
  br label %.lr.ph.i.i.i.i.us.i

.lr.ph.i.i.i.i.us.i:                              ; preds = %.lr.ph.i.i.i.i.us.i.preheader854, %.lr.ph.i.i.i.i.us.i
  %.012.i.i.i.i.us.i = phi ptr [ %i.ama, %.lr.ph.i.i.i.i.us.i ], [ %.012.i.i.i.i.us.i.ph, %.lr.ph.i.i.i.i.us.i.preheader854 ] ; 2 uses
  %.0911.i.i.i.i.us.i = phi ptr [ %i.alz, %.lr.ph.i.i.i.i.us.i ], [ %.0911.i.i.i.i.us.i.ph, %.lr.ph.i.i.i.i.us.i.preheader854 ] ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !144)
  call void @llvm.experimental.noalias.scope.decl(metadata !147)
  %i.aly = load i64, ptr %.0911.i.i.i.i.us.i, align 4, !alias.scope !147, !noalias !144
  store i64 %i.aly, ptr %.012.i.i.i.i.us.i, align 4, !alias.scope !144, !noalias !147
  %i.alz = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.us.i, i64 8 ; 2 uses
  %i.ama = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.us.i, i64 8
  %.not.i.i.i.i.us.i = icmp eq ptr %i.alz, %i.alh
  br i1 %.not.i.i.i.i.us.i, label %_ZNSt6vectorI14aiVertexWeightSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit.i.us.i, label %.lr.ph.i.i.i.i.us.i, !llvm.loop !150

_ZNSt6vectorI14aiVertexWeightSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit.i.us.i: ; preds = %.lr.ph.i.i.i.i.us.i, %middle.block816, %.noexc171
  %.not.i8.i.us.i = icmp eq ptr %i.alb, null
  br i1 %.not.i8.i.us.i, label %_ZNSt12_Vector_baseI14aiVertexWeightSaIS0_EE13_M_deallocateEPS0_m.exit.i.us.i, label %bb.gr

bb.gr:                                            ; preds = %_ZNSt6vectorI14aiVertexWeightSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit.i.us.i
  call void @_ZdlPvm(ptr noundef nonnull %i.alb, i64 noundef %i.ale) #35
  br label %_ZNSt12_Vector_baseI14aiVertexWeightSaIS0_EE13_M_deallocateEPS0_m.exit.i.us.i

_ZNSt12_Vector_baseI14aiVertexWeightSaIS0_EE13_M_deallocateEPS0_m.exit.i.us.i: ; preds = %bb.gr, %_ZNSt6vectorI14aiVertexWeightSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit.i.us.i
  store ptr %i.alk, ptr %i.aky, align 8
  %i.amb = getelementptr inbounds nuw i8, ptr %i.alk, i64 %i.alj
  store ptr %i.amb, ptr %i.alg, align 8
  %i.amc = getelementptr inbounds nuw i8, ptr %i.alk, i64 64
  store ptr %i.amc, ptr %i.akz, align 8
  %.pre377.i = load ptr, ptr %21, align 8         ; 2 uses
  %.phi.trans.insert378.i = getelementptr inbounds nuw [24 x i8], ptr %.pre377.i, i64 %i.ako
  %.phi.trans.insert379.i = getelementptr inbounds nuw i8, ptr %.phi.trans.insert378.i, i64 16
  %.pre380.i = load ptr, ptr %.phi.trans.insert379.i, align 8
  br label %_ZNSt6vectorI14aiVertexWeightSaIS0_EE7reserveEm.exit.us.i

_ZNSt6vectorI14aiVertexWeightSaIS0_EE7reserveEm.exit.us.i: ; preds = %_ZNSt12_Vector_baseI14aiVertexWeightSaIS0_EE13_M_deallocateEPS0_m.exit.i.us.i, %bb.gq
  %i.amd = phi ptr [ %i.akd, %bb.gq ], [ %.pre377.i, %_ZNSt12_Vector_baseI14aiVertexWeightSaIS0_EE13_M_deallocateEPS0_m.exit.i.us.i ] ; 3 uses
  %i.ame = phi ptr [ %i.ala, %bb.gq ], [ %.pre380.i, %_ZNSt12_Vector_baseI14aiVertexWeightSaIS0_EE13_M_deallocateEPS0_m.exit.i.us.i ] ; 4 uses
  %i.amf = getelementptr inbounds nuw [24 x i8], ptr %i.amd, i64 %i.ako ; 4 uses
  %i.amg = getelementptr inbounds nuw i8, ptr %i.amf, i64 8 ; 4 uses
  %i.amh = load ptr, ptr %i.amg, align 8          ; 3 uses
  %i.ami = getelementptr inbounds nuw i8, ptr %i.amf, i64 16
  %.not.i221.us.i = icmp eq ptr %i.amh, %i.ame
  br i1 %.not.i221.us.i, label %bb.gt, label %bb.gs

bb.gs:                                            ; preds = %_ZNSt6vectorI14aiVertexWeightSaIS0_EE7reserveEm.exit.us.i
  store i32 %62, ptr %i.amh, align 4
  %i.amj = getelementptr inbounds nuw i8, ptr %i.amh, i64 4
  store float %i.aks, ptr %i.amj, align 4
  %i.amk = load ptr, ptr %i.amg, align 8
  %i.aml = getelementptr inbounds nuw i8, ptr %i.amk, i64 8
  store ptr %i.aml, ptr %i.amg, align 8
  br label %_ZNSt6vectorI14aiVertexWeightSaIS0_EE12emplace_backIJjRKfEEERS0_DpOT_.exit.us.i

bb.gt:                                            ; preds = %_ZNSt6vectorI14aiVertexWeightSaIS0_EE7reserveEm.exit.us.i
  %i.amm = load ptr, ptr %i.amf, align 8          ; 7 uses
  %i.amn = ptrtoint ptr %i.ame to i64             ; 2 uses
  %i.amo = ptrtoint ptr %i.amm to i64             ; 3 uses
  %i.amp = sub i64 %i.amn, %i.amo                 ; 4 uses
  %i.amq = icmp eq i64 %i.amp, 9223372036854775800
  br i1 %i.amq, label %71, label %_ZNKSt6vectorI14aiVertexWeightSaIS0_EE12_M_check_lenEmPKc.exit.i.i.us.i

71:                                               ; preds = %bb.gt
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.74) #36
          to label %.noexc172 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc172:                                        ; preds = %71
  unreachable

_ZNKSt6vectorI14aiVertexWeightSaIS0_EE12_M_check_lenEmPKc.exit.i.i.us.i: ; preds = %bb.gt
  %i.amr = ashr exact i64 %i.amp, 3               ; 3 uses
  %.sroa.speculated.i.i.i.us.i = call i64 @llvm.umax.i64(i64 %i.amr, i64 1)
  %i.ams = add nsw i64 %.sroa.speculated.i.i.i.us.i, %i.amr ; 2 uses
  %i.amt = icmp ult i64 %i.ams, %i.amr
  %i.amu = call i64 @llvm.umin.i64(i64 %i.ams, i64 1152921504606846975)
  %i.amv = select i1 %i.amt, i64 1152921504606846975, i64 %i.amu ; 3 uses
  %.not.i.i.i222.us.i = icmp ne i64 %i.amv, 0
  call void @llvm.assume(i1 %.not.i.i.i222.us.i)
  %i.amw = shl nuw nsw i64 %i.amv, 3
  %i.amx = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.amw) #37
          to label %.noexc172.a unwind label %.loopexit236 ; 8 uses

.noexc172.a:                                      ; preds = %_ZNKSt6vectorI14aiVertexWeightSaIS0_EE12_M_check_lenEmPKc.exit.i.i.us.i
  %i.amy = getelementptr inbounds nuw i8, ptr %i.amx, i64 %i.amp ; 2 uses
  store i32 %62, ptr %i.amy, align 4
  %i.amz = getelementptr inbounds nuw i8, ptr %i.amy, i64 4
  store float %i.aks, ptr %i.amz, align 4
  %.not10.i.i.i.i.i.us.i = icmp eq ptr %i.amm, %i.ame
  br i1 %.not10.i.i.i.i.i.us.i, label %_ZNSt6vectorI14aiVertexWeightSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit33.i.i.us.i, label %.lr.ph.i.i.i.i.i.us.i.preheader

.lr.ph.i.i.i.i.i.us.i.preheader:                  ; preds = %.noexc172.a
  %i.ana = ptrtoaddr ptr %i.amx to i64
  %i.anb = add i64 %i.amn, -8
  %i.anc = sub i64 %i.anb, %i.amo                 ; 2 uses
  %i.and = lshr i64 %i.anc, 3
  %i.ane = add nuw nsw i64 %i.and, 1              ; 2 uses
  %min.iters.check = icmp ult i64 %i.anc, 24
  %i.anf = sub i64 %i.ana, %i.amo
  %diff.check = icmp ult i64 %i.anf, 32
  %or.cond852 = or i1 %min.iters.check, %diff.check
  br i1 %or.cond852, label %.lr.ph.i.i.i.i.i.us.i.preheader853, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.i.i.i.i.us.i.preheader
  %n.vec = and i64 %i.ane, 4611686018427387900    ; 3 uses
  %i.ang = shl i64 %n.vec, 3                      ; 2 uses
  %i.anh = getelementptr i8, ptr %i.amx, i64 %i.ang ; 2 uses
  %i.ani = getelementptr i8, ptr %i.amm, i64 %i.ang
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.anj = shl i64 %index, 3                      ; 2 uses
  %next.gep = getelementptr i8, ptr %i.amx, i64 %i.anj ; 2 uses
  %next.gep799 = getelementptr i8, ptr %i.amm, i64 %i.anj ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !151)
  call void @llvm.experimental.noalias.scope.decl(metadata !154)
  %i.ank = getelementptr i8, ptr %next.gep799, i64 16
  %wide.load = load <2 x i64>, ptr %next.gep799, align 4, !alias.scope !154, !noalias !151
  %wide.load800 = load <2 x i64>, ptr %i.ank, align 4, !alias.scope !154, !noalias !151
  %i.anl = getelementptr i8, ptr %next.gep, i64 16
  store <2 x i64> %wide.load, ptr %next.gep, align 4, !alias.scope !151, !noalias !154
  store <2 x i64> %wide.load800, ptr %i.anl, align 4, !alias.scope !151, !noalias !154
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.anm = icmp eq i64 %index.next, %n.vec
  br i1 %i.anm, label %middle.block, label %vector.body, !llvm.loop !156

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.ane, %n.vec
  br i1 %cmp.n, label %_ZNSt6vectorI14aiVertexWeightSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit33.i.i.us.i, label %.lr.ph.i.i.i.i.i.us.i.preheader853

.lr.ph.i.i.i.i.i.us.i.preheader853:               ; preds = %.lr.ph.i.i.i.i.i.us.i.preheader, %middle.block
  %.012.i.i.i.i.i.us.i.ph = phi ptr [ %i.amx, %.lr.ph.i.i.i.i.i.us.i.preheader ], [ %i.anh, %middle.block ]
  %.0911.i.i.i.i.i.us.i.ph = phi ptr [ %i.amm, %.lr.ph.i.i.i.i.i.us.i.preheader ], [ %i.ani, %middle.block ]
  br label %.lr.ph.i.i.i.i.i.us.i

.lr.ph.i.i.i.i.i.us.i:                            ; preds = %.lr.ph.i.i.i.i.i.us.i.preheader853, %.lr.ph.i.i.i.i.i.us.i
  %.012.i.i.i.i.i.us.i = phi ptr [ %i.anp, %.lr.ph.i.i.i.i.i.us.i ], [ %.012.i.i.i.i.i.us.i.ph, %.lr.ph.i.i.i.i.i.us.i.preheader853 ] ; 2 uses
  %.0911.i.i.i.i.i.us.i = phi ptr [ %i.ano, %.lr.ph.i.i.i.i.i.us.i ], [ %.0911.i.i.i.i.i.us.i.ph, %.lr.ph.i.i.i.i.i.us.i.preheader853 ] ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !151)
  call void @llvm.experimental.noalias.scope.decl(metadata !154)
  %i.ann = load i64, ptr %.0911.i.i.i.i.i.us.i, align 4, !alias.scope !154, !noalias !151
  store i64 %i.ann, ptr %.012.i.i.i.i.i.us.i, align 4, !alias.scope !151, !noalias !154
  %i.ano = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.us.i, i64 8 ; 2 uses
  %i.anp = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.us.i, i64 8 ; 2 uses
  %.not.i.i.i.i.i.us.i = icmp eq ptr %i.ano, %i.ame
  br i1 %.not.i.i.i.i.i.us.i, label %_ZNSt6vectorI14aiVertexWeightSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit33.i.i.us.i, label %.lr.ph.i.i.i.i.i.us.i, !llvm.loop !157

_ZNSt6vectorI14aiVertexWeightSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit33.i.i.us.i: ; preds = %.lr.ph.i.i.i.i.i.us.i, %middle.block, %.noexc172.a
  %.0.lcssa.i.i.i.i.i.us.i = phi ptr [ %i.amx, %.noexc172.a ], [ %i.anh, %middle.block ], [ %i.anp, %.lr.ph.i.i.i.i.i.us.i ]
  %i.anq = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.us.i, i64 8
  %.not.i34.i.i.us.i = icmp eq ptr %i.amm, null
  br i1 %.not.i34.i.i.us.i, label %_ZNSt6vectorI14aiVertexWeightSaIS0_EE17_M_realloc_insertIJjRKfEEEvN9__gnu_cxx17__normal_iteratorIPS0_S2_EEDpOT_.exit.i.us.i, label %bb.gu

bb.gu:                                            ; preds = %_ZNSt6vectorI14aiVertexWeightSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit33.i.i.us.i
  call void @_ZdlPvm(ptr noundef nonnull %i.amm, i64 noundef %i.amp) #35
  br label %_ZNSt6vectorI14aiVertexWeightSaIS0_EE17_M_realloc_insertIJjRKfEEEvN9__gnu_cxx17__normal_iteratorIPS0_S2_EEDpOT_.exit.i.us.i

_ZNSt6vectorI14aiVertexWeightSaIS0_EE17_M_realloc_insertIJjRKfEEEvN9__gnu_cxx17__normal_iteratorIPS0_S2_EEDpOT_.exit.i.us.i: ; preds = %bb.gu, %_ZNSt6vectorI14aiVertexWeightSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit33.i.i.us.i
  store ptr %i.amx, ptr %i.amf, align 8
  store ptr %i.anq, ptr %i.amg, align 8
  %i.anr = getelementptr inbounds nuw [8 x i8], ptr %i.amx, i64 %i.amv
  store ptr %i.anr, ptr %i.ami, align 8
  br label %_ZNSt6vectorI14aiVertexWeightSaIS0_EE12emplace_backIJjRKfEEERS0_DpOT_.exit.us.i

_ZNSt6vectorI14aiVertexWeightSaIS0_EE12emplace_backIJjRKfEEERS0_DpOT_.exit.us.i: ; preds = %_ZNSt6vectorI14aiVertexWeightSaIS0_EE17_M_realloc_insertIJjRKfEEEvN9__gnu_cxx17__normal_iteratorIPS0_S2_EEDpOT_.exit.i.us.i, %bb.gs, %bb.gp, %bb.go
  %i.ans = phi ptr [ %i.amd, %_ZNSt6vectorI14aiVertexWeightSaIS0_EE17_M_realloc_insertIJjRKfEEEvN9__gnu_cxx17__normal_iteratorIPS0_S2_EEDpOT_.exit.i.us.i ], [ %i.amd, %bb.gs ], [ %i.akd, %bb.gp ], [ %i.akd, %bb.go ] ; 3 uses
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, 4
  br i1 %exitcond.not.i, label %bb.gk, label %bb.gl, !llvm.loop !158

.lr.ph293.i.a:                                    ; preds = %.lr.ph293.i, %bb.hb
  %.0292.i = phi i64 [ %i.aoc, %bb.hb ], [ 0, %.lr.ph293.i ] ; 4 uses
  %i.ant = getelementptr inbounds nuw [8 x i8], ptr %i.kf, i64 %.0292.i
  %i.anu = load ptr, ptr %i.ant, align 8          ; 2 uses
  %i.anv = icmp eq ptr %i.anu, null
  br i1 %i.anv, label %bb.gw, label %bb.gv

bb.gv:                                            ; preds = %.lr.ph293.i.a
  call void @_ZdaPv(ptr noundef nonnull %i.anu) #35
  br label %bb.gw

bb.gw:                                            ; preds = %bb.gv, %.lr.ph293.i.a
  %i.anw = getelementptr inbounds nuw [8 x i8], ptr %.083.i, i64 %.0292.i
  %i.anx = load ptr, ptr %i.anw, align 8          ; 2 uses
  %i.any = icmp eq ptr %i.anx, null
  br i1 %i.any, label %bb.gy, label %bb.gx

bb.gx:                                            ; preds = %bb.gw
  call void @_ZdaPv(ptr noundef nonnull %i.anx) #35
  br label %bb.gy

bb.gy:                                            ; preds = %bb.gx, %bb.gw
  br i1 %i.aju, label %bb.hb, label %bb.gz

bb.gz:                                            ; preds = %bb.gy
  %i.anz = getelementptr inbounds nuw [8 x i8], ptr %.082.i, i64 %.0292.i
  %i.aoa = load ptr, ptr %i.anz, align 8          ; 2 uses
  %i.aob = icmp eq ptr %i.aoa, null
  br i1 %i.aob, label %bb.hb, label %bb.ha

bb.ha:                                            ; preds = %bb.gz
  call void @_ZdaPv(ptr noundef nonnull %i.aoa) #35
  br label %bb.hb

bb.hb:                                            ; preds = %bb.ha, %bb.gz, %bb.gy
  %i.aoc = add nuw i64 %.0292.i, 1                ; 2 uses
  %i.aod = load ptr, ptr %i.ja, align 8
  %i.aoe = load ptr, ptr %i.iy, align 8
  %i.aof = ptrtoint ptr %i.aod to i64
  %i.aog = ptrtoint ptr %i.aoe to i64
  %i.aoh = sub i64 %i.aof, %i.aog
  %i.aoi = ashr exact i64 %i.aoh, 4
  %i.aoj = icmp ult i64 %i.aoc, %i.aoi
  br i1 %i.aoj, label %.lr.ph293.i.a, label %._crit_edge294.thread.i, !llvm.loop !141

._crit_edge294.thread.i:                          ; preds = %bb.hb
  call void @_ZdaPv(ptr noundef nonnull %i.kf) #35
  br label %bb.hc

._crit_edge294.i:                                 ; preds = %52, %34, %.preheader.i, %.loopexit.i
  call void @_ZdaPv(ptr noundef nonnull %i.kf) #35
  br i1 %i.ajt, label %bb.hd, label %bb.hc

bb.hc:                                            ; preds = %._crit_edge294.i, %._crit_edge294.thread.i
  call void @_ZdaPv(ptr noundef nonnull %.083.i) #35
  br label %bb.hd

bb.hd:                                            ; preds = %bb.hc, %._crit_edge294.i
  br i1 %i.aju, label %_ZL24BuildVertexWeightMappingRN5glTF24Mesh9PrimitiveERSt6vectorIS3_I14aiVertexWeightSaIS4_EESaIS6_EEPS3_IjSaIjEE.exit, label %bb.he

bb.he:                                            ; preds = %bb.hd
  call void @_ZdaPv(ptr noundef nonnull %.082.i) #35
  br label %_ZL24BuildVertexWeightMappingRN5glTF24Mesh9PrimitiveERSt6vectorIS3_I14aiVertexWeightSaIS4_EESaIS6_EEPS3_IjSaIjEE.exit

_ZL24BuildVertexWeightMappingRN5glTF24Mesh9PrimitiveERSt6vectorIS3_I14aiVertexWeightSaIS4_EESaIS6_EEPS3_IjSaIjEE.exit: ; preds = %bb.he, %bb.hd, %bb.ag, %bb.af, %_ZNSt12_Vector_baseISt6vectorI14aiVertexWeightSaIS1_EESaIS3_EEC2EmRKS4_.exit.thread.i
  %i.aok = getelementptr inbounds nuw i8, ptr %i.hl, i64 216 ; 2 uses
  store i32 %i.ia, ptr %i.aok, align 8
  %i.aol = shl nuw nsw i64 %i.ih, 3
  %i.aom = invoke noalias noundef nonnull ptr @_Znam(i64 noundef %i.aol) #37
          to label %bb.hf unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit ; 2 uses

bb.hf:                                            ; preds = %_ZL24BuildVertexWeightMappingRN5glTF24Mesh9PrimitiveERSt6vectorIS3_I14aiVertexWeightSaIS4_EESaIS6_EEPS3_IjSaIjEE.exit
  %i.aon = getelementptr inbounds nuw i8, ptr %i.hl, i64 224 ; 2 uses
  store ptr %i.aom, ptr %i.aon, align 8
  %i.aoo = load i32, ptr %i.aok, align 8          ; 2 uses
  %.not4.i.i.i174 = icmp eq i32 %i.aoo, 0
  br i1 %.not4.i.i.i174, label %_ZSt4fillIPP6aiBoneDnEvT_S3_RKT0_.exit, label %.lr.ph.preheader.i.i.i175

.lr.ph.preheader.i.i.i175:                        ; preds = %bb.hf
  %i.aop = zext i32 %i.aoo to i64
  %.idx235 = shl nuw nsw i64 %i.aop, 3
  call void @llvm.memset.p0.i64(ptr nonnull align 8 %i.aom, i8 0, i64 %.idx235, i1 false)
  br label %_ZSt4fillIPP6aiBoneDnEvT_S3_RKT0_.exit

_ZSt4fillIPP6aiBoneDnEvT_S3_RKT0_.exit:           ; preds = %.lr.ph.preheader.i.i.i175, %bb.hf
  call void @llvm.lifetime.start.p0(ptr nonnull %i.r) #34
  store ptr null, ptr %i.r, align 8
  %i.aoq = load ptr, ptr %i.gf, align 8
  %i.aor = load i32, ptr %i.gh, align 8
  %i.aos = zext i32 %i.aor to i64
  %i.aot = load ptr, ptr %i.aoq, align 8
  %i.aou = getelementptr inbounds nuw [8 x i8], ptr %i.aot, i64 %i.aos
  %i.aov = load ptr, ptr %i.aou, align 8          ; 2 uses
  %i.aow = getelementptr inbounds nuw i8, ptr %i.aov, i64 336
  %i.aox = load ptr, ptr %i.aow, align 8
  %i.aoy = getelementptr inbounds nuw i8, ptr %i.aov, i64 344
  %i.aoz = load i32, ptr %i.aoy, align 8
  %i.apa = zext i32 %i.aoz to i64
  %i.apb = load ptr, ptr %i.aox, align 8
  %i.apc = getelementptr inbounds nuw [8 x i8], ptr %i.apb, i64 %i.apa
  %i.apd = load ptr, ptr %i.apc, align 8
  %i.ape = invoke noundef i64 @_ZN5glTF28Accessor11ExtractDataIA16_fEEmRPT_PKSt6vectorIjSaIjEE(ptr noundef nonnull align 8 dereferenceable(376) %i.apd, ptr noundef nonnull align 8 dereferenceable(8) %i.r, ptr noundef null)
          to label %.preheader240 unwind label %bb.hh ; 0 uses

.preheader240:                                    ; preds = %_ZSt4fillIPP6aiBoneDnEvT_S3_RKT0_.exit
  %.not360 = icmp eq i32 %i.ia, 0
  br i1 %.not360, label %._crit_edge, label %.lr.ph353.preheader

.lr.ph353.preheader:                              ; preds = %.preheader240
  %wide.trip.count = and i64 %i.hz, 4294967295
  br label %.lr.ph353

._crit_edge:                                      ; preds = %bb.ic, %.preheader240
  %i.apf = load ptr, ptr %i.r, align 8            ; 2 uses
  %.not = icmp eq ptr %i.apf, null
  br i1 %.not, label %bb.ie, label %bb.id

bb.hg:                                            ; preds = %.lr.ph.preheader.i.i.i.i.i
  %i.apg = landingpad { ptr, i32 }
          catch ptr null
  br label %bb.ii

.loopexit236:                                     ; preds = %_ZNSt12_Vector_baseI14aiVertexWeightSaIS0_EE11_M_allocateEm.exit.i.us.i, %_ZNKSt6vectorI14aiVertexWeightSaIS0_EE12_M_check_lenEmPKc.exit.i.i.us.i
  %lpad.loopexit = landingpad { ptr, i32 }
          catch ptr null
  br label %.body

.loopexit.split-lp.loopexit:                      ; preds = %_ZN5glTF28Accessor14GetMaxByteSizeEv.exit.i101.i, %switch.lookup833
  %lpad.loopexit246 = landingpad { ptr, i32 }
          catch ptr null
  br label %.body

.loopexit.split-lp.loopexit.split-lp.loopexit:    ; preds = %switch.lookup843, %_ZN5glTF28Accessor14GetMaxByteSizeEv.exit.i165.i
  %lpad.loopexit249 = landingpad { ptr, i32 }
          catch ptr null
  br label %.body

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit: ; preds = %_ZN5glTF28Accessor14GetMaxByteSizeEv.exit.i.i, %switch.lookup823
  %lpad.loopexit252 = landingpad { ptr, i32 }
          catch ptr null
  br label %.body

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit: ; preds = %_ZL24BuildVertexWeightMappingRN5glTF24Mesh9PrimitiveERSt6vectorIS3_I14aiVertexWeightSaIS4_EESaIS6_EEPS3_IjSaIjEE.exit, %.lr.ph.i160, %switch.lookup
  %lpad.loopexit256 = landingpad { ptr, i32 }
          catch ptr null
  br label %.body

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %71
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          catch ptr null
  br label %.body

bb.hh:                                            ; preds = %_ZSt4fillIPP6aiBoneDnEvT_S3_RKT0_.exit
  %i.aph = landingpad { ptr, i32 }
          catch ptr null
  br label %bb.ih

.lr.ph353:                                        ; preds = %.lr.ph353.preheader, %bb.ic
  %indvars.iv448 = phi i64 [ 0, %.lr.ph353.preheader ], [ %indvars.iv.next449, %bb.ic ] ; 6 uses
  %i.api = load ptr, ptr %21, align 8
  %i.apj = getelementptr inbounds nuw [24 x i8], ptr %i.api, i64 %indvars.iv448 ; 3 uses
  %i.apk = invoke noalias noundef nonnull dereferenceable(1120) ptr @_Znwm(i64 noundef 1120) #37
          to label %bb.hi unwind label %bb.hl     ; 25 uses

bb.hi:                                            ; preds = %.lr.ph353
  %i.apl = getelementptr inbounds nuw i8, ptr %i.apk, i64 1056 ; 3 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1120) %i.apk, i8 0, i64 1056, i1 false)
  store float 1.000000e+00, ptr %i.apl, align 4
  %i.apm = getelementptr inbounds nuw i8, ptr %i.apk, i64 1060 ; 2 uses
  %i.apn = getelementptr inbounds nuw i8, ptr %i.apk, i64 1076 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.apm, i8 0, i64 16, i1 false)
  store float 1.000000e+00, ptr %i.apn, align 4
  %i.apo = getelementptr inbounds nuw i8, ptr %i.apk, i64 1080 ; 2 uses
  %i.app = getelementptr inbounds nuw i8, ptr %i.apk, i64 1096 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.apo, i8 0, i64 16, i1 false)
  store float 1.000000e+00, ptr %i.app, align 4
  %i.apq = getelementptr inbounds nuw i8, ptr %i.apk, i64 1100 ; 2 uses
  %i.apr = getelementptr inbounds nuw i8, ptr %i.apk, i64 1116 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.apq, i8 0, i64 16, i1 false)
  store float 1.000000e+00, ptr %i.apr, align 4
  %i.aps = load ptr, ptr %i.gf, align 8
  %i.apt = load i32, ptr %i.gh, align 8
  %i.apu = zext i32 %i.apt to i64
  %i.apv = load ptr, ptr %i.aps, align 8
  %i.apw = getelementptr inbounds nuw [8 x i8], ptr %i.apv, i64 %i.apu
  %i.apx = load ptr, ptr %i.apw, align 8
  %i.apy = getelementptr inbounds nuw i8, ptr %i.apx, i64 352
  %i.apz = load ptr, ptr %i.apy, align 8
  %i.aqa = getelementptr inbounds nuw [16 x i8], ptr %i.apz, i64 %indvars.iv448 ; 2 uses
  %.sroa.0218.0.copyload = load ptr, ptr %i.aqa, align 8 ; 2 uses
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.aqa, i64 8
  %.sroa.7.0.copyload = load i32, ptr %.sroa.7.0..sroa_idx, align 8
  %i.aqb = zext i32 %.sroa.7.0.copyload to i64    ; 2 uses
  %i.aqc = load ptr, ptr %.sroa.0218.0.copyload, align 8
  %i.aqd = getelementptr inbounds nuw [8 x i8], ptr %i.aqc, i64 %i.aqb
  %i.aqe = load ptr, ptr %i.aqd, align 8          ; 2 uses
  %i.aqf = getelementptr inbounds nuw i8, ptr %i.aqe, i64 48
  %i.aqg = getelementptr inbounds nuw i8, ptr %i.aqe, i64 56
  %i.aqh = load i64, ptr %i.aqg, align 8          ; 5 uses
  %i.aqi = icmp eq i64 %i.aqh, 0
  br i1 %i.aqi, label %bb.hn, label %bb.hj

bb.hj:                                            ; preds = %bb.hi
  %i.aqj = icmp ugt i64 %i.aqh, 1023
  br i1 %i.aqj, label %_ZN8aiStringaSERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit, label %bb.hk

bb.hk:                                            ; preds = %bb.hj
  %i.aqk = trunc nuw nsw i64 %i.aqh to i32
  store i32 %i.aqk, ptr %i.apk, align 4
  %i.aql = getelementptr inbounds nuw i8, ptr %i.apk, i64 4 ; 2 uses
  %i.aqm = load ptr, ptr %i.aqf, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.aql, ptr align 1 %i.aqm, i64 %i.aqh, i1 false)
  %i.aqn = getelementptr inbounds nuw i8, ptr %i.aql, i64 %i.aqh
  store i8 0, ptr %i.aqn, align 1
  br label %_ZN8aiStringaSERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit

bb.hl:                                            ; preds = %.lr.ph353
  %i.aqo = landingpad { ptr, i32 }
          catch ptr null
  br label %bb.ih

bb.hm:                                            ; preds = %bb.ib, %bb.hz
  %i.aqp = landingpad { ptr, i32 }
          catch ptr null
  br label %bb.ih

bb.hn:                                            ; preds = %bb.hi
  %i.aqq = load atomic i8, ptr @_ZGVZN6Assimp13glTF2Importer10ImportNodeERN5glTF25AssetERN10glTFCommon3RefINS1_4NodeEEEE12kDefaultNameB5cxx11 acquire, align 8
  %i.aqr = icmp eq i8 %i.aqq, 0
  br i1 %i.aqr, label %bb.ho, label %bb.hr, !prof !159

bb.ho:                                            ; preds = %bb.hn
  %i.aqs = call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN6Assimp13glTF2Importer10ImportNodeERN5glTF25AssetERN10glTFCommon3RefINS1_4NodeEEEE12kDefaultNameB5cxx11) #34
  %.not134 = icmp eq i32 %i.aqs, 0
  br i1 %.not134, label %bb.hr, label %bb.hp

bb.hp:                                            ; preds = %bb.ho
  call void @llvm.lifetime.start.p0(ptr nonnull %22) #34
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) @_ZZN6Assimp13glTF2Importer10ImportNodeERN5glTF25AssetERN10glTFCommon3RefINS1_4NodeEEEE12kDefaultNameB5cxx11, ptr noundef nonnull @.str.32, ptr noundef nonnull align 1 dereferenceable(1) %22)
          to label %bb.hq unwind label %bb.hy

bb.hq:                                            ; preds = %bb.hp
  call void @llvm.lifetime.end.p0(ptr nonnull %22) #34
  %i.aqt = call i32 @__cxa_atexit(ptr nonnull @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev, ptr nonnull @_ZZN6Assimp13glTF2Importer10ImportNodeERN5glTF25AssetERN10glTFCommon3RefINS1_4NodeEEEE12kDefaultNameB5cxx11, ptr nonnull @__dso_handle) #34 ; 0 uses
  call void @__cxa_guard_release(ptr nonnull @_ZGVZN6Assimp13glTF2Importer10ImportNodeERN5glTF25AssetERN10glTFCommon3RefINS1_4NodeEEEE12kDefaultNameB5cxx11) #34
  br label %bb.hr

bb.hr:                                            ; preds = %bb.hq, %bb.ho, %bb.hn
  call void @llvm.lifetime.start.p0(ptr nonnull %i.s) #34
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(10) %i.s, i8 0, i64 10, i1 false)
  %i.aqu = trunc nuw i64 %indvars.iv448 to i32    ; 3 uses
  %i.aqv = icmp slt i32 %i.aqu, 0
  br i1 %i.aqv, label %bb.hs, label %.lr.ph.i.i177.preheader

bb.hs:                                            ; preds = %bb.hr
  store i8 45, ptr %i.s, align 1
  %i.aqw = sub nsw i32 0, %i.aqu
  br label %.lr.ph.i.i177.preheader

.lr.ph.i.i177.preheader:                          ; preds = %bb.hs, %bb.hr
  %.153.i.i.ph = phi ptr [ %i.s, %bb.hr ], [ %i.gx, %bb.hs ]
  %.13350.i.i.ph = phi i32 [ 1, %bb.hr ], [ 2, %bb.hs ]
  %.13849.i.i.ph = phi i32 [ %i.aqu, %bb.hr ], [ %i.aqw, %bb.hs ]
  br label %.lr.ph.i.i177

.lr.ph.i.i177:                                    ; preds = %.lr.ph.i.i177.preheader, %bb.hu
  %.153.i.i = phi ptr [ %.2.i.i, %bb.hu ], [ %.153.i.i.ph, %.lr.ph.i.i177.preheader ] ; 3 uses
  %.02752.i.i = phi i1 [ %or.cond3.i.i, %bb.hu ], [ false, %.lr.ph.i.i177.preheader ]
  %.03051.i.i = phi i32 [ %i.arg, %bb.hu ], [ 1000000000, %.lr.ph.i.i177.preheader ] ; 5 uses
  %.13350.i.i = phi i32 [ %.234.i.i, %bb.hu ], [ %.13350.i.i.ph, %.lr.ph.i.i177.preheader ] ; 2 uses
  %.13849.i.i = phi i32 [ %.239.i.i, %bb.hu ], [ %.13849.i.i.ph, %.lr.ph.i.i177.preheader ] ; 3 uses
  %i.aqx = sdiv i32 %.13849.i.i, %.03051.i.i      ; 3 uses
  %.recomposed = srem i32 %.13849.i.i, %.03051.i.i
  %i.aqy = icmp ne i32 %i.aqx, 0
  %i.aqz = icmp eq i32 %.03051.i.i, 1             ; 2 uses
  %i.ara = or i1 %i.aqz, %i.aqy
  %or.cond3.i.i = select i1 %.02752.i.i, i1 true, i1 %i.ara ; 2 uses
  br i1 %or.cond3.i.i, label %bb.ht, label %bb.hu

bb.ht:                                            ; preds = %.lr.ph.i.i177
  %i.arb = trunc i32 %i.aqx to i8
  %i.arc = add i8 %i.arb, 48
  %i.ard = getelementptr inbounds nuw i8, ptr %.153.i.i, i64 1 ; 2 uses
  store i8 %i.arc, ptr %.153.i.i, align 1
  %i.are = add nuw nsw i32 %.13350.i.i, 1
  %i.arf = mul i32 %i.aqx, %.03051.i.i            ; 0 uses
  br i1 %i.aqz, label %_ZN6Assimp13ASSIMP_itoa10ILm10EEEjRAT__ci.exit, label %bb.hu

bb.hu:                                            ; preds = %bb.ht, %.lr.ph.i.i177
  %.239.i.i = phi i32 [ %.recomposed, %bb.ht ], [ %.13849.i.i, %.lr.ph.i.i177 ]
  %.234.i.i = phi i32 [ %i.are, %bb.ht ], [ %.13350.i.i, %.lr.ph.i.i177 ] ; 2 uses
  %.2.i.i = phi ptr [ %i.ard, %bb.ht ], [ %.153.i.i, %.lr.ph.i.i177 ] ; 2 uses
  %i.arg = sdiv i32 %.03051.i.i, 10
  %i.arh = icmp ult i32 %.234.i.i, 10
  br i1 %i.arh, label %.lr.ph.i.i177, label %_ZN6Assimp13ASSIMP_itoa10ILm10EEEjRAT__ci.exit

_ZN6Assimp13ASSIMP_itoa10ILm10EEEjRAT__ci.exit:   ; preds = %bb.ht, %bb.hu
  %.4.i.i = phi ptr [ %.2.i.i, %bb.hu ], [ %i.ard, %bb.ht ]
  store i8 0, ptr %.4.i.i, align 1
  call void @llvm.lifetime.start.p0(ptr nonnull %23) #34
  call void @llvm.experimental.noalias.scope.decl(metadata !160)
  %i.ari = load ptr, ptr @_ZZN6Assimp13glTF2Importer10ImportNodeERN5glTF25AssetERN10glTFCommon3RefINS1_4NodeEEEE12kDefaultNameB5cxx11, align 8, !noalias !160
  %i.arj = load i64, ptr getelementptr inbounds nuw (i8, ptr @_ZZN6Assimp13glTF2Importer10ImportNodeERN5glTF25AssetERN10glTFCommon3RefINS1_4NodeEEEE12kDefaultNameB5cxx11, i64 8), align 8, !noalias !160 ; 3 uses
  %i.ark = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.s) #34, !noalias !160 ; 3 uses
  store ptr %i.gy, ptr %23, align 8, !alias.scope !163
  store i64 0, ptr %i.gz, align 8, !alias.scope !163
  store i8 0, ptr %i.gy, align 8, !alias.scope !163
  %i.arl = add i64 %i.ark, %i.arj
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7reserveEm(ptr noundef nonnull align 8 dereferenceable(32) %23, i64 noundef %i.arl)
          to label %bb.hv unwind label %.loopexit241

bb.hv:                                            ; preds = %_ZN6Assimp13ASSIMP_itoa10ILm10EEEjRAT__ci.exit
  %i.arm = load i64, ptr %i.gz, align 8, !alias.scope !163
  %i.arn = sub i64 4611686018427387903, %i.arm
  %i.aro = icmp ult i64 %i.arn, %i.arj
  br i1 %i.aro, label %.invoke.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i: ; preds = %bb.hv
  %i.arp = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %23, ptr noundef %i.ari, i64 noundef %i.arj)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit.i.i unwind label %.loopexit241 ; 0 uses

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i
  %i.arq = load i64, ptr %i.gz, align 8, !alias.scope !163
  %i.arr = sub i64 4611686018427387903, %i.arq
  %i.ars = icmp ult i64 %i.arr, %i.ark
  br i1 %i.ars, label %.invoke.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i10.i.i

.invoke.i.i:                                      ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit.i.i, %bb.hv
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.85) #36
          to label %.cont.i.i unwind label %.loopexit.split-lp242

.cont.i.i:                                        ; preds = %.invoke.i.i
  unreachable

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i10.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit.i.i
  %i.art = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %23, ptr noundef nonnull %i.s, i64 noundef %i.ark)
          to label %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EERKS8_PKS5_.exit unwind label %.loopexit241 ; 0 uses

.loopexit241:                                     ; preds = %_ZN6Assimp13ASSIMP_itoa10ILm10EEEjRAT__ci.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i10.i.i
  %lpad.loopexit243 = landingpad { ptr, i32 }
          catch ptr null
  br label %bb.hw

.loopexit.split-lp242:                            ; preds = %.invoke.i.i
  %lpad.loopexit.split-lp244 = landingpad { ptr, i32 }
          catch ptr null
  br label %bb.hw

end_hunk_1
begin_hunk_2_@llvm.umin.i32
; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smax.i64(i64, i64) #9

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x float> @llvm.fmuladd.v4f32(<4 x float>, <4 x float>, <4 x float>) #9

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x float> @llvm.fmuladd.v2f32(<2 x float>, <2 x float>, <2 x float>) #9

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.vector.reduce.xor.v2i64(<2 x i64>) #9

attributes #0 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #1 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { inlinehint mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { inlinehint mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #10 = { nobuiltin allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { mustprogress uwtable "min-legal-vector-width"="64" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { cold noreturn }
attributes #13 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { nofree nounwind }
attributes #15 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #16 = { noinline noreturn nounwind uwtable "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #17 = { cold nofree noreturn }
attributes #18 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #19 = { mustprogress noinline nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #20 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #21 = { mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite, errnomem: write) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #22 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #23 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #24 = { mustprogress nounwind willreturn allockind("realloc") allocsize(1) memory(argmem: readwrite, inaccessiblemem: readwrite, errnomem: write) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #25 = { mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #26 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #27 = { uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #28 = { inlinehint mustprogress nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #29 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #30 = { nocallback nofree nosync nounwind willreturn memory(argmem: read) }
attributes #31 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #32 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #33 = { nofree nounwind willreturn allockind("alloc,zeroed") allocsize(0,1) memory(inaccessiblemem: readwrite, errnomem: write) "alloc-family"="malloc" }
attributes #34 = { nounwind }
attributes #35 = { builtin nounwind }
attributes #36 = { noreturn }
attributes #37 = { builtin allocsize(0) }
attributes #38 = { noreturn nounwind }
attributes #39 = { nounwind willreturn memory(read) }
attributes #40 = { nounwind allocsize(0) }
attributes #41 = { nounwind allocsize(1) }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{!"Ubuntu clang version 23.0.0 (++20260326081736+e69c7312f31b-1~exp1~20260326081905.1542)"}
!3 = distinct !{!3, !4}
!4 = !{!"llvm.loop.mustprogress"}
!5 = distinct !{null, null, null}
!6 = !{!"branch_weights", !"expected", i32 1, i32 2000}
!7 = distinct !{null}
!8 = distinct !{null, null, null, null}
!9 = distinct !{ptr @_ZNSt12__shared_ptrIN6Assimp8IOStreamELN9__gnu_cxx12_Lock_policyE2EED2Ev, null, null}
!10 = distinct !{!10, !4}
!11 = !{ptr @_ZN5glTF28MaterialD2Ev}
!12 = distinct !{!12, !4}
!13 = !{!14}
!14 = distinct !{!14, !15, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_PKS5_: argument 0"}
!15 = distinct !{!15, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_PKS5_"}
!16 = !{!17}
!17 = distinct !{!17, !18, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_PKS5_: argument 0"}
!18 = distinct !{!18, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_PKS5_"}
!19 = !{i8 0, i8 2}
!20 = !{}
!21 = distinct !{!21, !4}
!22 = distinct !{!22, !4}
!23 = !{!24}
!24 = distinct !{!24, !25}
!25 = distinct !{!25, !"LVerDomain"}
!26 = !{!27}
!27 = distinct !{!27, !25}
!28 = distinct !{!28, !4, !29, !30}
!29 = !{!"llvm.loop.isvectorized", i32 1}
!30 = !{!"llvm.loop.unroll.runtime.disable"}
!31 = distinct !{!31, !4, !29}
!32 = distinct !{!32, !4}
!33 = !{i64 8}
!34 = !{!"branch_weights", !"expected", i32 2000, i32 1}
!35 = distinct !{!35, !4}
!36 = !{!37}
!37 = distinct !{!37, !38, !"_ZSt19__relocate_object_aISt10unique_ptrI6aiMeshSt14default_deleteIS1_EES4_SaIS4_EEvPT_PT0_RT1_: argument 0"}
!38 = distinct !{!38, !"_ZSt19__relocate_object_aISt10unique_ptrI6aiMeshSt14default_deleteIS1_EES4_SaIS4_EEvPT_PT0_RT1_"}
!39 = !{!40}
!40 = distinct !{!40, !38, !"_ZSt19__relocate_object_aISt10unique_ptrI6aiMeshSt14default_deleteIS1_EES4_SaIS4_EEvPT_PT0_RT1_: argument 1"}
!41 = !{!40, !42}
!42 = distinct !{!42, !43}
!43 = distinct !{!43, !"LVerDomain"}
!44 = !{!37, !45}
!45 = distinct !{!45, !43}
!46 = distinct !{!46, !4, !29, !30}
!47 = distinct !{!47, !4, !29}
!48 = distinct !{!48, !4}
!49 = !{!50}
!50 = distinct !{!50, !51}
!51 = distinct !{!51, !"LVerDomain"}
!52 = !{!53}
!53 = distinct !{!53, !51}
!54 = distinct !{!54, !4, !29, !30}
!55 = distinct !{!55, !4, !29}
!56 = !{!57}
!57 = distinct !{!57, !58}
!58 = distinct !{!58, !"LVerDomain"}
!59 = !{!60}
!60 = distinct !{!60, !58}
!61 = distinct !{!61, !4, !29, !30}
!62 = distinct !{!62, !4, !29}
!63 = distinct !{!63, !4}
!64 = distinct !{!64, !4}
!65 = distinct !{!65, !4}
!66 = distinct !{!66, !4}
!67 = distinct !{!67, !4}
!68 = distinct !{!68, !4}
!69 = distinct !{!69, !4}
!70 = distinct !{!70, !71}
!71 = !{!"llvm.loop.unroll.disable"}
!72 = distinct !{!72, !4}
!73 = distinct !{!73, !71}
!74 = distinct !{!74, !4}
!75 = distinct !{!75, !71}
!76 = distinct !{!76, !4}
!77 = distinct !{!77, !71}
!78 = distinct !{!78, !4}
!79 = distinct !{!79, !71}
!80 = distinct !{!80, !4}
!81 = distinct !{!81, !71}
!82 = distinct !{!82, !71}
!83 = distinct !{!83, !4}
!84 = distinct !{!84, !71}
!85 = distinct !{!85, !4}
!86 = distinct !{!86, !71}
!87 = distinct !{!87, !4}
!88 = distinct !{!88, !71}
!89 = distinct !{!89, !4}
!90 = distinct !{!90, !71}
!91 = distinct !{!91, !4}
!92 = distinct !{!92, !71}
!93 = distinct !{!93, !4}
!94 = distinct !{!94, !4}
!95 = !{!96}
!96 = distinct !{!96, !97, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_RKS8_: argument 0"}
!97 = distinct !{!97, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_RKS8_"}
!98 = !{!99, !96}
!99 = distinct !{!99, !100, !"_ZSt12__str_concatINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEET_PKNS6_10value_typeENS6_9size_typeES9_SA_RKNS6_14allocator_typeE: argument 0"}
!100 = distinct !{!100, !"_ZSt12__str_concatINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEET_PKNS6_10value_typeENS6_9size_typeES9_SA_RKNS6_14allocator_typeE"}
!101 = !{!102}
!102 = distinct !{!102, !103, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_PKS5_: argument 0"}
!103 = distinct !{!103, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_PKS5_"}
!104 = distinct !{!104, !4}
!105 = distinct !{!105, !4}
!106 = distinct !{!106, !71}
!107 = distinct !{!107, !4}
!108 = distinct !{!108, !4}
!109 = distinct !{!109, !4}
!110 = distinct !{!110, !4}
!111 = distinct !{!111, !4}
!112 = distinct !{!112, !4}
!113 = distinct !{!113, !71}
!114 = distinct !{!114, !4}
!115 = distinct !{!115, !71}
!116 = distinct !{!116, !4}
!117 = distinct !{!117, !71}
!118 = distinct !{!118, !4}
!119 = distinct !{!119, !71}
!120 = distinct !{!120, !4}
!121 = distinct !{!121, !71}
!122 = distinct !{!122, !4}
!123 = distinct !{!123, !71}
!124 = distinct !{!124, !4}
!125 = distinct !{!125, !4}
!126 = !{!127}
!127 = distinct !{!127, !128, !"_ZL11GetNodeNameB5cxx11RKN5glTF24NodeE: argument 0"}
!128 = distinct !{!128, !"_ZL11GetNodeNameB5cxx11RKN5glTF24NodeE"}
!129 = distinct !{!129, !4}
!130 = distinct !{!130, !4}
!131 = distinct !{!131, !4}
!132 = distinct !{!132, !4}
!133 = distinct !{!133, !4}
!134 = distinct !{!134, !4}
!135 = distinct !{!135, !71}
!136 = distinct !{!136, !4}
!137 = distinct !{!137, !4}
!138 = distinct !{!138, !4}
!139 = distinct !{!139, !71}
!140 = distinct !{!140, !4}
!141 = distinct !{!141, !4}
!142 = distinct !{!142, !4}
!143 = distinct !{!143, !4}
!144 = !{!145}
!145 = distinct !{!145, !146, !"_ZSt19__relocate_object_aI14aiVertexWeightS0_SaIS0_EEvPT_PT0_RT1_: argument 0"}
!146 = distinct !{!146, !"_ZSt19__relocate_object_aI14aiVertexWeightS0_SaIS0_EEvPT_PT0_RT1_"}
!147 = !{!148}
!148 = distinct !{!148, !146, !"_ZSt19__relocate_object_aI14aiVertexWeightS0_SaIS0_EEvPT_PT0_RT1_: argument 1"}
!149 = distinct !{!149, !4, !29, !30}
!150 = distinct !{!150, !4, !29}
!151 = !{!152}
!152 = distinct !{!152, !153, !"_ZSt19__relocate_object_aI14aiVertexWeightS0_SaIS0_EEvPT_PT0_RT1_: argument 0"}
!153 = distinct !{!153, !"_ZSt19__relocate_object_aI14aiVertexWeightS0_SaIS0_EEvPT_PT0_RT1_"}
!154 = !{!155}
!155 = distinct !{!155, !153, !"_ZSt19__relocate_object_aI14aiVertexWeightS0_SaIS0_EEvPT_PT0_RT1_: argument 1"}
!156 = distinct !{!156, !4, !29, !30}
!157 = distinct !{!157, !4, !29}
!158 = distinct !{!158, !4}
!159 = !{!"branch_weights", i32 1, i32 1048575}
!160 = !{!161}
!161 = distinct !{!161, !162, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EERKS8_PKS5_: argument 0"}
!162 = distinct !{!162, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EERKS8_PKS5_"}
!163 = !{!164, !161}
!164 = distinct !{!164, !165, !"_ZSt12__str_concatINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEET_PKNS6_10value_typeENS6_9size_typeES9_SA_RKNS6_14allocator_typeE: argument 0"}
!165 = distinct !{!165, !"_ZSt12__str_concatINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEET_PKNS6_10value_typeENS6_9size_typeES9_SA_RKNS6_14allocator_typeE"}
!166 = distinct !{!166, !4}
!167 = distinct !{!167, !4}
!168 = distinct !{!168, !4}
!169 = distinct !{!169, !4}
!170 = distinct !{!170, !4}
!171 = distinct !{!171, !4}
!172 = distinct !{!172, !71}
!173 = distinct !{!173, !4}
!174 = distinct !{!174, !4}
!175 = distinct !{!175, !4}
!176 = !{!177}
!177 = distinct !{!177, !178, !"_ZL11GetNodeNameB5cxx11RKN5glTF24NodeE: argument 0"}
!178 = distinct !{!178, !"_ZL11GetNodeNameB5cxx11RKN5glTF24NodeE"}
!179 = distinct !{!179, !4}
!180 = distinct !{!180, !4}
!181 = distinct !{!181, !71}
!182 = distinct !{!182, !4}
!183 = distinct !{!183, !4}
!184 = distinct !{!184, !4}
!185 = distinct !{!185, !4}
!186 = distinct !{!186, !4}
!187 = distinct !{!187, !4}
!188 = distinct !{!188, !29, !30}
!189 = distinct !{!189, !30, !29}
!190 = distinct !{!190, !4}
!191 = distinct !{!191, !4}
!192 = !{!193}
!193 = distinct !{!193, !194, !"_ZL11GetNodeNameB5cxx11RKN5glTF24NodeE: argument 0"}
!194 = distinct !{!194, !"_ZL11GetNodeNameB5cxx11RKN5glTF24NodeE"}
!195 = distinct !{!195, !71}
!196 = distinct !{!196, !4}
!197 = distinct !{!197, !4}
!198 = distinct !{!198, !4}
!199 = distinct !{!199, !4}
!200 = distinct !{!200, !4}
!201 = distinct !{!201, !4}
!202 = distinct !{!202, !4}
!203 = distinct !{!203, !4}
!204 = distinct !{!204, !4}
!205 = distinct !{!205, !71}
!206 = distinct !{!206, !4}
!207 = !{!208}
!208 = distinct !{!208, !209, !"_ZN10glTFCommon18getCurrentAssetDirERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE: argument 0"}
!209 = distinct !{!209, !"_ZN10glTFCommon18getCurrentAssetDirERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE"}
!210 = !{!211}
!211 = distinct !{!211, !212, !"_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6substrEmm: argument 0"}
!212 = distinct !{!212, !"_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6substrEmm"}
!213 = !{!211, !208}
!214 = !{!215}
!215 = distinct !{!215, !216, !"_ZNK9rapidjson22GenericSchemaValidatorINS_21GenericSchemaDocumentINS_12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEEES6_EENS_17BaseReaderHandlerIS4_vEES6_E25GetInvalidDocumentPointerEv: argument 0"}
!216 = distinct !{!216, !"_ZNK9rapidjson22GenericSchemaValidatorINS_21GenericSchemaDocumentINS_12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEEES6_EENS_17BaseReaderHandlerIS4_vEES6_E25GetInvalidDocumentPointerEv"}
!217 = distinct !{!217, !4}
!218 = distinct !{null}
!219 = distinct !{!219, !4}
!220 = distinct !{!220, !4}
!221 = distinct !{!221, !4}
!222 = distinct !{!222, !4}
!223 = distinct !{null}
!224 = distinct !{null, null, null, null}
!225 = distinct !{!225, !4}
!226 = distinct !{null}
!227 = distinct !{null, null, null, null, null}
!228 = distinct !{null, null}
!229 = distinct !{!229, !4}
!230 = distinct !{!230, !4}
!231 = distinct !{!231, !4}
!232 = distinct !{!232, !4}
!233 = distinct !{!233, !4}
!234 = distinct !{!234, !4}
!235 = distinct !{!235, !4}
!236 = distinct !{!236, !4}
!237 = distinct !{!237, !4}
!238 = distinct !{!238, !4}
!239 = distinct !{!239, !4}
!240 = distinct !{!240, !4}
!241 = distinct !{!241, !4}
!242 = distinct !{!242, !4}
!243 = distinct !{!243, !4}
!244 = distinct !{!244, !4}
!245 = distinct !{!245, !4}
!246 = !{!247}
!247 = distinct !{!247, !248, !"_ZN9rapidjson9StringRefIcEENS_16GenericStringRefIT_EEPKS2_: argument 0"}
!248 = distinct !{!248, !"_ZN9rapidjson9StringRefIcEENS_16GenericStringRefIT_EEPKS2_"}
!249 = !{!250}
!250 = distinct !{!250, !251, !"_ZN9rapidjson9StringRefIcEENS_16GenericStringRefIT_EEPKS2_: argument 0"}
!251 = distinct !{!251, !"_ZN9rapidjson9StringRefIcEENS_16GenericStringRefIT_EEPKS2_"}
!252 = !{!253}
!253 = distinct !{!253, !254, !"_ZNK6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEEcvNSt7__cxx1112basic_stringIcS3_S4_EEEv: argument 0"}
!254 = distinct !{!254, !"_ZNK6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEEcvNSt7__cxx1112basic_stringIcS3_S4_EEEv"}
!255 = !{!256}
!256 = distinct !{!256, !257, !"_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv: argument 0"}
!257 = distinct !{!257, !"_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv"}
!258 = !{!259}
!259 = distinct !{!259, !260, !"_ZNKSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE3strEv: argument 0"}
!260 = distinct !{!260, !"_ZNKSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE3strEv"}
!261 = !{!259, !256, !253}
!262 = !{!263}
!263 = distinct !{!263, !264, !"_ZN6Assimp6Logger13formatMessageB5cxx11ENS_9Formatter15basic_formatterIcSt11char_traitsIcESaIcEEE: argument 0"}
!264 = distinct !{!264, !"_ZN6Assimp6Logger13formatMessageB5cxx11ENS_9Formatter15basic_formatterIcSt11char_traitsIcESaIcEEE"}
!265 = !{!266}
!266 = distinct !{!266, !267, !"_ZNK6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEEcvNSt7__cxx1112basic_stringIcS3_S4_EEEv: argument 0"}
!267 = distinct !{!267, !"_ZNK6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEEcvNSt7__cxx1112basic_stringIcS3_S4_EEEv"}
!268 = !{!269}
!269 = distinct !{!269, !270, !"_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv: argument 0"}
!270 = distinct !{!270, !"_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv"}
!271 = !{!272}
!272 = distinct !{!272, !273, !"_ZNKSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE3strEv: argument 0"}
!273 = distinct !{!273, !"_ZNKSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE3strEv"}
!274 = !{!272, !269, !266, !263}
!275 = !{!276}
!276 = distinct !{!276, !277, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EERKS8_PKS5_: argument 0"}
!277 = distinct !{!277, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EERKS8_PKS5_"}
!278 = !{!279, !276}
!279 = distinct !{!279, !280, !"_ZSt12__str_concatINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEET_PKNS6_10value_typeENS6_9size_typeES9_SA_RKNS6_14allocator_typeE: argument 0"}
!280 = distinct !{!280, !"_ZSt12__str_concatINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEET_PKNS6_10value_typeENS6_9size_typeES9_SA_RKNS6_14allocator_typeE"}
!281 = !{!282}
!282 = distinct !{!282, !283, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_PKS5_: argument 0"}
!283 = distinct !{!283, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_PKS5_"}
!284 = !{!285}
!285 = distinct !{!285, !286, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_PKS5_: argument 0"}
!286 = distinct !{!286, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_PKS5_"}
!287 = !{!288}
!288 = distinct !{!288, !289, !"_ZN9rapidjson9StringRefIcEENS_16GenericStringRefIT_EEPKS2_: argument 0"}
!289 = distinct !{!289, !"_ZN9rapidjson9StringRefIcEENS_16GenericStringRefIT_EEPKS2_"}
!290 = !{!291}
!291 = distinct !{!291, !292, !"_ZN9rapidjson9StringRefIcEENS_16GenericStringRefIT_EEPKS2_: argument 0"}
!292 = distinct !{!292, !"_ZN9rapidjson9StringRefIcEENS_16GenericStringRefIT_EEPKS2_"}
!293 = !{!294}
!294 = distinct !{!294, !295, !"_ZN9rapidjson9StringRefIcEENS_16GenericStringRefIT_EEPKS2_: argument 0"}
!295 = distinct !{!295, !"_ZN9rapidjson9StringRefIcEENS_16GenericStringRefIT_EEPKS2_"}
!296 = distinct !{!296, !4}
!297 = !{!298}
!298 = distinct !{!298, !299, !"_ZN9rapidjson9StringRefIcEENS_16GenericStringRefIT_EEPKS2_: argument 0"}
!299 = distinct !{!299, !"_ZN9rapidjson9StringRefIcEENS_16GenericStringRefIT_EEPKS2_"}
!300 = distinct !{!300, !4}
!301 = distinct !{!301, !4}
!302 = !{!303}
!303 = distinct !{!303, !304, !"_ZN9rapidjson9StringRefIcEENS_16GenericStringRefIT_EEPKS2_: argument 0"}
!304 = distinct !{!304, !"_ZN9rapidjson9StringRefIcEENS_16GenericStringRefIT_EEPKS2_"}
!305 = !{!306}
!306 = distinct !{!306, !307, !"_ZN9rapidjson9StringRefIcEENS_16GenericStringRefIT_EEPKS2_: argument 0"}
!307 = distinct !{!307, !"_ZN9rapidjson9StringRefIcEENS_16GenericStringRefIT_EEPKS2_"}
!308 = !{!309}
!309 = distinct !{!309, !310, !"_ZN9rapidjson9StringRefIcEENS_16GenericStringRefIT_EEPKS2_: argument 0"}
!310 = distinct !{!310, !"_ZN9rapidjson9StringRefIcEENS_16GenericStringRefIT_EEPKS2_"}
!311 = distinct !{!311, !4}
!312 = distinct !{!312, !4}
!313 = distinct !{!313, !4}
!314 = !{!315}
!315 = distinct !{!315, !316, !"_ZN9rapidjson9StringRefIcEENS_16GenericStringRefIT_EEPKS2_: argument 0"}
!316 = distinct !{!316, !"_ZN9rapidjson9StringRefIcEENS_16GenericStringRefIT_EEPKS2_"}
!317 = !{!318}
!318 = distinct !{!318, !319, !"_ZN9rapidjson9StringRefIcEENS_16GenericStringRefIT_EEPKS2_: argument 0"}
!319 = distinct !{!319, !"_ZN9rapidjson9StringRefIcEENS_16GenericStringRefIT_EEPKS2_"}
!320 = !{!321}
!321 = distinct !{!321, !322, !"_ZN9rapidjson9StringRefIcEENS_16GenericStringRefIT_EEPKS2_: argument 0"}
!322 = distinct !{!322, !"_ZN9rapidjson9StringRefIcEENS_16GenericStringRefIT_EEPKS2_"}
!323 = distinct !{!323, !4}
!324 = !{!325}
!325 = distinct !{!325, !326, !"_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6substrEmm: argument 0"}
!326 = distinct !{!326, !"_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6substrEmm"}
!327 = !{!328}
!328 = distinct !{!328, !329, !"_ZN9rapidjson9StringRefIcEENS_16GenericStringRefIT_EERKNSt7__cxx1112basic_stringIS2_St11char_traitsIS2_ESaIS2_EEE: argument 0"}
!329 = distinct !{!329, !"_ZN9rapidjson9StringRefIcEENS_16GenericStringRefIT_EERKNSt7__cxx1112basic_stringIS2_St11char_traitsIS2_ESaIS2_EEE"}
!330 = !{!331}
!331 = distinct !{!331, !332, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_PKS5_: argument 0"}
!332 = distinct !{!332, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_PKS5_"}
!333 = !{!334}
!334 = distinct !{!334, !335, !"_ZN9rapidjson9StringRefIcEENS_16GenericStringRefIT_EEPKS2_: argument 0"}
!335 = distinct !{!335, !"_ZN9rapidjson9StringRefIcEENS_16GenericStringRefIT_EEPKS2_"}
!336 = !{!337}
!337 = distinct !{!337, !338, !"_ZN9rapidjson9StringRefIcEENS_16GenericStringRefIT_EEPKS2_: argument 0"}
!338 = distinct !{!338, !"_ZN9rapidjson9StringRefIcEENS_16GenericStringRefIT_EEPKS2_"}
!339 = !{!340}
!340 = distinct !{!340, !341, !"_ZN9rapidjson9StringRefIcEENS_16GenericStringRefIT_EEPKS2_: argument 0"}
!341 = distinct !{!341, !"_ZN9rapidjson9StringRefIcEENS_16GenericStringRefIT_EEPKS2_"}
!342 = distinct !{!342, !4}
!343 = !{!344}
!344 = distinct !{!344, !345, !"_ZN9rapidjson9StringRefIcEENS_16GenericStringRefIT_EEPKS2_: argument 0"}
!345 = distinct !{!345, !"_ZN9rapidjson9StringRefIcEENS_16GenericStringRefIT_EEPKS2_"}
!346 = !{!347}
!347 = distinct !{!347, !348, !"_ZN9rapidjson9StringRefIcEENS_16GenericStringRefIT_EEPKS2_: argument 0"}
!348 = distinct !{!348, !"_ZN9rapidjson9StringRefIcEENS_16GenericStringRefIT_EEPKS2_"}
!349 = !{!350}
!350 = distinct !{!350, !351, !"_ZN9rapidjson9StringRefIcEENS_16GenericStringRefIT_EEPKS2_: argument 0"}
!351 = distinct !{!351, !"_ZN9rapidjson9StringRefIcEENS_16GenericStringRefIT_EEPKS2_"}
!352 = distinct !{!352, !4}
!353 = !{!354}
!354 = distinct !{!354, !355, !"_ZN9rapidjson9StringRefIcEENS_16GenericStringRefIT_EEPKS2_: argument 0"}
!355 = distinct !{!355, !"_ZN9rapidjson9StringRefIcEENS_16GenericStringRefIT_EEPKS2_"}
!356 = !{!357}
!357 = distinct !{!357, !358, !"_ZN9rapidjson9StringRefIcEENS_16GenericStringRefIT_EEPKS2_: argument 0"}
end_hunk_2
