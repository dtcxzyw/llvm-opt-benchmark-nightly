inline.NumInlined: 1242
inline.NumDeleted: 657
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumUnrolled: 3
begin_hunk_0_@_ZN6google8protobuf8compiler6csharp13EnumGenerator8GenerateEPNS0_2io7PrinterE:bb.a
  store ptr getelementptr inbounds nuw (i8, ptr @_ZN4absl12lts_2025051218container_internal11kEmptyGroupE, i64 16), ptr %.sroa.4.0..sroa_idx.i.i.i.i54, align 8
  invoke void @_ZN6google8protobuf2io7Printer5PrintIN4absl12lts_2025051213flat_hash_mapISt17basic_string_viewIcSt11char_traitsIcEESA_NS5_18container_internal10StringHashENSB_8StringEqESaISt4pairIKSA_SA_EEEEEEvRKT_SA_(ptr noundef nonnull align 16 dereferenceable(296) %1, ptr noundef nonnull align 8 dereferenceable(32) %5, i64 35, ptr nonnull @.str)
          to label %bb.p unwind label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.cf = landingpad { ptr, i32 }
          cleanup
  call void @_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyISt17basic_string_viewIcSt11char_traitsIcEES7_EENS1_10StringHashENS1_8StringEqESaISt4pairIKS7_S7_EEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %5) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #24
  br label %.body

bb.p:                                             ; preds = %bb.n
  %i.cg = load i64, ptr %5, align 8, !tbaa !33    ; 2 uses
  %i.ch = icmp eq i64 %i.cg, 0
  br i1 %i.ch, label %_ZN6google8protobuf2io7Printer5PrintIJEEEvSt17basic_string_viewIcSt11char_traitsIcEEDpRKT_.exit55, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.ci = load ptr, ptr %.sroa.4.0..sroa_idx.i.i.i.i54, align 8, !tbaa !30
  %i.cj = load i64, ptr %i.as, align 8, !tbaa !37
  %i.ck = and i64 %i.cj, 65536
  %i.cl = icmp ne i64 %i.ck, 0
  invoke void @_ZN4absl12lts_2025051218container_internal22DeallocateBackingArrayILm8ESaIcEEEvPvmPNS1_6ctrl_tEmmb(ptr noundef nonnull align 8 dereferenceable(32) %5, i64 noundef %i.cg, ptr noundef %i.ci, i64 noundef 32, i64 noundef 8, i1 noundef zeroext %i.cl)
          to label %_ZN6google8protobuf2io7Printer5PrintIJEEEvSt17basic_string_viewIcSt11char_traitsIcEEDpRKT_.exit55 unwind label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.cm = landingpad { ptr, i32 }
          catch ptr null
  %i.cn = extractvalue { ptr, i32 } %i.cm, 0
  call void @__clang_call_terminate(ptr %i.cn) #26
  unreachable

_ZN6google8protobuf2io7Printer5PrintIJEEEvSt17basic_string_viewIcSt11char_traitsIcEEDpRKT_.exit55: ; preds = %bb.p, %bb.q
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #24
  %.pre = load ptr, ptr %i.f, align 8, !tbaa !9   ; 2 uses
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %.pre, i64 56
  %.pre192 = load ptr, ptr %.phi.trans.insert, align 8, !tbaa !84
  br label %bb.s

bb.s:                                             ; preds = %bb.m, %_ZN6google8protobuf2io7Printer5PrintIJEEEvSt17basic_string_viewIcSt11char_traitsIcEEDpRKT_.exit55
  %i.co = phi ptr [ %i.by, %bb.m ], [ %.pre192, %_ZN6google8protobuf2io7Printer5PrintIJEEEvSt17basic_string_viewIcSt11char_traitsIcEEDpRKT_.exit55 ]
  %i.cp = phi ptr [ %i.bw, %bb.m ], [ %.pre, %_ZN6google8protobuf2io7Printer5PrintIJEEEvSt17basic_string_viewIcSt11char_traitsIcEEDpRKT_.exit55 ]
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #24
  %i.cq = getelementptr inbounds nuw [48 x i8], ptr %i.co, i64 %indvars.iv
  %i.cr = getelementptr inbounds nuw i8, ptr %i.cq, i64 8 ; 2 uses
  %i.cs = load ptr, ptr %i.cr, align 8, !tbaa !90 ; 2 uses
  %i.ct = load ptr, ptr %i.cs, align 8, !tbaa !39
  %i.cu = getelementptr inbounds nuw i8, ptr %i.cs, i64 8
  %i.cv = load i64, ptr %i.cu, align 8, !tbaa !91
  store i64 %i.cv, ptr %11, align 8
  store ptr %i.ct, ptr %i.at, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #24
  %i.cw = getelementptr inbounds nuw i8, ptr %i.cp, i64 8
  %i.cx = load ptr, ptr %i.cw, align 8, !tbaa !38 ; 2 uses
  %.0.copyload.i.i.i56 = load i16, ptr %i.cx, align 1
  %i.cy = zext i16 %.0.copyload.i.i.i56 to i64    ; 2 uses
  %i.cz = xor i64 %i.cy, -1
  %i.da = getelementptr inbounds i8, ptr %i.cx, i64 %i.cz
  %i.db = load ptr, ptr %i.cr, align 8, !tbaa !90 ; 2 uses
  %i.dc = load ptr, ptr %i.db, align 8, !tbaa !39
  %i.dd = getelementptr inbounds nuw i8, ptr %i.db, i64 8
  %i.de = load i64, ptr %i.dd, align 8, !tbaa !91
  invoke void @_ZN6google8protobuf8compiler6csharp16GetEnumValueNameB5cxx11ESt17basic_string_viewIcSt11char_traitsIcEES6_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %12, i64 %i.cy, ptr nonnull %i.da, i64 %i.de, ptr %i.dc)
          to label %.preheader unwind label %bb.ar

.preheader:                                       ; preds = %bb.s, %bb.aq
  %i.df = load ptr, ptr %.sroa.4.0..sroa_idx.i.i, align 8, !tbaa !30, !noalias !92
  call void @llvm.prefetch.p0(ptr %i.df, i32 0, i32 1, i32 1), !noalias !92
  %i.dg = load ptr, ptr %12, align 8, !tbaa !39, !noalias !92 ; 12 uses
  %i.dh = load i64, ptr %i.au, align 8, !tbaa !91, !noalias !92 ; 14 uses
  %i.di = icmp ult i64 %i.dh, 9
  br i1 %i.di, label %bb.t, label %bb.y

bb.t:                                             ; preds = %.preheader
  %i.dj = icmp samesign ugt i64 %i.dh, 3
  br i1 %i.dj, label %bb.u, label %bb.v

bb.u:                                             ; preds = %bb.t
  %.0.copyload.i.i.i115 = load i32, ptr %i.dg, align 1
  %i.dk = zext i32 %.0.copyload.i.i.i115 to i64
  %i.dl = shl nuw i64 %i.dk, 32
  %i.dm = getelementptr inbounds nuw i8, ptr %i.dg, i64 %i.dh
  %i.dn = getelementptr inbounds i8, ptr %i.dm, i64 -4
  %.0.copyload.i4.i.i = load i32, ptr %i.dn, align 1
  %i.do = zext i32 %.0.copyload.i4.i.i to i64
  %i.dp = or disjoint i64 %i.dl, %i.do
  br label %bb.x

bb.v:                                             ; preds = %bb.t
  %.not.i.i = icmp eq i64 %i.dh, 0
  br i1 %.not.i.i, label %.noexc112, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.dq = load i8, ptr %i.dg, align 1, !tbaa !30
  %i.dr = zext i8 %i.dq to i64
  %i.ds = shl nuw nsw i64 %i.dr, 16
  %i.dt = getelementptr i8, ptr %i.dg, i64 %i.dh
  %i.du = getelementptr i8, ptr %i.dt, i64 -1
  %i.dv = load i8, ptr %i.du, align 1, !tbaa !30
  %i.dw = zext i8 %i.dv to i64
  %i.dx = or disjoint i64 %i.ds, %i.dw
  %i.dy = lshr i64 %i.dh, 1
  %i.dz = getelementptr inbounds nuw i8, ptr %i.dg, i64 %i.dy
  %i.ea = load i8, ptr %i.dz, align 1, !tbaa !30
  %i.eb = zext i8 %i.ea to i64
  %i.ec = shl nuw nsw i64 %i.eb, 8
  %i.ed = or disjoint i64 %i.dx, %i.ec
  br label %bb.x

bb.x:                                             ; preds = %bb.w, %bb.u
  %.0.i.i = phi i64 [ %i.dp, %bb.u ], [ %i.ed, %bb.w ]
  %i.ee = xor i64 %.0.i.i, ptrtoint (ptr @_ZN4absl12lts_2025051213hash_internal15MixingHashState5kSeedE to i64)
  %i.ef = mul i64 %i.ee, -2543921745674291987
  %i.eg = call noundef i64 @llvm.bswap.i64(i64 %i.ef)
  br label %.noexc112

