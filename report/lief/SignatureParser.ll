Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/lief/original/SignatureParser?download=true
inline.NumInlined: 6338
inline.NumDeleted: 2302
loop-unroll.NumCompletelyUnrolled: 5
loop-unroll.NumRuntimeUnrolled: 43
loop-unroll.NumUnrolled: 48
begin_hunk_0_@_ZN4LIEF2PE15SignatureParser15parse_signatureERNS_12BinaryStreamE:bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #23
  store i32 1, ptr %0, align 8, !tbaa !65
  %i.ca = getelementptr inbounds nuw i8, ptr %0, i64 120
  store i8 0, ptr %i.ca, align 8, !tbaa !68
  br label %bb.bh

_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread224: ; preds = %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit
  %i.cb = call { i64, i8 } @_ZN4LIEF10ASN1Reader8read_tagEi(ptr noundef nonnull align 8 dereferenceable(8) %9, i32 noundef 160) #23 ; 2 uses
  %.fca.0.extract66 = extractvalue { i64, i8 } %i.cb, 0
  %.fca.1.extract67 = extractvalue { i64, i8 } %i.cb, 1
  %i.cc = trunc nuw i8 %.fca.1.extract67 to i1
  br i1 %i.cc, label %bb.l, label %bb.k

bb.k:                                             ; preds = %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread224
  %i.cd = call noundef nonnull align 8 dereferenceable(16) ptr @_ZN4LIEF7logging6Logger8instanceEPKc(ptr noundef nonnull @.str.299) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #23
  call void @_ZN4LIEF10ASN1Reader11get_str_tagB5cxx11Ev(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %12, ptr noundef nonnull align 8 dereferenceable(8) %9) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #23
  %i.ce = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.cf = load i64, ptr %i.ce, align 8, !tbaa !77
  store i64 %i.cf, ptr %i.e, align 8, !tbaa !96
  %i.cg = load ptr, ptr %i.cd, align 8, !tbaa !62
  call void @llvm.lifetime.start.p0(ptr nonnull %4)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %4, i8 0, i64 24, i1 false)
  call void @_ZN6spdlog6logger4log_IJRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKmEEEvNS_10source_locENS_5level10level_enumEN3fmt3v1217basic_string_viewIcEEDpOT_(ptr noundef nonnull align 8 dereferenceable(208) %i.cg, ptr noundef nonnull byval(%"struct.spdlog::source_loc") align 8 %4, i32 noundef 2, ptr nonnull @.str.2, i64 25, ptr noundef nonnull align 8 dereferenceable(32) %12, ptr noundef nonnull align 8 dereferenceable(8) %i.e)
  call void @llvm.lifetime.end.p0(ptr nonnull %4)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #23
  %i.ch = load ptr, ptr %12, align 8, !tbaa !99   ; 2 uses
  %i.ci = getelementptr inbounds nuw i8, ptr %12, i64 16 ; 2 uses
  %i.cj = icmp eq ptr %i.ch, %i.ci
  br i1 %i.cj, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit124, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i122

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i122: ; preds = %bb.k
  %i.ck = load i64, ptr %i.ci, align 8, !tbaa !93
  %i.cl = add i64 %i.ck, 1
  call void @_ZdlPvm(ptr noundef %i.ch, i64 noundef %i.cl) #26
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit124

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit124: ; preds = %bb.k, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i122
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #23
  %.sroa.0190.0.extract.trunc199 = trunc i64 %.fca.0.extract66 to i32
  store i32 %.sroa.0190.0.extract.trunc199, ptr %0, align 8, !tbaa !65
  %i.cm = getelementptr inbounds nuw i8, ptr %0, i64 120
  store i8 0, ptr %i.cm, align 8, !tbaa !68
  br label %bb.bh

bb.l:                                             ; preds = %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread224
  %i.cn = call { i64, i8 } @_ZN4LIEF10ASN1Reader8read_tagEi(ptr noundef nonnull align 8 dereferenceable(8) %9, i32 noundef 48) #23 ; 2 uses
  %.fca.0.extract59 = extractvalue { i64, i8 } %i.cn, 0
  %.fca.1.extract60 = extractvalue { i64, i8 } %i.cn, 1
  %i.co = trunc nuw i8 %.fca.1.extract60 to i1
  br i1 %i.co, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.cp = call noundef nonnull align 8 dereferenceable(16) ptr @_ZN4LIEF7logging6Logger8instanceEPKc(ptr noundef nonnull @.str.299) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #23
  call void @_ZN4LIEF10ASN1Reader11get_str_tagB5cxx11Ev(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %13, ptr noundef nonnull align 8 dereferenceable(8) %9) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #23
  %i.cq = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.cr = load i64, ptr %i.cq, align 8, !tbaa !77
  store i64 %i.cr, ptr %i.f, align 8, !tbaa !96
  %i.cs = load ptr, ptr %i.cp, align 8, !tbaa !62
  call void @llvm.lifetime.start.p0(ptr nonnull %3)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %3, i8 0, i64 24, i1 false)
  call void @_ZN6spdlog6logger4log_IJRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKmEEEvNS_10source_locENS_5level10level_enumEN3fmt3v1217basic_string_viewIcEEDpOT_(ptr noundef nonnull align 8 dereferenceable(208) %i.cs, ptr noundef nonnull byval(%"struct.spdlog::source_loc") align 8 %3, i32 noundef 2, ptr nonnull @.str.2, i64 25, ptr noundef nonnull align 8 dereferenceable(32) %13, ptr noundef nonnull align 8 dereferenceable(8) %i.f)
  call void @llvm.lifetime.end.p0(ptr nonnull %3)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #23
  %i.ct = load ptr, ptr %13, align 8, !tbaa !99   ; 2 uses
  %i.cu = getelementptr inbounds nuw i8, ptr %13, i64 16 ; 2 uses
  %i.cv = icmp eq ptr %i.ct, %i.cu
  br i1 %i.cv, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit127, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i125

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i125: ; preds = %bb.m
  %i.cw = load i64, ptr %i.cu, align 8, !tbaa !93
  %i.cx = add i64 %i.cw, 1
  call void @_ZdlPvm(ptr noundef %i.ct, i64 noundef %i.cx) #26
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit127

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit127: ; preds = %bb.m, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i125
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #23
  %.sroa.0190.0.extract.trunc201 = trunc i64 %.fca.0.extract59 to i32
  store i32 %.sroa.0190.0.extract.trunc201, ptr %0, align 8, !tbaa !65
  %i.cy = getelementptr inbounds nuw i8, ptr %0, i64 120
  store i8 0, ptr %i.cy, align 8, !tbaa !68
  br label %bb.bh

bb.n:                                             ; preds = %bb.l
  %i.cz = call i64 @_ZN4LIEF10ASN1Reader8read_intEv(ptr noundef nonnull align 8 dereferenceable(8) %9) #23 ; 3 uses
  %i.da = and i64 %i.cz, 4294967296
  %.not227 = icmp eq i64 %i.da, 0
  br i1 %.not227, label %bb.o, label %_ZNR2tl8expectedIi11lief_errorsE5valueIiTnPNSt9enable_ifIXntsr3std7is_voidIT_EE5valueEvE4typeELPv0EEERS5_v.exit

bb.o:                                             ; preds = %bb.n
  %i.db = call noundef nonnull align 8 dereferenceable(16) ptr @_ZN4LIEF7logging6Logger8instanceEPKc(ptr noundef nonnull @.str.299) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #23
  %i.dc = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.dd = load i64, ptr %i.dc, align 8, !tbaa !77
  store i64 %i.dd, ptr %i.g, align 8, !tbaa !96
  call void @_ZN4LIEF7logging6Logger4infoIJmEEEvPKcDpRKT_(ptr noundef nonnull align 8 dereferenceable(16) %i.db, ptr noundef nonnull @.str.6, ptr noundef nonnull align 8 dereferenceable(8) %i.g)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #23
  %.sroa.0179.0.extract.trunc = trunc i64 %i.cz to i32
  store i32 %.sroa.0179.0.extract.trunc, ptr %0, align 8, !tbaa !65
  %i.de = getelementptr inbounds nuw i8, ptr %0, i64 120
  store i8 0, ptr %i.de, align 8, !tbaa !68
  br label %bb.bh

_ZNR2tl8expectedIi11lief_errorsE5valueIiTnPNSt9enable_ifIXntsr3std7is_voidIT_EE5valueEvE4typeELPv0EEERS5_v.exit: ; preds = %bb.n
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h) #23
  %.sroa.0179.0.extract.trunc181 = trunc i64 %i.cz to i32
  store i32 %.sroa.0179.0.extract.trunc181, ptr %i.h, align 4, !tbaa !103
  %i.df = call noundef nonnull align 8 dereferenceable(16) ptr @_ZN4LIEF7logging6Logger8instanceEPKc(ptr noundef nonnull @.str.299) #23
  call void @_ZN4LIEF7logging6Logger5debugIJiEEEvPKcDpRKT_(ptr noundef nonnull align 8 dereferenceable(16) %i.df, ptr noundef nonnull @.str.7, ptr noundef nonnull align 4 dereferenceable(4) %i.h)
  %i.dg = load i32, ptr %i.h, align 4, !tbaa !103
  %.not = icmp eq i32 %i.dg, 1
  br i1 %.not, label %bb.q, label %bb.p

