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
begin_hunk_2_@_ZN6Assimp6Logger4warnIJRA11_KcRNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERA40_S2_RmRA48_S2_SE_EEEvDpOT_:bb.a
  %i.t = load i64, ptr %i.r, align 8
  %i.u = add i64 %i.t, 1
  call void @_ZdlPvm(ptr noundef %i.q, i64 noundef %i.u) #35
  br label %_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEED2Ev.exit

_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVSt15basic_streambufIcSt11char_traitsIcEE, i64 16), ptr %i.o, align 8
  %i.v = getelementptr inbounds nuw i8, ptr %8, i64 64
  call void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.v) #34
  %i.w = getelementptr inbounds nuw i8, ptr %8, i64 112
  call void @_ZNSt8ios_baseD2Ev(ptr noundef nonnull align 8 dereferenceable(264) %i.w) #34
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #34
  ret void

bb.e:                                             ; preds = %_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEEC2IA11_cEERKT_.exit
  %i.x = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit12

bb.f:                                             ; preds = %bb.c
  %i.y = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.z = load ptr, ptr %7, align 8                ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 2 uses
  %i.ab = icmp eq ptr %i.z, %i.aa
  br i1 %i.ab, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit12, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i10

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i10: ; preds = %bb.f
  %i.ac = load i64, ptr %i.aa, align 8
  %i.ad = add i64 %i.ac, 1
  call void @_ZdlPvm(ptr noundef %i.z, i64 noundef %i.ad) #35
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit12

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit12: ; preds = %bb.f, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i10, %bb.e
  %.pn = phi { ptr, i32 } [ %i.x, %bb.e ], [ %i.y, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i10 ], [ %i.y, %bb.f ]
  call void @_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEED2Ev(ptr noundef nonnull align 8 dead_on_return(376) dereferenceable(376) %8) #34
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #34
  br label %common.resume
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNSt13unordered_mapIj17AnimationSamplersSt4hashIjESt8equal_toIjESaISt4pairIKjS0_EEED2Ev(ptr noundef nonnull align 8 dead_on_return(56) dereferenceable(56) %0) unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8              ; 2 uses
  %.not5.i.i.i = icmp eq ptr %i.b, null
  br i1 %.not5.i.i.i, label %_ZNSt10_HashtableIjSt4pairIKj17AnimationSamplersESaIS3_ENSt8__detail10_Select1stESt8equal_toIjESt4hashIjENS5_18_Mod_range_hashingENS5_20_Default_ranged_hashENS5_20_Prime_rehash_policyENS5_17_Hashtable_traitsILb0ELb0ELb1EEEE5clearEv.exit.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.a, %.lr.ph.i.i.i
  %.06.i.i.i = phi ptr [ %i.c, %.lr.ph.i.i.i ], [ %i.b, %bb.a ] ; 2 uses
  %i.c = load ptr, ptr %.06.i.i.i, align 8        ; 2 uses
  tail call void @_ZdlPvm(ptr noundef nonnull %.06.i.i.i, i64 noundef 48) #35
  %.not.i.i.i = icmp eq ptr %i.c, null
  br i1 %.not.i.i.i, label %_ZNSt10_HashtableIjSt4pairIKj17AnimationSamplersESaIS3_ENSt8__detail10_Select1stESt8equal_toIjESt4hashIjENS5_18_Mod_range_hashingENS5_20_Default_ranged_hashENS5_20_Prime_rehash_policyENS5_17_Hashtable_traitsILb0ELb0ELb1EEEE5clearEv.exit.i, label %.lr.ph.i.i.i, !llvm.loop !200

_ZNSt10_HashtableIjSt4pairIKj17AnimationSamplersESaIS3_ENSt8__detail10_Select1stESt8equal_toIjESt4hashIjENS5_18_Mod_range_hashingENS5_20_Default_ranged_hashENS5_20_Prime_rehash_policyENS5_17_Hashtable_traitsILb0ELb0ELb1EEEE5clearEv.exit.i: ; preds = %.lr.ph.i.i.i, %bb.a
  %i.d = load ptr, ptr %0, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.f = load i64, ptr %i.e, align 8
  %i.g = shl i64 %i.f, 3
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.d, i8 0, i64 %i.g, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.a, i8 0, i64 16, i1 false)
  %i.h = load ptr, ptr %0, align 8                ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.j = icmp eq ptr %i.h, %i.i
  br i1 %i.j, label %_ZNSt10_HashtableIjSt4pairIKj17AnimationSamplersESaIS3_ENSt8__detail10_Select1stESt8equal_toIjESt4hashIjENS5_18_Mod_range_hashingENS5_20_Default_ranged_hashENS5_20_Prime_rehash_policyENS5_17_Hashtable_traitsILb0ELb0ELb1EEEED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %_ZNSt10_HashtableIjSt4pairIKj17AnimationSamplersESaIS3_ENSt8__detail10_Select1stESt8equal_toIjESt4hashIjENS5_18_Mod_range_hashingENS5_20_Default_ranged_hashENS5_20_Prime_rehash_policyENS5_17_Hashtable_traitsILb0ELb0ELb1EEEE5clearEv.exit.i
  %i.k = load i64, ptr %i.e, align 8
  %i.l = shl i64 %i.k, 3
  tail call void @_ZdlPvm(ptr noundef %i.h, i64 noundef %i.l) #35
  br label %_ZNSt10_HashtableIjSt4pairIKj17AnimationSamplersESaIS3_ENSt8__detail10_Select1stESt8equal_toIjESt4hashIjENS5_18_Mod_range_hashingENS5_20_Default_ranged_hashENS5_20_Prime_rehash_policyENS5_17_Hashtable_traitsILb0ELb0ELb1EEEED2Ev.exit

_ZNSt10_HashtableIjSt4pairIKj17AnimationSamplersESaIS3_ENSt8__detail10_Select1stESt8equal_toIjESt4hashIjENS5_18_Mod_range_hashingENS5_20_Default_ranged_hashENS5_20_Prime_rehash_policyENS5_17_Hashtable_traitsILb0ELb0ELb1EEEED2Ev.exit: ; preds = %_ZNSt10_HashtableIjSt4pairIKj17AnimationSamplersESaIS3_ENSt8__detail10_Select1stESt8equal_toIjESt4hashIjENS5_18_Mod_range_hashingENS5_20_Default_ranged_hashENS5_20_Prime_rehash_policyENS5_17_Hashtable_traitsILb0ELb0ELb1EEEE5clearEv.exit.i, %bb.b
  ret void
}

; Function Attrs: mustprogress uwtable
define hidden void @_ZN6Assimp13glTF2Importer16ImportAnimationsERN5glTF25AssetE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(160) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(3624) %1) local_unnamed_addr #6 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 8 uses
  %2 = alloca %"class.std::unordered_map.293", align 8 ; 10 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 3464
  %i.c = load ptr, ptr %i.b, align 8              ; 3 uses
  %.not.i = icmp eq ptr %i.c, null
  br i1 %.not.i, label %_ZNK10glTFCommon3RefIN5glTF25SceneEEcvbEv.exit.thread, label %_ZNK10glTFCommon3RefIN5glTF25SceneEEcvbEv.exit

_ZNK10glTFCommon3RefIN5glTF25SceneEEcvbEv.exit:   ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 3472
  %i.e = load i32, ptr %i.d, align 8
  %i.f = zext i32 %i.e to i64
  %i.g = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.h = load ptr, ptr %i.g, align 8
  %i.i = load ptr, ptr %i.c, align 8
  %i.j = ptrtoint ptr %i.h to i64
  %i.k = ptrtoint ptr %i.i to i64
  %i.l = sub i64 %i.j, %i.k
  %i.m = ashr exact i64 %i.l, 3
  %i.n = icmp ugt i64 %i.m, %i.f
  br i1 %i.n, label %bb.b, label %_ZNK10glTFCommon3RefIN5glTF25SceneEEcvbEv.exit.thread

bb.b:                                             ; preds = %_ZNK10glTFCommon3RefIN5glTF25SceneEEcvbEv.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #34
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 456 ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 464
  %i.q = load ptr, ptr %i.p, align 8
  %i.r = load ptr, ptr %i.o, align 8
  %i.s = ptrtoint ptr %i.q to i64
  %i.t = ptrtoint ptr %i.r to i64
  %i.u = sub i64 %i.s, %i.t
  %i.v = lshr exact i64 %i.u, 3
  %i.w = trunc i64 %i.v to i32
  store i32 %i.w, ptr %i.a, align 4
  %i.x = tail call noundef ptr @_ZN6Assimp13DefaultLogger3getEv()
  call void @_ZN6Assimp6Logger5debugIJRA11_KcRKjRA12_S2_EEEvDpOT_(ptr noundef nonnull align 8 dereferenceable(12) %i.x, ptr noundef nonnull align 1 dereferenceable(11) @.str.4, ptr noundef nonnull align 4 dereferenceable(4) %i.a, ptr noundef nonnull align 1 dereferenceable(12) @.str.42)
  %i.y = load i32, ptr %i.a, align 4              ; 3 uses
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 144 ; 4 uses
  %i.aa = load ptr, ptr %i.z, align 8
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 48
  store i32 %i.y, ptr %i.ab, align 8
  %i.ac = load ptr, ptr %i.z, align 8             ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 48
  %i.ae = load i32, ptr %i.ad, align 8
  %i.af = icmp eq i32 %i.ae, 0
  br i1 %i.af, label %.loopexit182, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.ag = zext i32 %i.y to i64
  %i.ah = shl nuw nsw i64 %i.ag, 3                ; 2 uses
  %i.ai = call noalias noundef nonnull ptr @_Znam(i64 noundef %i.ah) #37
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ac, i64 56
  store ptr %i.ai, ptr %i.aj, align 8
  %.not4.i.i.i = icmp eq i32 %i.y, 0
  br i1 %.not4.i.i.i, label %.loopexit182, label %_ZSt4fillIPP11aiAnimationDnEvT_S3_RKT0_.exit

_ZSt4fillIPP11aiAnimationDnEvT_S3_RKT0_.exit:     ; preds = %bb.c
  %i.ak = load ptr, ptr %i.z, align 8
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 56
  %i.am = load ptr, ptr %i.al, align 8
  call void @llvm.memset.p0.i64(ptr align 8 %i.am, i8 0, i64 %i.ah, i1 false)
  %.pre = load i32, ptr %i.a, align 4
  %i.an = icmp eq i32 %.pre, 0
  br i1 %i.an, label %.loopexit182, label %.lr.ph211

.lr.ph211:                                        ; preds = %_ZSt4fillIPP11aiAnimationDnEvT_S3_RKT0_.exit
  %i.ao = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 4 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %1, i64 2312 ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %2, i64 48
  br label %bb.d

bb.d:                                             ; preds = %.lr.ph211, %_ZNSt13unordered_mapIj17AnimationSamplersSt4hashIjESt8equal_toIjESaISt4pairIKjS0_EEED2Ev.exit
  %indvars.iv221.a = phi i64 [ 0, %.lr.ph211 ], [ %indvars.iv.next222.a, %_ZNSt13unordered_mapIj17AnimationSamplersSt4hashIjESt8equal_toIjESaISt4pairIKjS0_EEED2Ev.exit ] ; 3 uses
  %i.as = call noalias noundef nonnull dereferenceable(1096) ptr @_Znwm(i64 noundef 1096) #37 ; 12 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1096) %i.as, i8 0, i64 1028, i1 false)
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 1032 ; 4 uses
  %i.au = getelementptr inbounds nuw i8, ptr %i.as, i64 1040
  store <2 x double> <double -1.000000e+00, double 0.000000e+00>, ptr %i.at, align 8
  %i.av = getelementptr inbounds nuw i8, ptr %i.as, i64 1048 ; 4 uses
  store i32 0, ptr %i.av, align 8
  %i.aw = getelementptr inbounds nuw i8, ptr %i.as, i64 1056 ; 4 uses
  store ptr null, ptr %i.aw, align 8
  %i.ax = getelementptr inbounds nuw i8, ptr %i.as, i64 1064
  store i32 0, ptr %i.ax, align 8
  %i.ay = getelementptr inbounds nuw i8, ptr %i.as, i64 1072
  store ptr null, ptr %i.ay, align 8
  %i.az = getelementptr inbounds nuw i8, ptr %i.as, i64 1080 ; 4 uses
  store i32 0, ptr %i.az, align 8
  %i.ba = getelementptr inbounds nuw i8, ptr %i.as, i64 1088 ; 4 uses
  store ptr null, ptr %i.ba, align 8
  %i.bb = load ptr, ptr %i.z, align 8
  %i.bc = getelementptr inbounds nuw i8, ptr %i.bb, i64 56
  %i.bd = load ptr, ptr %i.bc, align 8
  %i.be = getelementptr inbounds nuw [8 x i8], ptr %i.bd, i64 %indvars.iv221.a
  store ptr %i.as, ptr %i.be, align 8
  %i.bf = load ptr, ptr %i.o, align 8
  %i.bg = getelementptr inbounds nuw [8 x i8], ptr %i.bf, i64 %indvars.iv221.a
  %i.bh = load ptr, ptr %i.bg, align 8            ; 3 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bh, i64 56
  %i.bj = load i64, ptr %i.bi, align 8            ; 4 uses
  %i.bk = icmp ugt i64 %i.bj, 1023
  br i1 %i.bk, label %_ZN8aiStringaSERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bh, i64 48
  %i.bm = trunc nuw nsw i64 %i.bj to i32
  store i32 %i.bm, ptr %i.as, align 8
  %i.bn = getelementptr inbounds nuw i8, ptr %i.as, i64 4 ; 2 uses
  %i.bo = load ptr, ptr %i.bl, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.bn, ptr align 1 %i.bo, i64 %i.bj, i1 false)
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bn, i64 %i.bj
  store i8 0, ptr %i.bp, align 1
  br label %_ZN8aiStringaSERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit

_ZN8aiStringaSERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit: ; preds = %bb.d, %bb.e
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.at, i8 0, i64 16, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #34
  call void @_Z14GatherSamplersRN5glTF29AnimationE(ptr dead_on_unwind nonnull writable sret(%"class.std::unordered_map.293") align 8 %2, ptr noundef nonnull align 8 dereferenceable(312) %i.bh)
  %i.bq = load ptr, ptr %i.ao, align 8            ; 3 uses
  %.not176183 = icmp eq ptr %i.bq, null
  br i1 %.not176183, label %._crit_edge208.thread, label %bb.f

._crit_edge208.thread:                            ; preds = %_ZN8aiStringaSERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit
  store i32 0, ptr %i.av, align 8
  store i32 0, ptr %i.az, align 8
  store <2 x double> <double 0.000000e+00, double 1.000000e+03>, ptr %i.at, align 8
  br label %_ZNSt10_HashtableIjSt4pairIKj17AnimationSamplersESaIS3_ENSt8__detail10_Select1stESt8equal_toIjESt4hashIjENS5_18_Mod_range_hashingENS5_20_Default_ranged_hashENS5_20_Prime_rehash_policyENS5_17_Hashtable_traitsILb0ELb0ELb1EEEE5clearEv.exit.i.i

._crit_edge:                                      ; preds = %bb.f
  store i32 %.1, ptr %i.av, align 8
  %.not = icmp eq i32 %.1, 0
  br i1 %.not, label %.loopexit181, label %bb.g

bb.f:                                             ; preds = %_ZN8aiStringaSERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit, %bb.f
  %.0103192 = phi i32 [ %.1, %bb.f ], [ 0, %_ZN8aiStringaSERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit ]
  %.1.a = phi i32 [ %spec.select, %bb.f ], [ 0, %_ZN8aiStringaSERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit ]
  %.sroa.0172.0190 = phi ptr [ %i.bu, %bb.f ], [ %i.bq, %_ZN8aiStringaSERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit ] ; 5 uses
  %3 = getelementptr inbounds nuw i8, ptr %.sroa.0172.0190, i64 16
  %4 = getelementptr inbounds nuw i8, ptr %.sroa.0172.0190, i64 24
  %5 = load ptr, ptr %4, align 8
  %.not127 = icmp ne ptr %5, null
  %6 = getelementptr inbounds nuw i8, ptr %.sroa.0172.0190, i64 32
  %7 = load ptr, ptr %6, align 8
  %.not128 = icmp ne ptr %7, null
  %or.cond.not186 = select i1 %.not127, i1 true, i1 %.not128
  %8 = load ptr, ptr %3, align 8
  %.not129 = icmp ne ptr %8, null
  %or.cond132.not = select i1 %or.cond.not186, i1 true, i1 %.not129
  %9 = zext i1 %or.cond132.not to i32
  %.1 = add i32 %.0103192, %9                     ; 4 uses
  %i.br = getelementptr inbounds nuw i8, ptr %.sroa.0172.0190, i64 40
  %i.bs = load ptr, ptr %i.br, align 8
  %.not130 = icmp ne ptr %i.bs, null
  %i.bt = zext i1 %.not130 to i32
  %spec.select = add i32 %.1.a, %i.bt             ; 4 uses
  %i.bu = load ptr, ptr %.sroa.0172.0190, align 8 ; 2 uses
  %.not176 = icmp eq ptr %i.bu, null
  br i1 %.not176, label %._crit_edge, label %bb.f

bb.g:                                             ; preds = %._crit_edge
  %i.bv = zext i32 %.1 to i64
  %i.bw = shl nuw nsw i64 %i.bv, 3                ; 2 uses
  %i.bx = invoke noalias noundef nonnull ptr @_Znam(i64 noundef %i.bw) #37
          to label %.lr.ph.preheader.i.i.i132 unwind label %bb.h ; 2 uses

.lr.ph.preheader.i.i.i132:                        ; preds = %bb.g
  store ptr %i.bx, ptr %i.aw, align 8
  call void @llvm.memset.p0.i64(ptr nonnull align 8 %i.bx, i8 0, i64 %i.bw, i1 false)
  br label %.lr.ph192

bb.h:                                             ; preds = %bb.m, %bb.g
  %i.by = landingpad { ptr, i32 }
          cleanup
  br label %bb.ac

