Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/nlohmann_json/original/unit-cbor?download=true
inline.NumInlined: 20964
inline.NumDeleted: 2764
loop-unroll.NumCompletelyUnrolled: 115
loop-unroll.NumRuntimeUnrolled: 5
loop-unroll.NumUnrolled: 120
begin_hunk_0_@_ZL19DOCTEST_ANON_FUNC_7v:bb.a
  call void @_ZN7doctest6StringD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %82) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %82) #32
  %i.ol = invoke noundef zeroext i1 @_ZNK7doctest6detail7SubcasecvbEv(ptr noundef nonnull align 8 dereferenceable(41) %81)
          to label %bb.ij unwind label %bb.iy

bb.ij:                                            ; preds = %bb.ii
  br i1 %i.ol, label %bb.ik, label %bb.avw

bb.ik:                                            ; preds = %bb.ij
  call void @llvm.lifetime.start.p0(ptr nonnull %83) #32
  call void @llvm.lifetime.start.p0(ptr nonnull %84) #32
  invoke void @_ZN7doctest6StringC1EPKc(ptr noundef nonnull align 8 dereferenceable(24) %84, ptr noundef nonnull @.str.37)
          to label %bb.il unwind label %bb.iz

bb.il:                                            ; preds = %bb.ik
  invoke void @_ZN7doctest6detail7SubcaseC1ERKNS_6StringEPKci(ptr noundef nonnull align 8 dereferenceable(41) %83, ptr noundef nonnull align 8 dereferenceable(24) %84, ptr noundef nonnull @.str.5, i32 noundef 173)
          to label %bb.im unwind label %bb.ja

bb.im:                                            ; preds = %bb.il
  call void @_ZN7doctest6StringD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %84) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %84) #32
  %i.om = invoke noundef zeroext i1 @_ZNK7doctest6detail7SubcasecvbEv(ptr noundef nonnull align 8 dereferenceable(41) %83)
          to label %bb.in unwind label %bb.jc

bb.in:                                            ; preds = %bb.im
  br i1 %i.om, label %bb.io, label %bb.mh

bb.io:                                            ; preds = %bb.in
  %i.on = invoke noalias noundef nonnull dereferenceable(88) ptr @_Znwm(i64 noundef 88) #35
          to label %bb.ip unwind label %bb.jc     ; 4 uses

bb.ip:                                            ; preds = %bb.io
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(88) %i.on, ptr noundef nonnull align 8 dereferenceable(88) @constinit, i64 88, i1 false)
  %i.oo = ptrtoint ptr %i.o to i64
  %i.op = getelementptr inbounds nuw i8, ptr %85, i64 16
  %i.oq = getelementptr inbounds nuw i8, ptr %86, i64 8 ; 2 uses
  %i.or = getelementptr inbounds nuw i8, ptr %87, i64 8 ; 2 uses
  %i.os = getelementptr inbounds nuw i8, ptr %90, i64 16
  %i.ot = getelementptr inbounds nuw i8, ptr %90, i64 8
  %.sroa.2989.0..sroa_idx = getelementptr inbounds nuw i8, ptr %93, i64 8
  %i.ou = getelementptr inbounds nuw i8, ptr %92, i64 8 ; 2 uses
  %i.ov = getelementptr inbounds nuw i8, ptr %91, i64 8
  %.sroa.2985.0..sroa_idx = getelementptr inbounds nuw i8, ptr %96, i64 8
  %i.ow = getelementptr inbounds nuw i8, ptr %95, i64 8 ; 2 uses
  %.sroa.2981.0..sroa_idx = getelementptr inbounds nuw i8, ptr %99, i64 8
  %i.ox = getelementptr inbounds nuw i8, ptr %98, i64 8 ; 2 uses
  %.sroa.2977.0..sroa_idx = getelementptr inbounds nuw i8, ptr %102, i64 8
  %i.oy = getelementptr inbounds nuw i8, ptr %101, i64 8 ; 2 uses
  %.sroa.2973.0..sroa_idx = getelementptr inbounds nuw i8, ptr %105, i64 8
  %i.oz = getelementptr inbounds nuw i8, ptr %104, i64 8 ; 2 uses
  %i.pa = getelementptr inbounds nuw i8, ptr %110, i64 8 ; 2 uses
  %i.pb = getelementptr inbounds nuw i8, ptr %108, i64 16
  %i.pc = getelementptr inbounds nuw i8, ptr %107, i64 8 ; 2 uses
  %i.pd = getelementptr inbounds nuw i8, ptr %108, i64 8
  %i.pe = getelementptr inbounds nuw i8, ptr %114, i64 8 ; 2 uses
  %i.pf = getelementptr inbounds nuw i8, ptr %112, i64 16
  %i.pg = getelementptr inbounds nuw i8, ptr %111, i64 8 ; 2 uses
  %i.ph = getelementptr inbounds nuw i8, ptr %112, i64 8
  %i.pi = getelementptr inbounds nuw i8, ptr %85, i64 8
  br label %bb.jd

_ZNSt6vectorIlSaIlEED2Ev.exit:                    ; preds = %"_ZN7doctest6detail12ContextScopeIZL19DOCTEST_ANON_FUNC_7vE3$_1ED2Ev.exit"
  call void @_ZdlPv(ptr noundef nonnull %i.on) #34
  br label %bb.mh

bb.iq:                                            ; preds = %bb.hd, %bb.ib, %bb.fe, %bb.ha, %bb.fb
  %.pn2899.pn.pn.pn.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn2871, %bb.fe ], [ %i.lk, %bb.fb ], [ %.pn2880.pn.pn.pn.pn.pn.pn.pn, %bb.ha ], [ %.pn2899.pn.pn.pn.pn.pn.pn.pn, %bb.ib ], [ %.pn2890, %bb.hd ]
  call void @_ZN7doctest6detail7SubcaseD1Ev(ptr noundef nonnull align 8 dead_on_return(41) dereferenceable(41) %45) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %45) #32
  br label %bb.fra

bb.ir:                                            ; preds = %bb.ic
  %i.pj = landingpad { ptr, i32 }
          cleanup
  br label %bb.it

bb.is:                                            ; preds = %bb.id
  %i.pk = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7doctest6StringD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %80) #32
  br label %bb.it

bb.it:                                            ; preds = %bb.is, %bb.ir
  %.pn2911 = phi { ptr, i32 } [ %i.pk, %bb.is ], [ %i.pj, %bb.ir ]
  call void @llvm.lifetime.end.p0(ptr nonnull %80) #32
  br label %bb.fra

bb.iu:                                            ; preds = %bb.ie
  %i.pl = landingpad { ptr, i32 }
          cleanup
  br label %bb.dau

bb.iv:                                            ; preds = %bb.ig
  %i.pm = landingpad { ptr, i32 }
          cleanup
  br label %bb.ix

bb.iw:                                            ; preds = %bb.ih
  %i.pn = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7doctest6StringD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %82) #32
  br label %bb.ix

bb.ix:                                            ; preds = %bb.iw, %bb.iv
  %.pn2913 = phi { ptr, i32 } [ %i.pn, %bb.iw ], [ %i.pm, %bb.iv ]
  call void @llvm.lifetime.end.p0(ptr nonnull %82) #32
  br label %bb.dau

bb.iy:                                            ; preds = %bb.ii
  %i.po = landingpad { ptr, i32 }
          cleanup
  br label %bb.awg

bb.iz:                                            ; preds = %bb.ik
  %i.pp = landingpad { ptr, i32 }
          cleanup
  br label %bb.jb

bb.ja:                                            ; preds = %bb.il
  %i.pq = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7doctest6StringD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %84) #32
  br label %bb.jb

bb.jb:                                            ; preds = %bb.ja, %bb.iz
  %.pn2915 = phi { ptr, i32 } [ %i.pq, %bb.ja ], [ %i.pp, %bb.iz ]
  call void @llvm.lifetime.end.p0(ptr nonnull %84) #32
  br label %bb.awg

bb.jc:                                            ; preds = %bb.im, %bb.io
  %i.pr = landingpad { ptr, i32 }
          cleanup
  br label %bb.mn

bb.jd:                                            ; preds = %bb.ip, %"_ZN7doctest6detail12ContextScopeIZL19DOCTEST_ANON_FUNC_7vE3$_1ED2Ev.exit"
  %.sroa.09371.0.idx9798 = phi i64 [ 0, %bb.ip ], [ %.sroa.09371.0.add, %"_ZN7doctest6detail12ContextScopeIZL19DOCTEST_ANON_FUNC_7vE3$_1ED2Ev.exit" ] ; 2 uses
  %.sroa.09371.0.ptr = getelementptr inbounds nuw i8, ptr %i.on, i64 %.sroa.09371.0.idx9798
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o) #32
  %i.ps = load i64, ptr %.sroa.09371.0.ptr, align 8, !tbaa !121
  store i64 %i.ps, ptr %i.o, align 8, !tbaa !121
  call void @llvm.lifetime.start.p0(ptr nonnull %85) #32
  invoke void @_ZN7doctest6detail16ContextScopeBaseC2Ev(ptr noundef nonnull align 8 dereferenceable(24) %85)
          to label %bb.je unwind label %bb.kq

bb.je:                                            ; preds = %bb.jd
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @"_ZTVN7doctest6detail12ContextScopeIZL19DOCTEST_ANON_FUNC_7vE3$_1EE", i64 16), ptr %85, align 8, !tbaa !91, !alias.scope !900
  store i64 %i.oo, ptr %i.op, align 8, !tbaa !123, !alias.scope !900
  call void @llvm.lifetime.start.p0(ptr nonnull %86) #32
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %86, i8 0, i64 16, i1 false)
  %i.pt = load i64, ptr %i.o, align 8, !tbaa !121
  store i8 5, ptr %86, align 8, !tbaa !113
  store i64 %i.pt, ptr %i.oq, align 8, !tbaa !105
  call void @llvm.lifetime.start.p0(ptr nonnull %87) #32
  call void @llvm.lifetime.start.p0(ptr nonnull %88) #32
  call void @llvm.lifetime.start.p0(ptr nonnull %89) #32
  invoke void @_ZN7doctest6detail20ExpressionDecomposerC1ENS_10assertType4EnumE(ptr noundef nonnull align 4 dereferenceable(4) %89, i32 noundef 10)
          to label %bb.jf unwind label %bb.kr

bb.jf:                                            ; preds = %bb.je
  %i.pu = load i8, ptr %86, align 8, !tbaa !113
  %i.pv = add i8 %i.pu, -5
  %spec.select.i = icmp ult i8 %i.pv, 2
  %i.pw = load i32, ptr %89, align 4, !tbaa !94
  %.sroa.22.0.insert.ext.i5214 = zext i32 %i.pw to i64
  %.sroa.22.0.insert.shift.i5215 = shl nuw i64 %.sroa.22.0.insert.ext.i5214, 32
  %.sroa.0.0.insert.ext.i5216 = zext i1 %spec.select.i to i64
  %.sroa.0.0.insert.insert.i5217 = or disjoint i64 %.sroa.22.0.insert.shift.i5215, %.sroa.0.0.insert.ext.i5216
  store i64 %.sroa.0.0.insert.insert.i5217, ptr %88, align 8
  invoke void @_ZN7doctest6detail14Expression_lhsIbEcvNS0_6ResultEEv(ptr dead_on_unwind nonnull writable sret(%"struct.doctest::detail::Result") align 8 %87, ptr noundef nonnull align 4 dereferenceable(8) %88)
          to label %bb.jg unwind label %bb.kr

bb.jg:                                            ; preds = %bb.jf
  %i.px = invoke noundef zeroext i1 @_ZN7doctest6detail13decomp_assertENS_10assertType4EnumEPKciS4_RKNS0_6ResultE(i32 noundef 10, ptr noundef nonnull @.str.5, i32 noundef 197, ptr noundef nonnull @.str.38, ptr noundef nonnull align 8 dereferenceable(32) %87)
          to label %bb.jh unwind label %bb.ks     ; 0 uses

bb.jh:                                            ; preds = %bb.jg
  call void @_ZN7doctest6StringD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %i.or) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %89) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %88) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %87) #32
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p) #32
  %i.py = load i64, ptr %i.o, align 8, !tbaa !121
  %i.pz = xor i64 %i.py, -1                       ; 2 uses
  store i64 %i.pz, ptr %i.p, align 8, !tbaa !121
  call void @llvm.lifetime.start.p0(ptr nonnull %90) #32
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %90, i8 0, i64 24, i1 false)
  %i.qa = invoke noalias noundef nonnull dereferenceable(9) ptr @_Znwm(i64 noundef 9) #35
          to label %bb.ji unwind label %_ZNSt12_Vector_baseIhSaIhEED2Ev.exit.i5219 ; 4 uses

_ZNSt12_Vector_baseIhSaIhEED2Ev.exit.i5219:       ; preds = %bb.jh
  %i.qb = landingpad { ptr, i32 }
          cleanup
  br label %.body5220

bb.ji:                                            ; preds = %bb.jh
  store ptr %i.qa, ptr %90, align 8, !tbaa !110
  %i.qc = getelementptr inbounds nuw i8, ptr %i.qa, i64 9 ; 2 uses
  store ptr %i.qc, ptr %i.os, align 8, !tbaa !114
  store i8 59, ptr %i.qa, align 1
  %.sroa.59360.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.qa, i64 1
  %1717 = call i64 @llvm.bswap.i64(i64 %i.pz)
  store i64 %1717, ptr %.sroa.59360.0..sroa_idx, align 1
  store ptr %i.qc, ptr %i.ot, align 8, !tbaa !115
  call void @llvm.lifetime.start.p0(ptr nonnull %91) #32
  invoke void @_ZN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEEvE7to_cborERKSD_(ptr dead_on_unwind nonnull writable sret(%"class.std::vector") align 8 %91, ptr noundef nonnull align 8 dereferenceable(16) %86)
          to label %bb.jj unwind label %bb.ku

bb.jj:                                            ; preds = %bb.ji
  call void @llvm.lifetime.start.p0(ptr nonnull %92) #32
  call void @llvm.lifetime.start.p0(ptr nonnull %93) #32
  call void @llvm.lifetime.start.p0(ptr nonnull %94) #32
  invoke void @_ZN7doctest6detail20ExpressionDecomposerC1ENS_10assertType4EnumE(ptr noundef nonnull align 4 dereferenceable(4) %94, i32 noundef 10)
          to label %bb.jk unwind label %bb.kv

bb.jk:                                            ; preds = %bb.jj
  %i.qd = load i32, ptr %94, align 4, !tbaa !94
  store ptr %91, ptr %93, align 8
  store i32 %i.qd, ptr %.sroa.2989.0..sroa_idx, align 8
  invoke void @_ZN7doctest6detail14Expression_lhsIRKSt6vectorIhSaIhEEEeqIS6_EEDTcmcvveqclL_ZNS0_7declvalIS6_EEOT_vEEclsr7doctest6detailE7declvalISA_EEtlNS0_6ResultEEESB_(ptr dead_on_unwind nonnull writable sret(%"struct.doctest::detail::Result") align 8 %92, ptr noundef nonnull align 8 dereferenceable(12) %93, ptr noundef nonnull align 8 dereferenceable(24) %90)
          to label %bb.jl unwind label %bb.kv

bb.jl:                                            ; preds = %bb.jk
  %i.qe = invoke noundef zeroext i1 @_ZN7doctest6detail13decomp_assertENS_10assertType4EnumEPKciS4_RKNS0_6ResultE(i32 noundef 10, ptr noundef nonnull @.str.5, i32 noundef 216, ptr noundef nonnull @.str.27, ptr noundef nonnull align 8 dereferenceable(32) %92)
          to label %bb.jm unwind label %bb.kw     ; 0 uses

bb.jm:                                            ; preds = %bb.jl
  call void @_ZN7doctest6StringD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %i.ou) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %94) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %93) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %92) #32
  call void @llvm.lifetime.start.p0(ptr nonnull %95) #32
  call void @llvm.lifetime.start.p0(ptr nonnull %96) #32
  call void @llvm.lifetime.start.p0(ptr nonnull %97) #32
  invoke void @_ZN7doctest6detail20ExpressionDecomposerC1ENS_10assertType4EnumE(ptr noundef nonnull align 4 dereferenceable(4) %97, i32 noundef 10)
          to label %bb.jn unwind label %bb.ky

bb.jn:                                            ; preds = %bb.jm
  %i.qf = load ptr, ptr %i.ov, align 8, !tbaa !115
  %i.qg = load ptr, ptr %91, align 8, !tbaa !110
  %i.qh = ptrtoint ptr %i.qf to i64
  %i.qi = ptrtoint ptr %i.qg to i64
  %i.qj = sub i64 %i.qh, %i.qi
  %i.qk = load i32, ptr %97, align 4, !tbaa !94
  store i64 %i.qj, ptr %96, align 8
  store i32 %i.qk, ptr %.sroa.2985.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q) #32
  store i32 9, ptr %i.q, align 4, !tbaa !124
  invoke void @_ZN7doctest6detail14Expression_lhsImEeqIiEEDTcmcvveqclL_ZNS0_7declvalImEEOT_vEEclsr7doctest6detailE7declvalIS5_EEtlNS0_6ResultEEES6_(ptr dead_on_unwind nonnull writable sret(%"struct.doctest::detail::Result") align 8 %95, ptr noundef nonnull align 8 dereferenceable(12) %96, ptr noundef nonnull align 4 dereferenceable(4) %i.q)
          to label %bb.jo unwind label %bb.kz

bb.jo:                                            ; preds = %bb.jn
  %i.ql = invoke noundef zeroext i1 @_ZN7doctest6detail13decomp_assertENS_10assertType4EnumEPKciS4_RKNS0_6ResultE(i32 noundef 10, ptr noundef nonnull @.str.5, i32 noundef 217, ptr noundef nonnull @.str.39, ptr noundef nonnull align 8 dereferenceable(32) %95)
          to label %bb.jp unwind label %bb.la     ; 0 uses

bb.jp:                                            ; preds = %bb.jo
  call void @_ZN7doctest6StringD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %i.ow) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %97) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %96) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %95) #32
  call void @llvm.lifetime.start.p0(ptr nonnull %98) #32
  call void @llvm.lifetime.start.p0(ptr nonnull %99) #32
  call void @llvm.lifetime.start.p0(ptr nonnull %100) #32
  invoke void @_ZN7doctest6detail20ExpressionDecomposerC1ENS_10assertType4EnumE(ptr noundef nonnull align 4 dereferenceable(4) %100, i32 noundef 10)
          to label %bb.jq unwind label %bb.ld

bb.jq:                                            ; preds = %bb.jp
  %i.qm = load ptr, ptr %91, align 8, !tbaa !110
  %i.qn = load i32, ptr %100, align 4, !tbaa !94
  store ptr %i.qm, ptr %99, align 8
  store i32 %i.qn, ptr %.sroa.2981.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.r) #32
  store i32 59, ptr %i.r, align 4, !tbaa !124
  invoke void @_ZN7doctest6detail14Expression_lhsIRKhEeqIiEEDTcmcvveqclL_ZNS0_7declvalIS3_EEOT_vEEclsr7doctest6detailE7declvalIS7_EEtlNS0_6ResultEEES8_(ptr dead_on_unwind nonnull writable sret(%"struct.doctest::detail::Result") align 8 %98, ptr noundef nonnull align 8 dereferenceable(12) %99, ptr noundef nonnull align 4 dereferenceable(4) %i.r)
          to label %bb.jr unwind label %bb.le

bb.jr:                                            ; preds = %bb.jq
  %i.qo = invoke noundef zeroext i1 @_ZN7doctest6detail13decomp_assertENS_10assertType4EnumEPKciS4_RKNS0_6ResultE(i32 noundef 10, ptr noundef nonnull @.str.5, i32 noundef 220, ptr noundef nonnull @.str.40, ptr noundef nonnull align 8 dereferenceable(32) %98)
          to label %bb.js unwind label %bb.lf     ; 0 uses

bb.js:                                            ; preds = %bb.jr
  call void @_ZN7doctest6StringD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %i.ox) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %100) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %99) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %98) #32
  call void @llvm.lifetime.start.p0(ptr nonnull %i.s) #32
  %i.qp = load ptr, ptr %91, align 8, !tbaa !110  ; 8 uses
  %i.qq = getelementptr inbounds nuw i8, ptr %i.qp, i64 1
  %i.qr = load i8, ptr %i.qq, align 1, !tbaa !105
  %i.qs = zext i8 %i.qr to i64
  %i.qt = shl nuw i64 %i.qs, 56
  %i.qu = getelementptr inbounds nuw i8, ptr %i.qp, i64 2
  %i.qv = load i8, ptr %i.qu, align 1, !tbaa !105
  %i.qw = zext i8 %i.qv to i64
  %i.qx = shl nuw nsw i64 %i.qw, 48
  %i.qy = or disjoint i64 %i.qx, %i.qt
  %i.qz = getelementptr inbounds nuw i8, ptr %i.qp, i64 3
  %i.ra = load i8, ptr %i.qz, align 1, !tbaa !105
  %i.rb = zext i8 %i.ra to i64
  %i.rc = shl nuw nsw i64 %i.rb, 40
  %i.rd = or disjoint i64 %i.qy, %i.rc
  %i.re = getelementptr inbounds nuw i8, ptr %i.qp, i64 4
  %i.rf = load i8, ptr %i.re, align 1, !tbaa !105
  %i.rg = zext i8 %i.rf to i64
  %i.rh = shl nuw nsw i64 %i.rg, 32
  %i.ri = or disjoint i64 %i.rd, %i.rh
  %i.rj = getelementptr inbounds nuw i8, ptr %i.qp, i64 5
  %i.rk = load i8, ptr %i.rj, align 1, !tbaa !105
  %i.rl = zext i8 %i.rk to i64
  %i.rm = shl nuw nsw i64 %i.rl, 24
  %i.rn = or disjoint i64 %i.ri, %i.rm
  %i.ro = getelementptr inbounds nuw i8, ptr %i.qp, i64 6
  %i.rp = load i8, ptr %i.ro, align 1, !tbaa !105
  %i.rq = zext i8 %i.rp to i64
  %i.rr = shl nuw nsw i64 %i.rq, 16
  %i.rs = or disjoint i64 %i.rn, %i.rr
  %i.rt = getelementptr inbounds nuw i8, ptr %i.qp, i64 7
  %i.ru = load i8, ptr %i.rt, align 1, !tbaa !105
  %i.rv = zext i8 %i.ru to i64
  %i.rw = shl nuw nsw i64 %i.rv, 8
  %i.rx = or disjoint i64 %i.rs, %i.rw
  %i.ry = getelementptr inbounds nuw i8, ptr %i.qp, i64 8
  %i.rz = load i8, ptr %i.ry, align 1, !tbaa !105
  %i.sa = zext i8 %i.rz to i64
  %i.sb = add nuw i64 %i.rx, %i.sa
  store i64 %i.sb, ptr %i.s, align 8, !tbaa !121
  call void @llvm.lifetime.start.p0(ptr nonnull %101) #32
  call void @llvm.lifetime.start.p0(ptr nonnull %102) #32
  call void @llvm.lifetime.start.p0(ptr nonnull %103) #32
  invoke void @_ZN7doctest6detail20ExpressionDecomposerC1ENS_10assertType4EnumE(ptr noundef nonnull align 4 dereferenceable(4) %103, i32 noundef 10)
          to label %bb.jt unwind label %bb.li

bb.jt:                                            ; preds = %bb.js
  %i.sc = load i32, ptr %103, align 4, !tbaa !94
  store ptr %i.s, ptr %102, align 8
  store i32 %i.sc, ptr %.sroa.2977.0..sroa_idx, align 8
  invoke void @_ZN7doctest6detail14Expression_lhsIRKmEeqIS3_EEDTcmcvveqclL_ZNS0_7declvalIS3_EEOT_vEEclsr7doctest6detailE7declvalIS7_EEtlNS0_6ResultEEES8_(ptr dead_on_unwind nonnull writable sret(%"struct.doctest::detail::Result") align 8 %101, ptr noundef nonnull align 8 dereferenceable(12) %102, ptr noundef nonnull align 8 dereferenceable(8) %i.p)
          to label %bb.ju unwind label %bb.li

bb.ju:                                            ; preds = %bb.jt
  %i.sd = invoke noundef zeroext i1 @_ZN7doctest6detail13decomp_assertENS_10assertType4EnumEPKciS4_RKNS0_6ResultE(i32 noundef 10, ptr noundef nonnull @.str.5, i32 noundef 229, ptr noundef nonnull @.str.41, ptr noundef nonnull align 8 dereferenceable(32) %101)
          to label %bb.jv unwind label %bb.lj     ; 0 uses

bb.jv:                                            ; preds = %bb.ju
  call void @_ZN7doctest6StringD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %i.oy) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %103) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %102) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %101) #32
  call void @llvm.lifetime.start.p0(ptr nonnull %104) #32
  call void @llvm.lifetime.start.p0(ptr nonnull %105) #32
  call void @llvm.lifetime.start.p0(ptr nonnull %106) #32
  invoke void @_ZN7doctest6detail20ExpressionDecomposerC1ENS_10assertType4EnumE(ptr noundef nonnull align 4 dereferenceable(4) %106, i32 noundef 10)
          to label %bb.jw unwind label %bb.ll

bb.jw:                                            ; preds = %bb.jv
  %i.se = load i64, ptr %i.s, align 8, !tbaa !121
  %i.sf = xor i64 %i.se, -1
  %i.sg = load i32, ptr %106, align 4, !tbaa !94
  store i64 %i.sf, ptr %105, align 8
  store i32 %i.sg, ptr %.sroa.2973.0..sroa_idx, align 8
  invoke void @_ZN7doctest6detail14Expression_lhsIlEeqIRKlEEDTcmcvveqclL_ZNS0_7declvalIlEEOT_vEEclsr7doctest6detailE7declvalIS7_EEtlNS0_6ResultEEES8_(ptr dead_on_unwind nonnull writable sret(%"struct.doctest::detail::Result") align 8 %104, ptr noundef nonnull align 8 dereferenceable(12) %105, ptr noundef nonnull align 8 dereferenceable(8) %i.o)
          to label %bb.jx unwind label %bb.ll

bb.jx:                                            ; preds = %bb.jw
  %i.sh = invoke noundef zeroext i1 @_ZN7doctest6detail13decomp_assertENS_10assertType4EnumEPKciS4_RKNS0_6ResultE(i32 noundef 10, ptr noundef nonnull @.str.5, i32 noundef 230, ptr noundef nonnull @.str.42, ptr noundef nonnull align 8 dereferenceable(32) %104)
          to label %bb.jy unwind label %bb.lm     ; 0 uses

bb.jy:                                            ; preds = %bb.jx
  call void @_ZN7doctest6StringD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %i.oz) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %106) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %105) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %104) #32
  call void @llvm.lifetime.start.p0(ptr nonnull %107) #32
  call void @llvm.lifetime.start.p0(ptr nonnull %108) #32
  call void @llvm.lifetime.start.p0(ptr nonnull %109) #32
  invoke void @_ZN7doctest6detail20ExpressionDecomposerC1ENS_10assertType4EnumE(ptr noundef nonnull align 4 dereferenceable(4) %109, i32 noundef 10)
          to label %bb.jz unwind label %bb.lo

bb.jz:                                            ; preds = %bb.jy
  call void @llvm.lifetime.start.p0(ptr nonnull %110) #32
  invoke void @_ZN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEEvE9from_cborIRKSC_EESD_OT_bbNS0_6detail18cbor_tag_handler_tE(ptr dead_on_unwind nonnull writable sret(%"class.nlohmann::json_abi_v3_12_0::basic_json") align 8 %110, ptr noundef nonnull align 8 dereferenceable(24) %91, i1 noundef zeroext true, i1 noundef zeroext true, i32 noundef 0)
          to label %bb.ka unwind label %bb.lp

bb.ka:                                            ; preds = %bb.jz
  call void @llvm.experimental.noalias.scope.decl(metadata !901)
  %i.si = load i32, ptr %109, align 4, !tbaa !94, !noalias !901
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(20) %108, ptr noundef nonnull align 8 dereferenceable(16) %110, i64 16, i1 false), !tbaa.struct !117
  store i8 0, ptr %110, align 8, !tbaa !113, !noalias !901
  store ptr null, ptr %i.pa, align 8, !tbaa !105, !noalias !901
  store i32 %i.si, ptr %i.pb, align 8, !tbaa !119, !alias.scope !901
  invoke void @_ZN7doctest6detail14Expression_lhsIN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS3_14adl_serializerES6_IhSaIhEEvEEEeqIRKSG_EEDTcmcvveqclL_ZNS0_7declvalISG_EEOT_vEEclsr7doctest6detailE7declvalISM_EEtlNS0_6ResultEEESN_(ptr dead_on_unwind nonnull writable sret(%"struct.doctest::detail::Result") align 8 %107, ptr noundef nonnull align 8 dereferenceable(20) %108, ptr noundef nonnull align 8 dereferenceable(16) %86)
          to label %bb.kb unwind label %bb.lq

bb.kb:                                            ; preds = %bb.ka
  %i.sj = invoke noundef zeroext i1 @_ZN7doctest6detail13decomp_assertENS_10assertType4EnumEPKciS4_RKNS0_6ResultE(i32 noundef 10, ptr noundef nonnull @.str.5, i32 noundef 233, ptr noundef nonnull @.str.30, ptr noundef nonnull align 8 dereferenceable(32) %107)
          to label %bb.kc unwind label %bb.lr     ; 0 uses

bb.kc:                                            ; preds = %bb.kb
  call void @_ZN7doctest6StringD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %i.pc) #32
  %i.sk = load i8, ptr %108, align 8, !tbaa !104
  invoke void @_ZN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEEvE10json_value7destroyENS0_6detail7value_tE(ptr noundef nonnull align 8 dereferenceable(8) %i.pd, i8 noundef zeroext %i.sk)
end_hunk_0
begin_hunk_1_@_ZL19DOCTEST_ANON_FUNC_7v:bb.a

bb.lz:                                            ; preds = %bb.ly, %bb.lx
  %.pn5054 = phi { ptr, i32 } [ %i.ue, %bb.ly ], [ %i.ud, %bb.lx ]
  call void @_ZN7doctest6detail14Expression_lhsIN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS3_14adl_serializerES6_IhSaIhEEvEEED2Ev(ptr noundef nonnull align 8 dead_on_return(20) dereferenceable(20) %112) #32
  call void @_ZN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEEvED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %114) #32
  br label %bb.ma

bb.ma:                                            ; preds = %bb.lz, %bb.lw
  %.pn5054.pn.pn = phi { ptr, i32 } [ %.pn5054, %bb.lz ], [ %i.uc, %bb.lw ]
  call void @llvm.lifetime.end.p0(ptr nonnull %114) #32
  br label %bb.mb

bb.mb:                                            ; preds = %bb.ma, %bb.lv
  %.pn5054.pn.pn.pn = phi { ptr, i32 } [ %.pn5054.pn.pn, %bb.ma ], [ %i.ub, %bb.lv ]
  call void @llvm.lifetime.end.p0(ptr nonnull %113) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %112) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %111) #32
  br label %bb.mc

bb.mc:                                            ; preds = %bb.mb, %bb.lu, %bb.ln, %bb.lk
  %.pn5054.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn5054.pn.pn.pn, %bb.mb ], [ %.pn5049.pn.pn.pn, %bb.lu ], [ %.pn5046.pn, %bb.ln ], [ %.pn5044, %bb.lk ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s) #32
  br label %bb.md

bb.md:                                            ; preds = %bb.mc, %bb.lh, %bb.lc, %bb.kx
  %.pn5054.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn5054.pn.pn.pn.pn, %bb.mc ], [ %.pn5041.pn, %bb.lh ], [ %.pn5037.pn.pn, %bb.lc ], [ %.pn5035, %bb.kx ] ; 2 uses
  %i.uf = load ptr, ptr %91, align 8, !tbaa !110  ; 2 uses
  %.not.i.i.i5244 = icmp eq ptr %i.uf, null
  br i1 %.not.i.i.i5244, label %_ZNSt6vectorIhSaIhEED2Ev.exit5246, label %bb.me

bb.me:                                            ; preds = %bb.md
  call void @_ZdlPv(ptr noundef nonnull %i.uf) #34
  br label %_ZNSt6vectorIhSaIhEED2Ev.exit5246

_ZNSt6vectorIhSaIhEED2Ev.exit5246:                ; preds = %bb.me, %bb.md, %bb.ku
  %.pn5054.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %i.tk, %bb.ku ], [ %.pn5054.pn.pn.pn.pn.pn, %bb.md ], [ %.pn5054.pn.pn.pn.pn.pn, %bb.me ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %91) #32
  %i.ug = load ptr, ptr %90, align 8, !tbaa !110  ; 2 uses
  %.not.i.i.i5247 = icmp eq ptr %i.ug, null
  br i1 %.not.i.i.i5247, label %.body5220, label %bb.mf

bb.mf:                                            ; preds = %_ZNSt6vectorIhSaIhEED2Ev.exit5246
  call void @_ZdlPv(ptr noundef nonnull %i.ug) #34
  br label %.body5220

.body5220:                                        ; preds = %bb.mf, %_ZNSt6vectorIhSaIhEED2Ev.exit5246, %_ZNSt12_Vector_baseIhSaIhEED2Ev.exit.i5219
  %.pn5054.pn.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %i.qb, %_ZNSt12_Vector_baseIhSaIhEED2Ev.exit.i5219 ], [ %.pn5054.pn.pn.pn.pn.pn.pn, %bb.mf ], [ %.pn5054.pn.pn.pn.pn.pn.pn, %_ZNSt6vectorIhSaIhEED2Ev.exit5246 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %90) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p) #32
  br label %bb.mg

bb.mg:                                            ; preds = %.body5220, %bb.kt
  %.pn5054.pn.pn.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn5054.pn.pn.pn.pn.pn.pn.pn, %.body5220 ], [ %.pn5032.pn, %bb.kt ]
  call void @_ZN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEEvED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %86) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %86) #32
  call void @"_ZN7doctest6detail12ContextScopeIZL19DOCTEST_ANON_FUNC_7vE3$_1ED2Ev"(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %85) #32
  br label %_ZNSt6vectorIlSaIlEED2Ev.exit5251

_ZNSt6vectorIlSaIlEED2Ev.exit5251:                ; preds = %bb.mg, %bb.kq
  %.pn5054.pn.pn.pn.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn5054.pn.pn.pn.pn.pn.pn.pn.pn, %bb.mg ], [ %i.th, %bb.kq ]
  call void @llvm.lifetime.end.p0(ptr nonnull %85) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o) #32
  call void @_ZdlPv(ptr noundef nonnull %i.on) #34
  br label %bb.mn

bb.mh:                                            ; preds = %_ZNSt6vectorIlSaIlEED2Ev.exit, %bb.in
  call void @_ZN7doctest6detail7SubcaseD1Ev(ptr noundef nonnull align 8 dead_on_return(41) dereferenceable(41) %83) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %83) #32
  call void @llvm.lifetime.start.p0(ptr nonnull %115) #32
  call void @llvm.lifetime.start.p0(ptr nonnull %116) #32
  invoke void @_ZN7doctest6StringC1EPKc(ptr noundef nonnull align 8 dereferenceable(24) %116, ptr noundef nonnull @.str.43)
          to label %bb.mi unwind label %bb.mo

bb.mi:                                            ; preds = %bb.mh
  invoke void @_ZN7doctest6detail7SubcaseC1ERKNS_6StringEPKci(ptr noundef nonnull align 8 dereferenceable(41) %115, ptr noundef nonnull align 8 dereferenceable(24) %116, ptr noundef nonnull @.str.5, i32 noundef 238)
          to label %bb.mj unwind label %bb.mp

bb.mj:                                            ; preds = %bb.mi
  call void @_ZN7doctest6StringD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %116) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %116) #32
  %i.uh = invoke noundef zeroext i1 @_ZNK7doctest6detail7SubcasecvbEv(ptr noundef nonnull align 8 dereferenceable(41) %115)
          to label %bb.mk unwind label %bb.mr

bb.mk:                                            ; preds = %bb.mj
  br i1 %i.uh, label %bb.ml, label %bb.pw

bb.ml:                                            ; preds = %bb.mk
  %i.ui = invoke noalias noundef nonnull dereferenceable(56) ptr @_Znwm(i64 noundef 56) #35
          to label %bb.mm unwind label %bb.mr     ; 4 uses

bb.mm:                                            ; preds = %bb.ml
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.ui, ptr noundef nonnull align 8 dereferenceable(56) @constinit.44, i64 56, i1 false)
  %i.uj = ptrtoint ptr %i.t to i64
  %i.uk = getelementptr inbounds nuw i8, ptr %117, i64 16
  %i.ul = getelementptr inbounds nuw i8, ptr %118, i64 8 ; 2 uses
  %i.um = getelementptr inbounds nuw i8, ptr %119, i64 8 ; 2 uses
  %i.un = getelementptr inbounds nuw i8, ptr %122, i64 16
  %i.uo = getelementptr inbounds nuw i8, ptr %122, i64 8
  %.sroa.2962.0..sroa_idx = getelementptr inbounds nuw i8, ptr %125, i64 8
  %i.up = getelementptr inbounds nuw i8, ptr %124, i64 8 ; 2 uses
  %i.uq = getelementptr inbounds nuw i8, ptr %123, i64 8
  %.sroa.2958.0..sroa_idx = getelementptr inbounds nuw i8, ptr %128, i64 8
  %i.ur = getelementptr inbounds nuw i8, ptr %127, i64 8 ; 2 uses
  %.sroa.2954.0..sroa_idx = getelementptr inbounds nuw i8, ptr %131, i64 8
  %i.us = getelementptr inbounds nuw i8, ptr %130, i64 8 ; 2 uses
  %.sroa.2950.0..sroa_idx = getelementptr inbounds nuw i8, ptr %134, i64 8
  %i.ut = getelementptr inbounds nuw i8, ptr %133, i64 8 ; 2 uses
  %.sroa.2946.0..sroa_idx = getelementptr inbounds nuw i8, ptr %137, i64 8
  %i.uu = getelementptr inbounds nuw i8, ptr %136, i64 8 ; 2 uses
  %i.uv = getelementptr inbounds nuw i8, ptr %142, i64 8 ; 2 uses
  %i.uw = getelementptr inbounds nuw i8, ptr %140, i64 16
  %i.ux = getelementptr inbounds nuw i8, ptr %139, i64 8 ; 2 uses
  %i.uy = getelementptr inbounds nuw i8, ptr %140, i64 8
  %i.uz = getelementptr inbounds nuw i8, ptr %146, i64 8 ; 2 uses
  %i.va = getelementptr inbounds nuw i8, ptr %144, i64 16
  %i.vb = getelementptr inbounds nuw i8, ptr %143, i64 8 ; 2 uses
  %i.vc = getelementptr inbounds nuw i8, ptr %144, i64 8
  %i.vd = getelementptr inbounds nuw i8, ptr %117, i64 8
  br label %bb.ms