bb.p:                                             ; preds = %_ZNR2tl8expectedIi11lief_errorsE5valueIiTnPNSt9enable_ifIXntsr3std7is_voidIT_EE5valueEvE4typeELPv0EEERS5_v.exit
  %i.dh = call noundef nonnull align 8 dereferenceable(16) ptr @_ZN4LIEF7logging6Logger8instanceEPKc(ptr noundef nonnull @.str.299) #23
  call void @_ZN4LIEF7logging6Logger4infoIJiEEEvPKcDpRKT_(ptr noundef nonnull align 8 dereferenceable(16) %i.dh, ptr noundef nonnull @.str.8, ptr noundef nonnull align 4 dereferenceable(4) %i.h)
  store i32 4, ptr %0, align 8, !tbaa !65
  %i.di = getelementptr inbounds nuw i8, ptr %0, i64 120
  store i8 0, ptr %i.di, align 8, !tbaa !68
  br label %bb.bg

bb.q:                                             ; preds = %_ZNR2tl8expectedIi11lief_errorsE5valueIiTnPNSt9enable_ifIXntsr3std7is_voidIT_EE5valueEvE4typeELPv0EEERS5_v.exit
  %i.dj = getelementptr inbounds nuw i8, ptr %8, i64 8
  store i32 1, ptr %i.dj, align 8, !tbaa !368
  %i.dk = call { i64, i8 } @_ZN4LIEF10ASN1Reader8read_tagEi(ptr noundef nonnull align 8 dereferenceable(8) %9, i32 noundef 49) #23 ; 2 uses
  %.fca.0.extract52 = extractvalue { i64, i8 } %i.dk, 0 ; 2 uses
  %.fca.1.extract53 = extractvalue { i64, i8 } %i.dk, 1
  %i.dl = trunc nuw i8 %.fca.1.extract53 to i1
  br i1 %i.dl, label %_ZNR2tl8expectedIm11lief_errorsE5valueImTnPNSt9enable_ifIXntsr3std7is_voidIT_EE5valueEvE4typeELPv0EEERS5_v.exit, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.dm = call noundef nonnull align 8 dereferenceable(16) ptr @_ZN4LIEF7logging6Logger8instanceEPKc(ptr noundef nonnull @.str.299) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #23
  call void @_ZN4LIEF10ASN1Reader11get_str_tagB5cxx11Ev(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %14, ptr noundef nonnull align 8 dereferenceable(8) %9) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i) #23
  %i.dn = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.do = load i64, ptr %i.dn, align 8, !tbaa !77
  store i64 %i.do, ptr %i.i, align 8, !tbaa !96
  call void @_ZN4LIEF7logging6Logger4infoIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEmEEEvPKcDpRKT_(ptr noundef nonnull align 8 dereferenceable(16) %i.dm, ptr noundef nonnull @.str.2, ptr noundef nonnull align 8 dereferenceable(32) %14, ptr noundef nonnull align 8 dereferenceable(8) %i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i) #23
  %i.dp = load ptr, ptr %14, align 8, !tbaa !99   ; 2 uses
  %i.dq = getelementptr inbounds nuw i8, ptr %14, i64 16 ; 2 uses
  %i.dr = icmp eq ptr %i.dp, %i.dq
  br i1 %i.dr, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit130, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i128

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i128: ; preds = %bb.r
  %i.ds = load i64, ptr %i.dq, align 8, !tbaa !93
  %i.dt = add i64 %i.ds, 1
  call void @_ZdlPvm(ptr noundef %i.dp, i64 noundef %i.dt) #26
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit130

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit130: ; preds = %bb.r, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i128
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #23
  %.sroa.0190.0.extract.trunc203 = trunc i64 %.fca.0.extract52 to i32
  store i32 %.sroa.0190.0.extract.trunc203, ptr %0, align 8, !tbaa !65
  %i.du = getelementptr inbounds nuw i8, ptr %0, i64 120
  store i8 0, ptr %i.du, align 8, !tbaa !68
  br label %bb.bg

_ZNR2tl8expectedIm11lief_errorsE5valueImTnPNSt9enable_ifIXntsr3std7is_voidIT_EE5valueEvE4typeELPv0EEERS5_v.exit: ; preds = %bb.q
  %i.dv = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 18 uses
  %i.dw = load i64, ptr %i.dv, align 8, !tbaa !77
  %i.dx = add i64 %i.dw, %.fca.0.extract52
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #23
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %15, i8 0, i64 24, i1 false)
  %i.dy = getelementptr inbounds nuw i8, ptr %16, i64 32 ; 4 uses
  %i.dz = getelementptr inbounds nuw i8, ptr %16, i64 16 ; 2 uses
  br label %bb.s

bb.s:                                             ; preds = %_ZN2tl6detail21expected_storage_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE11lief_errorsLb0ELb1EED2Ev.exit, %_ZNR2tl8expectedIm11lief_errorsE5valueImTnPNSt9enable_ifIXntsr3std7is_voidIT_EE5valueEvE4typeELPv0EEERS5_v.exit
  %i.ea = load i64, ptr %i.dv, align 8, !tbaa !77 ; 2 uses
  %i.eb = icmp ult i64 %i.ea, %i.dx
  br i1 %i.eb, label %bb.t, label %bb.ab

bb.t:                                             ; preds = %bb.s
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #23
  call void @_ZN4LIEF10ASN1Reader8read_algB5cxx11Ev(ptr dead_on_unwind nonnull writable sret(%"class.LIEF::result.92") align 8 %16, ptr noundef nonnull align 8 dereferenceable(8) %9) #23
  %i.ec = load i8, ptr %i.dy, align 8, !tbaa !101, !range !85, !noundef !86
  %i.ed = trunc nuw i8 %i.ec to i1
  br i1 %i.ed, label %bb.v, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.ee = call noundef nonnull align 8 dereferenceable(16) ptr @_ZN4LIEF7logging6Logger8instanceEPKc(ptr noundef nonnull @.str.299) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j) #23
  %i.ef = load i64, ptr %i.dv, align 8, !tbaa !77
  store i64 %i.ef, ptr %i.j, align 8, !tbaa !96
  %i.eg = load ptr, ptr %i.ee, align 8, !tbaa !62
  call void @llvm.lifetime.start.p0(ptr nonnull %2)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %2, i8 0, i64 24, i1 false)
  call void @_ZN6spdlog6logger4log_IJRKmEEEvNS_10source_locENS_5level10level_enumEN3fmt3v1217basic_string_viewIcEEDpOT_(ptr noundef nonnull align 8 dereferenceable(208) %i.eg, ptr noundef nonnull byval(%"struct.spdlog::source_loc") align 8 %2, i32 noundef 2, ptr nonnull @.str.9, i64 56, ptr noundef nonnull align 8 dereferenceable(8) %i.j)
  call void @llvm.lifetime.end.p0(ptr nonnull %2)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j) #23
  br label %bb.z

bb.v:                                             ; preds = %bb.t
  %i.eh = load i64, ptr %i.dv, align 8, !tbaa !77
  %i.ei = icmp eq i64 %i.eh, %i.ea
  br i1 %i.ei, label %bb.aa, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.ej = call noundef nonnull align 8 dereferenceable(16) ptr @_ZN4LIEF7logging6Logger8instanceEPKc(ptr noundef nonnull @.str.299) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k) #23
  %i.ek = load i8, ptr %i.dy, align 8, !tbaa !101, !range !85, !noundef !86
  %i.el = trunc nuw i8 %i.ek to i1
  br i1 %i.el, label %_ZNR2tl8expectedINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE11lief_errorsE5valueIS6_TnPNSt9enable_ifIXntsr3std7is_voidIT_EE5valueEvE4typeELPv0EEERSB_v.exit131, label %bb.x

bb.x:                                             ; preds = %bb.w
  call void @_ZSt9terminatev() #24
  unreachable

_ZNR2tl8expectedINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE11lief_errorsE5valueIS6_TnPNSt9enable_ifIXntsr3std7is_voidIT_EE5valueEvE4typeELPv0EEERSB_v.exit131: ; preds = %bb.w
  %i.em = call noundef ptr @_ZN4LIEF2PE13oid_to_stringERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(32) %16) #23
  store ptr %i.em, ptr %i.k, align 8, !tbaa !74
  call void @_ZN4LIEF7logging6Logger5debugIJPKcEEEvS4_DpRKT_(ptr noundef nonnull align 8 dereferenceable(16) %i.ej, ptr noundef nonnull @.str.10, ptr noundef nonnull align 8 dereferenceable(8) %i.k)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k) #23
  %i.en = load i8, ptr %i.dy, align 8, !tbaa !101, !range !85, !noundef !86
  %i.eo = trunc nuw i8 %i.en to i1
  br i1 %i.eo, label %_ZNR2tl8expectedINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE11lief_errorsE5valueIS6_TnPNSt9enable_ifIXntsr3std7is_voidIT_EE5valueEvE4typeELPv0EEERSB_v.exit132, label %bb.y

bb.y:                                             ; preds = %_ZNR2tl8expectedINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE11lief_errorsE5valueIS6_TnPNSt9enable_ifIXntsr3std7is_voidIT_EE5valueEvE4typeELPv0EEERSB_v.exit131
  call void @_ZSt9terminatev() #24
  unreachable

_ZNR2tl8expectedINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE11lief_errorsE5valueIS6_TnPNSt9enable_ifIXntsr3std7is_voidIT_EE5valueEvE4typeELPv0EEERSB_v.exit132: ; preds = %_ZNR2tl8expectedINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE11lief_errorsE5valueIS6_TnPNSt9enable_ifIXntsr3std7is_voidIT_EE5valueEvE4typeELPv0EEERSB_v.exit131
  call void @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backEOS5_(ptr noundef nonnull align 8 dereferenceable(24) %15, ptr noundef nonnull align 8 dereferenceable(32) %16)
  br label %bb.z