.lr.ph192:                                        ; preds = %.lr.ph.preheader.i.i.i132, %bb.l
  %.0111191 = phi i32 [ %.1112, %bb.l ], [ 0, %.lr.ph.preheader.i.i.i132 ] ; 3 uses
  %.sroa.0163.0189 = phi ptr [ %i.co, %bb.l ], [ %i.bq, %.lr.ph.preheader.i.i.i132 ] ; 5 uses
  %i.bz = getelementptr inbounds nuw i8, ptr %.sroa.0163.0189, i64 16 ; 2 uses
  %i.ca = getelementptr inbounds nuw i8, ptr %.sroa.0163.0189, i64 24
  %10 = load ptr, ptr %i.ca, align 8
  %.not123 = icmp eq ptr %10, null
  %i.cb = getelementptr inbounds nuw i8, ptr %.sroa.0163.0189, i64 32
  %11 = load ptr, ptr %i.cb, align 8
  %.not124 = icmp eq ptr %11, null
  %or.cond134 = select i1 %.not123, i1 %.not124, i1 false
  %i.cc = load ptr, ptr %i.bz, align 8
  %.not123.a = icmp eq ptr %i.cc, null
  %or.cond135 = select i1 %or.cond134, i1 %.not123.a, i1 false
  br i1 %or.cond135, label %bb.l, label %bb.i

bb.i:                                             ; preds = %.lr.ph192
  %12 = getelementptr inbounds nuw i8, ptr %.sroa.0163.0189, i64 8
  %i.cd = load i32, ptr %12, align 8
  %i.ce = zext i32 %i.cd to i64
  %i.cf = load ptr, ptr %i.ap, align 8
  %i.cg = getelementptr inbounds nuw [8 x i8], ptr %i.cf, i64 %i.ce
  %i.ch = load ptr, ptr %i.cg, align 8
  %i.ci = invoke noundef ptr @_Z14CreateNodeAnimRN5glTF25AssetERNS_4NodeER17AnimationSamplers(ptr nonnull align 8 poison, ptr noundef nonnull align 8 dereferenceable(552) %i.ch, ptr noundef nonnull align 8 dereferenceable(32) %i.bz)
          to label %bb.j unwind label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.cj = load ptr, ptr %i.aw, align 8
  %i.ck = sext i32 %.0111191 to i64
  %i.cl = getelementptr inbounds [8 x i8], ptr %i.cj, i64 %i.ck
  store ptr %i.ci, ptr %i.cl, align 8
  %i.cm = add nsw i32 %.0111191, 1
  br label %bb.l

bb.k:                                             ; preds = %bb.i
  %i.cn = landingpad { ptr, i32 }
          cleanup
  br label %bb.ac

bb.l:                                             ; preds = %.lr.ph192, %bb.j
  %.1112 = phi i32 [ %i.cm, %bb.j ], [ %.0111191, %.lr.ph192 ]
  %i.co = load ptr, ptr %.sroa.0163.0189, align 8 ; 2 uses
  %.not178 = icmp eq ptr %i.co, null
  br i1 %.not178, label %.loopexit181, label %.lr.ph192

.loopexit181:                                     ; preds = %bb.l, %._crit_edge
  store i32 %spec.select, ptr %i.az, align 8
  %.not117 = icmp eq i32 %spec.select, 0
  br i1 %.not117, label %.loopexit, label %bb.m

bb.m:                                             ; preds = %.loopexit181
  %i.cp = zext i32 %spec.select to i64
  %i.cq = shl nuw nsw i64 %i.cp, 3                ; 2 uses
  %i.cr = invoke noalias noundef nonnull ptr @_Znam(i64 noundef %i.cq) #37
          to label %.lr.ph.preheader.i.i.i135 unwind label %bb.h ; 2 uses

.lr.ph.preheader.i.i.i135:                        ; preds = %bb.m
  store ptr %i.cr, ptr %i.ba, align 8
  call void @llvm.memset.p0.i64(ptr nonnull align 8 %i.cr, i8 0, i64 %i.cq, i1 false)
  %i.cs = load ptr, ptr %i.ao, align 8            ; 2 uses
  %.not180193 = icmp eq ptr %i.cs, null
  br i1 %.not180193, label %.loopexit, label %.lr.ph196

.lr.ph196:                                        ; preds = %.lr.ph.preheader.i.i.i135, %bb.q
  %.0113195 = phi i32 [ %.1114, %bb.q ], [ 0, %.lr.ph.preheader.i.i.i135 ] ; 3 uses
  %.sroa.0159.0194 = phi ptr [ %i.di, %bb.q ], [ %i.cs, %.lr.ph.preheader.i.i.i135 ] ; 4 uses
  %i.ct = getelementptr inbounds nuw i8, ptr %.sroa.0159.0194, i64 40
  %i.cu = load ptr, ptr %i.ct, align 8
  %.not122 = icmp eq ptr %i.cu, null
  br i1 %.not122, label %bb.q, label %bb.n

bb.n:                                             ; preds = %.lr.ph196
  %i.cv = getelementptr inbounds nuw i8, ptr %.sroa.0159.0194, i64 8
  %i.cw = getelementptr inbounds nuw i8, ptr %.sroa.0159.0194, i64 16
  %i.cx = load i32, ptr %i.cv, align 8
  %i.cy = zext i32 %i.cx to i64
  %i.cz = load ptr, ptr %i.ap, align 8
  %i.da = getelementptr inbounds nuw [8 x i8], ptr %i.cz, i64 %i.cy
  %i.db = load ptr, ptr %i.da, align 8
  %i.dc = invoke noundef ptr @_Z19CreateMeshMorphAnimRN5glTF25AssetERNS_4NodeER17AnimationSamplers(ptr nonnull align 8 poison, ptr noundef nonnull align 8 dereferenceable(552) %i.db, ptr noundef nonnull align 8 dereferenceable(32) %i.cw)
          to label %bb.o unwind label %bb.p

bb.o:                                             ; preds = %bb.n
  %i.dd = load ptr, ptr %i.ba, align 8
  %i.de = sext i32 %.0113195 to i64
  %i.df = getelementptr inbounds [8 x i8], ptr %i.dd, i64 %i.de
  store ptr %i.dc, ptr %i.df, align 8
  %i.dg = add nsw i32 %.0113195, 1
  br label %bb.q

bb.p:                                             ; preds = %bb.n
  %i.dh = landingpad { ptr, i32 }
          cleanup
  br label %bb.ac

bb.q:                                             ; preds = %bb.o, %.lr.ph196
  %.1114 = phi i32 [ %i.dg, %bb.o ], [ %.0113195, %.lr.ph196 ]
  %i.di = load ptr, ptr %.sroa.0159.0194, align 8 ; 2 uses
  %.not180 = icmp eq ptr %i.di, null
  br i1 %.not180, label %.loopexit, label %.lr.ph196

.loopexit:                                        ; preds = %bb.q, %.lr.ph.preheader.i.i.i135, %.loopexit181
  %.pr = load i32, ptr %i.av, align 8             ; 2 uses
  %.not213 = icmp eq i32 %.pr, 0
  br i1 %.not213, label %.preheader, label %.lr.ph201

.lr.ph201:                                        ; preds = %.loopexit
  %i.dj = load ptr, ptr %i.aw, align 8
  %wide.trip.count = zext i32 %.pr to i64
  br label %bb.r

.preheader:                                       ; preds = %bb.x, %.loopexit
  %.0109.lcssa.ph = phi double [ 0.000000e+00, %.loopexit ], [ %.6, %bb.x ] ; 2 uses
  %.pr247 = load i32, ptr %i.az, align 8          ; 2 uses
  %.not214 = icmp eq i32 %.pr247, 0
  br i1 %.not214, label %._crit_edge208, label %.lr.ph207

.lr.ph207:                                        ; preds = %.preheader
  %i.dk = load ptr, ptr %i.ba, align 8
  %wide.trip.count219 = zext i32 %.pr247 to i64
  br label %bb.z

bb.r:                                             ; preds = %.lr.ph201, %bb.x
  %indvars.iv = phi i64 [ 0, %.lr.ph201 ], [ %indvars.iv.next, %bb.x ] ; 2 uses
  %.0109198 = phi double [ 0.000000e+00, %.lr.ph201 ], [ %.6, %bb.x ] ; 3 uses
  %i.dl = getelementptr inbounds nuw [8 x i8], ptr %i.dj, i64 %indvars.iv
  %i.dm = load ptr, ptr %i.dl, align 8            ; 6 uses
  %i.dn = getelementptr inbounds nuw i8, ptr %i.dm, i64 1028
  %i.do = load i32, ptr %i.dn, align 4            ; 2 uses
  %.not119 = icmp eq i32 %i.do, 0
  br i1 %.not119, label %bb.t, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.dp = getelementptr inbounds nuw i8, ptr %i.dm, i64 1032
  %i.dq = load ptr, ptr %i.dp, align 8
  %i.dr = add i32 %i.do, -1
  %i.ds = zext i32 %i.dr to i64
  %i.dt = getelementptr inbounds nuw [24 x i8], ptr %i.dq, i64 %i.ds
  %.sroa.012.0.copyload = load double, ptr %i.dt, align 8 ; 2 uses
  %i.du = fcmp ogt double %.sroa.012.0.copyload, %.0109198
  %.1110 = select i1 %i.du, double %.sroa.012.0.copyload, double %.0109198
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %bb.r
  %.2 = phi double [ %.0109198, %bb.r ], [ %.1110, %bb.s ] ; 3 uses
  %i.dv = getelementptr inbounds nuw i8, ptr %i.dm, i64 1040
  %i.dw = load i32, ptr %i.dv, align 8            ; 2 uses
  %.not120 = icmp eq i32 %i.dw, 0
  br i1 %.not120, label %bb.v, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.dx = getelementptr inbounds nuw i8, ptr %i.dm, i64 1048
  %i.dy = load ptr, ptr %i.dx, align 8
  %i.dz = add i32 %i.dw, -1
  %i.ea = zext i32 %i.dz to i64
  %i.eb = getelementptr inbounds nuw [32 x i8], ptr %i.dy, i64 %i.ea
  %.sroa.09.0.copyload = load double, ptr %i.eb, align 8 ; 2 uses
  %i.ec = fcmp ogt double %.sroa.09.0.copyload, %.2
  %.3 = select i1 %i.ec, double %.sroa.09.0.copyload, double %.2
  br label %bb.v

bb.v:                                             ; preds = %bb.u, %bb.t
  %.4 = phi double [ %.2, %bb.t ], [ %.3, %bb.u ] ; 3 uses
  %i.ed = getelementptr inbounds nuw i8, ptr %i.dm, i64 1056
  %i.ee = load i32, ptr %i.ed, align 8            ; 2 uses
  %.not121 = icmp eq i32 %i.ee, 0
  br i1 %.not121, label %bb.x, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.ef = getelementptr inbounds nuw i8, ptr %i.dm, i64 1064
  %i.eg = load ptr, ptr %i.ef, align 8
  %i.eh = add i32 %i.ee, -1
  %i.ei = zext i32 %i.eh to i64
  %i.ej = getelementptr inbounds nuw [24 x i8], ptr %i.eg, i64 %i.ei
  %.sroa.0.0.copyload = load double, ptr %i.ej, align 8 ; 2 uses
  %i.ek = fcmp ogt double %.sroa.0.0.copyload, %.4
  %.5 = select i1 %i.ek, double %.sroa.0.0.copyload, double %.4
  br label %bb.x

bb.x:                                             ; preds = %bb.w, %bb.v
  %.6 = phi double [ %.4, %bb.v ], [ %.5, %bb.w ] ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %.preheader, label %bb.r, !llvm.loop !201

._crit_edge208:                                   ; preds = %bb.ab, %.preheader
  %.7.lcssa.ph = phi double [ %.0109.lcssa.ph, %.preheader ], [ %.9, %bb.ab ]
  %.pr250 = load ptr, ptr %i.ao, align 8          ; 2 uses
  store double %.7.lcssa.ph, ptr %i.at, align 8
  store double 1.000000e+03, ptr %i.au, align 8
  %.not5.i.i.i.i = icmp eq ptr %.pr250, null
  br i1 %.not5.i.i.i.i, label %_ZNSt10_HashtableIjSt4pairIKj17AnimationSamplersESaIS3_ENSt8__detail10_Select1stESt8equal_toIjESt4hashIjENS5_18_Mod_range_hashingENS5_20_Default_ranged_hashENS5_20_Prime_rehash_policyENS5_17_Hashtable_traitsILb0ELb0ELb1EEEE5clearEv.exit.i.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %._crit_edge208, %.lr.ph.i.i.i.i
  %.06.i.i.i.i = phi ptr [ %i.el, %.lr.ph.i.i.i.i ], [ %.pr250, %._crit_edge208 ] ; 2 uses
  %i.el = load ptr, ptr %.06.i.i.i.i, align 8     ; 2 uses
  call void @_ZdlPvm(ptr noundef nonnull %.06.i.i.i.i, i64 noundef 48) #35
  %.not.i.i.i.i = icmp eq ptr %i.el, null
  br i1 %.not.i.i.i.i, label %_ZNSt10_HashtableIjSt4pairIKj17AnimationSamplersESaIS3_ENSt8__detail10_Select1stESt8equal_toIjESt4hashIjENS5_18_Mod_range_hashingENS5_20_Default_ranged_hashENS5_20_Prime_rehash_policyENS5_17_Hashtable_traitsILb0ELb0ELb1EEEE5clearEv.exit.i.i, label %.lr.ph.i.i.i.i, !llvm.loop !200

_ZNSt10_HashtableIjSt4pairIKj17AnimationSamplersESaIS3_ENSt8__detail10_Select1stESt8equal_toIjESt4hashIjENS5_18_Mod_range_hashingENS5_20_Default_ranged_hashENS5_20_Prime_rehash_policyENS5_17_Hashtable_traitsILb0ELb0ELb1EEEE5clearEv.exit.i.i: ; preds = %.lr.ph.i.i.i.i, %._crit_edge208.thread, %._crit_edge208
  %i.em = load ptr, ptr %2, align 8
  %i.en = load i64, ptr %i.aq, align 8
  %i.eo = shl i64 %i.en, 3
  call void @llvm.memset.p0.i64(ptr align 8 %i.em, i8 0, i64 %i.eo, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ao, i8 0, i64 16, i1 false)
  %i.ep = load ptr, ptr %2, align 8               ; 2 uses
  %i.eq = icmp eq ptr %i.ep, %i.ar
  br i1 %i.eq, label %_ZNSt13unordered_mapIj17AnimationSamplersSt4hashIjESt8equal_toIjESaISt4pairIKjS0_EEED2Ev.exit, label %bb.y

bb.y:                                             ; preds = %_ZNSt10_HashtableIjSt4pairIKj17AnimationSamplersESaIS3_ENSt8__detail10_Select1stESt8equal_toIjESt4hashIjENS5_18_Mod_range_hashingENS5_20_Default_ranged_hashENS5_20_Prime_rehash_policyENS5_17_Hashtable_traitsILb0ELb0ELb1EEEE5clearEv.exit.i.i
  %i.er = load i64, ptr %i.aq, align 8
  %i.es = shl i64 %i.er, 3
  call void @_ZdlPvm(ptr noundef %i.ep, i64 noundef %i.es) #35
  br label %_ZNSt13unordered_mapIj17AnimationSamplersSt4hashIjESt8equal_toIjESaISt4pairIKjS0_EEED2Ev.exit

_ZNSt13unordered_mapIj17AnimationSamplersSt4hashIjESt8equal_toIjESaISt4pairIKjS0_EEED2Ev.exit: ; preds = %_ZNSt10_HashtableIjSt4pairIKj17AnimationSamplersESaIS3_ENSt8__detail10_Select1stESt8equal_toIjESt4hashIjENS5_18_Mod_range_hashingENS5_20_Default_ranged_hashENS5_20_Prime_rehash_policyENS5_17_Hashtable_traitsILb0ELb0ELb1EEEE5clearEv.exit.i.i, %bb.y
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #34
  %indvars.iv.next222.a = add nuw nsw i64 %indvars.iv221.a, 1 ; 2 uses
  %i.et = load i32, ptr %i.a, align 4
  %i.eu = zext i32 %i.et to i64
  %i.ev = icmp samesign ult i64 %indvars.iv.next222.a, %i.eu
  br i1 %i.ev, label %bb.d, label %.loopexit182, !llvm.loop !202

bb.z:                                             ; preds = %.lr.ph207, %bb.ab
  %indvars.iv216 = phi i64 [ 0, %.lr.ph207 ], [ %indvars.iv.next217, %bb.ab ] ; 2 uses
  %.7205 = phi double [ %.0109.lcssa.ph, %.lr.ph207 ], [ %.9, %bb.ab ] ; 3 uses
  %i.ew = getelementptr inbounds nuw [8 x i8], ptr %i.dk, i64 %indvars.iv216
  %i.ex = load ptr, ptr %i.ew, align 8            ; 2 uses
  %i.ey = getelementptr inbounds nuw i8, ptr %i.ex, i64 1028
  %i.ez = load i32, ptr %i.ey, align 4            ; 2 uses
  %.not118 = icmp eq i32 %i.ez, 0
  br i1 %.not118, label %bb.ab, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.fa = getelementptr inbounds nuw i8, ptr %i.ex, i64 1032
  %i.fb = load ptr, ptr %i.fa, align 8
  %i.fc = add i32 %i.ez, -1
  %i.fd = zext i32 %i.fc to i64
  %i.fe = getelementptr inbounds nuw [32 x i8], ptr %i.fb, i64 %i.fd
  %i.ff = load double, ptr %i.fe, align 8         ; 2 uses
end_hunk_2
begin_hunk_3_@_ZN9rapidjson22GenericSchemaValidatorINS_21GenericSchemaDocumentINS_12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEEES6_EENS_17BaseReaderHandlerIS4_vEES6_E8EndValueEv:bb.a
  %.not3033.i = icmp eq i64 %i.nl, 0
  br i1 %.not3033.i, label %._crit_edge.i, label %.lr.ph.i122.preheader