bb.y:                                             ; preds = %.preheader
  %i.eh = icmp ult i64 %i.dh, 17
  br i1 %i.eh, label %bb.z, label %bb.aa

bb.z:                                             ; preds = %bb.y
  %.0.copyload.i.i.i.i = load i64, ptr %i.dg, align 1
  %i.ei = getelementptr inbounds nuw i8, ptr %i.dg, i64 %i.dh
  %i.ej = getelementptr inbounds i8, ptr %i.ei, i64 -8
  %.0.copyload.i.i4.i.i = load i64, ptr %i.ej, align 1
  %i.ek = xor i64 %.0.copyload.i.i.i.i, ptrtoint (ptr @_ZN4absl12lts_2025051213hash_internal15MixingHashState5kSeedE to i64)
  %i.el = xor i64 %.0.copyload.i.i4.i.i, -2543921745674291987
  %i.em = zext i64 %i.ek to i128
  %i.en = zext i64 %i.el to i128
  %i.eo = mul nuw i128 %i.en, %i.em               ; 2 uses
  %i.ep = lshr i128 %i.eo, 64
  %i.eq = xor i128 %i.ep, %i.eo
  %i.er = trunc i128 %i.eq to i64
  br label %.noexc112

bb.aa:                                            ; preds = %bb.y
  %i.es = icmp ult i64 %i.dh, 33
  br i1 %i.es, label %bb.ab, label %bb.ac

bb.ab:                                            ; preds = %bb.aa
  %.0.copyload.i.i20.i = load i64, ptr %i.dg, align 1
  %i.et = xor i64 %.0.copyload.i.i20.i, 1376283091369227076
  %i.eu = getelementptr inbounds nuw i8, ptr %i.dg, i64 8
  %.0.copyload.i.i21.i = load i64, ptr %i.eu, align 1
  %i.ev = xor i64 %.0.copyload.i.i21.i, ptrtoint (ptr @_ZN4absl12lts_2025051213hash_internal15MixingHashState5kSeedE to i64)
  %i.ew = zext i64 %i.et to i128
  %i.ex = zext i64 %i.ev to i128
  %i.ey = mul nuw i128 %i.ex, %i.ew               ; 2 uses
  %i.ez = getelementptr i8, ptr %i.dg, i64 %i.dh  ; 2 uses
  %i.fa = getelementptr i8, ptr %i.ez, i64 -16
  %.0.copyload.i.i22.i = load i64, ptr %i.fa, align 1
  %i.fb = xor i64 %.0.copyload.i.i22.i, 589684135938649225
  %i.fc = getelementptr i8, ptr %i.ez, i64 -8
  %.0.copyload.i.i23.i = load i64, ptr %i.fc, align 1
  %i.fd = xor i64 %.0.copyload.i.i23.i, ptrtoint (ptr @_ZN4absl12lts_2025051213hash_internal15MixingHashState5kSeedE to i64)
  %i.fe = zext i64 %i.fb to i128
  %i.ff = zext i64 %i.fd to i128
  %i.fg = mul nuw i128 %i.ff, %i.fe               ; 2 uses
  %i.fh = xor i128 %i.fg, %i.ey
  %i.fi = lshr i128 %i.fh, 64
  %i.fj = xor i128 %i.ey, %i.fi
  %i.fk = xor i128 %i.fj, %i.fg
  %i.fl = trunc i128 %i.fk to i64
  br label %.noexc112

bb.ac:                                            ; preds = %bb.aa
  %.not.i114 = icmp ugt i64 %i.dh, 1024
  br i1 %.not.i114, label %bb.ae, label %bb.ad, !prof !95

bb.ad:                                            ; preds = %bb.ac
  %i.fm = invoke noundef i64 @_ZN4absl12lts_2025051213hash_internal15MixingHashState16LowLevelHashImplEPKhm(ptr noundef %i.dg, i64 noundef %i.dh)
          to label %.noexc116 unwind label %.loopexit

.noexc116:                                        ; preds = %bb.ad
  %i.fn = xor i64 %i.fm, ptrtoint (ptr @_ZN4absl12lts_2025051213hash_internal15MixingHashState5kSeedE to i64)
  %i.fo = zext i64 %i.fn to i128
  %i.fp = mul nuw i128 %i.fo, 15902822328035259629 ; 2 uses
  %i.fq = lshr i128 %i.fp, 64
  %i.fr = xor i128 %i.fq, %i.fp
  %i.fs = trunc i128 %i.fr to i64
  br label %.noexc112

bb.ae:                                            ; preds = %bb.ac
  %i.ft = invoke noundef i64 @_ZN4absl12lts_2025051213hash_internal15MixingHashState28CombineLargeContiguousImpl64EmPKhm(i64 noundef ptrtoint (ptr @_ZN4absl12lts_2025051213hash_internal15MixingHashState5kSeedE to i64), ptr noundef %i.dg, i64 noundef %i.dh)
          to label %.noexc112 unwind label %.loopexit

.noexc112:                                        ; preds = %.noexc116, %bb.ab, %bb.z, %bb.x, %bb.v, %bb.ae
  %.0.i = phi i64 [ ptrtoint (ptr @_ZN4absl12lts_2025051213hash_internal15MixingHashState5kSeedE to i64), %bb.v ], [ %i.er, %bb.z ], [ %i.fl, %bb.ab ], [ %i.fs, %.noexc116 ], [ %i.eg, %bb.x ], [ %i.ft, %bb.ae ]
  %i.fu = add i64 %i.dh, 87
  %i.fv = add i64 %i.fu, %.0.i                    ; 3 uses
  %i.fw = load i64, ptr %i.av, align 8, !tbaa !37, !noalias !96
  %i.fx = and i64 %i.fw, 65535
  %i.fy = load i64, ptr %9, align 8, !tbaa !33, !noalias !96 ; 5 uses
  %i.fz = lshr i64 %i.fv, 7
  %i.ga = xor i64 %i.fx, %i.fz                    ; 2 uses
  %i.gb = trunc i64 %i.fv to i8
  %i.gc = and i8 %i.gb, 127
  %i.gd = load ptr, ptr %.sroa.4.0..sroa_idx.i.i, align 8, !tbaa !30, !noalias !92 ; 2 uses
  %.sroa.0.0.copyload.i.i.i.i = load ptr, ptr %i.aw, align 8, !tbaa !30, !noalias !92 ; 4 uses
  %i.ge = insertelement <16 x i8> poison, i8 %i.gc, i64 0
  %i.gf = shufflevector <16 x i8> %i.ge, <16 x i8> poison, <16 x i32> zeroinitializer ; 2 uses
  %i.gg = load ptr, ptr %12, align 8
  %i.gh = load i64, ptr %i.au, align 8
  %.fr173 = freeze i64 %i.gh                      ; 3 uses
  %i.gi = icmp eq i64 %.fr173, 0
  br i1 %i.gi, label %.noexc112.split.us, label %.noexc112.split

.noexc112.split.us:                               ; preds = %.noexc112, %bb.af
  %.pn.i.us = phi i64 [ %i.gr, %bb.af ], [ %i.ga, %.noexc112 ]
  %.sroa.15.0.i.us = phi i64 [ %i.gq, %bb.af ], [ 0, %.noexc112 ] ; 2 uses
  %.sroa.7.0.i.us = and i64 %.pn.i.us, %i.fy      ; 5 uses
  %i.gj = getelementptr inbounds nuw [32 x i8], ptr %.sroa.0.0.copyload.i.i.i.i, i64 %.sroa.7.0.i.us
  call void @llvm.prefetch.p0(ptr %i.gj, i32 0, i32 3, i32 1), !noalias !92
  %i.gk = getelementptr inbounds nuw i8, ptr %i.gd, i64 %.sroa.7.0.i.us
  %i.gl = load <16 x i8>, ptr %i.gk, align 1, !tbaa !30, !noalias !92 ; 2 uses
  %i.gm = icmp eq <16 x i8> %i.gf, %i.gl
  %i.gn = bitcast <16 x i1> %i.gm to i16          ; 2 uses
  %.not58.i.us = icmp eq i16 %i.gn, 0
  br i1 %.not58.i.us, label %.critedge18.i.us, label %.lr.ph.i.us.us

.critedge18.i.us:                                 ; preds = %.critedge.i.us.us, %.noexc112.split.us
  %i.go = icmp eq <16 x i8> %i.gl, splat (i8 -128)
  %i.gp = bitcast <16 x i1> %i.go to i16          ; 2 uses
  %.not51.i.us = icmp eq i16 %i.gp, 0
  br i1 %.not51.i.us, label %bb.af, label %.thread.i, !prof !95

bb.af:                                            ; preds = %.critedge18.i.us
  %i.gq = add i64 %.sroa.15.0.i.us, 16            ; 2 uses
  %i.gr = add i64 %i.gq, %.sroa.7.0.i.us
  br label %.noexc112.split.us