_ZNSt6vectorIlSaIlEED2Ev.exit5254:                ; preds = %"_ZN7doctest6detail12ContextScopeIZL19DOCTEST_ANON_FUNC_7vE3$_2ED2Ev.exit"
  call void @_ZdlPv(ptr noundef nonnull %i.ui) #34
  br label %bb.pw

bb.mn:                                            ; preds = %bb.jc, %_ZNSt6vectorIlSaIlEED2Ev.exit5251
  %.pn5054.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %i.pr, %bb.jc ], [ %.pn5054.pn.pn.pn.pn.pn.pn.pn.pn.pn, %_ZNSt6vectorIlSaIlEED2Ev.exit5251 ]
  call void @_ZN7doctest6detail7SubcaseD1Ev(ptr noundef nonnull align 8 dead_on_return(41) dereferenceable(41) %83) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %83) #32
  br label %bb.awg

bb.mo:                                            ; preds = %bb.mh
  %i.ve = landingpad { ptr, i32 }
          cleanup
  br label %bb.mq

bb.mp:                                            ; preds = %bb.mi
  %i.vf = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7doctest6StringD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %116) #32
  br label %bb.mq

bb.mq:                                            ; preds = %bb.mp, %bb.mo
  %.pn2917 = phi { ptr, i32 } [ %i.vf, %bb.mp ], [ %i.ve, %bb.mo ]
  call void @llvm.lifetime.end.p0(ptr nonnull %116) #32
  br label %bb.awg

bb.mr:                                            ; preds = %bb.mj, %bb.ml
  %i.vg = landingpad { ptr, i32 }
          cleanup
  br label %bb.qc

bb.ms:                                            ; preds = %bb.mm, %"_ZN7doctest6detail12ContextScopeIZL19DOCTEST_ANON_FUNC_7vE3$_2ED2Ev.exit"
  %.sroa.09347.0.idx9799 = phi i64 [ 0, %bb.mm ], [ %.sroa.09347.0.add, %"_ZN7doctest6detail12ContextScopeIZL19DOCTEST_ANON_FUNC_7vE3$_2ED2Ev.exit" ] ; 2 uses
  %.sroa.09347.0.ptr = getelementptr inbounds nuw i8, ptr %i.ui, i64 %.sroa.09347.0.idx9799
  call void @llvm.lifetime.start.p0(ptr nonnull %i.t) #32
  %i.vh = load i64, ptr %.sroa.09347.0.ptr, align 8, !tbaa !121
  store i64 %i.vh, ptr %i.t, align 8, !tbaa !121
  call void @llvm.lifetime.start.p0(ptr nonnull %117) #32
  invoke void @_ZN7doctest6detail16ContextScopeBaseC2Ev(ptr noundef nonnull align 8 dereferenceable(24) %117)
          to label %bb.mt unwind label %bb.of

bb.mt:                                            ; preds = %bb.ms
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @"_ZTVN7doctest6detail12ContextScopeIZL19DOCTEST_ANON_FUNC_7vE3$_2EE", i64 16), ptr %117, align 8, !tbaa !91, !alias.scope !903
  store i64 %i.uj, ptr %i.uk, align 8, !tbaa !123, !alias.scope !903
  call void @llvm.lifetime.start.p0(ptr nonnull %118) #32
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %118, i8 0, i64 16, i1 false)
  %i.vi = load i64, ptr %i.t, align 8, !tbaa !121
  store i8 5, ptr %118, align 8, !tbaa !113
  store i64 %i.vi, ptr %i.ul, align 8, !tbaa !105
  call void @llvm.lifetime.start.p0(ptr nonnull %119) #32
  call void @llvm.lifetime.start.p0(ptr nonnull %120) #32
  call void @llvm.lifetime.start.p0(ptr nonnull %121) #32
  invoke void @_ZN7doctest6detail20ExpressionDecomposerC1ENS_10assertType4EnumE(ptr noundef nonnull align 4 dereferenceable(4) %121, i32 noundef 10)
          to label %bb.mu unwind label %bb.og

bb.mu:                                            ; preds = %bb.mt
  %i.vj = load i8, ptr %118, align 8, !tbaa !113
  %i.vk = add i8 %i.vj, -5
  %spec.select.i5255 = icmp ult i8 %i.vk, 2
  %i.vl = load i32, ptr %121, align 4, !tbaa !94
  %.sroa.22.0.insert.ext.i5256 = zext i32 %i.vl to i64
  %.sroa.22.0.insert.shift.i5257 = shl nuw i64 %.sroa.22.0.insert.ext.i5256, 32
  %.sroa.0.0.insert.ext.i5258 = zext i1 %spec.select.i5255 to i64
  %.sroa.0.0.insert.insert.i5259 = or disjoint i64 %.sroa.22.0.insert.shift.i5257, %.sroa.0.0.insert.ext.i5258
  store i64 %.sroa.0.0.insert.insert.i5259, ptr %120, align 8
  invoke void @_ZN7doctest6detail14Expression_lhsIbEcvNS0_6ResultEEv(ptr dead_on_unwind nonnull writable sret(%"struct.doctest::detail::Result") align 8 %119, ptr noundef nonnull align 4 dereferenceable(8) %120)
          to label %bb.mv unwind label %bb.og

bb.mv:                                            ; preds = %bb.mu
  %i.vm = invoke noundef zeroext i1 @_ZN7doctest6detail13decomp_assertENS_10assertType4EnumEPKciS4_RKNS0_6ResultE(i32 noundef 10, ptr noundef nonnull @.str.5, i32 noundef 258, ptr noundef nonnull @.str.38, ptr noundef nonnull align 8 dereferenceable(32) %119)
          to label %bb.mw unwind label %bb.oh     ; 0 uses

bb.mw:                                            ; preds = %bb.mv
  call void @_ZN7doctest6StringD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %i.um) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %121) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %120) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %119) #32
  call void @llvm.lifetime.start.p0(ptr nonnull %i.u) #32
  %i.vn = load i64, ptr %i.t, align 8, !tbaa !121
  %i.vo = trunc i64 %i.vn to i32
  %i.vp = xor i32 %i.vo, -1                       ; 2 uses
  store i32 %i.vp, ptr %i.u, align 4, !tbaa !124
  call void @llvm.lifetime.start.p0(ptr nonnull %122) #32
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %122, i8 0, i64 24, i1 false)
  %i.vq = invoke noalias noundef nonnull dereferenceable(5) ptr @_Znwm(i64 noundef 5) #35
          to label %bb.mx unwind label %_ZNSt12_Vector_baseIhSaIhEED2Ev.exit.i5261 ; 4 uses

_ZNSt12_Vector_baseIhSaIhEED2Ev.exit.i5261:       ; preds = %bb.mw
  %i.vr = landingpad { ptr, i32 }
          cleanup
  br label %.body5262

bb.mx:                                            ; preds = %bb.mw
  store ptr %i.vq, ptr %122, align 8, !tbaa !110
  %i.vs = getelementptr inbounds nuw i8, ptr %i.vq, i64 5 ; 2 uses
  store ptr %i.vs, ptr %i.un, align 8, !tbaa !114
  store i8 58, ptr %i.vq, align 1
  %.sroa.59340.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.vq, i64 1
  %1718 = call i32 @llvm.bswap.i32(i32 %i.vp)
  store i32 %1718, ptr %.sroa.59340.0..sroa_idx, align 1
  store ptr %i.vs, ptr %i.uo, align 8, !tbaa !115
  call void @llvm.lifetime.start.p0(ptr nonnull %123) #32
  invoke void @_ZN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEEvE7to_cborERKSD_(ptr dead_on_unwind nonnull writable sret(%"class.std::vector") align 8 %123, ptr noundef nonnull align 8 dereferenceable(16) %118)
          to label %bb.my unwind label %bb.oj

bb.my:                                            ; preds = %bb.mx
  call void @llvm.lifetime.start.p0(ptr nonnull %124) #32
  call void @llvm.lifetime.start.p0(ptr nonnull %125) #32
  call void @llvm.lifetime.start.p0(ptr nonnull %126) #32
  invoke void @_ZN7doctest6detail20ExpressionDecomposerC1ENS_10assertType4EnumE(ptr noundef nonnull align 4 dereferenceable(4) %126, i32 noundef 10)
          to label %bb.mz unwind label %bb.ok

bb.mz:                                            ; preds = %bb.my
  %i.vt = load i32, ptr %126, align 4, !tbaa !94
  store ptr %123, ptr %125, align 8
  store i32 %i.vt, ptr %.sroa.2962.0..sroa_idx, align 8
  invoke void @_ZN7doctest6detail14Expression_lhsIRKSt6vectorIhSaIhEEEeqIS6_EEDTcmcvveqclL_ZNS0_7declvalIS6_EEOT_vEEclsr7doctest6detailE7declvalISA_EEtlNS0_6ResultEEESB_(ptr dead_on_unwind nonnull writable sret(%"struct.doctest::detail::Result") align 8 %124, ptr noundef nonnull align 8 dereferenceable(12) %125, ptr noundef nonnull align 8 dereferenceable(24) %122)
          to label %bb.na unwind label %bb.ok

bb.na:                                            ; preds = %bb.mz
  %i.vu = invoke noundef zeroext i1 @_ZN7doctest6detail13decomp_assertENS_10assertType4EnumEPKciS4_RKNS0_6ResultE(i32 noundef 10, ptr noundef nonnull @.str.5, i32 noundef 273, ptr noundef nonnull @.str.27, ptr noundef nonnull align 8 dereferenceable(32) %124)
          to label %bb.nb unwind label %bb.ol     ; 0 uses

bb.nb:                                            ; preds = %bb.na
  call void @_ZN7doctest6StringD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %i.up) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %126) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %125) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %124) #32
  call void @llvm.lifetime.start.p0(ptr nonnull %127) #32
  call void @llvm.lifetime.start.p0(ptr nonnull %128) #32
  call void @llvm.lifetime.start.p0(ptr nonnull %129) #32
  invoke void @_ZN7doctest6detail20ExpressionDecomposerC1ENS_10assertType4EnumE(ptr noundef nonnull align 4 dereferenceable(4) %129, i32 noundef 10)
          to label %bb.nc unwind label %bb.on

bb.nc:                                            ; preds = %bb.nb
  %i.vv = load ptr, ptr %i.uq, align 8, !tbaa !115
  %i.vw = load ptr, ptr %123, align 8, !tbaa !110
  %i.vx = ptrtoint ptr %i.vv to i64
  %i.vy = ptrtoint ptr %i.vw to i64
  %i.vz = sub i64 %i.vx, %i.vy
  %i.wa = load i32, ptr %129, align 4, !tbaa !94
  store i64 %i.vz, ptr %128, align 8
  store i32 %i.wa, ptr %.sroa.2958.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.v) #32
  store i32 5, ptr %i.v, align 4, !tbaa !124
  invoke void @_ZN7doctest6detail14Expression_lhsImEeqIiEEDTcmcvveqclL_ZNS0_7declvalImEEOT_vEEclsr7doctest6detailE7declvalIS5_EEtlNS0_6ResultEEES6_(ptr dead_on_unwind nonnull writable sret(%"struct.doctest::detail::Result") align 8 %127, ptr noundef nonnull align 8 dereferenceable(12) %128, ptr noundef nonnull align 4 dereferenceable(4) %i.v)
          to label %bb.nd unwind label %bb.oo

bb.nd:                                            ; preds = %bb.nc
  %i.wb = invoke noundef zeroext i1 @_ZN7doctest6detail13decomp_assertENS_10assertType4EnumEPKciS4_RKNS0_6ResultE(i32 noundef 10, ptr noundef nonnull @.str.5, i32 noundef 274, ptr noundef nonnull @.str.45, ptr noundef nonnull align 8 dereferenceable(32) %127)
          to label %bb.ne unwind label %bb.op     ; 0 uses

bb.ne:                                            ; preds = %bb.nd
  call void @_ZN7doctest6StringD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %i.ur) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %i.v) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %129) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %128) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %127) #32
  call void @llvm.lifetime.start.p0(ptr nonnull %130) #32
  call void @llvm.lifetime.start.p0(ptr nonnull %131) #32
  call void @llvm.lifetime.start.p0(ptr nonnull %132) #32
  invoke void @_ZN7doctest6detail20ExpressionDecomposerC1ENS_10assertType4EnumE(ptr noundef nonnull align 4 dereferenceable(4) %132, i32 noundef 10)
          to label %bb.nf unwind label %bb.os

bb.nf:                                            ; preds = %bb.ne
  %i.wc = load ptr, ptr %123, align 8, !tbaa !110
  %i.wd = load i32, ptr %132, align 4, !tbaa !94
  store ptr %i.wc, ptr %131, align 8
  store i32 %i.wd, ptr %.sroa.2954.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.w) #32
  store i32 58, ptr %i.w, align 4, !tbaa !124
  invoke void @_ZN7doctest6detail14Expression_lhsIRKhEeqIiEEDTcmcvveqclL_ZNS0_7declvalIS3_EEOT_vEEclsr7doctest6detailE7declvalIS7_EEtlNS0_6ResultEEES8_(ptr dead_on_unwind nonnull writable sret(%"struct.doctest::detail::Result") align 8 %130, ptr noundef nonnull align 8 dereferenceable(12) %131, ptr noundef nonnull align 4 dereferenceable(4) %i.w)
          to label %bb.ng unwind label %bb.ot

bb.ng:                                            ; preds = %bb.nf
  %i.we = invoke noundef zeroext i1 @_ZN7doctest6detail13decomp_assertENS_10assertType4EnumEPKciS4_RKNS0_6ResultE(i32 noundef 10, ptr noundef nonnull @.str.5, i32 noundef 277, ptr noundef nonnull @.str.46, ptr noundef nonnull align 8 dereferenceable(32) %130)
          to label %bb.nh unwind label %bb.ou     ; 0 uses

bb.nh:                                            ; preds = %bb.ng
  call void @_ZN7doctest6StringD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %i.us) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %i.w) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %132) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %131) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %130) #32
  call void @llvm.lifetime.start.p0(ptr nonnull %i.x) #32
  %i.wf = load ptr, ptr %123, align 8, !tbaa !110
  %i.wg = getelementptr inbounds nuw i8, ptr %i.wf, i64 1
  %i.wh = load i32, ptr %i.wg, align 1
  %i.wi = call i32 @llvm.bswap.i32(i32 %i.wh)
  store i32 %i.wi, ptr %i.x, align 4, !tbaa !124
  call void @llvm.lifetime.start.p0(ptr nonnull %133) #32
  call void @llvm.lifetime.start.p0(ptr nonnull %134) #32
  call void @llvm.lifetime.start.p0(ptr nonnull %135) #32
  invoke void @_ZN7doctest6detail20ExpressionDecomposerC1ENS_10assertType4EnumE(ptr noundef nonnull align 4 dereferenceable(4) %135, i32 noundef 10)
          to label %bb.ni unwind label %bb.ox

bb.ni:                                            ; preds = %bb.nh
  %i.wj = load i32, ptr %135, align 4, !tbaa !94
  store ptr %i.x, ptr %134, align 8
  store i32 %i.wj, ptr %.sroa.2950.0..sroa_idx, align 8
  invoke void @_ZN7doctest6detail14Expression_lhsIRKjEeqIRjEEDTcmcvveqclL_ZNS0_7declvalIS3_EEOT_vEEclsr7doctest6detailE7declvalIS8_EEtlNS0_6ResultEEES9_(ptr dead_on_unwind nonnull writable sret(%"struct.doctest::detail::Result") align 8 %133, ptr noundef nonnull align 8 dereferenceable(12) %134, ptr noundef nonnull align 4 dereferenceable(4) %i.u)
          to label %bb.nj unwind label %bb.ox

bb.nj:                                            ; preds = %bb.ni
  %i.wk = invoke noundef zeroext i1 @_ZN7doctest6detail13decomp_assertENS_10assertType4EnumEPKciS4_RKNS0_6ResultE(i32 noundef 10, ptr noundef nonnull @.str.5, i32 noundef 282, ptr noundef nonnull @.str.41, ptr noundef nonnull align 8 dereferenceable(32) %133)
          to label %bb.nk unwind label %bb.oy     ; 0 uses

bb.nk:                                            ; preds = %bb.nj
  call void @_ZN7doctest6StringD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %i.ut) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %135) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %134) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %133) #32
  call void @llvm.lifetime.start.p0(ptr nonnull %136) #32
  call void @llvm.lifetime.start.p0(ptr nonnull %137) #32
  call void @llvm.lifetime.start.p0(ptr nonnull %138) #32
  invoke void @_ZN7doctest6detail20ExpressionDecomposerC1ENS_10assertType4EnumE(ptr noundef nonnull align 4 dereferenceable(4) %138, i32 noundef 10)
          to label %bb.nl unwind label %bb.pa

bb.nl:                                            ; preds = %bb.nk
  %i.wl = load i32, ptr %i.x, align 4, !tbaa !124
  %i.wm = zext i32 %i.wl to i64
  %i.wn = xor i64 %i.wm, -1
  %i.wo = load i32, ptr %138, align 4, !tbaa !94
  store i64 %i.wn, ptr %137, align 8
  store i32 %i.wo, ptr %.sroa.2946.0..sroa_idx, align 8
  invoke void @_ZN7doctest6detail14Expression_lhsIxEeqIRKlEEDTcmcvveqclL_ZNS0_7declvalIxEEOT_vEEclsr7doctest6detailE7declvalIS7_EEtlNS0_6ResultEEES8_(ptr dead_on_unwind nonnull writable sret(%"struct.doctest::detail::Result") align 8 %136, ptr noundef nonnull align 8 dereferenceable(12) %137, ptr noundef nonnull align 8 dereferenceable(8) %i.t)
          to label %bb.nm unwind label %bb.pa

bb.nm:                                            ; preds = %bb.nl
  %i.wp = invoke noundef zeroext i1 @_ZN7doctest6detail13decomp_assertENS_10assertType4EnumEPKciS4_RKNS0_6ResultE(i32 noundef 10, ptr noundef nonnull @.str.5, i32 noundef 283, ptr noundef nonnull @.str.47, ptr noundef nonnull align 8 dereferenceable(32) %136)
          to label %bb.nn unwind label %bb.pb     ; 0 uses

bb.nn:                                            ; preds = %bb.nm
  call void @_ZN7doctest6StringD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %i.uu) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %138) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %137) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %136) #32
  call void @llvm.lifetime.start.p0(ptr nonnull %139) #32
  call void @llvm.lifetime.start.p0(ptr nonnull %140) #32
  call void @llvm.lifetime.start.p0(ptr nonnull %141) #32
  invoke void @_ZN7doctest6detail20ExpressionDecomposerC1ENS_10assertType4EnumE(ptr noundef nonnull align 4 dereferenceable(4) %141, i32 noundef 10)
          to label %bb.no unwind label %bb.pd

bb.no:                                            ; preds = %bb.nn
  call void @llvm.lifetime.start.p0(ptr nonnull %142) #32
  invoke void @_ZN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEEvE9from_cborIRKSC_EESD_OT_bbNS0_6detail18cbor_tag_handler_tE(ptr dead_on_unwind nonnull writable sret(%"class.nlohmann::json_abi_v3_12_0::basic_json") align 8 %142, ptr noundef nonnull align 8 dereferenceable(24) %123, i1 noundef zeroext true, i1 noundef zeroext true, i32 noundef 0)
          to label %bb.np unwind label %bb.pe

bb.np:                                            ; preds = %bb.no
  call void @llvm.experimental.noalias.scope.decl(metadata !904)
  %i.wq = load i32, ptr %141, align 4, !tbaa !94, !noalias !904
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(20) %140, ptr noundef nonnull align 8 dereferenceable(16) %142, i64 16, i1 false), !tbaa.struct !117
  store i8 0, ptr %142, align 8, !tbaa !113, !noalias !904
  store ptr null, ptr %i.uv, align 8, !tbaa !105, !noalias !904
  store i32 %i.wq, ptr %i.uw, align 8, !tbaa !119, !alias.scope !904
  invoke void @_ZN7doctest6detail14Expression_lhsIN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS3_14adl_serializerES6_IhSaIhEEvEEEeqIRKSG_EEDTcmcvveqclL_ZNS0_7declvalISG_EEOT_vEEclsr7doctest6detailE7declvalISM_EEtlNS0_6ResultEEESN_(ptr dead_on_unwind nonnull writable sret(%"struct.doctest::detail::Result") align 8 %139, ptr noundef nonnull align 8 dereferenceable(20) %140, ptr noundef nonnull align 8 dereferenceable(16) %118)
          to label %bb.nq unwind label %bb.pf

bb.nq:                                            ; preds = %bb.np
  %i.wr = invoke noundef zeroext i1 @_ZN7doctest6detail13decomp_assertENS_10assertType4EnumEPKciS4_RKNS0_6ResultE(i32 noundef 10, ptr noundef nonnull @.str.5, i32 noundef 286, ptr noundef nonnull @.str.30, ptr noundef nonnull align 8 dereferenceable(32) %139)
          to label %bb.nr unwind label %bb.pg     ; 0 uses

bb.nr:                                            ; preds = %bb.nq
  call void @_ZN7doctest6StringD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %i.ux) #32
  %i.ws = load i8, ptr %140, align 8, !tbaa !104
  invoke void @_ZN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEEvE10json_value7destroyENS0_6detail7value_tE(ptr noundef nonnull align 8 dereferenceable(8) %i.uy, i8 noundef zeroext %i.ws)
          to label %_ZN7doctest6detail14Expression_lhsIN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS3_14adl_serializerES6_IhSaIhEEvEEED2Ev.exit5275 unwind label %bb.ns, !inline_history !111

bb.ns:                                            ; preds = %bb.nr
  %i.wt = landingpad { ptr, i32 }
          catch ptr null
  %i.wu = extractvalue { ptr, i32 } %i.wt, 0
  call void @__clang_call_terminate(ptr %i.wu) #33, !inline_history !111
  unreachable

_ZN7doctest6detail14Expression_lhsIN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS3_14adl_serializerES6_IhSaIhEEvEEED2Ev.exit5275: ; preds = %bb.nr
  %i.wv = load i8, ptr %142, align 8, !tbaa !104
  invoke void @_ZN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEEvE10json_value7destroyENS0_6detail7value_tE(ptr noundef nonnull align 8 dereferenceable(8) %i.uv, i8 noundef zeroext %i.wv)
          to label %_ZN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEEvED2Ev.exit5276 unwind label %bb.nt, !inline_history !111

bb.nt:                                            ; preds = %_ZN7doctest6detail14Expression_lhsIN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS3_14adl_serializerES6_IhSaIhEEvEEED2Ev.exit5275
  %i.ww = landingpad { ptr, i32 }
          catch ptr null
  %i.wx = extractvalue { ptr, i32 } %i.ww, 0
  call void @__clang_call_terminate(ptr %i.wx) #33, !inline_history !111
  unreachable

_ZN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEEvED2Ev.exit5276: ; preds = %_ZN7doctest6detail14Expression_lhsIN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS3_14adl_serializerES6_IhSaIhEEvEEED2Ev.exit5275
  call void @llvm.lifetime.end.p0(ptr nonnull %142) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %141) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %140) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %139) #32
  call void @llvm.lifetime.start.p0(ptr nonnull %143) #32
  call void @llvm.lifetime.start.p0(ptr nonnull %144) #32
  call void @llvm.lifetime.start.p0(ptr nonnull %145) #32
  invoke void @_ZN7doctest6detail20ExpressionDecomposerC1ENS_10assertType4EnumE(ptr noundef nonnull align 4 dereferenceable(4) %145, i32 noundef 10)
          to label %bb.nu unwind label %bb.pk

bb.nu:                                            ; preds = %_ZN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEEvED2Ev.exit5276
  call void @llvm.lifetime.start.p0(ptr nonnull %146) #32
end_hunk_1
begin_hunk_2_@_ZL19DOCTEST_ANON_FUNC_7v:bb.a
bb.als:                                           ; preds = %bb.alr, %bb.alq
  %.pn4828 = phi { ptr, i32 } [ %i.azz, %bb.alr ], [ %i.azy, %bb.alq ]
  call void @_ZN7doctest6detail14Expression_lhsIN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS3_14adl_serializerES6_IhSaIhEEvEEED2Ev(ptr noundef nonnull align 8 dead_on_return(20) dereferenceable(20) %334) #32
  call void @_ZN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEEvED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %336) #32
  br label %bb.alt

bb.alt:                                           ; preds = %bb.als, %bb.alp
  %.pn4828.pn.pn = phi { ptr, i32 } [ %.pn4828, %bb.als ], [ %i.azx, %bb.alp ]
  call void @llvm.lifetime.end.p0(ptr nonnull %336) #32
  br label %bb.alu

bb.alu:                                           ; preds = %bb.alt, %bb.alo
  %.pn4828.pn.pn.pn = phi { ptr, i32 } [ %.pn4828.pn.pn, %bb.alt ], [ %i.azw, %bb.alo ]
  call void @llvm.lifetime.end.p0(ptr nonnull %335) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %334) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %333) #32
  br label %bb.alv

bb.alv:                                           ; preds = %bb.alu, %bb.aln, %bb.alg
  %.pn4828.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn4828.pn.pn.pn, %bb.alu ], [ %.pn4823.pn.pn.pn, %bb.aln ], [ %.pn4821, %bb.alg ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.as) #32
  br label %bb.alw

bb.alw:                                           ; preds = %bb.alv, %bb.ald, %bb.aky, %bb.akt
  %.pn4828.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn4828.pn.pn.pn.pn, %bb.alv ], [ %.pn4818.pn, %bb.ald ], [ %.pn4814.pn.pn, %bb.aky ], [ %.pn4812, %bb.akt ] ; 2 uses
  %i.baa = load ptr, ptr %316, align 8, !tbaa !110 ; 2 uses
  %.not.i.i.i5528 = icmp eq ptr %i.baa, null
  br i1 %.not.i.i.i5528, label %_ZNSt6vectorIhSaIhEED2Ev.exit5530, label %bb.alx

bb.alx:                                           ; preds = %bb.alw
  call void @_ZdlPv(ptr noundef nonnull %i.baa) #34
  br label %_ZNSt6vectorIhSaIhEED2Ev.exit5530

_ZNSt6vectorIhSaIhEED2Ev.exit5530:                ; preds = %bb.alx, %bb.alw, %bb.akq
  %.pn4828.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %i.azh, %bb.akq ], [ %.pn4828.pn.pn.pn.pn.pn, %bb.alw ], [ %.pn4828.pn.pn.pn.pn.pn, %bb.alx ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %316) #32
  %i.bab = load ptr, ptr %315, align 8, !tbaa !110 ; 2 uses
  %.not.i.i.i5531 = icmp eq ptr %i.bab, null
  br i1 %.not.i.i.i5531, label %.body5506, label %bb.aly

bb.aly:                                           ; preds = %_ZNSt6vectorIhSaIhEED2Ev.exit5530
  call void @_ZdlPv(ptr noundef nonnull %i.bab) #34
  br label %.body5506

.body5506:                                        ; preds = %bb.aly, %_ZNSt6vectorIhSaIhEED2Ev.exit5530, %_ZNSt12_Vector_baseIhSaIhEED2Ev.exit.i5505
  %.pn4828.pn.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %i.awz, %_ZNSt12_Vector_baseIhSaIhEED2Ev.exit.i5505 ], [ %.pn4828.pn.pn.pn.pn.pn.pn, %bb.aly ], [ %.pn4828.pn.pn.pn.pn.pn.pn, %_ZNSt6vectorIhSaIhEED2Ev.exit5530 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %315) #32
  br label %bb.alz

bb.alz:                                           ; preds = %.body5506, %bb.akp, %bb.akm
  %.pn4828.pn.pn.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn4828.pn.pn.pn.pn.pn.pn.pn, %.body5506 ], [ %.pn4809.pn, %bb.akp ], [ %i.aze, %bb.akm ]
  call void @_ZN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEEvED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %311) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %311) #32
  call void @"_ZN7doctest6detail12ContextScopeIZL19DOCTEST_ANON_FUNC_7vE3$_8ED2Ev"(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %310) #32
  br label %bb.ama

bb.ama:                                           ; preds = %bb.alz, %bb.akl
  %.pn4828.pn.pn.pn.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn4828.pn.pn.pn.pn.pn.pn.pn.pn, %bb.alz ], [ %i.azd, %bb.akl ]
  call void @llvm.lifetime.end.p0(ptr nonnull %310) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ap) #32
  br label %bb.amh

bb.amb:                                           ; preds = %bb.aiv, %bb.ait
  call void @_ZN7doctest6detail7SubcaseD1Ev(ptr noundef nonnull align 8 dead_on_return(41) dereferenceable(41) %308) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %308) #32
  call void @llvm.lifetime.start.p0(ptr nonnull %337) #32
  call void @llvm.lifetime.start.p0(ptr nonnull %338) #32
  invoke void @_ZN7doctest6StringC1EPKc(ptr noundef nonnull align 8 dereferenceable(24) %338, ptr noundef nonnull @.str.69)
          to label %bb.amc unwind label %bb.ami

bb.amc:                                           ; preds = %bb.amb
  invoke void @_ZN7doctest6detail7SubcaseC1ERKNS_6StringEPKci(ptr noundef nonnull align 8 dereferenceable(41) %337, ptr noundef nonnull align 8 dereferenceable(24) %338, ptr noundef nonnull @.str.5, i32 noundef 516)
          to label %bb.amd unwind label %bb.amj

bb.amd:                                           ; preds = %bb.amc
  call void @_ZN7doctest6StringD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %338) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %338) #32
  %i.bac = invoke noundef zeroext i1 @_ZNK7doctest6detail7SubcasecvbEv(ptr noundef nonnull align 8 dereferenceable(41) %337)
          to label %bb.ame unwind label %bb.aml

bb.ame:                                           ; preds = %bb.amd
  br i1 %i.bac, label %bb.amf, label %bb.apm

bb.amf:                                           ; preds = %bb.ame
  call void @llvm.lifetime.start.p0(ptr nonnull %i.at) #32
  store i32 65536, ptr %i.at, align 4, !tbaa !124
  %i.bad = getelementptr inbounds nuw i8, ptr %i.at, i64 4
  store i32 77777, ptr %i.bad, align 4, !tbaa !124
  %i.bae = getelementptr inbounds nuw i8, ptr %i.at, i64 8
  store i32 1048576, ptr %i.bae, align 4, !tbaa !124
  %i.baf = ptrtoint ptr %i.au to i64
  %i.bag = getelementptr inbounds nuw i8, ptr %339, i64 16
  %i.bah = getelementptr inbounds nuw i8, ptr %340, i64 8 ; 2 uses
  %i.bai = getelementptr inbounds nuw i8, ptr %341, i64 8 ; 2 uses
  %i.baj = getelementptr inbounds nuw i8, ptr %344, i64 16
  %i.bak = getelementptr inbounds nuw i8, ptr %344, i64 8
  %.sroa.2824.0..sroa_idx = getelementptr inbounds nuw i8, ptr %347, i64 8
  %i.bal = getelementptr inbounds nuw i8, ptr %346, i64 8 ; 2 uses
  %i.bam = getelementptr inbounds nuw i8, ptr %345, i64 8
  %.sroa.2820.0..sroa_idx = getelementptr inbounds nuw i8, ptr %350, i64 8
  %i.ban = getelementptr inbounds nuw i8, ptr %349, i64 8 ; 2 uses
  %.sroa.2816.0..sroa_idx = getelementptr inbounds nuw i8, ptr %353, i64 8
  %i.bao = getelementptr inbounds nuw i8, ptr %352, i64 8 ; 2 uses
  %.sroa.2812.0..sroa_idx = getelementptr inbounds nuw i8, ptr %356, i64 8
  %i.bap = getelementptr inbounds nuw i8, ptr %355, i64 8 ; 2 uses
  %i.baq = getelementptr inbounds nuw i8, ptr %361, i64 8 ; 2 uses
  %i.bar = getelementptr inbounds nuw i8, ptr %359, i64 16
  %i.bas = getelementptr inbounds nuw i8, ptr %358, i64 8 ; 2 uses
  %i.bat = getelementptr inbounds nuw i8, ptr %359, i64 8
  %i.bau = getelementptr inbounds nuw i8, ptr %365, i64 8 ; 2 uses
  %i.bav = getelementptr inbounds nuw i8, ptr %363, i64 16
  %i.baw = getelementptr inbounds nuw i8, ptr %362, i64 8 ; 2 uses
  %i.bax = getelementptr inbounds nuw i8, ptr %363, i64 8
  %i.bay = getelementptr inbounds nuw i8, ptr %339, i64 8
  br label %bb.amm

bb.amg:                                           ; preds = %"_ZN7doctest6detail12ContextScopeIZL19DOCTEST_ANON_FUNC_7vE3$_9ED2Ev.exit"
  call void @llvm.lifetime.end.p0(ptr nonnull %i.at) #32
  br label %bb.apm

bb.amh:                                           ; preds = %bb.ama, %bb.aja
  %.pn4828.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn4828.pn.pn.pn.pn.pn.pn.pn.pn.pn, %bb.ama ], [ %i.awq, %bb.aja ]
  call void @_ZN7doctest6detail7SubcaseD1Ev(ptr noundef nonnull align 8 dead_on_return(41) dereferenceable(41) %308) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %308) #32
  br label %bb.awg

bb.ami:                                           ; preds = %bb.amb
  %i.baz = landingpad { ptr, i32 }
          cleanup
  br label %bb.amk

bb.amj:                                           ; preds = %bb.amc
  %i.bba = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7doctest6StringD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %338) #32
  br label %bb.amk

bb.amk:                                           ; preds = %bb.amj, %bb.ami
  %.pn2959 = phi { ptr, i32 } [ %i.bba, %bb.amj ], [ %i.baz, %bb.ami ]
  call void @llvm.lifetime.end.p0(ptr nonnull %338) #32
  br label %bb.awg

bb.aml:                                           ; preds = %bb.amd
  %i.bbb = landingpad { ptr, i32 }
          cleanup
  br label %bb.aps

bb.amm:                                           ; preds = %bb.amf, %"_ZN7doctest6detail12ContextScopeIZL19DOCTEST_ANON_FUNC_7vE3$_9ED2Ev.exit"
  %.02806.idx9800 = phi i64 [ 0, %bb.amf ], [ %.02806.add, %"_ZN7doctest6detail12ContextScopeIZL19DOCTEST_ANON_FUNC_7vE3$_9ED2Ev.exit" ] ; 2 uses
  %.02806.ptr = getelementptr inbounds nuw i8, ptr %i.at, i64 %.02806.idx9800
  call void @llvm.lifetime.start.p0(ptr nonnull %i.au) #32
  %i.bbc = load i32, ptr %.02806.ptr, align 4, !tbaa !124
  store i32 %i.bbc, ptr %i.au, align 4, !tbaa !124
  call void @llvm.lifetime.start.p0(ptr nonnull %339) #32
  invoke void @_ZN7doctest6detail16ContextScopeBaseC2Ev(ptr noundef nonnull align 8 dereferenceable(24) %339)
          to label %bb.amn unwind label %bb.anw

bb.amn:                                           ; preds = %bb.amm
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @"_ZTVN7doctest6detail12ContextScopeIZL19DOCTEST_ANON_FUNC_7vE3$_9EE", i64 16), ptr %339, align 8, !tbaa !91, !alias.scope !926
  store i64 %i.baf, ptr %i.bag, align 8, !tbaa !128, !alias.scope !926
  call void @llvm.lifetime.start.p0(ptr nonnull %340) #32
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %340, i8 0, i64 16, i1 false)
  store i8 5, ptr %340, align 8, !tbaa !113
  store i64 -1, ptr %i.bah, align 8, !tbaa !105
  %i.bbd = load i32, ptr %i.au, align 4, !tbaa !124
  %i.bbe = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEEvE12get_ref_implIRlSD_EET_RT0_(ptr noundef nonnull align 8 dereferenceable(16) %340)
          to label %_ZN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEEvE7get_refIRlTnNSt9enable_ifIXsr3std12is_referenceIT_EE5valueEiE4typeELi0EEESH_v.exit5534 unwind label %bb.anx

_ZN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEEvE7get_refIRlTnNSt9enable_ifIXsr3std12is_referenceIT_EE5valueEiE4typeELi0EEESH_v.exit5534: ; preds = %bb.amn
  %i.bbf = zext i32 %i.bbd to i64
  store i64 %i.bbf, ptr %i.bbe, align 8, !tbaa !121
  call void @llvm.lifetime.start.p0(ptr nonnull %341) #32
  call void @llvm.lifetime.start.p0(ptr nonnull %342) #32
  call void @llvm.lifetime.start.p0(ptr nonnull %343) #32
  invoke void @_ZN7doctest6detail20ExpressionDecomposerC1ENS_10assertType4EnumE(ptr noundef nonnull align 4 dereferenceable(4) %343, i32 noundef 10)
          to label %bb.amo unwind label %bb.any

bb.amo:                                           ; preds = %_ZN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEEvE7get_refIRlTnNSt9enable_ifIXsr3std12is_referenceIT_EE5valueEiE4typeELi0EEESH_v.exit5534
  %i.bbg = load i8, ptr %340, align 8, !tbaa !113
  %i.bbh = add i8 %i.bbg, -5
  %spec.select.i5535 = icmp ult i8 %i.bbh, 2
  %i.bbi = load i32, ptr %343, align 4, !tbaa !94
  %.sroa.22.0.insert.ext.i5536 = zext i32 %i.bbi to i64
  %.sroa.22.0.insert.shift.i5537 = shl nuw i64 %.sroa.22.0.insert.ext.i5536, 32
  %.sroa.0.0.insert.ext.i5538 = zext i1 %spec.select.i5535 to i64
  %.sroa.0.0.insert.insert.i5539 = or disjoint i64 %.sroa.22.0.insert.shift.i5537, %.sroa.0.0.insert.ext.i5538
  store i64 %.sroa.0.0.insert.insert.i5539, ptr %342, align 8
  invoke void @_ZN7doctest6detail14Expression_lhsIbEcvNS0_6ResultEEv(ptr dead_on_unwind nonnull writable sret(%"struct.doctest::detail::Result") align 8 %341, ptr noundef nonnull align 4 dereferenceable(8) %342)
          to label %bb.amp unwind label %bb.any

bb.amp:                                           ; preds = %bb.amo
  %i.bbj = invoke noundef zeroext i1 @_ZN7doctest6detail13decomp_assertENS_10assertType4EnumEPKciS4_RKNS0_6ResultE(i32 noundef 10, ptr noundef nonnull @.str.5, i32 noundef 530, ptr noundef nonnull @.str.38, ptr noundef nonnull align 8 dereferenceable(32) %341)
          to label %bb.amq unwind label %bb.anz   ; 0 uses

bb.amq:                                           ; preds = %bb.amp
  call void @_ZN7doctest6StringD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %i.bai) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %343) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %342) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %341) #32
  call void @llvm.lifetime.start.p0(ptr nonnull %344) #32
  %i.bbk = load i32, ptr %i.au, align 4, !tbaa !124
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %344, i8 0, i64 24, i1 false)
  %i.bbl = invoke noalias noundef nonnull dereferenceable(5) ptr @_Znwm(i64 noundef 5) #35
          to label %bb.amr unwind label %_ZNSt12_Vector_baseIhSaIhEED2Ev.exit.i5541 ; 4 uses