.lr.ph.i122.preheader:                            ; preds = %bb.bd
  %i.np = add i64 %.idx.i, -16                    ; 2 uses
  %i.nq = lshr exact i64 %i.np, 4
  %i.nr = add nuw nsw i64 %i.nq, 1
  %xtraiter = and i64 %i.nr, 7                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i122.prol.loopexit, label %.lr.ph.i122.prol

.lr.ph.i122.prol:                                 ; preds = %.lr.ph.i122.preheader, %.lr.ph.i122.prol
  %.035.i.prol = phi i64 [ %i.nv, %.lr.ph.i122.prol ], [ %i.nl, %.lr.ph.i122.preheader ]
  %.02834.i.prol = phi ptr [ %i.nw, %.lr.ph.i122.prol ], [ %i.nn, %.lr.ph.i122.preheader ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i122.prol ], [ 0, %.lr.ph.i122.preheader ]
  %i.ns = getelementptr inbounds nuw i8, ptr %.02834.i.prol, i64 8
  %i.nt = load i32, ptr %i.ns, align 8
  %i.nu = zext i32 %i.nt to i64
  %i.nv = add i64 %.035.i.prol, %i.nu             ; 3 uses
  %i.nw = getelementptr inbounds nuw i8, ptr %.02834.i.prol, i64 16 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i122.prol.loopexit, label %.lr.ph.i122.prol, !llvm.loop !707

.lr.ph.i122.prol.loopexit:                        ; preds = %.lr.ph.i122.prol, %.lr.ph.i122.preheader
  %.lcssa.unr = phi i64 [ poison, %.lr.ph.i122.preheader ], [ %i.nv, %.lr.ph.i122.prol ]
  %.035.i.unr = phi i64 [ %i.nl, %.lr.ph.i122.preheader ], [ %i.nv, %.lr.ph.i122.prol ]
  %.02834.i.unr = phi ptr [ %i.nn, %.lr.ph.i122.preheader ], [ %i.nw, %.lr.ph.i122.prol ]
  %i.nx = icmp ult i64 %i.np, 112
  br i1 %i.nx, label %._crit_edge.i, label %.lr.ph.i122

._crit_edge.i:                                    ; preds = %.lr.ph.i122.prol.loopexit, %.lr.ph.i122, %bb.bd
  %.0.lcssa.i = phi i64 [ 0, %bb.bd ], [ %.lcssa.unr, %.lr.ph.i122.prol.loopexit ], [ %i.ph, %.lr.ph.i122 ] ; 3 uses
  store i64 %i.nl, ptr %i.nc, align 8
  %i.ny = add i64 %.0.lcssa.i, %.idx.i            ; 2 uses
  %.not.i.i123 = icmp eq i64 %i.ny, 0
  br i1 %.not.i.i123, label %_ZN9rapidjson12CrtAllocator6MallocEm.exit.i, label %bb.be

bb.be:                                            ; preds = %._crit_edge.i
  %i.nz = call noalias ptr @malloc(i64 noundef %i.ny) #40
  br label %_ZN9rapidjson12CrtAllocator6MallocEm.exit.i

_ZN9rapidjson12CrtAllocator6MallocEm.exit.i:      ; preds = %bb.be, %._crit_edge.i
  %.0.i.i = phi ptr [ %i.nz, %bb.be ], [ null, %._crit_edge.i ] ; 3 uses
  store ptr %.0.i.i, ptr %i.na, align 8
  %i.oa = getelementptr inbounds nuw [16 x i8], ptr %.0.i.i, i64 %i.nl ; 2 uses
  store ptr %i.oa, ptr %i.mz, align 8
  %i.ob = load i64, ptr %i.nd, align 8            ; 2 uses
  %.not31.i = icmp eq i64 %i.ob, 0                ; 2 uses
  br i1 %.not31.i, label %bb.bg, label %bb.bf

.lr.ph.i122:                                      ; preds = %.lr.ph.i122.prol.loopexit, %.lr.ph.i122
  %.035.i = phi i64 [ %i.ph, %.lr.ph.i122 ], [ %.035.i.unr, %.lr.ph.i122.prol.loopexit ]
  %.02834.i = phi ptr [ %i.pi, %.lr.ph.i122 ], [ %.02834.i.unr, %.lr.ph.i122.prol.loopexit ] ; 9 uses
  %i.oc = getelementptr inbounds nuw i8, ptr %.02834.i, i64 8
  %i.od = load i32, ptr %i.oc, align 8
  %i.oe = zext i32 %i.od to i64
  %i.of = add i64 %.035.i, %i.oe
  %i.og = getelementptr inbounds nuw i8, ptr %.02834.i, i64 24
  %i.oh = load i32, ptr %i.og, align 8
  %i.oi = zext i32 %i.oh to i64
  %i.oj = add i64 %i.of, %i.oi
  %i.ok = getelementptr inbounds nuw i8, ptr %.02834.i, i64 40
  %i.ol = load i32, ptr %i.ok, align 8
  %i.om = zext i32 %i.ol to i64
  %i.on = add i64 %i.oj, %i.om
  %i.oo = getelementptr inbounds nuw i8, ptr %.02834.i, i64 56
  %i.op = load i32, ptr %i.oo, align 8
  %i.oq = zext i32 %i.op to i64
  %i.or = add i64 %i.on, %i.oq
  %i.os = getelementptr inbounds nuw i8, ptr %.02834.i, i64 72
  %i.ot = load i32, ptr %i.os, align 8
  %i.ou = zext i32 %i.ot to i64
  %i.ov = add i64 %i.or, %i.ou
  %i.ow = getelementptr inbounds nuw i8, ptr %.02834.i, i64 88
  %i.ox = load i32, ptr %i.ow, align 8
  %i.oy = zext i32 %i.ox to i64
  %i.oz = add i64 %i.ov, %i.oy
  %i.pa = getelementptr inbounds nuw i8, ptr %.02834.i, i64 104
  %i.pb = load i32, ptr %i.pa, align 8
  %i.pc = zext i32 %i.pb to i64
  %i.pd = add i64 %i.oz, %i.pc
  %i.pe = getelementptr inbounds nuw i8, ptr %.02834.i, i64 120
  %i.pf = load i32, ptr %i.pe, align 8
  %i.pg = zext i32 %i.pf to i64
  %i.ph = add i64 %i.pd, %i.pg                    ; 2 uses
  %i.pi = getelementptr inbounds nuw i8, ptr %.02834.i, i64 128 ; 2 uses
  %.not30.i.7 = icmp eq ptr %i.pi, %i.no
  br i1 %.not30.i.7, label %._crit_edge.i, label %.lr.ph.i122, !llvm.loop !596

bb.bf:                                            ; preds = %_ZN9rapidjson12CrtAllocator6MallocEm.exit.i
  %i.pj = load ptr, ptr %i.nm, align 8
  %i.pk = shl i64 %i.ob, 4
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %.0.i.i, ptr align 8 %i.pj, i64 %i.pk, i1 false)
  br label %bb.bg

bb.bg:                                            ; preds = %bb.bf, %_ZN9rapidjson12CrtAllocator6MallocEm.exit.i
  %.not32.i = icmp eq i64 %.0.lcssa.i, 0
  br i1 %.not32.i, label %bb.bi, label %bb.bh

bb.bh:                                            ; preds = %bb.bg
  %i.pl = load ptr, ptr %i.nh, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.oa, ptr align 1 %i.pl, i64 %.0.lcssa.i, i1 false)
  br label %bb.bi

bb.bi:                                            ; preds = %bb.bh, %bb.bg
  br i1 %.not31.i, label %_ZNK9rapidjson21GenericSchemaDocumentINS_12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEEES5_E10GetPointerEPKNS_8internal6SchemaIS8_EE.exit, label %.lr.ph38.i

.lr.ph38.i:                                       ; preds = %bb.bi, %.lr.ph38.i
  %.02736.i = phi i64 [ %i.px, %.lr.ph38.i ], [ 0, %bb.bi ] ; 3 uses
  %i.pm = load ptr, ptr %i.nm, align 8
  %i.pn = getelementptr inbounds nuw [16 x i8], ptr %i.pm, i64 %.02736.i
  %i.po = load ptr, ptr %i.pn, align 8
  %i.pp = load ptr, ptr %i.nh, align 8
  %i.pq = ptrtoint ptr %i.po to i64
  %i.pr = ptrtoint ptr %i.pp to i64
  %i.ps = sub i64 %i.pq, %i.pr
  %i.pt = load ptr, ptr %i.mz, align 8
  %i.pu = getelementptr inbounds i8, ptr %i.pt, i64 %i.ps
  %i.pv = load ptr, ptr %i.na, align 8
  %i.pw = getelementptr inbounds nuw [16 x i8], ptr %i.pv, i64 %.02736.i
  store ptr %i.pu, ptr %i.pw, align 8
  %i.px = add nuw i64 %.02736.i, 1                ; 2 uses
  %i.py = load i64, ptr %i.nd, align 8
  %i.pz = icmp ult i64 %i.px, %i.py
  br i1 %i.pz, label %.lr.ph38.i, label %_ZNK9rapidjson21GenericSchemaDocumentINS_12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEEES5_E10GetPointerEPKNS_8internal6SchemaIS8_EE.exit, !llvm.loop !597

bb.bj:                                            ; preds = %bb.bb
  %i.qa = getelementptr inbounds nuw i8, ptr %.0610.i, i64 24
  %i.qb = load ptr, ptr %i.qa, align 8, !noalias !704
  store ptr %i.qb, ptr %i.na, align 8, !alias.scope !704
  br label %_ZNK9rapidjson21GenericSchemaDocumentINS_12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEEES5_E10GetPointerEPKNS_8internal6SchemaIS8_EE.exit

bb.bk:                                            ; preds = %.lr.ph.i
  %i.qc = getelementptr inbounds nuw i8, ptr %.0610.i, i64 72 ; 2 uses
  %.not.i94 = icmp eq ptr %i.qc, %i.mv
  br i1 %.not.i94, label %_ZN9rapidjson14GenericPointerINS_12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEEES5_EC2ERKS8_.exit.i, label %.lr.ph.i, !llvm.loop !708

_ZN9rapidjson14GenericPointerINS_12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEEES5_EC2ERKS8_.exit.i: ; preds = %bb.bk, %bb.az
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(52) %4, i8 0, i64 52, i1 false), !alias.scope !704
  br label %_ZNK9rapidjson21GenericSchemaDocumentINS_12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEEES5_E10GetPointerEPKNS_8internal6SchemaIS8_EE.exit

_ZNK9rapidjson21GenericSchemaDocumentINS_12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEEES5_E10GetPointerEPKNS_8internal6SchemaIS8_EE.exit: ; preds = %.lr.ph38.i, %_ZN9rapidjson14GenericPointerINS_12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEEES5_EC2ERKS8_.exit.i, %bb.bj, %bb.ba, %bb.bi
  %i.qd = invoke noundef zeroext i1 @_ZNK9rapidjson14GenericPointerINS_12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEEES5_E9StringifyILb1ENS_19GenericStringBufferIS3_S5_EEEEbRT0_(ptr noundef nonnull align 8 dereferenceable(52) %4, ptr noundef nonnull align 8 dereferenceable(48) %3)
          to label %_ZNK9rapidjson14GenericPointerINS_12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEEES5_E20StringifyUriFragmentINS_19GenericStringBufferIS3_S5_EEEEbRT_.exit unwind label %bb.cb ; 0 uses

_ZNK9rapidjson14GenericPointerINS_12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEEES5_E20StringifyUriFragmentINS_19GenericStringBufferIS3_S5_EEEEbRT_.exit: ; preds = %_ZNK9rapidjson21GenericSchemaDocumentINS_12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEEES5_E10GetPointerEPKNS_8internal6SchemaIS8_EE.exit
  %i.qe = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.qf = load ptr, ptr %i.qe, align 8
  %.not.i97 = icmp eq ptr %i.qf, null
  br i1 %.not.i97, label %bb.bm, label %bb.bl

bb.bl:                                            ; preds = %_ZNK9rapidjson14GenericPointerINS_12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEEES5_E20StringifyUriFragmentINS_19GenericStringBufferIS3_S5_EEEEbRT_.exit
  %i.qg = getelementptr inbounds nuw i8, ptr %4, i64 24
  %i.qh = load ptr, ptr %i.qg, align 8
  call void @free(ptr noundef %i.qh) #34
  br label %bb.bm

bb.bm:                                            ; preds = %bb.bl, %_ZNK9rapidjson14GenericPointerINS_12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEEES5_E20StringifyUriFragmentINS_19GenericStringBufferIS3_S5_EEEEbRT_.exit
  %i.qi = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.qj = load ptr, ptr %i.qi, align 8            ; 2 uses
  %i.qk = icmp eq ptr %i.qj, null
  br i1 %i.qk, label %_ZN9rapidjson14GenericPointerINS_12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEEES5_ED2Ev.exit, label %bb.bn

bb.bn:                                            ; preds = %bb.bm
  call void @_ZdlPvm(ptr noundef nonnull %i.qj, i64 noundef 1) #35
  br label %_ZN9rapidjson14GenericPointerINS_12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEEES5_ED2Ev.exit

_ZN9rapidjson14GenericPointerINS_12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEEES5_ED2Ev.exit: ; preds = %bb.bm, %bb.bn
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #34
  %i.ql = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.qm = load ptr, ptr %i.ql, align 8
  %i.qn = getelementptr inbounds nuw i8, ptr %0, i64 128 ; 9 uses
  %i.qo = load ptr, ptr %i.qn, align 8            ; 2 uses
  %i.qp = ptrtoint ptr %i.qm to i64
  %i.qq = ptrtoint ptr %i.qo to i64
  %i.qr = sub i64 %i.qp, %i.qq
  %i.qs = icmp slt i64 %i.qr, 1
  br i1 %i.qs, label %bb.bo, label %bb.bp, !prof !6

bb.bo:                                            ; preds = %_ZN9rapidjson14GenericPointerINS_12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEEES5_ED2Ev.exit
  %i.qt = getelementptr inbounds nuw i8, ptr %0, i64 104
  invoke void @_ZN9rapidjson8internal5StackINS_12CrtAllocatorEE6ExpandIcEEvm(ptr noundef nonnull align 8 dereferenceable(48) %i.qt, i64 noundef 1)
          to label %._crit_edge202 unwind label %bb.cd

._crit_edge202:                                   ; preds = %bb.bo
  %.pre203 = load ptr, ptr %i.qn, align 8
  br label %bb.bp

bb.bp:                                            ; preds = %._crit_edge202, %_ZN9rapidjson14GenericPointerINS_12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEEES5_ED2Ev.exit
  %i.qu = phi ptr [ %.pre203, %._crit_edge202 ], [ %i.qo, %_ZN9rapidjson14GenericPointerINS_12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEEES5_ED2Ev.exit ] ; 2 uses
  %i.qv = getelementptr inbounds nuw i8, ptr %i.qu, i64 1
  store ptr %i.qv, ptr %i.qn, align 8
  store i8 0, ptr %i.qu, align 1
  %i.qw = load ptr, ptr %i.qn, align 8
  %i.qx = getelementptr inbounds i8, ptr %i.qw, i64 -1
  store ptr %i.qx, ptr %i.qn, align 8
  %i.qy = load ptr, ptr %i.a, align 8             ; 4 uses
  %i.qz = getelementptr inbounds i8, ptr %i.qy, i64 -88
  %i.ra = load ptr, ptr %i.qz, align 8            ; 2 uses
  %.not = icmp ne ptr %i.ra, null                 ; 2 uses
  br i1 %.not, label %bb.bq, label %bb.bs

bb.bq:                                            ; preds = %bb.bp
  %i.rb = getelementptr inbounds i8, ptr %i.qy, i64 -6
  %i.rc = load i8, ptr %i.rb, align 2, !range !19, !noundef !20
  %i.rd = trunc nuw i8 %i.rc to i1
  br i1 %i.rd, label %bb.br, label %bb.bs

bb.br:                                            ; preds = %bb.bq
  %i.re = getelementptr inbounds nuw i8, ptr %i.ra, i64 24
  %i.rf = load ptr, ptr %i.re, align 8
  %i.rg = getelementptr inbounds i8, ptr %i.rf, i64 -8
  %i.rh = load i64, ptr %i.rg, align 8
  br label %bb.bs

bb.bs:                                            ; preds = %bb.br, %bb.bp, %bb.bq
  %i.ri = phi i64 [ %i.rh, %bb.br ], [ 0, %bb.bq ], [ 0, %bb.bp ] ; 9 uses
  %i.rj = getelementptr inbounds i8, ptr %i.qy, i64 -144 ; 2 uses
  store ptr %i.rj, ptr %i.a, align 8
  %i.rk = getelementptr inbounds i8, ptr %i.qy, i64 -80
  %i.rl = load ptr, ptr %i.rk, align 8            ; 3 uses
  %.not.i66 = icmp eq ptr %i.rl, null
  br i1 %.not.i66, label %bb.bu, label %bb.bt

bb.bt:                                            ; preds = %bb.bs
  call void @_ZN9rapidjson12GenericValueINS_4UTF8IcEENS_12CrtAllocatorEED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %i.rl) #34
  call void @free(ptr noundef nonnull %i.rl) #34
  br label %bb.bu

bb.bu:                                            ; preds = %bb.bt, %bb.bs
  call void @_ZN9rapidjson8internal23SchemaValidationContextINS_21GenericSchemaDocumentINS_12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEEES7_EEED2Ev(ptr noundef nonnull align 8 dead_on_return(139) dereferenceable(139) %i.rj) #34
  %i.rm = load ptr, ptr %i.a, align 8             ; 5 uses
  %i.rn = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.ro = load ptr, ptr %i.rn, align 8
  %i.rp = icmp eq ptr %i.rm, %i.ro
  br i1 %i.rp, label %.critedge65, label %bb.bv