bb.z:                                             ; preds = %_ZNR2tl8expectedINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE11lief_errorsE5valueIS6_TnPNSt9enable_ifIXntsr3std7is_voidIT_EE5valueEvE4typeELPv0EEERSB_v.exit132, %bb.u
  %.0.ph = phi i32 [ 0, %_ZNR2tl8expectedINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE11lief_errorsE5valueIS6_TnPNSt9enable_ifIXntsr3std7is_voidIT_EE5valueEvE4typeELPv0EEERSB_v.exit132 ], [ 3, %bb.u ] ; 2 uses
  %i.ep = load i8, ptr %i.dy, align 8, !tbaa !101
  %i.eq = trunc nuw i8 %i.ep to i1
  br i1 %i.eq, label %bb.aa, label %_ZN2tl6detail21expected_storage_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE11lief_errorsLb0ELb1EED2Ev.exit

bb.aa:                                            ; preds = %bb.v, %bb.z
  %.0227 = phi i32 [ %.0.ph, %bb.z ], [ 3, %bb.v ] ; 2 uses
  %i.er = load ptr, ptr %16, align 8, !tbaa !99   ; 2 uses
  %i.es = icmp eq ptr %i.er, %i.dz
  br i1 %i.es, label %_ZN2tl6detail21expected_storage_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE11lief_errorsLb0ELb1EED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.aa
  %i.et = load i64, ptr %i.dz, align 8, !tbaa !93
  %i.eu = add i64 %i.et, 1
  call void @_ZdlPvm(ptr noundef %i.er, i64 noundef %i.eu) #26
  br label %_ZN2tl6detail21expected_storage_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE11lief_errorsLb0ELb1EED2Ev.exit

_ZN2tl6detail21expected_storage_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE11lief_errorsLb0ELb1EED2Ev.exit: ; preds = %bb.aa, %bb.z, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  %.0226 = phi i32 [ %.0.ph, %bb.z ], [ %.0227, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i ], [ %.0227, %bb.aa ]
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #23
  %30 = icmp eq i32 %.0226, 0
  br i1 %30, label %bb.s, label %bb.ab

bb.ab:                                            ; preds = %_ZN2tl6detail21expected_storage_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE11lief_errorsLb0ELb1EED2Ev.exit, %bb.s
  %i.ev = load ptr, ptr %15, align 8, !tbaa !125  ; 2 uses
  %i.ew = getelementptr inbounds nuw i8, ptr %15, i64 8 ; 3 uses
  %i.ex = load ptr, ptr %i.ew, align 8, !tbaa !125 ; 3 uses
  %i.ey = icmp eq ptr %i.ev, %i.ex
  br i1 %i.ey, label %bb.ac, label %bb.ad

bb.ac:                                            ; preds = %bb.ab
  %i.ez = call noundef nonnull align 8 dereferenceable(16) ptr @_ZN4LIEF7logging6Logger8instanceEPKc(ptr noundef nonnull @.str.299) #23
  call void @_ZN4LIEF7logging6Logger4infoIJEEEvPKcDpRKT_(ptr noundef nonnull align 8 dereferenceable(16) %i.ez, ptr noundef nonnull @.str.11)
  store i32 1, ptr %0, align 8, !tbaa !65
  %i.fa = getelementptr inbounds nuw i8, ptr %0, i64 120
  store i8 0, ptr %i.fa, align 8, !tbaa !68
  br label %bb.bf

bb.ad:                                            ; preds = %bb.ab
  %i.fb = ptrtoint ptr %i.ex to i64
  %i.fc = ptrtoint ptr %i.ev to i64
  %i.fd = sub i64 %i.fb, %i.fc
  %i.fe = icmp ugt i64 %i.fd, 32
  br i1 %i.fe, label %bb.ae, label %bb.af

bb.ae:                                            ; preds = %bb.ad
  %i.ff = call noundef nonnull align 8 dereferenceable(16) ptr @_ZN4LIEF7logging6Logger8instanceEPKc(ptr noundef nonnull @.str.299) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l) #23
  %i.fg = load ptr, ptr %i.ew, align 8, !tbaa !127
  %i.fh = load ptr, ptr %15, align 8, !tbaa !128
  %i.fi = ptrtoint ptr %i.fg to i64
  %i.fj = ptrtoint ptr %i.fh to i64
  %i.fk = sub i64 %i.fi, %i.fj
  %i.fl = ashr exact i64 %i.fk, 5
  store i64 %i.fl, ptr %i.l, align 8, !tbaa !96
  call void @_ZN4LIEF7logging6Logger4infoIJmEEEvPKcDpRKT_(ptr noundef nonnull align 8 dereferenceable(16) %i.ff, ptr noundef nonnull @.str.12, ptr noundef nonnull align 8 dereferenceable(8) %i.l)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l) #23
  store i32 1, ptr %0, align 8, !tbaa !65
  %i.fm = getelementptr inbounds nuw i8, ptr %0, i64 120
  store i8 0, ptr %i.fm, align 8, !tbaa !68
  br label %bb.bf

bb.af:                                            ; preds = %bb.ad
  %i.fn = getelementptr inbounds i8, ptr %i.ex, i64 -32
  %i.fo = call noundef i32 @_ZN4LIEF2PE13algo_from_oidERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(32) %i.fn) #23 ; 2 uses
  %i.fp = icmp eq i32 %i.fo, 0
  br i1 %i.fp, label %bb.ag, label %bb.ah

bb.ag:                                            ; preds = %bb.af
  %i.fq = call noundef nonnull align 8 dereferenceable(16) ptr @_ZN4LIEF7logging6Logger8instanceEPKc(ptr noundef nonnull @.str.299) #23
  %i.fr = load ptr, ptr %i.ew, align 8, !tbaa !125
  %i.fs = getelementptr inbounds i8, ptr %i.fr, i64 -32
  call void @_ZN4LIEF7logging6Logger4warnIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEvPKcDpRKT_(ptr noundef nonnull align 8 dereferenceable(16) %i.fq, ptr noundef nonnull @.str.13, ptr noundef nonnull align 8 dereferenceable(32) %i.fs)
  br label %bb.ai

bb.ah:                                            ; preds = %bb.af
  %i.ft = getelementptr inbounds nuw i8, ptr %8, i64 12
  store i32 %i.fo, ptr %i.ft, align 4, !tbaa !369
  br label %bb.ai

bb.ai:                                            ; preds = %bb.ah, %bb.ag
  %i.fu = call { i64, i8 } @_ZN4LIEF10ASN1Reader8read_tagEi(ptr noundef nonnull align 8 dereferenceable(8) %9, i32 noundef 48) #23 ; 2 uses
  %.fca.0.extract41 = extractvalue { i64, i8 } %i.fu, 0 ; 3 uses
  %.fca.1.extract42 = extractvalue { i64, i8 } %i.fu, 1
  %i.fv = trunc nuw i8 %.fca.1.extract42 to i1
  br i1 %i.fv, label %_ZNR2tl8expectedIm11lief_errorsE5valueImTnPNSt9enable_ifIXntsr3std7is_voidIT_EE5valueEvE4typeELPv0EEERS5_v.exit137, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  %i.fw = call noundef nonnull align 8 dereferenceable(16) ptr @_ZN4LIEF7logging6Logger8instanceEPKc(ptr noundef nonnull @.str.299) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #23
  call void @_ZN4LIEF10ASN1Reader11get_str_tagB5cxx11Ev(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %17, ptr noundef nonnull align 8 dereferenceable(8) %9) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m) #23
  %i.fx = load i64, ptr %i.dv, align 8, !tbaa !77
  store i64 %i.fx, ptr %i.m, align 8, !tbaa !96
  call void @_ZN4LIEF7logging6Logger4infoIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEmEEEvPKcDpRKT_(ptr noundef nonnull align 8 dereferenceable(16) %i.fw, ptr noundef nonnull @.str.14, ptr noundef nonnull align 8 dereferenceable(32) %17, ptr noundef nonnull align 8 dereferenceable(8) %i.m)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m) #23
  %i.fy = load ptr, ptr %17, align 8, !tbaa !99   ; 2 uses
  %i.fz = getelementptr inbounds nuw i8, ptr %17, i64 16 ; 2 uses
  %i.ga = icmp eq ptr %i.fy, %i.fz
  br i1 %i.ga, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit135, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i133

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i133: ; preds = %bb.aj
  %i.gb = load i64, ptr %i.fz, align 8, !tbaa !93
  %i.gc = add i64 %i.gb, 1
  call void @_ZdlPvm(ptr noundef %i.fy, i64 noundef %i.gc) #26
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit135

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit135: ; preds = %bb.aj, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i133
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #23
  %.sroa.0190.0.extract.trunc205 = trunc i64 %.fca.0.extract41 to i32
  store i32 %.sroa.0190.0.extract.trunc205, ptr %0, align 8, !tbaa !65
  %i.gd = getelementptr inbounds nuw i8, ptr %0, i64 120
  store i8 0, ptr %i.gd, align 8, !tbaa !68
  br label %bb.bf