.lr.ph.i.us.us:                                   ; preds = %.noexc112.split.us, %.critedge.i.us.us
  %.sroa.033.059.i.us.us = phi i16 [ %i.hb, %.critedge.i.us.us ], [ %i.gn, %.noexc112.split.us ] ; 3 uses
  %i.gs = call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.sroa.033.059.i.us.us, i1 true)
  %i.gt = zext nneg i16 %i.gs to i64
  %i.gu = add i64 %.sroa.7.0.i.us, %i.gt
  %i.gv = and i64 %i.gu, %i.fy
  %i.gw = getelementptr inbounds nuw [32 x i8], ptr %.sroa.0.0.copyload.i.i.i.i, i64 %i.gv
  %i.gx = getelementptr inbounds nuw i8, ptr %i.gw, i64 8
  %i.gy = load i64, ptr %i.gx, align 8, !tbaa !91, !noalias !92
  %i.gz = icmp eq i64 %i.gy, 0
  br i1 %i.gz, label %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashSetPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEENS1_10StringHashENS1_8StringEqESaIS9_EE6insertIS9_Li0EEESt4pairINSE_8iteratorEbERKT_.exit, label %.critedge.i.us.us, !prof !99

.critedge.i.us.us:                                ; preds = %.lr.ph.i.us.us
  %i.ha = add i16 %.sroa.033.059.i.us.us, -1
  %i.hb = and i16 %i.ha, %.sroa.033.059.i.us.us   ; 2 uses
  %.not.i.us.us = icmp eq i16 %i.hb, 0
  br i1 %.not.i.us.us, label %.critedge18.i.us, label %.lr.ph.i.us.us

.noexc112.split:                                  ; preds = %.noexc112, %bb.ag
  %.pn.i = phi i64 [ %i.ib, %bb.ag ], [ %i.ga, %.noexc112 ]
  %.sroa.15.0.i = phi i64 [ %i.ia, %bb.ag ], [ 0, %.noexc112 ] ; 2 uses
  %.sroa.7.0.i = and i64 %.pn.i, %i.fy            ; 5 uses
  %i.hc = getelementptr inbounds nuw [32 x i8], ptr %.sroa.0.0.copyload.i.i.i.i, i64 %.sroa.7.0.i
  call void @llvm.prefetch.p0(ptr %i.hc, i32 0, i32 3, i32 1), !noalias !92
  %i.hd = getelementptr inbounds nuw i8, ptr %i.gd, i64 %.sroa.7.0.i
  %i.he = load <16 x i8>, ptr %i.hd, align 1, !tbaa !30, !noalias !92 ; 2 uses
  %i.hf = icmp eq <16 x i8> %i.gf, %i.he
  %i.hg = bitcast <16 x i1> %i.hf to i16          ; 2 uses
  %.not58.i = icmp eq i16 %i.hg, 0
  br i1 %.not58.i, label %.critedge18.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.noexc112.split, %.critedge.i
  %.sroa.033.059.i = phi i16 [ %i.hs, %.critedge.i ], [ %i.hg, %.noexc112.split ] ; 3 uses
  %i.hh = call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.sroa.033.059.i, i1 true)
  %i.hi = zext nneg i16 %i.hh to i64
  %i.hj = add i64 %.sroa.7.0.i, %i.hi
  %i.hk = and i64 %i.hj, %i.fy
  %i.hl = getelementptr inbounds nuw [32 x i8], ptr %.sroa.0.0.copyload.i.i.i.i, i64 %i.hk ; 2 uses
  %i.hm = getelementptr inbounds nuw i8, ptr %i.hl, i64 8
  %i.hn = load i64, ptr %i.hm, align 8, !tbaa !91, !noalias !92
  %i.ho = icmp eq i64 %i.hn, %.fr173
  br i1 %i.ho, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i.i.i, label %.critedge.i, !prof !99

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i.i.i: ; preds = %.lr.ph.i
  %i.hp = load ptr, ptr %i.hl, align 8, !tbaa !39, !noalias !92
  %bcmp.i.i.i.i.i.i.i = call i32 @bcmp(ptr %i.hp, ptr %i.gg, i64 %.fr173), !noalias !92
  %i.hq = icmp eq i32 %bcmp.i.i.i.i.i.i.i, 0
  br i1 %i.hq, label %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashSetPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEENS1_10StringHashENS1_8StringEqESaIS9_EE6insertIS9_Li0EEESt4pairINSE_8iteratorEbERKT_.exit, label %.critedge.i

.critedge.i:                                      ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i.i.i, %.lr.ph.i
  %i.hr = add i16 %.sroa.033.059.i, -1
  %i.hs = and i16 %i.hr, %.sroa.033.059.i         ; 2 uses
  %.not.i = icmp eq i16 %i.hs, 0
  br i1 %.not.i, label %.critedge18.i, label %.lr.ph.i

.critedge18.i:                                    ; preds = %.critedge.i, %.noexc112.split
  %i.ht = icmp eq <16 x i8> %i.he, splat (i8 -128)
  %i.hu = bitcast <16 x i1> %i.ht to i16          ; 2 uses
  %.not51.i = icmp eq i16 %i.hu, 0
  br i1 %.not51.i, label %bb.ag, label %.thread.i, !prof !95

.thread.i:                                        ; preds = %.critedge18.i, %.critedge18.i.us
  %.us-phi169 = phi i16 [ %i.gp, %.critedge18.i.us ], [ %i.hu, %.critedge18.i ]
  %.us-phi170 = phi i64 [ %.sroa.15.0.i.us, %.critedge18.i.us ], [ %.sroa.15.0.i, %.critedge18.i ]
  %.us-phi171 = phi i64 [ %.sroa.7.0.i.us, %.critedge18.i.us ], [ %.sroa.7.0.i, %.critedge18.i ]
  %i.hv = call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.us-phi169, i1 true)
  %i.hw = zext nneg i16 %i.hv to i64
  %i.hx = add i64 %.us-phi171, %i.hw
  %i.hy = and i64 %i.hx, %i.fy
  %i.hz = invoke noundef i64 @_ZN4absl12lts_2025051218container_internal19PrepareInsertNonSooERNS1_12CommonFieldsERKNS1_15PolicyFunctionsEmNS1_8FindInfoE(ptr noundef nonnull align 8 dereferenceable(32) %9, ptr noundef nonnull align 8 dereferenceable(72) @_ZZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashSetPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEENS1_10StringHashENS1_8StringEqESaIS9_EE18GetPolicyFunctionsEvE5value, i64 noundef %i.fv, i64 %i.hy, i64 %.us-phi170)
          to label %bb.ah unwind label %.loopexit.split-lp

bb.ag:                                            ; preds = %.critedge18.i
  %i.ia = add i64 %.sroa.15.0.i, 16               ; 2 uses
  %i.ib = add i64 %i.ia, %.sroa.7.0.i
  br label %.noexc112.split

bb.ah:                                            ; preds = %.thread.i
  %.sroa.0.0.copyload.i.i.i.i22.i = load ptr, ptr %i.aw, align 8, !tbaa !30, !noalias !92
  %i.ic = getelementptr inbounds nuw [32 x i8], ptr %.sroa.0.0.copyload.i.i.i.i22.i, i64 %i.hz ; 6 uses
  %i.id = getelementptr inbounds nuw i8, ptr %i.ic, i64 16 ; 3 uses
  store ptr %i.id, ptr %i.ic, align 8, !tbaa !100
  %i.ie = load ptr, ptr %12, align 8, !tbaa !39, !noalias !101 ; 2 uses
  %i.if = load i64, ptr %i.au, align 8, !tbaa !91, !noalias !101 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #24, !noalias !101
  store i64 %i.if, ptr %i.c, align 8, !tbaa !114, !noalias !101
  %i.ig = icmp ugt i64 %i.if, 15
  br i1 %i.ig, label %.noexc.i.i.i.i.i.i.i.i.i.i.i.i.i, label %._crit_edge.i.i.i.i.i.i.i.i.i.i.i.i.i.i

.noexc.i.i.i.i.i.i.i.i.i.i.i.i.i:                 ; preds = %bb.ah
  %i.ih = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %i.ic, ptr noundef nonnull align 8 dereferenceable(8) %i.c, i64 noundef 0)
          to label %.noexc61 unwind label %.loopexit.split-lp ; 2 uses

.noexc61:                                         ; preds = %.noexc.i.i.i.i.i.i.i.i.i.i.i.i.i
  store ptr %i.ih, ptr %i.ic, align 8, !tbaa !39
  %i.ii = load i64, ptr %i.c, align 8, !tbaa !114, !noalias !101
  store i64 %i.ii, ptr %i.id, align 8, !tbaa !30
  br label %._crit_edge.i.i.i.i.i.i.i.i.i.i.i.i.i.i

._crit_edge.i.i.i.i.i.i.i.i.i.i.i.i.i.i:          ; preds = %.noexc61, %bb.ah
  %i.ij = phi ptr [ %i.ih, %.noexc61 ], [ %i.id, %bb.ah ] ; 2 uses
  switch i64 %i.if, label %bb.aj [
    i64 1, label %bb.ai
    i64 0, label %bb.aw
  ]