bb.bv:                                            ; preds = %bb.bu
  %i.rq = getelementptr inbounds i8, ptr %i.rm, i64 -7
  %i.rr = load i8, ptr %i.rq, align 1, !range !19
  %i.rs = trunc nuw i8 %i.rr to i1
  %or.cond = select i1 %.not, i1 %i.rs, i1 false
  br i1 %or.cond, label %bb.bw, label %.critedge65

bb.bw:                                            ; preds = %bb.bv
  %i.rt = getelementptr inbounds i8, ptr %i.rm, i64 -80 ; 2 uses
  %i.ru = load ptr, ptr %i.rt, align 8            ; 2 uses
  %.not51 = icmp eq ptr %i.ru, null
  br i1 %.not51, label %bb.bx, label %bb.cf

bb.bx:                                            ; preds = %bb.bw
  %i.rv = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.rw = load ptr, ptr %i.rv, align 8
  %.not.i98 = icmp eq ptr %i.rw, null
  br i1 %.not.i98, label %bb.by, label %bb.bz

bb.by:                                            ; preds = %bb.bx
  %i.rx = invoke noalias noundef nonnull dereferenceable(1) ptr @_Znwm(i64 noundef 1) #37
          to label %.noexc99 unwind label %bb.ce  ; 2 uses

.noexc99:                                         ; preds = %bb.by
  %i.ry = getelementptr inbounds nuw i8, ptr %0, i64 48
  store ptr %i.rx, ptr %i.ry, align 8
  store ptr %i.rx, ptr %i.rv, align 8
  br label %bb.bz

bb.bz:                                            ; preds = %bb.bx, %.noexc99
  %calloc = call dereferenceable_or_null(16) ptr @calloc(i64 1, i64 16) ; 3 uses
  %i.rz = getelementptr inbounds nuw i8, ptr %calloc, i64 14
  store i16 4, ptr %i.rz, align 2
  store ptr %calloc, ptr %i.rt, align 8
  br label %bb.cf

bb.ca:                                            ; preds = %bb.bc
  %i.sa = landingpad { ptr, i32 }
          cleanup
  br label %bb.cc

bb.cb:                                            ; preds = %_ZNK9rapidjson21GenericSchemaDocumentINS_12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEEES5_E10GetPointerEPKNS_8internal6SchemaIS8_EE.exit
  %i.sb = landingpad { ptr, i32 }
          cleanup
  call void @_ZN9rapidjson14GenericPointerINS_12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEEES5_ED2Ev(ptr noundef nonnull align 8 dead_on_return(52) dereferenceable(52) %4) #34
  br label %bb.cc

bb.cc:                                            ; preds = %bb.cb, %bb.ca
  %.pn = phi { ptr, i32 } [ %i.sb, %bb.cb ], [ %i.sa, %bb.ca ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #34
  br label %bb.cw

bb.cd:                                            ; preds = %bb.bo
  %i.sc = landingpad { ptr, i32 }
          cleanup
  br label %bb.cw

bb.ce:                                            ; preds = %bb.cr, %bb.by
  %i.sd = landingpad { ptr, i32 }
          cleanup
  br label %bb.cw

bb.cf:                                            ; preds = %bb.bz, %bb.bw
  %.032 = phi ptr [ %i.ru, %bb.bw ], [ %calloc, %bb.bz ] ; 10 uses
  %i.se = getelementptr inbounds nuw i8, ptr %.032, i64 8 ; 9 uses
  %i.sf = load ptr, ptr %i.se, align 8
  %i.sg = ptrtoint ptr %i.sf to i64               ; 2 uses
  %i.sh = and i64 %i.sg, 281474976710655
  %i.si = inttoptr i64 %i.sh to ptr               ; 2 uses
  %i.sj = load i32, ptr %.032, align 8            ; 4 uses
  %i.sk = zext i32 %i.sj to i64
  %.idx = shl nuw nsw i64 %i.sk, 4
  %i.sl = getelementptr inbounds nuw i8, ptr %i.si, i64 %.idx
  %.not52176 = icmp eq i32 %i.sj, 0
  br i1 %.not52176, label %.critedge62, label %.lr.ph179

bb.cg:                                            ; preds = %bb.ck, %bb.ch
  %i.sm = landingpad { ptr, i32 }
          cleanup
  br label %bb.cw

.lr.ph179:                                        ; preds = %bb.cf, %bb.cq
  %.031177 = phi ptr [ %i.vg, %bb.cq ], [ %i.si, %bb.cf ] ; 3 uses
  %i.sn = load i64, ptr %.031177, align 8
  %i.so = icmp eq i64 %i.sn, %i.ri
  br i1 %i.so, label %bb.ch, label %bb.cq

bb.ch:                                            ; preds = %.lr.ph179
  %i.sp = ptrtoint ptr %.031177 to i64
  %i.sq = sub i64 %i.sp, %i.sg
  %i.sr = lshr i64 %i.sq, 4
  %i.ss = trunc i64 %i.sr to i32
  %i.st = load ptr, ptr %0, align 8
  %i.su = getelementptr inbounds nuw i8, ptr %i.st, i64 216
  %i.sv = load ptr, ptr %i.su, align 8
  invoke void %i.sv(ptr noundef nonnull align 8 dereferenceable(220) %0, i32 noundef %i.ss, i32 noundef %i.sj)
          to label %bb.ci unwind label %bb.cg

bb.ci:                                            ; preds = %bb.ch
  %i.sw = getelementptr inbounds nuw i8, ptr %0, i64 212
  %i.sx = load i32, ptr %i.sw, align 4
  %i.sy = trunc i32 %i.sx to i1
  br i1 %i.sy, label %bb.cj, label %.critedge

bb.cj:                                            ; preds = %bb.ci
  %i.sz = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.ta = load ptr, ptr %i.sz, align 8
  %.not.i101 = icmp eq ptr %i.ta, null
  br i1 %.not.i101, label %bb.ck, label %_ZN9rapidjson22GenericSchemaValidatorINS_21GenericSchemaDocumentINS_12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEEES6_EENS_17BaseReaderHandlerIS4_vEES6_E17GetStateAllocatorEv.exit103

bb.ck:                                            ; preds = %bb.cj
  %i.tb = invoke noalias noundef nonnull dereferenceable(1) ptr @_Znwm(i64 noundef 1) #37
          to label %.noexc102 unwind label %bb.cg ; 2 uses

.noexc102:                                        ; preds = %bb.ck
  %i.tc = getelementptr inbounds nuw i8, ptr %0, i64 48
  store ptr %i.tb, ptr %i.tc, align 8
  store ptr %i.tb, ptr %i.sz, align 8
  br label %_ZN9rapidjson22GenericSchemaValidatorINS_21GenericSchemaDocumentINS_12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEEES6_EENS_17BaseReaderHandlerIS4_vEES6_E17GetStateAllocatorEv.exit103

_ZN9rapidjson22GenericSchemaValidatorINS_21GenericSchemaDocumentINS_12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEEES6_EENS_17BaseReaderHandlerIS4_vEES6_E17GetStateAllocatorEv.exit103: ; preds = %.noexc102, %bb.cj
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #34
  %i.td = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i64 0, ptr %i.td, align 8
  store i64 %i.ri, ptr %2, align 8
  %.not.i.i104 = icmp sgt i64 %i.ri, -1
  %spec.select.i.i = select i1 %.not.i.i104, i16 406, i16 278
  %.not4.i.i = icmp ult i64 %i.ri, 4294967296
  %.not5.i.i = icmp samesign ult i64 %i.ri, 2147483648
  %spec.store.select.i.i = select i1 %.not5.i.i, i16 502, i16 470
  %storemerge.i.i = select i1 %.not4.i.i, i16 %spec.store.select.i.i, i16 %spec.select.i.i
  %i.te = getelementptr inbounds nuw i8, ptr %2, i64 14 ; 2 uses
  store i16 %storemerge.i.i, ptr %i.te, align 2
  %i.tf = load i32, ptr %.032, align 8            ; 3 uses
  %i.tg = getelementptr inbounds nuw i8, ptr %.032, i64 4 ; 2 uses
  %i.th = load i32, ptr %i.tg, align 4            ; 5 uses
  %.not.i4.i = icmp ult i32 %i.tf, %i.th
  br i1 %.not.i4.i, label %_ZN9rapidjson22GenericSchemaValidatorINS_21GenericSchemaDocumentINS_12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEEES6_EENS_17BaseReaderHandlerIS4_vEES6_E17GetStateAllocatorEv.exit103._ZN9rapidjson12GenericValueINS_4UTF8IcEENS_12CrtAllocatorEE8PushBackImEENS_8internal9DisableIfINS6_15RemoveSfinaeTagIPFRNS6_9SfinaeTagENS6_6OrExprINS6_9IsPointerIT_EENS6_14IsGenericValueISD_EEEEEE4TypeERS4_E4TypeESD_RS3_.exit_crit_edge, label %bb.cl

_ZN9rapidjson22GenericSchemaValidatorINS_21GenericSchemaDocumentINS_12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEEES6_EENS_17BaseReaderHandlerIS4_vEES6_E17GetStateAllocatorEv.exit103._ZN9rapidjson12GenericValueINS_4UTF8IcEENS_12CrtAllocatorEE8PushBackImEENS_8internal9DisableIfINS6_15RemoveSfinaeTagIPFRNS6_9SfinaeTagENS6_6OrExprINS6_9IsPointerIT_EENS6_14IsGenericValueISD_EEEEEE4TypeERS4_E4TypeESD_RS3_.exit_crit_edge: ; preds = %_ZN9rapidjson22GenericSchemaValidatorINS_21GenericSchemaDocumentINS_12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEEES6_EENS_17BaseReaderHandlerIS4_vEES6_E17GetStateAllocatorEv.exit103
  %.pre204 = load ptr, ptr %i.se, align 8
  br label %_ZN9rapidjson12GenericValueINS_4UTF8IcEENS_12CrtAllocatorEE8PushBackImEENS_8internal9DisableIfINS6_15RemoveSfinaeTagIPFRNS6_9SfinaeTagENS6_6OrExprINS6_9IsPointerIT_EENS6_14IsGenericValueISD_EEEEEE4TypeERS4_E4TypeESD_RS3_.exit

bb.cl:                                            ; preds = %_ZN9rapidjson22GenericSchemaValidatorINS_21GenericSchemaDocumentINS_12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEEES6_EENS_17BaseReaderHandlerIS4_vEES6_E17GetStateAllocatorEv.exit103
  %i.ti = icmp eq i32 %i.th, 0
  %i.tj = add i32 %i.th, 1
  %i.tk = lshr i32 %i.tj, 1
  %i.tl = add i32 %i.tk, %i.th
  %i.tm = select i1 %i.ti, i32 16, i32 %i.tl      ; 3 uses
  %i.tn = icmp ugt i32 %i.tm, %i.th
  %.pre205 = load ptr, ptr %i.se, align 8         ; 2 uses
  br i1 %i.tn, label %_ZN9rapidjson12CrtAllocator7ReallocEPvmm.exit.i.i.i, label %_ZN9rapidjson12GenericValueINS_4UTF8IcEENS_12CrtAllocatorEE8PushBackImEENS_8internal9DisableIfINS6_15RemoveSfinaeTagIPFRNS6_9SfinaeTagENS6_6OrExprINS6_9IsPointerIT_EENS6_14IsGenericValueISD_EEEEEE4TypeERS4_E4TypeESD_RS3_.exit

_ZN9rapidjson12CrtAllocator7ReallocEPvmm.exit.i.i.i: ; preds = %bb.cl
  %i.to = ptrtoint ptr %.pre205 to i64
  %i.tp = and i64 %i.to, 281474976710655
  %i.tq = inttoptr i64 %i.tp to ptr
  %i.tr = zext i32 %i.tm to i64
  %i.ts = shl nuw nsw i64 %i.tr, 4
  %i.tt = call ptr @realloc(ptr noundef %i.tq, i64 noundef %i.ts) #41
  %i.tu = load ptr, ptr %i.se, align 8
  %i.tv = ptrtoint ptr %i.tu to i64
  %i.tw = and i64 %i.tv, -281474976710656
  %i.tx = ptrtoint ptr %i.tt to i64
  %i.ty = or i64 %i.tw, %i.tx
  %i.tz = inttoptr i64 %i.ty to ptr               ; 2 uses
  store ptr %i.tz, ptr %i.se, align 8
  store i32 %i.tm, ptr %i.tg, align 4
  %.pre.i.i = load i32, ptr %.032, align 8
  br label %_ZN9rapidjson12GenericValueINS_4UTF8IcEENS_12CrtAllocatorEE8PushBackImEENS_8internal9DisableIfINS6_15RemoveSfinaeTagIPFRNS6_9SfinaeTagENS6_6OrExprINS6_9IsPointerIT_EENS6_14IsGenericValueISD_EEEEEE4TypeERS4_E4TypeESD_RS3_.exit

_ZN9rapidjson12GenericValueINS_4UTF8IcEENS_12CrtAllocatorEE8PushBackImEENS_8internal9DisableIfINS6_15RemoveSfinaeTagIPFRNS6_9SfinaeTagENS6_6OrExprINS6_9IsPointerIT_EENS6_14IsGenericValueISD_EEEEEE4TypeERS4_E4TypeESD_RS3_.exit: ; preds = %_ZN9rapidjson22GenericSchemaValidatorINS_21GenericSchemaDocumentINS_12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEEES6_EENS_17BaseReaderHandlerIS4_vEES6_E17GetStateAllocatorEv.exit103._ZN9rapidjson12GenericValueINS_4UTF8IcEENS_12CrtAllocatorEE8PushBackImEENS_8internal9DisableIfINS6_15RemoveSfinaeTagIPFRNS6_9SfinaeTagENS6_6OrExprINS6_9IsPointerIT_EENS6_14IsGenericValueISD_EEEEEE4TypeERS4_E4TypeESD_RS3_.exit_crit_edge, %bb.cl, %_ZN9rapidjson12CrtAllocator7ReallocEPvmm.exit.i.i.i
  %i.ua = phi ptr [ %i.tz, %_ZN9rapidjson12CrtAllocator7ReallocEPvmm.exit.i.i.i ], [ %.pre205, %bb.cl ], [ %.pre204, %_ZN9rapidjson22GenericSchemaValidatorINS_21GenericSchemaDocumentINS_12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEEES6_EENS_17BaseReaderHandlerIS4_vEES6_E17GetStateAllocatorEv.exit103._ZN9rapidjson12GenericValueINS_4UTF8IcEENS_12CrtAllocatorEE8PushBackImEENS_8internal9DisableIfINS6_15RemoveSfinaeTagIPFRNS6_9SfinaeTagENS6_6OrExprINS6_9IsPointerIT_EENS6_14IsGenericValueISD_EEEEEE4TypeERS4_E4TypeESD_RS3_.exit_crit_edge ]
  %i.ub = phi i32 [ %.pre.i.i, %_ZN9rapidjson12CrtAllocator7ReallocEPvmm.exit.i.i.i ], [ %i.tf, %bb.cl ], [ %i.tf, %_ZN9rapidjson22GenericSchemaValidatorINS_21GenericSchemaDocumentINS_12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEEES6_EENS_17BaseReaderHandlerIS4_vEES6_E17GetStateAllocatorEv.exit103._ZN9rapidjson12GenericValueINS_4UTF8IcEENS_12CrtAllocatorEE8PushBackImEENS_8internal9DisableIfINS6_15RemoveSfinaeTagIPFRNS6_9SfinaeTagENS6_6OrExprINS6_9IsPointerIT_EENS6_14IsGenericValueISD_EEEEEE4TypeERS4_E4TypeESD_RS3_.exit_crit_edge ] ; 2 uses
  %i.uc = ptrtoint ptr %i.ua to i64
  %i.ud = and i64 %i.uc, 281474976710655
  %i.ue = inttoptr i64 %i.ud to ptr
  %i.uf = add i32 %i.ub, 1
  store i32 %i.uf, ptr %.032, align 8
  %i.ug = zext i32 %i.ub to i64
  %i.uh = getelementptr inbounds nuw [16 x i8], ptr %i.ue, i64 %i.ug
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.uh, ptr noundef nonnull align 8 dereferenceable(16) %2, i64 16, i1 false)
  store i16 0, ptr %i.te, align 2
  call void @_ZN9rapidjson12GenericValueINS_4UTF8IcEENS_12CrtAllocatorEED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %2) #34
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #34
  %i.ui = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.uj = load ptr, ptr %i.ui, align 8            ; 2 uses
  %.promoted = load ptr, ptr %i.qn, align 8       ; 2 uses
  %i.uk = icmp eq ptr %.promoted, %i.uj
  br i1 %i.uk, label %.critedge, label %.lr.ph266

bb.cm:                                            ; preds = %.lr.ph266
  %i.ul = icmp eq ptr %i.un, %i.uj
  br i1 %i.ul, label %.critedge, label %.lr.ph266, !llvm.loop !709

.lr.ph266:                                        ; preds = %_ZN9rapidjson12GenericValueINS_4UTF8IcEENS_12CrtAllocatorEE8PushBackImEENS_8internal9DisableIfINS6_15RemoveSfinaeTagIPFRNS6_9SfinaeTagENS6_6OrExprINS6_9IsPointerIT_EENS6_14IsGenericValueISD_EEEEEE4TypeERS4_E4TypeESD_RS3_.exit, %bb.cm
  %i.um = phi ptr [ %i.un, %bb.cm ], [ %.promoted, %_ZN9rapidjson12GenericValueINS_4UTF8IcEENS_12CrtAllocatorEE8PushBackImEENS_8internal9DisableIfINS6_15RemoveSfinaeTagIPFRNS6_9SfinaeTagENS6_6OrExprINS6_9IsPointerIT_EENS6_14IsGenericValueISD_EEEEEE4TypeERS4_E4TypeESD_RS3_.exit ]
  %i.un = getelementptr inbounds i8, ptr %i.um, i64 -1 ; 4 uses
  store ptr %i.un, ptr %i.qn, align 8
  %i.uo = load i8, ptr %i.un, align 1
  %.not53 = icmp eq i8 %i.uo, 47
  br i1 %.not53, label %..critedge.loopexit_crit_edge, label %bb.cm, !llvm.loop !709