_ZNSt12_Vector_baseIhSaIhEED2Ev.exit.i5541:       ; preds = %bb.amq
  %i.bbm = landingpad { ptr, i32 }
          cleanup
  br label %.body5542

bb.amr:                                           ; preds = %bb.amq
  store ptr %i.bbl, ptr %344, align 8, !tbaa !110
  %i.bbn = getelementptr inbounds nuw i8, ptr %i.bbl, i64 5 ; 2 uses
  store ptr %i.bbn, ptr %i.baj, align 8, !tbaa !114
  store i8 26, ptr %i.bbl, align 1
  %.sroa.59279.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bbl, i64 1
  %1719 = call i32 @llvm.bswap.i32(i32 %i.bbk)
  store i32 %1719, ptr %.sroa.59279.0..sroa_idx, align 1
  store ptr %i.bbn, ptr %i.bak, align 8, !tbaa !115
  call void @llvm.lifetime.start.p0(ptr nonnull %345) #32
  invoke void @_ZN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEEvE7to_cborERKSD_(ptr dead_on_unwind nonnull writable sret(%"class.std::vector") align 8 %345, ptr noundef nonnull align 8 dereferenceable(16) %340)
          to label %bb.ams unwind label %bb.aob

bb.ams:                                           ; preds = %bb.amr
  call void @llvm.lifetime.start.p0(ptr nonnull %346) #32
  call void @llvm.lifetime.start.p0(ptr nonnull %347) #32
  call void @llvm.lifetime.start.p0(ptr nonnull %348) #32
  invoke void @_ZN7doctest6detail20ExpressionDecomposerC1ENS_10assertType4EnumE(ptr noundef nonnull align 4 dereferenceable(4) %348, i32 noundef 10)
          to label %bb.amt unwind label %bb.aoc

bb.amt:                                           ; preds = %bb.ams
  %i.bbo = load i32, ptr %348, align 4, !tbaa !94
  store ptr %345, ptr %347, align 8
  store i32 %i.bbo, ptr %.sroa.2824.0..sroa_idx, align 8
  invoke void @_ZN7doctest6detail14Expression_lhsIRKSt6vectorIhSaIhEEEeqIS6_EEDTcmcvveqclL_ZNS0_7declvalIS6_EEOT_vEEclsr7doctest6detailE7declvalISA_EEtlNS0_6ResultEEESB_(ptr dead_on_unwind nonnull writable sret(%"struct.doctest::detail::Result") align 8 %346, ptr noundef nonnull align 8 dereferenceable(12) %347, ptr noundef nonnull align 8 dereferenceable(24) %344)
          to label %bb.amu unwind label %bb.aoc

bb.amu:                                           ; preds = %bb.amt
  %i.bbp = invoke noundef zeroext i1 @_ZN7doctest6detail13decomp_assertENS_10assertType4EnumEPKciS4_RKNS0_6ResultE(i32 noundef 10, ptr noundef nonnull @.str.5, i32 noundef 544, ptr noundef nonnull @.str.27, ptr noundef nonnull align 8 dereferenceable(32) %346)
          to label %bb.amv unwind label %bb.aod   ; 0 uses

bb.amv:                                           ; preds = %bb.amu
  call void @_ZN7doctest6StringD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %i.bal) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %348) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %347) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %346) #32
  call void @llvm.lifetime.start.p0(ptr nonnull %349) #32
  call void @llvm.lifetime.start.p0(ptr nonnull %350) #32
  call void @llvm.lifetime.start.p0(ptr nonnull %351) #32
  invoke void @_ZN7doctest6detail20ExpressionDecomposerC1ENS_10assertType4EnumE(ptr noundef nonnull align 4 dereferenceable(4) %351, i32 noundef 10)
          to label %bb.amw unwind label %bb.aof

bb.amw:                                           ; preds = %bb.amv
  %i.bbq = load ptr, ptr %i.bam, align 8, !tbaa !115
  %i.bbr = load ptr, ptr %345, align 8, !tbaa !110
  %i.bbs = ptrtoint ptr %i.bbq to i64
  %i.bbt = ptrtoint ptr %i.bbr to i64
  %i.bbu = sub i64 %i.bbs, %i.bbt
  %i.bbv = load i32, ptr %351, align 4, !tbaa !94
  store i64 %i.bbu, ptr %350, align 8
  store i32 %i.bbv, ptr %.sroa.2820.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.av) #32
  store i32 5, ptr %i.av, align 4, !tbaa !124
  invoke void @_ZN7doctest6detail14Expression_lhsImEeqIiEEDTcmcvveqclL_ZNS0_7declvalImEEOT_vEEclsr7doctest6detailE7declvalIS5_EEtlNS0_6ResultEEES6_(ptr dead_on_unwind nonnull writable sret(%"struct.doctest::detail::Result") align 8 %349, ptr noundef nonnull align 8 dereferenceable(12) %350, ptr noundef nonnull align 4 dereferenceable(4) %i.av)
          to label %bb.amx unwind label %bb.aog

bb.amx:                                           ; preds = %bb.amw
  %i.bbw = invoke noundef zeroext i1 @_ZN7doctest6detail13decomp_assertENS_10assertType4EnumEPKciS4_RKNS0_6ResultE(i32 noundef 10, ptr noundef nonnull @.str.5, i32 noundef 545, ptr noundef nonnull @.str.45, ptr noundef nonnull align 8 dereferenceable(32) %349)
          to label %bb.amy unwind label %bb.aoh   ; 0 uses

bb.amy:                                           ; preds = %bb.amx
  call void @_ZN7doctest6StringD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %i.ban) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %i.av) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %351) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %350) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %349) #32
  call void @llvm.lifetime.start.p0(ptr nonnull %352) #32
  call void @llvm.lifetime.start.p0(ptr nonnull %353) #32
  call void @llvm.lifetime.start.p0(ptr nonnull %354) #32
  invoke void @_ZN7doctest6detail20ExpressionDecomposerC1ENS_10assertType4EnumE(ptr noundef nonnull align 4 dereferenceable(4) %354, i32 noundef 10)
          to label %bb.amz unwind label %bb.aok

bb.amz:                                           ; preds = %bb.amy
  %i.bbx = load ptr, ptr %345, align 8, !tbaa !110
  %i.bby = load i32, ptr %354, align 4, !tbaa !94
  store ptr %i.bbx, ptr %353, align 8
  store i32 %i.bby, ptr %.sroa.2816.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aw) #32
  store i32 26, ptr %i.aw, align 4, !tbaa !124
  invoke void @_ZN7doctest6detail14Expression_lhsIRKhEeqIiEEDTcmcvveqclL_ZNS0_7declvalIS3_EEOT_vEEclsr7doctest6detailE7declvalIS7_EEtlNS0_6ResultEEES8_(ptr dead_on_unwind nonnull writable sret(%"struct.doctest::detail::Result") align 8 %352, ptr noundef nonnull align 8 dereferenceable(12) %353, ptr noundef nonnull align 4 dereferenceable(4) %i.aw)
          to label %bb.ana unwind label %bb.aol

bb.ana:                                           ; preds = %bb.amz
  %i.bbz = invoke noundef zeroext i1 @_ZN7doctest6detail13decomp_assertENS_10assertType4EnumEPKciS4_RKNS0_6ResultE(i32 noundef 10, ptr noundef nonnull @.str.5, i32 noundef 548, ptr noundef nonnull @.str.70, ptr noundef nonnull align 8 dereferenceable(32) %352)
          to label %bb.anb unwind label %bb.aom   ; 0 uses

bb.anb:                                           ; preds = %bb.ana
  call void @_ZN7doctest6StringD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %i.bao) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aw) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %354) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %353) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %352) #32
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ax) #32
  %i.bca = load ptr, ptr %345, align 8, !tbaa !110
  %i.bcb = getelementptr inbounds nuw i8, ptr %i.bca, i64 1
  %i.bcc = load i32, ptr %i.bcb, align 1
  %i.bcd = call i32 @llvm.bswap.i32(i32 %i.bcc)
  store i32 %i.bcd, ptr %i.ax, align 4, !tbaa !124
  call void @llvm.lifetime.start.p0(ptr nonnull %355) #32
  call void @llvm.lifetime.start.p0(ptr nonnull %356) #32
  call void @llvm.lifetime.start.p0(ptr nonnull %357) #32
  invoke void @_ZN7doctest6detail20ExpressionDecomposerC1ENS_10assertType4EnumE(ptr noundef nonnull align 4 dereferenceable(4) %357, i32 noundef 10)
          to label %bb.anc unwind label %bb.aop

bb.anc:                                           ; preds = %bb.anb
  %i.bce = load i32, ptr %357, align 4, !tbaa !94
  store ptr %i.ax, ptr %356, align 8
  store i32 %i.bce, ptr %.sroa.2812.0..sroa_idx, align 8
  invoke void @_ZN7doctest6detail14Expression_lhsIRKjEeqIS3_EEDTcmcvveqclL_ZNS0_7declvalIS3_EEOT_vEEclsr7doctest6detailE7declvalIS7_EEtlNS0_6ResultEEES8_(ptr dead_on_unwind nonnull writable sret(%"struct.doctest::detail::Result") align 8 %355, ptr noundef nonnull align 8 dereferenceable(12) %356, ptr noundef nonnull align 4 dereferenceable(4) %i.au)
          to label %bb.and unwind label %bb.aop

bb.and:                                           ; preds = %bb.anc
  %i.bcf = invoke noundef zeroext i1 @_ZN7doctest6detail13decomp_assertENS_10assertType4EnumEPKciS4_RKNS0_6ResultE(i32 noundef 10, ptr noundef nonnull @.str.5, i32 noundef 553, ptr noundef nonnull @.str.68, ptr noundef nonnull align 8 dereferenceable(32) %355)
          to label %bb.ane unwind label %bb.aoq   ; 0 uses

bb.ane:                                           ; preds = %bb.and
  call void @_ZN7doctest6StringD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %i.bap) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %357) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %356) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %355) #32
  call void @llvm.lifetime.start.p0(ptr nonnull %358) #32
  call void @llvm.lifetime.start.p0(ptr nonnull %359) #32
  call void @llvm.lifetime.start.p0(ptr nonnull %360) #32
  invoke void @_ZN7doctest6detail20ExpressionDecomposerC1ENS_10assertType4EnumE(ptr noundef nonnull align 4 dereferenceable(4) %360, i32 noundef 10)
          to label %bb.anf unwind label %bb.aos

bb.anf:                                           ; preds = %bb.ane
  call void @llvm.lifetime.start.p0(ptr nonnull %361) #32
  invoke void @_ZN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEEvE9from_cborIRKSC_EESD_OT_bbNS0_6detail18cbor_tag_handler_tE(ptr dead_on_unwind nonnull writable sret(%"class.nlohmann::json_abi_v3_12_0::basic_json") align 8 %361, ptr noundef nonnull align 8 dereferenceable(24) %345, i1 noundef zeroext true, i1 noundef zeroext true, i32 noundef 0)
          to label %bb.ang unwind label %bb.aot

bb.ang:                                           ; preds = %bb.anf
  call void @llvm.experimental.noalias.scope.decl(metadata !927)
  %i.bcg = load i32, ptr %360, align 4, !tbaa !94, !noalias !927
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(20) %359, ptr noundef nonnull align 8 dereferenceable(16) %361, i64 16, i1 false), !tbaa.struct !117
  store i8 0, ptr %361, align 8, !tbaa !113, !noalias !927
  store ptr null, ptr %i.baq, align 8, !tbaa !105, !noalias !927
  store i32 %i.bcg, ptr %i.bar, align 8, !tbaa !119, !alias.scope !927
  invoke void @_ZN7doctest6detail14Expression_lhsIN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS3_14adl_serializerES6_IhSaIhEEvEEEeqIRSG_EEDTcmcvveqclL_ZNS0_7declvalISG_EEOT_vEEclsr7doctest6detailE7declvalISL_EEtlNS0_6ResultEEESM_(ptr dead_on_unwind nonnull writable sret(%"struct.doctest::detail::Result") align 8 %358, ptr noundef nonnull align 8 dereferenceable(20) %359, ptr noundef nonnull align 8 dereferenceable(16) %340)
          to label %bb.anh unwind label %bb.aou

bb.anh:                                           ; preds = %bb.ang
  %i.bch = invoke noundef zeroext i1 @_ZN7doctest6detail13decomp_assertENS_10assertType4EnumEPKciS4_RKNS0_6ResultE(i32 noundef 10, ptr noundef nonnull @.str.5, i32 noundef 556, ptr noundef nonnull @.str.30, ptr noundef nonnull align 8 dereferenceable(32) %358)
          to label %bb.ani unwind label %bb.aov   ; 0 uses

bb.ani:                                           ; preds = %bb.anh
  call void @_ZN7doctest6StringD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %i.bas) #32
  %i.bci = load i8, ptr %359, align 8, !tbaa !104
  invoke void @_ZN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEEvE10json_value7destroyENS0_6detail7value_tE(ptr noundef nonnull align 8 dereferenceable(8) %i.bat, i8 noundef zeroext %i.bci)
          to label %_ZN7doctest6detail14Expression_lhsIN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS3_14adl_serializerES6_IhSaIhEEvEEED2Ev.exit5553 unwind label %bb.anj, !inline_history !111

bb.anj:                                           ; preds = %bb.ani
  %i.bcj = landingpad { ptr, i32 }
          catch ptr null
  %i.bck = extractvalue { ptr, i32 } %i.bcj, 0
  call void @__clang_call_terminate(ptr %i.bck) #33, !inline_history !111
  unreachable

_ZN7doctest6detail14Expression_lhsIN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS3_14adl_serializerES6_IhSaIhEEvEEED2Ev.exit5553: ; preds = %bb.ani
  %i.bcl = load i8, ptr %361, align 8, !tbaa !104
  invoke void @_ZN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEEvE10json_value7destroyENS0_6detail7value_tE(ptr noundef nonnull align 8 dereferenceable(8) %i.baq, i8 noundef zeroext %i.bcl)
          to label %_ZN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEEvED2Ev.exit5554 unwind label %bb.ank, !inline_history !111

bb.ank:                                           ; preds = %_ZN7doctest6detail14Expression_lhsIN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS3_14adl_serializerES6_IhSaIhEEvEEED2Ev.exit5553
  %i.bcm = landingpad { ptr, i32 }
          catch ptr null
  %i.bcn = extractvalue { ptr, i32 } %i.bcm, 0
  call void @__clang_call_terminate(ptr %i.bcn) #33, !inline_history !111
  unreachable

_ZN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEEvED2Ev.exit5554: ; preds = %_ZN7doctest6detail14Expression_lhsIN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS3_14adl_serializerES6_IhSaIhEEvEEED2Ev.exit5553
  call void @llvm.lifetime.end.p0(ptr nonnull %361) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %360) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %359) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %358) #32
  call void @llvm.lifetime.start.p0(ptr nonnull %362) #32
  call void @llvm.lifetime.start.p0(ptr nonnull %363) #32
  call void @llvm.lifetime.start.p0(ptr nonnull %364) #32
  invoke void @_ZN7doctest6detail20ExpressionDecomposerC1ENS_10assertType4EnumE(ptr noundef nonnull align 4 dereferenceable(4) %364, i32 noundef 10)
          to label %bb.anl unwind label %bb.aoz

bb.anl:                                           ; preds = %_ZN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEEvED2Ev.exit5554
  call void @llvm.lifetime.start.p0(ptr nonnull %365) #32
  invoke void @_ZN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEEvE9from_cborIRKSC_EESD_OT_bbNS0_6detail18cbor_tag_handler_tE(ptr dead_on_unwind nonnull writable sret(%"class.nlohmann::json_abi_v3_12_0::basic_json") align 8 %365, ptr noundef nonnull align 8 dereferenceable(24) %345, i1 noundef zeroext true, i1 noundef zeroext false, i32 noundef 0)
          to label %bb.anm unwind label %bb.apa

bb.anm:                                           ; preds = %bb.anl
  call void @llvm.experimental.noalias.scope.decl(metadata !928)
  %i.bco = load i32, ptr %364, align 4, !tbaa !94, !noalias !928
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(20) %363, ptr noundef nonnull align 8 dereferenceable(16) %365, i64 16, i1 false), !tbaa.struct !117
  store i8 0, ptr %365, align 8, !tbaa !113, !noalias !928
  store ptr null, ptr %i.bau, align 8, !tbaa !105, !noalias !928
  store i32 %i.bco, ptr %i.bav, align 8, !tbaa !119, !alias.scope !928
  invoke void @_ZN7doctest6detail14Expression_lhsIN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS3_14adl_serializerES6_IhSaIhEEvEEEeqIRSG_EEDTcmcvveqclL_ZNS0_7declvalISG_EEOT_vEEclsr7doctest6detailE7declvalISL_EEtlNS0_6ResultEEESM_(ptr dead_on_unwind nonnull writable sret(%"struct.doctest::detail::Result") align 8 %362, ptr noundef nonnull align 8 dereferenceable(20) %363, ptr noundef nonnull align 8 dereferenceable(16) %340)
          to label %bb.ann unwind label %bb.apb

bb.ann:                                           ; preds = %bb.anm
  %i.bcp = invoke noundef zeroext i1 @_ZN7doctest6detail13decomp_assertENS_10assertType4EnumEPKciS4_RKNS0_6ResultE(i32 noundef 10, ptr noundef nonnull @.str.5, i32 noundef 557, ptr noundef nonnull @.str.31, ptr noundef nonnull align 8 dereferenceable(32) %362)
          to label %bb.ano unwind label %bb.apc   ; 0 uses

bb.ano:                                           ; preds = %bb.ann
  call void @_ZN7doctest6StringD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %i.baw) #32
  %i.bcq = load i8, ptr %363, align 8, !tbaa !104
  invoke void @_ZN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEEvE10json_value7destroyENS0_6detail7value_tE(ptr noundef nonnull align 8 dereferenceable(8) %i.bax, i8 noundef zeroext %i.bcq)
          to label %_ZN7doctest6detail14Expression_lhsIN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS3_14adl_serializerES6_IhSaIhEEvEEED2Ev.exit5555 unwind label %bb.anp, !inline_history !111

bb.anp:                                           ; preds = %bb.ano
  %i.bcr = landingpad { ptr, i32 }
end_hunk_2
begin_hunk_3_@_ZL19DOCTEST_ANON_FUNC_7v:bb.a
  br label %bb.apd

bb.apd:                                           ; preds = %bb.apc, %bb.apb
  %.pn4796 = phi { ptr, i32 } [ %i.beb, %bb.apc ], [ %i.bea, %bb.apb ]
  call void @_ZN7doctest6detail14Expression_lhsIN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS3_14adl_serializerES6_IhSaIhEEvEEED2Ev(ptr noundef nonnull align 8 dead_on_return(20) dereferenceable(20) %363) #32
  call void @_ZN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEEvED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %365) #32
  br label %bb.ape

bb.ape:                                           ; preds = %bb.apd, %bb.apa
  %.pn4796.pn.pn = phi { ptr, i32 } [ %.pn4796, %bb.apd ], [ %i.bdz, %bb.apa ]
  call void @llvm.lifetime.end.p0(ptr nonnull %365) #32
  br label %bb.apf

bb.apf:                                           ; preds = %bb.ape, %bb.aoz
  %.pn4796.pn.pn.pn = phi { ptr, i32 } [ %.pn4796.pn.pn, %bb.ape ], [ %i.bdy, %bb.aoz ]
  call void @llvm.lifetime.end.p0(ptr nonnull %364) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %363) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %362) #32
  br label %bb.apg

bb.apg:                                           ; preds = %bb.apf, %bb.aoy, %bb.aor
  %.pn4796.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn4796.pn.pn.pn, %bb.apf ], [ %.pn4791.pn.pn.pn, %bb.aoy ], [ %.pn4789, %bb.aor ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ax) #32
  br label %bb.aph

bb.aph:                                           ; preds = %bb.apg, %bb.aoo, %bb.aoj, %bb.aoe
  %.pn4796.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn4796.pn.pn.pn.pn, %bb.apg ], [ %.pn4786.pn, %bb.aoo ], [ %.pn4782.pn.pn, %bb.aoj ], [ %.pn4780, %bb.aoe ] ; 2 uses
  %i.bec = load ptr, ptr %345, align 8, !tbaa !110 ; 2 uses
  %.not.i.i.i5564 = icmp eq ptr %i.bec, null
  br i1 %.not.i.i.i5564, label %_ZNSt6vectorIhSaIhEED2Ev.exit5566, label %bb.api

bb.api:                                           ; preds = %bb.aph
  call void @_ZdlPv(ptr noundef nonnull %i.bec) #34
  br label %_ZNSt6vectorIhSaIhEED2Ev.exit5566

_ZNSt6vectorIhSaIhEED2Ev.exit5566:                ; preds = %bb.api, %bb.aph, %bb.aob
  %.pn4796.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %i.bdj, %bb.aob ], [ %.pn4796.pn.pn.pn.pn.pn, %bb.aph ], [ %.pn4796.pn.pn.pn.pn.pn, %bb.api ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %345) #32
  %i.bed = load ptr, ptr %344, align 8, !tbaa !110 ; 2 uses
  %.not.i.i.i5567 = icmp eq ptr %i.bed, null
  br i1 %.not.i.i.i5567, label %.body5542, label %bb.apj

bb.apj:                                           ; preds = %_ZNSt6vectorIhSaIhEED2Ev.exit5566
  call void @_ZdlPv(ptr noundef nonnull %i.bed) #34
  br label %.body5542

.body5542:                                        ; preds = %bb.apj, %_ZNSt6vectorIhSaIhEED2Ev.exit5566, %_ZNSt12_Vector_baseIhSaIhEED2Ev.exit.i5541
  %.pn4796.pn.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %i.bbm, %_ZNSt12_Vector_baseIhSaIhEED2Ev.exit.i5541 ], [ %.pn4796.pn.pn.pn.pn.pn.pn, %bb.apj ], [ %.pn4796.pn.pn.pn.pn.pn.pn, %_ZNSt6vectorIhSaIhEED2Ev.exit5566 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %344) #32
  br label %bb.apk

bb.apk:                                           ; preds = %.body5542, %bb.aoa, %bb.anx
  %.pn4796.pn.pn.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn4796.pn.pn.pn.pn.pn.pn.pn, %.body5542 ], [ %.pn4777.pn, %bb.aoa ], [ %i.bdg, %bb.anx ]
  call void @_ZN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEEvED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %340) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %340) #32
  call void @"_ZN7doctest6detail12ContextScopeIZL19DOCTEST_ANON_FUNC_7vE3$_9ED2Ev"(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %339) #32
  br label %bb.apl

bb.apl:                                           ; preds = %bb.apk, %bb.anw
  %.pn4796.pn.pn.pn.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn4796.pn.pn.pn.pn.pn.pn.pn.pn, %bb.apk ], [ %i.bdf, %bb.anw ]
  call void @llvm.lifetime.end.p0(ptr nonnull %339) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %i.au) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %i.at) #32
  br label %bb.aps

bb.apm:                                           ; preds = %bb.amg, %bb.ame
  call void @_ZN7doctest6detail7SubcaseD1Ev(ptr noundef nonnull align 8 dead_on_return(41) dereferenceable(41) %337) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %337) #32
  call void @llvm.lifetime.start.p0(ptr nonnull %366) #32
  call void @llvm.lifetime.start.p0(ptr nonnull %367) #32
  invoke void @_ZN7doctest6StringC1EPKc(ptr noundef nonnull align 8 dereferenceable(24) %367, ptr noundef nonnull @.str.71)
          to label %bb.apn unwind label %bb.apt

bb.apn:                                           ; preds = %bb.apm
  invoke void @_ZN7doctest6detail7SubcaseC1ERKNS_6StringEPKci(ptr noundef nonnull align 8 dereferenceable(41) %366, ptr noundef nonnull align 8 dereferenceable(24) %367, ptr noundef nonnull @.str.5, i32 noundef 561)
          to label %bb.apo unwind label %bb.apu

bb.apo:                                           ; preds = %bb.apn
  call void @_ZN7doctest6StringD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %367) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %367) #32
  %i.bee = invoke noundef zeroext i1 @_ZNK7doctest6detail7SubcasecvbEv(ptr noundef nonnull align 8 dereferenceable(41) %366)
          to label %bb.app unwind label %bb.apw

bb.app:                                           ; preds = %bb.apo
  br i1 %i.bee, label %bb.apq, label %bb.asx

bb.apq:                                           ; preds = %bb.app
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ay) #32
  store i64 4294967296, ptr %i.ay, align 8, !tbaa !121
  %i.bef = getelementptr inbounds nuw i8, ptr %i.ay, i64 8
  store i64 4611686018427387903, ptr %i.bef, align 8, !tbaa !121
  %i.beg = ptrtoint ptr %i.az to i64
  %i.beh = getelementptr inbounds nuw i8, ptr %368, i64 16
  %i.bei = getelementptr inbounds nuw i8, ptr %369, i64 8 ; 2 uses
  %i.bej = getelementptr inbounds nuw i8, ptr %370, i64 8 ; 2 uses
  %i.bek = getelementptr inbounds nuw i8, ptr %373, i64 16
  %i.bel = getelementptr inbounds nuw i8, ptr %373, i64 8
  %.sroa.2799.0..sroa_idx = getelementptr inbounds nuw i8, ptr %376, i64 8
  %i.bem = getelementptr inbounds nuw i8, ptr %375, i64 8 ; 2 uses
  %i.ben = getelementptr inbounds nuw i8, ptr %374, i64 8
  %.sroa.2795.0..sroa_idx = getelementptr inbounds nuw i8, ptr %379, i64 8
  %i.beo = getelementptr inbounds nuw i8, ptr %378, i64 8 ; 2 uses
  %.sroa.2791.0..sroa_idx = getelementptr inbounds nuw i8, ptr %382, i64 8
  %i.bep = getelementptr inbounds nuw i8, ptr %381, i64 8 ; 2 uses
  %.sroa.2787.0..sroa_idx = getelementptr inbounds nuw i8, ptr %385, i64 8
  %i.beq = getelementptr inbounds nuw i8, ptr %384, i64 8 ; 2 uses
  %i.ber = getelementptr inbounds nuw i8, ptr %390, i64 8 ; 2 uses
  %i.bes = getelementptr inbounds nuw i8, ptr %388, i64 16
  %i.bet = getelementptr inbounds nuw i8, ptr %387, i64 8 ; 2 uses
  %i.beu = getelementptr inbounds nuw i8, ptr %388, i64 8
  %i.bev = getelementptr inbounds nuw i8, ptr %394, i64 8 ; 2 uses
  %i.bew = getelementptr inbounds nuw i8, ptr %392, i64 16
  %i.bex = getelementptr inbounds nuw i8, ptr %391, i64 8 ; 2 uses
  %i.bey = getelementptr inbounds nuw i8, ptr %392, i64 8
  %i.bez = getelementptr inbounds nuw i8, ptr %368, i64 8
  br label %bb.apx

bb.apr:                                           ; preds = %"_ZN7doctest6detail12ContextScopeIZL19DOCTEST_ANON_FUNC_7vE4$_10ED2Ev.exit"
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ay) #32
  br label %bb.asx

bb.aps:                                           ; preds = %bb.apl, %bb.aml
  %.pn4796.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn4796.pn.pn.pn.pn.pn.pn.pn.pn.pn, %bb.apl ], [ %i.bbb, %bb.aml ]
  call void @_ZN7doctest6detail7SubcaseD1Ev(ptr noundef nonnull align 8 dead_on_return(41) dereferenceable(41) %337) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %337) #32
  br label %bb.awg

bb.apt:                                           ; preds = %bb.apm
  %i.bfa = landingpad { ptr, i32 }
          cleanup
  br label %bb.apv

bb.apu:                                           ; preds = %bb.apn
  %i.bfb = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7doctest6StringD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %367) #32
  br label %bb.apv

bb.apv:                                           ; preds = %bb.apu, %bb.apt
  %.pn2961 = phi { ptr, i32 } [ %i.bfb, %bb.apu ], [ %i.bfa, %bb.apt ]
  call void @llvm.lifetime.end.p0(ptr nonnull %367) #32
  br label %bb.awg

bb.apw:                                           ; preds = %bb.apo
  %i.bfc = landingpad { ptr, i32 }
          cleanup
  br label %bb.atd

bb.apx:                                           ; preds = %bb.apq, %"_ZN7doctest6detail12ContextScopeIZL19DOCTEST_ANON_FUNC_7vE4$_10ED2Ev.exit"
  %.02807.idx9801 = phi i64 [ 0, %bb.apq ], [ %.02807.add, %"_ZN7doctest6detail12ContextScopeIZL19DOCTEST_ANON_FUNC_7vE4$_10ED2Ev.exit" ] ; 2 uses
  %.02807.ptr = getelementptr inbounds nuw i8, ptr %i.ay, i64 %.02807.idx9801
  call void @llvm.lifetime.start.p0(ptr nonnull %i.az) #32
  %i.bfd = load i64, ptr %.02807.ptr, align 8, !tbaa !121
  store i64 %i.bfd, ptr %i.az, align 8, !tbaa !121
  call void @llvm.lifetime.start.p0(ptr nonnull %368) #32
  invoke void @_ZN7doctest6detail16ContextScopeBaseC2Ev(ptr noundef nonnull align 8 dereferenceable(24) %368)
          to label %bb.apy unwind label %bb.arh

bb.apy:                                           ; preds = %bb.apx
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @"_ZTVN7doctest6detail12ContextScopeIZL19DOCTEST_ANON_FUNC_7vE4$_10EE", i64 16), ptr %368, align 8, !tbaa !91, !alias.scope !929
  store i64 %i.beg, ptr %i.beh, align 8, !tbaa !123, !alias.scope !929
  call void @llvm.lifetime.start.p0(ptr nonnull %369) #32
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %369, i8 0, i64 16, i1 false)
  store i8 5, ptr %369, align 8, !tbaa !113
  store i64 -1, ptr %i.bei, align 8, !tbaa !105
  %i.bfe = load i64, ptr %i.az, align 8, !tbaa !121
  %i.bff = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEEvE12get_ref_implIRlSD_EET_RT0_(ptr noundef nonnull align 8 dereferenceable(16) %369)
          to label %_ZN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEEvE7get_refIRlTnNSt9enable_ifIXsr3std12is_referenceIT_EE5valueEiE4typeELi0EEESH_v.exit5570 unwind label %bb.ari

_ZN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEEvE7get_refIRlTnNSt9enable_ifIXsr3std12is_referenceIT_EE5valueEiE4typeELi0EEESH_v.exit5570: ; preds = %bb.apy
  store i64 %i.bfe, ptr %i.bff, align 8, !tbaa !121
  call void @llvm.lifetime.start.p0(ptr nonnull %370) #32
  call void @llvm.lifetime.start.p0(ptr nonnull %371) #32
  call void @llvm.lifetime.start.p0(ptr nonnull %372) #32
  invoke void @_ZN7doctest6detail20ExpressionDecomposerC1ENS_10assertType4EnumE(ptr noundef nonnull align 4 dereferenceable(4) %372, i32 noundef 10)
          to label %bb.apz unwind label %bb.arj

bb.apz:                                           ; preds = %_ZN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEEvE7get_refIRlTnNSt9enable_ifIXsr3std12is_referenceIT_EE5valueEiE4typeELi0EEESH_v.exit5570
  %i.bfg = load i8, ptr %369, align 8, !tbaa !113
  %i.bfh = add i8 %i.bfg, -5
  %spec.select.i5571 = icmp ult i8 %i.bfh, 2
  %i.bfi = load i32, ptr %372, align 4, !tbaa !94
  %.sroa.22.0.insert.ext.i5572 = zext i32 %i.bfi to i64
  %.sroa.22.0.insert.shift.i5573 = shl nuw i64 %.sroa.22.0.insert.ext.i5572, 32
  %.sroa.0.0.insert.ext.i5574 = zext i1 %spec.select.i5571 to i64
  %.sroa.0.0.insert.insert.i5575 = or disjoint i64 %.sroa.22.0.insert.shift.i5573, %.sroa.0.0.insert.ext.i5574
  store i64 %.sroa.0.0.insert.insert.i5575, ptr %371, align 8
  invoke void @_ZN7doctest6detail14Expression_lhsIbEcvNS0_6ResultEEv(ptr dead_on_unwind nonnull writable sret(%"struct.doctest::detail::Result") align 8 %370, ptr noundef nonnull align 4 dereferenceable(8) %371)
          to label %bb.aqa unwind label %bb.arj

bb.aqa:                                           ; preds = %bb.apz
  %i.bfj = invoke noundef zeroext i1 @_ZN7doctest6detail13decomp_assertENS_10assertType4EnumEPKciS4_RKNS0_6ResultE(i32 noundef 10, ptr noundef nonnull @.str.5, i32 noundef 575, ptr noundef nonnull @.str.38, ptr noundef nonnull align 8 dereferenceable(32) %370)
          to label %bb.aqb unwind label %bb.ark   ; 0 uses

bb.aqb:                                           ; preds = %bb.aqa
  call void @_ZN7doctest6StringD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %i.bej) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %372) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %371) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %370) #32
  call void @llvm.lifetime.start.p0(ptr nonnull %373) #32
  %1720 = load i64, ptr %i.az, align 8, !tbaa !121
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %373, i8 0, i64 24, i1 false)
  %i.bfk = invoke noalias noundef nonnull dereferenceable(9) ptr @_Znwm(i64 noundef 9) #35
          to label %bb.aqc unwind label %_ZNSt12_Vector_baseIhSaIhEED2Ev.exit.i5577 ; 4 uses

_ZNSt12_Vector_baseIhSaIhEED2Ev.exit.i5577:       ; preds = %bb.aqb
  %i.bfl = landingpad { ptr, i32 }
          cleanup
  br label %.body5578

bb.aqc:                                           ; preds = %bb.aqb
  store ptr %i.bfk, ptr %373, align 8, !tbaa !110
  %i.bfm = getelementptr inbounds nuw i8, ptr %i.bfk, i64 9 ; 2 uses
  store ptr %i.bfm, ptr %i.bek, align 8, !tbaa !114
  store i8 27, ptr %i.bfk, align 1
  %.sroa.59262.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bfk, i64 1
  %1721 = call i64 @llvm.bswap.i64(i64 %1720)
  store i64 %1721, ptr %.sroa.59262.0..sroa_idx, align 1
  store ptr %i.bfm, ptr %i.bel, align 8, !tbaa !115
  call void @llvm.lifetime.start.p0(ptr nonnull %374) #32
  invoke void @_ZN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEEvE7to_cborERKSD_(ptr dead_on_unwind nonnull writable sret(%"class.std::vector") align 8 %374, ptr noundef nonnull align 8 dereferenceable(16) %369)
          to label %bb.aqd unwind label %bb.arm

bb.aqd:                                           ; preds = %bb.aqc
  call void @llvm.lifetime.start.p0(ptr nonnull %375) #32
  call void @llvm.lifetime.start.p0(ptr nonnull %376) #32
  call void @llvm.lifetime.start.p0(ptr nonnull %377) #32
  invoke void @_ZN7doctest6detail20ExpressionDecomposerC1ENS_10assertType4EnumE(ptr noundef nonnull align 4 dereferenceable(4) %377, i32 noundef 10)
          to label %bb.aqe unwind label %bb.arn

bb.aqe:                                           ; preds = %bb.aqd
  %i.bfn = load i32, ptr %377, align 4, !tbaa !94
  store ptr %374, ptr %376, align 8
  store i32 %i.bfn, ptr %.sroa.2799.0..sroa_idx, align 8
  invoke void @_ZN7doctest6detail14Expression_lhsIRKSt6vectorIhSaIhEEEeqIS6_EEDTcmcvveqclL_ZNS0_7declvalIS6_EEOT_vEEclsr7doctest6detailE7declvalISA_EEtlNS0_6ResultEEESB_(ptr dead_on_unwind nonnull writable sret(%"struct.doctest::detail::Result") align 8 %375, ptr noundef nonnull align 8 dereferenceable(12) %376, ptr noundef nonnull align 8 dereferenceable(24) %373)
          to label %bb.aqf unwind label %bb.arn

bb.aqf:                                           ; preds = %bb.aqe
  %i.bfo = invoke noundef zeroext i1 @_ZN7doctest6detail13decomp_assertENS_10assertType4EnumEPKciS4_RKNS0_6ResultE(i32 noundef 10, ptr noundef nonnull @.str.5, i32 noundef 593, ptr noundef nonnull @.str.27, ptr noundef nonnull align 8 dereferenceable(32) %375)
          to label %bb.aqg unwind label %bb.aro   ; 0 uses

bb.aqg:                                           ; preds = %bb.aqf
  call void @_ZN7doctest6StringD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %i.bem) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %377) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %376) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %375) #32
  call void @llvm.lifetime.start.p0(ptr nonnull %378) #32
  call void @llvm.lifetime.start.p0(ptr nonnull %379) #32
  call void @llvm.lifetime.start.p0(ptr nonnull %380) #32
  invoke void @_ZN7doctest6detail20ExpressionDecomposerC1ENS_10assertType4EnumE(ptr noundef nonnull align 4 dereferenceable(4) %380, i32 noundef 10)
          to label %bb.aqh unwind label %bb.arq

bb.aqh:                                           ; preds = %bb.aqg
  %i.bfp = load ptr, ptr %i.ben, align 8, !tbaa !115
  %i.bfq = load ptr, ptr %374, align 8, !tbaa !110
  %i.bfr = ptrtoint ptr %i.bfp to i64
  %i.bfs = ptrtoint ptr %i.bfq to i64
  %i.bft = sub i64 %i.bfr, %i.bfs
  %i.bfu = load i32, ptr %380, align 4, !tbaa !94
  store i64 %i.bft, ptr %379, align 8
  store i32 %i.bfu, ptr %.sroa.2795.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ba) #32
  store i32 9, ptr %i.ba, align 4, !tbaa !124
  invoke void @_ZN7doctest6detail14Expression_lhsImEeqIiEEDTcmcvveqclL_ZNS0_7declvalImEEOT_vEEclsr7doctest6detailE7declvalIS5_EEtlNS0_6ResultEEES6_(ptr dead_on_unwind nonnull writable sret(%"struct.doctest::detail::Result") align 8 %378, ptr noundef nonnull align 8 dereferenceable(12) %379, ptr noundef nonnull align 4 dereferenceable(4) %i.ba)
          to label %bb.aqi unwind label %bb.arr

bb.aqi:                                           ; preds = %bb.aqh
  %i.bfv = invoke noundef zeroext i1 @_ZN7doctest6detail13decomp_assertENS_10assertType4EnumEPKciS4_RKNS0_6ResultE(i32 noundef 10, ptr noundef nonnull @.str.5, i32 noundef 594, ptr noundef nonnull @.str.39, ptr noundef nonnull align 8 dereferenceable(32) %378)
          to label %bb.aqj unwind label %bb.ars   ; 0 uses