_ZNR2tl8expectedIm11lief_errorsE5valueImTnPNSt9enable_ifIXntsr3std7is_voidIT_EE5valueEvE4typeELPv0EEERS5_v.exit137: ; preds = %bb.ai
  call void @llvm.lifetime.start.p0(ptr nonnull %18) #23
  %i.ge = load ptr, ptr %1, align 8, !tbaa !53
  %i.gf = getelementptr inbounds nuw i8, ptr %i.ge, i64 56
  %i.gg = load ptr, ptr %i.gf, align 8
  %i.gh = call noundef ptr %i.gg(ptr noundef nonnull align 8 dereferenceable(24) %1) #23
  %i.gi = getelementptr inbounds nuw i8, ptr %18, i64 8 ; 2 uses
  store i64 0, ptr %i.gi, align 8, !tbaa !77
  %i.gj = getelementptr inbounds nuw i8, ptr %18, i64 16
  store i8 0, ptr %i.gj, align 8, !tbaa !78
  %i.gk = getelementptr inbounds nuw i8, ptr %18, i64 20
  store i32 3, ptr %i.gk, align 4, !tbaa !79
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVN4LIEF10SpanStreamE, i64 16), ptr %18, align 8, !tbaa !53
  %i.gl = getelementptr inbounds nuw i8, ptr %18, i64 24
  store ptr %i.gh, ptr %i.gl, align 8, !tbaa !129
  %i.gm = getelementptr inbounds nuw i8, ptr %18, i64 32
  store i64 %.fca.0.extract41, ptr %i.gm, align 8, !tbaa !130
  call void @llvm.lifetime.start.p0(ptr nonnull %19) #23
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %19, i8 0, i64 16, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %20) #23
  call void @_ZN4LIEF2PE15SignatureParser18parse_content_infoERNS_12BinaryStreamERNS1_7range_tE(ptr dead_on_unwind nonnull writable sret(%"class.LIEF::result.139") align 8 %20, ptr noundef nonnull align 8 dereferenceable(24) %18, ptr noundef nonnull align 8 dereferenceable(16) %19)
  %i.gn = getelementptr inbounds nuw i8, ptr %20, i64 16
  %i.go = load i8, ptr %i.gn, align 8, !tbaa !132, !range !85, !noundef !86
  %i.gp = trunc nuw i8 %i.go to i1
  br i1 %i.gp, label %bb.ak, label %bb.an

bb.ak:                                            ; preds = %_ZNR2tl8expectedIm11lief_errorsE5valueImTnPNSt9enable_ifIXntsr3std7is_voidIT_EE5valueEvE4typeELPv0EEERS5_v.exit137
  %i.gq = getelementptr inbounds nuw i8, ptr %20, i64 8 ; 2 uses
  %i.gr = load ptr, ptr %i.gq, align 8            ; 3 uses
  %i.gs = getelementptr inbounds nuw i8, ptr %i.gr, i64 16
  %i.gt = load i64, ptr %i.gs, align 8, !tbaa !102
  %i.gu = icmp eq i64 %i.gt, 21
  %i.gv = ptrtoint ptr %i.gr to i64
  br i1 %i.gu, label %_ZN4LIEF2PE15SpcIndirectData7classofEPKNS0_11ContentInfo7ContentE.exit, label %_ZN4LIEF2PE15SpcIndirectData7classofEPKNS0_11ContentInfo7ContentE.exit.thread

_ZN4LIEF2PE15SpcIndirectData7classofEPKNS0_11ContentInfo7ContentE.exit: ; preds = %bb.ak
  %i.gw = getelementptr inbounds nuw i8, ptr %i.gr, i64 8
  %i.gx = load ptr, ptr %i.gw, align 8, !tbaa !99 ; 2 uses
  %i.gy = load i128, ptr %i.gx, align 1
  %i.gz = xor i128 %i.gy, 61399908245176969875065496016400887345
  %i.ha = getelementptr i8, ptr %i.gx, i64 5
  %i.hb = load i128, ptr %i.ha, align 1
  %i.hc = xor i128 %i.hb, 69359698934404375432226258506092523822
  %i.hd = or i128 %i.gz, %i.hc
  %i.he = icmp ne i128 %i.hd, 0
  %i.hf = zext i1 %i.he to i32
  %i.hg = icmp eq i32 %i.hf, 0
  br i1 %i.hg, label %bb.am, label %_ZN4LIEF2PE15SpcIndirectData7classofEPKNS0_11ContentInfo7ContentE.exit.thread

_ZN4LIEF2PE15SpcIndirectData7classofEPKNS0_11ContentInfo7ContentE.exit.thread: ; preds = %bb.ak, %_ZN4LIEF2PE15SpcIndirectData7classofEPKNS0_11ContentInfo7ContentE.exit
  store i64 0, ptr %i.gi, align 8, !tbaa !77
  call void @llvm.lifetime.start.p0(ptr nonnull %21) #23
  store ptr %18, ptr %21, align 8, !tbaa !95
  call void @llvm.lifetime.start.p0(ptr nonnull %22) #23
  call void @_ZN4LIEF10ASN1Reader8read_oidB5cxx11Ev(ptr dead_on_unwind nonnull writable sret(%"class.LIEF::result.92") align 8 %22, ptr noundef nonnull align 8 dereferenceable(8) %21) #23
  %i.hh = getelementptr inbounds nuw i8, ptr %22, i64 32 ; 2 uses
  %i.hi = load i8, ptr %i.hh, align 8, !tbaa !101, !range !85, !noundef !86
  %i.hj = trunc nuw i8 %i.hi to i1
  br i1 %i.hj, label %.critedge.critedge, label %.critedge.critedge.thread

.critedge.critedge.thread:                        ; preds = %_ZN4LIEF2PE15SpcIndirectData7classofEPKNS0_11ContentInfo7ContentE.exit.thread
  %i.hk = load i32, ptr %22, align 8, !tbaa !87
  store i32 %i.hk, ptr %0, align 8, !tbaa !65
  %i.hl = getelementptr inbounds nuw i8, ptr %0, i64 120
  store i8 0, ptr %i.hl, align 8, !tbaa !68
  br label %_ZN2tl6detail21expected_storage_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE11lief_errorsLb0ELb1EED2Ev.exit142

.critedge.critedge:                               ; preds = %_ZN4LIEF2PE15SpcIndirectData7classofEPKNS0_11ContentInfo7ContentE.exit.thread
  %i.hm = call noundef nonnull align 8 dereferenceable(16) ptr @_ZN4LIEF7logging6Logger8instanceEPKc(ptr noundef nonnull @.str.299) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n) #23
  %i.hn = load i64, ptr %i.dv, align 8, !tbaa !77
  store i64 %i.hn, ptr %i.n, align 8, !tbaa !96
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o) #23
  %i.ho = call noundef ptr @_ZN4LIEF2PE13oid_to_stringERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(32) %22) #23
  store ptr %i.ho, ptr %i.o, align 8, !tbaa !74
  call void @_ZN4LIEF7logging6Logger4warnIJmPKcEEEvS4_DpRKT_(ptr noundef nonnull align 8 dereferenceable(16) %i.hm, ptr noundef nonnull @.str.15, ptr noundef nonnull align 8 dereferenceable(8) %i.n, ptr noundef nonnull align 8 dereferenceable(8) %i.o)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n) #23
  %.pre = load i8, ptr %i.hh, align 8, !tbaa !101, !range !85
  %i.hp = trunc nuw i8 %.pre to i1
  store i32 1, ptr %0, align 8, !tbaa !65
  %i.hq = getelementptr inbounds nuw i8, ptr %0, i64 120
  store i8 0, ptr %i.hq, align 8, !tbaa !68
  br i1 %i.hp, label %bb.al, label %_ZN2tl6detail21expected_storage_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE11lief_errorsLb0ELb1EED2Ev.exit142

bb.al:                                            ; preds = %.critedge.critedge
  %i.hr = load ptr, ptr %22, align 8, !tbaa !99   ; 2 uses
  %i.hs = getelementptr inbounds nuw i8, ptr %22, i64 16 ; 2 uses
  %i.ht = icmp eq ptr %i.hr, %i.hs
  br i1 %i.ht, label %_ZN2tl6detail21expected_storage_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE11lief_errorsLb0ELb1EED2Ev.exit142, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i140

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i140: ; preds = %bb.al
  %i.hu = load i64, ptr %i.hs, align 8, !tbaa !93
  %i.hv = add i64 %i.hu, 1
  call void @_ZdlPvm(ptr noundef %i.hr, i64 noundef %i.hv) #26
  br label %_ZN2tl6detail21expected_storage_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE11lief_errorsLb0ELb1EED2Ev.exit142

_ZN2tl6detail21expected_storage_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE11lief_errorsLb0ELb1EED2Ev.exit142: ; preds = %bb.al, %.critedge.critedge.thread, %.critedge.critedge, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i140
  call void @llvm.lifetime.end.p0(ptr nonnull %22) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #23
  call void @_ZN2tl6detail21expected_storage_baseIN4LIEF2PE11ContentInfoE11lief_errorsLb0ELb1EED2Ev(ptr noundef nonnull align 8 dead_on_return(17) dereferenceable(17) %20) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #23
  br label %bb.bf

end_hunk_0
begin_hunk_1_@_ZN4LIEF2PE15SignatureParser21parse_ms_counter_signERNS_12BinaryStreamE:bb.a
  store i64 %i.bg, ptr %i.c, align 8, !tbaa !96
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #23
  %i.bh = call noundef ptr @_ZN4LIEF2PE13oid_to_stringERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(32) %11) #23
  store ptr %i.bh, ptr %i.d, align 8, !tbaa !74
  %i.bi = load ptr, ptr %i.be, align 8, !tbaa !62
  call void @llvm.lifetime.start.p0(ptr nonnull %6)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %6, i8 0, i64 24, i1 false)
  call void @_ZN6spdlog6logger4log_IJRKmRKPKcEEEvNS_10source_locENS_5level10level_enumEN3fmt3v1217basic_string_viewIcEEDpOT_(ptr noundef nonnull align 8 dereferenceable(208) %i.bi, ptr noundef nonnull byval(%"struct.spdlog::source_loc") align 8 %6, i32 noundef 2, ptr nonnull @.str.5, i64 49, ptr noundef nonnull align 8 dereferenceable(8) %i.c, ptr noundef nonnull align 8 dereferenceable(8) %i.d)
  call void @llvm.lifetime.end.p0(ptr nonnull %6)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #23
  store i32 1, ptr %0, align 8, !tbaa !65
  %i.bj = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i8 0, ptr %i.bj, align 8, !tbaa !177
  br label %bb.al