..critedge.loopexit_crit_edge:                    ; preds = %.lr.ph266
  br label %.critedge, !llvm.loop !709

.critedge:                                        ; preds = %bb.cm, %_ZN9rapidjson12GenericValueINS_4UTF8IcEENS_12CrtAllocatorEE8PushBackImEENS_8internal9DisableIfINS6_15RemoveSfinaeTagIPFRNS6_9SfinaeTagENS6_6OrExprINS6_9IsPointerIT_EENS6_14IsGenericValueISD_EEEEEE4TypeERS4_E4TypeESD_RS3_.exit, %..critedge.loopexit_crit_edge, %bb.ci
  %i.up = getelementptr inbounds i8, ptr %i.rm, i64 -96
  store i32 11, ptr %i.up, align 8
  %i.uq = load atomic i8, ptr @_ZGVZN9rapidjson8internal6SchemaINS_21GenericSchemaDocumentINS_12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEEES7_EEE20GetUniqueItemsStringEvE1v acquire, align 8
  %i.ur = icmp eq i8 %i.uq, 0
  br i1 %i.ur, label %bb.cn, label %bb.cp, !prof !159

bb.cn:                                            ; preds = %.critedge
  %i.us = call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN9rapidjson8internal6SchemaINS_21GenericSchemaDocumentINS_12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEEES7_EEE20GetUniqueItemsStringEvE1v) #34
  %.not.i12.i = icmp eq i32 %i.us, 0
  br i1 %.not.i12.i, label %bb.cp, label %bb.co

bb.co:                                            ; preds = %bb.cn
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) @_ZZN9rapidjson8internal6SchemaINS_21GenericSchemaDocumentINS_12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEEES7_EEE20GetUniqueItemsStringEvE1v, i8 0, i64 16, i1 false)
  store i16 1029, ptr getelementptr inbounds nuw (i8, ptr @_ZZN9rapidjson8internal6SchemaINS_21GenericSchemaDocumentINS_12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEEES7_EEE20GetUniqueItemsStringEvE1v, i64 14), align 2
  %i.ut = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZZN9rapidjson8internal6SchemaINS_21GenericSchemaDocumentINS_12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEEES7_EEE20GetUniqueItemsStringEvE1v, i64 8), align 8
  %i.uu = ptrtoint ptr %i.ut to i64
  %i.uv = and i64 %i.uu, -281474976710656
  %i.uw = or i64 %i.uv, ptrtoint (ptr @_ZZN9rapidjson8internal6SchemaINS_21GenericSchemaDocumentINS_12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEEES7_EEE20GetUniqueItemsStringEvE1s to i64)
  %i.ux = inttoptr i64 %i.uw to ptr
  store ptr %i.ux, ptr getelementptr inbounds nuw (i8, ptr @_ZZN9rapidjson8internal6SchemaINS_21GenericSchemaDocumentINS_12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEEES7_EEE20GetUniqueItemsStringEvE1v, i64 8), align 8
  store i32 11, ptr @_ZZN9rapidjson8internal6SchemaINS_21GenericSchemaDocumentINS_12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEEES7_EEE20GetUniqueItemsStringEvE1v, align 8
  call void @__cxa_guard_release(ptr nonnull @_ZGVZN9rapidjson8internal6SchemaINS_21GenericSchemaDocumentINS_12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEEES7_EEE20GetUniqueItemsStringEvE1v) #34
  br label %bb.cp

bb.cp:                                            ; preds = %.critedge, %bb.cn, %bb.co
  %i.uy = load i16, ptr getelementptr inbounds nuw (i8, ptr @_ZZN9rapidjson8internal6SchemaINS_21GenericSchemaDocumentINS_12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEEES7_EEE20GetUniqueItemsStringEvE1v, i64 14), align 2
  %i.uz = and i16 %i.uy, 4096
  %.not.i.i107 = icmp eq i16 %i.uz, 0
  %i.va = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZZN9rapidjson8internal6SchemaINS_21GenericSchemaDocumentINS_12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEEES7_EEE20GetUniqueItemsStringEvE1v, i64 8), align 8
  %i.vb = ptrtoint ptr %i.va to i64
  %i.vc = and i64 %i.vb, 281474976710655
  %i.vd = inttoptr i64 %i.vc to ptr
  %i.ve = select i1 %.not.i.i107, ptr %i.vd, ptr @_ZZN9rapidjson8internal6SchemaINS_21GenericSchemaDocumentINS_12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEEES7_EEE20GetUniqueItemsStringEvE1v
  %i.vf = getelementptr inbounds i8, ptr %i.rm, i64 -104
  store ptr %i.ve, ptr %i.vf, align 8
  br label %.critedge64

bb.cq:                                            ; preds = %.lr.ph179
  %i.vg = getelementptr inbounds nuw i8, ptr %.031177, i64 16 ; 2 uses
  %.not52 = icmp eq ptr %i.vg, %i.sl
  br i1 %.not52, label %.critedge62, label %.lr.ph179, !llvm.loop !710

.critedge62:                                      ; preds = %bb.cq, %bb.cf
  %i.vh = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.vi = load ptr, ptr %i.vh, align 8
  %.not.i108 = icmp eq ptr %i.vi, null
  br i1 %.not.i108, label %bb.cr, label %_ZN9rapidjson22GenericSchemaValidatorINS_21GenericSchemaDocumentINS_12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEEES6_EENS_17BaseReaderHandlerIS4_vEES6_E17GetStateAllocatorEv.exit110

bb.cr:                                            ; preds = %.critedge62
  %i.vj = invoke noalias noundef nonnull dereferenceable(1) ptr @_Znwm(i64 noundef 1) #37
          to label %.noexc109 unwind label %bb.ce ; 2 uses

.noexc109:                                        ; preds = %bb.cr
  %i.vk = getelementptr inbounds nuw i8, ptr %0, i64 48
  store ptr %i.vj, ptr %i.vk, align 8
  store ptr %i.vj, ptr %i.vh, align 8
  %.pre206 = load i32, ptr %.032, align 8
  br label %_ZN9rapidjson22GenericSchemaValidatorINS_21GenericSchemaDocumentINS_12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEEES6_EENS_17BaseReaderHandlerIS4_vEES6_E17GetStateAllocatorEv.exit110

_ZN9rapidjson22GenericSchemaValidatorINS_21GenericSchemaDocumentINS_12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEEES6_EENS_17BaseReaderHandlerIS4_vEES6_E17GetStateAllocatorEv.exit110: ; preds = %.noexc109, %.critedge62
  %i.vl = phi i32 [ %.pre206, %.noexc109 ], [ %i.sj, %.critedge62 ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #34
  %i.vm = getelementptr inbounds nuw i8, ptr %1, i64 8
  store i64 0, ptr %i.vm, align 8
  store i64 %i.ri, ptr %1, align 8
  %.not.i.i111 = icmp sgt i64 %i.ri, -1
  %spec.select.i.i112 = select i1 %.not.i.i111, i16 406, i16 278
  %.not4.i.i113 = icmp ult i64 %i.ri, 4294967296
  %.not5.i.i114 = icmp samesign ult i64 %i.ri, 2147483648
  %spec.store.select.i.i115 = select i1 %.not5.i.i114, i16 502, i16 470
  %storemerge.i.i116 = select i1 %.not4.i.i113, i16 %spec.store.select.i.i115, i16 %spec.select.i.i112
  %i.vn = getelementptr inbounds nuw i8, ptr %1, i64 14 ; 2 uses
  store i16 %storemerge.i.i116, ptr %i.vn, align 2
  %i.vo = getelementptr inbounds nuw i8, ptr %.032, i64 4 ; 2 uses
  %i.vp = load i32, ptr %i.vo, align 4            ; 5 uses
  %.not.i4.i117 = icmp ult i32 %i.vl, %i.vp
  br i1 %.not.i4.i117, label %_ZN9rapidjson22GenericSchemaValidatorINS_21GenericSchemaDocumentINS_12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEEES6_EENS_17BaseReaderHandlerIS4_vEES6_E17GetStateAllocatorEv.exit110._crit_edge, label %bb.cs

_ZN9rapidjson22GenericSchemaValidatorINS_21GenericSchemaDocumentINS_12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEEES6_EENS_17BaseReaderHandlerIS4_vEES6_E17GetStateAllocatorEv.exit110._crit_edge: ; preds = %_ZN9rapidjson22GenericSchemaValidatorINS_21GenericSchemaDocumentINS_12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEEES6_EENS_17BaseReaderHandlerIS4_vEES6_E17GetStateAllocatorEv.exit110
  %.pre207 = load ptr, ptr %i.se, align 8
  br label %bb.ct

bb.cs:                                            ; preds = %_ZN9rapidjson22GenericSchemaValidatorINS_21GenericSchemaDocumentINS_12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEEES6_EENS_17BaseReaderHandlerIS4_vEES6_E17GetStateAllocatorEv.exit110
  %i.vq = icmp eq i32 %i.vp, 0
  %i.vr = add i32 %i.vp, 1
  %i.vs = lshr i32 %i.vr, 1
  %i.vt = add i32 %i.vs, %i.vp
  %i.vu = select i1 %i.vq, i32 16, i32 %i.vt      ; 3 uses
  %i.vv = icmp ugt i32 %i.vu, %i.vp
  %.pre208 = load ptr, ptr %i.se, align 8         ; 2 uses
  br i1 %i.vv, label %_ZN9rapidjson12CrtAllocator7ReallocEPvmm.exit.i.i.i118, label %bb.ct

_ZN9rapidjson12CrtAllocator7ReallocEPvmm.exit.i.i.i118: ; preds = %bb.cs
  %i.vw = ptrtoint ptr %.pre208 to i64
  %i.vx = and i64 %i.vw, 281474976710655
  %i.vy = inttoptr i64 %i.vx to ptr
  %i.vz = zext i32 %i.vu to i64
  %i.wa = shl nuw nsw i64 %i.vz, 4
  %i.wb = call ptr @realloc(ptr noundef %i.vy, i64 noundef %i.wa) #41
  %i.wc = load ptr, ptr %i.se, align 8
  %i.wd = ptrtoint ptr %i.wc to i64
  %i.we = and i64 %i.wd, -281474976710656
  %i.wf = ptrtoint ptr %i.wb to i64
  %i.wg = or i64 %i.we, %i.wf
  %i.wh = inttoptr i64 %i.wg to ptr               ; 2 uses
  store ptr %i.wh, ptr %i.se, align 8
  store i32 %i.vu, ptr %i.vo, align 4
  %.pre.i.i119 = load i32, ptr %.032, align 8
  br label %bb.ct

bb.ct:                                            ; preds = %_ZN9rapidjson22GenericSchemaValidatorINS_21GenericSchemaDocumentINS_12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEEES6_EENS_17BaseReaderHandlerIS4_vEES6_E17GetStateAllocatorEv.exit110._crit_edge, %_ZN9rapidjson12CrtAllocator7ReallocEPvmm.exit.i.i.i118, %bb.cs
  %i.wi = phi ptr [ %i.wh, %_ZN9rapidjson12CrtAllocator7ReallocEPvmm.exit.i.i.i118 ], [ %.pre208, %bb.cs ], [ %.pre207, %_ZN9rapidjson22GenericSchemaValidatorINS_21GenericSchemaDocumentINS_12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEEES6_EENS_17BaseReaderHandlerIS4_vEES6_E17GetStateAllocatorEv.exit110._crit_edge ]
  %i.wj = phi i32 [ %.pre.i.i119, %_ZN9rapidjson12CrtAllocator7ReallocEPvmm.exit.i.i.i118 ], [ %i.vl, %bb.cs ], [ %i.vl, %_ZN9rapidjson22GenericSchemaValidatorINS_21GenericSchemaDocumentINS_12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEEES6_EENS_17BaseReaderHandlerIS4_vEES6_E17GetStateAllocatorEv.exit110._crit_edge ] ; 2 uses
  %i.wk = ptrtoint ptr %i.wi to i64
  %i.wl = and i64 %i.wk, 281474976710655
  %i.wm = inttoptr i64 %i.wl to ptr
  %i.wn = add i32 %i.wj, 1
  store i32 %i.wn, ptr %.032, align 8
  %i.wo = zext i32 %i.wj to i64
  %i.wp = getelementptr inbounds nuw [16 x i8], ptr %i.wm, i64 %i.wo
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.wp, ptr noundef nonnull align 8 dereferenceable(16) %1, i64 16, i1 false)
  store i16 0, ptr %i.vn, align 2
  call void @_ZN9rapidjson12GenericValueINS_4UTF8IcEENS_12CrtAllocatorEED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %1) #34
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #34
  br label %.critedge65

.critedge65:                                      ; preds = %bb.ct, %bb.bv, %bb.bu
  %i.wq = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.wr = load ptr, ptr %i.wq, align 8            ; 2 uses
  %.promoted180 = load ptr, ptr %i.qn, align 8    ; 2 uses
  %i.ws = icmp eq ptr %.promoted180, %i.wr
  br i1 %i.ws, label %.critedge64, label %.lr.ph268

bb.cu:                                            ; preds = %.lr.ph268
  %i.wt = icmp eq ptr %i.wv, %i.wr
  br i1 %i.wt, label %.critedge64, label %.lr.ph268, !llvm.loop !711

.lr.ph268:                                        ; preds = %.critedge65, %bb.cu
  %i.wu = phi ptr [ %i.wv, %bb.cu ], [ %.promoted180, %.critedge65 ]
  %i.wv = getelementptr inbounds i8, ptr %i.wu, i64 -1 ; 4 uses
  store ptr %i.wv, ptr %i.qn, align 8
  %i.ww = load i8, ptr %i.wv, align 1
  %.not60 = icmp eq i8 %i.ww, 47
  br i1 %.not60, label %..critedge64.loopexit_crit_edge269, label %bb.cu, !llvm.loop !711

..critedge64.loopexit_crit_edge269:               ; preds = %.lr.ph268
  br label %.critedge64, !llvm.loop !711

.critedge64:                                      ; preds = %bb.cu, %.critedge65, %..critedge64.loopexit_crit_edge269, %bb.cp
  %.3 = phi i1 [ false, %bb.cp ], [ true, %.critedge65 ], [ true, %..critedge64.loopexit_crit_edge269 ], [ true, %bb.cu ]
  %i.wx = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.wy = load ptr, ptr %i.wx, align 8
  call void @free(ptr noundef %i.wy) #34
  %i.wz = load ptr, ptr %i.ml, align 8            ; 2 uses
  %i.xa = icmp eq ptr %i.wz, null
  br i1 %i.xa, label %_ZN9rapidjson19GenericStringBufferINS_4UTF8IcEENS_12CrtAllocatorEED2Ev.exit, label %bb.cv

bb.cv:                                            ; preds = %.critedge64
  call void @_ZdlPvm(ptr noundef nonnull %i.wz, i64 noundef 1) #35
  br label %_ZN9rapidjson19GenericStringBufferINS_4UTF8IcEENS_12CrtAllocatorEED2Ev.exit

_ZN9rapidjson19GenericStringBufferINS_4UTF8IcEENS_12CrtAllocatorEED2Ev.exit: ; preds = %.critedge64, %bb.cv
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #34
  br label %bb.cx

bb.cw:                                            ; preds = %bb.cg, %bb.ce, %bb.cd, %bb.cc
  %.pn54.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn, %bb.cc ], [ %i.sc, %bb.cd ], [ %i.sm, %bb.cg ], [ %i.sd, %bb.ce ]
  call void @_ZN9rapidjson19GenericStringBufferINS_4UTF8IcEENS_12CrtAllocatorEED2Ev(ptr noundef nonnull align 8 dead_on_return(48) dereferenceable(48) %3) #34
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #34
  resume { ptr, i32 } %.pn54.pn.pn.pn.pn

bb.cx:                                            ; preds = %.thread137, %_ZN9rapidjson19GenericStringBufferINS_4UTF8IcEENS_12CrtAllocatorEED2Ev.exit
  %.4 = phi i1 [ %.3, %_ZN9rapidjson19GenericStringBufferINS_4UTF8IcEENS_12CrtAllocatorEED2Ev.exit ], [ false, %.thread137 ]
  ret i1 %.4
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN9rapidjson8internal5StackINS_12CrtAllocatorEE6ExpandINS0_23SchemaValidationContextINS_21GenericSchemaDocumentINS_12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorIS2_EEEES2_EEEEEEvm(ptr noundef nonnull align 8 dereferenceable(48) %0, i64 noundef %1) local_unnamed_addr #6 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8              ; 4 uses
  %i.c = icmp eq ptr %i.b, null
  br i1 %i.c, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  %i.d = load ptr, ptr %0, align 8
  %.not = icmp eq ptr %i.d, null
  br i1 %.not, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.e = tail call noalias noundef nonnull dereferenceable(1) ptr @_Znwm(i64 noundef 1) #37 ; 2 uses
  store ptr %i.e, ptr %0, align 8
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.e, ptr %i.f, align 8
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.h = load i64, ptr %i.g, align 8
  br label %bb.f

bb.e:                                             ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.j = load ptr, ptr %i.i, align 8
  %i.k = ptrtoint ptr %i.j to i64
  %i.l = ptrtoint ptr %i.b to i64                 ; 2 uses
  %i.m = sub i64 %i.k, %i.l                       ; 2 uses
  %i.n = add i64 %i.m, 1
  %i.o = lshr i64 %i.n, 1
  %i.p = add i64 %i.o, %i.m
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %.pre-phi = phi i64 [ %i.l, %bb.e ], [ 0, %bb.d ]
  %.0 = phi i64 [ %i.p, %bb.e ], [ %i.h, %bb.d ]
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.r = load ptr, ptr %i.q, align 8
  %i.s = ptrtoint ptr %i.r to i64
  %i.t = sub i64 %i.s, %.pre-phi                  ; 2 uses
  %i.u = mul i64 %1, 144
  %i.v = add i64 %i.t, %i.u
  %spec.select = tail call i64 @llvm.umax.i64(i64 %.0, i64 %i.v) ; 3 uses
  %i.w = icmp eq i64 %spec.select, 0
  br i1 %i.w, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  tail call void @free(ptr noundef %i.b) #34
  br label %_ZN9rapidjson8internal5StackINS_12CrtAllocatorEE6ResizeEm.exit