bb.aqj:                                           ; preds = %bb.aqi
  call void @_ZN7doctest6StringD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %i.beo) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ba) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %380) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %379) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %378) #32
  call void @llvm.lifetime.start.p0(ptr nonnull %381) #32
  call void @llvm.lifetime.start.p0(ptr nonnull %382) #32
  call void @llvm.lifetime.start.p0(ptr nonnull %383) #32
  invoke void @_ZN7doctest6detail20ExpressionDecomposerC1ENS_10assertType4EnumE(ptr noundef nonnull align 4 dereferenceable(4) %383, i32 noundef 10)
          to label %bb.aqk unwind label %bb.arv

bb.aqk:                                           ; preds = %bb.aqj
  %i.bfw = load ptr, ptr %374, align 8, !tbaa !110
  %i.bfx = load i32, ptr %383, align 4, !tbaa !94
  store ptr %i.bfw, ptr %382, align 8
  store i32 %i.bfx, ptr %.sroa.2791.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bb) #32
  store i32 27, ptr %i.bb, align 4, !tbaa !124
  invoke void @_ZN7doctest6detail14Expression_lhsIRKhEeqIiEEDTcmcvveqclL_ZNS0_7declvalIS3_EEOT_vEEclsr7doctest6detailE7declvalIS7_EEtlNS0_6ResultEEES8_(ptr dead_on_unwind nonnull writable sret(%"struct.doctest::detail::Result") align 8 %381, ptr noundef nonnull align 8 dereferenceable(12) %382, ptr noundef nonnull align 4 dereferenceable(4) %i.bb)
          to label %bb.aql unwind label %bb.arw

bb.aql:                                           ; preds = %bb.aqk
  %i.bfy = invoke noundef zeroext i1 @_ZN7doctest6detail13decomp_assertENS_10assertType4EnumEPKciS4_RKNS0_6ResultE(i32 noundef 10, ptr noundef nonnull @.str.5, i32 noundef 597, ptr noundef nonnull @.str.72, ptr noundef nonnull align 8 dereferenceable(32) %381)
          to label %bb.aqm unwind label %bb.arx   ; 0 uses

bb.aqm:                                           ; preds = %bb.aql
  call void @_ZN7doctest6StringD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %i.bep) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bb) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %383) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %382) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %381) #32
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bc) #32
  %i.bfz = load ptr, ptr %374, align 8, !tbaa !110 ; 8 uses
  %i.bga = getelementptr inbounds nuw i8, ptr %i.bfz, i64 1
  %i.bgb = load i8, ptr %i.bga, align 1, !tbaa !105
  %i.bgc = zext i8 %i.bgb to i64
  %i.bgd = shl nuw i64 %i.bgc, 56
  %i.bge = getelementptr inbounds nuw i8, ptr %i.bfz, i64 2
  %i.bgf = load i8, ptr %i.bge, align 1, !tbaa !105
  %i.bgg = zext i8 %i.bgf to i64
  %i.bgh = shl nuw nsw i64 %i.bgg, 48
  %i.bgi = or disjoint i64 %i.bgh, %i.bgd
  %i.bgj = getelementptr inbounds nuw i8, ptr %i.bfz, i64 3
  %i.bgk = load i8, ptr %i.bgj, align 1, !tbaa !105
  %i.bgl = zext i8 %i.bgk to i64
  %i.bgm = shl nuw nsw i64 %i.bgl, 40
  %i.bgn = or disjoint i64 %i.bgi, %i.bgm
  %i.bgo = getelementptr inbounds nuw i8, ptr %i.bfz, i64 4
  %i.bgp = load i8, ptr %i.bgo, align 1, !tbaa !105
  %i.bgq = zext i8 %i.bgp to i64
  %i.bgr = shl nuw nsw i64 %i.bgq, 32
  %i.bgs = or disjoint i64 %i.bgn, %i.bgr
  %i.bgt = getelementptr inbounds nuw i8, ptr %i.bfz, i64 5
  %i.bgu = load i8, ptr %i.bgt, align 1, !tbaa !105
  %i.bgv = zext i8 %i.bgu to i64
  %i.bgw = shl nuw nsw i64 %i.bgv, 24
  %i.bgx = or disjoint i64 %i.bgs, %i.bgw
  %i.bgy = getelementptr inbounds nuw i8, ptr %i.bfz, i64 6
  %i.bgz = load i8, ptr %i.bgy, align 1, !tbaa !105
  %i.bha = zext i8 %i.bgz to i64
  %i.bhb = shl nuw nsw i64 %i.bha, 16
  %i.bhc = or disjoint i64 %i.bgx, %i.bhb
  %i.bhd = getelementptr inbounds nuw i8, ptr %i.bfz, i64 7
  %i.bhe = load i8, ptr %i.bhd, align 1, !tbaa !105
  %i.bhf = zext i8 %i.bhe to i64
  %i.bhg = shl nuw nsw i64 %i.bhf, 8
  %i.bhh = or disjoint i64 %i.bhc, %i.bhg
  %i.bhi = getelementptr inbounds nuw i8, ptr %i.bfz, i64 8
  %i.bhj = load i8, ptr %i.bhi, align 1, !tbaa !105
  %i.bhk = zext i8 %i.bhj to i64
  %i.bhl = add nuw i64 %i.bhh, %i.bhk
  store i64 %i.bhl, ptr %i.bc, align 8, !tbaa !121
  call void @llvm.lifetime.start.p0(ptr nonnull %384) #32
  call void @llvm.lifetime.start.p0(ptr nonnull %385) #32
  call void @llvm.lifetime.start.p0(ptr nonnull %386) #32
  invoke void @_ZN7doctest6detail20ExpressionDecomposerC1ENS_10assertType4EnumE(ptr noundef nonnull align 4 dereferenceable(4) %386, i32 noundef 10)
          to label %bb.aqn unwind label %bb.asa

bb.aqn:                                           ; preds = %bb.aqm
  %i.bhm = load i32, ptr %386, align 4, !tbaa !94
  store ptr %i.bc, ptr %385, align 8
  store i32 %i.bhm, ptr %.sroa.2787.0..sroa_idx, align 8
  invoke void @_ZN7doctest6detail14Expression_lhsIRKmEeqIS3_EEDTcmcvveqclL_ZNS0_7declvalIS3_EEOT_vEEclsr7doctest6detailE7declvalIS7_EEtlNS0_6ResultEEES8_(ptr dead_on_unwind nonnull writable sret(%"struct.doctest::detail::Result") align 8 %384, ptr noundef nonnull align 8 dereferenceable(12) %385, ptr noundef nonnull align 8 dereferenceable(8) %i.az)
          to label %bb.aqo unwind label %bb.asa

bb.aqo:                                           ; preds = %bb.aqn
  %i.bhn = invoke noundef zeroext i1 @_ZN7doctest6detail13decomp_assertENS_10assertType4EnumEPKciS4_RKNS0_6ResultE(i32 noundef 10, ptr noundef nonnull @.str.5, i32 noundef 606, ptr noundef nonnull @.str.68, ptr noundef nonnull align 8 dereferenceable(32) %384)
          to label %bb.aqp unwind label %bb.asb   ; 0 uses

bb.aqp:                                           ; preds = %bb.aqo
  call void @_ZN7doctest6StringD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %i.beq) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %386) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %385) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %384) #32
  call void @llvm.lifetime.start.p0(ptr nonnull %387) #32
  call void @llvm.lifetime.start.p0(ptr nonnull %388) #32
  call void @llvm.lifetime.start.p0(ptr nonnull %389) #32
  invoke void @_ZN7doctest6detail20ExpressionDecomposerC1ENS_10assertType4EnumE(ptr noundef nonnull align 4 dereferenceable(4) %389, i32 noundef 10)
          to label %bb.aqq unwind label %bb.asd

bb.aqq:                                           ; preds = %bb.aqp
  call void @llvm.lifetime.start.p0(ptr nonnull %390) #32
  invoke void @_ZN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEEvE9from_cborIRKSC_EESD_OT_bbNS0_6detail18cbor_tag_handler_tE(ptr dead_on_unwind nonnull writable sret(%"class.nlohmann::json_abi_v3_12_0::basic_json") align 8 %390, ptr noundef nonnull align 8 dereferenceable(24) %374, i1 noundef zeroext true, i1 noundef zeroext true, i32 noundef 0)
          to label %bb.aqr unwind label %bb.ase

bb.aqr:                                           ; preds = %bb.aqq
  call void @llvm.experimental.noalias.scope.decl(metadata !930)
  %i.bho = load i32, ptr %389, align 4, !tbaa !94, !noalias !930
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(20) %388, ptr noundef nonnull align 8 dereferenceable(16) %390, i64 16, i1 false), !tbaa.struct !117
  store i8 0, ptr %390, align 8, !tbaa !113, !noalias !930
  store ptr null, ptr %i.ber, align 8, !tbaa !105, !noalias !930
  store i32 %i.bho, ptr %i.bes, align 8, !tbaa !119, !alias.scope !930
  invoke void @_ZN7doctest6detail14Expression_lhsIN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS3_14adl_serializerES6_IhSaIhEEvEEEeqIRSG_EEDTcmcvveqclL_ZNS0_7declvalISG_EEOT_vEEclsr7doctest6detailE7declvalISL_EEtlNS0_6ResultEEESM_(ptr dead_on_unwind nonnull writable sret(%"struct.doctest::detail::Result") align 8 %387, ptr noundef nonnull align 8 dereferenceable(20) %388, ptr noundef nonnull align 8 dereferenceable(16) %369)
          to label %bb.aqs unwind label %bb.asf

bb.aqs:                                           ; preds = %bb.aqr
  %i.bhp = invoke noundef zeroext i1 @_ZN7doctest6detail13decomp_assertENS_10assertType4EnumEPKciS4_RKNS0_6ResultE(i32 noundef 10, ptr noundef nonnull @.str.5, i32 noundef 609, ptr noundef nonnull @.str.30, ptr noundef nonnull align 8 dereferenceable(32) %387)
          to label %bb.aqt unwind label %bb.asg   ; 0 uses

bb.aqt:                                           ; preds = %bb.aqs
  call void @_ZN7doctest6StringD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %i.bet) #32
  %i.bhq = load i8, ptr %388, align 8, !tbaa !104
  invoke void @_ZN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEEvE10json_value7destroyENS0_6detail7value_tE(ptr noundef nonnull align 8 dereferenceable(8) %i.beu, i8 noundef zeroext %i.bhq)
          to label %_ZN7doctest6detail14Expression_lhsIN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS3_14adl_serializerES6_IhSaIhEEvEEED2Ev.exit5589 unwind label %bb.aqu, !inline_history !111

bb.aqu:                                           ; preds = %bb.aqt
  %i.bhr = landingpad { ptr, i32 }
          catch ptr null
  %i.bhs = extractvalue { ptr, i32 } %i.bhr, 0
  call void @__clang_call_terminate(ptr %i.bhs) #33, !inline_history !111
  unreachable

_ZN7doctest6detail14Expression_lhsIN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS3_14adl_serializerES6_IhSaIhEEvEEED2Ev.exit5589: ; preds = %bb.aqt
  %i.bht = load i8, ptr %390, align 8, !tbaa !104
  invoke void @_ZN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEEvE10json_value7destroyENS0_6detail7value_tE(ptr noundef nonnull align 8 dereferenceable(8) %i.ber, i8 noundef zeroext %i.bht)
          to label %_ZN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEEvED2Ev.exit5590 unwind label %bb.aqv, !inline_history !111

bb.aqv:                                           ; preds = %_ZN7doctest6detail14Expression_lhsIN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS3_14adl_serializerES6_IhSaIhEEvEEED2Ev.exit5589
  %i.bhu = landingpad { ptr, i32 }
          catch ptr null
  %i.bhv = extractvalue { ptr, i32 } %i.bhu, 0
  call void @__clang_call_terminate(ptr %i.bhv) #33, !inline_history !111
  unreachable

_ZN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEEvED2Ev.exit5590: ; preds = %_ZN7doctest6detail14Expression_lhsIN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS3_14adl_serializerES6_IhSaIhEEvEEED2Ev.exit5589
  call void @llvm.lifetime.end.p0(ptr nonnull %390) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %389) #32
end_hunk_3
begin_hunk_4_@_ZL19DOCTEST_ANON_FUNC_7v:bb.a
bb.bfp:                                           ; preds = %bb.beb
  %i.bzb = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7doctest6StringD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %i.bvp) #32
  br label %bb.bfq

bb.bfq:                                           ; preds = %bb.bfp, %bb.bfo
  %.pn4643 = phi { ptr, i32 } [ %i.bzb, %bb.bfp ], [ %i.bza, %bb.bfo ]
  call void @_ZN7doctest6detail14Expression_lhsIN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS3_14adl_serializerES6_IhSaIhEEvEEED2Ev(ptr noundef nonnull align 8 dead_on_return(20) dereferenceable(20) %503) #32
  call void @_ZN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEEvED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %505) #32
  br label %bb.bfr

bb.bfr:                                           ; preds = %bb.bfq, %bb.bfn
  %.pn4643.pn.pn = phi { ptr, i32 } [ %.pn4643, %bb.bfq ], [ %i.byz, %bb.bfn ]
  call void @llvm.lifetime.end.p0(ptr nonnull %505) #32
  br label %bb.bfs

bb.bfs:                                           ; preds = %bb.bfr, %bb.bfm
  %.pn4643.pn.pn.pn = phi { ptr, i32 } [ %.pn4643.pn.pn, %bb.bfr ], [ %i.byy, %bb.bfm ]
  call void @llvm.lifetime.end.p0(ptr nonnull %504) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %503) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %502) #32
  br label %bb.bft

bb.bft:                                           ; preds = %bb.bfs, %bb.bfl, %bb.bfe
  %.pn4643.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn4643.pn.pn.pn, %bb.bfs ], [ %.pn4638.pn.pn.pn, %bb.bfl ], [ %.pn4636, %bb.bfe ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bq) #32
  br label %bb.bfu

bb.bfu:                                           ; preds = %bb.bft, %bb.bfb, %bb.bew, %bb.ber
  %.pn4643.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn4643.pn.pn.pn.pn, %bb.bft ], [ %.pn4633.pn, %bb.bfb ], [ %.pn4629.pn.pn, %bb.bew ], [ %.pn4627, %bb.ber ] ; 2 uses
  %i.bzc = load ptr, ptr %485, align 8, !tbaa !110 ; 2 uses
  %.not.i.i.i5733 = icmp eq ptr %i.bzc, null
  br i1 %.not.i.i.i5733, label %_ZNSt6vectorIhSaIhEED2Ev.exit5735, label %bb.bfv

bb.bfv:                                           ; preds = %bb.bfu
  call void @_ZdlPv(ptr noundef nonnull %i.bzc) #34
  br label %_ZNSt6vectorIhSaIhEED2Ev.exit5735

_ZNSt6vectorIhSaIhEED2Ev.exit5735:                ; preds = %bb.bfv, %bb.bfu, %bb.beo
  %.pn4643.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %i.byj, %bb.beo ], [ %.pn4643.pn.pn.pn.pn.pn, %bb.bfu ], [ %.pn4643.pn.pn.pn.pn.pn, %bb.bfv ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %485) #32
  %i.bzd = load ptr, ptr %484, align 8, !tbaa !110 ; 2 uses
  %.not.i.i.i5736 = icmp eq ptr %i.bzd, null
  br i1 %.not.i.i.i5736, label %.body5711, label %bb.bfw

bb.bfw:                                           ; preds = %_ZNSt6vectorIhSaIhEED2Ev.exit5735
  call void @_ZdlPv(ptr noundef nonnull %i.bzd) #34
  br label %.body5711

.body5711:                                        ; preds = %bb.bfw, %_ZNSt6vectorIhSaIhEED2Ev.exit5735, %_ZNSt12_Vector_baseIhSaIhEED2Ev.exit.i5710
  %.pn4643.pn.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %i.bwc, %_ZNSt12_Vector_baseIhSaIhEED2Ev.exit.i5710 ], [ %.pn4643.pn.pn.pn.pn.pn.pn, %bb.bfw ], [ %.pn4643.pn.pn.pn.pn.pn.pn, %_ZNSt6vectorIhSaIhEED2Ev.exit5735 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %484) #32
  br label %bb.bfx

bb.bfx:                                           ; preds = %.body5711, %bb.ben
  %.pn4643.pn.pn.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn4643.pn.pn.pn.pn.pn.pn.pn, %.body5711 ], [ %.pn4624.pn, %bb.ben ]
  call void @_ZN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEEvED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %480) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %480) #32
  call void @"_ZN7doctest6detail12ContextScopeIZL19DOCTEST_ANON_FUNC_7vE4$_14ED2Ev"(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %479) #32
  br label %bb.bfy

bb.bfy:                                           ; preds = %bb.bfx, %bb.bek
  %.pn4643.pn.pn.pn.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn4643.pn.pn.pn.pn.pn.pn.pn.pn, %bb.bfx ], [ %i.byg, %bb.bek ]
  call void @llvm.lifetime.end.p0(ptr nonnull %479) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bn) #32
  br label %bb.bgf

bb.bfz:                                           ; preds = %bb.bcu, %bb.bcs
  call void @_ZN7doctest6detail7SubcaseD1Ev(ptr noundef nonnull align 8 dead_on_return(41) dereferenceable(41) %477) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %477) #32
  call void @llvm.lifetime.start.p0(ptr nonnull %506) #32
  call void @llvm.lifetime.start.p0(ptr nonnull %507) #32
  invoke void @_ZN7doctest6StringC1EPKc(ptr noundef nonnull align 8 dereferenceable(24) %507, ptr noundef nonnull @.str.81)
          to label %bb.bga unwind label %bb.bgg

bb.bga:                                           ; preds = %bb.bfz
  invoke void @_ZN7doctest6detail7SubcaseC1ERKNS_6StringEPKci(ptr noundef nonnull align 8 dereferenceable(41) %506, ptr noundef nonnull align 8 dereferenceable(24) %507, ptr noundef nonnull @.str.5, i32 noundef 755)
          to label %bb.bgb unwind label %bb.bgh

bb.bgb:                                           ; preds = %bb.bga
  call void @_ZN7doctest6StringD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %507) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %507) #32
  %i.bze = invoke noundef zeroext i1 @_ZNK7doctest6detail7SubcasecvbEv(ptr noundef nonnull align 8 dereferenceable(41) %506)
          to label %bb.bgc unwind label %bb.bgj

bb.bgc:                                           ; preds = %bb.bgb
  br i1 %i.bze, label %bb.bgd, label %bb.bjj

bb.bgd:                                           ; preds = %bb.bgc
  call void @llvm.lifetime.start.p0(ptr nonnull %i.br) #32
  store i32 65536, ptr %i.br, align 4, !tbaa !124
  %i.bzf = getelementptr inbounds nuw i8, ptr %i.br, i64 4
  store i32 77777, ptr %i.bzf, align 4, !tbaa !124
  %i.bzg = getelementptr inbounds nuw i8, ptr %i.br, i64 8
  store i32 1048576, ptr %i.bzg, align 4, !tbaa !124
  %i.bzh = ptrtoint ptr %i.bs to i64
  %i.bzi = getelementptr inbounds nuw i8, ptr %508, i64 16
  %i.bzj = getelementptr inbounds nuw i8, ptr %509, i64 8 ; 2 uses
  %i.bzk = getelementptr inbounds nuw i8, ptr %510, i64 8 ; 2 uses
  %i.bzl = getelementptr inbounds nuw i8, ptr %513, i64 16
  %i.bzm = getelementptr inbounds nuw i8, ptr %513, i64 8
  %.sroa.2701.0..sroa_idx = getelementptr inbounds nuw i8, ptr %516, i64 8
  %i.bzn = getelementptr inbounds nuw i8, ptr %515, i64 8 ; 2 uses
  %i.bzo = getelementptr inbounds nuw i8, ptr %514, i64 8
  %.sroa.2697.0..sroa_idx = getelementptr inbounds nuw i8, ptr %519, i64 8
  %i.bzp = getelementptr inbounds nuw i8, ptr %518, i64 8 ; 2 uses
  %.sroa.2693.0..sroa_idx = getelementptr inbounds nuw i8, ptr %522, i64 8
  %i.bzq = getelementptr inbounds nuw i8, ptr %521, i64 8 ; 2 uses
  %.sroa.2689.0..sroa_idx = getelementptr inbounds nuw i8, ptr %525, i64 8
  %i.bzr = getelementptr inbounds nuw i8, ptr %524, i64 8 ; 2 uses
  %i.bzs = getelementptr inbounds nuw i8, ptr %530, i64 8 ; 2 uses
  %i.bzt = getelementptr inbounds nuw i8, ptr %528, i64 16
  %i.bzu = getelementptr inbounds nuw i8, ptr %527, i64 8 ; 2 uses
  %i.bzv = getelementptr inbounds nuw i8, ptr %528, i64 8
  %i.bzw = getelementptr inbounds nuw i8, ptr %534, i64 8 ; 2 uses
  %i.bzx = getelementptr inbounds nuw i8, ptr %532, i64 16
  %i.bzy = getelementptr inbounds nuw i8, ptr %531, i64 8 ; 2 uses
  %i.bzz = getelementptr inbounds nuw i8, ptr %532, i64 8
  %i.caa = getelementptr inbounds nuw i8, ptr %508, i64 8
  br label %bb.bgk

bb.bge:                                           ; preds = %"_ZN7doctest6detail12ContextScopeIZL19DOCTEST_ANON_FUNC_7vE4$_15ED2Ev.exit"
  call void @llvm.lifetime.end.p0(ptr nonnull %i.br) #32
  br label %bb.bjj

bb.bgf:                                           ; preds = %bb.bfy, %bb.bcz
  %.pn4643.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn4643.pn.pn.pn.pn.pn.pn.pn.pn.pn, %bb.bfy ], [ %i.bvu, %bb.bcz ]
  call void @_ZN7doctest6detail7SubcaseD1Ev(ptr noundef nonnull align 8 dead_on_return(41) dereferenceable(41) %477) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %477) #32
  br label %bb.boe

bb.bgg:                                           ; preds = %bb.bfz
  %i.cab = landingpad { ptr, i32 }
          cleanup
  br label %bb.bgi

bb.bgh:                                           ; preds = %bb.bga
  %i.cac = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7doctest6StringD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %507) #32
  br label %bb.bgi

bb.bgi:                                           ; preds = %bb.bgh, %bb.bgg
  %.pn2978 = phi { ptr, i32 } [ %i.cac, %bb.bgh ], [ %i.cab, %bb.bgg ]
  call void @llvm.lifetime.end.p0(ptr nonnull %507) #32
  br label %bb.boe

bb.bgj:                                           ; preds = %bb.bgb
  %i.cad = landingpad { ptr, i32 }
          cleanup
  br label %bb.bjp

bb.bgk:                                           ; preds = %bb.bgd, %"_ZN7doctest6detail12ContextScopeIZL19DOCTEST_ANON_FUNC_7vE4$_15ED2Ev.exit"
  %.02808.idx9802 = phi i64 [ 0, %bb.bgd ], [ %.02808.add, %"_ZN7doctest6detail12ContextScopeIZL19DOCTEST_ANON_FUNC_7vE4$_15ED2Ev.exit" ] ; 2 uses
  %.02808.ptr = getelementptr inbounds nuw i8, ptr %i.br, i64 %.02808.idx9802
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bs) #32
  %i.cae = load i32, ptr %.02808.ptr, align 4, !tbaa !124
  store i32 %i.cae, ptr %i.bs, align 4, !tbaa !124
  call void @llvm.lifetime.start.p0(ptr nonnull %508) #32
  invoke void @_ZN7doctest6detail16ContextScopeBaseC2Ev(ptr noundef nonnull align 8 dereferenceable(24) %508)
          to label %bb.bgl unwind label %bb.bhu

bb.bgl:                                           ; preds = %bb.bgk
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @"_ZTVN7doctest6detail12ContextScopeIZL19DOCTEST_ANON_FUNC_7vE4$_15EE", i64 16), ptr %508, align 8, !tbaa !91, !alias.scope !944
  store i64 %i.bzh, ptr %i.bzi, align 8, !tbaa !128, !alias.scope !944
  call void @llvm.lifetime.start.p0(ptr nonnull %509) #32
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %509, i8 0, i64 16, i1 false)
  %i.caf = load i32, ptr %i.bs, align 4, !tbaa !124
  %i.cag = zext i32 %i.caf to i64
  store i8 6, ptr %509, align 8, !tbaa !113
  store i64 %i.cag, ptr %i.bzj, align 8, !tbaa !105
  call void @llvm.lifetime.start.p0(ptr nonnull %510) #32
  call void @llvm.lifetime.start.p0(ptr nonnull %511) #32
  call void @llvm.lifetime.start.p0(ptr nonnull %512) #32
  invoke void @_ZN7doctest6detail20ExpressionDecomposerC1ENS_10assertType4EnumE(ptr noundef nonnull align 4 dereferenceable(4) %512, i32 noundef 10)
          to label %bb.bgm unwind label %bb.bhv

bb.bgm:                                           ; preds = %bb.bgl
  %i.cah = load i8, ptr %509, align 8, !tbaa !113
  %i.cai = icmp eq i8 %i.cah, 6
  %i.caj = load i32, ptr %512, align 4, !tbaa !94
  %.sroa.22.0.insert.ext.i5739 = zext i32 %i.caj to i64
  %.sroa.22.0.insert.shift.i5740 = shl nuw i64 %.sroa.22.0.insert.ext.i5739, 32
  %.sroa.0.0.insert.ext.i5741 = zext i1 %i.cai to i64
  %.sroa.0.0.insert.insert.i5742 = or disjoint i64 %.sroa.22.0.insert.shift.i5740, %.sroa.0.0.insert.ext.i5741
  store i64 %.sroa.0.0.insert.insert.i5742, ptr %511, align 8
  invoke void @_ZN7doctest6detail14Expression_lhsIbEcvNS0_6ResultEEv(ptr dead_on_unwind nonnull writable sret(%"struct.doctest::detail::Result") align 8 %510, ptr noundef nonnull align 4 dereferenceable(8) %511)
          to label %bb.bgn unwind label %bb.bhv

bb.bgn:                                           ; preds = %bb.bgm
  %i.cak = invoke noundef zeroext i1 @_ZN7doctest6detail13decomp_assertENS_10assertType4EnumEPKciS4_RKNS0_6ResultE(i32 noundef 10, ptr noundef nonnull @.str.5, i32 noundef 768, ptr noundef nonnull @.str.78, ptr noundef nonnull align 8 dereferenceable(32) %510)
          to label %bb.bgo unwind label %bb.bhw   ; 0 uses

bb.bgo:                                           ; preds = %bb.bgn
  call void @_ZN7doctest6StringD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %i.bzk) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %512) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %511) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %510) #32
  call void @llvm.lifetime.start.p0(ptr nonnull %513) #32
  %i.cal = load i32, ptr %i.bs, align 4, !tbaa !124
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %513, i8 0, i64 24, i1 false)
  %i.cam = invoke noalias noundef nonnull dereferenceable(5) ptr @_Znwm(i64 noundef 5) #35
          to label %bb.bgp unwind label %_ZNSt12_Vector_baseIhSaIhEED2Ev.exit.i5744 ; 4 uses

_ZNSt12_Vector_baseIhSaIhEED2Ev.exit.i5744:       ; preds = %bb.bgo
  %i.can = landingpad { ptr, i32 }
          cleanup
  br label %.body5745

bb.bgp:                                           ; preds = %bb.bgo
  store ptr %i.cam, ptr %513, align 8, !tbaa !110
  %i.cao = getelementptr inbounds nuw i8, ptr %i.cam, i64 5 ; 2 uses
  store ptr %i.cao, ptr %i.bzl, align 8, !tbaa !114
  store i8 26, ptr %i.cam, align 1
  %.sroa.59225.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.cam, i64 1
  %1722 = call i32 @llvm.bswap.i32(i32 %i.cal)
  store i32 %1722, ptr %.sroa.59225.0..sroa_idx, align 1
  store ptr %i.cao, ptr %i.bzm, align 8, !tbaa !115
  call void @llvm.lifetime.start.p0(ptr nonnull %514) #32
  invoke void @_ZN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEEvE7to_cborERKSD_(ptr dead_on_unwind nonnull writable sret(%"class.std::vector") align 8 %514, ptr noundef nonnull align 8 dereferenceable(16) %509)
          to label %bb.bgq unwind label %bb.bhy

bb.bgq:                                           ; preds = %bb.bgp
  call void @llvm.lifetime.start.p0(ptr nonnull %515) #32
  call void @llvm.lifetime.start.p0(ptr nonnull %516) #32
  call void @llvm.lifetime.start.p0(ptr nonnull %517) #32
  invoke void @_ZN7doctest6detail20ExpressionDecomposerC1ENS_10assertType4EnumE(ptr noundef nonnull align 4 dereferenceable(4) %517, i32 noundef 10)
          to label %bb.bgr unwind label %bb.bhz

bb.bgr:                                           ; preds = %bb.bgq
  %i.cap = load i32, ptr %517, align 4, !tbaa !94
  store ptr %514, ptr %516, align 8
  store i32 %i.cap, ptr %.sroa.2701.0..sroa_idx, align 8
  invoke void @_ZN7doctest6detail14Expression_lhsIRKSt6vectorIhSaIhEEEeqIS6_EEDTcmcvveqclL_ZNS0_7declvalIS6_EEOT_vEEclsr7doctest6detailE7declvalISA_EEtlNS0_6ResultEEESB_(ptr dead_on_unwind nonnull writable sret(%"struct.doctest::detail::Result") align 8 %515, ptr noundef nonnull align 8 dereferenceable(12) %516, ptr noundef nonnull align 8 dereferenceable(24) %513)
          to label %bb.bgs unwind label %bb.bhz

bb.bgs:                                           ; preds = %bb.bgr
  %i.caq = invoke noundef zeroext i1 @_ZN7doctest6detail13decomp_assertENS_10assertType4EnumEPKciS4_RKNS0_6ResultE(i32 noundef 10, ptr noundef nonnull @.str.5, i32 noundef 782, ptr noundef nonnull @.str.27, ptr noundef nonnull align 8 dereferenceable(32) %515)
          to label %bb.bgt unwind label %bb.bia   ; 0 uses

bb.bgt:                                           ; preds = %bb.bgs
  call void @_ZN7doctest6StringD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %i.bzn) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %517) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %516) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %515) #32
  call void @llvm.lifetime.start.p0(ptr nonnull %518) #32
  call void @llvm.lifetime.start.p0(ptr nonnull %519) #32
  call void @llvm.lifetime.start.p0(ptr nonnull %520) #32
  invoke void @_ZN7doctest6detail20ExpressionDecomposerC1ENS_10assertType4EnumE(ptr noundef nonnull align 4 dereferenceable(4) %520, i32 noundef 10)
          to label %bb.bgu unwind label %bb.bic

bb.bgu:                                           ; preds = %bb.bgt
  %i.car = load ptr, ptr %i.bzo, align 8, !tbaa !115
  %i.cas = load ptr, ptr %514, align 8, !tbaa !110
  %i.cat = ptrtoint ptr %i.car to i64
  %i.cau = ptrtoint ptr %i.cas to i64
  %i.cav = sub i64 %i.cat, %i.cau
  %i.caw = load i32, ptr %520, align 4, !tbaa !94
  store i64 %i.cav, ptr %519, align 8
  store i32 %i.caw, ptr %.sroa.2697.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bt) #32
  store i32 5, ptr %i.bt, align 4, !tbaa !124
  invoke void @_ZN7doctest6detail14Expression_lhsImEeqIiEEDTcmcvveqclL_ZNS0_7declvalImEEOT_vEEclsr7doctest6detailE7declvalIS5_EEtlNS0_6ResultEEES6_(ptr dead_on_unwind nonnull writable sret(%"struct.doctest::detail::Result") align 8 %518, ptr noundef nonnull align 8 dereferenceable(12) %519, ptr noundef nonnull align 4 dereferenceable(4) %i.bt)
          to label %bb.bgv unwind label %bb.bid

bb.bgv:                                           ; preds = %bb.bgu
  %i.cax = invoke noundef zeroext i1 @_ZN7doctest6detail13decomp_assertENS_10assertType4EnumEPKciS4_RKNS0_6ResultE(i32 noundef 10, ptr noundef nonnull @.str.5, i32 noundef 783, ptr noundef nonnull @.str.45, ptr noundef nonnull align 8 dereferenceable(32) %518)
          to label %bb.bgw unwind label %bb.bie   ; 0 uses

bb.bgw:                                           ; preds = %bb.bgv
  call void @_ZN7doctest6StringD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %i.bzp) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bt) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %520) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %519) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %518) #32
  call void @llvm.lifetime.start.p0(ptr nonnull %521) #32
  call void @llvm.lifetime.start.p0(ptr nonnull %522) #32
  call void @llvm.lifetime.start.p0(ptr nonnull %523) #32
  invoke void @_ZN7doctest6detail20ExpressionDecomposerC1ENS_10assertType4EnumE(ptr noundef nonnull align 4 dereferenceable(4) %523, i32 noundef 10)
          to label %bb.bgx unwind label %bb.bih

bb.bgx:                                           ; preds = %bb.bgw
  %i.cay = load ptr, ptr %514, align 8, !tbaa !110
  %i.caz = load i32, ptr %523, align 4, !tbaa !94
  store ptr %i.cay, ptr %522, align 8
  store i32 %i.caz, ptr %.sroa.2693.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bu) #32
  store i32 26, ptr %i.bu, align 4, !tbaa !124
  invoke void @_ZN7doctest6detail14Expression_lhsIRKhEeqIiEEDTcmcvveqclL_ZNS0_7declvalIS3_EEOT_vEEclsr7doctest6detailE7declvalIS7_EEtlNS0_6ResultEEES8_(ptr dead_on_unwind nonnull writable sret(%"struct.doctest::detail::Result") align 8 %521, ptr noundef nonnull align 8 dereferenceable(12) %522, ptr noundef nonnull align 4 dereferenceable(4) %i.bu)
          to label %bb.bgy unwind label %bb.bii

bb.bgy:                                           ; preds = %bb.bgx
  %i.cba = invoke noundef zeroext i1 @_ZN7doctest6detail13decomp_assertENS_10assertType4EnumEPKciS4_RKNS0_6ResultE(i32 noundef 10, ptr noundef nonnull @.str.5, i32 noundef 786, ptr noundef nonnull @.str.70, ptr noundef nonnull align 8 dereferenceable(32) %521)
          to label %bb.bgz unwind label %bb.bij   ; 0 uses

bb.bgz:                                           ; preds = %bb.bgy
  call void @_ZN7doctest6StringD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %i.bzq) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bu) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %523) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %522) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %521) #32
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bv) #32
  %i.cbb = load ptr, ptr %514, align 8, !tbaa !110
  %i.cbc = getelementptr inbounds nuw i8, ptr %i.cbb, i64 1
  %i.cbd = load i32, ptr %i.cbc, align 1
  %i.cbe = call i32 @llvm.bswap.i32(i32 %i.cbd)
  store i32 %i.cbe, ptr %i.bv, align 4, !tbaa !124
  call void @llvm.lifetime.start.p0(ptr nonnull %524) #32
  call void @llvm.lifetime.start.p0(ptr nonnull %525) #32
  call void @llvm.lifetime.start.p0(ptr nonnull %526) #32
  invoke void @_ZN7doctest6detail20ExpressionDecomposerC1ENS_10assertType4EnumE(ptr noundef nonnull align 4 dereferenceable(4) %526, i32 noundef 10)
          to label %bb.bha unwind label %bb.bim

bb.bha:                                           ; preds = %bb.bgz
  %i.cbf = load i32, ptr %526, align 4, !tbaa !94
  store ptr %i.bv, ptr %525, align 8
  store i32 %i.cbf, ptr %.sroa.2689.0..sroa_idx, align 8
  invoke void @_ZN7doctest6detail14Expression_lhsIRKjEeqIS3_EEDTcmcvveqclL_ZNS0_7declvalIS3_EEOT_vEEclsr7doctest6detailE7declvalIS7_EEtlNS0_6ResultEEES8_(ptr dead_on_unwind nonnull writable sret(%"struct.doctest::detail::Result") align 8 %524, ptr noundef nonnull align 8 dereferenceable(12) %525, ptr noundef nonnull align 4 dereferenceable(4) %i.bs)
          to label %bb.bhb unwind label %bb.bim

bb.bhb:                                           ; preds = %bb.bha
  %i.cbg = invoke noundef zeroext i1 @_ZN7doctest6detail13decomp_assertENS_10assertType4EnumEPKciS4_RKNS0_6ResultE(i32 noundef 10, ptr noundef nonnull @.str.5, i32 noundef 791, ptr noundef nonnull @.str.68, ptr noundef nonnull align 8 dereferenceable(32) %524)
          to label %bb.bhc unwind label %bb.bin   ; 0 uses

bb.bhc:                                           ; preds = %bb.bhb
  call void @_ZN7doctest6StringD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %i.bzr) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %526) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %525) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %524) #32
  call void @llvm.lifetime.start.p0(ptr nonnull %527) #32
  call void @llvm.lifetime.start.p0(ptr nonnull %528) #32
  call void @llvm.lifetime.start.p0(ptr nonnull %529) #32
  invoke void @_ZN7doctest6detail20ExpressionDecomposerC1ENS_10assertType4EnumE(ptr noundef nonnull align 4 dereferenceable(4) %529, i32 noundef 10)
          to label %bb.bhd unwind label %bb.bip

bb.bhd:                                           ; preds = %bb.bhc
  call void @llvm.lifetime.start.p0(ptr nonnull %530) #32
  invoke void @_ZN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEEvE9from_cborIRKSC_EESD_OT_bbNS0_6detail18cbor_tag_handler_tE(ptr dead_on_unwind nonnull writable sret(%"class.nlohmann::json_abi_v3_12_0::basic_json") align 8 %530, ptr noundef nonnull align 8 dereferenceable(24) %514, i1 noundef zeroext true, i1 noundef zeroext true, i32 noundef 0)
          to label %bb.bhe unwind label %bb.biq

bb.bhe:                                           ; preds = %bb.bhd
  call void @llvm.experimental.noalias.scope.decl(metadata !945)
  %i.cbh = load i32, ptr %529, align 4, !tbaa !94, !noalias !945
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(20) %528, ptr noundef nonnull align 8 dereferenceable(16) %530, i64 16, i1 false), !tbaa.struct !117
  store i8 0, ptr %530, align 8, !tbaa !113, !noalias !945
  store ptr null, ptr %i.bzs, align 8, !tbaa !105, !noalias !945
  store i32 %i.cbh, ptr %i.bzt, align 8, !tbaa !119, !alias.scope !945
  invoke void @_ZN7doctest6detail14Expression_lhsIN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS3_14adl_serializerES6_IhSaIhEEvEEEeqIRKSG_EEDTcmcvveqclL_ZNS0_7declvalISG_EEOT_vEEclsr7doctest6detailE7declvalISM_EEtlNS0_6ResultEEESN_(ptr dead_on_unwind nonnull writable sret(%"struct.doctest::detail::Result") align 8 %527, ptr noundef nonnull align 8 dereferenceable(20) %528, ptr noundef nonnull align 8 dereferenceable(16) %509)
          to label %bb.bhf unwind label %bb.bir