_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread155: ; preds = %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit
  %i.bk = call { i64, i8 } @_ZN4LIEF10ASN1Reader8read_tagEi(ptr noundef nonnull align 8 dereferenceable(8) %9, i32 noundef 160) #23 ; 2 uses
  %.fca.0.extract28 = extractvalue { i64, i8 } %i.bk, 0
  %.fca.1.extract29 = extractvalue { i64, i8 } %i.bk, 1
  %i.bl = trunc nuw i8 %.fca.1.extract29 to i1
  br i1 %i.bl, label %bb.f, label %bb.e

bb.e:                                             ; preds = %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread155
  %i.bm = call noundef nonnull align 8 dereferenceable(16) ptr @_ZN4LIEF7logging6Logger8instanceEPKc(ptr noundef nonnull @.str.299) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #23
  call void @_ZN4LIEF10ASN1Reader11get_str_tagB5cxx11Ev(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %12, ptr noundef nonnull align 8 dereferenceable(8) %9) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #23
  %i.bn = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.bo = load i64, ptr %i.bn, align 8, !tbaa !77
  store i64 %i.bo, ptr %i.e, align 8, !tbaa !96
  %i.bp = load ptr, ptr %i.bm, align 8, !tbaa !62
  call void @llvm.lifetime.start.p0(ptr nonnull %5)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %5, i8 0, i64 24, i1 false)
  call void @_ZN6spdlog6logger4log_IJRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKmEEEvNS_10source_locENS_5level10level_enumEN3fmt3v1217basic_string_viewIcEEDpOT_(ptr noundef nonnull align 8 dereferenceable(208) %i.bp, ptr noundef nonnull byval(%"struct.spdlog::source_loc") align 8 %5, i32 noundef 2, ptr nonnull @.str.2, i64 25, ptr noundef nonnull align 8 dereferenceable(32) %12, ptr noundef nonnull align 8 dereferenceable(8) %i.e)
  call void @llvm.lifetime.end.p0(ptr nonnull %5)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #23
  %i.bq = load ptr, ptr %12, align 8, !tbaa !99   ; 2 uses
  %i.br = getelementptr inbounds nuw i8, ptr %12, i64 16 ; 2 uses
  %i.bs = icmp eq ptr %i.bq, %i.br
  br i1 %i.bs, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit75, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i73

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i73: ; preds = %bb.e
  %i.bt = load i64, ptr %i.br, align 8, !tbaa !93
  %i.bu = add i64 %i.bt, 1
  call void @_ZdlPvm(ptr noundef %i.bq, i64 noundef %i.bu) #26
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit75

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit75: ; preds = %bb.e, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i73
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #23
  %.sroa.0141.0.extract.trunc143 = trunc i64 %.fca.0.extract28 to i32
  store i32 %.sroa.0141.0.extract.trunc143, ptr %0, align 8, !tbaa !65
  %i.bv = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i8 0, ptr %i.bv, align 8, !tbaa !177
  br label %bb.al

bb.f:                                             ; preds = %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread155
  %i.bw = call { i64, i8 } @_ZN4LIEF10ASN1Reader8read_tagEi(ptr noundef nonnull align 8 dereferenceable(8) %9, i32 noundef 48) #23 ; 2 uses
  %.fca.0.extract23 = extractvalue { i64, i8 } %i.bw, 0
  %.fca.1.extract24 = extractvalue { i64, i8 } %i.bw, 1
  %i.bx = trunc nuw i8 %.fca.1.extract24 to i1
  br i1 %i.bx, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.by = call noundef nonnull align 8 dereferenceable(16) ptr @_ZN4LIEF7logging6Logger8instanceEPKc(ptr noundef nonnull @.str.299) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #23
  call void @_ZN4LIEF10ASN1Reader11get_str_tagB5cxx11Ev(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %13, ptr noundef nonnull align 8 dereferenceable(8) %9) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #23
  %i.bz = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.ca = load i64, ptr %i.bz, align 8, !tbaa !77
  store i64 %i.ca, ptr %i.f, align 8, !tbaa !96
  %i.cb = load ptr, ptr %i.by, align 8, !tbaa !62
  call void @llvm.lifetime.start.p0(ptr nonnull %4)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %4, i8 0, i64 24, i1 false)
  call void @_ZN6spdlog6logger4log_IJRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKmEEEvNS_10source_locENS_5level10level_enumEN3fmt3v1217basic_string_viewIcEEDpOT_(ptr noundef nonnull align 8 dereferenceable(208) %i.cb, ptr noundef nonnull byval(%"struct.spdlog::source_loc") align 8 %4, i32 noundef 2, ptr nonnull @.str.2, i64 25, ptr noundef nonnull align 8 dereferenceable(32) %13, ptr noundef nonnull align 8 dereferenceable(8) %i.f)
  call void @llvm.lifetime.end.p0(ptr nonnull %4)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #23
  %i.cc = load ptr, ptr %13, align 8, !tbaa !99   ; 2 uses
  %i.cd = getelementptr inbounds nuw i8, ptr %13, i64 16 ; 2 uses
  %i.ce = icmp eq ptr %i.cc, %i.cd
  br i1 %i.ce, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit78, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i76

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i76: ; preds = %bb.g
  %i.cf = load i64, ptr %i.cd, align 8, !tbaa !93
  %i.cg = add i64 %i.cf, 1
  call void @_ZdlPvm(ptr noundef %i.cc, i64 noundef %i.cg) #26
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit78

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit78: ; preds = %bb.g, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i76
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #23
  %.sroa.0141.0.extract.trunc145 = trunc i64 %.fca.0.extract23 to i32
  store i32 %.sroa.0141.0.extract.trunc145, ptr %0, align 8, !tbaa !65
  %i.ch = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i8 0, ptr %i.ch, align 8, !tbaa !177
  br label %bb.al

bb.h:                                             ; preds = %bb.f
  %i.ci = call i64 @_ZN4LIEF10ASN1Reader8read_intEv(ptr noundef nonnull align 8 dereferenceable(8) %9) #23 ; 3 uses
  %i.cj = and i64 %i.ci, 4294967296
  %.not162 = icmp eq i64 %i.cj, 0
  br i1 %.not162, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.ck = call noundef nonnull align 8 dereferenceable(16) ptr @_ZN4LIEF7logging6Logger8instanceEPKc(ptr noundef nonnull @.str.299) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #23
  %i.cl = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.cm = load i64, ptr %i.cl, align 8, !tbaa !77
  store i64 %i.cm, ptr %i.g, align 8, !tbaa !96
  call void @_ZN4LIEF7logging6Logger4infoIJmEEEvPKcDpRKT_(ptr noundef nonnull align 8 dereferenceable(16) %i.ck, ptr noundef nonnull @.str.6, ptr noundef nonnull align 8 dereferenceable(8) %i.g)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #23
  %.sroa.0124.0.extract.trunc = trunc i64 %i.ci to i32
  store i32 %.sroa.0124.0.extract.trunc, ptr %0, align 8, !tbaa !65
  %i.cn = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i8 0, ptr %i.cn, align 8, !tbaa !177
  br label %bb.al

bb.j:                                             ; preds = %bb.h
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h) #23
  %.sroa.0124.0.extract.trunc126 = trunc i64 %i.ci to i32 ; 2 uses
  store i32 %.sroa.0124.0.extract.trunc126, ptr %i.h, align 4, !tbaa !103
  %i.co = call noundef nonnull align 8 dereferenceable(16) ptr @_ZN4LIEF7logging6Logger8instanceEPKc(ptr noundef nonnull @.str.299) #23
  call void @_ZN4LIEF7logging6Logger5debugIJiEEEvPKcDpRKT_(ptr noundef nonnull align 8 dereferenceable(16) %i.co, ptr noundef nonnull @.str.109, ptr noundef nonnull align 4 dereferenceable(4) %i.h)
  store i32 %.sroa.0124.0.extract.trunc126, ptr %i.s, align 4, !tbaa !633
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h) #23
  %i.cp = call { i64, i8 } @_ZN4LIEF10ASN1Reader8read_tagEi(ptr noundef nonnull align 8 dereferenceable(8) %9, i32 noundef 49) #23 ; 2 uses
  %.fca.0.extract19 = extractvalue { i64, i8 } %i.cp, 0 ; 2 uses
  %.fca.1.extract20 = extractvalue { i64, i8 } %i.cp, 1
  %i.cq = trunc nuw i8 %.fca.1.extract20 to i1
  br i1 %i.cq, label %_ZNR2tl8expectedIm11lief_errorsE5valueImTnPNSt9enable_ifIXntsr3std7is_voidIT_EE5valueEvE4typeELPv0EEERS5_v.exit, label %.critedge

.critedge:                                        ; preds = %bb.j
  %i.cr = call noundef nonnull align 8 dereferenceable(16) ptr @_ZN4LIEF7logging6Logger8instanceEPKc(ptr noundef nonnull @.str.299) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #23
  call void @_ZN4LIEF10ASN1Reader11get_str_tagB5cxx11Ev(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %14, ptr noundef nonnull align 8 dereferenceable(8) %9) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i) #23
  %i.cs = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.ct = load i64, ptr %i.cs, align 8, !tbaa !77
  store i64 %i.ct, ptr %i.i, align 8, !tbaa !96
  call void @_ZN4LIEF7logging6Logger4infoIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEmEEEvPKcDpRKT_(ptr noundef nonnull align 8 dereferenceable(16) %i.cr, ptr noundef nonnull @.str.2, ptr noundef nonnull align 8 dereferenceable(32) %14, ptr noundef nonnull align 8 dereferenceable(8) %i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i) #23
  %i.cu = load ptr, ptr %14, align 8, !tbaa !99   ; 2 uses
  %i.cv = getelementptr inbounds nuw i8, ptr %14, i64 16 ; 2 uses
  %i.cw = icmp eq ptr %i.cu, %i.cv
  br i1 %i.cw, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit82, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i80

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i80: ; preds = %.critedge
  %i.cx = load i64, ptr %i.cv, align 8, !tbaa !93
  %i.cy = add i64 %i.cx, 1
  call void @_ZdlPvm(ptr noundef %i.cu, i64 noundef %i.cy) #26
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit82

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit82: ; preds = %.critedge, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i80
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #23
  %.sroa.0118.0.extract.trunc = trunc i64 %.fca.0.extract19 to i32
  store i32 %.sroa.0118.0.extract.trunc, ptr %0, align 8, !tbaa !65
  %i.cz = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i8 0, ptr %i.cz, align 8, !tbaa !177
  br label %bb.al