bb.h:                                             ; preds = %bb.f
  %i.x = tail call ptr @realloc(ptr noundef %i.b, i64 noundef %spec.select) #41
  br label %_ZN9rapidjson8internal5StackINS_12CrtAllocatorEE6ResizeEm.exit

_ZN9rapidjson8internal5StackINS_12CrtAllocatorEE6ResizeEm.exit: ; preds = %bb.g, %bb.h
  %.0.i.i = phi ptr [ null, %bb.g ], [ %i.x, %bb.h ] ; 3 uses
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 32
  store ptr %.0.i.i, ptr %i.a, align 8
  %i.z = getelementptr inbounds nuw i8, ptr %.0.i.i, i64 %i.t
  store ptr %i.z, ptr %i.q, align 8
  %i.aa = getelementptr inbounds nuw i8, ptr %.0.i.i, i64 %spec.select
  store ptr %i.aa, ptr %i.y, align 8
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZNK9rapidjson8internal6SchemaINS_21GenericSchemaDocumentINS_12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEEES7_EEE14DisallowedTypeERNS0_23SchemaValidationContextISA_EERKS9_(ptr noundef nonnull align 8 dereferenceable(419) %0, ptr noundef nonnull align 8 dereferenceable(139) %1, ptr noundef nonnull align 8 dereferenceable(16) %2) local_unnamed_addr #6 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !nonnull !20, !align !33 ; 16 uses
  %i.c = load ptr, ptr %i.b, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 256
  %i.e = load ptr, ptr %i.d, align 8
  tail call void %i.e(ptr noundef nonnull align 8 dereferenceable(8) %i.b)
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 240 ; 6 uses
  %i.g = load i32, ptr %i.f, align 8              ; 2 uses
  %i.h = and i32 %i.g, 1
  %.not = icmp eq i32 %i.h, 0
  br i1 %.not, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.i = load atomic i8, ptr @_ZGVZN9rapidjson8internal6SchemaINS_21GenericSchemaDocumentINS_12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEEES7_EEE13GetNullStringEvE1v acquire, align 8
  %i.j = icmp eq i8 %i.i, 0
  br i1 %i.j, label %bb.c, label %_ZN9rapidjson8internal6SchemaINS_21GenericSchemaDocumentINS_12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEEES7_EEE13GetNullStringEv.exit, !prof !159

bb.c:                                             ; preds = %bb.b
  %i.k = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN9rapidjson8internal6SchemaINS_21GenericSchemaDocumentINS_12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEEES7_EEE13GetNullStringEvE1v) #34
  %.not.i = icmp eq i32 %i.k, 0
  br i1 %.not.i, label %_ZN9rapidjson8internal6SchemaINS_21GenericSchemaDocumentINS_12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEEES7_EEE13GetNullStringEv.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) @_ZZN9rapidjson8internal6SchemaINS_21GenericSchemaDocumentINS_12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEEES7_EEE13GetNullStringEvE1v, i8 0, i64 16, i1 false)
  store i16 1029, ptr getelementptr inbounds nuw (i8, ptr @_ZZN9rapidjson8internal6SchemaINS_21GenericSchemaDocumentINS_12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEEES7_EEE13GetNullStringEvE1v, i64 14), align 2
  %i.l = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZZN9rapidjson8internal6SchemaINS_21GenericSchemaDocumentINS_12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEEES7_EEE13GetNullStringEvE1v, i64 8), align 8
  %i.m = ptrtoint ptr %i.l to i64
  %i.n = and i64 %i.m, -281474976710656
  %i.o = or i64 %i.n, ptrtoint (ptr @_ZZN9rapidjson8internal6SchemaINS_21GenericSchemaDocumentINS_12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEEES7_EEE13GetNullStringEvE1s to i64)
  %i.p = inttoptr i64 %i.o to ptr
  store ptr %i.p, ptr getelementptr inbounds nuw (i8, ptr @_ZZN9rapidjson8internal6SchemaINS_21GenericSchemaDocumentINS_12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEEES7_EEE13GetNullStringEvE1v, i64 8), align 8
  store i32 4, ptr @_ZZN9rapidjson8internal6SchemaINS_21GenericSchemaDocumentINS_12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEEES7_EEE13GetNullStringEvE1v, align 8
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN9rapidjson8internal6SchemaINS_21GenericSchemaDocumentINS_12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEEES7_EEE13GetNullStringEvE1v) #34
  br label %_ZN9rapidjson8internal6SchemaINS_21GenericSchemaDocumentINS_12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEEES7_EEE13GetNullStringEv.exit

_ZN9rapidjson8internal6SchemaINS_21GenericSchemaDocumentINS_12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEEES7_EEE13GetNullStringEv.exit: ; preds = %bb.b, %bb.c, %bb.d
  %i.q = load ptr, ptr %i.b, align 8
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 264
  %i.s = load ptr, ptr %i.r, align 8
  tail call void %i.s(ptr noundef nonnull align 8 dereferenceable(8) %i.b, ptr noundef nonnull align 8 dereferenceable(16) @_ZZN9rapidjson8internal6SchemaINS_21GenericSchemaDocumentINS_12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEEES7_EEE13GetNullStringEvE1v)
  %.pre = load i32, ptr %i.f, align 8
  br label %bb.e

bb.e:                                             ; preds = %_ZN9rapidjson8internal6SchemaINS_21GenericSchemaDocumentINS_12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEEES7_EEE13GetNullStringEv.exit, %bb.a
  %i.t = phi i32 [ %.pre, %_ZN9rapidjson8internal6SchemaINS_21GenericSchemaDocumentINS_12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEEES7_EEE13GetNullStringEv.exit ], [ %i.g, %bb.a ] ; 2 uses
  %i.u = and i32 %i.t, 2
  %.not12 = icmp eq i32 %i.u, 0
  br i1 %.not12, label %bb.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.v = load atomic i8, ptr @_ZGVZN9rapidjson8internal6SchemaINS_21GenericSchemaDocumentINS_12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEEES7_EEE16GetBooleanStringEvE1v acquire, align 8
  %i.w = icmp eq i8 %i.v, 0
  br i1 %i.w, label %bb.g, label %_ZN9rapidjson8internal6SchemaINS_21GenericSchemaDocumentINS_12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEEES7_EEE16GetBooleanStringEv.exit, !prof !159

bb.g:                                             ; preds = %bb.f
  %i.x = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN9rapidjson8internal6SchemaINS_21GenericSchemaDocumentINS_12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEEES7_EEE16GetBooleanStringEvE1v) #34
  %.not.i18 = icmp eq i32 %i.x, 0
  br i1 %.not.i18, label %_ZN9rapidjson8internal6SchemaINS_21GenericSchemaDocumentINS_12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEEES7_EEE16GetBooleanStringEv.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) @_ZZN9rapidjson8internal6SchemaINS_21GenericSchemaDocumentINS_12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEEES7_EEE16GetBooleanStringEvE1v, i8 0, i64 16, i1 false)
  store i16 1029, ptr getelementptr inbounds nuw (i8, ptr @_ZZN9rapidjson8internal6SchemaINS_21GenericSchemaDocumentINS_12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEEES7_EEE16GetBooleanStringEvE1v, i64 14), align 2
  %i.y = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZZN9rapidjson8internal6SchemaINS_21GenericSchemaDocumentINS_12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEEES7_EEE16GetBooleanStringEvE1v, i64 8), align 8
  %i.z = ptrtoint ptr %i.y to i64
  %i.aa = and i64 %i.z, -281474976710656
  %i.ab = or i64 %i.aa, ptrtoint (ptr @_ZZN9rapidjson8internal6SchemaINS_21GenericSchemaDocumentINS_12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEEES7_EEE16GetBooleanStringEvE1s to i64)
  %i.ac = inttoptr i64 %i.ab to ptr
  store ptr %i.ac, ptr getelementptr inbounds nuw (i8, ptr @_ZZN9rapidjson8internal6SchemaINS_21GenericSchemaDocumentINS_12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEEES7_EEE16GetBooleanStringEvE1v, i64 8), align 8
  store i32 7, ptr @_ZZN9rapidjson8internal6SchemaINS_21GenericSchemaDocumentINS_12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEEES7_EEE16GetBooleanStringEvE1v, align 8
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN9rapidjson8internal6SchemaINS_21GenericSchemaDocumentINS_12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEEES7_EEE16GetBooleanStringEvE1v) #34
  br label %_ZN9rapidjson8internal6SchemaINS_21GenericSchemaDocumentINS_12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEEES7_EEE16GetBooleanStringEv.exit

_ZN9rapidjson8internal6SchemaINS_21GenericSchemaDocumentINS_12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEEES7_EEE16GetBooleanStringEv.exit: ; preds = %bb.f, %bb.g, %bb.h
  %i.ad = load ptr, ptr %i.b, align 8
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 264
  %i.af = load ptr, ptr %i.ae, align 8
  tail call void %i.af(ptr noundef nonnull align 8 dereferenceable(8) %i.b, ptr noundef nonnull align 8 dereferenceable(16) @_ZZN9rapidjson8internal6SchemaINS_21GenericSchemaDocumentINS_12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEEES7_EEE16GetBooleanStringEvE1v)
  %.pre24 = load i32, ptr %i.f, align 8
  br label %bb.i

end_hunk_3
begin_hunk_4_@_ZN9rapidjson8internal18GenericRegexSearchINS0_12GenericRegexINS_4UTF8IcEENS_12CrtAllocatorEEES5_ED2Ev:bb.a
bb.d:                                             ; preds = %bb.c
  tail call void @_ZdlPvm(ptr noundef nonnull %i.i, i64 noundef 1) #35
  br label %_ZN9rapidjson8internal5StackINS_12CrtAllocatorEED2Ev.exit

_ZN9rapidjson8internal5StackINS_12CrtAllocatorEED2Ev.exit: ; preds = %bb.c, %bb.d
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.l = load ptr, ptr %i.k, align 8
  tail call void @free(ptr noundef %i.l) #34
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.n = load ptr, ptr %i.m, align 8              ; 2 uses
  %i.o = icmp eq ptr %i.n, null
  br i1 %i.o, label %_ZN9rapidjson8internal5StackINS_12CrtAllocatorEED2Ev.exit1, label %bb.e

bb.e:                                             ; preds = %_ZN9rapidjson8internal5StackINS_12CrtAllocatorEED2Ev.exit
  tail call void @_ZdlPvm(ptr noundef nonnull %i.n, i64 noundef 1) #35
  br label %_ZN9rapidjson8internal5StackINS_12CrtAllocatorEED2Ev.exit1

_ZN9rapidjson8internal5StackINS_12CrtAllocatorEED2Ev.exit1: ; preds = %_ZN9rapidjson8internal5StackINS_12CrtAllocatorEED2Ev.exit, %bb.e
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN9rapidjson8internal5StackINS_12CrtAllocatorEE6ExpandIjEEvm(ptr noundef nonnull align 8 dereferenceable(48) %0, i64 noundef %1) local_unnamed_addr #6 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8              ; 4 uses
  %i.c = icmp eq ptr %i.b, null
  br i1 %i.c, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  %i.d = load ptr, ptr %0, align 8
  %.not = icmp eq ptr %i.d, null
  br i1 %.not, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.e = tail call noalias noundef nonnull dereferenceable(1) ptr @_Znwm(i64 noundef 1) #37 ; 2 uses
  store ptr %i.e, ptr %0, align 8
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.e, ptr %i.f, align 8
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.h = load i64, ptr %i.g, align 8
  br label %bb.f

bb.e:                                             ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.j = load ptr, ptr %i.i, align 8
  %i.k = ptrtoint ptr %i.j to i64
  %i.l = ptrtoint ptr %i.b to i64                 ; 2 uses
  %i.m = sub i64 %i.k, %i.l                       ; 2 uses
  %i.n = add i64 %i.m, 1
  %i.o = lshr i64 %i.n, 1
  %i.p = add i64 %i.o, %i.m
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %.pre-phi = phi i64 [ %i.l, %bb.e ], [ 0, %bb.d ]
  %.0 = phi i64 [ %i.p, %bb.e ], [ %i.h, %bb.d ]
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.r = load ptr, ptr %i.q, align 8
  %i.s = ptrtoint ptr %i.r to i64
  %i.t = sub i64 %i.s, %.pre-phi                  ; 2 uses
  %i.u = shl i64 %1, 2
  %i.v = add i64 %i.t, %i.u
  %spec.select = tail call i64 @llvm.umax.i64(i64 %.0, i64 %i.v) ; 3 uses
  %i.w = icmp eq i64 %spec.select, 0
  br i1 %i.w, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  tail call void @free(ptr noundef %i.b) #34
  br label %_ZN9rapidjson8internal5StackINS_12CrtAllocatorEE6ResizeEm.exit

bb.h:                                             ; preds = %bb.f
  %i.x = tail call ptr @realloc(ptr noundef %i.b, i64 noundef %spec.select) #41
  br label %_ZN9rapidjson8internal5StackINS_12CrtAllocatorEE6ResizeEm.exit

_ZN9rapidjson8internal5StackINS_12CrtAllocatorEE6ResizeEm.exit: ; preds = %bb.g, %bb.h
  %.0.i.i = phi ptr [ null, %bb.g ], [ %i.x, %bb.h ] ; 3 uses
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 32
  store ptr %.0.i.i, ptr %i.a, align 8
  %i.z = getelementptr inbounds nuw i8, ptr %.0.i.i, i64 %i.t
  store ptr %i.z, ptr %i.q, align 8
  %i.aa = getelementptr inbounds nuw i8, ptr %.0.i.i, i64 %spec.select
  store ptr %i.aa, ptr %i.y, align 8
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZN9rapidjson8internal18GenericRegexSearchINS0_12GenericRegexINS_4UTF8IcEENS_12CrtAllocatorEEES5_E19SearchWithAnchoringINS_19GenericStringStreamIS4_EEEEbRT_bb(ptr noundef nonnull align 8 dereferenceable(128) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, i1 noundef zeroext %2, i1 noundef zeroext %3) local_unnamed_addr #6 comdat align 2 {
bb.a:
  %4 = alloca %"class.rapidjson::internal::DecodedStream", align 8 ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #34
  store ptr %1, ptr %4, align 8
  %i.a = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 13 uses
  store i32 0, ptr %i.a, align 8
  %i.b = call noundef zeroext i1 @_ZN9rapidjson4UTF8IcE6DecodeINS_19GenericStringStreamIS1_EEEEbRT_Pj(ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull %i.a)
  br i1 %i.b, label %_ZN9rapidjson8internal13DecodedStreamINS_19GenericStringStreamINS_4UTF8IcEEEES4_EC2ERS5_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  store i32 0, ptr %i.a, align 8
  br label %_ZN9rapidjson8internal13DecodedStreamINS_19GenericStringStreamINS_4UTF8IcEEEES4_EC2ERS5_.exit

_ZN9rapidjson8internal13DecodedStreamINS_19GenericStringStreamINS_4UTF8IcEEEES4_EC2ERS5_.exit: ; preds = %bb.a, %bb.b
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 4 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 5 uses
  %i.e = load ptr, ptr %i.d, align 8
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 5 uses
  store ptr %i.e, ptr %i.f, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 3 uses
  %i.h = load ptr, ptr %0, align 8, !nonnull !20, !align !33
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 116
  %i.j = load i32, ptr %i.i, align 4
  %i.k = add i32 %i.j, 31
  %i.l = lshr i32 %i.k, 3
  %i.m = and i32 %i.l, 536870908
  %i.n = zext nneg i32 %i.m to i64                ; 4 uses
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 120 ; 4 uses
  %i.p = load ptr, ptr %i.o, align 8
  call void @llvm.memset.p0.i64(ptr align 4 %i.p, i8 0, i64 %i.n, i1 false)
  %i.q = load ptr, ptr %0, align 8, !nonnull !20, !align !33
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 112
  %i.s = load i32, ptr %i.r, align 8
  %i.t = call noundef zeroext i1 @_ZN9rapidjson8internal18GenericRegexSearchINS0_12GenericRegexINS_4UTF8IcEENS_12CrtAllocatorEEES5_E8AddStateERNS0_5StackIS5_EEj(ptr noundef nonnull align 8 dereferenceable(128) %0, ptr noundef nonnull align 8 dereferenceable(48) %i.c, i32 noundef %i.s)
  %i.u = zext i1 %i.t to i8                       ; 3 uses
  %i.v = load ptr, ptr %i.f, align 8
  %i.w = load ptr, ptr %i.d, align 8
  %i.x = icmp eq ptr %i.v, %i.w
  br i1 %i.x, label %.critedge, label %.lr.ph60

.lr.ph60:                                         ; preds = %_ZN9rapidjson8internal13DecodedStreamINS_19GenericStringStreamINS_4UTF8IcEEEES4_EC2ERS5_.exit
  %.not = xor i1 %3, true
  %i.y = load i32, ptr %i.a, align 8              ; 4 uses
  %.not.i.us70 = icmp eq i32 %i.y, 0              ; 2 uses
  br i1 %2, label %.lr.ph60.split.us, label %.lr.ph60.split

.lr.ph60.split.us:                                ; preds = %.lr.ph60
  br i1 %.not.i.us70, label %.critedge, label %.lr.ph73

.lr.ph73:                                         ; preds = %.lr.ph60.split.us
  br i1 %3, label %.lr.ph73.split, label %.lr.ph73.split.us