bb.bhf:                                           ; preds = %bb.bhe
  %i.cbi = invoke noundef zeroext i1 @_ZN7doctest6detail13decomp_assertENS_10assertType4EnumEPKciS4_RKNS0_6ResultE(i32 noundef 10, ptr noundef nonnull @.str.5, i32 noundef 794, ptr noundef nonnull @.str.30, ptr noundef nonnull align 8 dereferenceable(32) %527)
          to label %bb.bhg unwind label %bb.bis   ; 0 uses

bb.bhg:                                           ; preds = %bb.bhf
  call void @_ZN7doctest6StringD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %i.bzu) #32
  %i.cbj = load i8, ptr %528, align 8, !tbaa !104
  invoke void @_ZN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEEvE10json_value7destroyENS0_6detail7value_tE(ptr noundef nonnull align 8 dereferenceable(8) %i.bzv, i8 noundef zeroext %i.cbj)
          to label %_ZN7doctest6detail14Expression_lhsIN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS3_14adl_serializerES6_IhSaIhEEvEEED2Ev.exit5756 unwind label %bb.bhh, !inline_history !111

bb.bhh:                                           ; preds = %bb.bhg
  %i.cbk = landingpad { ptr, i32 }
          catch ptr null
  %i.cbl = extractvalue { ptr, i32 } %i.cbk, 0
  call void @__clang_call_terminate(ptr %i.cbl) #33, !inline_history !111
  unreachable

_ZN7doctest6detail14Expression_lhsIN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS3_14adl_serializerES6_IhSaIhEEvEEED2Ev.exit5756: ; preds = %bb.bhg
  %i.cbm = load i8, ptr %530, align 8, !tbaa !104
  invoke void @_ZN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEEvE10json_value7destroyENS0_6detail7value_tE(ptr noundef nonnull align 8 dereferenceable(8) %i.bzs, i8 noundef zeroext %i.cbm)
          to label %_ZN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEEvED2Ev.exit5757 unwind label %bb.bhi, !inline_history !111

bb.bhi:                                           ; preds = %_ZN7doctest6detail14Expression_lhsIN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS3_14adl_serializerES6_IhSaIhEEvEEED2Ev.exit5756
  %i.cbn = landingpad { ptr, i32 }
          catch ptr null
  %i.cbo = extractvalue { ptr, i32 } %i.cbn, 0
  call void @__clang_call_terminate(ptr %i.cbo) #33, !inline_history !111
  unreachable

_ZN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEEvED2Ev.exit5757: ; preds = %_ZN7doctest6detail14Expression_lhsIN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS3_14adl_serializerES6_IhSaIhEEvEEED2Ev.exit5756
  call void @llvm.lifetime.end.p0(ptr nonnull %530) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %529) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %528) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %527) #32
  call void @llvm.lifetime.start.p0(ptr nonnull %531) #32
  call void @llvm.lifetime.start.p0(ptr nonnull %532) #32
  call void @llvm.lifetime.start.p0(ptr nonnull %533) #32
  invoke void @_ZN7doctest6detail20ExpressionDecomposerC1ENS_10assertType4EnumE(ptr noundef nonnull align 4 dereferenceable(4) %533, i32 noundef 10)
          to label %bb.bhj unwind label %bb.biw

bb.bhj:                                           ; preds = %_ZN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEEvED2Ev.exit5757
  call void @llvm.lifetime.start.p0(ptr nonnull %534) #32
  invoke void @_ZN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEEvE9from_cborIRKSC_EESD_OT_bbNS0_6detail18cbor_tag_handler_tE(ptr dead_on_unwind nonnull writable sret(%"class.nlohmann::json_abi_v3_12_0::basic_json") align 8 %534, ptr noundef nonnull align 8 dereferenceable(24) %514, i1 noundef zeroext true, i1 noundef zeroext false, i32 noundef 0)
          to label %bb.bhk unwind label %bb.bix

bb.bhk:                                           ; preds = %bb.bhj
  call void @llvm.experimental.noalias.scope.decl(metadata !946)
  %i.cbp = load i32, ptr %533, align 4, !tbaa !94, !noalias !946
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(20) %532, ptr noundef nonnull align 8 dereferenceable(16) %534, i64 16, i1 false), !tbaa.struct !117
  store i8 0, ptr %534, align 8, !tbaa !113, !noalias !946
  store ptr null, ptr %i.bzw, align 8, !tbaa !105, !noalias !946
  store i32 %i.cbp, ptr %i.bzx, align 8, !tbaa !119, !alias.scope !946
  invoke void @_ZN7doctest6detail14Expression_lhsIN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS3_14adl_serializerES6_IhSaIhEEvEEEeqIRKSG_EEDTcmcvveqclL_ZNS0_7declvalISG_EEOT_vEEclsr7doctest6detailE7declvalISM_EEtlNS0_6ResultEEESN_(ptr dead_on_unwind nonnull writable sret(%"struct.doctest::detail::Result") align 8 %531, ptr noundef nonnull align 8 dereferenceable(20) %532, ptr noundef nonnull align 8 dereferenceable(16) %509)
          to label %bb.bhl unwind label %bb.biy

bb.bhl:                                           ; preds = %bb.bhk
  %i.cbq = invoke noundef zeroext i1 @_ZN7doctest6detail13decomp_assertENS_10assertType4EnumEPKciS4_RKNS0_6ResultE(i32 noundef 10, ptr noundef nonnull @.str.5, i32 noundef 795, ptr noundef nonnull @.str.31, ptr noundef nonnull align 8 dereferenceable(32) %531)
          to label %bb.bhm unwind label %bb.biz   ; 0 uses

bb.bhm:                                           ; preds = %bb.bhl
  call void @_ZN7doctest6StringD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %i.bzy) #32
  %i.cbr = load i8, ptr %532, align 8, !tbaa !104
  invoke void @_ZN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEEvE10json_value7destroyENS0_6detail7value_tE(ptr noundef nonnull align 8 dereferenceable(8) %i.bzz, i8 noundef zeroext %i.cbr)
          to label %_ZN7doctest6detail14Expression_lhsIN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS3_14adl_serializerES6_IhSaIhEEvEEED2Ev.exit5758 unwind label %bb.bhn, !inline_history !111

bb.bhn:                                           ; preds = %bb.bhm
  %i.cbs = landingpad { ptr, i32 }
end_hunk_4
begin_hunk_5_@_ZL19DOCTEST_ANON_FUNC_7v:bb.a
  br label %bb.bja

bb.biz:                                           ; preds = %bb.bhl
  %i.cdb = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7doctest6StringD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %i.bzy) #32
  br label %bb.bja

bb.bja:                                           ; preds = %bb.biz, %bb.biy
  %.pn4611 = phi { ptr, i32 } [ %i.cdb, %bb.biz ], [ %i.cda, %bb.biy ]
  call void @_ZN7doctest6detail14Expression_lhsIN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS3_14adl_serializerES6_IhSaIhEEvEEED2Ev(ptr noundef nonnull align 8 dead_on_return(20) dereferenceable(20) %532) #32
  call void @_ZN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEEvED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %534) #32
  br label %bb.bjb

bb.bjb:                                           ; preds = %bb.bja, %bb.bix
  %.pn4611.pn.pn = phi { ptr, i32 } [ %.pn4611, %bb.bja ], [ %i.ccz, %bb.bix ]
  call void @llvm.lifetime.end.p0(ptr nonnull %534) #32
  br label %bb.bjc

bb.bjc:                                           ; preds = %bb.bjb, %bb.biw
  %.pn4611.pn.pn.pn = phi { ptr, i32 } [ %.pn4611.pn.pn, %bb.bjb ], [ %i.ccy, %bb.biw ]
  call void @llvm.lifetime.end.p0(ptr nonnull %533) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %532) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %531) #32
  br label %bb.bjd

bb.bjd:                                           ; preds = %bb.bjc, %bb.biv, %bb.bio
  %.pn4611.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn4611.pn.pn.pn, %bb.bjc ], [ %.pn4606.pn.pn.pn, %bb.biv ], [ %.pn4604, %bb.bio ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bv) #32
  br label %bb.bje

bb.bje:                                           ; preds = %bb.bjd, %bb.bil, %bb.big, %bb.bib
  %.pn4611.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn4611.pn.pn.pn.pn, %bb.bjd ], [ %.pn4601.pn, %bb.bil ], [ %.pn4597.pn.pn, %bb.big ], [ %.pn4595, %bb.bib ] ; 2 uses
  %i.cdc = load ptr, ptr %514, align 8, !tbaa !110 ; 2 uses
  %.not.i.i.i5767 = icmp eq ptr %i.cdc, null
  br i1 %.not.i.i.i5767, label %_ZNSt6vectorIhSaIhEED2Ev.exit5769, label %bb.bjf

bb.bjf:                                           ; preds = %bb.bje
  call void @_ZdlPv(ptr noundef nonnull %i.cdc) #34
  br label %_ZNSt6vectorIhSaIhEED2Ev.exit5769

_ZNSt6vectorIhSaIhEED2Ev.exit5769:                ; preds = %bb.bjf, %bb.bje, %bb.bhy
  %.pn4611.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %i.ccj, %bb.bhy ], [ %.pn4611.pn.pn.pn.pn.pn, %bb.bje ], [ %.pn4611.pn.pn.pn.pn.pn, %bb.bjf ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %514) #32
  %i.cdd = load ptr, ptr %513, align 8, !tbaa !110 ; 2 uses
  %.not.i.i.i5770 = icmp eq ptr %i.cdd, null
  br i1 %.not.i.i.i5770, label %.body5745, label %bb.bjg

bb.bjg:                                           ; preds = %_ZNSt6vectorIhSaIhEED2Ev.exit5769
  call void @_ZdlPv(ptr noundef nonnull %i.cdd) #34
  br label %.body5745

.body5745:                                        ; preds = %bb.bjg, %_ZNSt6vectorIhSaIhEED2Ev.exit5769, %_ZNSt12_Vector_baseIhSaIhEED2Ev.exit.i5744
  %.pn4611.pn.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %i.can, %_ZNSt12_Vector_baseIhSaIhEED2Ev.exit.i5744 ], [ %.pn4611.pn.pn.pn.pn.pn.pn, %bb.bjg ], [ %.pn4611.pn.pn.pn.pn.pn.pn, %_ZNSt6vectorIhSaIhEED2Ev.exit5769 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %513) #32
  br label %bb.bjh

bb.bjh:                                           ; preds = %.body5745, %bb.bhx
  %.pn4611.pn.pn.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn4611.pn.pn.pn.pn.pn.pn.pn, %.body5745 ], [ %.pn4592.pn, %bb.bhx ]
  call void @_ZN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEEvED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %509) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %509) #32
  call void @"_ZN7doctest6detail12ContextScopeIZL19DOCTEST_ANON_FUNC_7vE4$_15ED2Ev"(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %508) #32
  br label %bb.bji

bb.bji:                                           ; preds = %bb.bjh, %bb.bhu
  %.pn4611.pn.pn.pn.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn4611.pn.pn.pn.pn.pn.pn.pn.pn, %bb.bjh ], [ %i.ccg, %bb.bhu ]
  call void @llvm.lifetime.end.p0(ptr nonnull %508) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bs) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %i.br) #32
  br label %bb.bjp

bb.bjj:                                           ; preds = %bb.bge, %bb.bgc
  call void @_ZN7doctest6detail7SubcaseD1Ev(ptr noundef nonnull align 8 dead_on_return(41) dereferenceable(41) %506) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %506) #32
  call void @llvm.lifetime.start.p0(ptr nonnull %535) #32
  call void @llvm.lifetime.start.p0(ptr nonnull %536) #32
  invoke void @_ZN7doctest6StringC1EPKc(ptr noundef nonnull align 8 dereferenceable(24) %536, ptr noundef nonnull @.str.82)
          to label %bb.bjk unwind label %bb.bjq

bb.bjk:                                           ; preds = %bb.bjj
  invoke void @_ZN7doctest6detail7SubcaseC1ERKNS_6StringEPKci(ptr noundef nonnull align 8 dereferenceable(41) %535, ptr noundef nonnull align 8 dereferenceable(24) %536, ptr noundef nonnull @.str.5, i32 noundef 799)
          to label %bb.bjl unwind label %bb.bjr

bb.bjl:                                           ; preds = %bb.bjk
  call void @_ZN7doctest6StringD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %536) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %536) #32
  %i.cde = invoke noundef zeroext i1 @_ZNK7doctest6detail7SubcasecvbEv(ptr noundef nonnull align 8 dereferenceable(41) %535)
          to label %bb.bjm unwind label %bb.bjt

bb.bjm:                                           ; preds = %bb.bjl
  br i1 %i.cde, label %bb.bjn, label %bb.bmt

bb.bjn:                                           ; preds = %bb.bjm
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bw) #32
  store i64 4294967296, ptr %i.bw, align 8, !tbaa !121
  %i.cdf = getelementptr inbounds nuw i8, ptr %i.bw, i64 8
  store i64 4611686018427387903, ptr %i.cdf, align 8, !tbaa !121
  %i.cdg = ptrtoint ptr %i.bx to i64
  %i.cdh = getelementptr inbounds nuw i8, ptr %537, i64 16
  %i.cdi = getelementptr inbounds nuw i8, ptr %538, i64 8 ; 2 uses
  %i.cdj = getelementptr inbounds nuw i8, ptr %539, i64 8 ; 2 uses
  %i.cdk = getelementptr inbounds nuw i8, ptr %542, i64 16
  %i.cdl = getelementptr inbounds nuw i8, ptr %542, i64 8
  %.sroa.2676.0..sroa_idx = getelementptr inbounds nuw i8, ptr %545, i64 8
  %i.cdm = getelementptr inbounds nuw i8, ptr %544, i64 8 ; 2 uses
  %i.cdn = getelementptr inbounds nuw i8, ptr %543, i64 8
  %.sroa.2672.0..sroa_idx = getelementptr inbounds nuw i8, ptr %548, i64 8
  %i.cdo = getelementptr inbounds nuw i8, ptr %547, i64 8 ; 2 uses
  %.sroa.2668.0..sroa_idx = getelementptr inbounds nuw i8, ptr %551, i64 8
  %i.cdp = getelementptr inbounds nuw i8, ptr %550, i64 8 ; 2 uses
  %.sroa.2664.0..sroa_idx = getelementptr inbounds nuw i8, ptr %554, i64 8
  %i.cdq = getelementptr inbounds nuw i8, ptr %553, i64 8 ; 2 uses
  %i.cdr = getelementptr inbounds nuw i8, ptr %559, i64 8 ; 2 uses
  %i.cds = getelementptr inbounds nuw i8, ptr %557, i64 16
  %i.cdt = getelementptr inbounds nuw i8, ptr %556, i64 8 ; 2 uses
  %i.cdu = getelementptr inbounds nuw i8, ptr %557, i64 8
  %i.cdv = getelementptr inbounds nuw i8, ptr %563, i64 8 ; 2 uses
  %i.cdw = getelementptr inbounds nuw i8, ptr %561, i64 16
  %i.cdx = getelementptr inbounds nuw i8, ptr %560, i64 8 ; 2 uses
  %i.cdy = getelementptr inbounds nuw i8, ptr %561, i64 8
  %i.cdz = getelementptr inbounds nuw i8, ptr %537, i64 8
  br label %bb.bju

bb.bjo:                                           ; preds = %"_ZN7doctest6detail12ContextScopeIZL19DOCTEST_ANON_FUNC_7vE4$_16ED2Ev.exit"
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bw) #32
  br label %bb.bmt

bb.bjp:                                           ; preds = %bb.bji, %bb.bgj
  %.pn4611.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn4611.pn.pn.pn.pn.pn.pn.pn.pn.pn, %bb.bji ], [ %i.cad, %bb.bgj ]
  call void @_ZN7doctest6detail7SubcaseD1Ev(ptr noundef nonnull align 8 dead_on_return(41) dereferenceable(41) %506) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %506) #32
  br label %bb.boe

bb.bjq:                                           ; preds = %bb.bjj
  %i.cea = landingpad { ptr, i32 }
          cleanup
  br label %bb.bjs

bb.bjr:                                           ; preds = %bb.bjk
  %i.ceb = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7doctest6StringD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %536) #32
  br label %bb.bjs

bb.bjs:                                           ; preds = %bb.bjr, %bb.bjq
  %.pn2981 = phi { ptr, i32 } [ %i.ceb, %bb.bjr ], [ %i.cea, %bb.bjq ]
  call void @llvm.lifetime.end.p0(ptr nonnull %536) #32
  br label %bb.boe

bb.bjt:                                           ; preds = %bb.bjl
  %i.cec = landingpad { ptr, i32 }
          cleanup
  br label %bb.bmu

bb.bju:                                           ; preds = %bb.bjn, %"_ZN7doctest6detail12ContextScopeIZL19DOCTEST_ANON_FUNC_7vE4$_16ED2Ev.exit"
  %.02809.idx9803 = phi i64 [ 0, %bb.bjn ], [ %.02809.add, %"_ZN7doctest6detail12ContextScopeIZL19DOCTEST_ANON_FUNC_7vE4$_16ED2Ev.exit" ] ; 2 uses
  %.02809.ptr = getelementptr inbounds nuw i8, ptr %i.bw, i64 %.02809.idx9803
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bx) #32
  %i.ced = load i64, ptr %.02809.ptr, align 8, !tbaa !121
  store i64 %i.ced, ptr %i.bx, align 8, !tbaa !121
  call void @llvm.lifetime.start.p0(ptr nonnull %537) #32
  invoke void @_ZN7doctest6detail16ContextScopeBaseC2Ev(ptr noundef nonnull align 8 dereferenceable(24) %537)
          to label %bb.bjv unwind label %bb.ble

bb.bjv:                                           ; preds = %bb.bju
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @"_ZTVN7doctest6detail12ContextScopeIZL19DOCTEST_ANON_FUNC_7vE4$_16EE", i64 16), ptr %537, align 8, !tbaa !91, !alias.scope !947
  store i64 %i.cdg, ptr %i.cdh, align 8, !tbaa !123, !alias.scope !947
  call void @llvm.lifetime.start.p0(ptr nonnull %538) #32
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %538, i8 0, i64 16, i1 false)
  %i.cee = load i64, ptr %i.bx, align 8, !tbaa !121
  store i8 6, ptr %538, align 8, !tbaa !113
  store i64 %i.cee, ptr %i.cdi, align 8, !tbaa !105
  call void @llvm.lifetime.start.p0(ptr nonnull %539) #32
  call void @llvm.lifetime.start.p0(ptr nonnull %540) #32
  call void @llvm.lifetime.start.p0(ptr nonnull %541) #32
  invoke void @_ZN7doctest6detail20ExpressionDecomposerC1ENS_10assertType4EnumE(ptr noundef nonnull align 4 dereferenceable(4) %541, i32 noundef 10)
          to label %bb.bjw unwind label %bb.blf

bb.bjw:                                           ; preds = %bb.bjv
  %i.cef = load i8, ptr %538, align 8, !tbaa !113
  %i.ceg = icmp eq i8 %i.cef, 6
  %i.ceh = load i32, ptr %541, align 4, !tbaa !94
  %.sroa.22.0.insert.ext.i5773 = zext i32 %i.ceh to i64
  %.sroa.22.0.insert.shift.i5774 = shl nuw i64 %.sroa.22.0.insert.ext.i5773, 32
  %.sroa.0.0.insert.ext.i5775 = zext i1 %i.ceg to i64
  %.sroa.0.0.insert.insert.i5776 = or disjoint i64 %.sroa.22.0.insert.shift.i5774, %.sroa.0.0.insert.ext.i5775
  store i64 %.sroa.0.0.insert.insert.i5776, ptr %540, align 8
  invoke void @_ZN7doctest6detail14Expression_lhsIbEcvNS0_6ResultEEv(ptr dead_on_unwind nonnull writable sret(%"struct.doctest::detail::Result") align 8 %539, ptr noundef nonnull align 4 dereferenceable(8) %540)
          to label %bb.bjx unwind label %bb.blf

bb.bjx:                                           ; preds = %bb.bjw
  %i.cei = invoke noundef zeroext i1 @_ZN7doctest6detail13decomp_assertENS_10assertType4EnumEPKciS4_RKNS0_6ResultE(i32 noundef 10, ptr noundef nonnull @.str.5, i32 noundef 812, ptr noundef nonnull @.str.78, ptr noundef nonnull align 8 dereferenceable(32) %539)
          to label %bb.bjy unwind label %bb.blg   ; 0 uses

bb.bjy:                                           ; preds = %bb.bjx
  call void @_ZN7doctest6StringD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %i.cdj) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %541) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %540) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %539) #32
  call void @llvm.lifetime.start.p0(ptr nonnull %542) #32
  %1723 = load i64, ptr %i.bx, align 8, !tbaa !121
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %542, i8 0, i64 24, i1 false)
  %i.cej = invoke noalias noundef nonnull dereferenceable(9) ptr @_Znwm(i64 noundef 9) #35
          to label %bb.bjz unwind label %_ZNSt12_Vector_baseIhSaIhEED2Ev.exit.i5778 ; 4 uses

_ZNSt12_Vector_baseIhSaIhEED2Ev.exit.i5778:       ; preds = %bb.bjy
  %i.cek = landingpad { ptr, i32 }
          cleanup
  br label %.body5779

bb.bjz:                                           ; preds = %bb.bjy
  store ptr %i.cej, ptr %542, align 8, !tbaa !110
  %i.cel = getelementptr inbounds nuw i8, ptr %i.cej, i64 9 ; 2 uses
  store ptr %i.cel, ptr %i.cdk, align 8, !tbaa !114
  store i8 27, ptr %i.cej, align 1
  %.sroa.59209.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.cej, i64 1
  %1724 = call i64 @llvm.bswap.i64(i64 %1723)
  store i64 %1724, ptr %.sroa.59209.0..sroa_idx, align 1
  store ptr %i.cel, ptr %i.cdl, align 8, !tbaa !115
  call void @llvm.lifetime.start.p0(ptr nonnull %543) #32
  invoke void @_ZN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEEvE7to_cborERKSD_(ptr dead_on_unwind nonnull writable sret(%"class.std::vector") align 8 %543, ptr noundef nonnull align 8 dereferenceable(16) %538)
          to label %bb.bka unwind label %bb.bli

bb.bka:                                           ; preds = %bb.bjz
  call void @llvm.lifetime.start.p0(ptr nonnull %544) #32
  call void @llvm.lifetime.start.p0(ptr nonnull %545) #32
  call void @llvm.lifetime.start.p0(ptr nonnull %546) #32
  invoke void @_ZN7doctest6detail20ExpressionDecomposerC1ENS_10assertType4EnumE(ptr noundef nonnull align 4 dereferenceable(4) %546, i32 noundef 10)
          to label %bb.bkb unwind label %bb.blj

bb.bkb:                                           ; preds = %bb.bka
  %i.cem = load i32, ptr %546, align 4, !tbaa !94
  store ptr %543, ptr %545, align 8
  store i32 %i.cem, ptr %.sroa.2676.0..sroa_idx, align 8
  invoke void @_ZN7doctest6detail14Expression_lhsIRKSt6vectorIhSaIhEEEeqIS6_EEDTcmcvveqclL_ZNS0_7declvalIS6_EEOT_vEEclsr7doctest6detailE7declvalISA_EEtlNS0_6ResultEEESB_(ptr dead_on_unwind nonnull writable sret(%"struct.doctest::detail::Result") align 8 %544, ptr noundef nonnull align 8 dereferenceable(12) %545, ptr noundef nonnull align 8 dereferenceable(24) %542)
          to label %bb.bkc unwind label %bb.blj

bb.bkc:                                           ; preds = %bb.bkb
  %i.cen = invoke noundef zeroext i1 @_ZN7doctest6detail13decomp_assertENS_10assertType4EnumEPKciS4_RKNS0_6ResultE(i32 noundef 10, ptr noundef nonnull @.str.5, i32 noundef 830, ptr noundef nonnull @.str.27, ptr noundef nonnull align 8 dereferenceable(32) %544)
          to label %bb.bkd unwind label %bb.blk   ; 0 uses

bb.bkd:                                           ; preds = %bb.bkc
  call void @_ZN7doctest6StringD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %i.cdm) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %546) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %545) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %544) #32
  call void @llvm.lifetime.start.p0(ptr nonnull %547) #32
  call void @llvm.lifetime.start.p0(ptr nonnull %548) #32
  call void @llvm.lifetime.start.p0(ptr nonnull %549) #32
  invoke void @_ZN7doctest6detail20ExpressionDecomposerC1ENS_10assertType4EnumE(ptr noundef nonnull align 4 dereferenceable(4) %549, i32 noundef 10)
          to label %bb.bke unwind label %bb.blm

bb.bke:                                           ; preds = %bb.bkd
  %i.ceo = load ptr, ptr %i.cdn, align 8, !tbaa !115
  %i.cep = load ptr, ptr %543, align 8, !tbaa !110
  %i.ceq = ptrtoint ptr %i.ceo to i64
  %i.cer = ptrtoint ptr %i.cep to i64
  %i.ces = sub i64 %i.ceq, %i.cer
  %i.cet = load i32, ptr %549, align 4, !tbaa !94
  store i64 %i.ces, ptr %548, align 8
  store i32 %i.cet, ptr %.sroa.2672.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.by) #32
  store i32 9, ptr %i.by, align 4, !tbaa !124
  invoke void @_ZN7doctest6detail14Expression_lhsImEeqIiEEDTcmcvveqclL_ZNS0_7declvalImEEOT_vEEclsr7doctest6detailE7declvalIS5_EEtlNS0_6ResultEEES6_(ptr dead_on_unwind nonnull writable sret(%"struct.doctest::detail::Result") align 8 %547, ptr noundef nonnull align 8 dereferenceable(12) %548, ptr noundef nonnull align 4 dereferenceable(4) %i.by)
          to label %bb.bkf unwind label %bb.bln

bb.bkf:                                           ; preds = %bb.bke
  %i.ceu = invoke noundef zeroext i1 @_ZN7doctest6detail13decomp_assertENS_10assertType4EnumEPKciS4_RKNS0_6ResultE(i32 noundef 10, ptr noundef nonnull @.str.5, i32 noundef 831, ptr noundef nonnull @.str.39, ptr noundef nonnull align 8 dereferenceable(32) %547)
          to label %bb.bkg unwind label %bb.blo   ; 0 uses

bb.bkg:                                           ; preds = %bb.bkf
  call void @_ZN7doctest6StringD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %i.cdo) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %i.by) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %549) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %548) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %547) #32
  call void @llvm.lifetime.start.p0(ptr nonnull %550) #32
  call void @llvm.lifetime.start.p0(ptr nonnull %551) #32
  call void @llvm.lifetime.start.p0(ptr nonnull %552) #32
  invoke void @_ZN7doctest6detail20ExpressionDecomposerC1ENS_10assertType4EnumE(ptr noundef nonnull align 4 dereferenceable(4) %552, i32 noundef 10)
          to label %bb.bkh unwind label %bb.blr

bb.bkh:                                           ; preds = %bb.bkg
  %i.cev = load ptr, ptr %543, align 8, !tbaa !110
  %i.cew = load i32, ptr %552, align 4, !tbaa !94
  store ptr %i.cev, ptr %551, align 8
  store i32 %i.cew, ptr %.sroa.2668.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bz) #32
  store i32 27, ptr %i.bz, align 4, !tbaa !124
  invoke void @_ZN7doctest6detail14Expression_lhsIRKhEeqIiEEDTcmcvveqclL_ZNS0_7declvalIS3_EEOT_vEEclsr7doctest6detailE7declvalIS7_EEtlNS0_6ResultEEES8_(ptr dead_on_unwind nonnull writable sret(%"struct.doctest::detail::Result") align 8 %550, ptr noundef nonnull align 8 dereferenceable(12) %551, ptr noundef nonnull align 4 dereferenceable(4) %i.bz)
          to label %bb.bki unwind label %bb.bls

bb.bki:                                           ; preds = %bb.bkh
  %i.cex = invoke noundef zeroext i1 @_ZN7doctest6detail13decomp_assertENS_10assertType4EnumEPKciS4_RKNS0_6ResultE(i32 noundef 10, ptr noundef nonnull @.str.5, i32 noundef 834, ptr noundef nonnull @.str.72, ptr noundef nonnull align 8 dereferenceable(32) %550)
          to label %bb.bkj unwind label %bb.blt   ; 0 uses

bb.bkj:                                           ; preds = %bb.bki
  call void @_ZN7doctest6StringD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %i.cdp) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bz) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %552) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %551) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %550) #32
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ca) #32
  %i.cey = load ptr, ptr %543, align 8, !tbaa !110 ; 8 uses
  %i.cez = getelementptr inbounds nuw i8, ptr %i.cey, i64 1
  %i.cfa = load i8, ptr %i.cez, align 1, !tbaa !105
  %i.cfb = zext i8 %i.cfa to i64
  %i.cfc = shl nuw i64 %i.cfb, 56
  %i.cfd = getelementptr inbounds nuw i8, ptr %i.cey, i64 2
  %i.cfe = load i8, ptr %i.cfd, align 1, !tbaa !105
  %i.cff = zext i8 %i.cfe to i64
  %i.cfg = shl nuw nsw i64 %i.cff, 48
  %i.cfh = or disjoint i64 %i.cfg, %i.cfc
  %i.cfi = getelementptr inbounds nuw i8, ptr %i.cey, i64 3
  %i.cfj = load i8, ptr %i.cfi, align 1, !tbaa !105
  %i.cfk = zext i8 %i.cfj to i64
  %i.cfl = shl nuw nsw i64 %i.cfk, 40
  %i.cfm = or disjoint i64 %i.cfh, %i.cfl
  %i.cfn = getelementptr inbounds nuw i8, ptr %i.cey, i64 4
  %i.cfo = load i8, ptr %i.cfn, align 1, !tbaa !105
  %i.cfp = zext i8 %i.cfo to i64
  %i.cfq = shl nuw nsw i64 %i.cfp, 32
  %i.cfr = or disjoint i64 %i.cfm, %i.cfq
  %i.cfs = getelementptr inbounds nuw i8, ptr %i.cey, i64 5
  %i.cft = load i8, ptr %i.cfs, align 1, !tbaa !105
  %i.cfu = zext i8 %i.cft to i64
  %i.cfv = shl nuw nsw i64 %i.cfu, 24
  %i.cfw = or disjoint i64 %i.cfr, %i.cfv
  %i.cfx = getelementptr inbounds nuw i8, ptr %i.cey, i64 6
  %i.cfy = load i8, ptr %i.cfx, align 1, !tbaa !105
  %i.cfz = zext i8 %i.cfy to i64
  %i.cga = shl nuw nsw i64 %i.cfz, 16
  %i.cgb = or disjoint i64 %i.cfw, %i.cga
  %i.cgc = getelementptr inbounds nuw i8, ptr %i.cey, i64 7
  %i.cgd = load i8, ptr %i.cgc, align 1, !tbaa !105
  %i.cge = zext i8 %i.cgd to i64
  %i.cgf = shl nuw nsw i64 %i.cge, 8
  %i.cgg = or disjoint i64 %i.cgb, %i.cgf
  %i.cgh = getelementptr inbounds nuw i8, ptr %i.cey, i64 8
  %i.cgi = load i8, ptr %i.cgh, align 1, !tbaa !105
  %i.cgj = zext i8 %i.cgi to i64
  %i.cgk = add nuw i64 %i.cgg, %i.cgj
  store i64 %i.cgk, ptr %i.ca, align 8, !tbaa !121
  call void @llvm.lifetime.start.p0(ptr nonnull %553) #32
  call void @llvm.lifetime.start.p0(ptr nonnull %554) #32
  call void @llvm.lifetime.start.p0(ptr nonnull %555) #32
  invoke void @_ZN7doctest6detail20ExpressionDecomposerC1ENS_10assertType4EnumE(ptr noundef nonnull align 4 dereferenceable(4) %555, i32 noundef 10)
          to label %bb.bkk unwind label %bb.blw

bb.bkk:                                           ; preds = %bb.bkj
  %i.cgl = load i32, ptr %555, align 4, !tbaa !94
  store ptr %i.ca, ptr %554, align 8
  store i32 %i.cgl, ptr %.sroa.2664.0..sroa_idx, align 8
  invoke void @_ZN7doctest6detail14Expression_lhsIRKmEeqIS3_EEDTcmcvveqclL_ZNS0_7declvalIS3_EEOT_vEEclsr7doctest6detailE7declvalIS7_EEtlNS0_6ResultEEES8_(ptr dead_on_unwind nonnull writable sret(%"struct.doctest::detail::Result") align 8 %553, ptr noundef nonnull align 8 dereferenceable(12) %554, ptr noundef nonnull align 8 dereferenceable(8) %i.bx)
          to label %bb.bkl unwind label %bb.blw

bb.bkl:                                           ; preds = %bb.bkk
  %i.cgm = invoke noundef zeroext i1 @_ZN7doctest6detail13decomp_assertENS_10assertType4EnumEPKciS4_RKNS0_6ResultE(i32 noundef 10, ptr noundef nonnull @.str.5, i32 noundef 843, ptr noundef nonnull @.str.68, ptr noundef nonnull align 8 dereferenceable(32) %553)
          to label %bb.bkm unwind label %bb.blx   ; 0 uses

bb.bkm:                                           ; preds = %bb.bkl
  call void @_ZN7doctest6StringD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %i.cdq) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %555) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %554) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %553) #32
  call void @llvm.lifetime.start.p0(ptr nonnull %556) #32
  call void @llvm.lifetime.start.p0(ptr nonnull %557) #32
  call void @llvm.lifetime.start.p0(ptr nonnull %558) #32
  invoke void @_ZN7doctest6detail20ExpressionDecomposerC1ENS_10assertType4EnumE(ptr noundef nonnull align 4 dereferenceable(4) %558, i32 noundef 10)
          to label %bb.bkn unwind label %bb.blz

bb.bkn:                                           ; preds = %bb.bkm
  call void @llvm.lifetime.start.p0(ptr nonnull %559) #32
  invoke void @_ZN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEEvE9from_cborIRKSC_EESD_OT_bbNS0_6detail18cbor_tag_handler_tE(ptr dead_on_unwind nonnull writable sret(%"class.nlohmann::json_abi_v3_12_0::basic_json") align 8 %559, ptr noundef nonnull align 8 dereferenceable(24) %543, i1 noundef zeroext true, i1 noundef zeroext true, i32 noundef 0)
          to label %bb.bko unwind label %bb.bma

bb.bko:                                           ; preds = %bb.bkn
  call void @llvm.experimental.noalias.scope.decl(metadata !948)
  %i.cgn = load i32, ptr %558, align 4, !tbaa !94, !noalias !948
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(20) %557, ptr noundef nonnull align 8 dereferenceable(16) %559, i64 16, i1 false), !tbaa.struct !117
  store i8 0, ptr %559, align 8, !tbaa !113, !noalias !948
  store ptr null, ptr %i.cdr, align 8, !tbaa !105, !noalias !948
  store i32 %i.cgn, ptr %i.cds, align 8, !tbaa !119, !alias.scope !948
  invoke void @_ZN7doctest6detail14Expression_lhsIN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS3_14adl_serializerES6_IhSaIhEEvEEEeqIRKSG_EEDTcmcvveqclL_ZNS0_7declvalISG_EEOT_vEEclsr7doctest6detailE7declvalISM_EEtlNS0_6ResultEEESN_(ptr dead_on_unwind nonnull writable sret(%"struct.doctest::detail::Result") align 8 %556, ptr noundef nonnull align 8 dereferenceable(20) %557, ptr noundef nonnull align 8 dereferenceable(16) %538)
          to label %bb.bkp unwind label %bb.bmb

bb.bkp:                                           ; preds = %bb.bko
  %i.cgo = invoke noundef zeroext i1 @_ZN7doctest6detail13decomp_assertENS_10assertType4EnumEPKciS4_RKNS0_6ResultE(i32 noundef 10, ptr noundef nonnull @.str.5, i32 noundef 846, ptr noundef nonnull @.str.30, ptr noundef nonnull align 8 dereferenceable(32) %556)
          to label %bb.bkq unwind label %bb.bmc   ; 0 uses

bb.bkq:                                           ; preds = %bb.bkp
  call void @_ZN7doctest6StringD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %i.cdt) #32
  %i.cgp = load i8, ptr %557, align 8, !tbaa !104
  invoke void @_ZN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEEvE10json_value7destroyENS0_6detail7value_tE(ptr noundef nonnull align 8 dereferenceable(8) %i.cdu, i8 noundef zeroext %i.cgp)
          to label %_ZN7doctest6detail14Expression_lhsIN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS3_14adl_serializerES6_IhSaIhEEvEEED2Ev.exit5790 unwind label %bb.bkr, !inline_history !111

bb.bkr:                                           ; preds = %bb.bkq
  %i.cgq = landingpad { ptr, i32 }
          catch ptr null
  %i.cgr = extractvalue { ptr, i32 } %i.cgq, 0
  call void @__clang_call_terminate(ptr %i.cgr) #33, !inline_history !111
  unreachable

_ZN7doctest6detail14Expression_lhsIN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS3_14adl_serializerES6_IhSaIhEEvEEED2Ev.exit5790: ; preds = %bb.bkq
  %i.cgs = load i8, ptr %559, align 8, !tbaa !104
  invoke void @_ZN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEEvE10json_value7destroyENS0_6detail7value_tE(ptr noundef nonnull align 8 dereferenceable(8) %i.cdr, i8 noundef zeroext %i.cgs)
          to label %_ZN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEEvED2Ev.exit5791 unwind label %bb.bks, !inline_history !111

bb.bks:                                           ; preds = %_ZN7doctest6detail14Expression_lhsIN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS3_14adl_serializerES6_IhSaIhEEvEEED2Ev.exit5790
  %i.cgt = landingpad { ptr, i32 }
          catch ptr null
  %i.cgu = extractvalue { ptr, i32 } %i.cgt, 0
  call void @__clang_call_terminate(ptr %i.cgu) #33, !inline_history !111
  unreachable

_ZN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEEvED2Ev.exit5791: ; preds = %_ZN7doctest6detail14Expression_lhsIN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS3_14adl_serializerES6_IhSaIhEEvEEED2Ev.exit5790
  call void @llvm.lifetime.end.p0(ptr nonnull %559) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %558) #32
end_hunk_5
begin_hunk_6_@_ZN8nlohmann16json_abi_v3_12_06detail13binary_writerINS0_10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES5_IhSaIhEEvEEhE10write_cborERKSF_:bb.a