bb.ai:                                            ; preds = %._crit_edge.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  %i.ik = load i8, ptr %i.ie, align 1, !tbaa !30
  store i8 %i.ik, ptr %i.ij, align 1, !tbaa !30
  br label %bb.aw

bb.aj:                                            ; preds = %._crit_edge.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.ij, ptr align 1 %i.ie, i64 %i.if, i1 false)
  br label %bb.aw

_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashSetPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEENS1_10StringHashENS1_8StringEqESaIS9_EE6insertIS9_Li0EEESt4pairINSE_8iteratorEbERKT_.exit: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i.i.i, %.lr.ph.i.us.us
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #24
  invoke void @_ZN4absl12lts_2025051212log_internal10LogMessageC1EPKciNS2_10WarningTagE(ptr noundef nonnull align 8 dereferenceable(16) %13, ptr noundef nonnull @.str.4, i32 noundef 59) #27
          to label %bb.ak unwind label %bb.as

bb.ak:                                            ; preds = %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashSetPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEENS1_10StringHashENS1_8StringEqESaIS9_EE6insertIS9_Li0EEESt4pairINSE_8iteratorEbERKT_.exit
  invoke void @_ZN4absl12lts_2025051212log_internal10LogMessage19CopyToEncodedBufferILNS2_10StringTypeE0EEEvSt17basic_string_viewIcSt11char_traitsIcEE(ptr noundef nonnull align 8 dereferenceable(16) %13, i64 21, ptr nonnull @.str.5)
          to label %_ZN4absl12lts_2025051212log_internal10LogMessagelsILi22EEERS2_RAT__Kc.exit unwind label %bb.at

_ZN4absl12lts_2025051212log_internal10LogMessagelsILi22EEERS2_RAT__Kc.exit: ; preds = %bb.ak
  %i.il = invoke noundef nonnull align 8 dereferenceable(16) ptr @_ZN4absl12lts_2025051212log_internal10LogMessagelsERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(16) %13, ptr noundef nonnull align 8 dereferenceable(32) %12)
          to label %bb.al unwind label %bb.at     ; 2 uses

bb.al:                                            ; preds = %_ZN4absl12lts_2025051212log_internal10LogMessagelsILi22EEERS2_RAT__Kc.exit
  invoke void @_ZN4absl12lts_2025051212log_internal10LogMessage19CopyToEncodedBufferILNS2_10StringTypeE0EEEvSt17basic_string_viewIcSt11char_traitsIcEE(ptr noundef nonnull align 8 dereferenceable(16) %i.il, i64 13, ptr nonnull @.str.6)
          to label %_ZN4absl12lts_2025051212log_internal10LogMessagelsILi14EEERS2_RAT__Kc.exit unwind label %bb.at

_ZN4absl12lts_2025051212log_internal10LogMessagelsILi14EEERS2_RAT__Kc.exit: ; preds = %bb.al
  %.sroa.01.0.copyload = load i64, ptr %11, align 8, !tbaa !114
  %.sroa.22.0.copyload = load ptr, ptr %i.at, align 8, !tbaa !115
  %i.im = invoke noundef nonnull align 8 dereferenceable(16) ptr @_ZN4absl12lts_2025051212log_internal10LogMessagelsESt17basic_string_viewIcSt11char_traitsIcEE(ptr noundef nonnull align 8 dereferenceable(16) %i.il, i64 %.sroa.01.0.copyload, ptr %.sroa.22.0.copyload)
          to label %bb.am unwind label %bb.at     ; 2 uses

bb.am:                                            ; preds = %_ZN4absl12lts_2025051212log_internal10LogMessagelsILi14EEERS2_RAT__Kc.exit
  invoke void @_ZN4absl12lts_2025051212log_internal10LogMessage19CopyToEncodedBufferILNS2_10StringTypeE0EEEvSt17basic_string_viewIcSt11char_traitsIcEE(ptr noundef nonnull align 8 dereferenceable(16) %i.im, i64 5, ptr nonnull @.str.7)
          to label %bb.an unwind label %bb.at

bb.an:                                            ; preds = %bb.am
  %i.in = load ptr, ptr %i.f, align 8, !tbaa !9
  %i.io = getelementptr inbounds nuw i8, ptr %i.in, i64 8
  %i.ip = load ptr, ptr %i.io, align 8, !tbaa !38 ; 2 uses
  %.0.copyload.i.i.i65 = load i16, ptr %i.ip, align 1
  %i.iq = zext i16 %.0.copyload.i.i.i65 to i64    ; 2 uses
  %i.ir = xor i64 %i.iq, -1
  %i.is = getelementptr inbounds i8, ptr %i.ip, i64 %i.ir
  %i.it = invoke noundef nonnull align 8 dereferenceable(16) ptr @_ZN4absl12lts_2025051212log_internal10LogMessagelsESt17basic_string_viewIcSt11char_traitsIcEE(ptr noundef nonnull align 8 dereferenceable(16) %i.im, i64 %i.iq, ptr nonnull %i.is)
          to label %bb.ao unwind label %bb.at     ; 2 uses

bb.ao:                                            ; preds = %bb.an
  invoke void @_ZN4absl12lts_2025051212log_internal10LogMessage19CopyToEncodedBufferILNS2_10StringTypeE0EEEvSt17basic_string_viewIcSt11char_traitsIcEE(ptr noundef nonnull align 8 dereferenceable(16) %i.it, i64 34, ptr nonnull @.str.8)
          to label %_ZN4absl12lts_2025051212log_internal10LogMessagelsILi35EEERS2_RAT__Kc.exit unwind label %bb.at

_ZN4absl12lts_2025051212log_internal10LogMessagelsILi35EEERS2_RAT__Kc.exit: ; preds = %bb.ao
  invoke void @_ZN4absl12lts_2025051212log_internal10LogMessage5FlushEv(ptr noundef nonnull align 8 dereferenceable(16) %i.it)
          to label %bb.ap unwind label %bb.at

bb.ap:                                            ; preds = %_ZN4absl12lts_2025051212log_internal10LogMessagelsILi35EEERS2_RAT__Kc.exit
  call void @_ZN4absl12lts_2025051212log_internal10LogMessageD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %13) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #24
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #24
  store i64 1, ptr %14, align 8
  store ptr @.str.9, ptr %i.ax, align 8
  invoke void @_ZN4absl12lts_202505129StrAppendEPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKNS0_8AlphaNumE(ptr noundef nonnull %12, ptr noundef nonnull align 8 dereferenceable(48) %14)
          to label %bb.aq unwind label %bb.av

bb.aq:                                            ; preds = %bb.ap
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #24
end_hunk_0
begin_hunk_1_@_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyISt17basic_string_viewIcSt11char_traitsIcEES7_EENS1_10StringHashENS1_8StringEqESaISt4pairIKS7_S7_EEE46transfer_unprobed_elements_to_next_capacity_fnERNS1_12CommonFieldsEPKNS1_6ctrl_tEPvSL_PFvSL_hmmE:bb.a

bb.r:                                             ; preds = %bb.q
  %i.cx = and i64 %i.cn, %i.a                     ; 2 uses
  %i.cy = getelementptr inbounds nuw i8, ptr %i.f, i64 %i.cx
  %i.cz = load <16 x i8>, ptr %i.cy, align 1, !tbaa !30
  %i.da = icmp slt <16 x i8> %i.cz, zeroinitializer
  %i.db = bitcast <16 x i1> %i.da to i16          ; 2 uses
  %.not26.i = icmp eq i16 %i.db, 0
  br i1 %.not26.i, label %bb.t, label %bb.s, !prof !95

bb.s:                                             ; preds = %bb.r
  %i.dc = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %i.db, i1 true)
  %i.dd = zext nneg i16 %i.dc to i64
  %i.de = add nuw nsw i64 %i.cx, %i.dd
  br label %_ZN4absl12lts_2025051218container_internal29TryFindNewIndexWithoutProbingIvEEmmmmPNS1_6ctrl_tEm.exit

bb.t:                                             ; preds = %bb.r, %bb.q
  tail call void %4(ptr noundef %3, i8 noundef zeroext %i.cp, i64 noundef %i.w, i64 noundef %i.cn)
  br label %bb.u

_ZN4absl12lts_2025051218container_internal29TryFindNewIndexWithoutProbingIvEEmmmmPNS1_6ctrl_tEm.exit: ; preds = %bb.s, %bb.p
  %.2.i = phi i64 [ %i.de, %bb.s ], [ %i.cv, %bb.p ] ; 2 uses
  %i.df = getelementptr inbounds nuw i8, ptr %i.f, i64 %.2.i
  store i8 %i.cp, ptr %i.df, align 1, !tbaa !205
  %i.dg = getelementptr inbounds nuw [32 x i8], ptr %.sroa.0.0.copyload.i.i.i, i64 %.2.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(32) %i.dg, ptr noundef nonnull align 1 dereferenceable(32) %i.x, i64 32, i1 false)
  br label %bb.u