_ZNR2tl8expectedIm11lief_errorsE5valueImTnPNSt9enable_ifIXntsr3std7is_voidIT_EE5valueEvE4typeELPv0EEERS5_v.exit: ; preds = %bb.j
  %i.da = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 17 uses
  %i.db = load i64, ptr %i.da, align 8, !tbaa !77
  %i.dc = add i64 %i.db, %.fca.0.extract19
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #23
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %15, i8 0, i64 24, i1 false)
  %i.dd = getelementptr inbounds nuw i8, ptr %16, i64 32 ; 4 uses
  %i.de = getelementptr inbounds nuw i8, ptr %15, i64 8 ; 3 uses
  %i.df = getelementptr inbounds nuw i8, ptr %15, i64 16
  %i.dg = getelementptr inbounds nuw i8, ptr %16, i64 16 ; 7 uses
  %i.dh = getelementptr inbounds nuw i8, ptr %16, i64 8 ; 3 uses
  br label %bb.k

bb.k:                                             ; preds = %_ZN2tl6detail21expected_storage_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE11lief_errorsLb0ELb1EED2Ev.exit, %_ZNR2tl8expectedIm11lief_errorsE5valueImTnPNSt9enable_ifIXntsr3std7is_voidIT_EE5valueEvE4typeELPv0EEERS5_v.exit
  %i.di = load i64, ptr %i.da, align 8, !tbaa !77 ; 2 uses
  %i.dj = icmp ult i64 %i.di, %i.dc
  br i1 %i.dj, label %bb.l, label %bb.v

bb.l:                                             ; preds = %bb.k
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #23
  call void @_ZN4LIEF10ASN1Reader8read_algB5cxx11Ev(ptr dead_on_unwind nonnull writable sret(%"class.LIEF::result.92") align 8 %16, ptr noundef nonnull align 8 dereferenceable(8) %9) #23
  %i.dk = load i8, ptr %i.dd, align 8, !tbaa !101, !range !85, !noundef !86
  %i.dl = trunc nuw i8 %i.dk to i1
  br i1 %i.dl, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.dm = call noundef nonnull align 8 dereferenceable(16) ptr @_ZN4LIEF7logging6Logger8instanceEPKc(ptr noundef nonnull @.str.299) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j) #23
  %i.dn = load i64, ptr %i.da, align 8, !tbaa !77
  store i64 %i.dn, ptr %i.j, align 8, !tbaa !96
  %i.do = load ptr, ptr %i.dm, align 8, !tbaa !62
  call void @llvm.lifetime.start.p0(ptr nonnull %3)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %3, i8 0, i64 24, i1 false)
  call void @_ZN6spdlog6logger4log_IJRKmEEEvNS_10source_locENS_5level10level_enumEN3fmt3v1217basic_string_viewIcEEDpOT_(ptr noundef nonnull align 8 dereferenceable(208) %i.do, ptr noundef nonnull byval(%"struct.spdlog::source_loc") align 8 %3, i32 noundef 2, ptr nonnull @.str.9, i64 56, ptr noundef nonnull align 8 dereferenceable(8) %i.j)
  call void @llvm.lifetime.end.p0(ptr nonnull %3)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j) #23
  br label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backEOS5_.exit

bb.n:                                             ; preds = %bb.l
  %i.dp = load i64, ptr %i.da, align 8, !tbaa !77
  %i.dq = icmp eq i64 %i.dp, %i.di
  br i1 %i.dq, label %bb.u, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.dr = call noundef nonnull align 8 dereferenceable(16) ptr @_ZN4LIEF7logging6Logger8instanceEPKc(ptr noundef nonnull @.str.299) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k) #23
  %i.ds = load i8, ptr %i.dd, align 8, !tbaa !101, !range !85, !noundef !86
  %i.dt = trunc nuw i8 %i.ds to i1
  br i1 %i.dt, label %_ZNR2tl8expectedINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE11lief_errorsE5valueIS6_TnPNSt9enable_ifIXntsr3std7is_voidIT_EE5valueEvE4typeELPv0EEERSB_v.exit83, label %bb.p

bb.p:                                             ; preds = %bb.o
  call void @_ZSt9terminatev() #24
  unreachable

_ZNR2tl8expectedINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE11lief_errorsE5valueIS6_TnPNSt9enable_ifIXntsr3std7is_voidIT_EE5valueEvE4typeELPv0EEERSB_v.exit83: ; preds = %bb.o
  %i.du = call noundef ptr @_ZN4LIEF2PE13oid_to_stringERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(32) %16) #23
  store ptr %i.du, ptr %i.k, align 8, !tbaa !74
  %i.dv = load ptr, ptr %i.dr, align 8, !tbaa !62
  call void @llvm.lifetime.start.p0(ptr nonnull %2)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %2, i8 0, i64 24, i1 false)
  call void @_ZN6spdlog6logger4log_IJRKPKcEEEvNS_10source_locENS_5level10level_enumEN3fmt3v1217basic_string_viewIcEEDpOT_(ptr noundef nonnull align 8 dereferenceable(208) %i.dv, ptr noundef nonnull byval(%"struct.spdlog::source_loc") align 8 %2, i32 noundef 1, ptr nonnull @.str.110, i64 60, ptr noundef nonnull align 8 dereferenceable(8) %i.k)
  call void @llvm.lifetime.end.p0(ptr nonnull %2)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k) #23
  %i.dw = load i8, ptr %i.dd, align 8, !tbaa !101, !range !85, !noundef !86
  %i.dx = trunc nuw i8 %i.dw to i1
  br i1 %i.dx, label %_ZNR2tl8expectedINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE11lief_errorsE5valueIS6_TnPNSt9enable_ifIXntsr3std7is_voidIT_EE5valueEvE4typeELPv0EEERSB_v.exit84, label %bb.q

bb.q:                                             ; preds = %_ZNR2tl8expectedINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE11lief_errorsE5valueIS6_TnPNSt9enable_ifIXntsr3std7is_voidIT_EE5valueEvE4typeELPv0EEERSB_v.exit83
  call void @_ZSt9terminatev() #24
  unreachable

_ZNR2tl8expectedINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE11lief_errorsE5valueIS6_TnPNSt9enable_ifIXntsr3std7is_voidIT_EE5valueEvE4typeELPv0EEERSB_v.exit84: ; preds = %_ZNR2tl8expectedINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE11lief_errorsE5valueIS6_TnPNSt9enable_ifIXntsr3std7is_voidIT_EE5valueEvE4typeELPv0EEERSB_v.exit83
  %i.dy = load ptr, ptr %i.de, align 8, !tbaa !127 ; 7 uses
  %i.dz = load ptr, ptr %i.df, align 8, !tbaa !142
  %.not.i.i = icmp eq ptr %i.dy, %i.dz
  br i1 %.not.i.i, label %bb.t, label %bb.r

bb.r:                                             ; preds = %_ZNR2tl8expectedINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE11lief_errorsE5valueIS6_TnPNSt9enable_ifIXntsr3std7is_voidIT_EE5valueEvE4typeELPv0EEERSB_v.exit84
  %i.ea = getelementptr inbounds nuw i8, ptr %i.dy, i64 16 ; 3 uses
  store ptr %i.ea, ptr %i.dy, align 8, !tbaa !143
  %i.eb = load ptr, ptr %16, align 8, !tbaa !99   ; 2 uses
  %i.ec = icmp eq ptr %i.eb, %i.dg
  br i1 %i.ec, label %bb.s, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

bb.s:                                             ; preds = %bb.r
  %i.ed = load i64, ptr %i.dh, align 8, !tbaa !102 ; 3 uses
  %i.ee = icmp ult i64 %i.ed, 16
  call void @llvm.assume(i1 %i.ee)
  %i.ef = add nuw nsw i64 %i.ed, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.ea, ptr noundef nonnull align 8 dereferenceable(1) %i.dg, i64 %i.ef, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.r
  store ptr %i.eb, ptr %i.dy, align 8, !tbaa !99
  %i.eg = load i64, ptr %i.dg, align 8, !tbaa !93
  store i64 %i.eg, ptr %i.ea, align 8, !tbaa !93
  %.pre = load i64, ptr %i.dh, align 8, !tbaa !102
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i, %bb.s
  %i.eh = phi i64 [ %.pre, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i ], [ %i.ed, %bb.s ]
  %i.ei = getelementptr inbounds nuw i8, ptr %i.dy, i64 8
  store i64 %i.eh, ptr %i.ei, align 8, !tbaa !102
  store ptr %i.dg, ptr %16, align 8, !tbaa !99
  store i64 0, ptr %i.dh, align 8, !tbaa !102
  store i8 0, ptr %i.dg, align 8, !tbaa !93
  %i.ej = getelementptr inbounds nuw i8, ptr %i.dy, i64 32
  store ptr %i.ej, ptr %i.de, align 8, !tbaa !127
  br label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backEOS5_.exit

bb.t:                                             ; preds = %_ZNR2tl8expectedINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE11lief_errorsE5valueIS6_TnPNSt9enable_ifIXntsr3std7is_voidIT_EE5valueEvE4typeELPv0EEERSB_v.exit84
  call void @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %15, ptr %i.dy, ptr noundef nonnull align 8 dereferenceable(32) %16)
  br label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backEOS5_.exit