bb.cc:                                            ; preds = %bb.ca
  %.not115 = icmp ugt i64 %i.nl, 4294967295
  %i.oq = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.or = load ptr, ptr %i.oq, align 8, !tbaa !262 ; 3 uses
  %i.os = load ptr, ptr %i.or, align 8, !tbaa !91
  %i.ot = load ptr, ptr %i.os, align 8            ; 2 uses
  br i1 %.not115, label %bb.ce, label %bb.cd

bb.cd:                                            ; preds = %bb.cc
  tail call void %i.ot(ptr noundef nonnull align 8 dereferenceable(8) %i.or, i8 noundef zeroext -70)
  %i.ou = trunc nuw i64 %i.nl to i32
  tail call void @_ZN8nlohmann16json_abi_v3_12_06detail13binary_writerINS0_10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES5_IhSaIhEEvEEhE12write_numberIjEEvT_b(ptr noundef nonnull align 8 dereferenceable(24) %0, i32 noundef %i.ou, i1 noundef zeroext false)
  br label %bb.cf

bb.ce:                                            ; preds = %bb.cc
  tail call void %i.ot(ptr noundef nonnull align 8 dereferenceable(8) %i.or, i8 noundef zeroext -69)
  tail call void @_ZN8nlohmann16json_abi_v3_12_06detail13binary_writerINS0_10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES5_IhSaIhEEvEEhE12write_numberImEEvT_b(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %i.nl, i1 noundef zeroext false)
  br label %bb.cf

bb.cf:                                            ; preds = %bb.bz, %bb.cd, %bb.ce, %_ZN8nlohmann16json_abi_v3_12_06detail13binary_writerINS0_10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES5_IhSaIhEEvEEhE12write_numberItEEvT_b.exit169, %bb.bx
  %i.ov = load ptr, ptr %i.ni, align 8, !tbaa !105 ; 2 uses
  %i.ow = getelementptr inbounds nuw i8, ptr %i.ov, i64 24
  %i.ox = load ptr, ptr %i.ow, align 8, !tbaa !249 ; 2 uses
  %i.oy = getelementptr inbounds nuw i8, ptr %i.ov, i64 8 ; 2 uses
  %.not177180 = icmp eq ptr %i.ox, %i.oy
  br i1 %.not177180, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.cf
  %i.oz = getelementptr inbounds nuw i8, ptr %29, i64 8
  br label %bb.cg

bb.cg:                                            ; preds = %.lr.ph, %_ZN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEEvED2Ev.exit
  %.sroa.0170.0181 = phi ptr [ %i.ox, %.lr.ph ], [ %i.pg, %_ZN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEEvED2Ev.exit ] ; 3 uses
  %i.pa = getelementptr inbounds nuw i8, ptr %.sroa.0170.0181, i64 32
  call void @llvm.lifetime.start.p0(ptr nonnull %29) #32
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %29, i8 0, i64 16, i1 false)
  invoke void @_ZN8nlohmann16json_abi_v3_12_06detail20external_constructorILNS1_7value_tE3EE9constructINS0_10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES8_IhSaIhEEvEEEEvRT_RKNSJ_8string_tE(ptr noundef nonnull align 8 dereferenceable(16) %29, ptr noundef nonnull align 8 dereferenceable(32) %i.pa)
          to label %_ZN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEEvEC2IRKS9_S9_TnNSt9enable_ifIXaantsr6detail13is_basic_jsonIT0_EE5valuesr6detail18is_compatible_typeISD_SI_EE5valueEiE4typeELi0EEEOT_.exit unwind label %bb.ch

common.resume:                                    ; preds = %bb.ck, %bb.ch
  %common.resume.op = phi { ptr, i32 } [ %i.pb, %bb.ch ], [ %i.ph, %bb.ck ]
  resume { ptr, i32 } %common.resume.op

bb.ch:                                            ; preds = %bb.cg
  %i.pb = landingpad { ptr, i32 }
          cleanup
  call void @_ZN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEEvE4dataD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %29) #32
  br label %common.resume

_ZN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEEvEC2IRKS9_S9_TnNSt9enable_ifIXaantsr6detail13is_basic_jsonIT0_EE5valuesr6detail18is_compatible_typeISD_SI_EE5valueEiE4typeELi0EEEOT_.exit: ; preds = %bb.cg
  invoke void @_ZN8nlohmann16json_abi_v3_12_06detail13binary_writerINS0_10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES5_IhSaIhEEvEEhE10write_cborERKSF_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(16) %29)
          to label %bb.ci unwind label %bb.ck

bb.ci:                                            ; preds = %_ZN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEEvEC2IRKS9_S9_TnNSt9enable_ifIXaantsr6detail13is_basic_jsonIT0_EE5valuesr6detail18is_compatible_typeISD_SI_EE5valueEiE4typeELi0EEEOT_.exit
  %i.pc = load i8, ptr %29, align 8, !tbaa !104
  invoke void @_ZN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEEvE10json_value7destroyENS0_6detail7value_tE(ptr noundef nonnull align 8 dereferenceable(8) %i.oz, i8 noundef zeroext %i.pc)
          to label %_ZN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEEvED2Ev.exit unwind label %bb.cj, !inline_history !111

bb.cj:                                            ; preds = %bb.ci
  %i.pd = landingpad { ptr, i32 }
          catch ptr null
  %i.pe = extractvalue { ptr, i32 } %i.pd, 0
  call void @__clang_call_terminate(ptr %i.pe) #33, !inline_history !111
  unreachable

_ZN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEEvED2Ev.exit: ; preds = %bb.ci
  call void @llvm.lifetime.end.p0(ptr nonnull %29) #32
  %i.pf = getelementptr inbounds nuw i8, ptr %.sroa.0170.0181, i64 64
  call void @_ZN8nlohmann16json_abi_v3_12_06detail13binary_writerINS0_10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES5_IhSaIhEEvEEhE10write_cborERKSF_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(16) %i.pf)
  %i.pg = call noundef ptr @_ZSt18_Rb_tree_incrementPSt18_Rb_tree_node_base(ptr noundef nonnull %.sroa.0170.0181) #37 ; 2 uses
  %.not177 = icmp eq ptr %i.pg, %i.oy
  br i1 %.not177, label %.loopexit, label %bb.cg

bb.ck:                                            ; preds = %_ZN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEEvEC2IRKS9_S9_TnNSt9enable_ifIXaantsr6detail13is_basic_jsonIT0_EE5valuesr6detail18is_compatible_typeISD_SI_EE5valueEiE4typeELi0EEEOT_.exit
  %i.ph = landingpad { ptr, i32 }
          cleanup
  call void @_ZN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEEvED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %29) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %29) #32
  br label %common.resume

.loopexit:                                        ; preds = %_ZN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEEvED2Ev.exit, %.lr.ph184, %bb.cf, %bb.bd, %bb.o, %_ZN8nlohmann16json_abi_v3_12_06detail13binary_writerINS0_10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES5_IhSaIhEEvEEhE12write_numberItEEvT_b.exit145, %bb.v, %bb.u, %bb.q, %bb.a, %bb.ag, %bb.aj, %bb.ai, %bb.x, %_ZN8nlohmann16json_abi_v3_12_06detail13binary_writerINS0_10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES5_IhSaIhEEvEEhE12write_numberItEEvT_b.exit149, %bb.ae, %bb.ad, %bb.z, %bb.h, %bb.l, %bb.m, %_ZN8nlohmann16json_abi_v3_12_06detail13binary_writerINS0_10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES5_IhSaIhEEvEEhE12write_numberItEEvT_b.exit, %bb.f, %bb.bv, %bb.at, %bb.c, %bb.b
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN8nlohmann16json_abi_v3_12_06detail13binary_writerINS0_10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES5_IhSaIhEEvEEhED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %0) unnamed_addr #11 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !242  ; 8 uses
  %.not.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i, label %_ZNSt12__shared_ptrIN8nlohmann16json_abi_v3_12_06detail23output_adapter_protocolIhEELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 4 uses
  %i.d = load atomic i64, ptr %i.c acquire, align 8 ; 2 uses
  %i.e = icmp eq i64 %i.d, 4294967297
  %i.f = trunc i64 %i.d to i32                    ; 2 uses
  br i1 %i.e, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  store i32 0, ptr %i.c, align 8, !tbaa !234
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 12
  store i32 0, ptr %i.g, align 4, !tbaa !235
  %i.h = load ptr, ptr %i.b, align 8, !tbaa !91
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.j = load ptr, ptr %i.i, align 8
  tail call void %i.j(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #32, !inline_history !7
  %i.k = load ptr, ptr %i.b, align 8, !tbaa !91
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 24
  %i.m = load ptr, ptr %i.l, align 8
  tail call void %i.m(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #32, !inline_history !7
  br label %_ZNSt12__shared_ptrIN8nlohmann16json_abi_v3_12_06detail23output_adapter_protocolIhEELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.d:                                             ; preds = %bb.b
  %i.n = load i8, ptr @__libc_single_threaded, align 1, !tbaa !105
  %.not.i.i.i = icmp eq i8 %i.n, 0
  br i1 %.not.i.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.o = add nsw i32 %i.f, -1
  store i32 %i.o, ptr %i.c, align 8, !tbaa !124
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

bb.f:                                             ; preds = %bb.d
  %i.p = atomicrmw volatile add ptr %i.c, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i: ; preds = %bb.f, %bb.e
  %.0.i.i.i.i = phi i32 [ %i.f, %bb.e ], [ %i.p, %bb.f ]
  %i.q = icmp eq i32 %.0.i.i.i.i, 1
  br i1 %i.q, label %bb.g, label %_ZNSt12__shared_ptrIN8nlohmann16json_abi_v3_12_06detail23output_adapter_protocolIhEELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !243

bb.g:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #32
  br label %_ZNSt12__shared_ptrIN8nlohmann16json_abi_v3_12_06detail23output_adapter_protocolIhEELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt12__shared_ptrIN8nlohmann16json_abi_v3_12_06detail23output_adapter_protocolIhEELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %bb.a, %bb.c, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i, %bb.g
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZNSt12__shared_ptrIN8nlohmann16json_abi_v3_12_06detail23output_adapter_protocolIhEELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %0) unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !242  ; 8 uses
  %.not.i = icmp eq ptr %i.b, null
  br i1 %.not.i, label %_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 4 uses
  %i.d = load atomic i64, ptr %i.c acquire, align 8 ; 2 uses
  %i.e = icmp eq i64 %i.d, 4294967297
  %i.f = trunc i64 %i.d to i32                    ; 2 uses
  br i1 %i.e, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  store i32 0, ptr %i.c, align 8, !tbaa !234
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 12
  store i32 0, ptr %i.g, align 4, !tbaa !235
  %i.h = load ptr, ptr %i.b, align 8, !tbaa !91
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.j = load ptr, ptr %i.i, align 8
  tail call void %i.j(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #32, !inline_history !10
  %i.k = load ptr, ptr %i.b, align 8, !tbaa !91
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 24
  %i.m = load ptr, ptr %i.l, align 8
  tail call void %i.m(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #32, !inline_history !10
  br label %_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.d:                                             ; preds = %bb.b
  %i.n = load i8, ptr @__libc_single_threaded, align 1, !tbaa !105
  %.not.i.i = icmp eq i8 %i.n, 0
  br i1 %.not.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.o = add nsw i32 %i.f, -1
  store i32 %i.o, ptr %i.c, align 8, !tbaa !124
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i

bb.f:                                             ; preds = %bb.d
  %i.p = atomicrmw volatile add ptr %i.c, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i: ; preds = %bb.f, %bb.e
  %.0.i.i.i = phi i32 [ %i.f, %bb.e ], [ %i.p, %bb.f ]
  %i.q = icmp eq i32 %.0.i.i.i, 1
  br i1 %i.q, label %bb.g, label %_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !243

bb.g:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #32
  br label %_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %bb.a, %bb.c, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i, %bb.g
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN8nlohmann16json_abi_v3_12_06detail13binary_writerINS0_10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES5_IhSaIhEEvEEhE12write_numberIjEEvT_b(ptr noundef nonnull align 8 dereferenceable(24) %0, i32 noundef %1, i1 noundef zeroext %2) local_unnamed_addr #3 comdat align 2 {
bb.a:
  %3 = alloca %"struct.std::array.171", align 4   ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #32
  store i32 %1, ptr %3, align 4
  %i.a = load i8, ptr %0, align 8, !tbaa !373, !range !99, !noundef !100
  %i.b = zext i1 %2 to i8
  %.not = icmp eq i8 %i.a, %i.b
  br i1 %.not, label %_ZSt7reverseIPhEvT_S1_.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.a
  %4 = tail call i32 @llvm.bswap.i32(i32 %1)
  store i32 %4, ptr %3, align 4, !tbaa !105
  br label %_ZSt7reverseIPhEvT_S1_.exit

_ZSt7reverseIPhEvT_S1_.exit:                      ; preds = %.lr.ph.i.i, %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !262  ; 2 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !91
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.g = load ptr, ptr %i.f, align 8
  call void %i.g(ptr noundef nonnull align 8 dereferenceable(8) %i.d, ptr noundef nonnull %3, i64 noundef 4)
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #32
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN8nlohmann16json_abi_v3_12_06detail13binary_writerINS0_10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES5_IhSaIhEEvEEhE12write_numberImEEvT_b(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1, i1 noundef zeroext %2) local_unnamed_addr #3 comdat align 2 {
bb.a:
  %3 = alloca %"struct.std::array.172", align 8   ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #32
  store i64 %1, ptr %3, align 8
  %i.a = load i8, ptr %0, align 8, !tbaa !373, !range !99, !noundef !100
  %i.b = zext i1 %2 to i8
  %.not = icmp eq i8 %i.a, %i.b
  br i1 %.not, label %_ZSt7reverseIPhEvT_S1_.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.a
  %4 = tail call i64 @llvm.bswap.i64(i64 %1)
  store i64 %4, ptr %3, align 8, !tbaa !105
  br label %_ZSt7reverseIPhEvT_S1_.exit

_ZSt7reverseIPhEvT_S1_.exit:                      ; preds = %.lr.ph.i.i, %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !262  ; 2 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !91
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.g = load ptr, ptr %i.f, align 8
  call void %i.g(ptr noundef nonnull align 8 dereferenceable(8) %i.d, ptr noundef nonnull %3, i64 noundef 8)
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #32
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN8nlohmann16json_abi_v3_12_06detail13binary_writerINS0_10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES5_IhSaIhEEvEEhE19write_compact_floatEdNS1_14input_format_tE(ptr noundef nonnull align 8 dereferenceable(24) %0, double noundef %1, i32 noundef %2) local_unnamed_addr #3 comdat align 2 {
bb.a:
  %3 = alloca %"struct.std::array.172", align 8   ; 5 uses
  %4 = alloca %"struct.std::array.171", align 4   ; 5 uses
  %i.a = tail call double @llvm.fabs.f64(double %1)
  %or.cond = fcmp ugt double %i.a, f0x47EFFFFFE0000000
  br i1 %or.cond, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = fptrunc double %1 to float               ; 3 uses
  %i.c = fpext float %i.b to double
  %i.d = fcmp oeq double %1, %i.c
  br i1 %i.d, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !262  ; 2 uses
  %i.g = icmp eq i32 %2, 1
  %spec.select = select i1 %i.g, i8 -6, i8 -54
  %i.h = load ptr, ptr %i.f, align 8, !tbaa !91
  %i.i = load ptr, ptr %i.h, align 8
  tail call void %i.i(ptr noundef nonnull align 8 dereferenceable(8) %i.f, i8 noundef zeroext %spec.select)
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #32
  store float %i.b, ptr %4, align 4
  %i.j = load i8, ptr %0, align 8, !tbaa !373, !range !99, !noundef !100
  %.not.i = icmp eq i8 %i.j, 0
  br i1 %.not.i, label %_ZN8nlohmann16json_abi_v3_12_06detail13binary_writerINS0_10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES5_IhSaIhEEvEEhE12write_numberIfEEvT_b.exit, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.c
  %i.k = bitcast float %i.b to i32
  %5 = tail call i32 @llvm.bswap.i32(i32 %i.k)
  store i32 %5, ptr %4, align 4, !tbaa !105
  br label %_ZN8nlohmann16json_abi_v3_12_06detail13binary_writerINS0_10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES5_IhSaIhEEvEEhE12write_numberIfEEvT_b.exit

_ZN8nlohmann16json_abi_v3_12_06detail13binary_writerINS0_10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES5_IhSaIhEEvEEhE12write_numberIfEEvT_b.exit: ; preds = %bb.c, %.lr.ph.i.i.i
  %i.l = load ptr, ptr %i.e, align 8, !tbaa !262  ; 2 uses
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !91
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  %i.o = load ptr, ptr %i.n, align 8
  call void %i.o(ptr noundef nonnull align 8 dereferenceable(8) %i.l, ptr noundef nonnull %4, i64 noundef 4), !inline_history !1609
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #32
  br label %bb.e

bb.d:                                             ; preds = %bb.b, %bb.a
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !262  ; 2 uses
  %i.r = icmp eq i32 %2, 1
  %spec.select16 = select i1 %i.r, i8 -5, i8 -53
  %i.s = load ptr, ptr %i.q, align 8, !tbaa !91
  %i.t = load ptr, ptr %i.s, align 8
  tail call void %i.t(ptr noundef nonnull align 8 dereferenceable(8) %i.q, i8 noundef zeroext %spec.select16)
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #32
  store double %1, ptr %3, align 8
  %i.u = load i8, ptr %0, align 8, !tbaa !373, !range !99, !noundef !100
  %.not.i12 = icmp eq i8 %i.u, 0
  br i1 %.not.i12, label %_ZN8nlohmann16json_abi_v3_12_06detail13binary_writerINS0_10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES5_IhSaIhEEvEEhE12write_numberIdEEvT_b.exit, label %.lr.ph.i.i.i13

.lr.ph.i.i.i13:                                   ; preds = %bb.d
  %6 = bitcast double %1 to i64
  %7 = tail call i64 @llvm.bswap.i64(i64 %6)
  store i64 %7, ptr %3, align 8, !tbaa !105
  br label %_ZN8nlohmann16json_abi_v3_12_06detail13binary_writerINS0_10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES5_IhSaIhEEvEEhE12write_numberIdEEvT_b.exit

_ZN8nlohmann16json_abi_v3_12_06detail13binary_writerINS0_10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES5_IhSaIhEEvEEhE12write_numberIdEEvT_b.exit: ; preds = %bb.d, %.lr.ph.i.i.i13
  %i.v = load ptr, ptr %i.p, align 8, !tbaa !262  ; 2 uses
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !91
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 8
  %i.y = load ptr, ptr %i.x, align 8
  call void %i.y(ptr noundef nonnull align 8 dereferenceable(8) %i.v, ptr noundef nonnull %3, i64 noundef 8), !inline_history !1610
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #32
  br label %bb.e

bb.e:                                             ; preds = %_ZN8nlohmann16json_abi_v3_12_06detail13binary_writerINS0_10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES5_IhSaIhEEvEEhE12write_numberIdEEvT_b.exit, %_ZN8nlohmann16json_abi_v3_12_06detail13binary_writerINS0_10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES5_IhSaIhEEvEEhE12write_numberIfEEvT_b.exit
  ret void
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(read)
declare noundef ptr @_ZSt18_Rb_tree_incrementPSt18_Rb_tree_node_base(ptr noundef) local_unnamed_addr #18

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr dso_local void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %0) local_unnamed_addr #19 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !91
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.c = load ptr, ptr %i.b, align 8
  tail call void %i.c(ptr noundef nonnull align 8 dereferenceable(16) %0) #32, !inline_history !1611
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 3 uses
  %i.e = load i8, ptr @__libc_single_threaded, align 1, !tbaa !105
  %.not.i = icmp eq i8 %i.e, 0
  br i1 %.not.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = load i32, ptr %i.d, align 4, !tbaa !124  ; 2 uses
  %i.g = add nsw i32 %i.f, -1
  store i32 %i.g, ptr %i.d, align 4, !tbaa !124
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i

bb.c:                                             ; preds = %bb.a
  %i.h = atomicrmw volatile add ptr %i.d, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i: ; preds = %bb.c, %bb.b
  %.0.i.i = phi i32 [ %i.f, %bb.b ], [ %i.h, %bb.c ]
  %i.i = icmp eq i32 %.0.i.i, 1
  br i1 %i.i, label %bb.d, label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE19_M_release_last_useEv.exit

bb.d:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i
  %i.j = load ptr, ptr %0, align 8, !tbaa !91
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 24
  %i.l = load ptr, ptr %i.k, align 8
  tail call void %i.l(ptr noundef nonnull align 8 dereferenceable(16) %0) #32, !inline_history !1611
  br label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE19_M_release_last_useEv.exit

_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE19_M_release_last_useEv.exit: ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i, %bb.d
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZNSt23_Sp_counted_ptr_inplaceIN8nlohmann16json_abi_v3_12_06detail21output_vector_adapterIhSaIhEEESaIvELN9__gnu_cxx12_Lock_policyE2EED0Ev(ptr noundef nonnull align 8 dereferenceable(32) %0) unnamed_addr #5 comdat align 2 {
bb.a:
  tail call void @_ZdlPv(ptr noundef nonnull %0) #34
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZNSt23_Sp_counted_ptr_inplaceIN8nlohmann16json_abi_v3_12_06detail21output_vector_adapterIhSaIhEEESaIvELN9__gnu_cxx12_Lock_policyE2EE10_M_disposeEv(ptr noundef nonnull align 8 dereferenceable(32) %0) unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !91
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.d = load ptr, ptr %i.c, align 8
  tail call void %i.d(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %i.a) #32, !inline_history !1612
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZNSt23_Sp_counted_ptr_inplaceIN8nlohmann16json_abi_v3_12_06detail21output_vector_adapterIhSaIhEEESaIvELN9__gnu_cxx12_Lock_policyE2EE10_M_destroyEv(ptr noundef nonnull align 8 dereferenceable(32) %0) unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 {
_ZNSt15__allocated_ptrISaISt23_Sp_counted_ptr_inplaceIN8nlohmann16json_abi_v3_12_06detail21output_vector_adapterIhSaIhEEESaIvELN9__gnu_cxx12_Lock_policyE2EEEED2Ev.exit:
  tail call void @_ZdlPv(ptr noundef nonnull %0) #34
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local noundef ptr @_ZNSt23_Sp_counted_ptr_inplaceIN8nlohmann16json_abi_v3_12_06detail21output_vector_adapterIhSaIhEEESaIvELN9__gnu_cxx12_Lock_policyE2EE14_M_get_deleterERKSt9type_info(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(16) %1) unnamed_addr #5 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = icmp eq ptr %1, @_ZZNSt19_Sp_make_shared_tag5_S_tiEvE5__tag
  br i1 %i.b, label %_ZNKSt9type_infoeqERKS_.exit.thread8, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !375  ; 3 uses
  %i.e = icmp eq ptr %i.d, @_ZTSSt19_Sp_make_shared_tag
  br i1 %i.e, label %_ZNKSt9type_infoeqERKS_.exit.thread, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = load i8, ptr %i.d, align 1, !tbaa !105
  %.not.i = icmp eq i8 %i.f, 42
  br i1 %.not.i, label %_ZNKSt9type_infoeqERKS_.exit.thread8, label %_ZNKSt9type_infoeqERKS_.exit

_ZNKSt9type_infoeqERKS_.exit:                     ; preds = %bb.c
  %i.g = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.d, ptr noundef nonnull dereferenceable(24) @_ZTSSt19_Sp_make_shared_tag) #32
  %.fr = freeze i32 %i.g
  %i.h = icmp eq i32 %.fr, 0
  br i1 %i.h, label %_ZNKSt9type_infoeqERKS_.exit.thread, label %_ZNKSt9type_infoeqERKS_.exit.thread8

_ZNKSt9type_infoeqERKS_.exit.thread:              ; preds = %bb.b, %_ZNKSt9type_infoeqERKS_.exit
  br label %_ZNKSt9type_infoeqERKS_.exit.thread8

_ZNKSt9type_infoeqERKS_.exit.thread8:             ; preds = %bb.c, %_ZNKSt9type_infoeqERKS_.exit.thread, %_ZNKSt9type_infoeqERKS_.exit, %bb.a
  %.0 = phi ptr [ %i.a, %bb.a ], [ %i.a, %_ZNKSt9type_infoeqERKS_.exit.thread ], [ null, %_ZNKSt9type_infoeqERKS_.exit ], [ null, %bb.c ]
  ret ptr %.0
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN8nlohmann16json_abi_v3_12_06detail21output_vector_adapterIhSaIhEE15write_characterEh(ptr noundef nonnull align 8 dereferenceable(16) %0, i8 noundef zeroext %1) unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !378, !nonnull !100, !align !278 ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 4 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !115  ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 2 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !114
  %.not.i = icmp eq ptr %i.d, %i.f
  br i1 %.not.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  store i8 %1, ptr %i.d, align 1, !tbaa !105
  %i.g = load ptr, ptr %i.c, align 8, !tbaa !115
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 1
  store ptr %i.h, ptr %i.c, align 8, !tbaa !115
  br label %_ZNSt6vectorIhSaIhEE9push_backERKh.exit

bb.c:                                             ; preds = %bb.a
  %i.i = load ptr, ptr %i.b, align 8, !tbaa !110  ; 4 uses
  %i.j = ptrtoint ptr %i.d to i64
  %i.k = ptrtoint ptr %i.i to i64
  %i.l = sub i64 %i.j, %i.k                       ; 7 uses
  %i.m = icmp eq i64 %i.l, 9223372036854775807
  br i1 %i.m, label %bb.d, label %_ZNKSt6vectorIhSaIhEE12_M_check_lenEmPKc.exit.i.i

bb.d:                                             ; preds = %bb.c
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.297) #36
  unreachable

_ZNKSt6vectorIhSaIhEE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.c
  %.sroa.speculated.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.l, i64 1)
  %i.n = add i64 %.sroa.speculated.i.i.i, %i.l    ; 2 uses
  %i.o = icmp ult i64 %i.n, %i.l
  %i.p = tail call i64 @llvm.umin.i64(i64 %i.n, i64 9223372036854775807)
  %i.q = select i1 %i.o, i64 9223372036854775807, i64 %i.p ; 3 uses
  %.not.i.i.i = icmp ne i64 %i.q, 0
  tail call void @llvm.assume(i1 %.not.i.i.i)
  %i.r = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.q) #35 ; 4 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 %i.l ; 2 uses
  store i8 %1, ptr %i.s, align 1, !tbaa !105
  %i.t = icmp sgt i64 %i.l, 0
  br i1 %i.t, label %bb.e, label %_ZNSt6vectorIhSaIhEE11_S_relocateEPhS2_S2_RS0_.exit16.i.i

bb.e:                                             ; preds = %_ZNKSt6vectorIhSaIhEE12_M_check_lenEmPKc.exit.i.i
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.r, ptr align 1 %i.i, i64 %i.l, i1 false)
  br label %_ZNSt6vectorIhSaIhEE11_S_relocateEPhS2_S2_RS0_.exit16.i.i

_ZNSt6vectorIhSaIhEE11_S_relocateEPhS2_S2_RS0_.exit16.i.i: ; preds = %bb.e, %_ZNKSt6vectorIhSaIhEE12_M_check_lenEmPKc.exit.i.i
  %i.u = getelementptr inbounds nuw i8, ptr %i.s, i64 1
  %.not.i17.i.i = icmp eq ptr %i.i, null
  br i1 %.not.i17.i.i, label %_ZNSt6vectorIhSaIhEE17_M_realloc_insertIJRKhEEEvN9__gnu_cxx17__normal_iteratorIPhS1_EEDpOT_.exit.i, label %bb.f

bb.f:                                             ; preds = %_ZNSt6vectorIhSaIhEE11_S_relocateEPhS2_S2_RS0_.exit16.i.i
  tail call void @_ZdlPv(ptr noundef nonnull %i.i) #34
  br label %_ZNSt6vectorIhSaIhEE17_M_realloc_insertIJRKhEEEvN9__gnu_cxx17__normal_iteratorIPhS1_EEDpOT_.exit.i

_ZNSt6vectorIhSaIhEE17_M_realloc_insertIJRKhEEEvN9__gnu_cxx17__normal_iteratorIPhS1_EEDpOT_.exit.i: ; preds = %bb.f, %_ZNSt6vectorIhSaIhEE11_S_relocateEPhS2_S2_RS0_.exit16.i.i
  store ptr %i.r, ptr %i.b, align 8, !tbaa !110
  store ptr %i.u, ptr %i.c, align 8, !tbaa !115
  %i.v = getelementptr inbounds nuw i8, ptr %i.r, i64 %i.q
  store ptr %i.v, ptr %i.e, align 8, !tbaa !114
  br label %_ZNSt6vectorIhSaIhEE9push_backERKh.exit

_ZNSt6vectorIhSaIhEE9push_backERKh.exit:          ; preds = %bb.b, %_ZNSt6vectorIhSaIhEE17_M_realloc_insertIJRKhEEEvN9__gnu_cxx17__normal_iteratorIPhS1_EEDpOT_.exit.i
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN8nlohmann16json_abi_v3_12_06detail21output_vector_adapterIhSaIhEE16write_charactersEPKhm(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull %1, i64 noundef %2) unnamed_addr #3 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !378, !nonnull !100, !align !278 ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !108
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 %2
  %i.f = load ptr, ptr %i.b, align 8, !tbaa !108  ; 2 uses
  %i.g = ptrtoint ptr %i.d to i64
  %i.h = ptrtoint ptr %i.f to i64
  %i.i = sub i64 %i.g, %i.h
  %i.j = getelementptr inbounds i8, ptr %i.f, i64 %i.i
  tail call void @_ZNSt6vectorIhSaIhEE15_M_range_insertIPKhEEvN9__gnu_cxx17__normal_iteratorIPhS1_EET_S9_St20forward_iterator_tag(ptr noundef nonnull align 8 dereferenceable(24) %i.b, ptr %i.j, ptr noundef nonnull %1, ptr noundef nonnull %i.e)
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
end_hunk_6
begin_hunk_7_@_ZN8nlohmann16json_abi_v3_12_06detail13binary_writerINS0_10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES5_IhSaIhEEvEEhE13write_msgpackERKSF_:bb.a
  store i8 %i.iy, ptr %.012.i.i.i147, align 1, !tbaa !105
  br label %_ZN8nlohmann16json_abi_v3_12_06detail13binary_writerINS0_10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES5_IhSaIhEEvEEhE12write_numberItEEvT_b.exit148

_ZN8nlohmann16json_abi_v3_12_06detail13binary_writerINS0_10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES5_IhSaIhEEvEEhE12write_numberItEEvT_b.exit148: ; preds = %bb.ba, %.lr.ph.i.i.i146
  %i.iz = load ptr, ptr %i.iq, align 8, !tbaa !262 ; 2 uses
  %i.ja = load ptr, ptr %i.iz, align 8, !tbaa !91
  %i.jb = getelementptr inbounds nuw i8, ptr %i.ja, i64 8
  %i.jc = load ptr, ptr %i.jb, align 8
  call void %i.jc(ptr noundef nonnull align 8 dereferenceable(8) %i.iz, ptr noundef nonnull %5, i64 noundef 2), !inline_history !9
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #32
  br label %bb.bd

bb.bb:                                            ; preds = %bb.az
  %.not108 = icmp ugt i64 %i.hx, 4294967295
  br i1 %.not108, label %bb.bd, label %bb.bc

bb.bc:                                            ; preds = %bb.bb
  %i.jd = select i1 %i.hr, i8 -55, i8 -58
  %i.je = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.jf = load ptr, ptr %i.je, align 8, !tbaa !262 ; 2 uses
  %i.jg = load ptr, ptr %i.jf, align 8, !tbaa !91
  %i.jh = load ptr, ptr %i.jg, align 8
  tail call void %i.jh(ptr noundef nonnull align 8 dereferenceable(8) %i.jf, i8 noundef zeroext %i.jd)
  %i.ji = trunc nuw i64 %i.hx to i32
  tail call void @_ZN8nlohmann16json_abi_v3_12_06detail13binary_writerINS0_10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES5_IhSaIhEEvEEhE12write_numberIjEEvT_b(ptr noundef nonnull align 8 dereferenceable(24) %0, i32 noundef %i.ji, i1 noundef zeroext false)
  br label %bb.bd

bb.bd:                                            ; preds = %.critedge, %_ZN8nlohmann16json_abi_v3_12_06detail13binary_writerINS0_10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES5_IhSaIhEEvEEhE12write_numberItEEvT_b.exit148, %bb.bc, %bb.bb
  br i1 %i.hr, label %bb.be, label %bb.bf

bb.be:                                            ; preds = %switch.lookup, %bb.bd
  %i.jj = load ptr, ptr %i.hn, align 8, !tbaa !105 ; 2 uses
  %i.jk = getelementptr inbounds nuw i8, ptr %i.jj, i64 32
  %i.jl = load i8, ptr %i.jk, align 8, !tbaa !223, !range !99, !noundef !100
  %i.jm = trunc nuw i8 %i.jl to i1
  %i.jn = getelementptr inbounds nuw i8, ptr %i.jj, i64 24
  %i.jo = load i64, ptr %i.jn, align 8
  %i.jp = trunc i64 %i.jo to i8
  %i.jq = select i1 %i.jm, i8 %i.jp, i8 -1
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #32
  store i8 %i.jq, ptr %4, align 1
  %i.jr = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.js = load ptr, ptr %i.jr, align 8, !tbaa !262 ; 2 uses
  %i.jt = load ptr, ptr %i.js, align 8, !tbaa !91
  %i.ju = getelementptr inbounds nuw i8, ptr %i.jt, i64 8
  %i.jv = load ptr, ptr %i.ju, align 8
  call void %i.jv(ptr noundef nonnull align 8 dereferenceable(8) %i.js, ptr noundef nonnull %4, i64 noundef 1), !inline_history !1903
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #32
  br label %bb.bf

bb.bf:                                            ; preds = %bb.be, %bb.bd
  %i.jw = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.jx = load ptr, ptr %i.jw, align 8, !tbaa !262 ; 2 uses
  %i.jy = load ptr, ptr %i.hn, align 8, !tbaa !105
  %i.jz = load ptr, ptr %i.jy, align 8, !tbaa !110
  %i.ka = load ptr, ptr %i.jx, align 8, !tbaa !91
  %i.kb = getelementptr inbounds nuw i8, ptr %i.ka, i64 8
  %i.kc = load ptr, ptr %i.kb, align 8
  call void %i.kc(ptr noundef nonnull align 8 dereferenceable(8) %i.jx, ptr noundef %i.jz, i64 noundef %i.hx)
  br label %.loopexit

bb.bg:                                            ; preds = %bb.a
  %i.kd = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.ke = load ptr, ptr %i.kd, align 8, !tbaa !105
  %i.kf = getelementptr inbounds nuw i8, ptr %i.ke, i64 40
  %i.kg = load i64, ptr %i.kf, align 8, !tbaa !183 ; 8 uses
  %i.kh = icmp ult i64 %i.kg, 16
  br i1 %i.kh, label %bb.bh, label %bb.bi

bb.bh:                                            ; preds = %bb.bg
  %i.ki = trunc nuw nsw i64 %i.kg to i8
  %i.kj = or disjoint i8 %i.ki, -128
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #32
  store i8 %i.kj, ptr %3, align 1
  %i.kk = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.kl = load ptr, ptr %i.kk, align 8, !tbaa !262 ; 2 uses
  %i.km = load ptr, ptr %i.kl, align 8, !tbaa !91
  %i.kn = getelementptr inbounds nuw i8, ptr %i.km, i64 8
  %i.ko = load ptr, ptr %i.kn, align 8
  call void %i.ko(ptr noundef nonnull align 8 dereferenceable(8) %i.kl, ptr noundef nonnull %3, i64 noundef 1), !inline_history !8
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #32
  br label %bb.bm

bb.bi:                                            ; preds = %bb.bg
  %.not = icmp ugt i64 %i.kg, 65535
  br i1 %.not, label %bb.bk, label %bb.bj

bb.bj:                                            ; preds = %bb.bi
  %i.kp = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.kq = load ptr, ptr %i.kp, align 8, !tbaa !262 ; 2 uses
  %i.kr = load ptr, ptr %i.kq, align 8, !tbaa !91
  %i.ks = load ptr, ptr %i.kr, align 8
  tail call void %i.ks(ptr noundef nonnull align 8 dereferenceable(8) %i.kq, i8 noundef zeroext -34)
  %i.kt = trunc nuw i64 %i.kg to i16
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #32
  store i16 %i.kt, ptr %2, align 2
  %i.ku = load i8, ptr %0, align 8, !tbaa !373, !range !99, !noundef !100
  %.not.i149 = icmp eq i8 %i.ku, 0
  br i1 %.not.i149, label %_ZN8nlohmann16json_abi_v3_12_06detail13binary_writerINS0_10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES5_IhSaIhEEvEEhE12write_numberItEEvT_b.exit152, label %.lr.ph.i.i.i150

.lr.ph.i.i.i150:                                  ; preds = %bb.bj
  %i.kv = lshr i64 %i.kg, 8
  %i.kw = trunc nuw i64 %i.kv to i8
  %i.kx = trunc i64 %i.kg to i8
  %.012.i.i.i151 = getelementptr inbounds nuw i8, ptr %2, i64 1
  store i8 %i.kw, ptr %2, align 2, !tbaa !105
  store i8 %i.kx, ptr %.012.i.i.i151, align 1, !tbaa !105
  br label %_ZN8nlohmann16json_abi_v3_12_06detail13binary_writerINS0_10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES5_IhSaIhEEvEEhE12write_numberItEEvT_b.exit152

_ZN8nlohmann16json_abi_v3_12_06detail13binary_writerINS0_10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES5_IhSaIhEEvEEhE12write_numberItEEvT_b.exit152: ; preds = %bb.bj, %.lr.ph.i.i.i150
  %i.ky = load ptr, ptr %i.kp, align 8, !tbaa !262 ; 2 uses
  %i.kz = load ptr, ptr %i.ky, align 8, !tbaa !91
  %i.la = getelementptr inbounds nuw i8, ptr %i.kz, i64 8
  %i.lb = load ptr, ptr %i.la, align 8
  call void %i.lb(ptr noundef nonnull align 8 dereferenceable(8) %i.ky, ptr noundef nonnull %2, i64 noundef 2), !inline_history !9
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #32
  br label %bb.bm

bb.bk:                                            ; preds = %bb.bi
  %.not105 = icmp ugt i64 %i.kg, 4294967295
  br i1 %.not105, label %bb.bm, label %bb.bl

bb.bl:                                            ; preds = %bb.bk
  %i.lc = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ld = load ptr, ptr %i.lc, align 8, !tbaa !262 ; 2 uses
  %i.le = load ptr, ptr %i.ld, align 8, !tbaa !91
  %i.lf = load ptr, ptr %i.le, align 8
  tail call void %i.lf(ptr noundef nonnull align 8 dereferenceable(8) %i.ld, i8 noundef zeroext -33)
  %i.lg = trunc nuw i64 %i.kg to i32
  tail call void @_ZN8nlohmann16json_abi_v3_12_06detail13binary_writerINS0_10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES5_IhSaIhEEvEEhE12write_numberIjEEvT_b(ptr noundef nonnull align 8 dereferenceable(24) %0, i32 noundef %i.lg, i1 noundef zeroext false)
  br label %bb.bm