bb.u:                                             ; preds = %_ZN4absl12lts_2025051218container_internal29TryFindNewIndexWithoutProbingIvEEmmmmPNS1_6ctrl_tEm.exit, %bb.t
  %i.dh = add i16 %.sroa.055.062, -1
  %i.di = and i16 %i.dh, %.sroa.055.062           ; 2 uses
  %.not = icmp eq i16 %i.di, 0
  br i1 %.not, label %._crit_edge, label %.lr.ph
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr hidden noundef i64 @_ZN4absl12lts_2025051213hash_internal15MixingHashState21CombineContiguousImplEmPKhmSt17integral_constantIiLi8EE(i64 noundef %0, ptr noundef %1, i64 noundef %2) local_unnamed_addr #15 comdat align 2 {
bb.a:
  %i.a = icmp ult i64 %2, 9
  br i1 %i.a, label %bb.b, label %bb.g

bb.b:                                             ; preds = %bb.a
  %i.b = icmp samesign ugt i64 %2, 3
  br i1 %i.b, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %.0.copyload.i.i = load i32, ptr %1, align 1
  %i.c = zext i32 %.0.copyload.i.i to i64
  %i.d = shl nuw i64 %i.c, 32
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 %2
  %i.f = getelementptr inbounds i8, ptr %i.e, i64 -4
  %.0.copyload.i4.i = load i32, ptr %i.f, align 1
  %i.g = zext i32 %.0.copyload.i4.i to i64
  %i.h = or disjoint i64 %i.d, %i.g
  br label %bb.f

bb.d:                                             ; preds = %bb.b
  %.not.i = icmp eq i64 %2, 0
  br i1 %.not.i, label %_ZN4absl12lts_2025051213hash_internal15MixingHashState26CombineSmallContiguousImplEmPKhm.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.i = load i8, ptr %1, align 1, !tbaa !30
  %i.j = zext i8 %i.i to i64
  %i.k = shl nuw nsw i64 %i.j, 16
  %i.l = getelementptr i8, ptr %1, i64 %2
  %i.m = getelementptr i8, ptr %i.l, i64 -1
  %i.n = load i8, ptr %i.m, align 1, !tbaa !30
  %i.o = zext i8 %i.n to i64
  %i.p = or disjoint i64 %i.k, %i.o
  %i.q = lshr i64 %2, 1
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 %i.q
  %i.s = load i8, ptr %i.r, align 1, !tbaa !30
  %i.t = zext i8 %i.s to i64
  %i.u = shl nuw nsw i64 %i.t, 8
  %i.v = or disjoint i64 %i.p, %i.u
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.c
  %.0.i = phi i64 [ %i.h, %bb.c ], [ %i.v, %bb.e ]
  %i.w = xor i64 %.0.i, %0
  %i.x = mul i64 %i.w, -2543921745674291987
  %i.y = tail call noundef i64 @llvm.bswap.i64(i64 %i.x)
  br label %_ZN4absl12lts_2025051213hash_internal15MixingHashState26CombineSmallContiguousImplEmPKhm.exit

bb.g:                                             ; preds = %bb.a
  %i.z = icmp ult i64 %2, 17
  br i1 %i.z, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %.0.copyload.i.i.i = load i64, ptr %1, align 1
  %i.aa = getelementptr inbounds nuw i8, ptr %1, i64 %2
  %i.ab = getelementptr inbounds i8, ptr %i.aa, i64 -8
  %.0.copyload.i.i4.i = load i64, ptr %i.ab, align 1
  %i.ac = xor i64 %.0.copyload.i.i.i, %0
  %i.ad = xor i64 %.0.copyload.i.i4.i, -2543921745674291987
  %i.ae = zext i64 %i.ac to i128
  %i.af = zext i64 %i.ad to i128
  %i.ag = mul nuw i128 %i.af, %i.ae               ; 2 uses
  %i.ah = lshr i128 %i.ag, 64
  %i.ai = xor i128 %i.ah, %i.ag
  %i.aj = trunc i128 %i.ai to i64
  br label %_ZN4absl12lts_2025051213hash_internal15MixingHashState26CombineSmallContiguousImplEmPKhm.exit

bb.i:                                             ; preds = %bb.g
  %i.ak = icmp ult i64 %2, 33
  br i1 %i.ak, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %.0.copyload.i.i20 = load i64, ptr %1, align 1
  %i.al = xor i64 %.0.copyload.i.i20, 1376283091369227076
  %i.am = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.0.copyload.i.i21 = load i64, ptr %i.am, align 1
  %i.an = xor i64 %.0.copyload.i.i21, %0
  %i.ao = zext i64 %i.al to i128
  %i.ap = zext i64 %i.an to i128
  %i.aq = mul nuw i128 %i.ap, %i.ao               ; 2 uses
  %i.ar = getelementptr i8, ptr %1, i64 %2        ; 2 uses
  %i.as = getelementptr i8, ptr %i.ar, i64 -16
  %.0.copyload.i.i22 = load i64, ptr %i.as, align 1
  %i.at = xor i64 %.0.copyload.i.i22, 589684135938649225
  %i.au = getelementptr i8, ptr %i.ar, i64 -8
  %.0.copyload.i.i23 = load i64, ptr %i.au, align 1
  %i.av = xor i64 %.0.copyload.i.i23, %0
  %i.aw = zext i64 %i.at to i128
  %i.ax = zext i64 %i.av to i128
  %i.ay = mul nuw i128 %i.ax, %i.aw               ; 2 uses
  %i.az = xor i128 %i.ay, %i.aq
  %i.ba = lshr i128 %i.az, 64
  %i.bb = xor i128 %i.aq, %i.ba
  %i.bc = xor i128 %i.bb, %i.ay
  %i.bd = trunc i128 %i.bc to i64
  br label %_ZN4absl12lts_2025051213hash_internal15MixingHashState26CombineSmallContiguousImplEmPKhm.exit

bb.k:                                             ; preds = %bb.i
  %.not = icmp ugt i64 %2, 1024
  br i1 %.not, label %bb.m, label %bb.l, !prof !95

bb.l:                                             ; preds = %bb.k
  %i.be = tail call noundef i64 @_ZN4absl12lts_2025051213hash_internal15MixingHashState16LowLevelHashImplEPKhm(ptr noundef %1, i64 noundef %2)
  %i.bf = xor i64 %i.be, %0
  %i.bg = zext i64 %i.bf to i128
  %i.bh = mul nuw i128 %i.bg, 15902822328035259629 ; 2 uses
  %i.bi = lshr i128 %i.bh, 64
  %i.bj = xor i128 %i.bi, %i.bh
  %i.bk = trunc i128 %i.bj to i64
  br label %_ZN4absl12lts_2025051213hash_internal15MixingHashState26CombineSmallContiguousImplEmPKhm.exit

bb.m:                                             ; preds = %bb.k
  %i.bl = tail call noundef i64 @_ZN4absl12lts_2025051213hash_internal15MixingHashState28CombineLargeContiguousImpl64EmPKhm(i64 noundef %0, ptr noundef %1, i64 noundef %2)
  br label %_ZN4absl12lts_2025051213hash_internal15MixingHashState26CombineSmallContiguousImplEmPKhm.exit

_ZN4absl12lts_2025051213hash_internal15MixingHashState26CombineSmallContiguousImplEmPKhm.exit: ; preds = %bb.f, %bb.d, %bb.m, %bb.l, %bb.j, %bb.h
  %.0 = phi i64 [ %i.bl, %bb.m ], [ %i.aj, %bb.h ], [ %i.bd, %bb.j ], [ %i.bk, %bb.l ], [ %i.y, %bb.f ], [ %0, %bb.d ]
  ret i64 %.0
}