.lr.ph73.split.us:                                ; preds = %.lr.ph73, %.thread49.loopexit.us.us
  %i.z = phi i32 [ %i.al, %.thread49.loopexit.us.us ], [ %i.y, %.lr.ph73 ] ; 3 uses
  %.04557.us72.us = phi ptr [ %.058.us71.us, %.thread49.loopexit.us.us ], [ %i.c, %.lr.ph73 ]
  %.058.us71.us = phi ptr [ %.04557.us72.us, %.thread49.loopexit.us.us ], [ %i.g, %.lr.ph73 ] ; 4 uses
  %i.aa = phi ptr [ %i.ah, %.thread49.loopexit.us.us ], [ %i.f, %.lr.ph73 ] ; 2 uses
  %i.ab = phi ptr [ %i.af, %.thread49.loopexit.us.us ], [ %i.d, %.lr.ph73 ]
  %i.ac = load ptr, ptr %4, align 8, !nonnull !20, !align !33
  %i.ad = call noundef zeroext i1 @_ZN9rapidjson4UTF8IcE6DecodeINS_19GenericStringStreamIS1_EEEEbRT_Pj(ptr noundef nonnull align 8 dereferenceable(16) %i.ac, ptr noundef nonnull %i.a)
  br i1 %i.ad, label %bb.d, label %bb.c

bb.c:                                             ; preds = %.lr.ph73.split.us
  store i32 0, ptr %i.a, align 8
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %.lr.ph73.split.us
  %i.ae = load ptr, ptr %i.o, align 8
  call void @llvm.memset.p0.i64(ptr align 4 %i.ae, i8 0, i64 %i.n, i1 false)
  %i.af = getelementptr inbounds nuw i8, ptr %.058.us71.us, i64 16 ; 3 uses
  %i.ag = load ptr, ptr %i.af, align 8
  %i.ah = getelementptr inbounds nuw i8, ptr %.058.us71.us, i64 24 ; 3 uses
  store ptr %i.ag, ptr %i.ah, align 8
  %i.ai = load ptr, ptr %i.ab, align 8            ; 2 uses
  %i.aj = load ptr, ptr %i.aa, align 8            ; 2 uses
  %.not3454.us.us = icmp eq ptr %i.ai, %i.aj
  br i1 %.not3454.us.us, label %.critedge, label %.lr.ph.us.us

.thread49.loopexit.us.us:                         ; preds = %bb.j
  %.pre104.a = load ptr, ptr %i.ah, align 8
  %.pre105 = load ptr, ptr %i.af, align 8
  %i.ak = icmp eq ptr %.pre104.a, %.pre105
  %i.al = load i32, ptr %i.a, align 8             ; 2 uses
  %.not.i.us.us = icmp eq i32 %i.al, 0
  %or.cond95 = select i1 %i.ak, i1 true, i1 %.not.i.us.us
  br i1 %or.cond95, label %.critedge, label %.lr.ph73.split.us, !llvm.loop !719

.lr.ph.us.us:                                     ; preds = %bb.d, %bb.j
  %i.am = phi ptr [ %i.bk, %bb.j ], [ %i.aj, %bb.d ] ; 3 uses
  %.02556.us.us.us75 = phi ptr [ %i.bl, %bb.j ], [ %i.ai, %bb.d ] ; 2 uses
  %i.an = load ptr, ptr %0, align 8, !nonnull !20, !align !33 ; 2 uses
  %i.ao = load i32, ptr %.02556.us.us.us75, align 4
  %i.ap = getelementptr inbounds nuw i8, ptr %i.an, i64 32
  %i.aq = load ptr, ptr %i.ap, align 8
  %i.ar = zext i32 %i.ao to i64
  %i.as = getelementptr inbounds nuw [16 x i8], ptr %i.aq, i64 %i.ar ; 3 uses
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 12
  %i.au = load i32, ptr %i.at, align 4            ; 3 uses
  %i.av = icmp eq i32 %i.au, %i.z
  %i.aw = icmp eq i32 %i.au, -1
  %or.cond35.us.us.us77 = or i1 %i.av, %i.aw
  br i1 %or.cond35.us.us.us77, label %bb.i, label %bb.e

bb.e:                                             ; preds = %.lr.ph.us.us
  %i.ax = icmp eq i32 %i.au, -2
  br i1 %i.ax, label %bb.f, label %bb.j

bb.f:                                             ; preds = %bb.e
  %i.ay = getelementptr inbounds nuw i8, ptr %i.as, i64 8
  %i.az = load i32, ptr %i.ay, align 4            ; 2 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %i.an, i64 80
  %i.bb = load ptr, ptr %i.ba, align 8            ; 2 uses
  %i.bc = zext i32 %i.az to i64
  %i.bd = getelementptr inbounds nuw [12 x i8], ptr %i.bb, i64 %i.bc
  %i.be = load i32, ptr %i.bd, align 4
  %i.bf = icmp slt i32 %i.be, 0                   ; 2 uses
  br label %.lr.ph.i.us.us.us79

.lr.ph.i.us.us.us79:                              ; preds = %bb.g, %bb.f
  %.01322.i.us.us.us80 = phi i32 [ %i.az, %bb.f ], [ %10, %bb.g ] ; 2 uses
  %.not.i36.us.us.us79 = icmp eq i32 %.01322.i.us.us.us80, -1
  br i1 %.not.i36.us.us.us79, label %._crit_edge.i.us.us.us85, label %bb.g

bb.g:                                             ; preds = %.lr.ph.i.us.us.us79
  %5 = zext i32 %.01322.i.us.us.us80 to i64
  %6 = getelementptr inbounds nuw [12 x i8], ptr %i.bb, i64 %5 ; 3 uses
  %7 = load i32, ptr %6, align 4
  %8 = and i32 %7, 2147483647
  %.not16.i.us.us.us80 = icmp ult i32 %i.z, %8
  %i.bg = getelementptr inbounds nuw i8, ptr %6, i64 4
  %i.bh = load i32, ptr %i.bg, align 4
  %.not17.i.us.us.us82 = icmp ugt i32 %i.z, %i.bh
  %or.cond.i.us.us.us82 = select i1 %.not16.i.us.us.us80, i1 true, i1 %.not17.i.us.us.us82
  %9 = getelementptr inbounds nuw i8, ptr %6, i64 8
  %10 = load i32, ptr %9, align 4
  br i1 %or.cond.i.us.us.us82, label %.lr.ph.i.us.us.us79, label %bb.h, !llvm.loop !720

bb.h:                                             ; preds = %bb.g
  br i1 %i.bf, label %bb.j, label %bb.i

._crit_edge.i.us.us.us85:                         ; preds = %.lr.ph.i.us.us.us79
  br i1 %i.bf, label %bb.i, label %bb.j

bb.i:                                             ; preds = %._crit_edge.i.us.us.us85, %bb.h, %.lr.ph.us.us
  %i.bi = load i32, ptr %i.as, align 4
  %i.bj = call noundef zeroext i1 @_ZN9rapidjson8internal18GenericRegexSearchINS0_12GenericRegexINS_4UTF8IcEENS_12CrtAllocatorEEES5_E8AddStateERNS0_5StackIS5_EEj(ptr noundef nonnull align 8 dereferenceable(128) %0, ptr noundef nonnull align 8 dereferenceable(48) %.058.us71.us, i32 noundef %i.bi)
  br i1 %i.bj, label %.loopexit, label %._crit_edge102

._crit_edge102:                                   ; preds = %bb.i
  %.pre103.a = load ptr, ptr %i.aa, align 8
  br label %bb.j

bb.j:                                             ; preds = %._crit_edge102, %._crit_edge.i.us.us.us85, %bb.h, %bb.e
  %i.bk = phi ptr [ %.pre103.a, %._crit_edge102 ], [ %i.am, %bb.h ], [ %i.am, %bb.e ], [ %i.am, %._crit_edge.i.us.us.us85 ] ; 2 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %.02556.us.us.us75, i64 4 ; 2 uses
  %.not34.us.us.us87 = icmp eq ptr %i.bl, %i.bk
  br i1 %.not34.us.us.us87, label %.thread49.loopexit.us.us, label %.lr.ph.us.us, !llvm.loop !721

.lr.ph73.split:                                   ; preds = %.lr.ph73, %.thread49.loopexit.us
  %i.bm = phi i32 [ %i.by, %.thread49.loopexit.us ], [ %i.y, %.lr.ph73 ] ; 3 uses
  %.04557.us72 = phi ptr [ %.058.us71, %.thread49.loopexit.us ], [ %i.c, %.lr.ph73 ]
  %.058.us71 = phi ptr [ %.04557.us72, %.thread49.loopexit.us ], [ %i.g, %.lr.ph73 ] ; 4 uses
  %i.bn = phi ptr [ %i.bu, %.thread49.loopexit.us ], [ %i.f, %.lr.ph73 ] ; 2 uses
  %i.bo = phi ptr [ %i.bs, %.thread49.loopexit.us ], [ %i.d, %.lr.ph73 ]
  %i.bp = load ptr, ptr %4, align 8, !nonnull !20, !align !33
  %i.bq = call noundef zeroext i1 @_ZN9rapidjson4UTF8IcE6DecodeINS_19GenericStringStreamIS1_EEEEbRT_Pj(ptr noundef nonnull align 8 dereferenceable(16) %i.bp, ptr noundef nonnull %i.a)
  br i1 %i.bq, label %bb.l, label %bb.k

bb.k:                                             ; preds = %.lr.ph73.split
  store i32 0, ptr %i.a, align 8
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %.lr.ph73.split
  %i.br = load ptr, ptr %i.o, align 8
  call void @llvm.memset.p0.i64(ptr align 4 %i.br, i8 0, i64 %i.n, i1 false)
  %i.bs = getelementptr inbounds nuw i8, ptr %.058.us71, i64 16 ; 3 uses
  %i.bt = load ptr, ptr %i.bs, align 8
  %i.bu = getelementptr inbounds nuw i8, ptr %.058.us71, i64 24 ; 3 uses
  store ptr %i.bt, ptr %i.bu, align 8
  %i.bv = load ptr, ptr %i.bo, align 8            ; 2 uses
  %i.bw = load ptr, ptr %i.bn, align 8            ; 2 uses
  %.not3454.us = icmp eq ptr %i.bv, %i.bw
  br i1 %.not3454.us, label %.critedge, label %.lr.ph.us

.thread49.loopexit.us:                            ; preds = %bb.r
  %.pre107 = load ptr, ptr %i.bu, align 8
  %.pre108 = load ptr, ptr %i.bs, align 8
  %i.bx = icmp eq ptr %.pre107, %.pre108
  %i.by = load i32, ptr %i.a, align 8             ; 2 uses
  %.not.i.us = icmp eq i32 %i.by, 0
  %or.cond96 = select i1 %i.bx, i1 true, i1 %.not.i.us
  br i1 %or.cond96, label %.critedge, label %.lr.ph73.split, !llvm.loop !719

.lr.ph.us:                                        ; preds = %bb.l, %bb.r
  %i.bz = phi ptr [ %i.cy, %bb.r ], [ %i.bw, %bb.l ] ; 3 uses
  %.02556.us.us.us = phi ptr [ %i.cz, %bb.r ], [ %i.bv, %bb.l ] ; 2 uses
  %.12755.us.us.us = phi i8 [ %.228.us.us.us, %bb.r ], [ 0, %bb.l ] ; 4 uses
  %i.ca = load ptr, ptr %0, align 8, !nonnull !20, !align !33 ; 2 uses
  %i.cb = load i32, ptr %.02556.us.us.us, align 4
  %i.cc = getelementptr inbounds nuw i8, ptr %i.ca, i64 32
  %i.cd = load ptr, ptr %i.cc, align 8
  %i.ce = zext i32 %i.cb to i64
  %i.cf = getelementptr inbounds nuw [16 x i8], ptr %i.cd, i64 %i.ce ; 3 uses
  %i.cg = getelementptr inbounds nuw i8, ptr %i.cf, i64 12
  %i.ch = load i32, ptr %i.cg, align 4            ; 3 uses
  %i.ci = icmp eq i32 %i.ch, %i.bm
  %i.cj = icmp eq i32 %i.ch, -1
  %or.cond35.us.us.us = or i1 %i.ci, %i.cj
  br i1 %or.cond35.us.us.us, label %bb.q, label %bb.m

bb.m:                                             ; preds = %.lr.ph.us
  %i.ck = icmp eq i32 %i.ch, -2
  br i1 %i.ck, label %bb.n, label %bb.r

bb.n:                                             ; preds = %bb.m
  %i.cl = getelementptr inbounds nuw i8, ptr %i.cf, i64 8
  %i.cm = load i32, ptr %i.cl, align 4            ; 2 uses
  %i.cn = getelementptr inbounds nuw i8, ptr %i.ca, i64 80
  %i.co = load ptr, ptr %i.cn, align 8            ; 2 uses
  %i.cp = zext i32 %i.cm to i64
  %i.cq = getelementptr inbounds nuw [12 x i8], ptr %i.co, i64 %i.cp
  %i.cr = load i32, ptr %i.cq, align 4
  %i.cs = icmp slt i32 %i.cr, 0                   ; 2 uses
  br label %.lr.ph.i.us.us.us

.lr.ph.i.us.us.us:                                ; preds = %bb.o, %bb.n
  %.01322.i.us.us.us = phi i32 [ %i.cm, %bb.n ], [ %16, %bb.o ] ; 2 uses
  %.not.i36.us.us.us = icmp eq i32 %.01322.i.us.us.us, -1
  br i1 %.not.i36.us.us.us, label %._crit_edge.i.us.us.us, label %bb.o

bb.o:                                             ; preds = %.lr.ph.i.us.us.us
  %11 = zext i32 %.01322.i.us.us.us to i64
  %12 = getelementptr inbounds nuw [12 x i8], ptr %i.co, i64 %11 ; 3 uses
  %13 = load i32, ptr %12, align 4
  %14 = and i32 %13, 2147483647
  %.not16.i.us.us.us = icmp ult i32 %i.bm, %14
  %i.ct = getelementptr inbounds nuw i8, ptr %12, i64 4
  %i.cu = load i32, ptr %i.ct, align 4
  %.not17.i.us.us.us = icmp ugt i32 %i.bm, %i.cu
  %or.cond.i.us.us.us = select i1 %.not16.i.us.us.us, i1 true, i1 %.not17.i.us.us.us
  %15 = getelementptr inbounds nuw i8, ptr %12, i64 8
  %16 = load i32, ptr %15, align 4
  br i1 %or.cond.i.us.us.us, label %.lr.ph.i.us.us.us, label %bb.p, !llvm.loop !720

bb.p:                                             ; preds = %bb.o
  br i1 %i.cs, label %bb.r, label %bb.q

._crit_edge.i.us.us.us:                           ; preds = %.lr.ph.i.us.us.us
  br i1 %i.cs, label %bb.q, label %bb.r

bb.q:                                             ; preds = %._crit_edge.i.us.us.us, %bb.p, %.lr.ph.us
  %i.cv = load i32, ptr %i.cf, align 4
  %i.cw = call noundef zeroext i1 @_ZN9rapidjson8internal18GenericRegexSearchINS0_12GenericRegexINS_4UTF8IcEENS_12CrtAllocatorEEES5_E8AddStateERNS0_5StackIS5_EEj(ptr noundef nonnull align 8 dereferenceable(128) %0, ptr noundef nonnull align 8 dereferenceable(48) %.058.us71, i32 noundef %i.cv)
  %i.cx = select i1 %i.cw, i8 1, i8 %.12755.us.us.us
  %.pre106 = load ptr, ptr %i.bn, align 8
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %._crit_edge.i.us.us.us, %bb.p, %bb.m
  %i.cy = phi ptr [ %.pre106, %bb.q ], [ %i.bz, %bb.p ], [ %i.bz, %bb.m ], [ %i.bz, %._crit_edge.i.us.us.us ] ; 2 uses
  %.228.us.us.us = phi i8 [ %i.cx, %bb.q ], [ %.12755.us.us.us, %bb.p ], [ %.12755.us.us.us, %bb.m ], [ %.12755.us.us.us, %._crit_edge.i.us.us.us ] ; 2 uses
  %i.cz = getelementptr inbounds nuw i8, ptr %.02556.us.us.us, i64 4 ; 2 uses
  %.not34.us.us.us = icmp eq ptr %i.cz, %i.cy
  br i1 %.not34.us.us.us, label %.thread49.loopexit.us, label %.lr.ph.us, !llvm.loop !721

.lr.ph60.split:                                   ; preds = %.lr.ph60
  br i1 %.not.i.us70, label %.critedge, label %.lr.ph68

.thread49.loopexit:                               ; preds = %bb.y
  %.pre100 = load ptr, ptr %i.dk, align 8
  %.pre101 = load ptr, ptr %i.di, align 8
  %i.da = icmp eq ptr %.pre100, %.pre101
  %i.db = load i32, ptr %i.a, align 8             ; 2 uses
  %.not.i = icmp eq i32 %i.db, 0
  %or.cond147 = select i1 %i.da, i1 true, i1 %.not.i
  br i1 %or.cond147, label %.critedge, label %.lr.ph68, !llvm.loop !719

.lr.ph68:                                         ; preds = %.lr.ph60.split, %.thread49.loopexit
  %i.dc = phi i32 [ %i.db, %.thread49.loopexit ], [ %i.y, %.lr.ph60.split ] ; 3 uses
  %.0455767 = phi ptr [ %.05866, %.thread49.loopexit ], [ %i.c, %.lr.ph60.split ]
  %.05866 = phi ptr [ %.0455767, %.thread49.loopexit ], [ %i.g, %.lr.ph60.split ] ; 5 uses
  %i.dd = phi ptr [ %i.dk, %.thread49.loopexit ], [ %i.f, %.lr.ph60.split ] ; 2 uses
  %i.de = phi ptr [ %i.di, %.thread49.loopexit ], [ %i.d, %.lr.ph60.split ]
  %i.df = load ptr, ptr %4, align 8, !nonnull !20, !align !33
  %i.dg = call noundef zeroext i1 @_ZN9rapidjson4UTF8IcE6DecodeINS_19GenericStringStreamIS1_EEEEbRT_Pj(ptr noundef nonnull align 8 dereferenceable(16) %i.df, ptr noundef nonnull %i.a)
  br i1 %i.dg, label %bb.t, label %bb.s