bb.bm:                                            ; preds = %_ZN8nlohmann16json_abi_v3_12_06detail13binary_writerINS0_10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES5_IhSaIhEEvEEhE12write_numberItEEvT_b.exit152, %bb.bl, %bb.bk, %bb.bh
  %i.lh = load ptr, ptr %i.kd, align 8, !tbaa !105 ; 2 uses
  %i.li = getelementptr inbounds nuw i8, ptr %i.lh, i64 24
  %i.lj = load ptr, ptr %i.li, align 8, !tbaa !249 ; 2 uses
  %i.lk = getelementptr inbounds nuw i8, ptr %i.lh, i64 8 ; 2 uses
  %.not160163 = icmp eq ptr %i.lj, %i.lk
  br i1 %.not160163, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.bm
  %i.ll = getelementptr inbounds nuw i8, ptr %21, i64 8
  br label %bb.bn

bb.bn:                                            ; preds = %.lr.ph, %_ZN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEEvED2Ev.exit
  %.sroa.0153.0164 = phi ptr [ %i.lj, %.lr.ph ], [ %i.ls, %_ZN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEEvED2Ev.exit ] ; 3 uses
  %i.lm = getelementptr inbounds nuw i8, ptr %.sroa.0153.0164, i64 32
  call void @llvm.lifetime.start.p0(ptr nonnull %21) #32
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %21, i8 0, i64 16, i1 false)
  invoke void @_ZN8nlohmann16json_abi_v3_12_06detail20external_constructorILNS1_7value_tE3EE9constructINS0_10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES8_IhSaIhEEvEEEEvRT_RKNSJ_8string_tE(ptr noundef nonnull align 8 dereferenceable(16) %21, ptr noundef nonnull align 8 dereferenceable(32) %i.lm)
          to label %_ZN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEEvEC2IRKS9_S9_TnNSt9enable_ifIXaantsr6detail13is_basic_jsonIT0_EE5valuesr6detail18is_compatible_typeISD_SI_EE5valueEiE4typeELi0EEEOT_.exit unwind label %bb.bo

common.resume:                                    ; preds = %bb.br, %bb.bo
  %common.resume.op = phi { ptr, i32 } [ %i.ln, %bb.bo ], [ %i.lt, %bb.br ]
  resume { ptr, i32 } %common.resume.op

bb.bo:                                            ; preds = %bb.bn
  %i.ln = landingpad { ptr, i32 }
          cleanup
  call void @_ZN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEEvE4dataD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %21) #32
  br label %common.resume

_ZN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEEvEC2IRKS9_S9_TnNSt9enable_ifIXaantsr6detail13is_basic_jsonIT0_EE5valuesr6detail18is_compatible_typeISD_SI_EE5valueEiE4typeELi0EEEOT_.exit: ; preds = %bb.bn
  invoke void @_ZN8nlohmann16json_abi_v3_12_06detail13binary_writerINS0_10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES5_IhSaIhEEvEEhE13write_msgpackERKSF_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(16) %21)
          to label %bb.bp unwind label %bb.br

bb.bp:                                            ; preds = %_ZN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEEvEC2IRKS9_S9_TnNSt9enable_ifIXaantsr6detail13is_basic_jsonIT0_EE5valuesr6detail18is_compatible_typeISD_SI_EE5valueEiE4typeELi0EEEOT_.exit
  %i.lo = load i8, ptr %21, align 8, !tbaa !104
  invoke void @_ZN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEEvE10json_value7destroyENS0_6detail7value_tE(ptr noundef nonnull align 8 dereferenceable(8) %i.ll, i8 noundef zeroext %i.lo)
          to label %_ZN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEEvED2Ev.exit unwind label %bb.bq, !inline_history !111

bb.bq:                                            ; preds = %bb.bp
  %i.lp = landingpad { ptr, i32 }
          catch ptr null
  %i.lq = extractvalue { ptr, i32 } %i.lp, 0
  call void @__clang_call_terminate(ptr %i.lq) #33, !inline_history !111
  unreachable

_ZN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEEvED2Ev.exit: ; preds = %bb.bp
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #32
  %i.lr = getelementptr inbounds nuw i8, ptr %.sroa.0153.0164, i64 64
  call void @_ZN8nlohmann16json_abi_v3_12_06detail13binary_writerINS0_10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES5_IhSaIhEEvEEhE13write_msgpackERKSF_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(16) %i.lr)
  %i.ls = call noundef ptr @_ZSt18_Rb_tree_incrementPSt18_Rb_tree_node_base(ptr noundef nonnull %.sroa.0153.0164) #37 ; 2 uses
  %.not160 = icmp eq ptr %i.ls, %i.lk
  br i1 %.not160, label %.loopexit, label %bb.bn

bb.br:                                            ; preds = %_ZN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEEvEC2IRKS9_S9_TnNSt9enable_ifIXaantsr6detail13is_basic_jsonIT0_EE5valuesr6detail18is_compatible_typeISD_SI_EE5valueEiE4typeELi0EEEOT_.exit
  %i.lt = landingpad { ptr, i32 }
          cleanup
  call void @_ZN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEEvED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %21) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #32
  br label %common.resume

.loopexit:                                        ; preds = %_ZN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEEvED2Ev.exit, %.lr.ph167, %bb.bm, %bb.av, %bb.a, %bb.x, %_ZN8nlohmann16json_abi_v3_12_06detail13binary_writerINS0_10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES5_IhSaIhEEvEEhE12write_numberItEEvT_b.exit136, %bb.ae, %bb.ad, %bb.z, %bb.h, %bb.l, %bb.m, %_ZN8nlohmann16json_abi_v3_12_06detail13binary_writerINS0_10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES5_IhSaIhEEvEEhE12write_numberItEEvT_b.exit, %bb.f, %bb.q, %bb.u, %bb.v, %_ZN8nlohmann16json_abi_v3_12_06detail13binary_writerINS0_10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES5_IhSaIhEEvEEhE12write_numberIsEEvT_b.exit, %bb.o, %bb.bf, %bb.ao, %bb.af, %bb.c, %bb.b
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN8nlohmann16json_abi_v3_12_06detail13binary_writerINS0_10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES5_IhSaIhEEvEEhE12write_numberIiEEvT_b(ptr noundef nonnull align 8 dereferenceable(24) %0, i32 noundef %1, i1 noundef zeroext %2) local_unnamed_addr #3 comdat align 2 {
bb.a:
  %3 = alloca %"struct.std::array.171", align 4   ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #32
  store i32 %1, ptr %3, align 4
  %i.a = load i8, ptr %0, align 8, !tbaa !373, !range !99, !noundef !100
  %i.b = zext i1 %2 to i8
  %.not = icmp eq i8 %i.a, %i.b
  br i1 %.not, label %_ZSt7reverseIPhEvT_S1_.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.a
  %4 = tail call i32 @llvm.bswap.i32(i32 %1)
  store i32 %4, ptr %3, align 4, !tbaa !105
  br label %_ZSt7reverseIPhEvT_S1_.exit

_ZSt7reverseIPhEvT_S1_.exit:                      ; preds = %.lr.ph.i.i, %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !262  ; 2 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !91
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.g = load ptr, ptr %i.f, align 8
  call void %i.g(ptr noundef nonnull align 8 dereferenceable(8) %i.d, ptr noundef nonnull %3, i64 noundef 4)
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #32
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN8nlohmann16json_abi_v3_12_06detail13binary_writerINS0_10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES5_IhSaIhEEvEEhE12write_numberIlEEvT_b(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1, i1 noundef zeroext %2) local_unnamed_addr #3 comdat align 2 {
bb.a:
  %3 = alloca %"struct.std::array.172", align 8   ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #32
  store i64 %1, ptr %3, align 8
  %i.a = load i8, ptr %0, align 8, !tbaa !373, !range !99, !noundef !100
  %i.b = zext i1 %2 to i8
  %.not = icmp eq i8 %i.a, %i.b
  br i1 %.not, label %_ZSt7reverseIPhEvT_S1_.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.a
  %4 = tail call i64 @llvm.bswap.i64(i64 %1)
  store i64 %4, ptr %3, align 8, !tbaa !105
  br label %_ZSt7reverseIPhEvT_S1_.exit

_ZSt7reverseIPhEvT_S1_.exit:                      ; preds = %.lr.ph.i.i, %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !262  ; 2 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !91
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.g = load ptr, ptr %i.f, align 8
  call void %i.g(ptr noundef nonnull align 8 dereferenceable(8) %i.d, ptr noundef nonnull %3, i64 noundef 8)
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #32
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN7doctest6detail19stringifyBinaryExprIssEENS_6StringERKT_PKcRKT0_(ptr dead_on_unwind noalias writable sret(%"class.doctest::String") align 8 %0, ptr noundef nonnull align 2 dereferenceable(2) %1, ptr noundef %2, ptr noundef nonnull align 2 dereferenceable(2) %3) local_unnamed_addr #3 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"class.doctest::String", align 8   ; 7 uses
  %5 = alloca %"class.doctest::String", align 8   ; 7 uses
  %6 = alloca %"class.doctest::String", align 8   ; 7 uses
  %7 = alloca %"class.doctest::String", align 8   ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #32
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #32
  %i.a = load i16, ptr %1, align 2, !tbaa !130
  call void @_ZN7doctest8toStringEs(ptr dead_on_unwind nonnull writable sret(%"class.doctest::String") align 8 %5, i16 noundef signext %i.a)
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #32
  invoke void @_ZN7doctest6StringC1EPKc(ptr noundef nonnull align 8 dereferenceable(24) %6, ptr noundef %2)
          to label %bb.b unwind label %bb.f

bb.b:                                             ; preds = %bb.a
  invoke void @_ZN7doctestplERKNS_6StringES2_(ptr dead_on_unwind nonnull writable sret(%"class.doctest::String") align 8 %4, ptr noundef nonnull align 8 dereferenceable(24) %5, ptr noundef nonnull align 8 dereferenceable(24) %6)
          to label %bb.c unwind label %bb.g

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #32
  %i.b = load i16, ptr %3, align 2, !tbaa !130
  invoke void @_ZN7doctest8toStringEs(ptr dead_on_unwind nonnull writable sret(%"class.doctest::String") align 8 %7, i16 noundef signext %i.b)
          to label %bb.d unwind label %bb.h

bb.d:                                             ; preds = %bb.c
  invoke void @_ZN7doctestplERKNS_6StringES2_(ptr dead_on_unwind writable sret(%"class.doctest::String") align 8 %0, ptr noundef nonnull align 8 dereferenceable(24) %4, ptr noundef nonnull align 8 dereferenceable(24) %7)
          to label %bb.e unwind label %bb.i

bb.e:                                             ; preds = %bb.d
  call void @_ZN7doctest6StringD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %7) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #32
  call void @_ZN7doctest6StringD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %4) #32
  call void @_ZN7doctest6StringD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %6) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #32
  call void @_ZN7doctest6StringD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %5) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #32
  ret void

bb.f:                                             ; preds = %bb.a
  %i.c = landingpad { ptr, i32 }
          cleanup
  br label %bb.l

bb.g:                                             ; preds = %bb.b
  %i.d = landingpad { ptr, i32 }
          cleanup
  br label %bb.k

bb.h:                                             ; preds = %bb.c
  %i.e = landingpad { ptr, i32 }
          cleanup
  br label %bb.j

bb.i:                                             ; preds = %bb.d
  %i.f = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7doctest6StringD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %7) #32
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %.pn = phi { ptr, i32 } [ %i.f, %bb.i ], [ %i.e, %bb.h ]
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #32
  call void @_ZN7doctest6StringD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %4) #32
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.g
  %.pn.pn = phi { ptr, i32 } [ %.pn, %bb.j ], [ %i.d, %bb.g ]
  call void @_ZN7doctest6StringD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %6) #32
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.f
  %.pn.pn.pn = phi { ptr, i32 } [ %.pn.pn, %bb.k ], [ %i.c, %bb.f ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #32
  call void @_ZN7doctest6StringD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %5) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #32
  resume { ptr, i32 } %.pn.pn.pn
}

; Function Attrs: mustprogress nounwind uwtable
define internal void @"_ZN7doctest6detail12ContextScopeIZL19DOCTEST_ANON_FUNC_7vE4$_12ED0Ev"(ptr noundef nonnull align 8 dereferenceable(24) initializes((0, 8)) %0) unnamed_addr #5 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @"_ZTVN7doctest6detail12ContextScopeIZL19DOCTEST_ANON_FUNC_7vE4$_12EE", i64 16), ptr %0, align 8, !tbaa !91
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load i8, ptr %i.a, align 8, !tbaa !98, !range !99, !noundef !100
  %i.c = trunc nuw i8 %i.b to i1
  br i1 %i.c, label %bb.b, label %"_ZN7doctest6detail12ContextScopeIZL19DOCTEST_ANON_FUNC_7vE4$_12ED2Ev.exit"

bb.b:                                             ; preds = %bb.a
  invoke void @_ZN7doctest6detail16ContextScopeBase7destroyEv(ptr noundef nonnull align 8 dereferenceable(24) %0)
          to label %"_ZN7doctest6detail12ContextScopeIZL19DOCTEST_ANON_FUNC_7vE4$_12ED2Ev.exit" unwind label %bb.c, !inline_history !142

bb.c:                                             ; preds = %bb.b
  %i.d = landingpad { ptr, i32 }
          catch ptr null
  %i.e = extractvalue { ptr, i32 } %i.d, 0
  tail call void @__clang_call_terminate(ptr %i.e) #33, !inline_history !142
  unreachable

"_ZN7doctest6detail12ContextScopeIZL19DOCTEST_ANON_FUNC_7vE4$_12ED2Ev.exit": ; preds = %bb.a, %bb.b
  tail call void @_ZN7doctest13IContextScopeD2Ev(ptr noundef nonnull align 8 dead_on_return(9) dereferenceable(24) %0) #32, !inline_history !142
  tail call void @_ZdlPv(ptr noundef nonnull %0) #34
  ret void
}

; Function Attrs: mustprogress uwtable
define internal void @"_ZNK7doctest6detail12ContextScopeIZL19DOCTEST_ANON_FUNC_7vE4$_12E9stringifyEPSo"(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %0, ptr noundef %1) unnamed_addr #3 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.doctest::String", align 8   ; 7 uses
  %3 = alloca %"struct.doctest::detail::MessageBuilder", align 8 ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #32
  call void @_ZN7doctest6detail14MessageBuilderC1EPKciNS_10assertType4EnumE(ptr noundef nonnull align 8 dereferenceable(49) %3, ptr noundef nonnull @.str.5, i32 noundef 656, i32 noundef 1)
  %i.a = getelementptr inbounds nuw i8, ptr %3, i64 40
  store ptr %1, ptr %i.a, align 8, !tbaa !275
  %i.b = invoke noundef nonnull align 8 dereferenceable(49) ptr @_ZN7doctest6detail14MessageBuildercmIA6_cEERS1_RKT_(ptr noundef nonnull align 8 dereferenceable(49) %3, ptr noundef nonnull align 1 dereferenceable(6) @.str.439)
          to label %_ZN7doctest6detail14MessageBuildermlIA6_cEERS1_RKT_.exit.i unwind label %bb.c

_ZN7doctest6detail14MessageBuildermlIA6_cEERS1_RKT_.exit.i: ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !1906, !nonnull !100, !align !278
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 40
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !275
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #32
  %i.g = load i64, ptr %i.d, align 8, !tbaa !121
  invoke void @_ZN7doctest8toStringEm(ptr dead_on_unwind nonnull writable sret(%"class.doctest::String") align 8 %2, i64 noundef %i.g)
          to label %.noexc.i unwind label %bb.c

.noexc.i:                                         ; preds = %_ZN7doctest6detail14MessageBuildermlIA6_cEERS1_RKT_.exit.i
  %i.h = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN7doctestlsERSoRKNS_6StringE(ptr noundef nonnull align 8 dereferenceable(8) %i.f, ptr noundef nonnull align 8 dereferenceable(24) %2)
          to label %"_ZZL19DOCTEST_ANON_FUNC_7vENK4$_12clEPSo.exit" unwind label %bb.b ; 0 uses

bb.b:                                             ; preds = %.noexc.i
  %i.i = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7doctest6StringD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %2) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #32
  br label %.body.i

bb.c:                                             ; preds = %_ZN7doctest6detail14MessageBuildermlIA6_cEERS1_RKT_.exit.i, %bb.a
  %i.j = landingpad { ptr, i32 }
          cleanup
  br label %.body.i

.body.i:                                          ; preds = %bb.c, %bb.b
  %eh.lpad-body.i = phi { ptr, i32 } [ %i.j, %bb.c ], [ %i.i, %bb.b ]
  call void @_ZN7doctest6detail14MessageBuilderD1Ev(ptr noundef nonnull align 8 dead_on_return(49) dereferenceable(49) %3) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #32
  resume { ptr, i32 } %eh.lpad-body.i

"_ZZL19DOCTEST_ANON_FUNC_7vENK4$_12clEPSo.exit":  ; preds = %.noexc.i
  call void @_ZN7doctest6StringD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %2) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #32
  call void @_ZN7doctest6detail14MessageBuilderD1Ev(ptr noundef nonnull align 8 dead_on_return(49) dereferenceable(49) %3) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #32
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define internal void @"_ZN7doctest6detail12ContextScopeIZL19DOCTEST_ANON_FUNC_7vE4$_13ED0Ev"(ptr noundef nonnull align 8 dereferenceable(24) initializes((0, 8)) %0) unnamed_addr #5 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @"_ZTVN7doctest6detail12ContextScopeIZL19DOCTEST_ANON_FUNC_7vE4$_13EE", i64 16), ptr %0, align 8, !tbaa !91
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load i8, ptr %i.a, align 8, !tbaa !98, !range !99, !noundef !100
  %i.c = trunc nuw i8 %i.b to i1
  br i1 %i.c, label %bb.b, label %"_ZN7doctest6detail12ContextScopeIZL19DOCTEST_ANON_FUNC_7vE4$_13ED2Ev.exit"

bb.b:                                             ; preds = %bb.a
  invoke void @_ZN7doctest6detail16ContextScopeBase7destroyEv(ptr noundef nonnull align 8 dereferenceable(24) %0)
          to label %"_ZN7doctest6detail12ContextScopeIZL19DOCTEST_ANON_FUNC_7vE4$_13ED2Ev.exit" unwind label %bb.c, !inline_history !143

bb.c:                                             ; preds = %bb.b
  %i.d = landingpad { ptr, i32 }
          catch ptr null
  %i.e = extractvalue { ptr, i32 } %i.d, 0
  tail call void @__clang_call_terminate(ptr %i.e) #33, !inline_history !143
  unreachable

"_ZN7doctest6detail12ContextScopeIZL19DOCTEST_ANON_FUNC_7vE4$_13ED2Ev.exit": ; preds = %bb.a, %bb.b
  tail call void @_ZN7doctest13IContextScopeD2Ev(ptr noundef nonnull align 8 dead_on_return(9) dereferenceable(24) %0) #32, !inline_history !143
  tail call void @_ZdlPv(ptr noundef nonnull %0) #34
  ret void
}

; Function Attrs: mustprogress uwtable
define internal void @"_ZNK7doctest6detail12ContextScopeIZL19DOCTEST_ANON_FUNC_7vE4$_13E9stringifyEPSo"(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %0, ptr noundef %1) unnamed_addr #3 align 2 personality ptr @__gxx_personality_v0 {
end_hunk_7
begin_hunk_8_@_ZN8nlohmann16json_abi_v3_12_06detail13binary_writerINS0_10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES5_IhSaIhEEvEEcE10write_cborERKSF_:bb.a

bb.by:                                            ; preds = %bb.bw
  %.not = icmp ugt i64 %i.nj, 255
  br i1 %.not, label %bb.ca, label %bb.bz

bb.bz:                                            ; preds = %bb.by
  %i.ns = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.nt = load ptr, ptr %i.ns, align 8, !tbaa !241 ; 2 uses
  %i.nu = load ptr, ptr %i.nt, align 8, !tbaa !91
  %i.nv = load ptr, ptr %i.nu, align 8
  tail call void %i.nv(ptr noundef nonnull align 8 dereferenceable(8) %i.nt, i8 noundef signext -72)
  %i.nw = trunc nuw i64 %i.nj to i8
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #32
  store i8 %i.nw, ptr %3, align 1
  %i.nx = load ptr, ptr %i.ns, align 8, !tbaa !241 ; 2 uses
  %i.ny = load ptr, ptr %i.nx, align 8, !tbaa !91
  %i.nz = getelementptr inbounds nuw i8, ptr %i.ny, i64 8
  %i.oa = load ptr, ptr %i.nz, align 8
  call void %i.oa(ptr noundef nonnull align 8 dereferenceable(8) %i.nx, ptr noundef nonnull %3, i64 noundef 1), !inline_history !2252
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #32
  br label %bb.cf

bb.ca:                                            ; preds = %bb.by
  %.not114 = icmp ugt i64 %i.nj, 65535
  br i1 %.not114, label %bb.cc, label %bb.cb

bb.cb:                                            ; preds = %bb.ca
  %i.ob = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.oc = load ptr, ptr %i.ob, align 8, !tbaa !241 ; 2 uses
  %i.od = load ptr, ptr %i.oc, align 8, !tbaa !91
  %i.oe = load ptr, ptr %i.od, align 8
  tail call void %i.oe(ptr noundef nonnull align 8 dereferenceable(8) %i.oc, i8 noundef signext -71)
  %i.of = trunc nuw i64 %i.nj to i16
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #32
  store i16 %i.of, ptr %2, align 2
  %i.og = load i8, ptr %0, align 8, !tbaa !507, !range !99, !noundef !100
  %.not.i166 = icmp eq i8 %i.og, 0
  br i1 %.not.i166, label %_ZN8nlohmann16json_abi_v3_12_06detail13binary_writerINS0_10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES5_IhSaIhEEvEEcE12write_numberItEEvT_b.exit169, label %.lr.ph.i.i.i167

.lr.ph.i.i.i167:                                  ; preds = %bb.cb
  %i.oh = lshr i64 %i.nj, 8
  %i.oi = trunc nuw i64 %i.oh to i8
  %i.oj = trunc i64 %i.nj to i8
  %.012.i.i.i168 = getelementptr inbounds nuw i8, ptr %2, i64 1
  store i8 %i.oi, ptr %2, align 2, !tbaa !105
  store i8 %i.oj, ptr %.012.i.i.i168, align 1, !tbaa !105
  br label %_ZN8nlohmann16json_abi_v3_12_06detail13binary_writerINS0_10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES5_IhSaIhEEvEEcE12write_numberItEEvT_b.exit169

_ZN8nlohmann16json_abi_v3_12_06detail13binary_writerINS0_10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES5_IhSaIhEEvEEcE12write_numberItEEvT_b.exit169: ; preds = %bb.cb, %.lr.ph.i.i.i167
  %i.ok = load ptr, ptr %i.ob, align 8, !tbaa !241 ; 2 uses
  %i.ol = load ptr, ptr %i.ok, align 8, !tbaa !91
  %i.om = getelementptr inbounds nuw i8, ptr %i.ol, i64 8
  %i.on = load ptr, ptr %i.om, align 8
  call void %i.on(ptr noundef nonnull align 8 dereferenceable(8) %i.ok, ptr noundef nonnull %2, i64 noundef 2), !inline_history !2253
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #32
  br label %bb.cf

bb.cc:                                            ; preds = %bb.ca
  %.not115 = icmp ugt i64 %i.nj, 4294967295
  %i.oo = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.op = load ptr, ptr %i.oo, align 8, !tbaa !241 ; 3 uses
  %i.oq = load ptr, ptr %i.op, align 8, !tbaa !91
  %i.or = load ptr, ptr %i.oq, align 8            ; 2 uses
  br i1 %.not115, label %bb.ce, label %bb.cd

bb.cd:                                            ; preds = %bb.cc
  tail call void %i.or(ptr noundef nonnull align 8 dereferenceable(8) %i.op, i8 noundef signext -70)
  %i.os = trunc nuw i64 %i.nj to i32
  tail call void @_ZN8nlohmann16json_abi_v3_12_06detail13binary_writerINS0_10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES5_IhSaIhEEvEEcE12write_numberIjEEvT_b(ptr noundef nonnull align 8 dereferenceable(24) %0, i32 noundef %i.os, i1 noundef zeroext false)
  br label %bb.cf

bb.ce:                                            ; preds = %bb.cc
  tail call void %i.or(ptr noundef nonnull align 8 dereferenceable(8) %i.op, i8 noundef signext -69)
  tail call void @_ZN8nlohmann16json_abi_v3_12_06detail13binary_writerINS0_10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES5_IhSaIhEEvEEcE12write_numberImEEvT_b(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %i.nj, i1 noundef zeroext false)
  br label %bb.cf

bb.cf:                                            ; preds = %bb.bz, %bb.cd, %bb.ce, %_ZN8nlohmann16json_abi_v3_12_06detail13binary_writerINS0_10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES5_IhSaIhEEvEEcE12write_numberItEEvT_b.exit169, %bb.bx
  %i.ot = load ptr, ptr %i.ng, align 8, !tbaa !105 ; 2 uses
  %i.ou = getelementptr inbounds nuw i8, ptr %i.ot, i64 24
  %i.ov = load ptr, ptr %i.ou, align 8, !tbaa !249 ; 2 uses
  %i.ow = getelementptr inbounds nuw i8, ptr %i.ot, i64 8 ; 2 uses
  %.not178181 = icmp eq ptr %i.ov, %i.ow
  br i1 %.not178181, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.cf
  %i.ox = getelementptr inbounds nuw i8, ptr %29, i64 8
  br label %bb.cg

bb.cg:                                            ; preds = %.lr.ph, %_ZN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEEvED2Ev.exit
  %.sroa.0170.0182 = phi ptr [ %i.ov, %.lr.ph ], [ %i.pe, %_ZN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEEvED2Ev.exit ] ; 3 uses
  %i.oy = getelementptr inbounds nuw i8, ptr %.sroa.0170.0182, i64 32
  call void @llvm.lifetime.start.p0(ptr nonnull %29) #32
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %29, i8 0, i64 16, i1 false)
  invoke void @_ZN8nlohmann16json_abi_v3_12_06detail20external_constructorILNS1_7value_tE3EE9constructINS0_10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES8_IhSaIhEEvEEEEvRT_RKNSJ_8string_tE(ptr noundef nonnull align 8 dereferenceable(16) %29, ptr noundef nonnull align 8 dereferenceable(32) %i.oy)
          to label %_ZN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEEvEC2IRKS9_S9_TnNSt9enable_ifIXaantsr6detail13is_basic_jsonIT0_EE5valuesr6detail18is_compatible_typeISD_SI_EE5valueEiE4typeELi0EEEOT_.exit unwind label %bb.ch

common.resume:                                    ; preds = %bb.ck, %bb.ch
  %common.resume.op = phi { ptr, i32 } [ %i.oz, %bb.ch ], [ %i.pf, %bb.ck ]
  resume { ptr, i32 } %common.resume.op

bb.ch:                                            ; preds = %bb.cg
  %i.oz = landingpad { ptr, i32 }
          cleanup
  call void @_ZN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEEvE4dataD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %29) #32
  br label %common.resume

_ZN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEEvEC2IRKS9_S9_TnNSt9enable_ifIXaantsr6detail13is_basic_jsonIT0_EE5valuesr6detail18is_compatible_typeISD_SI_EE5valueEiE4typeELi0EEEOT_.exit: ; preds = %bb.cg
  invoke void @_ZN8nlohmann16json_abi_v3_12_06detail13binary_writerINS0_10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES5_IhSaIhEEvEEcE10write_cborERKSF_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(16) %29)
          to label %bb.ci unwind label %bb.ck

bb.ci:                                            ; preds = %_ZN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEEvEC2IRKS9_S9_TnNSt9enable_ifIXaantsr6detail13is_basic_jsonIT0_EE5valuesr6detail18is_compatible_typeISD_SI_EE5valueEiE4typeELi0EEEOT_.exit
  %i.pa = load i8, ptr %29, align 8, !tbaa !104
  invoke void @_ZN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEEvE10json_value7destroyENS0_6detail7value_tE(ptr noundef nonnull align 8 dereferenceable(8) %i.ox, i8 noundef zeroext %i.pa)
          to label %_ZN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEEvED2Ev.exit unwind label %bb.cj, !inline_history !111

bb.cj:                                            ; preds = %bb.ci
  %i.pb = landingpad { ptr, i32 }
          catch ptr null
  %i.pc = extractvalue { ptr, i32 } %i.pb, 0
  call void @__clang_call_terminate(ptr %i.pc) #33, !inline_history !111
  unreachable

_ZN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEEvED2Ev.exit: ; preds = %bb.ci
  call void @llvm.lifetime.end.p0(ptr nonnull %29) #32
  %i.pd = getelementptr inbounds nuw i8, ptr %.sroa.0170.0182, i64 64
  call void @_ZN8nlohmann16json_abi_v3_12_06detail13binary_writerINS0_10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES5_IhSaIhEEvEEcE10write_cborERKSF_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(16) %i.pd)
  %i.pe = call noundef ptr @_ZSt18_Rb_tree_incrementPSt18_Rb_tree_node_base(ptr noundef nonnull %.sroa.0170.0182) #37 ; 2 uses
  %.not178 = icmp eq ptr %i.pe, %i.ow
  br i1 %.not178, label %.loopexit, label %bb.cg

bb.ck:                                            ; preds = %_ZN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEEvEC2IRKS9_S9_TnNSt9enable_ifIXaantsr6detail13is_basic_jsonIT0_EE5valuesr6detail18is_compatible_typeISD_SI_EE5valueEiE4typeELi0EEEOT_.exit
  %i.pf = landingpad { ptr, i32 }
          cleanup
  call void @_ZN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEEvED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %29) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %29) #32
  br label %common.resume