declare noundef i64 @_ZN4absl12lts_2025051213hash_internal15MixingHashState28CombineLargeContiguousImpl64EmPKhm(i64 noundef, ptr noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.bswap.i64(i64) #16

declare noundef i64 @_ZN4absl12lts_2025051213hash_internal15MixingHashState16LowLevelHashImplEPKhm(ptr noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: noreturn
declare void @_ZSt17__throw_bad_allocv() local_unnamed_addr #17

; Function Attrs: nobuiltin allocsize(0)
declare noundef nonnull ptr @_Znwm(i64 noundef) local_unnamed_addr #18

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #19

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i16 @llvm.cttz.i16(i16, i1 immarg) #20

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyISt17basic_string_viewIcSt11char_traitsIcEES7_EENS1_10StringHashENS1_8StringEqESaISt4pairIKS7_S7_EEE30find_or_prepare_insert_non_sooIS7_EESB_INSF_8iteratorEbERKT_(ptr dead_on_unwind noalias writable sret(%"struct.std::pair.51") align 8 %0, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(16) %2) local_unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 3 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !30
  tail call void @llvm.prefetch.p0(ptr %i.b, i32 0, i32 1, i32 1)
  %.sroa.0.0.copyload.i = load i64, ptr %2, align 8, !tbaa !114 ; 2 uses
  %.sroa.2.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %.sroa.2.0.copyload.i = load ptr, ptr %.sroa.2.0..sroa_idx.i, align 8, !tbaa !115
  %i.c = tail call noundef i64 @_ZN4absl12lts_2025051213hash_internal15MixingHashState21CombineContiguousImplEmPKhmSt17integral_constantIiLi8EE(i64 noundef ptrtoint (ptr @_ZN4absl12lts_2025051213hash_internal15MixingHashState5kSeedE to i64), ptr noundef %.sroa.2.0.copyload.i, i64 noundef %.sroa.0.0.copyload.i)
  %i.d = add i64 %.sroa.0.0.copyload.i, 87
  %i.e = add i64 %i.d, %i.c                       ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.g = load i64, ptr %i.f, align 8, !tbaa !37, !noalias !207
  %i.h = and i64 %i.g, 65535
  %i.i = load i64, ptr %1, align 8, !tbaa !33, !noalias !207 ; 3 uses
  %i.j = lshr i64 %i.e, 7
  %i.k = xor i64 %i.h, %i.j
  %i.l = trunc i64 %i.e to i8
  %i.m = and i8 %i.l, 127
  %i.n = load ptr, ptr %i.a, align 8, !tbaa !30   ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %.sroa.0.0.copyload.i.i.i = load ptr, ptr %i.o, align 8, !tbaa !30 ; 2 uses
  %i.p = insertelement <16 x i8> poison, i8 %i.m, i64 0
  %i.q = shufflevector <16 x i8> %i.p, <16 x i8> poison, <16 x i32> zeroinitializer
  br label %bb.b

bb.b:                                             ; preds = %bb.d, %bb.a
  %.pn = phi i64 [ %i.k, %bb.a ], [ %i.aq, %bb.d ]
  %.sroa.15.0 = phi i64 [ 0, %bb.a ], [ %i.ap, %bb.d ] ; 2 uses
  %.sroa.7.0 = and i64 %.pn, %i.i                 ; 5 uses
  %i.r = getelementptr inbounds nuw [32 x i8], ptr %.sroa.0.0.copyload.i.i.i, i64 %.sroa.7.0
  tail call void @llvm.prefetch.p0(ptr %i.r, i32 0, i32 3, i32 1)
  %i.s = getelementptr inbounds nuw i8, ptr %i.n, i64 %.sroa.7.0
  %i.t = load <16 x i8>, ptr %i.s, align 1, !tbaa !30 ; 2 uses
  %i.u = icmp eq <16 x i8> %i.q, %i.t
  %i.v = bitcast <16 x i1> %i.u to i16            ; 2 uses
  %.not59 = icmp eq i16 %i.v, 0
  br i1 %.not59, label %.critedge18, label %.lr.ph

.lr.ph:                                           ; preds = %bb.b
  %.sroa.0.0.copyload.i.i.i.i.i = load i64, ptr %2, align 8, !tbaa !114 ; 3 uses
  %.sroa.2.0.copyload.i.i.i.i.i = load ptr, ptr %.sroa.2.0..sroa_idx.i, align 8, !tbaa !115
  %3 = icmp eq i64 %.sroa.0.0.copyload.i.i.i.i.i, 0
  br label %.lr.ph.a

.lr.ph.a:                                         ; preds = %.lr.ph, %.critedge
  %.sroa.034.060 = phi i16 [ %i.v, %.lr.ph ], [ %i.ae, %.critedge ] ; 3 uses
  %i.w = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.sroa.034.060, i1 true)
  %i.x = zext nneg i16 %i.w to i64
  %i.y = add i64 %.sroa.7.0, %i.x
  %i.z = and i64 %i.y, %i.i                       ; 2 uses
  %i.aa = getelementptr inbounds nuw [32 x i8], ptr %.sroa.0.0.copyload.i.i.i, i64 %i.z ; 3 uses
  %.sroa.01.0.copyload.i.i.i.i.i = load i64, ptr %i.aa, align 8, !tbaa !114
  %.sroa.22.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.aa, i64 8
  %.sroa.22.0.copyload.i.i.i.i.i = load ptr, ptr %.sroa.22.0..sroa_idx.i.i.i.i.i, align 8, !tbaa !115
  %i.ab = icmp eq i64 %.sroa.01.0.copyload.i.i.i.i.i, %.sroa.0.0.copyload.i.i.i.i.i
  br i1 %i.ab, label %bb.c, label %.critedge, !prof !99

bb.c:                                             ; preds = %.lr.ph.a
  br i1 %3, label %.critedge20, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i.i.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i.i.i: ; preds = %bb.c
  %bcmp.i.i.i.i.i.i.i = tail call i32 @bcmp(ptr %.sroa.22.0.copyload.i.i.i.i.i, ptr %.sroa.2.0.copyload.i.i.i.i.i, i64 %.sroa.0.0.copyload.i.i.i.i.i)
  %i.ac = icmp eq i32 %bcmp.i.i.i.i.i.i.i, 0
  br i1 %i.ac, label %.critedge20, label %.critedge

.critedge:                                        ; preds = %.lr.ph.a, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i.i.i
  %i.ad = add i16 %.sroa.034.060, -1
  %i.ae = and i16 %i.ad, %.sroa.034.060           ; 2 uses
  %.not = icmp eq i16 %i.ae, 0
  br i1 %.not, label %.critedge18, label %.lr.ph.a

.critedge18:                                      ; preds = %.critedge, %bb.b
  %i.af = icmp eq <16 x i8> %i.t, splat (i8 -128)
  %i.ag = bitcast <16 x i1> %i.af to i16          ; 2 uses
  %.not52 = icmp eq i16 %i.ag, 0
  br i1 %.not52, label %bb.d, label %.thread, !prof !95

.thread:                                          ; preds = %.critedge18
  %i.ah = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %i.ag, i1 true)
  %i.ai = zext nneg i16 %i.ah to i64
  %i.aj = add i64 %.sroa.7.0, %i.ai
  %i.ak = and i64 %i.aj, %i.i
  %i.al = tail call noundef i64 @_ZN4absl12lts_2025051218container_internal19PrepareInsertNonSooERNS1_12CommonFieldsERKNS1_15PolicyFunctionsEmNS1_8FindInfoE(ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(72) @_ZZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyISt17basic_string_viewIcSt11char_traitsIcEES7_EENS1_10StringHashENS1_8StringEqESaISt4pairIKS7_S7_EEE18GetPolicyFunctionsEvE5value, i64 noundef %i.e, i64 %i.ak, i64 %.sroa.15.0) ; 2 uses
  %i.am = load ptr, ptr %i.a, align 8, !tbaa !30, !nonnull !32, !noundef !32
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 %i.al
  %.sroa.0.0.copyload.i.i.i.i23 = load ptr, ptr %i.o, align 8, !tbaa !30
  %i.ao = getelementptr inbounds nuw [32 x i8], ptr %.sroa.0.0.copyload.i.i.i.i23, i64 %i.al
  br label %bb.e

bb.d:                                             ; preds = %.critedge18
  %i.ap = add i64 %.sroa.15.0, 16                 ; 2 uses
  %i.aq = add i64 %i.ap, %.sroa.7.0
  br label %bb.b

.critedge20:                                      ; preds = %bb.c, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i.i.i
  %i.ar = getelementptr inbounds nuw i8, ptr %i.n, i64 %i.z
  br label %bb.e

bb.e:                                             ; preds = %.thread, %.critedge20
  %.sink77 = phi ptr [ %i.an, %.thread ], [ %i.ar, %.critedge20 ]
  %.sink76 = phi ptr [ %i.ao, %.thread ], [ %i.aa, %.critedge20 ]
  %.sink = phi i8 [ 1, %.thread ], [ 0, %.critedge20 ]
  store ptr %.sink77, ptr %0, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sink76, ptr %.sroa.4.0..sroa_idx, align 8
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i8 %.sink, ptr %i.as, align 8, !tbaa !154
  ret void
}

declare noundef i64 @_ZN4absl12lts_2025051218container_internal19PrepareInsertNonSooERNS1_12CommonFieldsERKNS1_15PolicyFunctionsEmNS1_8FindInfoE(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef nonnull align 8 dereferenceable(72), i64 noundef, i64, i64) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @llvm.prefetch.p0(ptr readonly captures(none), i32 immarg, i32 immarg, i32 immarg) #21