_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backEOS5_.exit: ; preds = %bb.t, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.i, %bb.m
  %.1.ph = phi i32 [ 0, %bb.t ], [ 0, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.i ], [ 3, %bb.m ] ; 2 uses
  %i.ek = load i8, ptr %i.dd, align 8, !tbaa !101
  %i.el = trunc nuw i8 %i.ek to i1
  br i1 %i.el, label %bb.u, label %_ZN2tl6detail21expected_storage_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE11lief_errorsLb0ELb1EED2Ev.exit

bb.u:                                             ; preds = %bb.n, %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backEOS5_.exit
  %.1158 = phi i32 [ %.1.ph, %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backEOS5_.exit ], [ 3, %bb.n ] ; 2 uses
  %i.em = load ptr, ptr %16, align 8, !tbaa !99   ; 2 uses
  %i.en = icmp eq ptr %i.em, %i.dg
  br i1 %i.en, label %_ZN2tl6detail21expected_storage_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE11lief_errorsLb0ELb1EED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i85

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i85: ; preds = %bb.u
  %i.eo = load i64, ptr %i.dg, align 8, !tbaa !93
  %i.ep = add i64 %i.eo, 1
  call void @_ZdlPvm(ptr noundef %i.em, i64 noundef %i.ep) #26
  br label %_ZN2tl6detail21expected_storage_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE11lief_errorsLb0ELb1EED2Ev.exit

_ZN2tl6detail21expected_storage_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE11lief_errorsLb0ELb1EED2Ev.exit: ; preds = %bb.u, %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backEOS5_.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i85
  %.1157 = phi i32 [ %.1.ph, %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backEOS5_.exit ], [ %.1158, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i85 ], [ %.1158, %bb.u ]
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #23
  %27 = icmp eq i32 %.1157, 0
  br i1 %27, label %bb.k, label %bb.v

bb.v:                                             ; preds = %_ZN2tl6detail21expected_storage_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE11lief_errorsLb0ELb1EED2Ev.exit, %bb.k
  %i.eq = load ptr, ptr %15, align 8, !tbaa !125  ; 2 uses
  %i.er = load ptr, ptr %i.de, align 8, !tbaa !125 ; 3 uses
  %i.es = icmp eq ptr %i.eq, %i.er
  br i1 %i.es, label %.critedge72, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.et = ptrtoint ptr %i.er to i64
  %i.eu = ptrtoint ptr %i.eq to i64
  %i.ev = sub i64 %i.et, %i.eu
  %i.ew = icmp ugt i64 %i.ev, 32
  br i1 %i.ew, label %.critedge72, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.ex = getelementptr inbounds i8, ptr %i.er, i64 -32
  %i.ey = call noundef i32 @_ZN4LIEF2PE13algo_from_oidERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(32) %i.ex) #23
  store i32 %i.ey, ptr %i.t, align 8, !tbaa !634
  call void @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %15) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #23
  %i.ez = call { i64, i8 } @_ZN4LIEF10ASN1Reader8read_tagEi(ptr noundef nonnull align 8 dereferenceable(8) %9, i32 noundef 48) #23 ; 2 uses
  %.fca.0.extract13 = extractvalue { i64, i8 } %i.ez, 0 ; 3 uses
  %.fca.1.extract14 = extractvalue { i64, i8 } %i.ez, 1
  %i.fa = trunc nuw i8 %.fca.1.extract14 to i1
  br i1 %i.fa, label %_ZNR2tl8expectedIm11lief_errorsE5valueImTnPNSt9enable_ifIXntsr3std7is_voidIT_EE5valueEvE4typeELPv0EEERS5_v.exit90, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.fb = call noundef nonnull align 8 dereferenceable(16) ptr @_ZN4LIEF7logging6Logger8instanceEPKc(ptr noundef nonnull @.str.299) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #23
  call void @_ZN4LIEF10ASN1Reader11get_str_tagB5cxx11Ev(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %17, ptr noundef nonnull align 8 dereferenceable(8) %9) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l) #23
  %i.fc = load i64, ptr %i.da, align 8, !tbaa !77
  store i64 %i.fc, ptr %i.l, align 8, !tbaa !96
  call void @_ZN4LIEF7logging6Logger4infoIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEmEEEvPKcDpRKT_(ptr noundef nonnull align 8 dereferenceable(16) %i.fb, ptr noundef nonnull @.str.14, ptr noundef nonnull align 8 dereferenceable(32) %17, ptr noundef nonnull align 8 dereferenceable(8) %i.l)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l) #23
  %i.fd = load ptr, ptr %17, align 8, !tbaa !99   ; 2 uses
  %i.fe = getelementptr inbounds nuw i8, ptr %17, i64 16 ; 2 uses
  %i.ff = icmp eq ptr %i.fd, %i.fe
  br i1 %i.ff, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i87, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i86

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i86: ; preds = %bb.y
  %i.fg = load i64, ptr %i.fe, align 8, !tbaa !93
  %i.fh = add i64 %i.fg, 1
  call void @_ZdlPvm(ptr noundef %i.fd, i64 noundef %i.fh) #26
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i87

_ZNR2tl8expectedIm11lief_errorsE5valueImTnPNSt9enable_ifIXntsr3std7is_voidIT_EE5valueEvE4typeELPv0EEERS5_v.exit90: ; preds = %bb.x
  call void @llvm.lifetime.start.p0(ptr nonnull %18) #23
  %i.fi = load ptr, ptr %1, align 8, !tbaa !53
  %i.fj = getelementptr inbounds nuw i8, ptr %i.fi, i64 56
  %i.fk = load ptr, ptr %i.fj, align 8
  %i.fl = call noundef ptr %i.fk(ptr noundef nonnull align 8 dereferenceable(24) %1) #23
  %i.fm = getelementptr inbounds nuw i8, ptr %18, i64 8
  store i64 0, ptr %i.fm, align 8, !tbaa !77
  %i.fn = getelementptr inbounds nuw i8, ptr %18, i64 16
  store i8 0, ptr %i.fn, align 8, !tbaa !78
  %i.fo = getelementptr inbounds nuw i8, ptr %18, i64 20
  store i32 3, ptr %i.fo, align 4, !tbaa !79
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVN4LIEF10SpanStreamE, i64 16), ptr %18, align 8, !tbaa !53
  %i.fp = getelementptr inbounds nuw i8, ptr %18, i64 24
  store ptr %i.fl, ptr %i.fp, align 8, !tbaa !129
  %i.fq = getelementptr inbounds nuw i8, ptr %18, i64 32
  store i64 %.fca.0.extract13, ptr %i.fq, align 8, !tbaa !130
  call void @llvm.lifetime.start.p0(ptr nonnull %19) #23
  %i.fr = getelementptr inbounds nuw i8, ptr %19, i64 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %19, i8 0, i64 16, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %20) #23
  call void @_ZN4LIEF2PE15SignatureParser18parse_content_infoERNS_12BinaryStreamERNS1_7range_tE(ptr dead_on_unwind nonnull writable sret(%"class.LIEF::result.139") align 8 %20, ptr noundef nonnull align 8 dereferenceable(24) %18, ptr noundef nonnull align 8 dereferenceable(16) %19)
  %i.fs = getelementptr inbounds nuw i8, ptr %20, i64 16
  %i.ft = load i8, ptr %i.fs, align 8, !tbaa !132, !range !85, !noundef !86
  %i.fu = trunc nuw i8 %i.ft to i1
  br i1 %i.fu, label %bb.z, label %bb.aa

bb.z:                                             ; preds = %_ZNR2tl8expectedIm11lief_errorsE5valueImTnPNSt9enable_ifIXntsr3std7is_voidIT_EE5valueEvE4typeELPv0EEERS5_v.exit90
  store ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTVN4LIEF2PE11ContentInfoE, i64 16), ptr %21, align 8, !tbaa !53
  %i.fv = getelementptr inbounds nuw i8, ptr %21, i64 8 ; 2 uses
  %i.fw = getelementptr inbounds nuw i8, ptr %20, i64 8 ; 2 uses
  %i.fx = load i64, ptr %i.fw, align 8, !tbaa !133
  store i64 %i.fx, ptr %i.fv, align 8, !tbaa !133
  store ptr null, ptr %i.fw, align 8, !tbaa !133
  %i.fy = call noundef nonnull align 8 dereferenceable(16) ptr @_ZN4LIEF2PE11ContentInfoaSES1_(ptr noundef nonnull align 8 dereferenceable(16) %i.u, ptr noundef nonnull align 8 %21) #23 ; 0 uses
  store ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTVN4LIEF2PE11ContentInfoE, i64 16), ptr %21, align 8, !tbaa !53
  %i.fz = load ptr, ptr %i.fv, align 8, !tbaa !133 ; 3 uses
  %.not.i.i91 = icmp eq ptr %i.fz, null
  br i1 %.not.i.i91, label %_ZN4LIEF2PE11ContentInfoD2Ev.exit, label %_ZNKSt14default_deleteIN4LIEF2PE11ContentInfo7ContentEEclEPS3_.exit.i.i

_ZNKSt14default_deleteIN4LIEF2PE11ContentInfo7ContentEEclEPS3_.exit.i.i: ; preds = %bb.z
  %i.ga = load ptr, ptr %i.fz, align 8, !tbaa !53
  %i.gb = getelementptr inbounds nuw i8, ptr %i.ga, i64 24
  %i.gc = load ptr, ptr %i.gb, align 8
  call void %i.gc(ptr noundef nonnull align 8 dereferenceable(40) %i.fz) #23, !inline_history !0
  br label %_ZN4LIEF2PE11ContentInfoD2Ev.exit