.loopexit:                                        ; preds = %_ZN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEEvED2Ev.exit, %.lr.ph185, %bb.cf, %bb.bd, %bb.o, %_ZN8nlohmann16json_abi_v3_12_06detail13binary_writerINS0_10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES5_IhSaIhEEvEEcE12write_numberItEEvT_b.exit145, %bb.v, %bb.u, %bb.q, %bb.a, %bb.ag, %bb.aj, %bb.ai, %bb.x, %_ZN8nlohmann16json_abi_v3_12_06detail13binary_writerINS0_10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES5_IhSaIhEEvEEcE12write_numberItEEvT_b.exit149, %bb.ae, %bb.ad, %bb.z, %bb.h, %bb.l, %bb.m, %_ZN8nlohmann16json_abi_v3_12_06detail13binary_writerINS0_10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES5_IhSaIhEEvEEcE12write_numberItEEvT_b.exit, %bb.f, %bb.bv, %bb.at, %bb.c, %bb.b
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN8nlohmann16json_abi_v3_12_06detail13binary_writerINS0_10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES5_IhSaIhEEvEEcED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %0) unnamed_addr #11 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !242  ; 8 uses
  %.not.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i, label %_ZNSt12__shared_ptrIN8nlohmann16json_abi_v3_12_06detail23output_adapter_protocolIcEELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 4 uses
  %i.d = load atomic i64, ptr %i.c acquire, align 8 ; 2 uses
  %i.e = icmp eq i64 %i.d, 4294967297
  %i.f = trunc i64 %i.d to i32                    ; 2 uses
  br i1 %i.e, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  store i32 0, ptr %i.c, align 8, !tbaa !234
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 12
  store i32 0, ptr %i.g, align 4, !tbaa !235
  %i.h = load ptr, ptr %i.b, align 8, !tbaa !91
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.j = load ptr, ptr %i.i, align 8
  tail call void %i.j(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #32, !inline_history !28
  %i.k = load ptr, ptr %i.b, align 8, !tbaa !91
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 24
  %i.m = load ptr, ptr %i.l, align 8
  tail call void %i.m(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #32, !inline_history !28
  br label %_ZNSt12__shared_ptrIN8nlohmann16json_abi_v3_12_06detail23output_adapter_protocolIcEELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.d:                                             ; preds = %bb.b
  %i.n = load i8, ptr @__libc_single_threaded, align 1, !tbaa !105
  %.not.i.i.i = icmp eq i8 %i.n, 0
  br i1 %.not.i.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.o = add nsw i32 %i.f, -1
  store i32 %i.o, ptr %i.c, align 8, !tbaa !124
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

bb.f:                                             ; preds = %bb.d
  %i.p = atomicrmw volatile add ptr %i.c, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i: ; preds = %bb.f, %bb.e
  %.0.i.i.i.i = phi i32 [ %i.f, %bb.e ], [ %i.p, %bb.f ]
  %i.q = icmp eq i32 %.0.i.i.i.i, 1
  br i1 %i.q, label %bb.g, label %_ZNSt12__shared_ptrIN8nlohmann16json_abi_v3_12_06detail23output_adapter_protocolIcEELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !243

bb.g:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #32
  br label %_ZNSt12__shared_ptrIN8nlohmann16json_abi_v3_12_06detail23output_adapter_protocolIcEELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt12__shared_ptrIN8nlohmann16json_abi_v3_12_06detail23output_adapter_protocolIcEELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %bb.a, %bb.c, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i, %bb.g
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN8nlohmann16json_abi_v3_12_06detail13binary_writerINS0_10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES5_IhSaIhEEvEEcE12write_numberIjEEvT_b(ptr noundef nonnull align 8 dereferenceable(24) %0, i32 noundef %1, i1 noundef zeroext %2) local_unnamed_addr #3 comdat align 2 {
bb.a:
  %3 = alloca %"struct.std::array.227", align 4   ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #32
  store i32 %1, ptr %3, align 4
  %i.a = load i8, ptr %0, align 8, !tbaa !507, !range !99, !noundef !100
  %i.b = zext i1 %2 to i8
  %.not = icmp eq i8 %i.a, %i.b
  br i1 %.not, label %_ZSt7reverseIPcEvT_S1_.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.a
  %4 = tail call i32 @llvm.bswap.i32(i32 %1)
  store i32 %4, ptr %3, align 4, !tbaa !105
  br label %_ZSt7reverseIPcEvT_S1_.exit

_ZSt7reverseIPcEvT_S1_.exit:                      ; preds = %.lr.ph.i.i, %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !241  ; 2 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !91
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.g = load ptr, ptr %i.f, align 8
  call void %i.g(ptr noundef nonnull align 8 dereferenceable(8) %i.d, ptr noundef nonnull %3, i64 noundef 4)
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #32
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN8nlohmann16json_abi_v3_12_06detail13binary_writerINS0_10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES5_IhSaIhEEvEEcE12write_numberImEEvT_b(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1, i1 noundef zeroext %2) local_unnamed_addr #3 comdat align 2 {
bb.a:
  %3 = alloca %"struct.std::array.380", align 8   ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #32
  store i64 %1, ptr %3, align 8
  %i.a = load i8, ptr %0, align 8, !tbaa !507, !range !99, !noundef !100
  %i.b = zext i1 %2 to i8
  %.not = icmp eq i8 %i.a, %i.b
  br i1 %.not, label %_ZSt7reverseIPcEvT_S1_.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.a
  %4 = tail call i64 @llvm.bswap.i64(i64 %1)
  store i64 %4, ptr %3, align 8, !tbaa !105
  br label %_ZSt7reverseIPcEvT_S1_.exit

_ZSt7reverseIPcEvT_S1_.exit:                      ; preds = %.lr.ph.i.i, %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !241  ; 2 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !91
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.g = load ptr, ptr %i.f, align 8
  call void %i.g(ptr noundef nonnull align 8 dereferenceable(8) %i.d, ptr noundef nonnull %3, i64 noundef 8)
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #32
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN8nlohmann16json_abi_v3_12_06detail13binary_writerINS0_10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES5_IhSaIhEEvEEcE19write_compact_floatEdNS1_14input_format_tE(ptr noundef nonnull align 8 dereferenceable(24) %0, double noundef %1, i32 noundef %2) local_unnamed_addr #3 comdat align 2 {
bb.a:
  %3 = alloca %"struct.std::array.380", align 8   ; 5 uses
  %4 = alloca %"struct.std::array.227", align 4   ; 5 uses
  %i.a = tail call double @llvm.fabs.f64(double %1)
  %or.cond = fcmp ugt double %i.a, f0x47EFFFFFE0000000
  br i1 %or.cond, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = fptrunc double %1 to float               ; 3 uses
  %i.c = fpext float %i.b to double
  %i.d = fcmp oeq double %1, %i.c
  br i1 %i.d, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !241  ; 2 uses
  %i.g = icmp eq i32 %2, 1
  %spec.select = select i1 %i.g, i8 -6, i8 -54
  %i.h = load ptr, ptr %i.f, align 8, !tbaa !91
  %i.i = load ptr, ptr %i.h, align 8
  tail call void %i.i(ptr noundef nonnull align 8 dereferenceable(8) %i.f, i8 noundef signext %spec.select)
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #32
  store float %i.b, ptr %4, align 4
  %i.j = load i8, ptr %0, align 8, !tbaa !507, !range !99, !noundef !100
  %.not.i = icmp eq i8 %i.j, 0
  br i1 %.not.i, label %_ZN8nlohmann16json_abi_v3_12_06detail13binary_writerINS0_10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES5_IhSaIhEEvEEcE12write_numberIfEEvT_b.exit, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.c
  %i.k = bitcast float %i.b to i32
  %5 = tail call i32 @llvm.bswap.i32(i32 %i.k)
  store i32 %5, ptr %4, align 4, !tbaa !105
  br label %_ZN8nlohmann16json_abi_v3_12_06detail13binary_writerINS0_10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES5_IhSaIhEEvEEcE12write_numberIfEEvT_b.exit

_ZN8nlohmann16json_abi_v3_12_06detail13binary_writerINS0_10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES5_IhSaIhEEvEEcE12write_numberIfEEvT_b.exit: ; preds = %bb.c, %.lr.ph.i.i.i
  %i.l = load ptr, ptr %i.e, align 8, !tbaa !241  ; 2 uses
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !91
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  %i.o = load ptr, ptr %i.n, align 8
  call void %i.o(ptr noundef nonnull align 8 dereferenceable(8) %i.l, ptr noundef nonnull %4, i64 noundef 4), !inline_history !2254
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #32
  br label %bb.e

bb.d:                                             ; preds = %bb.b, %bb.a
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !241  ; 2 uses
  %i.r = icmp eq i32 %2, 1
  %spec.select16 = select i1 %i.r, i8 -5, i8 -53
  %i.s = load ptr, ptr %i.q, align 8, !tbaa !91
  %i.t = load ptr, ptr %i.s, align 8
  tail call void %i.t(ptr noundef nonnull align 8 dereferenceable(8) %i.q, i8 noundef signext %spec.select16)
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #32
  store double %1, ptr %3, align 8
  %i.u = load i8, ptr %0, align 8, !tbaa !507, !range !99, !noundef !100
  %.not.i12 = icmp eq i8 %i.u, 0
  br i1 %.not.i12, label %_ZN8nlohmann16json_abi_v3_12_06detail13binary_writerINS0_10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES5_IhSaIhEEvEEcE12write_numberIdEEvT_b.exit, label %.lr.ph.i.i.i13

.lr.ph.i.i.i13:                                   ; preds = %bb.d
  %6 = bitcast double %1 to i64
  %7 = tail call i64 @llvm.bswap.i64(i64 %6)
  store i64 %7, ptr %3, align 8, !tbaa !105
  br label %_ZN8nlohmann16json_abi_v3_12_06detail13binary_writerINS0_10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES5_IhSaIhEEvEEcE12write_numberIdEEvT_b.exit

_ZN8nlohmann16json_abi_v3_12_06detail13binary_writerINS0_10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES5_IhSaIhEEvEEcE12write_numberIdEEvT_b.exit: ; preds = %bb.d, %.lr.ph.i.i.i13
  %i.v = load ptr, ptr %i.p, align 8, !tbaa !241  ; 2 uses
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !91
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 8
  %i.y = load ptr, ptr %i.x, align 8
  call void %i.y(ptr noundef nonnull align 8 dereferenceable(8) %i.v, ptr noundef nonnull %3, i64 noundef 8), !inline_history !2255
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #32
  br label %bb.e

bb.e:                                             ; preds = %_ZN8nlohmann16json_abi_v3_12_06detail13binary_writerINS0_10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES5_IhSaIhEEvEEcE12write_numberIdEEvT_b.exit, %_ZN8nlohmann16json_abi_v3_12_06detail13binary_writerINS0_10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES5_IhSaIhEEvEEcE12write_numberIfEEvT_b.exit
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN8nlohmann16json_abi_v3_12_06detail13binary_readerINS0_10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES5_IhSaIhEEvEENS1_22iterator_input_adapterIN9__gnu_cxx17__normal_iteratorIPKcSB_EEEENS1_19json_sax_dom_parserISF_SM_EEEC2EOSM_NS1_14input_format_tE(ptr noundef nonnull align 8 dereferenceable(560) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, i32 noundef %2) unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 {
._crit_edge.i.i.i:
  %3 = alloca %"struct.std::pair.386", align 8    ; 8 uses
  %4 = alloca %"struct.std::pair.386", align 8    ; 8 uses
  %5 = alloca %"struct.std::pair.386", align 8    ; 8 uses
  %6 = alloca %"struct.std::pair.386", align 8    ; 8 uses
  %7 = alloca %"struct.std::pair.386", align 8    ; 8 uses
  %8 = alloca %"struct.std::pair.386", align 8    ; 8 uses
  %9 = alloca %"struct.std::pair.386", align 8    ; 8 uses
  %10 = alloca %"struct.std::pair.386", align 8   ; 8 uses
  %11 = alloca %"struct.std::pair.386", align 8   ; 8 uses
  %12 = alloca %"struct.std::pair.386", align 8   ; 8 uses
  %13 = alloca %"struct.std::pair.386", align 8   ; 8 uses
  %14 = alloca %"struct.std::pair.386", align 8   ; 8 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, i64 16, i1 false), !tbaa.struct !382
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i32 -1, ptr %i.a, align 8, !tbaa !550
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 0, ptr %i.b, align 8, !tbaa !551
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i8 1, ptr %i.c, align 8, !tbaa !552
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 36
  store i32 %2, ptr %i.d, align 4, !tbaa !553
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 40
  store ptr null, ptr %i.e, align 8, !tbaa !554
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 48
  store <4 x i32> <i32 70, i32 72, i32 78, i32 83>, ptr %i.f, align 8, !tbaa !124, !alias.scope !2258
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 64
  store <4 x i32> <i32 84, i32 90, i32 91, i32 123>, ptr %i.g, align 8, !tbaa !124, !alias.scope !2258
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #32
  store i32 66, ptr %3, align 8, !tbaa !556
  %i.h = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %3, i64 24 ; 3 uses
  store ptr %i.i, ptr %i.h, align 8, !tbaa !162
  store i32 1702132066, ptr %i.i, align 8
  %i.j = getelementptr inbounds nuw i8, ptr %3, i64 16
  store i64 4, ptr %i.j, align 8, !tbaa !165
  %i.k = getelementptr inbounds nuw i8, ptr %3, i64 28
  store i8 0, ptr %i.k, align 4, !tbaa !105
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #32
  store i32 67, ptr %4, align 8, !tbaa !556
  %i.l = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %4, i64 24 ; 3 uses
  store ptr %i.m, ptr %i.l, align 8, !tbaa !162
  store i32 1918986339, ptr %i.m, align 8
  %i.n = getelementptr inbounds nuw i8, ptr %4, i64 16
  store i64 4, ptr %i.n, align 8, !tbaa !165
  %i.o = getelementptr inbounds nuw i8, ptr %4, i64 28
  store i8 0, ptr %i.o, align 4, !tbaa !105
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #32
  store i32 68, ptr %5, align 8, !tbaa !556
  %i.p = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %5, i64 24 ; 3 uses
  store ptr %i.q, ptr %i.p, align 8, !tbaa !162
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(6) %i.q, ptr noundef nonnull align 1 dereferenceable(6) @.str.305, i64 6, i1 false)
  %i.r = getelementptr inbounds nuw i8, ptr %5, i64 16
  store i64 6, ptr %i.r, align 8, !tbaa !165
  %i.s = getelementptr inbounds nuw i8, ptr %5, i64 30
  store i8 0, ptr %i.s, align 2, !tbaa !105
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #32
  store i32 73, ptr %6, align 8, !tbaa !556
  %i.t = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %6, i64 24 ; 3 uses
  store ptr %i.u, ptr %i.t, align 8, !tbaa !162
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(5) %i.u, ptr noundef nonnull align 1 dereferenceable(5) @.str.306, i64 5, i1 false)
  %i.v = getelementptr inbounds nuw i8, ptr %6, i64 16
  store i64 5, ptr %i.v, align 8, !tbaa !165
  %i.w = getelementptr inbounds nuw i8, ptr %6, i64 29
  store i8 0, ptr %i.w, align 1, !tbaa !105
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #32
  store i32 76, ptr %7, align 8, !tbaa !556
  %i.x = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %7, i64 24 ; 3 uses
  store ptr %i.y, ptr %i.x, align 8, !tbaa !162
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(5) %i.y, ptr noundef nonnull align 1 dereferenceable(5) @.str.307, i64 5, i1 false)
  %i.z = getelementptr inbounds nuw i8, ptr %7, i64 16
  store i64 5, ptr %i.z, align 8, !tbaa !165
  %i.aa = getelementptr inbounds nuw i8, ptr %7, i64 29
  store i8 0, ptr %i.aa, align 1, !tbaa !105
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #32
  store i32 77, ptr %8, align 8, !tbaa !556
  %i.ab = getelementptr inbounds nuw i8, ptr %8, i64 8 ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %8, i64 24 ; 3 uses
  store ptr %i.ac, ptr %i.ab, align 8, !tbaa !162
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(6) %i.ac, ptr noundef nonnull align 1 dereferenceable(6) @.str.308, i64 6, i1 false)
  %i.ad = getelementptr inbounds nuw i8, ptr %8, i64 16
  store i64 6, ptr %i.ad, align 8, !tbaa !165
  %i.ae = getelementptr inbounds nuw i8, ptr %8, i64 30
  store i8 0, ptr %i.ae, align 2, !tbaa !105
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #32
  store i32 85, ptr %9, align 8, !tbaa !556
  %i.af = getelementptr inbounds nuw i8, ptr %9, i64 8 ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %9, i64 24 ; 3 uses
  store ptr %i.ag, ptr %i.af, align 8, !tbaa !162
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(5) %i.ag, ptr noundef nonnull align 1 dereferenceable(5) @.str.309, i64 5, i1 false)
  %i.ah = getelementptr inbounds nuw i8, ptr %9, i64 16
  store i64 5, ptr %i.ah, align 8, !tbaa !165
  %i.ai = getelementptr inbounds nuw i8, ptr %9, i64 29
  store i8 0, ptr %i.ai, align 1, !tbaa !105
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #32
  store i32 100, ptr %10, align 8, !tbaa !556
  %i.aj = getelementptr inbounds nuw i8, ptr %10, i64 8 ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %10, i64 24 ; 3 uses
  store ptr %i.ak, ptr %i.aj, align 8, !tbaa !162
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(6) %i.ak, ptr noundef nonnull align 1 dereferenceable(6) @.str.310, i64 6, i1 false)
  %i.al = getelementptr inbounds nuw i8, ptr %10, i64 16
  store i64 6, ptr %i.al, align 8, !tbaa !165
  %i.am = getelementptr inbounds nuw i8, ptr %10, i64 30
  store i8 0, ptr %i.am, align 2, !tbaa !105
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #32
  store i32 105, ptr %11, align 8, !tbaa !556
  %i.an = getelementptr inbounds nuw i8, ptr %11, i64 8 ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %11, i64 24 ; 3 uses
  store ptr %i.ao, ptr %i.an, align 8, !tbaa !162
  store i32 947154537, ptr %i.ao, align 8
  %i.ap = getelementptr inbounds nuw i8, ptr %11, i64 16
  store i64 4, ptr %i.ap, align 8, !tbaa !165
  %i.aq = getelementptr inbounds nuw i8, ptr %11, i64 28
  store i8 0, ptr %i.aq, align 4, !tbaa !105
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #32
  store i32 108, ptr %12, align 8, !tbaa !556
  %i.ar = getelementptr inbounds nuw i8, ptr %12, i64 8 ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %12, i64 24 ; 3 uses
  store ptr %i.as, ptr %i.ar, align 8, !tbaa !162
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(5) %i.as, ptr noundef nonnull align 1 dereferenceable(5) @.str.312, i64 5, i1 false)
  %i.at = getelementptr inbounds nuw i8, ptr %12, i64 16
  store i64 5, ptr %i.at, align 8, !tbaa !165
  %i.au = getelementptr inbounds nuw i8, ptr %12, i64 29
  store i8 0, ptr %i.au, align 1, !tbaa !105
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #32
  store i32 109, ptr %13, align 8, !tbaa !556
  %i.av = getelementptr inbounds nuw i8, ptr %13, i64 8 ; 2 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %13, i64 24 ; 3 uses
  store ptr %i.aw, ptr %i.av, align 8, !tbaa !162
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(6) %i.aw, ptr noundef nonnull align 1 dereferenceable(6) @.str.313, i64 6, i1 false)
  %i.ax = getelementptr inbounds nuw i8, ptr %13, i64 16
  store i64 6, ptr %i.ax, align 8, !tbaa !165
  %i.ay = getelementptr inbounds nuw i8, ptr %13, i64 30
  store i8 0, ptr %i.ay, align 2, !tbaa !105
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #32
  store i32 117, ptr %14, align 8, !tbaa !556
  %i.az = getelementptr inbounds nuw i8, ptr %14, i64 8 ; 2 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %14, i64 24 ; 3 uses
  store ptr %i.ba, ptr %i.az, align 8, !tbaa !162
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(6) %i.ba, ptr noundef nonnull align 1 dereferenceable(6) @.str.314, i64 6, i1 false)
  %i.bb = getelementptr inbounds nuw i8, ptr %14, i64 16
  store i64 6, ptr %i.bb, align 8, !tbaa !165
  %i.bc = getelementptr inbounds nuw i8, ptr %14, i64 30
  store i8 0, ptr %i.bc, align 2, !tbaa !105
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 80
  call void @_ZN8nlohmann16json_abi_v3_12_06detail10make_arrayISt4pairIiNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEJSA_SA_SA_SA_SA_SA_SA_SA_SA_SA_SA_SA_EEESt5arrayIT_XsZT0_EEDpOT0_(ptr dead_on_unwind nonnull writable sret(%"struct.std::array.385") align 8 %i.bd, ptr noundef nonnull align 8 dereferenceable(40) %3, ptr noundef nonnull align 8 dereferenceable(40) %4, ptr noundef nonnull align 8 dereferenceable(40) %5, ptr noundef nonnull align 8 dereferenceable(40) %6, ptr noundef nonnull align 8 dereferenceable(40) %7, ptr noundef nonnull align 8 dereferenceable(40) %8, ptr noundef nonnull align 8 dereferenceable(40) %9, ptr noundef nonnull align 8 dereferenceable(40) %10, ptr noundef nonnull align 8 dereferenceable(40) %11, ptr noundef nonnull align 8 dereferenceable(40) %12, ptr noundef nonnull align 8 dereferenceable(40) %13, ptr noundef nonnull align 8 dereferenceable(40) %14)
  %i.be = load ptr, ptr %i.az, align 8, !tbaa !164 ; 2 uses
  %i.bf = icmp eq ptr %i.be, %i.ba
  br i1 %i.bf, label %_ZNSt4pairIiNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %._crit_edge.i.i.i
  call void @_ZdlPv(ptr noundef %i.be) #34
  br label %_ZNSt4pairIiNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEED2Ev.exit

_ZNSt4pairIiNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEED2Ev.exit: ; preds = %._crit_edge.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #32
  %i.bg = load ptr, ptr %i.av, align 8, !tbaa !164 ; 2 uses
  %i.bh = icmp eq ptr %i.bg, %i.aw
  br i1 %i.bh, label %_ZNSt4pairIiNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEED2Ev.exit46, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i44

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i44: ; preds = %_ZNSt4pairIiNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEED2Ev.exit
  call void @_ZdlPv(ptr noundef %i.bg) #34
  br label %_ZNSt4pairIiNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEED2Ev.exit46

_ZNSt4pairIiNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEED2Ev.exit46: ; preds = %_ZNSt4pairIiNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i44
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #32
  %i.bi = load ptr, ptr %i.ar, align 8, !tbaa !164 ; 2 uses
  %i.bj = icmp eq ptr %i.bi, %i.as
  br i1 %i.bj, label %_ZNSt4pairIiNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEED2Ev.exit49, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i47

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i47: ; preds = %_ZNSt4pairIiNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEED2Ev.exit46
  call void @_ZdlPv(ptr noundef %i.bi) #34
  br label %_ZNSt4pairIiNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEED2Ev.exit49

_ZNSt4pairIiNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEED2Ev.exit49: ; preds = %_ZNSt4pairIiNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEED2Ev.exit46, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i47
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #32
  %i.bk = load ptr, ptr %i.an, align 8, !tbaa !164 ; 2 uses
  %i.bl = icmp eq ptr %i.bk, %i.ao
  br i1 %i.bl, label %_ZNSt4pairIiNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEED2Ev.exit52, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i50
end_hunk_8
begin_hunk_9_@_GLOBAL__sub_I_unit_cbor.cpp:bb.a
          to label %__cxx_global_var_init.11.exit unwind label %bb.y ; 0 uses

bb.x:                                             ; preds = %__cxx_global_var_init.9.exit
  %i.an = landingpad { ptr, i32 }
          cleanup
  br label %bb.z

bb.y:                                             ; preds = %bb.w, %bb.v
  %i.ao = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7doctest6detail8TestCaseD2Ev(ptr noundef nonnull align 8 dead_on_return(144) dereferenceable(144) %6) #32
  br label %bb.z

bb.z:                                             ; preds = %bb.y, %bb.x
  %.pn.pn.i = phi { ptr, i32 } [ %i.ao, %bb.y ], [ %i.an, %bb.x ]
  call void @_ZN7doctest6StringD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %7) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #32
  br label %common.resume

__cxx_global_var_init.11.exit:                    ; preds = %bb.w
  %i.ap = getelementptr inbounds nuw i8, ptr %6, i64 120
  call void @_ZN7doctest6StringD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %i.ap) #32
  %i.aq = getelementptr inbounds nuw i8, ptr %6, i64 88
  call void @_ZN7doctest6StringD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %i.aq) #32
  call void @_ZN7doctest6StringD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(144) %6) #32
  call void @_ZN7doctest6StringD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %7) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #32
  store i32 0, ptr @_ZL20DOCTEST_ANON_VAR_201, align 4, !tbaa !124
  %i.ar = call ptr @llvm.invariant.start.p0(i64 4, ptr nonnull @_ZL20DOCTEST_ANON_VAR_201) ; 0 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #32
  %i.as = call noundef nonnull align 8 dereferenceable(40) ptr @_ZN28doctest_detail_test_suite_ns19getCurrentTestSuiteEv()
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #32
  call void @_ZN7doctest6StringC1Ev(ptr noundef nonnull align 8 dereferenceable(24) %5) #32
  invoke void @_ZN7doctest6detail8TestCaseC1EPFvvEPKcjRKNS0_9TestSuiteERKNS_6StringEi(ptr noundef nonnull align 8 dereferenceable(144) %4, ptr noundef nonnull @_ZL21DOCTEST_ANON_FUNC_226v, ptr noundef nonnull @.str.5, i32 noundef 2211, ptr noundef nonnull align 8 dereferenceable(40) %i.as, ptr noundef nonnull align 8 dereferenceable(24) %5, i32 noundef -1)
          to label %bb.aa unwind label %bb.ac

bb.aa:                                            ; preds = %__cxx_global_var_init.11.exit
  %i.at = invoke noundef nonnull align 8 dereferenceable(144) ptr @_ZN7doctest6detail8TestCasemlEPKc(ptr noundef nonnull align 8 dereferenceable(144) %4, ptr noundef nonnull @.str.14)
          to label %bb.ab unwind label %bb.ad

bb.ab:                                            ; preds = %bb.aa
  %i.au = invoke noundef i32 @_ZN7doctest6detail7regTestERKNS0_8TestCaseE(ptr noundef nonnull align 8 dereferenceable(144) %i.at)
          to label %__cxx_global_var_init.13.exit unwind label %bb.ad ; 0 uses

bb.ac:                                            ; preds = %__cxx_global_var_init.11.exit
  %i.av = landingpad { ptr, i32 }
          cleanup
  br label %bb.ae

bb.ad:                                            ; preds = %bb.ab, %bb.aa
  %i.aw = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7doctest6detail8TestCaseD2Ev(ptr noundef nonnull align 8 dead_on_return(144) dereferenceable(144) %4) #32
  br label %bb.ae

bb.ae:                                            ; preds = %bb.ad, %bb.ac
  %.pn.i4 = phi { ptr, i32 } [ %i.aw, %bb.ad ], [ %i.av, %bb.ac ]
  call void @_ZN7doctest6StringD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %5) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #32
  br label %common.resume

__cxx_global_var_init.13.exit:                    ; preds = %bb.ab
  %i.ax = getelementptr inbounds nuw i8, ptr %4, i64 120
  call void @_ZN7doctest6StringD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %i.ax) #32
  %i.ay = getelementptr inbounds nuw i8, ptr %4, i64 88
  call void @_ZN7doctest6StringD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %i.ay) #32
  call void @_ZN7doctest6StringD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(144) %4) #32
  call void @_ZN7doctest6StringD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %5) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #32
  store i32 0, ptr @_ZL20DOCTEST_ANON_VAR_227, align 4, !tbaa !124
  %i.az = call ptr @llvm.invariant.start.p0(i64 4, ptr nonnull @_ZL20DOCTEST_ANON_VAR_227) ; 0 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #32
  %i.ba = call noundef nonnull align 8 dereferenceable(40) ptr @_ZN28doctest_detail_test_suite_ns19getCurrentTestSuiteEv()
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #32
  call void @_ZN7doctest6StringC1Ev(ptr noundef nonnull align 8 dereferenceable(24) %3) #32
  invoke void @_ZN7doctest6detail8TestCaseC1EPFvvEPKcjRKNS0_9TestSuiteERKNS_6StringEi(ptr noundef nonnull align 8 dereferenceable(144) %2, ptr noundef nonnull @_ZL21DOCTEST_ANON_FUNC_232v, ptr noundef nonnull @.str.5, i32 noundef 2283, ptr noundef nonnull align 8 dereferenceable(40) %i.ba, ptr noundef nonnull align 8 dereferenceable(24) %3, i32 noundef -1)
          to label %bb.af unwind label %bb.ah

bb.af:                                            ; preds = %__cxx_global_var_init.13.exit
  %i.bb = invoke noundef nonnull align 8 dereferenceable(144) ptr @_ZN7doctest6detail8TestCasemlEPKc(ptr noundef nonnull align 8 dereferenceable(144) %2, ptr noundef nonnull @.str.16)
          to label %bb.ag unwind label %bb.ai

bb.ag:                                            ; preds = %bb.af
  %i.bc = invoke noundef i32 @_ZN7doctest6detail7regTestERKNS0_8TestCaseE(ptr noundef nonnull align 8 dereferenceable(144) %i.bb)
          to label %__cxx_global_var_init.15.exit unwind label %bb.ai ; 0 uses

bb.ah:                                            ; preds = %__cxx_global_var_init.13.exit
  %i.bd = landingpad { ptr, i32 }
          cleanup
  br label %bb.aj

bb.ai:                                            ; preds = %bb.ag, %bb.af
  %i.be = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7doctest6detail8TestCaseD2Ev(ptr noundef nonnull align 8 dead_on_return(144) dereferenceable(144) %2) #32
  br label %bb.aj

bb.aj:                                            ; preds = %bb.ai, %bb.ah
  %.pn.i5 = phi { ptr, i32 } [ %i.be, %bb.ai ], [ %i.bd, %bb.ah ]
  call void @_ZN7doctest6StringD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %3) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #32
  br label %common.resume

__cxx_global_var_init.15.exit:                    ; preds = %bb.ag
  %i.bf = getelementptr inbounds nuw i8, ptr %2, i64 120
  call void @_ZN7doctest6StringD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %i.bf) #32
  %i.bg = getelementptr inbounds nuw i8, ptr %2, i64 88
  call void @_ZN7doctest6StringD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %i.bg) #32
  call void @_ZN7doctest6StringD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(144) %2) #32
  call void @_ZN7doctest6StringD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %3) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #32
  store i32 0, ptr @_ZL20DOCTEST_ANON_VAR_233, align 4, !tbaa !124
  %i.bh = call ptr @llvm.invariant.start.p0(i64 4, ptr nonnull @_ZL20DOCTEST_ANON_VAR_233) ; 0 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %0) #32
  %i.bi = call noundef nonnull align 8 dereferenceable(40) ptr @_ZN28doctest_detail_test_suite_ns19getCurrentTestSuiteEv()
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #32
  call void @_ZN7doctest6StringC1Ev(ptr noundef nonnull align 8 dereferenceable(24) %1) #32
  invoke void @_ZN7doctest6detail8TestCaseC1EPFvvEPKcjRKNS0_9TestSuiteERKNS_6StringEi(ptr noundef nonnull align 8 dereferenceable(144) %0, ptr noundef nonnull @_ZL21DOCTEST_ANON_FUNC_240v, ptr noundef nonnull @.str.5, i32 noundef 2498, ptr noundef nonnull align 8 dereferenceable(40) %i.bi, ptr noundef nonnull align 8 dereferenceable(24) %1, i32 noundef -1)
          to label %bb.ak unwind label %bb.am

bb.ak:                                            ; preds = %__cxx_global_var_init.15.exit
  %i.bj = invoke noundef nonnull align 8 dereferenceable(144) ptr @_ZN7doctest6detail8TestCasemlEPKc(ptr noundef nonnull align 8 dereferenceable(144) %0, ptr noundef nonnull @.str.18)
          to label %bb.al unwind label %bb.an

bb.al:                                            ; preds = %bb.ak
  %i.bk = invoke noundef i32 @_ZN7doctest6detail7regTestERKNS0_8TestCaseE(ptr noundef nonnull align 8 dereferenceable(144) %i.bj)
          to label %__cxx_global_var_init.17.exit unwind label %bb.an ; 0 uses

bb.am:                                            ; preds = %__cxx_global_var_init.15.exit
  %i.bl = landingpad { ptr, i32 }
          cleanup
  br label %bb.ao

bb.an:                                            ; preds = %bb.al, %bb.ak
  %i.bm = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7doctest6detail8TestCaseD2Ev(ptr noundef nonnull align 8 dead_on_return(144) dereferenceable(144) %0) #32
  br label %bb.ao

bb.ao:                                            ; preds = %bb.an, %bb.am
  %.pn.i6 = phi { ptr, i32 } [ %i.bm, %bb.an ], [ %i.bl, %bb.am ]
  call void @_ZN7doctest6StringD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %1) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %0) #32
  br label %common.resume

__cxx_global_var_init.17.exit:                    ; preds = %bb.al
  %i.bn = getelementptr inbounds nuw i8, ptr %0, i64 120
  call void @_ZN7doctest6StringD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %i.bn) #32
  %i.bo = getelementptr inbounds nuw i8, ptr %0, i64 88
  call void @_ZN7doctest6StringD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %i.bo) #32
  call void @_ZN7doctest6StringD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(144) %0) #32
  call void @_ZN7doctest6StringD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %1) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %0) #32
  store i32 0, ptr @_ZL20DOCTEST_ANON_VAR_241, align 4, !tbaa !124
  %i.bp = call ptr @llvm.invariant.start.p0(i64 4, ptr nonnull @_ZL20DOCTEST_ANON_VAR_241) ; 0 uses
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #27

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.ctpop.i64(i64) #28

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.cttz.i64(i64, i1 immarg) #29

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fabs.f64(double) #28

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.abs.i32(i32, i1 immarg) #29

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #28

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #30

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #28

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i32 @bcmp(ptr captures(none), ptr captures(none), i64) local_unnamed_addr #31

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smax.i64(i64, i64) #28

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smin.i64(i64, i64) #28

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.bswap.i64(i64) #28

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.bswap.i32(i32) #28

attributes #0 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #3 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress noinline uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { noinline noreturn nounwind uwtable "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { cold nofree noreturn }
attributes #11 = { inlinehint mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { nounwind memory(none) }
attributes #13 = { cold noreturn }
attributes #14 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { nobuiltin allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #16 = { inlinehint mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #17 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #18 = { mustprogress nofree nounwind willreturn memory(read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #19 = { mustprogress noinline nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #20 = { mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #21 = { mustprogress nofree nosync nounwind willreturn memory(none) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #22 = { mustprogress nocallback nofree nounwind willreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #23 = { mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #24 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #25 = { inlinehint mustprogress nofree norecurse nosync nounwind willreturn memory(errnomem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #26 = { uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #27 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #28 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #29 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #30 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #31 = { nocallback nofree nosync nounwind willreturn memory(argmem: read) }
attributes #32 = { nounwind }
attributes #33 = { noreturn nounwind }
attributes #34 = { builtin nounwind }
attributes #35 = { builtin allocsize(0) memory(inaccessiblemem: readwrite, errnomem: write) }
attributes #36 = { noreturn }
attributes #37 = { nounwind willreturn memory(read) }
attributes #38 = { nounwind willreturn memory(none) }

!llvm.module.flags = !{!81, !82, !83}
!llvm.ident = !{!84}
!llvm.errno.tbaa = !{!89}

!0 = distinct !{ptr @_ZN8nlohmann16json_abi_v3_12_06detail14output_adapterIcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEED2Ev, ptr @_ZNSt12__shared_ptrIN8nlohmann16json_abi_v3_12_06detail23output_adapter_protocolIcEELN9__gnu_cxx12_Lock_policyE2EED2Ev, null, null}
!1 = distinct !{ptr @_ZN8nlohmann16json_abi_v3_12_06detail14output_adapterIhNSt7__cxx1112basic_stringIhSt11char_traitsIhESaIhEEEED2Ev, ptr @_ZNSt12__shared_ptrIN8nlohmann16json_abi_v3_12_06detail23output_adapter_protocolIhEELN9__gnu_cxx12_Lock_policyE2EED2Ev, null, null}
!2 = distinct !{ptr @_ZN8nlohmann16json_abi_v3_12_06detail10serializerINS0_10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES5_IhSaIhEEvEEED2Ev, ptr @_ZNSt12__shared_ptrIN8nlohmann16json_abi_v3_12_06detail23output_adapter_protocolIcEELN9__gnu_cxx12_Lock_policyE2EED2Ev, null, null}
!3 = distinct !{!3, !132}
!4 = distinct !{!4, !132}
!5 = distinct !{!5, !132}
!6 = distinct !{ptr @_ZN8nlohmann16json_abi_v3_12_06detail13binary_writerINS0_10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES5_IhSaIhEEvEEhED2Ev, ptr @_ZNSt12__shared_ptrIN8nlohmann16json_abi_v3_12_06detail23output_adapter_protocolIhEELN9__gnu_cxx12_Lock_policyE2EED2Ev, null, null}
!7 = distinct !{ptr @_ZNSt12__shared_ptrIN8nlohmann16json_abi_v3_12_06detail23output_adapter_protocolIhEELN9__gnu_cxx12_Lock_policyE2EED2Ev, null, null}
!8 = distinct !{null}
!9 = distinct !{null}
!10 = distinct !{null, null}
!11 = distinct !{!11, !132}
!12 = distinct !{!12, !132}
!13 = distinct !{null}
!14 = distinct !{!14, !132}
!15 = distinct !{null}
!16 = distinct !{!16, !132}
!17 = distinct !{!17, !132}
!18 = distinct !{!18, !132}
!19 = distinct !{null, null, ptr @_ZN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEEvED2Ev, null, ptr @_ZN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEEvE4dataD2Ev}
!20 = distinct !{null, null}
!21 = distinct !{null}
!22 = distinct !{!22, !132}
!23 = distinct !{!23, !132}
!24 = distinct !{!24, !132}
!25 = distinct !{!25, !132}
!26 = distinct !{!26, !132}
!27 = distinct !{!27, !132}
!28 = distinct !{ptr @_ZNSt12__shared_ptrIN8nlohmann16json_abi_v3_12_06detail23output_adapter_protocolIcEELN9__gnu_cxx12_Lock_policyE2EED2Ev, null, null}
!29 = distinct !{!29, !132}
!30 = distinct !{null}
!31 = distinct !{null, ptr @_ZN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEEvED2Ev, ptr @_ZN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEEvE4dataD2Ev}
!32 = distinct !{null}
!33 = distinct !{null, null}
!34 = distinct !{null}
!35 = distinct !{!35, !132}
!36 = distinct !{null}
!37 = distinct !{!37, !132}
!38 = distinct !{!38, !132}
!39 = distinct !{!39, !132}
!40 = distinct !{!40, !132}
!41 = distinct !{!41, !132}
!42 = distinct !{!42, !132}
!43 = distinct !{!43, !132}
!44 = distinct !{ptr @_ZN8nlohmann16json_abi_v3_12_06detail5lexerINS0_10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES5_IhSaIhEEvEENS1_20input_stream_adapterEE3getEv, null, null}
!45 = distinct !{null, null}
!46 = distinct !{null}
!47 = distinct !{!47, !132}
!48 = distinct !{null}
!49 = distinct !{!49, !132}
!50 = distinct !{!50, !132}
!51 = distinct !{!51, !132}
!52 = distinct !{!52, !132}
!53 = distinct !{!53, !132}
!54 = distinct !{!54, !132}
!55 = distinct !{!55, !132}
!56 = distinct !{null}
!57 = distinct !{!57, !132}
!58 = distinct !{null}
!59 = distinct !{!59, !132}
!60 = distinct !{!60, !132}
!61 = distinct !{!61, !132}
!62 = distinct !{!62, !132}
!63 = distinct !{!63, !132}
!64 = distinct !{!64, !132}
!65 = distinct !{null}
!66 = distinct !{null, null, ptr @_ZN8nlohmann16json_abi_v3_12_06detail13binary_readerINS0_10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES5_IhSaIhEEvEENS1_20input_stream_adapterENS1_19json_sax_dom_parserISF_SG_EEE3getEv, null, null}
!67 = distinct !{null}
!68 = distinct !{!68, !132}
!69 = distinct !{null, ptr @_ZN8nlohmann16json_abi_v3_12_06detail13binary_readerINS0_10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES5_IhSaIhEEvEENS1_20input_stream_adapterENS1_19json_sax_dom_parserISF_SG_EEE3getEv, null, null}
!70 = distinct !{ptr @_ZN8nlohmann16json_abi_v3_12_06detail13binary_readerINS0_10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES5_IhSaIhEEvEENS1_20input_stream_adapterENS1_19json_sax_dom_parserISF_SG_EEE3getEv, null, null}
!71 = distinct !{!71, !132}
!72 = distinct !{null}
!73 = distinct !{!73, !132}
!74 = distinct !{null}
!75 = distinct !{!75, !132}
!76 = distinct !{!76, !132}
!77 = distinct !{!77, !132}
!78 = distinct !{!78, !132}
!79 = distinct !{!79, !132}
!80 = distinct !{!80, !132}
!81 = !{i32 8, !"PIC Level", i32 2}
!82 = !{i32 7, !"PIE Level", i32 2}
!83 = !{i32 7, !"uwtable", i32 2}
!84 = !{!"Ubuntu clang version 24.0.0 (++20260903081701+7ece48b9e5bb-1~exp1~20260903201841.1826)"}
!85 = !{!"Simple C++ TBAA"}
!86 = !{!"omnipotent char", !85, i64 0}
!87 = !{!"int", !86, i64 0}
!88 = !{!"__libc_errno", !87, i64 0}
!89 = !{!88, !87, i64 0}
!90 = !{!"vtable pointer", !85, i64 0}
!91 = !{!90, !90, i64 0}
!92 = !{!"_ZTSN7doctest10assertType4EnumE", !86, i64 0}
!93 = !{!"_ZTSN7doctest6detail20ExpressionDecomposerE", !92, i64 0}
!94 = !{!93, !92, i64 0}
!95 = !{!"_ZTSN7doctest13IContextScopeE"}
!96 = !{!"bool", !86, i64 0}
!97 = !{!"_ZTSN7doctest6detail16ContextScopeBaseE", !95, i64 0, !96, i64 8}
!98 = !{!97, !96, i64 8}
!99 = !{i8 0, i8 2}
!100 = !{}
!101 = !{ptr @"_ZN7doctest6detail12ContextScopeIZN5utilsL19DOCTEST_ANON_FUNC_2EvE3$_0ED2Ev"}
!102 = !{!"_ZTSN8nlohmann16json_abi_v3_12_06detail7value_tE", !86, i64 0}
!103 = !{!"_ZTSN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEEvE4dataE", !102, i64 0, !86, i64 8}
!104 = !{!103, !102, i64 0}
!105 = !{!86, !86, i64 0}
!106 = !{!"any pointer", !86, i64 0}
!107 = !{!"p1 omnipotent char", !106, i64 0}
!108 = !{!107, !107, i64 0}
!109 = !{!"_ZTSNSt12_Vector_baseIhSaIhEE17_Vector_impl_dataE", !107, i64 0, !107, i64 8, !107, i64 16}
!110 = !{!109, !107, i64 0}
!111 = !{ptr @_ZN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEEvED2Ev, ptr @_ZN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEEvE4dataD2Ev}
!112 = !{!"_ZTSN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEEvEE", !103, i64 0}
!113 = !{!112, !102, i64 0}
!114 = !{!109, !107, i64 16}
!115 = !{!109, !107, i64 8}
!116 = !{!102, !102, i64 0}
!117 = !{i64 0, i64 1, !116, i64 8, i64 8, !105}
!118 = !{!"_ZTSN7doctest6detail14Expression_lhsIN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS3_14adl_serializerES6_IhSaIhEEvEEEE", !112, i64 0, !92, i64 16}
!119 = !{!118, !92, i64 16}
!120 = !{!"long", !86, i64 0}
!121 = !{!120, !120, i64 0}
!122 = !{!"p1 long", !106, i64 0}
!123 = !{!122, !122, i64 0}
!124 = !{!87, !87, i64 0}
!125 = !{ptr @"_ZN7doctest6detail12ContextScopeIZL19DOCTEST_ANON_FUNC_7vE3$_1ED2Ev"}
!126 = !{ptr @"_ZN7doctest6detail12ContextScopeIZL19DOCTEST_ANON_FUNC_7vE3$_2ED2Ev"}
!127 = !{!"p1 int", !106, i64 0}
!128 = !{!127, !127, i64 0}
!129 = !{!"short", !86, i64 0}
!130 = !{!129, !129, i64 0}
!131 = !{ptr @"_ZN7doctest6detail12ContextScopeIZL19DOCTEST_ANON_FUNC_7vE3$_3ED2Ev"}
!132 = !{!"llvm.loop.mustprogress"}
!133 = !{ptr @"_ZN7doctest6detail12ContextScopeIZL19DOCTEST_ANON_FUNC_7vE3$_4ED2Ev"}
!134 = !{ptr @"_ZN7doctest6detail12ContextScopeIZL19DOCTEST_ANON_FUNC_7vE3$_5ED2Ev"}
!135 = !{ptr @"_ZN7doctest6detail12ContextScopeIZL19DOCTEST_ANON_FUNC_7vE3$_6ED2Ev"}
!136 = !{ptr @"_ZN7doctest6detail12ContextScopeIZL19DOCTEST_ANON_FUNC_7vE3$_7ED2Ev"}
!137 = !{ptr @"_ZN7doctest6detail12ContextScopeIZL19DOCTEST_ANON_FUNC_7vE3$_8ED2Ev"}
!138 = !{ptr @"_ZN7doctest6detail12ContextScopeIZL19DOCTEST_ANON_FUNC_7vE3$_9ED2Ev"}
!139 = !{ptr @"_ZN7doctest6detail12ContextScopeIZL19DOCTEST_ANON_FUNC_7vE4$_10ED2Ev"}
!140 = !{!"p1 short", !106, i64 0}
!141 = !{ptr @"_ZN7doctest6detail12ContextScopeIZL19DOCTEST_ANON_FUNC_7vE4$_11ED2Ev"}
!142 = !{ptr @"_ZN7doctest6detail12ContextScopeIZL19DOCTEST_ANON_FUNC_7vE4$_12ED2Ev"}
!143 = !{ptr @"_ZN7doctest6detail12ContextScopeIZL19DOCTEST_ANON_FUNC_7vE4$_13ED2Ev"}
!144 = !{ptr @"_ZN7doctest6detail12ContextScopeIZL19DOCTEST_ANON_FUNC_7vE4$_14ED2Ev"}
!145 = !{ptr @"_ZN7doctest6detail12ContextScopeIZL19DOCTEST_ANON_FUNC_7vE4$_15ED2Ev"}
!146 = !{ptr @"_ZN7doctest6detail12ContextScopeIZL19DOCTEST_ANON_FUNC_7vE4$_16ED2Ev"}
!147 = !{!"double", !86, i64 0}
!148 = !{!147, !147, i64 0}
!149 = !{!"float", !86, i64 0}
!150 = !{!149, !149, i64 0}
!151 = !{!"p1 _ZTSSo", !106, i64 0}
!152 = !{!"_ZTSN7doctest6StringE", !86, i64 0}
!153 = !{!"p1 _ZTSN7doctest6detail8TestCaseE", !106, i64 0}
end_hunk_9