declare void @_ZN6google8protobuf2io7Printer9PrintImplESt17basic_string_viewIcSt11char_traitsIcEEN4absl12lts_202505124SpanIKNSt7__cxx1112basic_stringIcS5_SaIcEEEEENS2_12PrintOptionsE(ptr noundef nonnull align 16 dereferenceable(296), i64, ptr, ptr, i64, ptr noundef byval(%"struct.google::protobuf::io::Printer::PrintOptions") align 8) local_unnamed_addr #1

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN4absl12lts_202505127CleanupINS0_16cleanup_internal3TagEZN6google8protobuf2io7Printer8WithVarsINS0_13flat_hash_mapISt17basic_string_viewIcSt11char_traitsIcEESD_NS0_18container_internal10StringHashENSE_8StringEqESaISt4pairIKSD_SD_EEEEEEDaPKT_EUlvE_ED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %0) unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load i8, ptr %0, align 8, !tbaa !201, !range !31, !noundef !32
  %i.b = trunc nuw i8 %i.a to i1
  br i1 %i.b, label %bb.b, label %_ZN4absl12lts_2025051216cleanup_internal7StorageIZN6google8protobuf2io7Printer8WithVarsINS0_13flat_hash_mapISt17basic_string_viewIcSt11char_traitsIcEESC_NS0_18container_internal10StringHashENSD_8StringEqESaISt4pairIKSC_SC_EEEEEEDaPKT_EUlvE_E14InvokeCallbackEv.exit

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !210
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 160 ; 2 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !189  ; 2 uses
  %i.g = getelementptr inbounds i8, ptr %i.f, i64 -32 ; 3 uses
  store ptr %i.g, ptr %i.e, align 8, !tbaa !189
  %i.h = getelementptr inbounds i8, ptr %i.f, i64 -16
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !195  ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.i, null
  br i1 %.not.i.i.i.i, label %_ZN4absl12lts_2025051216cleanup_internal7StorageIZN6google8protobuf2io7Printer8WithVarsINS0_13flat_hash_mapISt17basic_string_viewIcSt11char_traitsIcEESC_NS0_18container_internal10StringHashENSD_8StringEqESaISt4pairIKSC_SC_EEEEEEDaPKT_EUlvE_E14InvokeCallbackEv.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.j = invoke noundef zeroext i1 %i.i(ptr noundef nonnull align 8 dereferenceable(32) %i.g, ptr noundef nonnull align 8 dereferenceable(32) %i.g, i32 noundef 3)
          to label %_ZN4absl12lts_2025051216cleanup_internal7StorageIZN6google8protobuf2io7Printer8WithVarsINS0_13flat_hash_mapISt17basic_string_viewIcSt11char_traitsIcEESC_NS0_18container_internal10StringHashENSD_8StringEqESaISt4pairIKSC_SC_EEEEEEDaPKT_EUlvE_E14InvokeCallbackEv.exit unwind label %bb.d ; 0 uses

bb.d:                                             ; preds = %bb.c
  %i.k = landingpad { ptr, i32 }
          catch ptr null
  %i.l = extractvalue { ptr, i32 } %i.k, 0
  tail call void @__clang_call_terminate(ptr %i.l) #26
  unreachable

_ZN4absl12lts_2025051216cleanup_internal7StorageIZN6google8protobuf2io7Printer8WithVarsINS0_13flat_hash_mapISt17basic_string_viewIcSt11char_traitsIcEESC_NS0_18container_internal10StringHashENSD_8StringEqESaISt4pairIKSC_SC_EEEEEEDaPKT_EUlvE_E14InvokeCallbackEv.exit: ; preds = %bb.b, %bb.c, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZNSt6vectorISt8functionIFSt8optionalIN6google8protobuf2io7Printer9ValueImplILb0EEEESt17basic_string_viewIcSt11char_traitsIcEEEESaISE_EE17_M_realloc_insertIJZNS5_8WithVarsIN4absl12lts_2025051213flat_hash_mapISC_SC_NSK_18container_internal10StringHashENSM_8StringEqESaISt4pairIKSC_SC_EEEEEEDaPKT_EUlSC_E_EEEvN9__gnu_cxx17__normal_iteratorIPSE_SG_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %1, ptr noundef nonnull align 8 dereferenceable(8) %2) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !189  ; 3 uses
  %i.c = load ptr, ptr %0, align 8, !tbaa !212    ; 5 uses
  %i.d = ptrtoint ptr %i.b to i64
  %i.e = ptrtoint ptr %i.c to i64                 ; 3 uses
  %i.f = sub i64 %i.d, %i.e                       ; 2 uses
  %i.g = icmp eq i64 %i.f, 9223372036854775776
  br i1 %i.g, label %bb.b, label %_ZNKSt6vectorISt8functionIFSt8optionalIN6google8protobuf2io7Printer9ValueImplILb0EEEESt17basic_string_viewIcSt11char_traitsIcEEEESaISE_EE12_M_check_lenEmPKc.exit

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.21) #29
  unreachable

_ZNKSt6vectorISt8functionIFSt8optionalIN6google8protobuf2io7Printer9ValueImplILb0EEEESt17basic_string_viewIcSt11char_traitsIcEEEESaISE_EE12_M_check_lenEmPKc.exit: ; preds = %bb.a
  %i.h = ashr exact i64 %i.f, 5                   ; 3 uses
  %.sroa.speculated.i = tail call i64 @llvm.umax.i64(i64 %i.h, i64 1)
  %i.i = add nsw i64 %.sroa.speculated.i, %i.h    ; 2 uses
  %i.j = icmp ult i64 %i.i, %i.h
  %i.k = tail call i64 @llvm.umin.i64(i64 %i.i, i64 288230376151711743)
  %i.l = select i1 %i.j, i64 288230376151711743, i64 %i.k ; 3 uses
  %i.m = ptrtoint ptr %1 to i64
  %i.n = sub i64 %i.m, %i.e
  %.not.i = icmp ne i64 %i.l, 0
  tail call void @llvm.assume(i1 %.not.i)
  %i.o = shl nuw nsw i64 %i.l, 5
  %i.p = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.o) #30 ; 5 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 %i.n ; 4 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 16
  %i.s = getelementptr inbounds nuw i8, ptr %i.q, i64 24
  %i.t = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  store i64 0, ptr %i.t, align 8
  %i.u = load i64, ptr %2, align 8, !tbaa !191
  store i64 %i.u, ptr %i.q, align 8, !tbaa !191
  store ptr @_ZNSt17_Function_handlerIFSt8optionalIN6google8protobuf2io7Printer9ValueImplILb0EEEESt17basic_string_viewIcSt11char_traitsIcEEEZNS4_8WithVarsIN4absl12lts_2025051213flat_hash_mapISB_SB_NSF_18container_internal10StringHashENSH_8StringEqESaISt4pairIKSB_SB_EEEEEEDaPKT_EUlSB_E_E9_M_invokeERKSt9_Any_dataOSB_, ptr %i.s, align 8, !tbaa !192
  store ptr @_ZNSt17_Function_handlerIFSt8optionalIN6google8protobuf2io7Printer9ValueImplILb0EEEESt17basic_string_viewIcSt11char_traitsIcEEEZNS4_8WithVarsIN4absl12lts_2025051213flat_hash_mapISB_SB_NSF_18container_internal10StringHashENSH_8StringEqESaISt4pairIKSB_SB_EEEEEEDaPKT_EUlSB_E_E10_M_managerERSt9_Any_dataRKSU_St18_Manager_operation, ptr %i.r, align 8, !tbaa !195
  %.not10.i.i.i = icmp eq ptr %i.c, %1
  br i1 %.not10.i.i.i, label %_ZNSt6vectorISt8functionIFSt8optionalIN6google8protobuf2io7Printer9ValueImplILb0EEEESt17basic_string_viewIcSt11char_traitsIcEEEESaISE_EE11_S_relocateEPSE_SH_SH_RSF_.exit, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %_ZNKSt6vectorISt8functionIFSt8optionalIN6google8protobuf2io7Printer9ValueImplILb0EEEESt17basic_string_viewIcSt11char_traitsIcEEEESaISE_EE12_M_check_lenEmPKc.exit, %_ZSt19__relocate_object_aISt8functionIFSt8optionalIN6google8protobuf2io7Printer9ValueImplILb0EEEESt17basic_string_viewIcSt11char_traitsIcEEEESE_SaISE_EEvPT_PT0_RT1_.exit.i.i.i
  %.012.i.i.i = phi ptr [ %i.ac, %_ZSt19__relocate_object_aISt8functionIFSt8optionalIN6google8protobuf2io7Printer9ValueImplILb0EEEESt17basic_string_viewIcSt11char_traitsIcEEEESE_SaISE_EEvPT_PT0_RT1_.exit.i.i.i ], [ %i.p, %_ZNKSt6vectorISt8functionIFSt8optionalIN6google8protobuf2io7Printer9ValueImplILb0EEEESt17basic_string_viewIcSt11char_traitsIcEEEESaISE_EE12_M_check_lenEmPKc.exit ] ; 5 uses
  %.0911.i.i.i = phi ptr [ %i.ab, %_ZSt19__relocate_object_aISt8functionIFSt8optionalIN6google8protobuf2io7Printer9ValueImplILb0EEEESt17basic_string_viewIcSt11char_traitsIcEEEESE_SaISE_EEvPT_PT0_RT1_.exit.i.i.i ], [ %i.c, %_ZNKSt6vectorISt8functionIFSt8optionalIN6google8protobuf2io7Printer9ValueImplILb0EEEESt17basic_string_viewIcSt11char_traitsIcEEEESaISE_EE12_M_check_lenEmPKc.exit ] ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !213)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !216)
  %i.v = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 24
  %i.w = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 24
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.012.i.i.i, i8 0, i64 24, i1 false), !alias.scope !213, !noalias !216
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !192, !alias.scope !216, !noalias !213
  store ptr %i.x, ptr %i.v, align 8, !tbaa !192, !alias.scope !213, !noalias !216
  %i.y = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 16 ; 2 uses
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !195, !alias.scope !216, !noalias !213 ; 2 uses
  %.not.i.i.not.i.i.i.i.i = icmp eq ptr %i.z, null
  br i1 %.not.i.i.not.i.i.i.i.i, label %_ZSt19__relocate_object_aISt8functionIFSt8optionalIN6google8protobuf2io7Printer9ValueImplILb0EEEESt17basic_string_viewIcSt11char_traitsIcEEEESE_SaISE_EEvPT_PT0_RT1_.exit.i.i.i, label %_ZNSt8functionIFSt8optionalIN6google8protobuf2io7Printer9ValueImplILb0EEEESt17basic_string_viewIcSt11char_traitsIcEEEEC2EOSD_.exit.i.i.i.i