bb.s:                                             ; preds = %.lr.ph68
  store i32 0, ptr %i.a, align 8
  br label %bb.t

bb.t:                                             ; preds = %.lr.ph68, %bb.s
  %i.dh = load ptr, ptr %i.o, align 8
  call void @llvm.memset.p0.i64(ptr align 4 %i.dh, i8 0, i64 %i.n, i1 false)
  %i.di = getelementptr inbounds nuw i8, ptr %.05866, i64 16 ; 3 uses
  %i.dj = load ptr, ptr %i.di, align 8
  %i.dk = getelementptr inbounds nuw i8, ptr %.05866, i64 24 ; 3 uses
  store ptr %i.dj, ptr %i.dk, align 8
  %i.dl = load ptr, ptr %i.de, align 8            ; 2 uses
  %i.dm = load ptr, ptr %i.dd, align 8
  %.not3454 = icmp eq ptr %i.dl, %i.dm
  br i1 %.not3454, label %.critedge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.t, %bb.y
  %.02556 = phi ptr [ %i.er, %bb.y ], [ %i.dl, %bb.t ] ; 2 uses
  %.12755 = phi i8 [ %.228, %bb.y ], [ 0, %bb.t ] ; 4 uses
  %i.dn = load ptr, ptr %0, align 8, !nonnull !20, !align !33 ; 5 uses
  %i.do = load i32, ptr %.02556, align 4
  %i.dp = getelementptr inbounds nuw i8, ptr %i.dn, i64 32
  %i.dq = load ptr, ptr %i.dp, align 8
  %i.dr = zext i32 %i.do to i64
  %i.ds = getelementptr inbounds nuw [16 x i8], ptr %i.dq, i64 %i.dr ; 3 uses
  %i.dt = getelementptr inbounds nuw i8, ptr %i.ds, i64 12
  %i.du = load i32, ptr %i.dt, align 4            ; 3 uses
  %i.dv = icmp eq i32 %i.du, %i.dc
  %i.dw = icmp eq i32 %i.du, -1
  %or.cond35 = or i1 %i.dv, %i.dw
  br i1 %or.cond35, label %bb.x, label %bb.u

bb.u:                                             ; preds = %.lr.ph
  %i.dx = icmp eq i32 %i.du, -2
  br i1 %i.dx, label %bb.v, label %bb.y

bb.v:                                             ; preds = %bb.u
  %i.dy = getelementptr inbounds nuw i8, ptr %i.ds, i64 8
  %i.dz = load i32, ptr %i.dy, align 4            ; 2 uses
  %i.ea = getelementptr inbounds nuw i8, ptr %i.dn, i64 80
  %i.eb = load ptr, ptr %i.ea, align 8            ; 2 uses
  %i.ec = zext i32 %i.dz to i64
  %i.ed = getelementptr inbounds nuw [12 x i8], ptr %i.eb, i64 %i.ec
  %i.ee = load i32, ptr %i.ed, align 4
  %i.ef = icmp slt i32 %i.ee, 0                   ; 2 uses
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.w, %bb.v
  %.01322.i = phi i32 [ %i.dz, %bb.v ], [ %22, %bb.w ] ; 2 uses
  %.not.i36 = icmp eq i32 %.01322.i, -1
  br i1 %.not.i36, label %._crit_edge.i, label %bb.w

bb.w:                                             ; preds = %.lr.ph.i
  %17 = zext i32 %.01322.i to i64
  %18 = getelementptr inbounds nuw [12 x i8], ptr %i.eb, i64 %17 ; 3 uses
  %19 = load i32, ptr %18, align 4
  %20 = and i32 %19, 2147483647
  %.not16.i = icmp ult i32 %i.dc, %20
  %i.eg = getelementptr inbounds nuw i8, ptr %18, i64 4
  %i.eh = load i32, ptr %i.eg, align 4
  %.not17.i = icmp ugt i32 %i.dc, %i.eh
  %or.cond.i = select i1 %.not16.i, i1 true, i1 %.not17.i
  %21 = getelementptr inbounds nuw i8, ptr %18, i64 8
  %22 = load i32, ptr %21, align 4
  br i1 %or.cond.i, label %.lr.ph.i, label %_ZNK9rapidjson8internal18GenericRegexSearchINS0_12GenericRegexINS_4UTF8IcEENS_12CrtAllocatorEEES5_E10MatchRangeEjj.exit, !llvm.loop !720

._crit_edge.i:                                    ; preds = %.lr.ph.i
  br i1 %i.ef, label %bb.x, label %bb.y

_ZNK9rapidjson8internal18GenericRegexSearchINS0_12GenericRegexINS_4UTF8IcEENS_12CrtAllocatorEEES5_E10MatchRangeEjj.exit: ; preds = %bb.w
  br i1 %i.ef, label %bb.y, label %bb.x

bb.x:                                             ; preds = %._crit_edge.i, %_ZNK9rapidjson8internal18GenericRegexSearchINS0_12GenericRegexINS_4UTF8IcEENS_12CrtAllocatorEEES5_E10MatchRangeEjj.exit, %.lr.ph
  %i.ei = load i32, ptr %i.ds, align 4
  %i.ej = call noundef zeroext i1 @_ZN9rapidjson8internal18GenericRegexSearchINS0_12GenericRegexINS_4UTF8IcEENS_12CrtAllocatorEEES5_E8AddStateERNS0_5StackIS5_EEj(ptr noundef nonnull align 8 dereferenceable(128) %0, ptr noundef nonnull align 8 dereferenceable(48) %.05866, i32 noundef %i.ei)
  %i.ek = trunc nuw i8 %.12755 to i1
  %i.el = select i1 %i.ej, i1 true, i1 %i.ek      ; 2 uses
  %or.cond = select i1 %.not, i1 %i.el, i1 false
  br i1 %or.cond, label %.loopexit, label %._crit_edge

._crit_edge:                                      ; preds = %bb.x
  %i.em = zext i1 %i.el to i8
  %.pre = load ptr, ptr %0, align 8
  br label %bb.y

bb.y:                                             ; preds = %._crit_edge, %._crit_edge.i, %_ZNK9rapidjson8internal18GenericRegexSearchINS0_12GenericRegexINS_4UTF8IcEENS_12CrtAllocatorEEES5_E10MatchRangeEjj.exit, %bb.u
  %i.en = phi ptr [ %.pre, %._crit_edge ], [ %i.dn, %_ZNK9rapidjson8internal18GenericRegexSearchINS0_12GenericRegexINS_4UTF8IcEENS_12CrtAllocatorEEES5_E10MatchRangeEjj.exit ], [ %i.dn, %bb.u ], [ %i.dn, %._crit_edge.i ]
  %.228 = phi i8 [ %i.em, %._crit_edge ], [ %.12755, %_ZNK9rapidjson8internal18GenericRegexSearchINS0_12GenericRegexINS_4UTF8IcEENS_12CrtAllocatorEEES5_E10MatchRangeEjj.exit ], [ %.12755, %bb.u ], [ %.12755, %._crit_edge.i ] ; 2 uses
  %i.eo = getelementptr inbounds nuw i8, ptr %i.en, i64 112
  %i.ep = load i32, ptr %i.eo, align 8
  %i.eq = call noundef zeroext i1 @_ZN9rapidjson8internal18GenericRegexSearchINS0_12GenericRegexINS_4UTF8IcEENS_12CrtAllocatorEEES5_E8AddStateERNS0_5StackIS5_EEj(ptr noundef nonnull align 8 dereferenceable(128) %0, ptr noundef nonnull align 8 dereferenceable(48) %.05866, i32 noundef %i.ep) ; 0 uses
  %i.er = getelementptr inbounds nuw i8, ptr %.02556, i64 4 ; 2 uses
  %i.es = load ptr, ptr %i.dd, align 8
  %.not34 = icmp eq ptr %i.er, %i.es
  br i1 %.not34, label %.thread49.loopexit, label %.lr.ph, !llvm.loop !721

.critedge:                                        ; preds = %.thread49.loopexit, %bb.t, %bb.d, %.thread49.loopexit.us.us, %bb.l, %.thread49.loopexit.us, %.lr.ph60.split.us, %.lr.ph60.split, %_ZN9rapidjson8internal13DecodedStreamINS_19GenericStringStreamINS_4UTF8IcEEEES4_EC2ERS5_.exit
  %.026.lcssa = phi i8 [ %i.u, %_ZN9rapidjson8internal13DecodedStreamINS_19GenericStringStreamINS_4UTF8IcEEEES4_EC2ERS5_.exit ], [ %i.u, %.lr.ph60.split ], [ 0, %bb.d ], [ %i.u, %.lr.ph60.split.us ], [ %.228.us.us.us, %.thread49.loopexit.us ], [ 0, %bb.l ], [ 0, %.thread49.loopexit.us.us ], [ 0, %bb.t ], [ %.228, %.thread49.loopexit ]
  %i.et = trunc nuw i8 %.026.lcssa to i1
  br label %.loopexit

.loopexit:                                        ; preds = %bb.x, %bb.i, %.critedge
  %.4 = phi i1 [ %i.et, %.critedge ], [ true, %bb.i ], [ true, %bb.x ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #34
  ret i1 %.4
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZN9rapidjson8internal18GenericRegexSearchINS0_12GenericRegexINS_4UTF8IcEENS_12CrtAllocatorEEES5_E8AddStateERNS0_5StackIS5_EEj(ptr noundef nonnull align 8 dereferenceable(128) %0, ptr noundef nonnull align 8 dereferenceable(48) %1, i32 noundef %2) local_unnamed_addr #6 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !20, !align !33
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  %i.c = load ptr, ptr %i.b, align 8
  %i.d = zext i32 %2 to i64
  %i.e = getelementptr inbounds nuw [16 x i8], ptr %i.c, i64 %i.d ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 4 ; 2 uses
  %i.g = load i32, ptr %i.f, align 4
  %.not18 = icmp eq i32 %i.g, -1
  br i1 %.not18, label %tailrecurse._crit_edge, label %tailrecurse

tailrecurse:                                      ; preds = %bb.a, %tailrecurse
  %i.h = phi ptr [ %i.s, %tailrecurse ], [ %i.f, %bb.a ]
  %i.i = phi ptr [ %i.r, %tailrecurse ], [ %i.e, %bb.a ]
  %accumulator.tr19 = phi i1 [ %i.m, %tailrecurse ], [ false, %bb.a ]
  %i.j = load i32, ptr %i.i, align 4
  %i.k = tail call noundef zeroext i1 @_ZN9rapidjson8internal18GenericRegexSearchINS0_12GenericRegexINS_4UTF8IcEENS_12CrtAllocatorEEES5_E8AddStateERNS0_5StackIS5_EEj(ptr noundef nonnull align 8 dereferenceable(128) %0, ptr noundef nonnull align 8 dereferenceable(48) %1, i32 noundef %i.j)
  %i.l = load i32, ptr %i.h, align 4              ; 2 uses
  %i.m = or i1 %accumulator.tr19, %i.k            ; 2 uses
  %i.n = load ptr, ptr %0, align 8, !nonnull !20, !align !33
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 32
  %i.p = load ptr, ptr %i.o, align 8
  %i.q = zext i32 %i.l to i64
  %i.r = getelementptr inbounds nuw [16 x i8], ptr %i.p, i64 %i.q ; 3 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 4 ; 2 uses
  %i.t = load i32, ptr %i.s, align 4
  %.not = icmp eq i32 %i.t, -1
  br i1 %.not, label %tailrecurse._crit_edge, label %tailrecurse

tailrecurse._crit_edge:                           ; preds = %tailrecurse, %bb.a
  %accumulator.tr.lcssa = phi i1 [ false, %bb.a ], [ %i.m, %tailrecurse ]
  %.tr17.lcssa = phi i32 [ %2, %bb.a ], [ %i.l, %tailrecurse ] ; 3 uses
  %.lcssa = phi ptr [ %i.e, %bb.a ], [ %i.r, %tailrecurse ]
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.v = load ptr, ptr %i.u, align 8
  %i.w = lshr i32 %.tr17.lcssa, 5
  %i.x = zext nneg i32 %i.w to i64
  %i.y = getelementptr inbounds nuw [4 x i8], ptr %i.v, i64 %i.x ; 2 uses
  %i.z = load i32, ptr %i.y, align 4              ; 2 uses
  %i.aa = and i32 %.tr17.lcssa, 31
  %i.ab = shl nuw i32 1, %i.aa                    ; 2 uses
  %i.ac = and i32 %i.z, %i.ab
  %.not15 = icmp eq i32 %i.ac, 0
  br i1 %.not15, label %bb.b, label %bb.c

bb.b:                                             ; preds = %tailrecurse._crit_edge
  %i.ad = or i32 %i.z, %i.ab
  store i32 %i.ad, ptr %i.y, align 4
  %i.ae = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %i.af = load ptr, ptr %i.ae, align 8            ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 4
  store ptr %i.ag, ptr %i.ae, align 8
  store i32 %.tr17.lcssa, ptr %i.af, align 4
  br label %bb.c

bb.c:                                             ; preds = %tailrecurse._crit_edge, %bb.b
  %i.ah = load i32, ptr %.lcssa, align 4
  %i.ai = icmp eq i32 %i.ah, -1
  %accumulator.ret.tr = or i1 %accumulator.tr.lcssa, %i.ai
  ret i1 %accumulator.ret.tr
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZN9rapidjson4UTF8IcE6DecodeINS_19GenericStringStreamIS1_EEEEbRT_Pj(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %1) local_unnamed_addr #6 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8                ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 1
  store ptr %i.b, ptr %0, align 8
  %i.c = load i8, ptr %i.a, align 1               ; 5 uses
  %.not = icmp sgt i8 %i.c, -1
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = zext nneg i8 %i.c to i32
  store i32 %i.d, ptr %1, align 4
  br label %bb.k

bb.c:                                             ; preds = %bb.a
  %i.e = zext i8 %i.c to i64
  %i.f = getelementptr inbounds nuw i8, ptr @_ZZN9rapidjson4UTF8IcE8GetRangeEhE4type, i64 %i.e
  %i.g = load i8, ptr %i.f, align 1               ; 2 uses
  %i.h = add nsw i8 %i.c, 112
  %i.i = icmp ult i8 %i.h, 48
  %i.j = zext nneg i8 %i.g to i32
  %i.k = lshr i32 255, %i.j
  %i.l = zext i8 %i.c to i32
  %i.m = and i32 %i.k, %i.l
  %storemerge = select i1 %i.i, i32 0, i32 %i.m
  store i32 %storemerge, ptr %1, align 4
  switch i8 %i.g, label %bb.k [
    i8 2, label %bb.d
    i8 3, label %bb.e
    i8 4, label %bb.f
    i8 5, label %bb.g
    i8 6, label %bb.h
    i8 10, label %bb.i
    i8 11, label %bb.j
  ]

bb.d:                                             ; preds = %bb.c
  %i.n = load ptr, ptr %0, align 8                ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 1
  store ptr %i.o, ptr %0, align 8
  %i.p = load i8, ptr %i.n, align 1               ; 2 uses
  %i.q = load i32, ptr %1, align 4
  %i.r = shl i32 %i.q, 6
  %i.s = and i8 %i.p, 63
  %i.t = zext nneg i8 %i.s to i32
  %i.u = or disjoint i32 %i.r, %i.t
  store i32 %i.u, ptr %1, align 4
  %i.v = icmp slt i8 %i.p, -64
  br label %bb.k

bb.e:                                             ; preds = %bb.c
  %i.w = load ptr, ptr %0, align 8                ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 1
  store ptr %i.x, ptr %0, align 8
  %i.y = load i8, ptr %i.w, align 1               ; 2 uses
  %i.z = load i32, ptr %1, align 4
  %i.aa = shl i32 %i.z, 6
  %i.ab = and i8 %i.y, 63
  %i.ac = zext nneg i8 %i.ab to i32
  %i.ad = or disjoint i32 %i.aa, %i.ac
  store i32 %i.ad, ptr %1, align 4
  %i.ae = icmp slt i8 %i.y, -64
  %i.af = load ptr, ptr %0, align 8               ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 1
  store ptr %i.ag, ptr %0, align 8
  %i.ah = load i8, ptr %i.af, align 1             ; 2 uses
  %i.ai = load i32, ptr %1, align 4
  %i.aj = shl i32 %i.ai, 6
  %i.ak = and i8 %i.ah, 63
  %i.al = zext nneg i8 %i.ak to i32
  %i.am = or disjoint i32 %i.aj, %i.al
  store i32 %i.am, ptr %1, align 4
  %i.an = icmp slt i8 %i.ah, -64
  %i.ao = and i1 %i.ae, %i.an
  br label %bb.k

bb.f:                                             ; preds = %bb.c
  %i.ap = load ptr, ptr %0, align 8               ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 1
  store ptr %i.aq, ptr %0, align 8
  %i.ar = load i8, ptr %i.ap, align 1             ; 2 uses
  %i.as = load i32, ptr %1, align 4
  %i.at = shl i32 %i.as, 6
  %i.au = and i8 %i.ar, 63
  %i.av = zext nneg i8 %i.au to i32
  %i.aw = or disjoint i32 %i.at, %i.av
  store i32 %i.aw, ptr %1, align 4
  %i.ax = icmp slt i8 %i.ar, -96
  %i.ay = load ptr, ptr %0, align 8               ; 2 uses
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 1
  store ptr %i.az, ptr %0, align 8
  %i.ba = load i8, ptr %i.ay, align 1             ; 2 uses
  %i.bb = load i32, ptr %1, align 4
  %i.bc = shl i32 %i.bb, 6
  %i.bd = and i8 %i.ba, 63
end_hunk_4
begin_hunk_5_@llvm.umin.i32
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
end_hunk_5