_ZN4LIEF2PE11ContentInfoD2Ev.exit:                ; preds = %bb.z, %_ZNKSt14default_deleteIN4LIEF2PE11ContentInfo7ContentEEclEPS3_.exit.i.i
  call void @_ZN4LIEF6ObjectD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(16) %21) #23
  %i.gd = call noundef nonnull align 8 dereferenceable(16) ptr @_ZN4LIEF7logging6Logger8instanceEPKc(ptr noundef nonnull @.str.299) #23
  call void @_ZN4LIEF7logging6Logger5debugIJmmEEEvPKcDpRKT_(ptr noundef nonnull align 8 dereferenceable(16) %i.gd, ptr noundef nonnull @.str.113, ptr noundef nonnull align 8 dereferenceable(8) %19, ptr noundef nonnull align 8 dereferenceable(8) %i.fr)
  br label %bb.ab

bb.aa:                                            ; preds = %_ZNR2tl8expectedIm11lief_errorsE5valueImTnPNSt9enable_ifIXntsr3std7is_voidIT_EE5valueEvE4typeELPv0EEERS5_v.exit90
  %i.ge = call noundef nonnull align 8 dereferenceable(16) ptr @_ZN4LIEF7logging6Logger8instanceEPKc(ptr noundef nonnull @.str.299) #23
  call void @_ZN4LIEF7logging6Logger4infoIJEEEvPKcDpRKT_(ptr noundef nonnull align 8 dereferenceable(16) %i.ge, ptr noundef nonnull @.str.114)
  br label %bb.ab

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i87: ; preds = %bb.y, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i86
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #23
  %.sroa.0109.0.extract.trunc = trunc i64 %.fca.0.extract13 to i32
  store i32 %.sroa.0109.0.extract.trunc, ptr %0, align 8, !tbaa !65
  %i.gf = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i8 0, ptr %i.gf, align 8, !tbaa !177
  br label %bb.al

bb.ab:                                            ; preds = %_ZN4LIEF2PE11ContentInfoD2Ev.exit, %bb.aa
  call void @_ZN2tl6detail21expected_storage_baseIN4LIEF2PE11ContentInfoE11lief_errorsLb0ELb1EED2Ev(ptr noundef nonnull align 8 dead_on_return(17) dereferenceable(17) %20) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #23
  %i.gg = load i64, ptr %i.da, align 8, !tbaa !77
  %i.gh = add i64 %i.gg, %.fca.0.extract13
  store i64 %i.gh, ptr %i.da, align 8, !tbaa !77
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %22) #23
  %i.gi = call { i64, i8 } @_ZN4LIEF10ASN1Reader8read_tagEi(ptr noundef nonnull align 8 dereferenceable(8) %9, i32 noundef 160) #23 ; 2 uses
  %.fca.0.extract8 = extractvalue { i64, i8 } %i.gi, 0
  %.fca.1.extract9 = extractvalue { i64, i8 } %i.gi, 1 ; 2 uses
  store i64 %.fca.0.extract8, ptr %22, align 8
  %.sroa.211.0..sroa_idx = getelementptr inbounds nuw i8, ptr %22, i64 8
  store i8 %.fca.1.extract9, ptr %.sroa.211.0..sroa_idx, align 8
  %i.gj = trunc nuw i8 %.fca.1.extract9 to i1
  br i1 %i.gj, label %bb.ac, label %bb.ag

bb.ac:                                            ; preds = %bb.ab
  %i.gk = call noundef nonnull align 8 dereferenceable(16) ptr @_ZN4LIEF7logging6Logger8instanceEPKc(ptr noundef nonnull @.str.299) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m) #23
  %i.gl = load i64, ptr %i.da, align 8, !tbaa !77
  store i64 %i.gl, ptr %i.m, align 8, !tbaa !96
  call void @_ZN4LIEF7logging6Logger5debugIJmmEEEvPKcDpRKT_(ptr noundef nonnull align 8 dereferenceable(16) %i.gk, ptr noundef nonnull @.str.115, ptr noundef nonnull align 8 dereferenceable(8) %i.m, ptr noundef nonnull align 8 dereferenceable(8) %22)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %23) #23
  %i.gm = load ptr, ptr %1, align 8, !tbaa !53
  %i.gn = getelementptr inbounds nuw i8, ptr %i.gm, i64 56
  %i.go = load ptr, ptr %i.gn, align 8
  %i.gp = call noundef ptr %i.go(ptr noundef nonnull align 8 dereferenceable(24) %1) #23
  %i.gq = load i64, ptr %22, align 8, !tbaa !96   ; 2 uses
  %i.gr = getelementptr inbounds nuw i8, ptr %23, i64 8
  store i64 0, ptr %i.gr, align 8, !tbaa !77
  %i.gs = getelementptr inbounds nuw i8, ptr %23, i64 16
  store i8 0, ptr %i.gs, align 8, !tbaa !78
  %i.gt = getelementptr inbounds nuw i8, ptr %23, i64 20
  store i32 3, ptr %i.gt, align 4, !tbaa !79
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVN4LIEF10SpanStreamE, i64 16), ptr %23, align 8, !tbaa !53
  %i.gu = getelementptr inbounds nuw i8, ptr %23, i64 24
  store ptr %i.gp, ptr %i.gu, align 8, !tbaa !129
  %i.gv = getelementptr inbounds nuw i8, ptr %23, i64 32
  store i64 %i.gq, ptr %i.gv, align 8, !tbaa !130
  %i.gw = load i64, ptr %i.da, align 8, !tbaa !77
  %i.gx = add i64 %i.gw, %i.gq
  store i64 %i.gx, ptr %i.da, align 8, !tbaa !77
  call void @llvm.lifetime.start.p0(ptr nonnull %24) #23
  call void @_ZN4LIEF2PE15SignatureParser18parse_certificatesERNS_12BinaryStreamE(ptr dead_on_unwind nonnull writable sret(%"class.LIEF::result.160") align 8 %24, ptr noundef nonnull align 8 dereferenceable(24) %23)
  %i.gy = getelementptr inbounds nuw i8, ptr %24, i64 24
  %i.gz = load i8, ptr %i.gy, align 8, !tbaa !135, !range !85, !noundef !86
  %i.ha = trunc nuw i8 %i.gz to i1
  br i1 %i.ha, label %bb.ad, label %bb.ae

bb.ad:                                            ; preds = %bb.ac
  %i.hb = call noundef nonnull align 8 dereferenceable(24) ptr @_ZNSt6vectorIN4LIEF2PE4x509ESaIS2_EEaSEOS4_(ptr noundef nonnull align 8 dereferenceable(24) %i.v, ptr noundef nonnull align 8 dereferenceable(24) %24) #23 ; 0 uses
  br label %bb.af

bb.ae:                                            ; preds = %bb.ac
  %i.hc = call noundef nonnull align 8 dereferenceable(16) ptr @_ZN4LIEF7logging6Logger8instanceEPKc(ptr noundef nonnull @.str.299) #23
  call void @_ZN4LIEF7logging6Logger4infoIJEEEvPKcDpRKT_(ptr noundef nonnull align 8 dereferenceable(16) %i.hc, ptr noundef nonnull @.str.116)
  br label %bb.af

bb.af:                                            ; preds = %bb.ae, %bb.ad
  call void @_ZN2tl6detail21expected_storage_baseISt6vectorIN4LIEF2PE4x509ESaIS5_EE11lief_errorsLb0ELb1EED2Ev(ptr noundef nonnull align 8 dead_on_return(25) dereferenceable(25) %24) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %24) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %23) #23
  br label %bb.ag

bb.ag:                                            ; preds = %bb.af, %bb.ab
  call void @llvm.lifetime.end.p0(ptr nonnull %22) #23
  %i.hd = call { i64, i8 } @_ZN4LIEF10ASN1Reader8read_tagEi(ptr noundef nonnull align 8 dereferenceable(8) %9, i32 noundef 161) #23 ; 2 uses
  %.fca.1.extract5 = extractvalue { i64, i8 } %i.hd, 1
  %i.he = trunc nuw i8 %.fca.1.extract5 to i1
  br i1 %i.he, label %_ZNR2tl8expectedIm11lief_errorsE5valueImTnPNSt9enable_ifIXntsr3std7is_voidIT_EE5valueEvE4typeELPv0EEERS5_v.exit93, label %bb.ah

_ZNR2tl8expectedIm11lief_errorsE5valueImTnPNSt9enable_ifIXntsr3std7is_voidIT_EE5valueEvE4typeELPv0EEERS5_v.exit93: ; preds = %bb.ag
  %.fca.0.extract4 = extractvalue { i64, i8 } %i.hd, 0
  %i.hf = call noundef nonnull align 8 dereferenceable(16) ptr @_ZN4LIEF7logging6Logger8instanceEPKc(ptr noundef nonnull @.str.299) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n) #23
  %i.hg = load i64, ptr %i.da, align 8, !tbaa !77
  store i64 %i.hg, ptr %i.n, align 8, !tbaa !96
  call void @_ZN4LIEF7logging6Logger5debugIJmEEEvPKcDpRKT_(ptr noundef nonnull align 8 dereferenceable(16) %i.hf, ptr noundef nonnull @.str.117, ptr noundef nonnull align 8 dereferenceable(8) %i.n)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n) #23
  %i.hh = load ptr, ptr %1, align 8, !tbaa !53
  %i.hi = getelementptr inbounds nuw i8, ptr %i.hh, i64 56
  %i.hj = load ptr, ptr %i.hi, align 8
  %i.hk = call noundef ptr %i.hj(ptr noundef nonnull align 8 dereferenceable(24) %1) #23 ; 0 uses
  %i.hl = load i64, ptr %i.da, align 8, !tbaa !77
end_hunk_1