_ZNSt8functionIFSt8optionalIN6google8protobuf2io7Printer9ValueImplILb0EEEESt17basic_string_viewIcSt11char_traitsIcEEEEC2EOSD_.exit.i.i.i.i: ; preds = %.lr.ph.i.i.i
  %i.aa = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 16
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.012.i.i.i, ptr noundef nonnull align 8 dereferenceable(32) %.0911.i.i.i, i64 16, i1 false), !tbaa.struct !218, !alias.scope !219
  store ptr %i.z, ptr %i.aa, align 8, !tbaa !195, !alias.scope !213, !noalias !216
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.y, i8 0, i64 16, i1 false), !alias.scope !216, !noalias !213
  br label %_ZSt19__relocate_object_aISt8functionIFSt8optionalIN6google8protobuf2io7Printer9ValueImplILb0EEEESt17basic_string_viewIcSt11char_traitsIcEEEESE_SaISE_EEvPT_PT0_RT1_.exit.i.i.i

_ZSt19__relocate_object_aISt8functionIFSt8optionalIN6google8protobuf2io7Printer9ValueImplILb0EEEESt17basic_string_viewIcSt11char_traitsIcEEEESE_SaISE_EEvPT_PT0_RT1_.exit.i.i.i: ; preds = %_ZNSt8functionIFSt8optionalIN6google8protobuf2io7Printer9ValueImplILb0EEEESt17basic_string_viewIcSt11char_traitsIcEEEEC2EOSD_.exit.i.i.i.i, %.lr.ph.i.i.i
  %i.ab = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 32 ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 32 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.ab, %1
  br i1 %.not.i.i.i, label %_ZNSt6vectorISt8functionIFSt8optionalIN6google8protobuf2io7Printer9ValueImplILb0EEEESt17basic_string_viewIcSt11char_traitsIcEEEESaISE_EE11_S_relocateEPSE_SH_SH_RSF_.exit, label %.lr.ph.i.i.i, !llvm.loop !220

_ZNSt6vectorISt8functionIFSt8optionalIN6google8protobuf2io7Printer9ValueImplILb0EEEESt17basic_string_viewIcSt11char_traitsIcEEEESaISE_EE11_S_relocateEPSE_SH_SH_RSF_.exit: ; preds = %_ZSt19__relocate_object_aISt8functionIFSt8optionalIN6google8protobuf2io7Printer9ValueImplILb0EEEESt17basic_string_viewIcSt11char_traitsIcEEEESE_SaISE_EEvPT_PT0_RT1_.exit.i.i.i, %_ZNKSt6vectorISt8functionIFSt8optionalIN6google8protobuf2io7Printer9ValueImplILb0EEEESt17basic_string_viewIcSt11char_traitsIcEEEESaISE_EE12_M_check_lenEmPKc.exit
  %.0.lcssa.i.i.i = phi ptr [ %i.p, %_ZNKSt6vectorISt8functionIFSt8optionalIN6google8protobuf2io7Printer9ValueImplILb0EEEESt17basic_string_viewIcSt11char_traitsIcEEEESaISE_EE12_M_check_lenEmPKc.exit ], [ %i.ac, %_ZSt19__relocate_object_aISt8functionIFSt8optionalIN6google8protobuf2io7Printer9ValueImplILb0EEEESt17basic_string_viewIcSt11char_traitsIcEEEESE_SaISE_EEvPT_PT0_RT1_.exit.i.i.i ]
  %i.ad = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i, i64 32 ; 2 uses
  %.not10.i.i.i16 = icmp eq ptr %1, %i.b
  br i1 %.not10.i.i.i16, label %_ZNSt6vectorISt8functionIFSt8optionalIN6google8protobuf2io7Printer9ValueImplILb0EEEESt17basic_string_viewIcSt11char_traitsIcEEEESaISE_EE11_S_relocateEPSE_SH_SH_RSF_.exit25, label %.lr.ph.i.i.i17

.lr.ph.i.i.i17:                                   ; preds = %_ZNSt6vectorISt8functionIFSt8optionalIN6google8protobuf2io7Printer9ValueImplILb0EEEESt17basic_string_viewIcSt11char_traitsIcEEEESaISE_EE11_S_relocateEPSE_SH_SH_RSF_.exit, %_ZSt19__relocate_object_aISt8functionIFSt8optionalIN6google8protobuf2io7Printer9ValueImplILb0EEEESt17basic_string_viewIcSt11char_traitsIcEEEESE_SaISE_EEvPT_PT0_RT1_.exit.i.i.i22
  %.012.i.i.i18 = phi ptr [ %i.al, %_ZSt19__relocate_object_aISt8functionIFSt8optionalIN6google8protobuf2io7Printer9ValueImplILb0EEEESt17basic_string_viewIcSt11char_traitsIcEEEESE_SaISE_EEvPT_PT0_RT1_.exit.i.i.i22 ], [ %i.ad, %_ZNSt6vectorISt8functionIFSt8optionalIN6google8protobuf2io7Printer9ValueImplILb0EEEESt17basic_string_viewIcSt11char_traitsIcEEEESaISE_EE11_S_relocateEPSE_SH_SH_RSF_.exit ] ; 5 uses
  %.0911.i.i.i19 = phi ptr [ %i.ak, %_ZSt19__relocate_object_aISt8functionIFSt8optionalIN6google8protobuf2io7Printer9ValueImplILb0EEEESt17basic_string_viewIcSt11char_traitsIcEEEESE_SaISE_EEvPT_PT0_RT1_.exit.i.i.i22 ], [ %1, %_ZNSt6vectorISt8functionIFSt8optionalIN6google8protobuf2io7Printer9ValueImplILb0EEEESt17basic_string_viewIcSt11char_traitsIcEEEESaISE_EE11_S_relocateEPSE_SH_SH_RSF_.exit ] ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !221)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !224)
  %i.ae = getelementptr inbounds nuw i8, ptr %.012.i.i.i18, i64 24
  %i.af = getelementptr inbounds nuw i8, ptr %.0911.i.i.i19, i64 24
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.012.i.i.i18, i8 0, i64 24, i1 false), !alias.scope !221, !noalias !224
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !192, !alias.scope !224, !noalias !221
  store ptr %i.ag, ptr %i.ae, align 8, !tbaa !192, !alias.scope !221, !noalias !224
  %i.ah = getelementptr inbounds nuw i8, ptr %.0911.i.i.i19, i64 16 ; 2 uses
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !195, !alias.scope !224, !noalias !221 ; 2 uses
  %.not.i.i.not.i.i.i.i.i20 = icmp eq ptr %i.ai, null
  br i1 %.not.i.i.not.i.i.i.i.i20, label %_ZSt19__relocate_object_aISt8functionIFSt8optionalIN6google8protobuf2io7Printer9ValueImplILb0EEEESt17basic_string_viewIcSt11char_traitsIcEEEESE_SaISE_EEvPT_PT0_RT1_.exit.i.i.i22, label %_ZNSt8functionIFSt8optionalIN6google8protobuf2io7Printer9ValueImplILb0EEEESt17basic_string_viewIcSt11char_traitsIcEEEEC2EOSD_.exit.i.i.i.i21

_ZNSt8functionIFSt8optionalIN6google8protobuf2io7Printer9ValueImplILb0EEEESt17basic_string_viewIcSt11char_traitsIcEEEEC2EOSD_.exit.i.i.i.i21: ; preds = %.lr.ph.i.i.i17
  %i.aj = getelementptr inbounds nuw i8, ptr %.012.i.i.i18, i64 16
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.012.i.i.i18, ptr noundef nonnull align 8 dereferenceable(32) %.0911.i.i.i19, i64 16, i1 false), !tbaa.struct !218, !alias.scope !226
  store ptr %i.ai, ptr %i.aj, align 8, !tbaa !195, !alias.scope !221, !noalias !224
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ah, i8 0, i64 16, i1 false), !alias.scope !224, !noalias !221
end_hunk_1
