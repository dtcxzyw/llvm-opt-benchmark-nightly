Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/lief/original/SignatureParser?download=true
inline.NumInlined: 6338
inline.NumDeleted: 2302
loop-unroll.NumCompletelyUnrolled: 5
loop-unroll.NumRuntimeUnrolled: 43
loop-unroll.NumUnrolled: 48
begin_hunk_0_@_ZN4LIEF2PE15SignatureParser16parse_attributesERNS_12BinaryStreamE:bb.a
  br label %_ZNSt6vectorISt10unique_ptrIN4LIEF2PE9AttributeESt14default_deleteIS3_EESaIS6_EED2Ev.exit

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %31) #23
  call void @_ZN4LIEF10ASN1Reader8read_oidB5cxx11Ev(ptr dead_on_unwind nonnull writable sret(%"class.LIEF::result.92") align 8 %31, ptr noundef nonnull align 8 dereferenceable(8) %30) #23
  %i.bh = load i8, ptr %i.h, align 8, !tbaa !101, !range !85, !noundef !86
  %i.bi = trunc nuw i8 %i.bh to i1
  br i1 %i.bi, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.bj = call noundef nonnull align 8 dereferenceable(16) ptr @_ZN4LIEF7logging6Logger8instanceEPKc(ptr noundef nonnull @.str.299) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #23
  %i.bk = load i64, ptr %i.g, align 8, !tbaa !77
  store i64 %i.bk, ptr %i.c, align 8, !tbaa !96
  %i.bl = load ptr, ptr %i.bj, align 8, !tbaa !62
  call void @llvm.lifetime.start.p0(ptr nonnull %28)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %28, i8 0, i64 24, i1 false)
  call void @_ZN6spdlog6logger4log_IJRKmEEEvNS_10source_locENS_5level10level_enumEN3fmt3v1217basic_string_viewIcEEDpOT_(ptr noundef nonnull align 8 dereferenceable(208) %i.bl, ptr noundef nonnull byval(%"struct.spdlog::source_loc") align 8 %28, i32 noundef 2, ptr nonnull @.str.70, i64 42, ptr noundef nonnull align 8 dereferenceable(8) %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %28)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #23
  br label %bb.cr

bb.f:                                             ; preds = %bb.d
  %i.bm = call { i64, i8 } @_ZN4LIEF10ASN1Reader8read_tagEi(ptr noundef nonnull align 8 dereferenceable(8) %30, i32 noundef 49) #23 ; 2 uses
  %.fca.1.extract = extractvalue { i64, i8 } %i.bm, 1
  %i.bn = trunc nuw i8 %.fca.1.extract to i1
  br i1 %i.bn, label %_ZNR2tl8expectedIm11lief_errorsE5valueImTnPNSt9enable_ifIXntsr3std7is_voidIT_EE5valueEvE4typeELPv0EEERS5_v.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.bo = call noundef nonnull align 8 dereferenceable(16) ptr @_ZN4LIEF7logging6Logger8instanceEPKc(ptr noundef nonnull @.str.299) #23
  %i.bp = load i8, ptr %i.h, align 8, !tbaa !101, !range !85, !noundef !86
  %i.bq = trunc nuw i8 %i.bp to i1
  br i1 %i.bq, label %_ZNR2tl8expectedINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE11lief_errorsE5valueIS6_TnPNSt9enable_ifIXntsr3std7is_voidIT_EE5valueEvE4typeELPv0EEERSB_v.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  call void @_ZSt9terminatev() #24
  unreachable

_ZNR2tl8expectedINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE11lief_errorsE5valueIS6_TnPNSt9enable_ifIXntsr3std7is_voidIT_EE5valueEvE4typeELPv0EEERSB_v.exit: ; preds = %bb.g
  %i.br = load ptr, ptr %i.bo, align 8, !tbaa !62
  call void @llvm.lifetime.start.p0(ptr nonnull %27)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %27, i8 0, i64 24, i1 false)
  call void @_ZN6spdlog6logger4log_IJRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEvNS_10source_locENS_5level10level_enumEN3fmt3v1217basic_string_viewIcEEDpOT_(ptr noundef nonnull align 8 dereferenceable(208) %i.br, ptr noundef nonnull byval(%"struct.spdlog::source_loc") align 8 %27, i32 noundef 1, ptr nonnull @.str.71, i64 42, ptr noundef nonnull align 8 dereferenceable(32) %31)
  call void @llvm.lifetime.end.p0(ptr nonnull %27)
  br label %bb.cr

_ZNR2tl8expectedIm11lief_errorsE5valueImTnPNSt9enable_ifIXntsr3std7is_voidIT_EE5valueEvE4typeELPv0EEERS5_v.exit: ; preds = %bb.f
  %.fca.0.extract = extractvalue { i64, i8 } %i.bm, 0
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #23
  store i64 %.fca.0.extract, ptr %i.d, align 8, !tbaa !96
  %i.bs = call noundef nonnull align 8 dereferenceable(16) ptr @_ZN4LIEF7logging6Logger8instanceEPKc(ptr noundef nonnull @.str.299) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #23
  %i.bt = load i8, ptr %i.h, align 8, !tbaa !101, !range !85, !noundef !86
  %i.bu = trunc nuw i8 %i.bt to i1
  br i1 %i.bu, label %_ZNR2tl8expectedINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE11lief_errorsE5valueIS6_TnPNSt9enable_ifIXntsr3std7is_voidIT_EE5valueEvE4typeELPv0EEERSB_v.exit31, label %bb.i

bb.i:                                             ; preds = %_ZNR2tl8expectedIm11lief_errorsE5valueImTnPNSt9enable_ifIXntsr3std7is_voidIT_EE5valueEvE4typeELPv0EEERS5_v.exit
  call void @_ZSt9terminatev() #24
  unreachable

_ZNR2tl8expectedINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE11lief_errorsE5valueIS6_TnPNSt9enable_ifIXntsr3std7is_voidIT_EE5valueEvE4typeELPv0EEERSB_v.exit31: ; preds = %_ZNR2tl8expectedIm11lief_errorsE5valueImTnPNSt9enable_ifIXntsr3std7is_voidIT_EE5valueEvE4typeELPv0EEERS5_v.exit
  %i.bv = call noundef ptr @_ZN4LIEF2PE13oid_to_stringERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(32) %31) #23
  store ptr %i.bv, ptr %i.e, align 8, !tbaa !74
  %i.bw = load ptr, ptr %i.bs, align 8, !tbaa !62
  call void @llvm.lifetime.start.p0(ptr nonnull %26)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %26, i8 0, i64 24, i1 false)
  call void @_ZN6spdlog6logger4log_IJRKPKcRKmEEEvNS_10source_locENS_5level10level_enumEN3fmt3v1217basic_string_viewIcEEDpOT_(ptr noundef nonnull align 8 dereferenceable(208) %i.bw, ptr noundef nonnull byval(%"struct.spdlog::source_loc") align 8 %26, i32 noundef 1, ptr nonnull @.str.72, i64 33, ptr noundef nonnull align 8 dereferenceable(8) %i.e, ptr noundef nonnull align 8 dereferenceable(8) %i.d)
  call void @llvm.lifetime.end.p0(ptr nonnull %26)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %32) #23
  %i.bx = load ptr, ptr %1, align 8, !tbaa !53
  %i.by = getelementptr inbounds nuw i8, ptr %i.bx, i64 56
  %i.bz = load ptr, ptr %i.by, align 8
  %i.ca = call noundef ptr %i.bz(ptr noundef nonnull align 8 dereferenceable(24) %1) #23
  %i.cb = load i64, ptr %i.d, align 8, !tbaa !96  ; 2 uses
  store i64 0, ptr %i.i, align 8, !tbaa !77
  store i8 0, ptr %i.j, align 8, !tbaa !78
  store i32 3, ptr %i.k, align 4, !tbaa !79
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVN4LIEF10SpanStreamE, i64 16), ptr %32, align 8, !tbaa !53
  store ptr %i.ca, ptr %i.l, align 8, !tbaa !129
  store i64 %i.cb, ptr %i.m, align 8, !tbaa !130
  %.not342 = icmp eq i64 %i.cb, 0
  br i1 %.not342, label %.thread312, label %.lr.ph

.lr.ph:                                           ; preds = %_ZNR2tl8expectedINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE11lief_errorsE5valueIS6_TnPNSt9enable_ifIXntsr3std7is_voidIT_EE5valueEvE4typeELPv0EEERSB_v.exit31, %bb.cq
  %.sroa.0567.1 = phi ptr [ %.sroa.0567.16, %bb.cq ], [ %.sroa.0567.0, %_ZNR2tl8expectedINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE11lief_errorsE5valueIS6_TnPNSt9enable_ifIXntsr3std7is_voidIT_EE5valueEvE4typeELPv0EEERSB_v.exit31 ] ; 158 uses
  %.sroa.30.1 = phi ptr [ %.sroa.30.16, %bb.cq ], [ %.sroa.30.0, %_ZNR2tl8expectedINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE11lief_errorsE5valueIS6_TnPNSt9enable_ifIXntsr3std7is_voidIT_EE5valueEvE4typeELPv0EEERSB_v.exit31 ] ; 93 uses
  %.sroa.75.1 = phi ptr [ %.sroa.75.16, %bb.cq ], [ %.sroa.75.0, %_ZNR2tl8expectedINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE11lief_errorsE5valueIS6_TnPNSt9enable_ifIXntsr3std7is_voidIT_EE5valueEvE4typeELPv0EEERSB_v.exit31 ] ; 40 uses
  %.sroa.30.11232 = ptrtoaddr ptr %.sroa.30.1 to i64 ; 13 uses
  %.sroa.0567.11233 = ptrtoaddr ptr %.sroa.0567.1 to i64 ; 13 uses
  %i.cc = load i64, ptr %i.i, align 8, !tbaa !77
  %i.cd = load i8, ptr %i.h, align 8, !tbaa !101, !range !85, !noundef !86
  %i.ce = trunc nuw i8 %i.cd to i1
  br i1 %i.ce, label %_ZNR2tl8expectedINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE11lief_errorsE5valueIS6_TnPNSt9enable_ifIXntsr3std7is_voidIT_EE5valueEvE4typeELPv0EEERSB_v.exit32, label %bb.j

bb.j:                                             ; preds = %.lr.ph
  call void @_ZSt9terminatev() #24
  unreachable

_ZNR2tl8expectedINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE11lief_errorsE5valueIS6_TnPNSt9enable_ifIXntsr3std7is_voidIT_EE5valueEvE4typeELPv0EEERSB_v.exit32: ; preds = %.lr.ph
  %i.cf = load i64, ptr %i.n, align 8, !tbaa !102 ; 2 uses
  switch i64 %i.cf, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit474.thread625 [
    i64 20, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit
    i64 22, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit36
    i64 21, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit45
    i64 23, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit95
    i64 26, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit474
  ]

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit: ; preds = %_ZNR2tl8expectedINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE11lief_errorsE5valueIS6_TnPNSt9enable_ifIXntsr3std7is_voidIT_EE5valueEvE4typeELPv0EEERSB_v.exit32
  %i.cg = load ptr, ptr %31, align 8, !tbaa !99   ; 8 uses
  %i.ch = load i128, ptr %i.cg, align 1
  %i.ci = xor i128 %i.ch, 65372177682629931770666641137721290289
  %i.cj = getelementptr i8, ptr %i.cg, i64 16
  %i.ck = load i32, ptr %i.cj, align 1
  %i.cl = zext i32 %i.ck to i128
  %i.cm = xor i128 %i.cl, 858667310
  %i.cn = or i128 %i.ci, %i.cm
  %i.co = icmp ne i128 %i.cn, 0
  %i.cp = zext i1 %i.co to i32
  %i.cq = icmp eq i32 %i.cp, 0
  br i1 %i.cq, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit52

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %33) #23
  call void @_ZN4LIEF2PE15SignatureParser18parse_content_typeERNS_12BinaryStreamE(ptr dead_on_unwind nonnull writable sret(%"class.LIEF::result.373") align 8 %33, ptr noundef nonnull align 8 dereferenceable(24) %32)
  %i.cr = load i8, ptr %i.ar, align 8, !tbaa !177, !range !85, !noundef !86
  %i.cs = trunc nuw i8 %i.cr to i1
  %i.ct = load ptr, ptr %33, align 8              ; 2 uses
  %.not.i = icmp ne ptr %i.ct, null
  %or.cond.not = select i1 %i.cs, i1 %.not.i, i1 false
  %i.cu = ptrtoint ptr %i.ct to i64               ; 2 uses
  br i1 %or.cond.not, label %_ZNR2tl8expectedISt10unique_ptrIN4LIEF2PE9AttributeESt14default_deleteIS4_EE11lief_errorsE5valueIS7_TnPNSt9enable_ifIXntsr3std7is_voidIT_EE5valueEvE4typeELPv0EEERSC_v.exit33, label %_ZNSt6vectorISt10unique_ptrIN4LIEF2PE9AttributeESt14default_deleteIS3_EESaIS6_EE9push_backEOS6_.exit

_ZNR2tl8expectedISt10unique_ptrIN4LIEF2PE9AttributeESt14default_deleteIS4_EE11lief_errorsE5valueIS7_TnPNSt9enable_ifIXntsr3std7is_voidIT_EE5valueEvE4typeELPv0EEERSC_v.exit33: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread
  %.not.i.i = icmp eq ptr %.sroa.30.1, %.sroa.75.1
  br i1 %.not.i.i, label %bb.k, label %_ZNSt6vectorISt10unique_ptrIN4LIEF2PE9AttributeESt14default_deleteIS3_EESaIS6_EE9push_backEOS6_.exit.thread.thread

_ZNSt6vectorISt10unique_ptrIN4LIEF2PE9AttributeESt14default_deleteIS3_EESaIS6_EE9push_backEOS6_.exit.thread.thread: ; preds = %_ZNR2tl8expectedISt10unique_ptrIN4LIEF2PE9AttributeESt14default_deleteIS4_EE11lief_errorsE5valueIS7_TnPNSt9enable_ifIXntsr3std7is_voidIT_EE5valueEvE4typeELPv0EEERSC_v.exit33
  store i64 %i.cu, ptr %.sroa.30.1, align 8, !tbaa !169
  %i.cv = getelementptr inbounds nuw i8, ptr %.sroa.30.1, i64 8
  br label %_ZN2tl6detail21expected_storage_baseISt10unique_ptrIN4LIEF2PE9AttributeESt14default_deleteIS5_EE11lief_errorsLb0ELb1EED2Ev.exit

bb.k:                                             ; preds = %_ZNR2tl8expectedISt10unique_ptrIN4LIEF2PE9AttributeESt14default_deleteIS4_EE11lief_errorsE5valueIS7_TnPNSt9enable_ifIXntsr3std7is_voidIT_EE5valueEvE4typeELPv0EEERSC_v.exit33
  %i.cw = ptrtoint ptr %.sroa.30.1 to i64
  %i.cx = ptrtoint ptr %.sroa.0567.1 to i64
  %i.cy = sub i64 %i.cw, %i.cx                    ; 4 uses
  %i.cz = icmp eq i64 %i.cy, 9223372036854775800
  br i1 %i.cz, label %bb.l, label %_ZNKSt6vectorISt10unique_ptrIN4LIEF2PE9AttributeESt14default_deleteIS3_EESaIS6_EE12_M_check_lenEmPKc.exit.i

bb.l:                                             ; preds = %bb.k
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.197) #24
  unreachable

_ZNKSt6vectorISt10unique_ptrIN4LIEF2PE9AttributeESt14default_deleteIS3_EESaIS6_EE12_M_check_lenEmPKc.exit.i: ; preds = %bb.k
  %i.da = ashr exact i64 %i.cy, 3                 ; 3 uses
  %.sroa.speculated.i.i = call i64 @llvm.umax.i64(i64 %i.da, i64 1)
  %i.db = add nsw i64 %.sroa.speculated.i.i, %i.da ; 2 uses
  %i.dc = icmp ult i64 %i.db, %i.da
  %i.dd = call i64 @llvm.umin.i64(i64 %i.db, i64 1152921504606846975)
  %i.de = select i1 %i.dc, i64 1152921504606846975, i64 %i.dd ; 3 uses
  %.not.i.i132 = icmp ne i64 %i.de, 0
  call void @llvm.assume(i1 %.not.i.i132)
  %i.df = shl nuw nsw i64 %i.de, 3
  %i.dg = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.df) #25 ; 10 uses
  %i.dh = getelementptr inbounds nuw i8, ptr %i.dg, i64 %i.cy
  store i64 %i.cu, ptr %i.dh, align 8, !tbaa !169
  store ptr null, ptr %33, align 8, !tbaa !169
  %.not10.i.i.i.i = icmp eq ptr %.sroa.0567.1, %.sroa.30.1
  br i1 %.not10.i.i.i.i, label %_ZNSt6vectorISt10unique_ptrIN4LIEF2PE9AttributeESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit22.i, label %.lr.ph.i.i.i.i133.preheader

.lr.ph.i.i.i.i133.preheader:                      ; preds = %_ZNKSt6vectorISt10unique_ptrIN4LIEF2PE9AttributeESt14default_deleteIS3_EESaIS6_EE12_M_check_lenEmPKc.exit.i
  %i.di = add i64 %.sroa.30.11232, -8
  %i.dj = sub i64 %i.di, %.sroa.0567.11233        ; 3 uses
  %i.dk = lshr i64 %i.dj, 3
  %i.dl = add nuw nsw i64 %i.dk, 1                ; 2 uses
  %min.iters.check1245 = icmp ult i64 %i.dj, 56
  br i1 %min.iters.check1245, label %.lr.ph.i.i.i.i133.preheader1549, label %vector.memcheck1246

vector.memcheck1246:                              ; preds = %.lr.ph.i.i.i.i133.preheader
  %i.dm = and i64 %i.dj, -8
  %i.dn = add i64 %i.dm, 8                        ; 2 uses
  %i.do = getelementptr i8, ptr %i.dg, i64 %i.dn
  %i.dp = getelementptr i8, ptr %.sroa.0567.1, i64 %i.dn
  %bound01247 = icmp ult ptr %i.dg, %i.dp
  %bound11248 = icmp ult ptr %.sroa.0567.1, %i.do
  %found.conflict1249 = and i1 %bound01247, %bound11248
  br i1 %found.conflict1249, label %.lr.ph.i.i.i.i133.preheader1549, label %vector.ph1250

vector.ph1250:                                    ; preds = %vector.memcheck1246
  %n.vec1251 = and i64 %i.dl, 4611686018427387900 ; 3 uses
  %i.dq = shl i64 %n.vec1251, 3                   ; 2 uses
  %i.dr = getelementptr i8, ptr %i.dg, i64 %i.dq  ; 2 uses
  %i.ds = getelementptr i8, ptr %.sroa.0567.1, i64 %i.dq
  br label %vector.body1252

vector.body1252:                                  ; preds = %vector.body1252, %vector.ph1250
  %index1253 = phi i64 [ 0, %vector.ph1250 ], [ %index.next1258, %vector.body1252 ] ; 2 uses
  %i.dt = shl i64 %index1253, 3                   ; 2 uses
  %next.gep1254 = getelementptr i8, ptr %i.dg, i64 %i.dt ; 2 uses
  %next.gep1255 = getelementptr i8, ptr %.sroa.0567.1, i64 %i.dt ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !552)
  call void @llvm.experimental.noalias.scope.decl(metadata !553)
  %i.du = getelementptr i8, ptr %next.gep1255, i64 16
  %wide.load1256 = load <2 x i64>, ptr %next.gep1255, align 8, !tbaa !169, !alias.scope !554
  %wide.load1257 = load <2 x i64>, ptr %i.du, align 8, !tbaa !169, !alias.scope !554
  %i.dv = getelementptr i8, ptr %next.gep1254, i64 16
  store <2 x i64> %wide.load1256, ptr %next.gep1254, align 8, !tbaa !169, !alias.scope !555, !noalias !556
  store <2 x i64> %wide.load1257, ptr %i.dv, align 8, !tbaa !169, !alias.scope !555, !noalias !556
  %44 = getelementptr i8, ptr %next.gep1255, i64 16
  store <2 x ptr> splat (ptr null), ptr %next.gep1255, align 8, !tbaa !169, !alias.scope !554
  store <2 x ptr> splat (ptr null), ptr %44, align 8, !tbaa !169, !alias.scope !554
  %index.next1258 = add nuw i64 %index1253, 4     ; 2 uses
  %i.dw = icmp eq i64 %index.next1258, %n.vec1251
  br i1 %i.dw, label %middle.block1259, label %vector.body1252, !llvm.loop !435

middle.block1259:                                 ; preds = %vector.body1252
  %cmp.n1260 = icmp eq i64 %i.dl, %n.vec1251
  br i1 %cmp.n1260, label %_ZNSt6vectorISt10unique_ptrIN4LIEF2PE9AttributeESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit22.i, label %.lr.ph.i.i.i.i133.preheader1549

.lr.ph.i.i.i.i133.preheader1549:                  ; preds = %vector.memcheck1246, %.lr.ph.i.i.i.i133.preheader, %middle.block1259
  %.012.i.i.i.i.ph = phi ptr [ %i.dg, %vector.memcheck1246 ], [ %i.dg, %.lr.ph.i.i.i.i133.preheader ], [ %i.dr, %middle.block1259 ]
  %.0911.i.i.i.i.ph = phi ptr [ %.sroa.0567.1, %vector.memcheck1246 ], [ %.sroa.0567.1, %.lr.ph.i.i.i.i133.preheader ], [ %i.ds, %middle.block1259 ]
  br label %.lr.ph.i.i.i.i133

.lr.ph.i.i.i.i133:                                ; preds = %.lr.ph.i.i.i.i133.preheader1549, %.lr.ph.i.i.i.i133
  %.012.i.i.i.i = phi ptr [ %i.dz, %.lr.ph.i.i.i.i133 ], [ %.012.i.i.i.i.ph, %.lr.ph.i.i.i.i133.preheader1549 ] ; 2 uses
  %.0911.i.i.i.i = phi ptr [ %i.dy, %.lr.ph.i.i.i.i133 ], [ %.0911.i.i.i.i.ph, %.lr.ph.i.i.i.i133.preheader1549 ] ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !552)
  call void @llvm.experimental.noalias.scope.decl(metadata !553)
  %i.dx = load i64, ptr %.0911.i.i.i.i, align 8, !tbaa !169, !alias.scope !553
  store i64 %i.dx, ptr %.012.i.i.i.i, align 8, !tbaa !169, !alias.scope !552
  store ptr null, ptr %.0911.i.i.i.i, align 8, !tbaa !169, !alias.scope !553
  %i.dy = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i, i64 8 ; 2 uses
  %i.dz = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i134 = icmp eq ptr %i.dy, %.sroa.30.1
  br i1 %.not.i.i.i.i134, label %_ZNSt6vectorISt10unique_ptrIN4LIEF2PE9AttributeESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit22.i, label %.lr.ph.i.i.i.i133, !llvm.loop !436

_ZNSt6vectorISt10unique_ptrIN4LIEF2PE9AttributeESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit22.i: ; preds = %.lr.ph.i.i.i.i133, %middle.block1259, %_ZNKSt6vectorISt10unique_ptrIN4LIEF2PE9AttributeESt14default_deleteIS3_EESaIS6_EE12_M_check_lenEmPKc.exit.i
  %.0.lcssa.i.i.i.i = phi ptr [ %i.dg, %_ZNKSt6vectorISt10unique_ptrIN4LIEF2PE9AttributeESt14default_deleteIS3_EESaIS6_EE12_M_check_lenEmPKc.exit.i ], [ %i.dr, %middle.block1259 ], [ %i.dz, %.lr.ph.i.i.i.i133 ]
  %i.ea = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i, i64 8
  %.not.i23.i = icmp eq ptr %.sroa.0567.1, null
  br i1 %.not.i23.i, label %_ZNSt6vectorISt10unique_ptrIN4LIEF2PE9AttributeESt14default_deleteIS3_EESaIS6_EE9push_backEOS6_.exit.thread.thread445, label %bb.m

bb.m:                                             ; preds = %_ZNSt6vectorISt10unique_ptrIN4LIEF2PE9AttributeESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit22.i
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0567.1, i64 noundef %i.cy) #26
  br label %_ZNSt6vectorISt10unique_ptrIN4LIEF2PE9AttributeESt14default_deleteIS3_EESaIS6_EE9push_backEOS6_.exit.thread.thread445

_ZNSt6vectorISt10unique_ptrIN4LIEF2PE9AttributeESt14default_deleteIS3_EESaIS6_EE9push_backEOS6_.exit.thread.thread445: ; preds = %bb.m, %_ZNSt6vectorISt10unique_ptrIN4LIEF2PE9AttributeESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit22.i
  %i.eb = getelementptr inbounds nuw [8 x i8], ptr %i.dg, i64 %i.de
  br label %_ZN2tl6detail21expected_storage_baseISt10unique_ptrIN4LIEF2PE9AttributeESt14default_deleteIS5_EE11lief_errorsLb0ELb1EED2Ev.exit

_ZNSt6vectorISt10unique_ptrIN4LIEF2PE9AttributeESt14default_deleteIS3_EESaIS6_EE9push_backEOS6_.exit: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread
  %i.ec = call noundef nonnull align 8 dereferenceable(16) ptr @_ZN4LIEF7logging6Logger8instanceEPKc(ptr noundef nonnull @.str.299) #23
  %i.ed = load ptr, ptr %i.ec, align 8, !tbaa !62
  call void @llvm.lifetime.start.p0(ptr nonnull %25)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %25, i8 0, i64 24, i1 false)
  call void @_ZN6spdlog6logger4log_IJEEEvNS_10source_locENS_5level10level_enumEN3fmt3v1217basic_string_viewIcEEDpOT_(ptr noundef nonnull align 8 dereferenceable(208) %i.ed, ptr noundef nonnull byval(%"struct.spdlog::source_loc") align 8 %25, i32 noundef 2, ptr nonnull @.str.74, i64 38)
  call void @llvm.lifetime.end.p0(ptr nonnull %25)
  br label %_ZN2tl6detail21expected_storage_baseISt10unique_ptrIN4LIEF2PE9AttributeESt14default_deleteIS5_EE11lief_errorsLb0ELb1EED2Ev.exit

_ZN2tl6detail21expected_storage_baseISt10unique_ptrIN4LIEF2PE9AttributeESt14default_deleteIS5_EE11lief_errorsLb0ELb1EED2Ev.exit: ; preds = %_ZNSt6vectorISt10unique_ptrIN4LIEF2PE9AttributeESt14default_deleteIS3_EESaIS6_EE9push_backEOS6_.exit, %_ZNSt6vectorISt10unique_ptrIN4LIEF2PE9AttributeESt14default_deleteIS3_EESaIS6_EE9push_backEOS6_.exit.thread.thread445, %_ZNSt6vectorISt10unique_ptrIN4LIEF2PE9AttributeESt14default_deleteIS3_EESaIS6_EE9push_backEOS6_.exit.thread.thread
  %.sroa.0567.2 = phi ptr [ %i.dg, %_ZNSt6vectorISt10unique_ptrIN4LIEF2PE9AttributeESt14default_deleteIS3_EESaIS6_EE9push_backEOS6_.exit.thread.thread445 ], [ %.sroa.0567.1, %_ZNSt6vectorISt10unique_ptrIN4LIEF2PE9AttributeESt14default_deleteIS3_EESaIS6_EE9push_backEOS6_.exit.thread.thread ], [ %.sroa.0567.1, %_ZNSt6vectorISt10unique_ptrIN4LIEF2PE9AttributeESt14default_deleteIS3_EESaIS6_EE9push_backEOS6_.exit ]
  %.sroa.30.2 = phi ptr [ %i.ea, %_ZNSt6vectorISt10unique_ptrIN4LIEF2PE9AttributeESt14default_deleteIS3_EESaIS6_EE9push_backEOS6_.exit.thread.thread445 ], [ %i.cv, %_ZNSt6vectorISt10unique_ptrIN4LIEF2PE9AttributeESt14default_deleteIS3_EESaIS6_EE9push_backEOS6_.exit.thread.thread ], [ %.sroa.30.1, %_ZNSt6vectorISt10unique_ptrIN4LIEF2PE9AttributeESt14default_deleteIS3_EESaIS6_EE9push_backEOS6_.exit ]
  %.sroa.75.2 = phi ptr [ %i.eb, %_ZNSt6vectorISt10unique_ptrIN4LIEF2PE9AttributeESt14default_deleteIS3_EESaIS6_EE9push_backEOS6_.exit.thread.thread445 ], [ %.sroa.75.1, %_ZNSt6vectorISt10unique_ptrIN4LIEF2PE9AttributeESt14default_deleteIS3_EESaIS6_EE9push_backEOS6_.exit.thread.thread ], [ %.sroa.75.1, %_ZNSt6vectorISt10unique_ptrIN4LIEF2PE9AttributeESt14default_deleteIS3_EESaIS6_EE9push_backEOS6_.exit ]
  call void @llvm.lifetime.end.p0(ptr nonnull %33) #23
  br label %_ZNSt10unique_ptrIN4LIEF2PE21PKCS9AtSequenceNumberESt14default_deleteIS2_EED2Ev.exit

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit36: ; preds = %_ZNR2tl8expectedINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE11lief_errorsE5valueIS6_TnPNSt9enable_ifIXntsr3std7is_voidIT_EE5valueEvE4typeELPv0EEERSB_v.exit32
  %.pre = load ptr, ptr %31, align 8, !tbaa !99   ; 4 uses
  %i.ee = load i128, ptr %.pre, align 1
  %i.ef = xor i128 %i.ee, 61399908245176969875065496016400887345
  %i.eg = getelementptr i8, ptr %.pre, i64 6
  %i.eh = load i128, ptr %i.eg, align 1
  %i.ei = xor i128 %i.eh, 66716759222632706253836895347318992433
  %i.ej = or i128 %i.ef, %i.ei
  %i.ek = icmp ne i128 %i.ej, 0
  %i.el = zext i1 %i.ek to i32
  %i.em = icmp eq i32 %i.el, 0
  br i1 %i.em, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit36.thread, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit77

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit36.thread: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit36
  call void @llvm.lifetime.start.p0(ptr nonnull %34) #23
  call void @_ZN4LIEF2PE15SignatureParser22parse_spc_sp_opus_infoERNS_12BinaryStreamE(ptr dead_on_unwind nonnull writable sret(%"class.LIEF::result.402") align 8 %34, ptr noundef nonnull align 8 dereferenceable(24) %32)
  %i.en = load i8, ptr %i.ac, align 8, !tbaa !181, !range !85, !noundef !86
  %i.eo = trunc nuw i8 %i.en to i1
  br i1 %i.eo, label %_ZNR2tl8expectedIN4LIEF2PE15SignatureParser13SpcSpOpusInfoE11lief_errorsE5valueIS4_TnPNSt9enable_ifIXntsr3std7is_voidIT_EE5valueEvE4typeELPv0EEERS9_v.exit, label %bb.n

bb.n:                                             ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit36.thread
  %i.ep = call noundef nonnull align 8 dereferenceable(16) ptr @_ZN4LIEF7logging6Logger8instanceEPKc(ptr noundef nonnull @.str.299) #23
  %i.eq = load ptr, ptr %i.ep, align 8, !tbaa !62
  call void @llvm.lifetime.start.p0(ptr nonnull %24)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %24, i8 0, i64 24, i1 false)
  call void @_ZN6spdlog6logger4log_IJEEEvNS_10source_locENS_5level10level_enumEN3fmt3v1217basic_string_viewIcEEDpOT_(ptr noundef nonnull align 8 dereferenceable(208) %i.eq, ptr noundef nonnull byval(%"struct.spdlog::source_loc") align 8 %24, i32 noundef 2, ptr nonnull @.str.76, i64 42)
  call void @llvm.lifetime.end.p0(ptr nonnull %24)
  br label %bb.y

_ZNR2tl8expectedIN4LIEF2PE15SignatureParser13SpcSpOpusInfoE11lief_errorsE5valueIS4_TnPNSt9enable_ifIXntsr3std7is_voidIT_EE5valueEvE4typeELPv0EEERS9_v.exit: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit36.thread
  call void @llvm.lifetime.start.p0(ptr nonnull %35) #23
  store ptr %i.ad, ptr %35, align 8, !tbaa !143
  %i.er = load ptr, ptr %34, align 8, !tbaa !99   ; 2 uses
  %i.es = icmp eq ptr %i.er, %i.ae
  br i1 %i.es, label %bb.o, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

bb.o:                                             ; preds = %_ZNR2tl8expectedIN4LIEF2PE15SignatureParser13SpcSpOpusInfoE11lief_errorsE5valueIS4_TnPNSt9enable_ifIXntsr3std7is_voidIT_EE5valueEvE4typeELPv0EEERS9_v.exit
  %i.et = load i64, ptr %i.af, align 8, !tbaa !102 ; 3 uses
  %i.eu = icmp ult i64 %i.et, 16
  call void @llvm.assume(i1 %i.eu)
  %i.ev = add nuw nsw i64 %i.et, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.ad, ptr noundef nonnull align 8 dereferenceable(1) %i.ae, i64 %i.ev, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZNR2tl8expectedIN4LIEF2PE15SignatureParser13SpcSpOpusInfoE11lief_errorsE5valueIS4_TnPNSt9enable_ifIXntsr3std7is_voidIT_EE5valueEvE4typeELPv0EEERS9_v.exit
  store ptr %i.er, ptr %35, align 8, !tbaa !99
  %i.ew = load i64, ptr %i.ae, align 8, !tbaa !93
  store i64 %i.ew, ptr %i.ad, align 8, !tbaa !93
  %.pre352 = load i64, ptr %i.af, align 8, !tbaa !102
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %bb.o
  %i.ex = phi i64 [ %.pre352, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ], [ %i.et, %bb.o ]
  store i64 %i.ex, ptr %i.ag, align 8, !tbaa !102
  store ptr %i.ae, ptr %34, align 8, !tbaa !99
  store i64 0, ptr %i.af, align 8, !tbaa !102
  store i8 0, ptr %i.ae, align 8, !tbaa !93
  store ptr %i.aj, ptr %i.ah, align 8, !tbaa !143
  %i.ey = load ptr, ptr %i.ai, align 8, !tbaa !99 ; 2 uses
  %i.ez = icmp eq ptr %i.ey, %i.ak
  br i1 %i.ez, label %bb.p, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i3.i

bb.p:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i
  %i.fa = load i64, ptr %i.al, align 8, !tbaa !102 ; 3 uses
  %i.fb = icmp ult i64 %i.fa, 16
  call void @llvm.assume(i1 %i.fb)
  %i.fc = add nuw nsw i64 %i.fa, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.aj, ptr noundef nonnull align 8 dereferenceable(1) %i.ak, i64 %i.fc, i1 false)
  br label %_ZN4LIEF2PE15SignatureParser13SpcSpOpusInfoC2EOS2_.exit

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i3.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i
  store ptr %i.ey, ptr %i.ah, align 8, !tbaa !99
  %i.fd = load i64, ptr %i.ak, align 8, !tbaa !93
  store i64 %i.fd, ptr %i.aj, align 8, !tbaa !93
  %.pre353 = load i64, ptr %i.al, align 8, !tbaa !102
  br label %_ZN4LIEF2PE15SignatureParser13SpcSpOpusInfoC2EOS2_.exit

_ZN4LIEF2PE15SignatureParser13SpcSpOpusInfoC2EOS2_.exit: ; preds = %bb.p, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i3.i
  %i.fe = phi i64 [ %i.fa, %bb.p ], [ %.pre353, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i3.i ]
  store i64 %i.fe, ptr %i.am, align 8, !tbaa !102
  store ptr %i.ak, ptr %i.ai, align 8, !tbaa !99
  store i64 0, ptr %i.al, align 8, !tbaa !102
  store i8 0, ptr %i.ak, align 8, !tbaa !93
  call void @llvm.lifetime.start.p0(ptr nonnull %22)
  call void @llvm.lifetime.start.p0(ptr nonnull %23)
  %i.ff = call noalias noundef nonnull dereferenceable(80) ptr @_Znwm(i64 noundef 80) #25, !noalias !557 ; 11 uses
  store ptr %i.an, ptr %22, align 8, !tbaa !143, !noalias !557
  %i.fg = load ptr, ptr %35, align 8, !tbaa !99, !noalias !557 ; 2 uses
  %i.fh = icmp eq ptr %i.fg, %i.ad
  br i1 %i.fh, label %bb.q, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i37

bb.q:                                             ; preds = %_ZN4LIEF2PE15SignatureParser13SpcSpOpusInfoC2EOS2_.exit
  %i.fi = load i64, ptr %i.ag, align 8, !tbaa !102, !noalias !557 ; 3 uses
  %i.fj = icmp ult i64 %i.fi, 16
  call void @llvm.assume(i1 %i.fj)
  %i.fk = add nuw nsw i64 %i.fi, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.an, ptr noundef nonnull align 8 dereferenceable(1) %i.ad, i64 %i.fk, i1 false), !noalias !557
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i38

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i37: ; preds = %_ZN4LIEF2PE15SignatureParser13SpcSpOpusInfoC2EOS2_.exit
  store ptr %i.fg, ptr %22, align 8, !tbaa !99, !noalias !557
  %i.fl = load i64, ptr %i.ad, align 8, !tbaa !93, !noalias !557
  store i64 %i.fl, ptr %i.an, align 8, !tbaa !93, !noalias !557
  %.pre.i = load i64, ptr %i.ag, align 8, !tbaa !102, !noalias !557
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i38

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i38: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i37, %bb.q
  %i.fm = phi i64 [ %i.fi, %bb.q ], [ %.pre.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i37 ]
  store i64 %i.fm, ptr %i.ao, align 8, !tbaa !102, !noalias !557
  store ptr %i.ad, ptr %35, align 8, !tbaa !99, !noalias !557
  store i64 0, ptr %i.ag, align 8, !tbaa !102, !noalias !557
  store i8 0, ptr %i.ad, align 8, !tbaa !93, !noalias !557
  store ptr %i.ap, ptr %23, align 8, !tbaa !143, !noalias !557
  %i.fn = load ptr, ptr %i.ah, align 8, !tbaa !99, !noalias !557 ; 2 uses
  %i.fo = icmp eq ptr %i.fn, %i.aj
  br i1 %i.fo, label %bb.r, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i2.i

bb.r:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i38
  %i.fp = load i64, ptr %i.am, align 8, !tbaa !102, !noalias !557 ; 3 uses
  %i.fq = icmp ult i64 %i.fp, 16
  call void @llvm.assume(i1 %i.fq)
  %i.fr = add nuw nsw i64 %i.fp, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.ap, ptr noundef nonnull align 8 dereferenceable(1) %i.aj, i64 %i.fr, i1 false), !noalias !557
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit3.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i2.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i38
  store ptr %i.fn, ptr %23, align 8, !tbaa !99, !noalias !557
  %i.fs = load i64, ptr %i.aj, align 8, !tbaa !93, !noalias !557
  store i64 %i.fs, ptr %i.ap, align 8, !tbaa !93, !noalias !557
  %.pre9.i = load i64, ptr %i.am, align 8, !tbaa !102, !noalias !557
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit3.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit3.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i2.i, %bb.r
  %i.ft = phi i64 [ %i.fp, %bb.r ], [ %.pre9.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i2.i ]
  store i64 %i.ft, ptr %i.aq, align 8, !tbaa !102, !noalias !557
  store ptr %i.aj, ptr %i.ah, align 8, !tbaa !99, !noalias !557
  store i64 0, ptr %i.am, align 8, !tbaa !102, !noalias !557
  store i8 0, ptr %i.aj, align 8, !tbaa !93, !noalias !557
  call void @_ZN4LIEF6ObjectC2Ev(ptr noundef nonnull align 8 dereferenceable(80) %i.ff) #23, !noalias !557
  %i.fu = getelementptr inbounds nuw i8, ptr %i.ff, i64 8
  store i32 4, ptr %i.fu, align 8, !tbaa !184, !noalias !557
  store ptr getelementptr inbounds nuw inrange(-16, 64) (i8, ptr @_ZTVN4LIEF2PE13SpcSpOpusInfoE, i64 16), ptr %i.ff, align 8, !tbaa !53, !noalias !557
  %i.fv = getelementptr inbounds nuw i8, ptr %i.ff, i64 16 ; 2 uses
  %i.fw = getelementptr inbounds nuw i8, ptr %i.ff, i64 32 ; 3 uses
  store ptr %i.fw, ptr %i.fv, align 8, !tbaa !143, !noalias !557
  %i.fx = load ptr, ptr %22, align 8, !tbaa !99, !noalias !557 ; 2 uses
  %i.fy = icmp eq ptr %i.fx, %i.an
  br i1 %i.fy, label %bb.s, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

bb.s:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit3.i
  %i.fz = load i64, ptr %i.ao, align 8, !tbaa !102, !noalias !557 ; 3 uses
  %i.ga = icmp ult i64 %i.fz, 16
  call void @llvm.assume(i1 %i.ga)
  %i.gb = add nuw nsw i64 %i.fz, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.fw, ptr noundef nonnull align 8 dereferenceable(1) %i.an, i64 %i.gb, i1 false), !noalias !557
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit3.i
  store ptr %i.fx, ptr %i.fv, align 8, !tbaa !99, !noalias !557
  %i.gc = load i64, ptr %i.an, align 8, !tbaa !93, !noalias !557
  store i64 %i.gc, ptr %i.fw, align 8, !tbaa !93, !noalias !557
  %.pre10.i = load i64, ptr %i.ao, align 8, !tbaa !102, !noalias !557
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i, %bb.s
  %i.gd = phi i64 [ %.pre10.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i ], [ %i.fz, %bb.s ]
  %i.ge = getelementptr inbounds nuw i8, ptr %i.ff, i64 24
  store i64 %i.gd, ptr %i.ge, align 8, !tbaa !102, !noalias !557
  %i.gf = getelementptr inbounds nuw i8, ptr %i.ff, i64 48 ; 2 uses
  %i.gg = getelementptr inbounds nuw i8, ptr %i.ff, i64 64 ; 3 uses
  store ptr %i.gg, ptr %i.gf, align 8, !tbaa !143, !noalias !557
  %i.gh = load ptr, ptr %23, align 8, !tbaa !99, !noalias !557 ; 2 uses
  %i.gi = icmp eq ptr %i.gh, %i.ap
  br i1 %i.gi, label %bb.t, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i1.i.i

bb.t:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.i
  %i.gj = load i64, ptr %i.aq, align 8, !tbaa !102, !noalias !557 ; 3 uses
  %i.gk = icmp ult i64 %i.gj, 16
  call void @llvm.assume(i1 %i.gk)
  %i.gl = add nuw nsw i64 %i.gj, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.gg, ptr noundef nonnull align 8 dereferenceable(1) %i.ap, i64 %i.gl, i1 false), !noalias !557
  br label %_ZSt11make_uniqueIN4LIEF2PE13SpcSpOpusInfoEJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_EENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_.exit

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i1.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.i
  store ptr %i.gh, ptr %i.gf, align 8, !tbaa !99, !noalias !557
  %i.gm = load i64, ptr %i.ap, align 8, !tbaa !93, !noalias !557
  store i64 %i.gm, ptr %i.gg, align 8, !tbaa !93, !noalias !557
  %.pre11.i = load i64, ptr %i.aq, align 8, !tbaa !102, !noalias !557
  br label %_ZSt11make_uniqueIN4LIEF2PE13SpcSpOpusInfoEJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_EENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_.exit

_ZSt11make_uniqueIN4LIEF2PE13SpcSpOpusInfoEJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_EENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_.exit: ; preds = %bb.t, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i1.i.i
  %i.gn = phi i64 [ %i.gj, %bb.t ], [ %.pre11.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i1.i.i ]
  %i.go = getelementptr inbounds nuw i8, ptr %i.ff, i64 56
  store i64 %i.gn, ptr %i.go, align 8, !tbaa !102, !noalias !557
  call void @llvm.lifetime.end.p0(ptr nonnull %22)
  call void @llvm.lifetime.end.p0(ptr nonnull %23)
  %.not.i.i39 = icmp eq ptr %.sroa.30.1, %.sroa.75.1
  br i1 %.not.i.i39, label %bb.v, label %bb.u

bb.u:                                             ; preds = %_ZSt11make_uniqueIN4LIEF2PE13SpcSpOpusInfoEJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_EENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_.exit
  %i.gp = ptrtoint ptr %i.ff to i64
  store i64 %i.gp, ptr %.sroa.30.1, align 8, !tbaa !169
  br label %_ZNSt10unique_ptrIN4LIEF2PE13SpcSpOpusInfoESt14default_deleteIS2_EED2Ev.exit

bb.v:                                             ; preds = %_ZSt11make_uniqueIN4LIEF2PE13SpcSpOpusInfoEJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_EENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_.exit
  %i.gq = ptrtoint ptr %.sroa.30.1 to i64
  %i.gr = ptrtoint ptr %.sroa.0567.1 to i64
  %i.gs = sub i64 %i.gq, %i.gr                    ; 4 uses
  %i.gt = icmp eq i64 %i.gs, 9223372036854775800
  br i1 %i.gt, label %bb.w, label %_ZNKSt6vectorISt10unique_ptrIN4LIEF2PE9AttributeESt14default_deleteIS3_EESaIS6_EE12_M_check_lenEmPKc.exit.i135

bb.w:                                             ; preds = %bb.v
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.197) #24
  unreachable

_ZNKSt6vectorISt10unique_ptrIN4LIEF2PE9AttributeESt14default_deleteIS3_EESaIS6_EE12_M_check_lenEmPKc.exit.i135: ; preds = %bb.v
  %i.gu = ashr exact i64 %i.gs, 3                 ; 3 uses
  %.sroa.speculated.i.i136 = call i64 @llvm.umax.i64(i64 %i.gu, i64 1)
  %i.gv = add nsw i64 %.sroa.speculated.i.i136, %i.gu ; 2 uses
  %i.gw = icmp ult i64 %i.gv, %i.gu
  %i.gx = call i64 @llvm.umin.i64(i64 %i.gv, i64 1152921504606846975)
  %i.gy = select i1 %i.gw, i64 1152921504606846975, i64 %i.gx ; 3 uses
  %.not.i.i137 = icmp ne i64 %i.gy, 0
  call void @llvm.assume(i1 %.not.i.i137)
  %i.gz = shl nuw nsw i64 %i.gy, 3
  %i.ha = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.gz) #25 ; 10 uses
  %i.hb = getelementptr inbounds nuw i8, ptr %i.ha, i64 %i.gs
  %i.hc = ptrtoint ptr %i.ff to i64
  store i64 %i.hc, ptr %i.hb, align 8, !tbaa !169
  %.not10.i.i.i.i138 = icmp eq ptr %.sroa.0567.1, %.sroa.30.1
  br i1 %.not10.i.i.i.i138, label %_ZNSt6vectorISt10unique_ptrIN4LIEF2PE9AttributeESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit22.i150, label %.lr.ph.i.i.i.i139.preheader

.lr.ph.i.i.i.i139.preheader:                      ; preds = %_ZNKSt6vectorISt10unique_ptrIN4LIEF2PE9AttributeESt14default_deleteIS3_EESaIS6_EE12_M_check_lenEmPKc.exit.i135
  %i.hd = add i64 %.sroa.30.11232, -8
  %i.he = sub i64 %i.hd, %.sroa.0567.11233        ; 3 uses
  %i.hf = lshr i64 %i.he, 3
  %i.hg = add nuw nsw i64 %i.hf, 1                ; 2 uses
  %min.iters.check1349 = icmp ult i64 %i.he, 56
  br i1 %min.iters.check1349, label %.lr.ph.i.i.i.i139.preheader1553, label %vector.memcheck1350

vector.memcheck1350:                              ; preds = %.lr.ph.i.i.i.i139.preheader
  %i.hh = and i64 %i.he, -8
  %i.hi = add i64 %i.hh, 8                        ; 2 uses
  %i.hj = getelementptr i8, ptr %i.ha, i64 %i.hi
  %i.hk = getelementptr i8, ptr %.sroa.0567.1, i64 %i.hi
  %bound01351 = icmp ult ptr %i.ha, %i.hk
  %bound11352 = icmp ult ptr %.sroa.0567.1, %i.hj
  %found.conflict1353 = and i1 %bound01351, %bound11352
  br i1 %found.conflict1353, label %.lr.ph.i.i.i.i139.preheader1553, label %vector.ph1354

vector.ph1354:                                    ; preds = %vector.memcheck1350
  %n.vec1355 = and i64 %i.hg, 4611686018427387900 ; 3 uses
  %i.hl = shl i64 %n.vec1355, 3                   ; 2 uses
  %i.hm = getelementptr i8, ptr %i.ha, i64 %i.hl  ; 2 uses
  %i.hn = getelementptr i8, ptr %.sroa.0567.1, i64 %i.hl
  br label %vector.body1356

vector.body1356:                                  ; preds = %vector.body1356, %vector.ph1354
  %index1357 = phi i64 [ 0, %vector.ph1354 ], [ %index.next1362, %vector.body1356 ] ; 2 uses
  %i.ho = shl i64 %index1357, 3                   ; 2 uses
  %next.gep1358 = getelementptr i8, ptr %i.ha, i64 %i.ho ; 2 uses
  %next.gep1359 = getelementptr i8, ptr %.sroa.0567.1, i64 %i.ho ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !558)
  call void @llvm.experimental.noalias.scope.decl(metadata !559)
  %i.hp = getelementptr i8, ptr %next.gep1359, i64 16
  %wide.load1360 = load <2 x i64>, ptr %next.gep1359, align 8, !tbaa !169, !alias.scope !560
  %wide.load1361 = load <2 x i64>, ptr %i.hp, align 8, !tbaa !169, !alias.scope !560
  %i.hq = getelementptr i8, ptr %next.gep1358, i64 16
  store <2 x i64> %wide.load1360, ptr %next.gep1358, align 8, !tbaa !169, !alias.scope !561, !noalias !562
  store <2 x i64> %wide.load1361, ptr %i.hq, align 8, !tbaa !169, !alias.scope !561, !noalias !562
  %45 = getelementptr i8, ptr %next.gep1359, i64 16
  store <2 x ptr> splat (ptr null), ptr %next.gep1359, align 8, !tbaa !169, !alias.scope !560
  store <2 x ptr> splat (ptr null), ptr %45, align 8, !tbaa !169, !alias.scope !560
  %index.next1362 = add nuw i64 %index1357, 4     ; 2 uses
  %i.hr = icmp eq i64 %index.next1362, %n.vec1355
  br i1 %i.hr, label %middle.block1363, label %vector.body1356, !llvm.loop !445

middle.block1363:                                 ; preds = %vector.body1356
  %cmp.n1364 = icmp eq i64 %i.hg, %n.vec1355
  br i1 %cmp.n1364, label %_ZNSt6vectorISt10unique_ptrIN4LIEF2PE9AttributeESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit22.i150, label %.lr.ph.i.i.i.i139.preheader1553

.lr.ph.i.i.i.i139.preheader1553:                  ; preds = %vector.memcheck1350, %.lr.ph.i.i.i.i139.preheader, %middle.block1363
  %.012.i.i.i.i140.ph = phi ptr [ %i.ha, %vector.memcheck1350 ], [ %i.ha, %.lr.ph.i.i.i.i139.preheader ], [ %i.hm, %middle.block1363 ]
  %.0911.i.i.i.i141.ph = phi ptr [ %.sroa.0567.1, %vector.memcheck1350 ], [ %.sroa.0567.1, %.lr.ph.i.i.i.i139.preheader ], [ %i.hn, %middle.block1363 ]
  br label %.lr.ph.i.i.i.i139

.lr.ph.i.i.i.i139:                                ; preds = %.lr.ph.i.i.i.i139.preheader1553, %.lr.ph.i.i.i.i139
  %.012.i.i.i.i140 = phi ptr [ %i.hu, %.lr.ph.i.i.i.i139 ], [ %.012.i.i.i.i140.ph, %.lr.ph.i.i.i.i139.preheader1553 ] ; 2 uses
  %.0911.i.i.i.i141 = phi ptr [ %i.ht, %.lr.ph.i.i.i.i139 ], [ %.0911.i.i.i.i141.ph, %.lr.ph.i.i.i.i139.preheader1553 ] ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !558)
  call void @llvm.experimental.noalias.scope.decl(metadata !559)
  %i.hs = load i64, ptr %.0911.i.i.i.i141, align 8, !tbaa !169, !alias.scope !559
  store i64 %i.hs, ptr %.012.i.i.i.i140, align 8, !tbaa !169, !alias.scope !558
  store ptr null, ptr %.0911.i.i.i.i141, align 8, !tbaa !169, !alias.scope !559
  %i.ht = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i141, i64 8 ; 2 uses
  %i.hu = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i140, i64 8 ; 2 uses
  %.not.i.i.i.i142 = icmp eq ptr %i.ht, %.sroa.30.1
  br i1 %.not.i.i.i.i142, label %_ZNSt6vectorISt10unique_ptrIN4LIEF2PE9AttributeESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit22.i150, label %.lr.ph.i.i.i.i139, !llvm.loop !446

_ZNSt6vectorISt10unique_ptrIN4LIEF2PE9AttributeESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit22.i150: ; preds = %.lr.ph.i.i.i.i139, %middle.block1363, %_ZNKSt6vectorISt10unique_ptrIN4LIEF2PE9AttributeESt14default_deleteIS3_EESaIS6_EE12_M_check_lenEmPKc.exit.i135
  %.0.lcssa.i.i.i.i144 = phi ptr [ %i.ha, %_ZNKSt6vectorISt10unique_ptrIN4LIEF2PE9AttributeESt14default_deleteIS3_EESaIS6_EE12_M_check_lenEmPKc.exit.i135 ], [ %i.hm, %middle.block1363 ], [ %i.hu, %.lr.ph.i.i.i.i139 ]
  %.not.i23.i152 = icmp eq ptr %.sroa.0567.1, null
  br i1 %.not.i23.i152, label %_ZNSt6vectorISt10unique_ptrIN4LIEF2PE9AttributeESt14default_deleteIS3_EESaIS6_EE17_M_realloc_insertIJS6_EEEvN9__gnu_cxx17__normal_iteratorIPS6_S8_EEDpOT_.exit153, label %bb.x

bb.x:                                             ; preds = %_ZNSt6vectorISt10unique_ptrIN4LIEF2PE9AttributeESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit22.i150
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0567.1, i64 noundef %i.gs) #26
  br label %_ZNSt6vectorISt10unique_ptrIN4LIEF2PE9AttributeESt14default_deleteIS3_EESaIS6_EE17_M_realloc_insertIJS6_EEEvN9__gnu_cxx17__normal_iteratorIPS6_S8_EEDpOT_.exit153

_ZNSt6vectorISt10unique_ptrIN4LIEF2PE9AttributeESt14default_deleteIS3_EESaIS6_EE17_M_realloc_insertIJS6_EEEvN9__gnu_cxx17__normal_iteratorIPS6_S8_EEDpOT_.exit153: ; preds = %_ZNSt6vectorISt10unique_ptrIN4LIEF2PE9AttributeESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit22.i150, %bb.x
  %i.hv = getelementptr inbounds nuw [8 x i8], ptr %i.ha, i64 %i.gy
  br label %_ZNSt10unique_ptrIN4LIEF2PE13SpcSpOpusInfoESt14default_deleteIS2_EED2Ev.exit

_ZNSt10unique_ptrIN4LIEF2PE13SpcSpOpusInfoESt14default_deleteIS2_EED2Ev.exit: ; preds = %bb.u, %_ZNSt6vectorISt10unique_ptrIN4LIEF2PE9AttributeESt14default_deleteIS3_EESaIS6_EE17_M_realloc_insertIJS6_EEEvN9__gnu_cxx17__normal_iteratorIPS6_S8_EEDpOT_.exit153
  %.sroa.0567.3 = phi ptr [ %i.ha, %_ZNSt6vectorISt10unique_ptrIN4LIEF2PE9AttributeESt14default_deleteIS3_EESaIS6_EE17_M_realloc_insertIJS6_EEEvN9__gnu_cxx17__normal_iteratorIPS6_S8_EEDpOT_.exit153 ], [ %.sroa.0567.1, %bb.u ]
  %.0.lcssa.i.i.i.i144.pn = phi ptr [ %.0.lcssa.i.i.i.i144, %_ZNSt6vectorISt10unique_ptrIN4LIEF2PE9AttributeESt14default_deleteIS3_EESaIS6_EE17_M_realloc_insertIJS6_EEEvN9__gnu_cxx17__normal_iteratorIPS6_S8_EEDpOT_.exit153 ], [ %.sroa.30.1, %bb.u ]
  %.sroa.75.3 = phi ptr [ %i.hv, %_ZNSt6vectorISt10unique_ptrIN4LIEF2PE9AttributeESt14default_deleteIS3_EESaIS6_EE17_M_realloc_insertIJS6_EEEvN9__gnu_cxx17__normal_iteratorIPS6_S8_EEDpOT_.exit153 ], [ %.sroa.75.1, %bb.u ]
  %.sroa.30.3 = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i144.pn, i64 8
  %i.hw = load ptr, ptr %i.ah, align 8, !tbaa !99 ; 2 uses
  %i.hx = icmp eq ptr %i.hw, %i.aj
  br i1 %i.hx, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i43

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i43: ; preds = %_ZNSt10unique_ptrIN4LIEF2PE13SpcSpOpusInfoESt14default_deleteIS2_EED2Ev.exit
  %i.hy = load i64, ptr %i.aj, align 8, !tbaa !93
  %i.hz = add i64 %i.hy, 1
  call void @_ZdlPvm(ptr noundef %i.hw, i64 noundef %i.hz) #26
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i: ; preds = %_ZNSt10unique_ptrIN4LIEF2PE13SpcSpOpusInfoESt14default_deleteIS2_EED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i43
  %i.ia = load ptr, ptr %35, align 8, !tbaa !99   ; 2 uses
  %i.ib = icmp eq ptr %i.ia, %i.ad
  br i1 %i.ib, label %_ZN4LIEF2PE15SignatureParser13SpcSpOpusInfoD2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i
  %i.ic = load i64, ptr %i.ad, align 8, !tbaa !93
  %i.id = add i64 %i.ic, 1
  call void @_ZdlPvm(ptr noundef %i.ia, i64 noundef %i.id) #26
  br label %_ZN4LIEF2PE15SignatureParser13SpcSpOpusInfoD2Ev.exit

_ZN4LIEF2PE15SignatureParser13SpcSpOpusInfoD2Ev.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i
  call void @llvm.lifetime.end.p0(ptr nonnull %35) #23
  br label %bb.y

bb.y:                                             ; preds = %_ZN4LIEF2PE15SignatureParser13SpcSpOpusInfoD2Ev.exit, %bb.n
  %.sroa.0567.4 = phi ptr [ %.sroa.0567.3, %_ZN4LIEF2PE15SignatureParser13SpcSpOpusInfoD2Ev.exit ], [ %.sroa.0567.1, %bb.n ]
  %.sroa.30.4 = phi ptr [ %.sroa.30.3, %_ZN4LIEF2PE15SignatureParser13SpcSpOpusInfoD2Ev.exit ], [ %.sroa.30.1, %bb.n ]
  %.sroa.75.4 = phi ptr [ %.sroa.75.3, %_ZN4LIEF2PE15SignatureParser13SpcSpOpusInfoD2Ev.exit ], [ %.sroa.75.1, %bb.n ]
  %i.ie = load i8, ptr %i.ac, align 8, !tbaa !181, !range !85, !noundef !86
  %i.if = trunc nuw i8 %i.ie to i1
  br i1 %i.if, label %bb.z, label %_ZN2tl6detail21expected_storage_baseIN4LIEF2PE15SignatureParser13SpcSpOpusInfoE11lief_errorsLb0ELb1EED2Ev.exit

bb.z:                                             ; preds = %bb.y
  %i.ig = load ptr, ptr %i.ai, align 8, !tbaa !99 ; 2 uses
  %i.ih = icmp eq ptr %i.ig, %i.ak
  br i1 %i.ih, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %bb.z
  %i.ii = load i64, ptr %i.ak, align 8, !tbaa !93
  %i.ij = add i64 %i.ii, 1
  call void @_ZdlPvm(ptr noundef %i.ig, i64 noundef %i.ij) #26
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i: ; preds = %bb.z, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i
  %i.ik = load ptr, ptr %34, align 8, !tbaa !99   ; 2 uses
  %i.il = icmp eq ptr %i.ik, %i.ae
  br i1 %i.il, label %_ZN2tl6detail21expected_storage_baseIN4LIEF2PE15SignatureParser13SpcSpOpusInfoE11lief_errorsLb0ELb1EED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i
  %i.im = load i64, ptr %i.ae, align 8, !tbaa !93
  %i.in = add i64 %i.im, 1
  call void @_ZdlPvm(ptr noundef %i.ik, i64 noundef %i.in) #26
  br label %_ZN2tl6detail21expected_storage_baseIN4LIEF2PE15SignatureParser13SpcSpOpusInfoE11lief_errorsLb0ELb1EED2Ev.exit

_ZN2tl6detail21expected_storage_baseIN4LIEF2PE15SignatureParser13SpcSpOpusInfoE11lief_errorsLb0ELb1EED2Ev.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i, %bb.y, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %34) #23
  br label %_ZNSt10unique_ptrIN4LIEF2PE21PKCS9AtSequenceNumberESt14default_deleteIS2_EED2Ev.exit

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit45: ; preds = %_ZNR2tl8expectedINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE11lief_errorsE5valueIS6_TnPNSt9enable_ifIXntsr3std7is_voidIT_EE5valueEvE4typeELPv0EEERSB_v.exit32
  %.pre350 = load ptr, ptr %31, align 8, !tbaa !99 ; 6 uses
  %i.io = load i128, ptr %.pre350, align 1
  %i.ip = xor i128 %i.io, 61399908245176969875065496016400887345
  %i.iq = getelementptr i8, ptr %.pre350, i64 5
  %i.ir = load i128, ptr %i.iq, align 1
  %i.is = xor i128 %i.ir, 65372055512178320126677030288478843182
  %i.it = or i128 %i.ip, %i.is
  %i.iu = icmp ne i128 %i.it, 0
  %i.iv = zext i1 %i.iu to i32
  %i.iw = icmp eq i32 %i.iv, 0
  br i1 %i.iw, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit45.thread, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit60

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit45.thread: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit45
  call void @llvm.lifetime.start.p0(ptr nonnull %36) #23
  call void @_ZN4LIEF2PE15SignatureParser21parse_ms_counter_signERNS_12BinaryStreamE(ptr dead_on_unwind nonnull writable sret(%"class.LIEF::result.373") align 8 %36, ptr noundef nonnull align 8 dereferenceable(24) %32)
  %i.ix = load i8, ptr %i.ab, align 8, !tbaa !177, !range !85, !noundef !86
  %i.iy = trunc nuw i8 %i.ix to i1
  br i1 %i.iy, label %bb.aa, label %_ZNSt6vectorISt10unique_ptrIN4LIEF2PE9AttributeESt14default_deleteIS3_EESaIS6_EE9push_backEOS6_.exit47

bb.aa:                                            ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit45.thread
  %.not.i.i46 = icmp eq ptr %.sroa.30.1, %.sroa.75.1
  br i1 %.not.i.i46, label %bb.ab, label %.thread

.thread:                                          ; preds = %bb.aa
  %i.iz = load i64, ptr %36, align 8, !tbaa !169
  store i64 %i.iz, ptr %.sroa.30.1, align 8, !tbaa !169
  %i.ja = getelementptr inbounds nuw i8, ptr %.sroa.30.1, i64 8
  br label %_ZN2tl6detail21expected_storage_baseISt10unique_ptrIN4LIEF2PE9AttributeESt14default_deleteIS5_EE11lief_errorsLb0ELb1EED2Ev.exit50

bb.ab:                                            ; preds = %bb.aa
  %i.jb = ptrtoint ptr %.sroa.30.1 to i64
  %i.jc = ptrtoint ptr %.sroa.0567.1 to i64
  %i.jd = sub i64 %i.jb, %i.jc                    ; 4 uses
  %i.je = icmp eq i64 %i.jd, 9223372036854775800
  br i1 %i.je, label %bb.ac, label %_ZNKSt6vectorISt10unique_ptrIN4LIEF2PE9AttributeESt14default_deleteIS3_EESaIS6_EE12_M_check_lenEmPKc.exit.i154

bb.ac:                                            ; preds = %bb.ab
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.197) #24
  unreachable

_ZNKSt6vectorISt10unique_ptrIN4LIEF2PE9AttributeESt14default_deleteIS3_EESaIS6_EE12_M_check_lenEmPKc.exit.i154: ; preds = %bb.ab
  %i.jf = ashr exact i64 %i.jd, 3                 ; 3 uses
  %.sroa.speculated.i.i155 = call i64 @llvm.umax.i64(i64 %i.jf, i64 1)
  %i.jg = add nsw i64 %.sroa.speculated.i.i155, %i.jf ; 2 uses
  %i.jh = icmp ult i64 %i.jg, %i.jf
  %i.ji = call i64 @llvm.umin.i64(i64 %i.jg, i64 1152921504606846975)
  %i.jj = select i1 %i.jh, i64 1152921504606846975, i64 %i.ji ; 3 uses
  %.not.i.i156 = icmp ne i64 %i.jj, 0
  call void @llvm.assume(i1 %.not.i.i156)
  %i.jk = shl nuw nsw i64 %i.jj, 3
  %i.jl = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.jk) #25 ; 10 uses
  %i.jm = getelementptr inbounds nuw i8, ptr %i.jl, i64 %i.jd
  %i.jn = load i64, ptr %36, align 8, !tbaa !169
  store i64 %i.jn, ptr %i.jm, align 8, !tbaa !169
  store ptr null, ptr %36, align 8, !tbaa !169
  %.not10.i.i.i.i157 = icmp eq ptr %.sroa.0567.1, %.sroa.30.1
  br i1 %.not10.i.i.i.i157, label %_ZNSt6vectorISt10unique_ptrIN4LIEF2PE9AttributeESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit22.i169, label %.lr.ph.i.i.i.i158.preheader

.lr.ph.i.i.i.i158.preheader:                      ; preds = %_ZNKSt6vectorISt10unique_ptrIN4LIEF2PE9AttributeESt14default_deleteIS3_EESaIS6_EE12_M_check_lenEmPKc.exit.i154
  %i.jo = add i64 %.sroa.30.11232, -8
  %i.jp = sub i64 %i.jo, %.sroa.0567.11233        ; 3 uses
  %i.jq = lshr i64 %i.jp, 3
  %i.jr = add nuw nsw i64 %i.jq, 1                ; 2 uses
  %min.iters.check1401 = icmp ult i64 %i.jp, 56
  br i1 %min.iters.check1401, label %.lr.ph.i.i.i.i158.preheader1555, label %vector.memcheck1402

vector.memcheck1402:                              ; preds = %.lr.ph.i.i.i.i158.preheader
  %i.js = and i64 %i.jp, -8
  %i.jt = add i64 %i.js, 8                        ; 2 uses
  %i.ju = getelementptr i8, ptr %i.jl, i64 %i.jt
  %i.jv = getelementptr i8, ptr %.sroa.0567.1, i64 %i.jt
  %bound01403 = icmp ult ptr %i.jl, %i.jv
  %bound11404 = icmp ult ptr %.sroa.0567.1, %i.ju
  %found.conflict1405 = and i1 %bound01403, %bound11404
  br i1 %found.conflict1405, label %.lr.ph.i.i.i.i158.preheader1555, label %vector.ph1406

vector.ph1406:                                    ; preds = %vector.memcheck1402
  %n.vec1407 = and i64 %i.jr, 4611686018427387900 ; 3 uses
  %i.jw = shl i64 %n.vec1407, 3                   ; 2 uses
  %i.jx = getelementptr i8, ptr %i.jl, i64 %i.jw  ; 2 uses
  %i.jy = getelementptr i8, ptr %.sroa.0567.1, i64 %i.jw
  br label %vector.body1408

vector.body1408:                                  ; preds = %vector.body1408, %vector.ph1406
  %index1409 = phi i64 [ 0, %vector.ph1406 ], [ %index.next1414, %vector.body1408 ] ; 2 uses
  %i.jz = shl i64 %index1409, 3                   ; 2 uses
  %next.gep1410 = getelementptr i8, ptr %i.jl, i64 %i.jz ; 2 uses
  %next.gep1411 = getelementptr i8, ptr %.sroa.0567.1, i64 %i.jz ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !563)
  call void @llvm.experimental.noalias.scope.decl(metadata !564)
  %i.ka = getelementptr i8, ptr %next.gep1411, i64 16
  %wide.load1412 = load <2 x i64>, ptr %next.gep1411, align 8, !tbaa !169, !alias.scope !565
  %wide.load1413 = load <2 x i64>, ptr %i.ka, align 8, !tbaa !169, !alias.scope !565
  %i.kb = getelementptr i8, ptr %next.gep1410, i64 16
  store <2 x i64> %wide.load1412, ptr %next.gep1410, align 8, !tbaa !169, !alias.scope !566, !noalias !567
  store <2 x i64> %wide.load1413, ptr %i.kb, align 8, !tbaa !169, !alias.scope !566, !noalias !567
  %46 = getelementptr i8, ptr %next.gep1411, i64 16
  store <2 x ptr> splat (ptr null), ptr %next.gep1411, align 8, !tbaa !169, !alias.scope !565
  store <2 x ptr> splat (ptr null), ptr %46, align 8, !tbaa !169, !alias.scope !565
  %index.next1414 = add nuw i64 %index1409, 4     ; 2 uses
  %i.kc = icmp eq i64 %index.next1414, %n.vec1407
  br i1 %i.kc, label %middle.block1415, label %vector.body1408, !llvm.loop !453

middle.block1415:                                 ; preds = %vector.body1408
  %cmp.n1416 = icmp eq i64 %i.jr, %n.vec1407
  br i1 %cmp.n1416, label %_ZNSt6vectorISt10unique_ptrIN4LIEF2PE9AttributeESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit22.i169, label %.lr.ph.i.i.i.i158.preheader1555

.lr.ph.i.i.i.i158.preheader1555:                  ; preds = %vector.memcheck1402, %.lr.ph.i.i.i.i158.preheader, %middle.block1415
  %.012.i.i.i.i159.ph = phi ptr [ %i.jl, %vector.memcheck1402 ], [ %i.jl, %.lr.ph.i.i.i.i158.preheader ], [ %i.jx, %middle.block1415 ]
  %.0911.i.i.i.i160.ph = phi ptr [ %.sroa.0567.1, %vector.memcheck1402 ], [ %.sroa.0567.1, %.lr.ph.i.i.i.i158.preheader ], [ %i.jy, %middle.block1415 ]
  br label %.lr.ph.i.i.i.i158

.lr.ph.i.i.i.i158:                                ; preds = %.lr.ph.i.i.i.i158.preheader1555, %.lr.ph.i.i.i.i158
  %.012.i.i.i.i159 = phi ptr [ %i.kf, %.lr.ph.i.i.i.i158 ], [ %.012.i.i.i.i159.ph, %.lr.ph.i.i.i.i158.preheader1555 ] ; 2 uses
  %.0911.i.i.i.i160 = phi ptr [ %i.ke, %.lr.ph.i.i.i.i158 ], [ %.0911.i.i.i.i160.ph, %.lr.ph.i.i.i.i158.preheader1555 ] ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !563)
  call void @llvm.experimental.noalias.scope.decl(metadata !564)
  %i.kd = load i64, ptr %.0911.i.i.i.i160, align 8, !tbaa !169, !alias.scope !564
  store i64 %i.kd, ptr %.012.i.i.i.i159, align 8, !tbaa !169, !alias.scope !563
  store ptr null, ptr %.0911.i.i.i.i160, align 8, !tbaa !169, !alias.scope !564
  %i.ke = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i160, i64 8 ; 2 uses
  %i.kf = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i159, i64 8 ; 2 uses
  %.not.i.i.i.i161 = icmp eq ptr %i.ke, %.sroa.30.1
  br i1 %.not.i.i.i.i161, label %_ZNSt6vectorISt10unique_ptrIN4LIEF2PE9AttributeESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit22.i169, label %.lr.ph.i.i.i.i158, !llvm.loop !454

_ZNSt6vectorISt10unique_ptrIN4LIEF2PE9AttributeESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit22.i169: ; preds = %.lr.ph.i.i.i.i158, %middle.block1415, %_ZNKSt6vectorISt10unique_ptrIN4LIEF2PE9AttributeESt14default_deleteIS3_EESaIS6_EE12_M_check_lenEmPKc.exit.i154
  %.0.lcssa.i.i.i.i163 = phi ptr [ %i.jl, %_ZNKSt6vectorISt10unique_ptrIN4LIEF2PE9AttributeESt14default_deleteIS3_EESaIS6_EE12_M_check_lenEmPKc.exit.i154 ], [ %i.jx, %middle.block1415 ], [ %i.kf, %.lr.ph.i.i.i.i158 ]
  %i.kg = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i163, i64 8
  %.not.i23.i171 = icmp eq ptr %.sroa.0567.1, null
  br i1 %.not.i23.i171, label %bb.ae, label %bb.ad

bb.ad:                                            ; preds = %_ZNSt6vectorISt10unique_ptrIN4LIEF2PE9AttributeESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit22.i169
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0567.1, i64 noundef %i.jd) #26
  br label %bb.ae

_ZNSt6vectorISt10unique_ptrIN4LIEF2PE9AttributeESt14default_deleteIS3_EESaIS6_EE9push_backEOS6_.exit47: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit45.thread
  %i.kh = call noundef nonnull align 8 dereferenceable(16) ptr @_ZN4LIEF7logging6Logger8instanceEPKc(ptr noundef nonnull @.str.299) #23
  %i.ki = load ptr, ptr %i.kh, align 8, !tbaa !62
  call void @llvm.lifetime.start.p0(ptr nonnull %21)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %21, i8 0, i64 24, i1 false)
  call void @_ZN6spdlog6logger4log_IJEEEvNS_10source_locENS_5level10level_enumEN3fmt3v1217basic_string_viewIcEEDpOT_(ptr noundef nonnull align 8 dereferenceable(208) %i.ki, ptr noundef nonnull byval(%"struct.spdlog::source_loc") align 8 %21, i32 noundef 2, ptr nonnull @.str.78, i64 41)
  call void @llvm.lifetime.end.p0(ptr nonnull %21)
  br label %_ZN2tl6detail21expected_storage_baseISt10unique_ptrIN4LIEF2PE9AttributeESt14default_deleteIS5_EE11lief_errorsLb0ELb1EED2Ev.exit50

bb.ae:                                            ; preds = %bb.ad, %_ZNSt6vectorISt10unique_ptrIN4LIEF2PE9AttributeESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit22.i169
  %i.kj = getelementptr inbounds nuw [8 x i8], ptr %i.jl, i64 %i.jj
  br label %_ZN2tl6detail21expected_storage_baseISt10unique_ptrIN4LIEF2PE9AttributeESt14default_deleteIS5_EE11lief_errorsLb0ELb1EED2Ev.exit50

_ZN2tl6detail21expected_storage_baseISt10unique_ptrIN4LIEF2PE9AttributeESt14default_deleteIS5_EE11lief_errorsLb0ELb1EED2Ev.exit50: ; preds = %bb.ae, %.thread, %_ZNSt6vectorISt10unique_ptrIN4LIEF2PE9AttributeESt14default_deleteIS3_EESaIS6_EE9push_backEOS6_.exit47
  %.sroa.0567.5 = phi ptr [ %i.jl, %bb.ae ], [ %.sroa.0567.1, %.thread ], [ %.sroa.0567.1, %_ZNSt6vectorISt10unique_ptrIN4LIEF2PE9AttributeESt14default_deleteIS3_EESaIS6_EE9push_backEOS6_.exit47 ]
  %.sroa.30.5 = phi ptr [ %i.kg, %bb.ae ], [ %i.ja, %.thread ], [ %.sroa.30.1, %_ZNSt6vectorISt10unique_ptrIN4LIEF2PE9AttributeESt14default_deleteIS3_EESaIS6_EE9push_backEOS6_.exit47 ]
  %.sroa.75.5 = phi ptr [ %i.kj, %bb.ae ], [ %.sroa.75.1, %.thread ], [ %.sroa.75.1, %_ZNSt6vectorISt10unique_ptrIN4LIEF2PE9AttributeESt14default_deleteIS3_EESaIS6_EE9push_backEOS6_.exit47 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %36) #23
  br label %_ZNSt10unique_ptrIN4LIEF2PE21PKCS9AtSequenceNumberESt14default_deleteIS2_EED2Ev.exit

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit52: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit
  %i.kk = load i128, ptr %i.cg, align 1
  %i.kl = xor i128 %i.kk, 65372177682629931770666641137721290289
  %i.km = getelementptr i8, ptr %i.cg, i64 16
  %i.kn = load i32, ptr %i.km, align 1
  %i.ko = zext i32 %i.kn to i128
  %i.kp = xor i128 %i.ko, 908998958
  %i.kq = or i128 %i.kl, %i.kp
  %i.kr = icmp ne i128 %i.kq, 0
  %i.ks = zext i1 %i.kr to i32
  %i.kt = icmp eq i32 %i.ks, 0
  br i1 %i.kt, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit52.thread, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit68

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit52.thread: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit52
  call void @llvm.lifetime.start.p0(ptr nonnull %37) #23
  call void @_ZN4LIEF2PE15SignatureParser24parse_pkcs9_counter_signERNS_12BinaryStreamE(ptr dead_on_unwind nonnull writable sret(%"class.LIEF::result.181") align 8 %37, ptr noundef nonnull align 8 dereferenceable(24) %32)
  %i.ku = load i8, ptr %i.y, align 8, !tbaa !137, !range !85, !noundef !86
  %i.kv = trunc nuw i8 %i.ku to i1
  br i1 %i.kv, label %_ZNR2tl8expectedISt6vectorIN4LIEF2PE10SignerInfoESaIS4_EE11lief_errorsE5valueIS6_TnPNSt9enable_ifIXntsr3std7is_voidIT_EE5valueEvE4typeELPv0EEERSB_v.exit, label %_ZNSt10unique_ptrIN4LIEF2PE21PKCS9CounterSignatureESt14default_deleteIS2_EED2Ev.exit

_ZNR2tl8expectedISt6vectorIN4LIEF2PE10SignerInfoESaIS4_EE11lief_errorsE5valueIS6_TnPNSt9enable_ifIXntsr3std7is_voidIT_EE5valueEvE4typeELPv0EEERSB_v.exit: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit52.thread
  %i.kw = load ptr, ptr %37, align 8, !tbaa !138  ; 6 uses
  %i.kx = load ptr, ptr %i.z, align 8, !tbaa !138 ; 4 uses
  %i.ky = icmp eq ptr %i.kw, %i.kx
  br i1 %i.ky, label %bb.am, label %bb.af

bb.af:                                            ; preds = %_ZNR2tl8expectedISt6vectorIN4LIEF2PE10SignerInfoESaIS4_EE11lief_errorsE5valueIS6_TnPNSt9enable_ifIXntsr3std7is_voidIT_EE5valueEvE4typeELPv0EEERSB_v.exit
  %i.kz = ptrtoint ptr %i.kx to i64
  %i.la = ptrtoint ptr %i.kw to i64
  %i.lb = sub i64 %i.kz, %i.la
  %i.lc = sdiv exact i64 %i.lb, 184
  %i.ld = icmp ugt i64 %i.lc, 1
  br i1 %i.ld, label %bb.ag, label %bb.ah

bb.ag:                                            ; preds = %bb.af
  %i.le = call noundef nonnull align 8 dereferenceable(16) ptr @_ZN4LIEF7logging6Logger8instanceEPKc(ptr noundef nonnull @.str.299) #23
  %i.lf = load ptr, ptr %i.le, align 8, !tbaa !62
  call void @llvm.lifetime.start.p0(ptr nonnull %18)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %18, i8 0, i64 24, i1 false)
  call void @_ZN6spdlog6logger4log_IJEEEvNS_10source_locENS_5level10level_enumEN3fmt3v1217basic_string_viewIcEEDpOT_(ptr noundef nonnull align 8 dereferenceable(208) %i.lf, ptr noundef nonnull byval(%"struct.spdlog::source_loc") align 8 %18, i32 noundef 2, ptr nonnull @.str.82, i64 64)
  call void @llvm.lifetime.end.p0(ptr nonnull %18)
  br label %.lr.ph.i.i.i.i.preheader

bb.ah:                                            ; preds = %bb.af
  %i.lg = getelementptr inbounds i8, ptr %i.kx, i64 -184
  call void @llvm.lifetime.start.p0(ptr nonnull %17)
  %i.lh = call noalias noundef nonnull dereferenceable(200) ptr @_Znwm(i64 noundef 200) #25, !noalias !568 ; 6 uses
  call void @_ZN4LIEF2PE10SignerInfoC1ERKS1_(ptr noundef nonnull align 8 dereferenceable(184) %17, ptr noundef nonnull align 8 dereferenceable(184) %i.lg) #23, !noalias !568
  call void @_ZN4LIEF6ObjectC2Ev(ptr noundef nonnull align 8 dereferenceable(200) %i.lh) #23, !noalias !568
  %i.li = getelementptr inbounds nuw i8, ptr %i.lh, i64 8
  store i32 11, ptr %i.li, align 8, !tbaa !184, !noalias !568
  store ptr getelementptr inbounds nuw inrange(-16, 64) (i8, ptr @_ZTVN4LIEF2PE21PKCS9CounterSignatureE, i64 16), ptr %i.lh, align 8, !tbaa !53, !noalias !568
  %i.lj = getelementptr inbounds nuw i8, ptr %i.lh, i64 16
  call void @_ZN4LIEF2PE10SignerInfoC1EOS1_(ptr noundef nonnull align 8 dereferenceable(184) %i.lj, ptr noundef nonnull align 8 dereferenceable(184) %17) #23, !noalias !568
  call void @_ZN4LIEF2PE10SignerInfoD1Ev(ptr noundef nonnull align 8 dead_on_return(184) dereferenceable(184) %17) #23, !noalias !568
  call void @llvm.lifetime.end.p0(ptr nonnull %17)
  %.not.i.i53 = icmp eq ptr %.sroa.30.1, %.sroa.75.1
  br i1 %.not.i.i53, label %bb.aj, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  %i.lk = ptrtoint ptr %i.lh to i64
  store i64 %i.lk, ptr %.sroa.30.1, align 8, !tbaa !169
  %i.ll = getelementptr inbounds nuw i8, ptr %.sroa.30.1, i64 8
  br label %.lr.ph.i.i.i.i.preheader

bb.aj:                                            ; preds = %bb.ah
  %i.lm = ptrtoint ptr %.sroa.30.1 to i64
  %i.ln = ptrtoint ptr %.sroa.0567.1 to i64
  %i.lo = sub i64 %i.lm, %i.ln                    ; 4 uses
  %i.lp = icmp eq i64 %i.lo, 9223372036854775800
  br i1 %i.lp, label %bb.ak, label %_ZNKSt6vectorISt10unique_ptrIN4LIEF2PE9AttributeESt14default_deleteIS3_EESaIS6_EE12_M_check_lenEmPKc.exit.i173

bb.ak:                                            ; preds = %bb.aj
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.197) #24
  unreachable

_ZNKSt6vectorISt10unique_ptrIN4LIEF2PE9AttributeESt14default_deleteIS3_EESaIS6_EE12_M_check_lenEmPKc.exit.i173: ; preds = %bb.aj
  %i.lq = ashr exact i64 %i.lo, 3                 ; 3 uses
  %.sroa.speculated.i.i174 = call i64 @llvm.umax.i64(i64 %i.lq, i64 1)
  %i.lr = add nsw i64 %.sroa.speculated.i.i174, %i.lq ; 2 uses
  %i.ls = icmp ult i64 %i.lr, %i.lq
  %i.lt = call i64 @llvm.umin.i64(i64 %i.lr, i64 1152921504606846975)
  %i.lu = select i1 %i.ls, i64 1152921504606846975, i64 %i.lt ; 3 uses
  %.not.i.i175 = icmp ne i64 %i.lu, 0
  call void @llvm.assume(i1 %.not.i.i175)
  %i.lv = shl nuw nsw i64 %i.lu, 3
  %i.lw = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.lv) #25 ; 10 uses
  %i.lx = getelementptr inbounds nuw i8, ptr %i.lw, i64 %i.lo
  %i.ly = ptrtoint ptr %i.lh to i64
  store i64 %i.ly, ptr %i.lx, align 8, !tbaa !169
  %.not10.i.i.i.i176 = icmp eq ptr %.sroa.0567.1, %.sroa.30.1
  br i1 %.not10.i.i.i.i176, label %_ZNSt6vectorISt10unique_ptrIN4LIEF2PE9AttributeESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit22.i188, label %.lr.ph.i.i.i.i177.preheader

.lr.ph.i.i.i.i177.preheader:                      ; preds = %_ZNKSt6vectorISt10unique_ptrIN4LIEF2PE9AttributeESt14default_deleteIS3_EESaIS6_EE12_M_check_lenEmPKc.exit.i173
  %i.lz = add i64 %.sroa.30.11232, -8
  %i.ma = sub i64 %i.lz, %.sroa.0567.11233        ; 3 uses
  %i.mb = lshr i64 %i.ma, 3
  %i.mc = add nuw nsw i64 %i.mb, 1                ; 2 uses
  %min.iters.check1271 = icmp ult i64 %i.ma, 56
  br i1 %min.iters.check1271, label %.lr.ph.i.i.i.i177.preheader1550, label %vector.memcheck1272

vector.memcheck1272:                              ; preds = %.lr.ph.i.i.i.i177.preheader
  %i.md = and i64 %i.ma, -8
  %i.me = add i64 %i.md, 8                        ; 2 uses
  %i.mf = getelementptr i8, ptr %i.lw, i64 %i.me
  %i.mg = getelementptr i8, ptr %.sroa.0567.1, i64 %i.me
  %bound01273 = icmp ult ptr %i.lw, %i.mg
  %bound11274 = icmp ult ptr %.sroa.0567.1, %i.mf
  %found.conflict1275 = and i1 %bound01273, %bound11274
  br i1 %found.conflict1275, label %.lr.ph.i.i.i.i177.preheader1550, label %vector.ph1276

vector.ph1276:                                    ; preds = %vector.memcheck1272
  %n.vec1277 = and i64 %i.mc, 4611686018427387900 ; 3 uses
  %i.mh = shl i64 %n.vec1277, 3                   ; 2 uses
  %i.mi = getelementptr i8, ptr %i.lw, i64 %i.mh  ; 2 uses
  %i.mj = getelementptr i8, ptr %.sroa.0567.1, i64 %i.mh
  br label %vector.body1278

vector.body1278:                                  ; preds = %vector.body1278, %vector.ph1276
  %index1279 = phi i64 [ 0, %vector.ph1276 ], [ %index.next1284, %vector.body1278 ] ; 2 uses
  %i.mk = shl i64 %index1279, 3                   ; 2 uses
  %next.gep1280 = getelementptr i8, ptr %i.lw, i64 %i.mk ; 2 uses
  %next.gep1281 = getelementptr i8, ptr %.sroa.0567.1, i64 %i.mk ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !569)
  call void @llvm.experimental.noalias.scope.decl(metadata !570)
  %i.ml = getelementptr i8, ptr %next.gep1281, i64 16
  %wide.load1282 = load <2 x i64>, ptr %next.gep1281, align 8, !tbaa !169, !alias.scope !571
  %wide.load1283 = load <2 x i64>, ptr %i.ml, align 8, !tbaa !169, !alias.scope !571
  %i.mm = getelementptr i8, ptr %next.gep1280, i64 16
  store <2 x i64> %wide.load1282, ptr %next.gep1280, align 8, !tbaa !169, !alias.scope !572, !noalias !573
  store <2 x i64> %wide.load1283, ptr %i.mm, align 8, !tbaa !169, !alias.scope !572, !noalias !573
  %47 = getelementptr i8, ptr %next.gep1281, i64 16
  store <2 x ptr> splat (ptr null), ptr %next.gep1281, align 8, !tbaa !169, !alias.scope !571
  store <2 x ptr> splat (ptr null), ptr %47, align 8, !tbaa !169, !alias.scope !571
  %index.next1284 = add nuw i64 %index1279, 4     ; 2 uses
  %i.mn = icmp eq i64 %index.next1284, %n.vec1277
  br i1 %i.mn, label %middle.block1285, label %vector.body1278, !llvm.loop !463

middle.block1285:                                 ; preds = %vector.body1278
  %cmp.n1286 = icmp eq i64 %i.mc, %n.vec1277
  br i1 %cmp.n1286, label %_ZNSt6vectorISt10unique_ptrIN4LIEF2PE9AttributeESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit22.i188, label %.lr.ph.i.i.i.i177.preheader1550

.lr.ph.i.i.i.i177.preheader1550:                  ; preds = %vector.memcheck1272, %.lr.ph.i.i.i.i177.preheader, %middle.block1285
  %.012.i.i.i.i178.ph = phi ptr [ %i.lw, %vector.memcheck1272 ], [ %i.lw, %.lr.ph.i.i.i.i177.preheader ], [ %i.mi, %middle.block1285 ]
  %.0911.i.i.i.i179.ph = phi ptr [ %.sroa.0567.1, %vector.memcheck1272 ], [ %.sroa.0567.1, %.lr.ph.i.i.i.i177.preheader ], [ %i.mj, %middle.block1285 ]
  br label %.lr.ph.i.i.i.i177

.lr.ph.i.i.i.i177:                                ; preds = %.lr.ph.i.i.i.i177.preheader1550, %.lr.ph.i.i.i.i177
  %.012.i.i.i.i178 = phi ptr [ %i.mq, %.lr.ph.i.i.i.i177 ], [ %.012.i.i.i.i178.ph, %.lr.ph.i.i.i.i177.preheader1550 ] ; 2 uses
  %.0911.i.i.i.i179 = phi ptr [ %i.mp, %.lr.ph.i.i.i.i177 ], [ %.0911.i.i.i.i179.ph, %.lr.ph.i.i.i.i177.preheader1550 ] ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !569)
  call void @llvm.experimental.noalias.scope.decl(metadata !570)
  %i.mo = load i64, ptr %.0911.i.i.i.i179, align 8, !tbaa !169, !alias.scope !570
  store i64 %i.mo, ptr %.012.i.i.i.i178, align 8, !tbaa !169, !alias.scope !569
  store ptr null, ptr %.0911.i.i.i.i179, align 8, !tbaa !169, !alias.scope !570
  %i.mp = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i179, i64 8 ; 2 uses
  %i.mq = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i178, i64 8 ; 2 uses
  %.not.i.i.i.i180 = icmp eq ptr %i.mp, %.sroa.30.1
  br i1 %.not.i.i.i.i180, label %_ZNSt6vectorISt10unique_ptrIN4LIEF2PE9AttributeESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit22.i188, label %.lr.ph.i.i.i.i177, !llvm.loop !464

_ZNSt6vectorISt10unique_ptrIN4LIEF2PE9AttributeESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit22.i188: ; preds = %.lr.ph.i.i.i.i177, %middle.block1285, %_ZNKSt6vectorISt10unique_ptrIN4LIEF2PE9AttributeESt14default_deleteIS3_EESaIS6_EE12_M_check_lenEmPKc.exit.i173
  %.0.lcssa.i.i.i.i182 = phi ptr [ %i.lw, %_ZNKSt6vectorISt10unique_ptrIN4LIEF2PE9AttributeESt14default_deleteIS3_EESaIS6_EE12_M_check_lenEmPKc.exit.i173 ], [ %i.mi, %middle.block1285 ], [ %i.mq, %.lr.ph.i.i.i.i177 ]
  %i.mr = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i182, i64 8
  %.not.i23.i190 = icmp eq ptr %.sroa.0567.1, null
  br i1 %.not.i23.i190, label %_ZNSt6vectorISt10unique_ptrIN4LIEF2PE9AttributeESt14default_deleteIS3_EESaIS6_EE17_M_realloc_insertIJS6_EEEvN9__gnu_cxx17__normal_iteratorIPS6_S8_EEDpOT_.exit191, label %bb.al

bb.al:                                            ; preds = %_ZNSt6vectorISt10unique_ptrIN4LIEF2PE9AttributeESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit22.i188
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0567.1, i64 noundef %i.lo) #26
  br label %_ZNSt6vectorISt10unique_ptrIN4LIEF2PE9AttributeESt14default_deleteIS3_EESaIS6_EE17_M_realloc_insertIJS6_EEEvN9__gnu_cxx17__normal_iteratorIPS6_S8_EEDpOT_.exit191

_ZNSt6vectorISt10unique_ptrIN4LIEF2PE9AttributeESt14default_deleteIS3_EESaIS6_EE17_M_realloc_insertIJS6_EEEvN9__gnu_cxx17__normal_iteratorIPS6_S8_EEDpOT_.exit191: ; preds = %_ZNSt6vectorISt10unique_ptrIN4LIEF2PE9AttributeESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit22.i188, %bb.al
  %i.ms = getelementptr inbounds nuw [8 x i8], ptr %i.lw, i64 %i.lu
  br label %.lr.ph.i.i.i.i.preheader

_ZNSt10unique_ptrIN4LIEF2PE21PKCS9CounterSignatureESt14default_deleteIS2_EED2Ev.exit: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit52.thread
  %i.mt = call noundef nonnull align 8 dereferenceable(16) ptr @_ZN4LIEF7logging6Logger8instanceEPKc(ptr noundef nonnull @.str.299) #23
  %i.mu = load ptr, ptr %i.mt, align 8, !tbaa !62
  call void @llvm.lifetime.start.p0(ptr nonnull %20)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %20, i8 0, i64 24, i1 false)
  call void @_ZN6spdlog6logger4log_IJEEEvNS_10source_locENS_5level10level_enumEN3fmt3v1217basic_string_viewIcEEDpOT_(ptr noundef nonnull align 8 dereferenceable(208) %i.mu, ptr noundef nonnull byval(%"struct.spdlog::source_loc") align 8 %20, i32 noundef 2, ptr nonnull @.str.80, i64 44)
  call void @llvm.lifetime.end.p0(ptr nonnull %20)
  br label %_ZN2tl6detail21expected_storage_baseISt6vectorIN4LIEF2PE10SignerInfoESaIS5_EE11lief_errorsLb0ELb1EED2Ev.exit

bb.am:                                            ; preds = %_ZNR2tl8expectedISt6vectorIN4LIEF2PE10SignerInfoESaIS4_EE11lief_errorsE5valueIS6_TnPNSt9enable_ifIXntsr3std7is_voidIT_EE5valueEvE4typeELPv0EEERSB_v.exit
  %i.mv = call noundef nonnull align 8 dereferenceable(16) ptr @_ZN4LIEF7logging6Logger8instanceEPKc(ptr noundef nonnull @.str.299) #23
  %i.mw = load ptr, ptr %i.mv, align 8, !tbaa !62
  call void @llvm.lifetime.start.p0(ptr nonnull %19)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %19, i8 0, i64 24, i1 false)
  call void @_ZN6spdlog6logger4log_IJEEEvNS_10source_locENS_5level10level_enumEN3fmt3v1217basic_string_viewIcEEDpOT_(ptr noundef nonnull align 8 dereferenceable(208) %i.mw, ptr noundef nonnull byval(%"struct.spdlog::source_loc") align 8 %19, i32 noundef 2, ptr nonnull @.str.81, i64 36)
  call void @llvm.lifetime.end.p0(ptr nonnull %19)
  br label %_ZSt8_DestroyIPN4LIEF2PE10SignerInfoEEvT_S4_.exit.i.i

.lr.ph.i.i.i.i.preheader:                         ; preds = %_ZNSt6vectorISt10unique_ptrIN4LIEF2PE9AttributeESt14default_deleteIS3_EESaIS6_EE17_M_realloc_insertIJS6_EEEvN9__gnu_cxx17__normal_iteratorIPS6_S8_EEDpOT_.exit191, %bb.ai, %bb.ag
  %.sroa.0567.6 = phi ptr [ %.sroa.0567.1, %bb.ag ], [ %i.lw, %_ZNSt6vectorISt10unique_ptrIN4LIEF2PE9AttributeESt14default_deleteIS3_EESaIS6_EE17_M_realloc_insertIJS6_EEEvN9__gnu_cxx17__normal_iteratorIPS6_S8_EEDpOT_.exit191 ], [ %.sroa.0567.1, %bb.ai ]
  %.sroa.30.6 = phi ptr [ %.sroa.30.1, %bb.ag ], [ %i.mr, %_ZNSt6vectorISt10unique_ptrIN4LIEF2PE9AttributeESt14default_deleteIS3_EESaIS6_EE17_M_realloc_insertIJS6_EEEvN9__gnu_cxx17__normal_iteratorIPS6_S8_EEDpOT_.exit191 ], [ %i.ll, %bb.ai ]
  %.sroa.75.6 = phi ptr [ %.sroa.75.1, %bb.ag ], [ %i.ms, %_ZNSt6vectorISt10unique_ptrIN4LIEF2PE9AttributeESt14default_deleteIS3_EESaIS6_EE17_M_realloc_insertIJS6_EEEvN9__gnu_cxx17__normal_iteratorIPS6_S8_EEDpOT_.exit191 ], [ %.sroa.75.1, %bb.ai ]
  br label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %.lr.ph.i.i.i.i.preheader, %.lr.ph.i.i.i.i
  %.05.i.i.i.i = phi ptr [ %i.na, %.lr.ph.i.i.i.i ], [ %i.kw, %.lr.ph.i.i.i.i.preheader ] ; 3 uses
  %i.mx = load ptr, ptr %.05.i.i.i.i, align 8, !tbaa !53
  %i.my = getelementptr inbounds nuw i8, ptr %i.mx, i64 16
  %i.mz = load ptr, ptr %i.my, align 8
  call void %i.mz(ptr noundef nonnull align 8 dead_on_return(184) dereferenceable(184) %.05.i.i.i.i) #23, !inline_history !7
  %i.na = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i, i64 184 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.na, %i.kx
  br i1 %.not.i.i.i.i, label %_ZSt8_DestroyIPN4LIEF2PE10SignerInfoEEvT_S4_.exit.i.i, label %.lr.ph.i.i.i.i, !llvm.loop !5

_ZSt8_DestroyIPN4LIEF2PE10SignerInfoEEvT_S4_.exit.i.i: ; preds = %.lr.ph.i.i.i.i, %bb.am
  %.sroa.0567.7 = phi ptr [ %.sroa.0567.1, %bb.am ], [ %.sroa.0567.6, %.lr.ph.i.i.i.i ] ; 2 uses
  %.sroa.30.7 = phi ptr [ %.sroa.30.1, %bb.am ], [ %.sroa.30.6, %.lr.ph.i.i.i.i ] ; 2 uses
  %.sroa.75.7 = phi ptr [ %.sroa.75.1, %bb.am ], [ %.sroa.75.6, %.lr.ph.i.i.i.i ] ; 2 uses
  %.not.i.i1.i.i = icmp eq ptr %i.kw, null
  br i1 %.not.i.i1.i.i, label %_ZN2tl6detail21expected_storage_baseISt6vectorIN4LIEF2PE10SignerInfoESaIS5_EE11lief_errorsLb0ELb1EED2Ev.exit, label %bb.an

bb.an:                                            ; preds = %_ZSt8_DestroyIPN4LIEF2PE10SignerInfoEEvT_S4_.exit.i.i
  %i.nb = load ptr, ptr %i.aa, align 8, !tbaa !171
  %i.nc = ptrtoint ptr %i.nb to i64
  %i.nd = ptrtoint ptr %i.kw to i64
  %i.ne = sub i64 %i.nc, %i.nd
  call void @_ZdlPvm(ptr noundef nonnull %i.kw, i64 noundef %i.ne) #26
  br label %_ZN2tl6detail21expected_storage_baseISt6vectorIN4LIEF2PE10SignerInfoESaIS5_EE11lief_errorsLb0ELb1EED2Ev.exit

_ZN2tl6detail21expected_storage_baseISt6vectorIN4LIEF2PE10SignerInfoESaIS5_EE11lief_errorsLb0ELb1EED2Ev.exit: ; preds = %_ZNSt10unique_ptrIN4LIEF2PE21PKCS9CounterSignatureESt14default_deleteIS2_EED2Ev.exit, %_ZSt8_DestroyIPN4LIEF2PE10SignerInfoEEvT_S4_.exit.i.i, %bb.an
  %.sroa.0567.8 = phi ptr [ %.sroa.0567.7, %_ZSt8_DestroyIPN4LIEF2PE10SignerInfoEEvT_S4_.exit.i.i ], [ %.sroa.0567.7, %bb.an ], [ %.sroa.0567.1, %_ZNSt10unique_ptrIN4LIEF2PE21PKCS9CounterSignatureESt14default_deleteIS2_EED2Ev.exit ]
  %.sroa.30.8 = phi ptr [ %.sroa.30.7, %_ZSt8_DestroyIPN4LIEF2PE10SignerInfoEEvT_S4_.exit.i.i ], [ %.sroa.30.7, %bb.an ], [ %.sroa.30.1, %_ZNSt10unique_ptrIN4LIEF2PE21PKCS9CounterSignatureESt14default_deleteIS2_EED2Ev.exit ]
  %.sroa.75.8 = phi ptr [ %.sroa.75.7, %_ZSt8_DestroyIPN4LIEF2PE10SignerInfoEEvT_S4_.exit.i.i ], [ %.sroa.75.7, %bb.an ], [ %.sroa.75.1, %_ZNSt10unique_ptrIN4LIEF2PE21PKCS9CounterSignatureESt14default_deleteIS2_EED2Ev.exit ]
  call void @llvm.lifetime.end.p0(ptr nonnull %37) #23
  br label %_ZNSt10unique_ptrIN4LIEF2PE21PKCS9AtSequenceNumberESt14default_deleteIS2_EED2Ev.exit

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit60: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit45
  %i.nf = load i128, ptr %.pre350, align 1
  %i.ng = xor i128 %i.nf, 61399908245176969875065496016400887345
  %i.nh = getelementptr i8, ptr %.pre350, i64 5
  %i.ni = load i128, ptr %i.nh, align 1
  %i.nj = xor i128 %i.ni, 65372075794278438768526109167005348142
  %i.nk = or i128 %i.ng, %i.nj
  %i.nl = icmp ne i128 %i.nk, 0
  %i.nm = zext i1 %i.nl to i32
  %i.nn = icmp eq i32 %i.nm, 0
  br i1 %i.nn, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit60.thread, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit116

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit60.thread: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit60
  call void @llvm.lifetime.start.p0(ptr nonnull %38) #23
  call void @_ZN4LIEF2PE15SignatureParser29parse_ms_spc_nested_signatureERNS_12BinaryStreamE(ptr dead_on_unwind nonnull writable sret(%"class.LIEF::result") align 8 %38, ptr noundef nonnull align 8 dereferenceable(24) %32)
  %i.no = load i8, ptr %i.x, align 8, !tbaa !68, !range !85, !noundef !86
  %i.np = trunc nuw i8 %i.no to i1
  br i1 %i.np, label %_ZNR2tl8expectedIN4LIEF2PE9SignatureE11lief_errorsE5valueIS3_TnPNSt9enable_ifIXntsr3std7is_voidIT_EE5valueEvE4typeELPv0EEERS8_v.exit, label %bb.ao

bb.ao:                                            ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit60.thread
  %i.nq = call noundef nonnull align 8 dereferenceable(16) ptr @_ZN4LIEF7logging6Logger8instanceEPKc(ptr noundef nonnull @.str.299) #23
  %i.nr = load ptr, ptr %i.nq, align 8, !tbaa !62
  call void @llvm.lifetime.start.p0(ptr nonnull %16)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %16, i8 0, i64 24, i1 false)
  call void @_ZN6spdlog6logger4log_IJEEEvNS_10source_locENS_5level10level_enumEN3fmt3v1217basic_string_viewIcEEDpOT_(ptr noundef nonnull align 8 dereferenceable(208) %i.nr, ptr noundef nonnull byval(%"struct.spdlog::source_loc") align 8 %16, i32 noundef 2, ptr nonnull @.str.84, i64 49)
  call void @llvm.lifetime.end.p0(ptr nonnull %16)
  br label %_ZNSt10unique_ptrIN4LIEF2PE20MsSpcNestedSignatureESt14default_deleteIS2_EED2Ev.exit

_ZNR2tl8expectedIN4LIEF2PE9SignatureE11lief_errorsE5valueIS3_TnPNSt9enable_ifIXntsr3std7is_voidIT_EE5valueEvE4typeELPv0EEERS8_v.exit: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit60.thread
  call void @llvm.lifetime.start.p0(ptr nonnull %15)
  %i.ns = call noalias noundef nonnull dereferenceable(136) ptr @_Znwm(i64 noundef 136) #25, !noalias !574 ; 6 uses
  call void @_ZN4LIEF2PE9SignatureC1EOS1_(ptr noundef nonnull align 8 dereferenceable(120) %15, ptr noundef nonnull align 8 dereferenceable(120) %38) #23, !noalias !574
  call void @_ZN4LIEF6ObjectC2Ev(ptr noundef nonnull align 8 dereferenceable(136) %i.ns) #23, !noalias !574
  %i.nt = getelementptr inbounds nuw i8, ptr %i.ns, i64 8
  store i32 7, ptr %i.nt, align 8, !tbaa !184, !noalias !574
  store ptr getelementptr inbounds nuw inrange(-16, 64) (i8, ptr @_ZTVN4LIEF2PE20MsSpcNestedSignatureE, i64 16), ptr %i.ns, align 8, !tbaa !53, !noalias !574
  %i.nu = getelementptr inbounds nuw i8, ptr %i.ns, i64 16
  call void @_ZN4LIEF2PE9SignatureC1EOS1_(ptr noundef nonnull align 8 dereferenceable(120) %i.nu, ptr noundef nonnull align 8 dereferenceable(120) %15) #23, !noalias !574
  call void @_ZN4LIEF2PE9SignatureD1Ev(ptr noundef nonnull align 8 dead_on_return(120) dereferenceable(120) %15) #23, !noalias !574
  call void @llvm.lifetime.end.p0(ptr nonnull %15)
  %.not.i.i61 = icmp eq ptr %.sroa.30.1, %.sroa.75.1
  br i1 %.not.i.i61, label %bb.aq, label %bb.ap

bb.ap:                                            ; preds = %_ZNR2tl8expectedIN4LIEF2PE9SignatureE11lief_errorsE5valueIS3_TnPNSt9enable_ifIXntsr3std7is_voidIT_EE5valueEvE4typeELPv0EEERS8_v.exit
  %i.nv = ptrtoint ptr %i.ns to i64
  store i64 %i.nv, ptr %.sroa.30.1, align 8, !tbaa !169
  %i.nw = getelementptr inbounds nuw i8, ptr %.sroa.30.1, i64 8
  br label %_ZNSt10unique_ptrIN4LIEF2PE20MsSpcNestedSignatureESt14default_deleteIS2_EED2Ev.exit

bb.aq:                                            ; preds = %_ZNR2tl8expectedIN4LIEF2PE9SignatureE11lief_errorsE5valueIS3_TnPNSt9enable_ifIXntsr3std7is_voidIT_EE5valueEvE4typeELPv0EEERS8_v.exit
  %i.nx = ptrtoint ptr %.sroa.30.1 to i64
  %i.ny = ptrtoint ptr %.sroa.0567.1 to i64
  %i.nz = sub i64 %i.nx, %i.ny                    ; 4 uses
  %i.oa = icmp eq i64 %i.nz, 9223372036854775800
  br i1 %i.oa, label %bb.ar, label %_ZNKSt6vectorISt10unique_ptrIN4LIEF2PE9AttributeESt14default_deleteIS3_EESaIS6_EE12_M_check_lenEmPKc.exit.i192

bb.ar:                                            ; preds = %bb.aq
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.197) #24
  unreachable

_ZNKSt6vectorISt10unique_ptrIN4LIEF2PE9AttributeESt14default_deleteIS3_EESaIS6_EE12_M_check_lenEmPKc.exit.i192: ; preds = %bb.aq
  %i.ob = ashr exact i64 %i.nz, 3                 ; 3 uses
  %.sroa.speculated.i.i193 = call i64 @llvm.umax.i64(i64 %i.ob, i64 1)
  %i.oc = add nsw i64 %.sroa.speculated.i.i193, %i.ob ; 2 uses
  %i.od = icmp ult i64 %i.oc, %i.ob
  %i.oe = call i64 @llvm.umin.i64(i64 %i.oc, i64 1152921504606846975)
  %i.of = select i1 %i.od, i64 1152921504606846975, i64 %i.oe ; 3 uses
  %.not.i.i194 = icmp ne i64 %i.of, 0
  call void @llvm.assume(i1 %.not.i.i194)
  %i.og = shl nuw nsw i64 %i.of, 3
  %i.oh = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.og) #25 ; 10 uses
  %i.oi = getelementptr inbounds nuw i8, ptr %i.oh, i64 %i.nz
  %i.oj = ptrtoint ptr %i.ns to i64
  store i64 %i.oj, ptr %i.oi, align 8, !tbaa !169
  %.not10.i.i.i.i195 = icmp eq ptr %.sroa.0567.1, %.sroa.30.1
  br i1 %.not10.i.i.i.i195, label %_ZNSt6vectorISt10unique_ptrIN4LIEF2PE9AttributeESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit22.i207, label %.lr.ph.i.i.i.i196.preheader

.lr.ph.i.i.i.i196.preheader:                      ; preds = %_ZNKSt6vectorISt10unique_ptrIN4LIEF2PE9AttributeESt14default_deleteIS3_EESaIS6_EE12_M_check_lenEmPKc.exit.i192
  %i.ok = add i64 %.sroa.30.11232, -8
  %i.ol = sub i64 %i.ok, %.sroa.0567.11233        ; 3 uses
  %i.om = lshr i64 %i.ol, 3
  %i.on = add nuw nsw i64 %i.om, 1                ; 2 uses
  %min.iters.check1427 = icmp ult i64 %i.ol, 56
  br i1 %min.iters.check1427, label %.lr.ph.i.i.i.i196.preheader1556, label %vector.memcheck1428

vector.memcheck1428:                              ; preds = %.lr.ph.i.i.i.i196.preheader
  %i.oo = and i64 %i.ol, -8
  %i.op = add i64 %i.oo, 8                        ; 2 uses
  %i.oq = getelementptr i8, ptr %i.oh, i64 %i.op
  %i.or = getelementptr i8, ptr %.sroa.0567.1, i64 %i.op
  %bound01429 = icmp ult ptr %i.oh, %i.or
  %bound11430 = icmp ult ptr %.sroa.0567.1, %i.oq
  %found.conflict1431 = and i1 %bound01429, %bound11430
  br i1 %found.conflict1431, label %.lr.ph.i.i.i.i196.preheader1556, label %vector.ph1432

vector.ph1432:                                    ; preds = %vector.memcheck1428
  %n.vec1433 = and i64 %i.on, 4611686018427387900 ; 3 uses
  %i.os = shl i64 %n.vec1433, 3                   ; 2 uses
  %i.ot = getelementptr i8, ptr %i.oh, i64 %i.os  ; 2 uses
  %i.ou = getelementptr i8, ptr %.sroa.0567.1, i64 %i.os
  br label %vector.body1434

vector.body1434:                                  ; preds = %vector.body1434, %vector.ph1432
  %index1435 = phi i64 [ 0, %vector.ph1432 ], [ %index.next1440, %vector.body1434 ] ; 2 uses
  %i.ov = shl i64 %index1435, 3                   ; 2 uses
  %next.gep1436 = getelementptr i8, ptr %i.oh, i64 %i.ov ; 2 uses
  %next.gep1437 = getelementptr i8, ptr %.sroa.0567.1, i64 %i.ov ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !575)
  call void @llvm.experimental.noalias.scope.decl(metadata !576)
  %i.ow = getelementptr i8, ptr %next.gep1437, i64 16
  %wide.load1438 = load <2 x i64>, ptr %next.gep1437, align 8, !tbaa !169, !alias.scope !577
  %wide.load1439 = load <2 x i64>, ptr %i.ow, align 8, !tbaa !169, !alias.scope !577
  %i.ox = getelementptr i8, ptr %next.gep1436, i64 16
  store <2 x i64> %wide.load1438, ptr %next.gep1436, align 8, !tbaa !169, !alias.scope !578, !noalias !579
  store <2 x i64> %wide.load1439, ptr %i.ox, align 8, !tbaa !169, !alias.scope !578, !noalias !579
  %48 = getelementptr i8, ptr %next.gep1437, i64 16
  store <2 x ptr> splat (ptr null), ptr %next.gep1437, align 8, !tbaa !169, !alias.scope !577
  store <2 x ptr> splat (ptr null), ptr %48, align 8, !tbaa !169, !alias.scope !577
  %index.next1440 = add nuw i64 %index1435, 4     ; 2 uses
  %i.oy = icmp eq i64 %index.next1440, %n.vec1433
  br i1 %i.oy, label %middle.block1441, label %vector.body1434, !llvm.loop !473

middle.block1441:                                 ; preds = %vector.body1434
  %cmp.n1442 = icmp eq i64 %i.on, %n.vec1433
  br i1 %cmp.n1442, label %_ZNSt6vectorISt10unique_ptrIN4LIEF2PE9AttributeESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit22.i207, label %.lr.ph.i.i.i.i196.preheader1556

.lr.ph.i.i.i.i196.preheader1556:                  ; preds = %vector.memcheck1428, %.lr.ph.i.i.i.i196.preheader, %middle.block1441
  %.012.i.i.i.i197.ph = phi ptr [ %i.oh, %vector.memcheck1428 ], [ %i.oh, %.lr.ph.i.i.i.i196.preheader ], [ %i.ot, %middle.block1441 ]
  %.0911.i.i.i.i198.ph = phi ptr [ %.sroa.0567.1, %vector.memcheck1428 ], [ %.sroa.0567.1, %.lr.ph.i.i.i.i196.preheader ], [ %i.ou, %middle.block1441 ]
  br label %.lr.ph.i.i.i.i196

.lr.ph.i.i.i.i196:                                ; preds = %.lr.ph.i.i.i.i196.preheader1556, %.lr.ph.i.i.i.i196
  %.012.i.i.i.i197 = phi ptr [ %i.pb, %.lr.ph.i.i.i.i196 ], [ %.012.i.i.i.i197.ph, %.lr.ph.i.i.i.i196.preheader1556 ] ; 2 uses
  %.0911.i.i.i.i198 = phi ptr [ %i.pa, %.lr.ph.i.i.i.i196 ], [ %.0911.i.i.i.i198.ph, %.lr.ph.i.i.i.i196.preheader1556 ] ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !575)
  call void @llvm.experimental.noalias.scope.decl(metadata !576)
  %i.oz = load i64, ptr %.0911.i.i.i.i198, align 8, !tbaa !169, !alias.scope !576
  store i64 %i.oz, ptr %.012.i.i.i.i197, align 8, !tbaa !169, !alias.scope !575
  store ptr null, ptr %.0911.i.i.i.i198, align 8, !tbaa !169, !alias.scope !576
  %i.pa = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i198, i64 8 ; 2 uses
  %i.pb = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i197, i64 8 ; 2 uses
  %.not.i.i.i.i199 = icmp eq ptr %i.pa, %.sroa.30.1
  br i1 %.not.i.i.i.i199, label %_ZNSt6vectorISt10unique_ptrIN4LIEF2PE9AttributeESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit22.i207, label %.lr.ph.i.i.i.i196, !llvm.loop !474

_ZNSt6vectorISt10unique_ptrIN4LIEF2PE9AttributeESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit22.i207: ; preds = %.lr.ph.i.i.i.i196, %middle.block1441, %_ZNKSt6vectorISt10unique_ptrIN4LIEF2PE9AttributeESt14default_deleteIS3_EESaIS6_EE12_M_check_lenEmPKc.exit.i192
  %.0.lcssa.i.i.i.i201 = phi ptr [ %i.oh, %_ZNKSt6vectorISt10unique_ptrIN4LIEF2PE9AttributeESt14default_deleteIS3_EESaIS6_EE12_M_check_lenEmPKc.exit.i192 ], [ %i.ot, %middle.block1441 ], [ %i.pb, %.lr.ph.i.i.i.i196 ]
  %i.pc = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i201, i64 8
  %.not.i23.i209 = icmp eq ptr %.sroa.0567.1, null
  br i1 %.not.i23.i209, label %_ZNSt6vectorISt10unique_ptrIN4LIEF2PE9AttributeESt14default_deleteIS3_EESaIS6_EE17_M_realloc_insertIJS6_EEEvN9__gnu_cxx17__normal_iteratorIPS6_S8_EEDpOT_.exit210, label %bb.as

bb.as:                                            ; preds = %_ZNSt6vectorISt10unique_ptrIN4LIEF2PE9AttributeESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit22.i207
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0567.1, i64 noundef %i.nz) #26
  br label %_ZNSt6vectorISt10unique_ptrIN4LIEF2PE9AttributeESt14default_deleteIS3_EESaIS6_EE17_M_realloc_insertIJS6_EEEvN9__gnu_cxx17__normal_iteratorIPS6_S8_EEDpOT_.exit210

_ZNSt6vectorISt10unique_ptrIN4LIEF2PE9AttributeESt14default_deleteIS3_EESaIS6_EE17_M_realloc_insertIJS6_EEEvN9__gnu_cxx17__normal_iteratorIPS6_S8_EEDpOT_.exit210: ; preds = %_ZNSt6vectorISt10unique_ptrIN4LIEF2PE9AttributeESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit22.i207, %bb.as
  %i.pd = getelementptr inbounds nuw [8 x i8], ptr %i.oh, i64 %i.of
  br label %_ZNSt10unique_ptrIN4LIEF2PE20MsSpcNestedSignatureESt14default_deleteIS2_EED2Ev.exit

_ZNSt10unique_ptrIN4LIEF2PE20MsSpcNestedSignatureESt14default_deleteIS2_EED2Ev.exit: ; preds = %_ZNSt6vectorISt10unique_ptrIN4LIEF2PE9AttributeESt14default_deleteIS3_EESaIS6_EE17_M_realloc_insertIJS6_EEEvN9__gnu_cxx17__normal_iteratorIPS6_S8_EEDpOT_.exit210, %bb.ap, %bb.ao
  %.sroa.0567.9 = phi ptr [ %i.oh, %_ZNSt6vectorISt10unique_ptrIN4LIEF2PE9AttributeESt14default_deleteIS3_EESaIS6_EE17_M_realloc_insertIJS6_EEEvN9__gnu_cxx17__normal_iteratorIPS6_S8_EEDpOT_.exit210 ], [ %.sroa.0567.1, %bb.ap ], [ %.sroa.0567.1, %bb.ao ]
  %.sroa.30.9 = phi ptr [ %i.pc, %_ZNSt6vectorISt10unique_ptrIN4LIEF2PE9AttributeESt14default_deleteIS3_EESaIS6_EE17_M_realloc_insertIJS6_EEEvN9__gnu_cxx17__normal_iteratorIPS6_S8_EEDpOT_.exit210 ], [ %i.nw, %bb.ap ], [ %.sroa.30.1, %bb.ao ]
  %.sroa.75.9 = phi ptr [ %i.pd, %_ZNSt6vectorISt10unique_ptrIN4LIEF2PE9AttributeESt14default_deleteIS3_EESaIS6_EE17_M_realloc_insertIJS6_EEEvN9__gnu_cxx17__normal_iteratorIPS6_S8_EEDpOT_.exit210 ], [ %.sroa.75.1, %bb.ap ], [ %.sroa.75.1, %bb.ao ]
  %i.pe = load i8, ptr %i.x, align 8, !tbaa !68, !range !85, !noundef !86
  %i.pf = trunc nuw i8 %i.pe to i1
  br i1 %i.pf, label %bb.at, label %_ZN2tl6detail21expected_storage_baseIN4LIEF2PE9SignatureE11lief_errorsLb0ELb1EED2Ev.exit

bb.at:                                            ; preds = %_ZNSt10unique_ptrIN4LIEF2PE20MsSpcNestedSignatureESt14default_deleteIS2_EED2Ev.exit
  call void @_ZN4LIEF2PE9SignatureD1Ev(ptr noundef nonnull align 8 dead_on_return(120) dereferenceable(121) %38) #23
  br label %_ZN2tl6detail21expected_storage_baseIN4LIEF2PE9SignatureE11lief_errorsLb0ELb1EED2Ev.exit

_ZN2tl6detail21expected_storage_baseIN4LIEF2PE9SignatureE11lief_errorsLb0ELb1EED2Ev.exit: ; preds = %_ZNSt10unique_ptrIN4LIEF2PE20MsSpcNestedSignatureESt14default_deleteIS2_EED2Ev.exit, %bb.at
  call void @llvm.lifetime.end.p0(ptr nonnull %38) #23
  br label %_ZNSt10unique_ptrIN4LIEF2PE21PKCS9AtSequenceNumberESt14default_deleteIS2_EED2Ev.exit

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit68: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit52
  %i.pg = load i128, ptr %i.cg, align 1
  %i.ph = xor i128 %i.pg, 65372177682629931770666641137721290289
  %i.pi = getelementptr i8, ptr %i.cg, i64 16
  %i.pj = load i32, ptr %i.pi, align 1
  %i.pk = zext i32 %i.pj to i128
  %i.pl = xor i128 %i.pk, 875444526
  %i.pm = or i128 %i.ph, %i.pl
  %i.pn = icmp ne i128 %i.pm, 0
  %i.po = zext i1 %i.pn to i32
  %i.pp = icmp eq i32 %i.po, 0
  br i1 %i.pp, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit68.thread, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit103

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit68.thread: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit68
  call void @llvm.lifetime.start.p0(ptr nonnull %39) #23
  call void @_ZN4LIEF2PE15SignatureParser26parse_pkcs9_message_digestERNS_12BinaryStreamE(ptr dead_on_unwind nonnull writable sret(%"class.LIEF::result.302") align 8 %39, ptr noundef nonnull align 8 dereferenceable(24) %32)
  %i.pq = load i8, ptr %i.v, align 8, !tbaa !162, !range !85, !noundef !86
  %i.pr = trunc nuw i8 %i.pq to i1
  br i1 %i.pr, label %_ZNR2tl8expectedISt6vectorIhSaIhEE11lief_errorsE5valueIS3_TnPNSt9enable_ifIXntsr3std7is_voidIT_EE5valueEvE4typeELPv0EEERS8_v.exit, label %_ZNSt10unique_ptrIN4LIEF2PE18PKCS9MessageDigestESt14default_deleteIS2_EED2Ev.exit

_ZNR2tl8expectedISt6vectorIhSaIhEE11lief_errorsE5valueIS3_TnPNSt9enable_ifIXntsr3std7is_voidIT_EE5valueEvE4typeELPv0EEERS8_v.exit: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit68.thread
  %i.ps = call noalias noundef nonnull dereferenceable(40) ptr @_Znwm(i64 noundef 40) #25, !noalias !580 ; 7 uses
  %i.pt = load ptr, ptr %i.w, align 16, !tbaa !73, !noalias !580
  call void @_ZN4LIEF6ObjectC2Ev(ptr noundef nonnull align 8 dereferenceable(40) %i.ps) #23, !noalias !580
  %i.pu = getelementptr inbounds nuw i8, ptr %i.ps, i64 8
  store i32 12, ptr %i.pu, align 8, !tbaa !184, !noalias !580
  store ptr getelementptr inbounds nuw inrange(-16, 64) (i8, ptr @_ZTVN4LIEF2PE18PKCS9MessageDigestE, i64 16), ptr %i.ps, align 8, !tbaa !53, !noalias !580
  %i.pv = getelementptr inbounds nuw i8, ptr %i.ps, i64 16
  %i.pw = load <2 x ptr>, ptr %39, align 16, !tbaa !74, !noalias !580
  store <2 x ptr> %i.pw, ptr %i.pv, align 8, !tbaa !74, !noalias !580
  %i.px = getelementptr inbounds nuw i8, ptr %i.ps, i64 32
  store ptr %i.pt, ptr %i.px, align 8, !tbaa !73, !noalias !580
  %.not.i.i69 = icmp eq ptr %.sroa.30.1, %.sroa.75.1
  br i1 %.not.i.i69, label %bb.av, label %bb.au

bb.au:                                            ; preds = %_ZNR2tl8expectedISt6vectorIhSaIhEE11lief_errorsE5valueIS3_TnPNSt9enable_ifIXntsr3std7is_voidIT_EE5valueEvE4typeELPv0EEERS8_v.exit
  %i.py = ptrtoint ptr %i.ps to i64
  store i64 %i.py, ptr %.sroa.30.1, align 8, !tbaa !169
  %i.pz = getelementptr inbounds nuw i8, ptr %.sroa.30.1, i64 8
  br label %_ZN2tl6detail21expected_storage_baseISt6vectorIhSaIhEE11lief_errorsLb0ELb1EED2Ev.exit

bb.av:                                            ; preds = %_ZNR2tl8expectedISt6vectorIhSaIhEE11lief_errorsE5valueIS3_TnPNSt9enable_ifIXntsr3std7is_voidIT_EE5valueEvE4typeELPv0EEERS8_v.exit
  %i.qa = ptrtoint ptr %.sroa.30.1 to i64
  %i.qb = ptrtoint ptr %.sroa.0567.1 to i64
  %i.qc = sub i64 %i.qa, %i.qb                    ; 4 uses
  %i.qd = icmp eq i64 %i.qc, 9223372036854775800
  br i1 %i.qd, label %bb.aw, label %_ZNKSt6vectorISt10unique_ptrIN4LIEF2PE9AttributeESt14default_deleteIS3_EESaIS6_EE12_M_check_lenEmPKc.exit.i211

bb.aw:                                            ; preds = %bb.av
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.197) #24
  unreachable

_ZNKSt6vectorISt10unique_ptrIN4LIEF2PE9AttributeESt14default_deleteIS3_EESaIS6_EE12_M_check_lenEmPKc.exit.i211: ; preds = %bb.av
  %i.qe = ashr exact i64 %i.qc, 3                 ; 3 uses
  %.sroa.speculated.i.i212 = call i64 @llvm.umax.i64(i64 %i.qe, i64 1)
  %i.qf = add nsw i64 %.sroa.speculated.i.i212, %i.qe ; 2 uses
  %i.qg = icmp ult i64 %i.qf, %i.qe
  %i.qh = call i64 @llvm.umin.i64(i64 %i.qf, i64 1152921504606846975)
  %i.qi = select i1 %i.qg, i64 1152921504606846975, i64 %i.qh ; 3 uses
  %.not.i.i213 = icmp ne i64 %i.qi, 0
  call void @llvm.assume(i1 %.not.i.i213)
  %i.qj = shl nuw nsw i64 %i.qi, 3
  %i.qk = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.qj) #25 ; 10 uses
  %i.ql = getelementptr inbounds nuw i8, ptr %i.qk, i64 %i.qc
  %i.qm = ptrtoint ptr %i.ps to i64
  store i64 %i.qm, ptr %i.ql, align 8, !tbaa !169
  %.not10.i.i.i.i214 = icmp eq ptr %.sroa.0567.1, %.sroa.30.1
  br i1 %.not10.i.i.i.i214, label %_ZNSt6vectorISt10unique_ptrIN4LIEF2PE9AttributeESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit22.i226, label %.lr.ph.i.i.i.i215.preheader

.lr.ph.i.i.i.i215.preheader:                      ; preds = %_ZNKSt6vectorISt10unique_ptrIN4LIEF2PE9AttributeESt14default_deleteIS3_EESaIS6_EE12_M_check_lenEmPKc.exit.i211
  %i.qn = add i64 %.sroa.30.11232, -8
  %i.qo = sub i64 %i.qn, %.sroa.0567.11233        ; 3 uses
  %i.qp = lshr i64 %i.qo, 3
  %i.qq = add nuw nsw i64 %i.qp, 1                ; 2 uses
  %min.iters.check1297 = icmp ult i64 %i.qo, 56
  br i1 %min.iters.check1297, label %.lr.ph.i.i.i.i215.preheader1551, label %vector.memcheck1298

vector.memcheck1298:                              ; preds = %.lr.ph.i.i.i.i215.preheader
  %i.qr = and i64 %i.qo, -8
  %i.qs = add i64 %i.qr, 8                        ; 2 uses
  %i.qt = getelementptr i8, ptr %i.qk, i64 %i.qs
  %i.qu = getelementptr i8, ptr %.sroa.0567.1, i64 %i.qs
  %bound01299 = icmp ult ptr %i.qk, %i.qu
  %bound11300 = icmp ult ptr %.sroa.0567.1, %i.qt
  %found.conflict1301 = and i1 %bound01299, %bound11300
  br i1 %found.conflict1301, label %.lr.ph.i.i.i.i215.preheader1551, label %vector.ph1302

vector.ph1302:                                    ; preds = %vector.memcheck1298
  %n.vec1303 = and i64 %i.qq, 4611686018427387900 ; 3 uses
  %i.qv = shl i64 %n.vec1303, 3                   ; 2 uses
  %i.qw = getelementptr i8, ptr %i.qk, i64 %i.qv  ; 2 uses
  %i.qx = getelementptr i8, ptr %.sroa.0567.1, i64 %i.qv
  br label %vector.body1304

vector.body1304:                                  ; preds = %vector.body1304, %vector.ph1302
  %index1305 = phi i64 [ 0, %vector.ph1302 ], [ %index.next1310, %vector.body1304 ] ; 2 uses
  %i.qy = shl i64 %index1305, 3                   ; 2 uses
  %next.gep1306 = getelementptr i8, ptr %i.qk, i64 %i.qy ; 2 uses
  %next.gep1307 = getelementptr i8, ptr %.sroa.0567.1, i64 %i.qy ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !581)
  call void @llvm.experimental.noalias.scope.decl(metadata !582)
  %i.qz = getelementptr i8, ptr %next.gep1307, i64 16
  %wide.load1308 = load <2 x i64>, ptr %next.gep1307, align 8, !tbaa !169, !alias.scope !583
  %wide.load1309 = load <2 x i64>, ptr %i.qz, align 8, !tbaa !169, !alias.scope !583
  %i.ra = getelementptr i8, ptr %next.gep1306, i64 16
  store <2 x i64> %wide.load1308, ptr %next.gep1306, align 8, !tbaa !169, !alias.scope !584, !noalias !585
  store <2 x i64> %wide.load1309, ptr %i.ra, align 8, !tbaa !169, !alias.scope !584, !noalias !585
  %49 = getelementptr i8, ptr %next.gep1307, i64 16
  store <2 x ptr> splat (ptr null), ptr %next.gep1307, align 8, !tbaa !169, !alias.scope !583
  store <2 x ptr> splat (ptr null), ptr %49, align 8, !tbaa !169, !alias.scope !583
  %index.next1310 = add nuw i64 %index1305, 4     ; 2 uses
  %i.rb = icmp eq i64 %index.next1310, %n.vec1303
  br i1 %i.rb, label %middle.block1311, label %vector.body1304, !llvm.loop !483

middle.block1311:                                 ; preds = %vector.body1304
  %cmp.n1312 = icmp eq i64 %i.qq, %n.vec1303
  br i1 %cmp.n1312, label %_ZNSt6vectorISt10unique_ptrIN4LIEF2PE9AttributeESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit22.i226, label %.lr.ph.i.i.i.i215.preheader1551

.lr.ph.i.i.i.i215.preheader1551:                  ; preds = %vector.memcheck1298, %.lr.ph.i.i.i.i215.preheader, %middle.block1311
  %.012.i.i.i.i216.ph = phi ptr [ %i.qk, %vector.memcheck1298 ], [ %i.qk, %.lr.ph.i.i.i.i215.preheader ], [ %i.qw, %middle.block1311 ]
  %.0911.i.i.i.i217.ph = phi ptr [ %.sroa.0567.1, %vector.memcheck1298 ], [ %.sroa.0567.1, %.lr.ph.i.i.i.i215.preheader ], [ %i.qx, %middle.block1311 ]
  br label %.lr.ph.i.i.i.i215

.lr.ph.i.i.i.i215:                                ; preds = %.lr.ph.i.i.i.i215.preheader1551, %.lr.ph.i.i.i.i215
  %.012.i.i.i.i216 = phi ptr [ %i.re, %.lr.ph.i.i.i.i215 ], [ %.012.i.i.i.i216.ph, %.lr.ph.i.i.i.i215.preheader1551 ] ; 2 uses
  %.0911.i.i.i.i217 = phi ptr [ %i.rd, %.lr.ph.i.i.i.i215 ], [ %.0911.i.i.i.i217.ph, %.lr.ph.i.i.i.i215.preheader1551 ] ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !581)
  call void @llvm.experimental.noalias.scope.decl(metadata !582)
  %i.rc = load i64, ptr %.0911.i.i.i.i217, align 8, !tbaa !169, !alias.scope !582
  store i64 %i.rc, ptr %.012.i.i.i.i216, align 8, !tbaa !169, !alias.scope !581
  store ptr null, ptr %.0911.i.i.i.i217, align 8, !tbaa !169, !alias.scope !582
  %i.rd = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i217, i64 8 ; 2 uses
  %i.re = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i216, i64 8 ; 2 uses
  %.not.i.i.i.i218 = icmp eq ptr %i.rd, %.sroa.30.1
  br i1 %.not.i.i.i.i218, label %_ZNSt6vectorISt10unique_ptrIN4LIEF2PE9AttributeESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit22.i226, label %.lr.ph.i.i.i.i215, !llvm.loop !484

_ZNSt6vectorISt10unique_ptrIN4LIEF2PE9AttributeESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit22.i226: ; preds = %.lr.ph.i.i.i.i215, %middle.block1311, %_ZNKSt6vectorISt10unique_ptrIN4LIEF2PE9AttributeESt14default_deleteIS3_EESaIS6_EE12_M_check_lenEmPKc.exit.i211
  %.0.lcssa.i.i.i.i220 = phi ptr [ %i.qk, %_ZNKSt6vectorISt10unique_ptrIN4LIEF2PE9AttributeESt14default_deleteIS3_EESaIS6_EE12_M_check_lenEmPKc.exit.i211 ], [ %i.qw, %middle.block1311 ], [ %i.re, %.lr.ph.i.i.i.i215 ]
  %i.rf = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i220, i64 8
  %.not.i23.i228 = icmp eq ptr %.sroa.0567.1, null
  br i1 %.not.i23.i228, label %_ZNSt6vectorISt10unique_ptrIN4LIEF2PE9AttributeESt14default_deleteIS3_EESaIS6_EE17_M_realloc_insertIJS6_EEEvN9__gnu_cxx17__normal_iteratorIPS6_S8_EEDpOT_.exit229, label %bb.ax

bb.ax:                                            ; preds = %_ZNSt6vectorISt10unique_ptrIN4LIEF2PE9AttributeESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit22.i226
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0567.1, i64 noundef %i.qc) #26
  br label %_ZNSt6vectorISt10unique_ptrIN4LIEF2PE9AttributeESt14default_deleteIS3_EESaIS6_EE17_M_realloc_insertIJS6_EEEvN9__gnu_cxx17__normal_iteratorIPS6_S8_EEDpOT_.exit229

_ZNSt6vectorISt10unique_ptrIN4LIEF2PE9AttributeESt14default_deleteIS3_EESaIS6_EE17_M_realloc_insertIJS6_EEEvN9__gnu_cxx17__normal_iteratorIPS6_S8_EEDpOT_.exit229: ; preds = %_ZNSt6vectorISt10unique_ptrIN4LIEF2PE9AttributeESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit22.i226, %bb.ax
  %i.rg = getelementptr inbounds nuw [8 x i8], ptr %i.qk, i64 %i.qi
  br label %_ZN2tl6detail21expected_storage_baseISt6vectorIhSaIhEE11lief_errorsLb0ELb1EED2Ev.exit

_ZNSt10unique_ptrIN4LIEF2PE18PKCS9MessageDigestESt14default_deleteIS2_EED2Ev.exit: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit68.thread
  %i.rh = call noundef nonnull align 8 dereferenceable(16) ptr @_ZN4LIEF7logging6Logger8instanceEPKc(ptr noundef nonnull @.str.299) #23
  %i.ri = load ptr, ptr %i.rh, align 8, !tbaa !62
  call void @llvm.lifetime.start.p0(ptr nonnull %14)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %14, i8 0, i64 24, i1 false)
  call void @_ZN6spdlog6logger4log_IJEEEvNS_10source_locENS_5level10level_enumEN3fmt3v1217basic_string_viewIcEEDpOT_(ptr noundef nonnull align 8 dereferenceable(208) %i.ri, ptr noundef nonnull byval(%"struct.spdlog::source_loc") align 8 %14, i32 noundef 2, ptr nonnull @.str.86, i64 46)
  call void @llvm.lifetime.end.p0(ptr nonnull %14)
  br label %_ZN2tl6detail21expected_storage_baseISt6vectorIhSaIhEE11lief_errorsLb0ELb1EED2Ev.exit

_ZN2tl6detail21expected_storage_baseISt6vectorIhSaIhEE11lief_errorsLb0ELb1EED2Ev.exit: ; preds = %bb.au, %_ZNSt6vectorISt10unique_ptrIN4LIEF2PE9AttributeESt14default_deleteIS3_EESaIS6_EE17_M_realloc_insertIJS6_EEEvN9__gnu_cxx17__normal_iteratorIPS6_S8_EEDpOT_.exit229, %_ZNSt10unique_ptrIN4LIEF2PE18PKCS9MessageDigestESt14default_deleteIS2_EED2Ev.exit
  %.sroa.0567.10 = phi ptr [ %i.qk, %_ZNSt6vectorISt10unique_ptrIN4LIEF2PE9AttributeESt14default_deleteIS3_EESaIS6_EE17_M_realloc_insertIJS6_EEEvN9__gnu_cxx17__normal_iteratorIPS6_S8_EEDpOT_.exit229 ], [ %.sroa.0567.1, %bb.au ], [ %.sroa.0567.1, %_ZNSt10unique_ptrIN4LIEF2PE18PKCS9MessageDigestESt14default_deleteIS2_EED2Ev.exit ]
  %.sroa.30.10 = phi ptr [ %i.rf, %_ZNSt6vectorISt10unique_ptrIN4LIEF2PE9AttributeESt14default_deleteIS3_EESaIS6_EE17_M_realloc_insertIJS6_EEEvN9__gnu_cxx17__normal_iteratorIPS6_S8_EEDpOT_.exit229 ], [ %i.pz, %bb.au ], [ %.sroa.30.1, %_ZNSt10unique_ptrIN4LIEF2PE18PKCS9MessageDigestESt14default_deleteIS2_EED2Ev.exit ]
  %.sroa.75.10 = phi ptr [ %i.rg, %_ZNSt6vectorISt10unique_ptrIN4LIEF2PE9AttributeESt14default_deleteIS3_EESaIS6_EE17_M_realloc_insertIJS6_EEEvN9__gnu_cxx17__normal_iteratorIPS6_S8_EEDpOT_.exit229 ], [ %.sroa.75.1, %bb.au ], [ %.sroa.75.1, %_ZNSt10unique_ptrIN4LIEF2PE18PKCS9MessageDigestESt14default_deleteIS2_EED2Ev.exit ]
  call void @llvm.lifetime.end.p0(ptr nonnull %39) #23
  br label %_ZNSt10unique_ptrIN4LIEF2PE21PKCS9AtSequenceNumberESt14default_deleteIS2_EED2Ev.exit

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit77: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit36
  %i.rj = load i128, ptr %.pre, align 1
  %i.rk = xor i128 %i.rj, 61399908245176969875065496016400887345
  %i.rl = getelementptr i8, ptr %.pre, i64 6
  %i.rm = load i128, ptr %i.rl, align 1
  %i.rn = xor i128 %i.rm, 65387531226847790380933088287038647857
  %i.ro = or i128 %i.rk, %i.rn
  %i.rp = icmp ne i128 %i.ro, 0
  %i.rq = zext i1 %i.rp to i32
  %i.rr = icmp eq i32 %i.rq, 0
  br i1 %i.rr, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit77.thread, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit474.thread625

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit77.thread: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit77
  call void @llvm.lifetime.start.p0(ptr nonnull %40) #23
  call void @_ZN4LIEF2PE15SignatureParser27parse_ms_spc_statement_typeB5cxx11ERNS_12BinaryStreamE(ptr dead_on_unwind nonnull writable sret(%"class.LIEF::result.92") align 8 %40, ptr noundef nonnull align 8 dereferenceable(24) %32)
  %i.rs = load i8, ptr %i.r, align 8, !tbaa !101, !range !85, !noundef !86
  %i.rt = trunc nuw i8 %i.rs to i1
  br i1 %i.rt, label %_ZNR2tl8expectedINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE11lief_errorsE5valueIS6_TnPNSt9enable_ifIXntsr3std7is_voidIT_EE5valueEvE4typeELPv0EEERSB_v.exit78, label %bb.ay

bb.ay:                                            ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit77.thread
  %i.ru = call noundef nonnull align 8 dereferenceable(16) ptr @_ZN4LIEF7logging6Logger8instanceEPKc(ptr noundef nonnull @.str.299) #23
  %i.rv = load ptr, ptr %i.ru, align 8, !tbaa !62
  call void @llvm.lifetime.start.p0(ptr nonnull %13)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %13, i8 0, i64 24, i1 false)
  call void @_ZN6spdlog6logger4log_IJEEEvNS_10source_locENS_5level10level_enumEN3fmt3v1217basic_string_viewIcEEDpOT_(ptr noundef nonnull align 8 dereferenceable(208) %i.rv, ptr noundef nonnull byval(%"struct.spdlog::source_loc") align 8 %13, i32 noundef 2, ptr nonnull @.str.88, i64 47)
  call void @llvm.lifetime.end.p0(ptr nonnull %13)
  br label %_ZNSt10unique_ptrIN4LIEF2PE18MsSpcStatementTypeESt14default_deleteIS2_EED2Ev.exit

_ZNR2tl8expectedINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE11lief_errorsE5valueIS6_TnPNSt9enable_ifIXntsr3std7is_voidIT_EE5valueEvE4typeELPv0EEERSB_v.exit78: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit77.thread
  call void @llvm.lifetime.start.p0(ptr nonnull %12)
  %i.rw = call noalias noundef nonnull dereferenceable(48) ptr @_Znwm(i64 noundef 48) #25, !noalias !586 ; 8 uses
  store ptr %i.s, ptr %12, align 8, !tbaa !143, !noalias !586
  %i.rx = load ptr, ptr %40, align 8, !tbaa !99, !noalias !586 ; 2 uses
  %i.ry = icmp eq ptr %i.rx, %i.t
  br i1 %i.ry, label %bb.az, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i79

bb.az:                                            ; preds = %_ZNR2tl8expectedINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE11lief_errorsE5valueIS6_TnPNSt9enable_ifIXntsr3std7is_voidIT_EE5valueEvE4typeELPv0EEERSB_v.exit78
  %i.rz = load i64, ptr %.phi.trans.insert.i80, align 8, !tbaa !102, !noalias !586 ; 3 uses
  %i.sa = icmp ult i64 %i.rz, 16
  call void @llvm.assume(i1 %i.sa)
  %i.sb = add nuw nsw i64 %i.rz, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.s, ptr noundef nonnull align 8 dereferenceable(1) %i.t, i64 %i.sb, i1 false), !noalias !586
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i82

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i79: ; preds = %_ZNR2tl8expectedINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE11lief_errorsE5valueIS6_TnPNSt9enable_ifIXntsr3std7is_voidIT_EE5valueEvE4typeELPv0EEERSB_v.exit78
  store ptr %i.rx, ptr %12, align 8, !tbaa !99, !noalias !586
  %i.sc = load i64, ptr %i.t, align 8, !tbaa !93, !noalias !586
  store i64 %i.sc, ptr %i.s, align 8, !tbaa !93, !noalias !586
  %.pre.i81 = load i64, ptr %.phi.trans.insert.i80, align 8, !tbaa !102, !noalias !586
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i82

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i82: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i79, %bb.az
  %i.sd = phi i64 [ %i.rz, %bb.az ], [ %.pre.i81, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i79 ]
  store i64 %i.sd, ptr %i.u, align 8, !tbaa !102, !noalias !586
  store ptr %i.t, ptr %40, align 8, !tbaa !99, !noalias !586
  store i64 0, ptr %.phi.trans.insert.i80, align 8, !tbaa !102, !noalias !586
  store i8 0, ptr %i.t, align 8, !tbaa !93, !noalias !586
  call void @_ZN4LIEF6ObjectC2Ev(ptr noundef nonnull align 8 dereferenceable(48) %i.rw) #23, !noalias !586
  %i.se = getelementptr inbounds nuw i8, ptr %i.rw, i64 8
  store i32 8, ptr %i.se, align 8, !tbaa !184, !noalias !586
  store ptr getelementptr inbounds nuw inrange(-16, 64) (i8, ptr @_ZTVN4LIEF2PE18MsSpcStatementTypeE, i64 16), ptr %i.rw, align 8, !tbaa !53, !noalias !586
  %i.sf = getelementptr inbounds nuw i8, ptr %i.rw, i64 16 ; 2 uses
  %i.sg = getelementptr inbounds nuw i8, ptr %i.rw, i64 32 ; 3 uses
  store ptr %i.sg, ptr %i.sf, align 8, !tbaa !143, !noalias !586
  %i.sh = load ptr, ptr %12, align 8, !tbaa !99, !noalias !586 ; 2 uses
  %i.si = icmp eq ptr %i.sh, %i.s
  br i1 %i.si, label %bb.ba, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i83

bb.ba:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i82
  %i.sj = load i64, ptr %i.u, align 8, !tbaa !102, !noalias !586 ; 3 uses
  %i.sk = icmp ult i64 %i.sj, 16
  call void @llvm.assume(i1 %i.sk)
  %i.sl = add nuw nsw i64 %i.sj, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.sg, ptr noundef nonnull align 8 dereferenceable(1) %i.s, i64 %i.sl, i1 false), !noalias !586
  br label %_ZSt11make_uniqueIN4LIEF2PE18MsSpcStatementTypeEJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_.exit

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i83: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i82
  store ptr %i.sh, ptr %i.sf, align 8, !tbaa !99, !noalias !586
  %i.sm = load i64, ptr %i.s, align 8, !tbaa !93, !noalias !586
  store i64 %i.sm, ptr %i.sg, align 8, !tbaa !93, !noalias !586
  %.pre2.i = load i64, ptr %i.u, align 8, !tbaa !102, !noalias !586
  br label %_ZSt11make_uniqueIN4LIEF2PE18MsSpcStatementTypeEJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_.exit

_ZSt11make_uniqueIN4LIEF2PE18MsSpcStatementTypeEJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_.exit: ; preds = %bb.ba, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i83
  %i.sn = phi i64 [ %i.sj, %bb.ba ], [ %.pre2.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i83 ]
  %i.so = getelementptr inbounds nuw i8, ptr %i.rw, i64 24
  store i64 %i.sn, ptr %i.so, align 8, !tbaa !102, !noalias !586
  call void @llvm.lifetime.end.p0(ptr nonnull %12)
  %.not.i.i85 = icmp eq ptr %.sroa.30.1, %.sroa.75.1
  br i1 %.not.i.i85, label %bb.bc, label %bb.bb

bb.bb:                                            ; preds = %_ZSt11make_uniqueIN4LIEF2PE18MsSpcStatementTypeEJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_.exit
  %i.sp = ptrtoint ptr %i.rw to i64
  store i64 %i.sp, ptr %.sroa.30.1, align 8, !tbaa !169
  %i.sq = getelementptr inbounds nuw i8, ptr %.sroa.30.1, i64 8
  br label %_ZNSt10unique_ptrIN4LIEF2PE18MsSpcStatementTypeESt14default_deleteIS2_EED2Ev.exit

bb.bc:                                            ; preds = %_ZSt11make_uniqueIN4LIEF2PE18MsSpcStatementTypeEJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_.exit
  %i.sr = ptrtoint ptr %.sroa.30.1 to i64
  %i.ss = ptrtoint ptr %.sroa.0567.1 to i64
  %i.st = sub i64 %i.sr, %i.ss                    ; 4 uses
  %i.su = icmp eq i64 %i.st, 9223372036854775800
  br i1 %i.su, label %bb.bd, label %_ZNKSt6vectorISt10unique_ptrIN4LIEF2PE9AttributeESt14default_deleteIS3_EESaIS6_EE12_M_check_lenEmPKc.exit.i230

bb.bd:                                            ; preds = %bb.bc
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.197) #24
  unreachable

_ZNKSt6vectorISt10unique_ptrIN4LIEF2PE9AttributeESt14default_deleteIS3_EESaIS6_EE12_M_check_lenEmPKc.exit.i230: ; preds = %bb.bc
  %i.sv = ashr exact i64 %i.st, 3                 ; 3 uses
  %.sroa.speculated.i.i231 = call i64 @llvm.umax.i64(i64 %i.sv, i64 1)
  %i.sw = add nsw i64 %.sroa.speculated.i.i231, %i.sv ; 2 uses
  %i.sx = icmp ult i64 %i.sw, %i.sv
  %i.sy = call i64 @llvm.umin.i64(i64 %i.sw, i64 1152921504606846975)
  %i.sz = select i1 %i.sx, i64 1152921504606846975, i64 %i.sy ; 3 uses
  %.not.i.i232 = icmp ne i64 %i.sz, 0
  call void @llvm.assume(i1 %.not.i.i232)
  %i.ta = shl nuw nsw i64 %i.sz, 3
  %i.tb = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ta) #25 ; 10 uses
  %i.tc = getelementptr inbounds nuw i8, ptr %i.tb, i64 %i.st
  %i.td = ptrtoint ptr %i.rw to i64
  store i64 %i.td, ptr %i.tc, align 8, !tbaa !169
  %.not10.i.i.i.i233 = icmp eq ptr %.sroa.0567.1, %.sroa.30.1
  br i1 %.not10.i.i.i.i233, label %_ZNSt6vectorISt10unique_ptrIN4LIEF2PE9AttributeESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit22.i245, label %.lr.ph.i.i.i.i234.preheader

.lr.ph.i.i.i.i234.preheader:                      ; preds = %_ZNKSt6vectorISt10unique_ptrIN4LIEF2PE9AttributeESt14default_deleteIS3_EESaIS6_EE12_M_check_lenEmPKc.exit.i230
  %i.te = add i64 %.sroa.30.11232, -8
  %i.tf = sub i64 %i.te, %.sroa.0567.11233        ; 3 uses
  %i.tg = lshr i64 %i.tf, 3
  %i.th = add nuw nsw i64 %i.tg, 1                ; 2 uses
  %min.iters.check1375 = icmp ult i64 %i.tf, 56
  br i1 %min.iters.check1375, label %.lr.ph.i.i.i.i234.preheader1554, label %vector.memcheck1376

vector.memcheck1376:                              ; preds = %.lr.ph.i.i.i.i234.preheader
  %i.ti = and i64 %i.tf, -8
  %i.tj = add i64 %i.ti, 8                        ; 2 uses
  %i.tk = getelementptr i8, ptr %i.tb, i64 %i.tj
  %i.tl = getelementptr i8, ptr %.sroa.0567.1, i64 %i.tj
  %bound01377 = icmp ult ptr %i.tb, %i.tl
  %bound11378 = icmp ult ptr %.sroa.0567.1, %i.tk
  %found.conflict1379 = and i1 %bound01377, %bound11378
  br i1 %found.conflict1379, label %.lr.ph.i.i.i.i234.preheader1554, label %vector.ph1380

vector.ph1380:                                    ; preds = %vector.memcheck1376
  %n.vec1381 = and i64 %i.th, 4611686018427387900 ; 3 uses
  %i.tm = shl i64 %n.vec1381, 3                   ; 2 uses
  %i.tn = getelementptr i8, ptr %i.tb, i64 %i.tm  ; 2 uses
  %i.to = getelementptr i8, ptr %.sroa.0567.1, i64 %i.tm
  br label %vector.body1382

vector.body1382:                                  ; preds = %vector.body1382, %vector.ph1380
  %index1383 = phi i64 [ 0, %vector.ph1380 ], [ %index.next1388, %vector.body1382 ] ; 2 uses
  %i.tp = shl i64 %index1383, 3                   ; 2 uses
  %next.gep1384 = getelementptr i8, ptr %i.tb, i64 %i.tp ; 2 uses
  %next.gep1385 = getelementptr i8, ptr %.sroa.0567.1, i64 %i.tp ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !587)
  call void @llvm.experimental.noalias.scope.decl(metadata !588)
  %i.tq = getelementptr i8, ptr %next.gep1385, i64 16
  %wide.load1386 = load <2 x i64>, ptr %next.gep1385, align 8, !tbaa !169, !alias.scope !589
  %wide.load1387 = load <2 x i64>, ptr %i.tq, align 8, !tbaa !169, !alias.scope !589
  %i.tr = getelementptr i8, ptr %next.gep1384, i64 16
  store <2 x i64> %wide.load1386, ptr %next.gep1384, align 8, !tbaa !169, !alias.scope !590, !noalias !591
  store <2 x i64> %wide.load1387, ptr %i.tr, align 8, !tbaa !169, !alias.scope !590, !noalias !591
  %50 = getelementptr i8, ptr %next.gep1385, i64 16
  store <2 x ptr> splat (ptr null), ptr %next.gep1385, align 8, !tbaa !169, !alias.scope !589
  store <2 x ptr> splat (ptr null), ptr %50, align 8, !tbaa !169, !alias.scope !589
  %index.next1388 = add nuw i64 %index1383, 4     ; 2 uses
  %i.ts = icmp eq i64 %index.next1388, %n.vec1381
  br i1 %i.ts, label %middle.block1389, label %vector.body1382, !llvm.loop !493

middle.block1389:                                 ; preds = %vector.body1382
  %cmp.n1390 = icmp eq i64 %i.th, %n.vec1381
  br i1 %cmp.n1390, label %_ZNSt6vectorISt10unique_ptrIN4LIEF2PE9AttributeESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit22.i245, label %.lr.ph.i.i.i.i234.preheader1554

.lr.ph.i.i.i.i234.preheader1554:                  ; preds = %vector.memcheck1376, %.lr.ph.i.i.i.i234.preheader, %middle.block1389
  %.012.i.i.i.i235.ph = phi ptr [ %i.tb, %vector.memcheck1376 ], [ %i.tb, %.lr.ph.i.i.i.i234.preheader ], [ %i.tn, %middle.block1389 ]
  %.0911.i.i.i.i236.ph = phi ptr [ %.sroa.0567.1, %vector.memcheck1376 ], [ %.sroa.0567.1, %.lr.ph.i.i.i.i234.preheader ], [ %i.to, %middle.block1389 ]
  br label %.lr.ph.i.i.i.i234

.lr.ph.i.i.i.i234:                                ; preds = %.lr.ph.i.i.i.i234.preheader1554, %.lr.ph.i.i.i.i234
  %.012.i.i.i.i235 = phi ptr [ %i.tv, %.lr.ph.i.i.i.i234 ], [ %.012.i.i.i.i235.ph, %.lr.ph.i.i.i.i234.preheader1554 ] ; 2 uses
  %.0911.i.i.i.i236 = phi ptr [ %i.tu, %.lr.ph.i.i.i.i234 ], [ %.0911.i.i.i.i236.ph, %.lr.ph.i.i.i.i234.preheader1554 ] ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !587)
  call void @llvm.experimental.noalias.scope.decl(metadata !588)
  %i.tt = load i64, ptr %.0911.i.i.i.i236, align 8, !tbaa !169, !alias.scope !588
  store i64 %i.tt, ptr %.012.i.i.i.i235, align 8, !tbaa !169, !alias.scope !587
  store ptr null, ptr %.0911.i.i.i.i236, align 8, !tbaa !169, !alias.scope !588
  %i.tu = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i236, i64 8 ; 2 uses
  %i.tv = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i235, i64 8 ; 2 uses
  %.not.i.i.i.i237 = icmp eq ptr %i.tu, %.sroa.30.1
  br i1 %.not.i.i.i.i237, label %_ZNSt6vectorISt10unique_ptrIN4LIEF2PE9AttributeESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit22.i245, label %.lr.ph.i.i.i.i234, !llvm.loop !494

_ZNSt6vectorISt10unique_ptrIN4LIEF2PE9AttributeESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit22.i245: ; preds = %.lr.ph.i.i.i.i234, %middle.block1389, %_ZNKSt6vectorISt10unique_ptrIN4LIEF2PE9AttributeESt14default_deleteIS3_EESaIS6_EE12_M_check_lenEmPKc.exit.i230
  %.0.lcssa.i.i.i.i239 = phi ptr [ %i.tb, %_ZNKSt6vectorISt10unique_ptrIN4LIEF2PE9AttributeESt14default_deleteIS3_EESaIS6_EE12_M_check_lenEmPKc.exit.i230 ], [ %i.tn, %middle.block1389 ], [ %i.tv, %.lr.ph.i.i.i.i234 ]
  %i.tw = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i239, i64 8
  %.not.i23.i247 = icmp eq ptr %.sroa.0567.1, null
  br i1 %.not.i23.i247, label %_ZNSt6vectorISt10unique_ptrIN4LIEF2PE9AttributeESt14default_deleteIS3_EESaIS6_EE17_M_realloc_insertIJS6_EEEvN9__gnu_cxx17__normal_iteratorIPS6_S8_EEDpOT_.exit248, label %bb.be

bb.be:                                            ; preds = %_ZNSt6vectorISt10unique_ptrIN4LIEF2PE9AttributeESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit22.i245
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0567.1, i64 noundef %i.st) #26
  br label %_ZNSt6vectorISt10unique_ptrIN4LIEF2PE9AttributeESt14default_deleteIS3_EESaIS6_EE17_M_realloc_insertIJS6_EEEvN9__gnu_cxx17__normal_iteratorIPS6_S8_EEDpOT_.exit248

_ZNSt6vectorISt10unique_ptrIN4LIEF2PE9AttributeESt14default_deleteIS3_EESaIS6_EE17_M_realloc_insertIJS6_EEEvN9__gnu_cxx17__normal_iteratorIPS6_S8_EEDpOT_.exit248: ; preds = %_ZNSt6vectorISt10unique_ptrIN4LIEF2PE9AttributeESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit22.i245, %bb.be
  %i.tx = getelementptr inbounds nuw [8 x i8], ptr %i.tb, i64 %i.sz
  br label %_ZNSt10unique_ptrIN4LIEF2PE18MsSpcStatementTypeESt14default_deleteIS2_EED2Ev.exit

_ZNSt10unique_ptrIN4LIEF2PE18MsSpcStatementTypeESt14default_deleteIS2_EED2Ev.exit: ; preds = %_ZNSt6vectorISt10unique_ptrIN4LIEF2PE9AttributeESt14default_deleteIS3_EESaIS6_EE17_M_realloc_insertIJS6_EEEvN9__gnu_cxx17__normal_iteratorIPS6_S8_EEDpOT_.exit248, %bb.bb, %bb.ay
  %.sroa.0567.11 = phi ptr [ %i.tb, %_ZNSt6vectorISt10unique_ptrIN4LIEF2PE9AttributeESt14default_deleteIS3_EESaIS6_EE17_M_realloc_insertIJS6_EEEvN9__gnu_cxx17__normal_iteratorIPS6_S8_EEDpOT_.exit248 ], [ %.sroa.0567.1, %bb.bb ], [ %.sroa.0567.1, %bb.ay ]
  %.sroa.30.11 = phi ptr [ %i.tw, %_ZNSt6vectorISt10unique_ptrIN4LIEF2PE9AttributeESt14default_deleteIS3_EESaIS6_EE17_M_realloc_insertIJS6_EEEvN9__gnu_cxx17__normal_iteratorIPS6_S8_EEDpOT_.exit248 ], [ %i.sq, %bb.bb ], [ %.sroa.30.1, %bb.ay ]
  %.sroa.75.11 = phi ptr [ %i.tx, %_ZNSt6vectorISt10unique_ptrIN4LIEF2PE9AttributeESt14default_deleteIS3_EESaIS6_EE17_M_realloc_insertIJS6_EEEvN9__gnu_cxx17__normal_iteratorIPS6_S8_EEDpOT_.exit248 ], [ %.sroa.75.1, %bb.bb ], [ %.sroa.75.1, %bb.ay ]
  %i.ty = load i8, ptr %i.r, align 8, !tbaa !101, !range !85, !noundef !86
  %i.tz = trunc nuw i8 %i.ty to i1
  br i1 %i.tz, label %bb.bf, label %_ZN2tl6detail21expected_storage_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE11lief_errorsLb0ELb1EED2Ev.exit

bb.bf:                                            ; preds = %_ZNSt10unique_ptrIN4LIEF2PE18MsSpcStatementTypeESt14default_deleteIS2_EED2Ev.exit
  %i.ua = load ptr, ptr %40, align 8, !tbaa !99   ; 2 uses
  %i.ub = icmp eq ptr %i.ua, %i.t
  br i1 %i.ub, label %_ZN2tl6detail21expected_storage_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE11lief_errorsLb0ELb1EED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i92

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i92: ; preds = %bb.bf
  %i.uc = load i64, ptr %i.t, align 8, !tbaa !93
  %i.ud = add i64 %i.uc, 1
  call void @_ZdlPvm(ptr noundef %i.ua, i64 noundef %i.ud) #26
  br label %_ZN2tl6detail21expected_storage_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE11lief_errorsLb0ELb1EED2Ev.exit

_ZN2tl6detail21expected_storage_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE11lief_errorsLb0ELb1EED2Ev.exit: ; preds = %bb.bf, %_ZNSt10unique_ptrIN4LIEF2PE18MsSpcStatementTypeESt14default_deleteIS2_EED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i92
  call void @llvm.lifetime.end.p0(ptr nonnull %40) #23
  br label %_ZNSt10unique_ptrIN4LIEF2PE21PKCS9AtSequenceNumberESt14default_deleteIS2_EED2Ev.exit

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit95: ; preds = %_ZNR2tl8expectedINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE11lief_errorsE5valueIS6_TnPNSt9enable_ifIXntsr3std7is_voidIT_EE5valueEvE4typeELPv0EEERSB_v.exit32
  %.pre351 = load ptr, ptr %31, align 8, !tbaa !99 ; 4 uses
  %i.ue = load i128, ptr %.pre351, align 1
  %i.uf = xor i128 %i.ue, 65372177682629931770666641137721290289
  %i.ug = getelementptr i8, ptr %.pre351, i64 7
  %i.uh = load i128, ptr %i.ug, align 1
  %i.ui = xor i128 %i.uh, 69359780379730784073239048289497723182
  %i.uj = or i128 %i.uf, %i.ui
  %i.uk = icmp ne i128 %i.uj, 0
  %i.ul = zext i1 %i.uk to i32
  %i.um = icmp eq i32 %i.ul, 0
  br i1 %i.um, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit95.thread, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit111

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit95.thread: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit95
  %i.un = call i64 @_ZN4LIEF2PE15SignatureParser30parse_pkcs9_at_sequence_numberERNS_12BinaryStreamE(ptr noundef nonnull align 8 dereferenceable(24) %32) ; 2 uses
  %.not321 = icmp samesign ult i64 %i.un, 4294967296
  br i1 %.not321, label %bb.bg, label %bb.bh

bb.bg:                                            ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit95.thread
  %i.uo = call noundef nonnull align 8 dereferenceable(16) ptr @_ZN4LIEF7logging6Logger8instanceEPKc(ptr noundef nonnull @.str.299) #23
  %i.up = load ptr, ptr %i.uo, align 8, !tbaa !62
  call void @llvm.lifetime.start.p0(ptr nonnull %11)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %11, i8 0, i64 24, i1 false)
  call void @_ZN6spdlog6logger4log_IJEEEvNS_10source_locENS_5level10level_enumEN3fmt3v1217basic_string_viewIcEEDpOT_(ptr noundef nonnull align 8 dereferenceable(208) %i.up, ptr noundef nonnull byval(%"struct.spdlog::source_loc") align 8 %11, i32 noundef 2, ptr nonnull @.str.90, i64 49)
  call void @llvm.lifetime.end.p0(ptr nonnull %11)
  br label %_ZNSt10unique_ptrIN4LIEF2PE21PKCS9AtSequenceNumberESt14default_deleteIS2_EED2Ev.exit

bb.bh:                                            ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit95.thread
  %i.uq = call noalias noundef nonnull dereferenceable(16) ptr @_Znwm(i64 noundef 16) #25, !noalias !592 ; 6 uses
  %.sroa.0273.0.extract.trunc = trunc i64 %i.un to i32
  call void @_ZN4LIEF6ObjectC2Ev(ptr noundef nonnull align 8 dereferenceable(16) %i.uq) #23, !noalias !592
  %i.ur = getelementptr inbounds nuw i8, ptr %i.uq, i64 8
  store i32 10, ptr %i.ur, align 8, !tbaa !184, !noalias !592
  store ptr getelementptr inbounds nuw inrange(-16, 64) (i8, ptr @_ZTVN4LIEF2PE21PKCS9AtSequenceNumberE, i64 16), ptr %i.uq, align 8, !tbaa !53, !noalias !592
  %i.us = getelementptr inbounds nuw i8, ptr %i.uq, i64 12
  store i32 %.sroa.0273.0.extract.trunc, ptr %i.us, align 4, !tbaa !594, !noalias !592
  %.not.i.i96 = icmp eq ptr %.sroa.30.1, %.sroa.75.1
  br i1 %.not.i.i96, label %bb.bj, label %bb.bi

bb.bi:                                            ; preds = %bb.bh
  %i.ut = ptrtoint ptr %i.uq to i64
  store i64 %i.ut, ptr %.sroa.30.1, align 8, !tbaa !169
  %i.uu = getelementptr inbounds nuw i8, ptr %.sroa.30.1, i64 8
  br label %_ZNSt10unique_ptrIN4LIEF2PE21PKCS9AtSequenceNumberESt14default_deleteIS2_EED2Ev.exit

bb.bj:                                            ; preds = %bb.bh
  %i.uv = ptrtoint ptr %.sroa.30.1 to i64
  %i.uw = ptrtoint ptr %.sroa.0567.1 to i64
  %i.ux = sub i64 %i.uv, %i.uw                    ; 4 uses
  %i.uy = icmp eq i64 %i.ux, 9223372036854775800
  br i1 %i.uy, label %bb.bk, label %_ZNKSt6vectorISt10unique_ptrIN4LIEF2PE9AttributeESt14default_deleteIS3_EESaIS6_EE12_M_check_lenEmPKc.exit.i249

bb.bk:                                            ; preds = %bb.bj
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.197) #24
  unreachable

_ZNKSt6vectorISt10unique_ptrIN4LIEF2PE9AttributeESt14default_deleteIS3_EESaIS6_EE12_M_check_lenEmPKc.exit.i249: ; preds = %bb.bj
  %i.uz = ashr exact i64 %i.ux, 3                 ; 3 uses
  %.sroa.speculated.i.i250 = call i64 @llvm.umax.i64(i64 %i.uz, i64 1)
  %i.va = add nsw i64 %.sroa.speculated.i.i250, %i.uz ; 2 uses
  %i.vb = icmp ult i64 %i.va, %i.uz
  %i.vc = call i64 @llvm.umin.i64(i64 %i.va, i64 1152921504606846975)
  %i.vd = select i1 %i.vb, i64 1152921504606846975, i64 %i.vc ; 3 uses
  %.not.i.i251 = icmp ne i64 %i.vd, 0
  call void @llvm.assume(i1 %.not.i.i251)
  %i.ve = shl nuw nsw i64 %i.vd, 3
  %i.vf = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ve) #25 ; 10 uses
  %i.vg = getelementptr inbounds nuw i8, ptr %i.vf, i64 %i.ux
  %i.vh = ptrtoint ptr %i.uq to i64
  store i64 %i.vh, ptr %i.vg, align 8, !tbaa !169
  %.not10.i.i.i.i252 = icmp eq ptr %.sroa.0567.1, %.sroa.30.1
  br i1 %.not10.i.i.i.i252, label %_ZNSt6vectorISt10unique_ptrIN4LIEF2PE9AttributeESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit22.i264, label %.lr.ph.i.i.i.i253.preheader

.lr.ph.i.i.i.i253.preheader:                      ; preds = %_ZNKSt6vectorISt10unique_ptrIN4LIEF2PE9AttributeESt14default_deleteIS3_EESaIS6_EE12_M_check_lenEmPKc.exit.i249
  %i.vi = add i64 %.sroa.30.11232, -8
  %i.vj = sub i64 %i.vi, %.sroa.0567.11233        ; 3 uses
  %i.vk = lshr i64 %i.vj, 3
  %i.vl = add nuw nsw i64 %i.vk, 1                ; 2 uses
  %min.iters.check1479 = icmp ult i64 %i.vj, 56
  br i1 %min.iters.check1479, label %.lr.ph.i.i.i.i253.preheader1558, label %vector.memcheck1480

vector.memcheck1480:                              ; preds = %.lr.ph.i.i.i.i253.preheader
  %i.vm = and i64 %i.vj, -8
  %i.vn = add i64 %i.vm, 8                        ; 2 uses
  %i.vo = getelementptr i8, ptr %i.vf, i64 %i.vn
  %i.vp = getelementptr i8, ptr %.sroa.0567.1, i64 %i.vn
  %bound01481 = icmp ult ptr %i.vf, %i.vp
  %bound11482 = icmp ult ptr %.sroa.0567.1, %i.vo
  %found.conflict1483 = and i1 %bound01481, %bound11482
  br i1 %found.conflict1483, label %.lr.ph.i.i.i.i253.preheader1558, label %vector.ph1484

vector.ph1484:                                    ; preds = %vector.memcheck1480
  %n.vec1485 = and i64 %i.vl, 4611686018427387900 ; 3 uses
  %i.vq = shl i64 %n.vec1485, 3                   ; 2 uses
  %i.vr = getelementptr i8, ptr %i.vf, i64 %i.vq  ; 2 uses
  %i.vs = getelementptr i8, ptr %.sroa.0567.1, i64 %i.vq
  br label %vector.body1486

vector.body1486:                                  ; preds = %vector.body1486, %vector.ph1484
  %index1487 = phi i64 [ 0, %vector.ph1484 ], [ %index.next1492, %vector.body1486 ] ; 2 uses
  %i.vt = shl i64 %index1487, 3                   ; 2 uses
  %next.gep1488 = getelementptr i8, ptr %i.vf, i64 %i.vt ; 2 uses
  %next.gep1489 = getelementptr i8, ptr %.sroa.0567.1, i64 %i.vt ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !595)
  call void @llvm.experimental.noalias.scope.decl(metadata !596)
  %i.vu = getelementptr i8, ptr %next.gep1489, i64 16
  %wide.load1490 = load <2 x i64>, ptr %next.gep1489, align 8, !tbaa !169, !alias.scope !597
  %wide.load1491 = load <2 x i64>, ptr %i.vu, align 8, !tbaa !169, !alias.scope !597
  %i.vv = getelementptr i8, ptr %next.gep1488, i64 16
  store <2 x i64> %wide.load1490, ptr %next.gep1488, align 8, !tbaa !169, !alias.scope !598, !noalias !599
  store <2 x i64> %wide.load1491, ptr %i.vv, align 8, !tbaa !169, !alias.scope !598, !noalias !599
  %51 = getelementptr i8, ptr %next.gep1489, i64 16
  store <2 x ptr> splat (ptr null), ptr %next.gep1489, align 8, !tbaa !169, !alias.scope !597
  store <2 x ptr> splat (ptr null), ptr %51, align 8, !tbaa !169, !alias.scope !597
  %index.next1492 = add nuw i64 %index1487, 4     ; 2 uses
  %i.vw = icmp eq i64 %index.next1492, %n.vec1485
  br i1 %i.vw, label %middle.block1493, label %vector.body1486, !llvm.loop !503

middle.block1493:                                 ; preds = %vector.body1486
  %cmp.n1494 = icmp eq i64 %i.vl, %n.vec1485
  br i1 %cmp.n1494, label %_ZNSt6vectorISt10unique_ptrIN4LIEF2PE9AttributeESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit22.i264, label %.lr.ph.i.i.i.i253.preheader1558

.lr.ph.i.i.i.i253.preheader1558:                  ; preds = %vector.memcheck1480, %.lr.ph.i.i.i.i253.preheader, %middle.block1493
  %.012.i.i.i.i254.ph = phi ptr [ %i.vf, %vector.memcheck1480 ], [ %i.vf, %.lr.ph.i.i.i.i253.preheader ], [ %i.vr, %middle.block1493 ]
  %.0911.i.i.i.i255.ph = phi ptr [ %.sroa.0567.1, %vector.memcheck1480 ], [ %.sroa.0567.1, %.lr.ph.i.i.i.i253.preheader ], [ %i.vs, %middle.block1493 ]
  br label %.lr.ph.i.i.i.i253

.lr.ph.i.i.i.i253:                                ; preds = %.lr.ph.i.i.i.i253.preheader1558, %.lr.ph.i.i.i.i253
  %.012.i.i.i.i254 = phi ptr [ %i.vz, %.lr.ph.i.i.i.i253 ], [ %.012.i.i.i.i254.ph, %.lr.ph.i.i.i.i253.preheader1558 ] ; 2 uses
  %.0911.i.i.i.i255 = phi ptr [ %i.vy, %.lr.ph.i.i.i.i253 ], [ %.0911.i.i.i.i255.ph, %.lr.ph.i.i.i.i253.preheader1558 ] ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !595)
  call void @llvm.experimental.noalias.scope.decl(metadata !596)
  %i.vx = load i64, ptr %.0911.i.i.i.i255, align 8, !tbaa !169, !alias.scope !596
  store i64 %i.vx, ptr %.012.i.i.i.i254, align 8, !tbaa !169, !alias.scope !595
  store ptr null, ptr %.0911.i.i.i.i255, align 8, !tbaa !169, !alias.scope !596
  %i.vy = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i255, i64 8 ; 2 uses
  %i.vz = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i254, i64 8 ; 2 uses
  %.not.i.i.i.i256 = icmp eq ptr %i.vy, %.sroa.30.1
  br i1 %.not.i.i.i.i256, label %_ZNSt6vectorISt10unique_ptrIN4LIEF2PE9AttributeESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit22.i264, label %.lr.ph.i.i.i.i253, !llvm.loop !504

_ZNSt6vectorISt10unique_ptrIN4LIEF2PE9AttributeESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit22.i264: ; preds = %.lr.ph.i.i.i.i253, %middle.block1493, %_ZNKSt6vectorISt10unique_ptrIN4LIEF2PE9AttributeESt14default_deleteIS3_EESaIS6_EE12_M_check_lenEmPKc.exit.i249
  %.0.lcssa.i.i.i.i258 = phi ptr [ %i.vf, %_ZNKSt6vectorISt10unique_ptrIN4LIEF2PE9AttributeESt14default_deleteIS3_EESaIS6_EE12_M_check_lenEmPKc.exit.i249 ], [ %i.vr, %middle.block1493 ], [ %i.vz, %.lr.ph.i.i.i.i253 ]
  %i.wa = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i258, i64 8
  %.not.i23.i266 = icmp eq ptr %.sroa.0567.1, null
  br i1 %.not.i23.i266, label %_ZNSt6vectorISt10unique_ptrIN4LIEF2PE9AttributeESt14default_deleteIS3_EESaIS6_EE17_M_realloc_insertIJS6_EEEvN9__gnu_cxx17__normal_iteratorIPS6_S8_EEDpOT_.exit267, label %bb.bl

bb.bl:                                            ; preds = %_ZNSt6vectorISt10unique_ptrIN4LIEF2PE9AttributeESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit22.i264
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0567.1, i64 noundef %i.ux) #26
  br label %_ZNSt6vectorISt10unique_ptrIN4LIEF2PE9AttributeESt14default_deleteIS3_EESaIS6_EE17_M_realloc_insertIJS6_EEEvN9__gnu_cxx17__normal_iteratorIPS6_S8_EEDpOT_.exit267

_ZNSt6vectorISt10unique_ptrIN4LIEF2PE9AttributeESt14default_deleteIS3_EESaIS6_EE17_M_realloc_insertIJS6_EEEvN9__gnu_cxx17__normal_iteratorIPS6_S8_EEDpOT_.exit267: ; preds = %_ZNSt6vectorISt10unique_ptrIN4LIEF2PE9AttributeESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit22.i264, %bb.bl
  %i.wb = getelementptr inbounds nuw [8 x i8], ptr %i.vf, i64 %i.vd
  br label %_ZNSt10unique_ptrIN4LIEF2PE21PKCS9AtSequenceNumberESt14default_deleteIS2_EED2Ev.exit

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit103: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit68
  %i.wc = load i128, ptr %i.cg, align 1
  %i.wd = xor i128 %i.wc, 65372177682629931770666641137721290289
  %i.we = getelementptr i8, ptr %i.cg, i64 16
  %i.wf = load i32, ptr %i.we, align 1
  %i.wg = zext i32 %i.wf to i128
  %i.wh = xor i128 %i.wg, 892221742
  %i.wi = or i128 %i.wd, %i.wh
  %i.wj = icmp ne i128 %i.wi, 0
  %i.wk = zext i1 %i.wj to i32
  %i.wl = icmp eq i32 %i.wk, 0
  br i1 %i.wl, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit103.thread, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit474.thread625

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit103.thread: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit103
  call void @_ZN4LIEF2PE15SignatureParser24parse_pkcs9_signing_timeERNS_12BinaryStreamE(ptr dead_on_unwind nonnull writable sret(%"class.LIEF::result.471") align 4 %9, ptr noundef nonnull align 8 dereferenceable(24) %32)
  %i.wm = load i8, ptr %i.q, align 8, !range !85, !noundef !86
  %i.wn = trunc nuw i8 %i.wm to i1
  br i1 %i.wn, label %bb.bn, label %bb.bm

bb.bm:                                            ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit103.thread
  %i.wo = call noundef nonnull align 8 dereferenceable(16) ptr @_ZN4LIEF7logging6Logger8instanceEPKc(ptr noundef nonnull @.str.299) #23
  %i.wp = load ptr, ptr %i.wo, align 8, !tbaa !62
  call void @llvm.lifetime.start.p0(ptr nonnull %10)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %10, i8 0, i64 24, i1 false)
  call void @_ZN6spdlog6logger4log_IJEEEvNS_10source_locENS_5level10level_enumEN3fmt3v1217basic_string_viewIcEEDpOT_(ptr noundef nonnull align 8 dereferenceable(208) %i.wp, ptr noundef nonnull byval(%"struct.spdlog::source_loc") align 8 %10, i32 noundef 2, ptr nonnull @.str.92, i64 44)
  call void @llvm.lifetime.end.p0(ptr nonnull %10)
  br label %_ZNSt10unique_ptrIN4LIEF2PE21PKCS9AtSequenceNumberESt14default_deleteIS2_EED2Ev.exit

bb.bn:                                            ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit103.thread
  %i.wq = call noalias noundef nonnull dereferenceable(40) ptr @_Znwm(i64 noundef 40) #25, !noalias !600 ; 6 uses
  call void @_ZN4LIEF6ObjectC2Ev(ptr noundef nonnull align 8 dereferenceable(36) %i.wq) #23, !noalias !600
  %i.wr = getelementptr inbounds nuw i8, ptr %i.wq, i64 8
  store i32 13, ptr %i.wr, align 8, !tbaa !184, !noalias !600
  store ptr getelementptr inbounds nuw inrange(-16, 64) (i8, ptr @_ZTVN4LIEF2PE16PKCS9SigningTimeE, i64 16), ptr %i.wq, align 8, !tbaa !53, !noalias !600
  %i.ws = getelementptr inbounds nuw i8, ptr %i.wq, i64 12
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(24) %i.ws, ptr noundef nonnull align 8 dereferenceable(24) %9, i64 24, i1 false)
  %.not.i.i104 = icmp eq ptr %.sroa.30.1, %.sroa.75.1
  br i1 %.not.i.i104, label %_ZNSt6vectorISt10unique_ptrIN4LIEF2PE9AttributeESt14default_deleteIS3_EESaIS6_EE9push_backEOS6_.exit105, label %_ZNSt6vectorISt10unique_ptrIN4LIEF2PE9AttributeESt14default_deleteIS3_EESaIS6_EE9push_backEOS6_.exit105.thread

_ZNSt6vectorISt10unique_ptrIN4LIEF2PE9AttributeESt14default_deleteIS3_EESaIS6_EE9push_backEOS6_.exit105.thread: ; preds = %bb.bn
  %i.wt = ptrtoint ptr %i.wq to i64
  store i64 %i.wt, ptr %.sroa.30.1, align 8, !tbaa !169
  %i.wu = getelementptr inbounds nuw i8, ptr %.sroa.30.1, i64 8
  br label %_ZNSt10unique_ptrIN4LIEF2PE21PKCS9AtSequenceNumberESt14default_deleteIS2_EED2Ev.exit

_ZNSt6vectorISt10unique_ptrIN4LIEF2PE9AttributeESt14default_deleteIS3_EESaIS6_EE9push_backEOS6_.exit105: ; preds = %bb.bn
  %i.wv = ptrtoint ptr %.sroa.30.1 to i64
  %i.ww = ptrtoint ptr %.sroa.0567.1 to i64
  %i.wx = sub i64 %i.wv, %i.ww                    ; 4 uses
  %i.wy = icmp eq i64 %i.wx, 9223372036854775800
  br i1 %i.wy, label %bb.bo, label %_ZNKSt6vectorISt10unique_ptrIN4LIEF2PE9AttributeESt14default_deleteIS3_EESaIS6_EE12_M_check_lenEmPKc.exit.i458

bb.bo:                                            ; preds = %_ZNSt6vectorISt10unique_ptrIN4LIEF2PE9AttributeESt14default_deleteIS3_EESaIS6_EE9push_backEOS6_.exit105
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.197) #24
  unreachable

_ZNKSt6vectorISt10unique_ptrIN4LIEF2PE9AttributeESt14default_deleteIS3_EESaIS6_EE12_M_check_lenEmPKc.exit.i458: ; preds = %_ZNSt6vectorISt10unique_ptrIN4LIEF2PE9AttributeESt14default_deleteIS3_EESaIS6_EE9push_backEOS6_.exit105
  %i.wz = ashr exact i64 %i.wx, 3                 ; 3 uses
  %.sroa.speculated.i.i459 = call i64 @llvm.umax.i64(i64 %i.wz, i64 1)
  %i.xa = add nsw i64 %.sroa.speculated.i.i459, %i.wz ; 2 uses
  %i.xb = icmp ult i64 %i.xa, %i.wz
  %i.xc = call i64 @llvm.umin.i64(i64 %i.xa, i64 1152921504606846975)
  %i.xd = select i1 %i.xb, i64 1152921504606846975, i64 %i.xc ; 3 uses
  %.not.i.i460 = icmp ne i64 %i.xd, 0
  call void @llvm.assume(i1 %.not.i.i460)
  %i.xe = shl nuw nsw i64 %i.xd, 3
  %i.xf = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.xe) #25 ; 10 uses
  %i.xg = getelementptr inbounds nuw i8, ptr %i.xf, i64 %i.wx
  %i.xh = ptrtoint ptr %i.wq to i64
  store i64 %i.xh, ptr %i.xg, align 8, !tbaa !169
  %.not10.i.i.i.i461 = icmp eq ptr %.sroa.0567.1, %.sroa.30.1
  br i1 %.not10.i.i.i.i461, label %_ZNSt6vectorISt10unique_ptrIN4LIEF2PE9AttributeESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit22.i467, label %.lr.ph.i.i.i.i462.preheader

.lr.ph.i.i.i.i462.preheader:                      ; preds = %_ZNKSt6vectorISt10unique_ptrIN4LIEF2PE9AttributeESt14default_deleteIS3_EESaIS6_EE12_M_check_lenEmPKc.exit.i458
  %i.xi = add i64 %.sroa.30.11232, -8
  %i.xj = sub i64 %i.xi, %.sroa.0567.11233        ; 3 uses
  %i.xk = lshr i64 %i.xj, 3
  %i.xl = add nuw nsw i64 %i.xk, 1                ; 2 uses
  %min.iters.check1323 = icmp ult i64 %i.xj, 56
  br i1 %min.iters.check1323, label %.lr.ph.i.i.i.i462.preheader1552, label %vector.memcheck1324

vector.memcheck1324:                              ; preds = %.lr.ph.i.i.i.i462.preheader
  %i.xm = and i64 %i.xj, -8
  %i.xn = add i64 %i.xm, 8                        ; 2 uses
  %i.xo = getelementptr i8, ptr %i.xf, i64 %i.xn
  %i.xp = getelementptr i8, ptr %.sroa.0567.1, i64 %i.xn
  %bound01325 = icmp ult ptr %i.xf, %i.xp
  %bound11326 = icmp ult ptr %.sroa.0567.1, %i.xo
  %found.conflict1327 = and i1 %bound01325, %bound11326
  br i1 %found.conflict1327, label %.lr.ph.i.i.i.i462.preheader1552, label %vector.ph1328

vector.ph1328:                                    ; preds = %vector.memcheck1324
  %n.vec1329 = and i64 %i.xl, 4611686018427387900 ; 3 uses
  %i.xq = shl i64 %n.vec1329, 3                   ; 2 uses
  %i.xr = getelementptr i8, ptr %i.xf, i64 %i.xq  ; 2 uses
  %i.xs = getelementptr i8, ptr %.sroa.0567.1, i64 %i.xq
  br label %vector.body1330

vector.body1330:                                  ; preds = %vector.body1330, %vector.ph1328
  %index1331 = phi i64 [ 0, %vector.ph1328 ], [ %index.next1336, %vector.body1330 ] ; 2 uses
  %i.xt = shl i64 %index1331, 3                   ; 2 uses
  %next.gep1332 = getelementptr i8, ptr %i.xf, i64 %i.xt ; 2 uses
  %next.gep1333 = getelementptr i8, ptr %.sroa.0567.1, i64 %i.xt ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !601)
  call void @llvm.experimental.noalias.scope.decl(metadata !602)
  %i.xu = getelementptr i8, ptr %next.gep1333, i64 16
  %wide.load1334 = load <2 x i64>, ptr %next.gep1333, align 8, !tbaa !169, !alias.scope !603
  %wide.load1335 = load <2 x i64>, ptr %i.xu, align 8, !tbaa !169, !alias.scope !603
  %i.xv = getelementptr i8, ptr %next.gep1332, i64 16
  store <2 x i64> %wide.load1334, ptr %next.gep1332, align 8, !tbaa !169, !alias.scope !604, !noalias !605
  store <2 x i64> %wide.load1335, ptr %i.xv, align 8, !tbaa !169, !alias.scope !604, !noalias !605
  %52 = getelementptr i8, ptr %next.gep1333, i64 16
  store <2 x ptr> splat (ptr null), ptr %next.gep1333, align 8, !tbaa !169, !alias.scope !603
  store <2 x ptr> splat (ptr null), ptr %52, align 8, !tbaa !169, !alias.scope !603
  %index.next1336 = add nuw i64 %index1331, 4     ; 2 uses
  %i.xw = icmp eq i64 %index.next1336, %n.vec1329
  br i1 %i.xw, label %middle.block1337, label %vector.body1330, !llvm.loop !513

middle.block1337:                                 ; preds = %vector.body1330
  %cmp.n1338 = icmp eq i64 %i.xl, %n.vec1329
  br i1 %cmp.n1338, label %_ZNSt6vectorISt10unique_ptrIN4LIEF2PE9AttributeESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit22.i467, label %.lr.ph.i.i.i.i462.preheader1552

.lr.ph.i.i.i.i462.preheader1552:                  ; preds = %vector.memcheck1324, %.lr.ph.i.i.i.i462.preheader, %middle.block1337
  %.012.i.i.i.i463.ph = phi ptr [ %i.xf, %vector.memcheck1324 ], [ %i.xf, %.lr.ph.i.i.i.i462.preheader ], [ %i.xr, %middle.block1337 ]
  %.0911.i.i.i.i464.ph = phi ptr [ %.sroa.0567.1, %vector.memcheck1324 ], [ %.sroa.0567.1, %.lr.ph.i.i.i.i462.preheader ], [ %i.xs, %middle.block1337 ]
  br label %.lr.ph.i.i.i.i462

.lr.ph.i.i.i.i462:                                ; preds = %.lr.ph.i.i.i.i462.preheader1552, %.lr.ph.i.i.i.i462
  %.012.i.i.i.i463 = phi ptr [ %i.xz, %.lr.ph.i.i.i.i462 ], [ %.012.i.i.i.i463.ph, %.lr.ph.i.i.i.i462.preheader1552 ] ; 2 uses
  %.0911.i.i.i.i464 = phi ptr [ %i.xy, %.lr.ph.i.i.i.i462 ], [ %.0911.i.i.i.i464.ph, %.lr.ph.i.i.i.i462.preheader1552 ] ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !601)
  call void @llvm.experimental.noalias.scope.decl(metadata !602)
  %i.xx = load i64, ptr %.0911.i.i.i.i464, align 8, !tbaa !169, !alias.scope !602
  store i64 %i.xx, ptr %.012.i.i.i.i463, align 8, !tbaa !169, !alias.scope !601
  store ptr null, ptr %.0911.i.i.i.i464, align 8, !tbaa !169, !alias.scope !602
  %i.xy = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i464, i64 8 ; 2 uses
  %i.xz = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i463, i64 8 ; 2 uses
  %.not.i.i.i.i465 = icmp eq ptr %i.xy, %.sroa.30.1
  br i1 %.not.i.i.i.i465, label %_ZNSt6vectorISt10unique_ptrIN4LIEF2PE9AttributeESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit22.i467, label %.lr.ph.i.i.i.i462, !llvm.loop !514

_ZNSt6vectorISt10unique_ptrIN4LIEF2PE9AttributeESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit22.i467: ; preds = %.lr.ph.i.i.i.i462, %middle.block1337, %_ZNKSt6vectorISt10unique_ptrIN4LIEF2PE9AttributeESt14default_deleteIS3_EESaIS6_EE12_M_check_lenEmPKc.exit.i458
  %.0.lcssa.i.i.i.i466 = phi ptr [ %i.xf, %_ZNKSt6vectorISt10unique_ptrIN4LIEF2PE9AttributeESt14default_deleteIS3_EESaIS6_EE12_M_check_lenEmPKc.exit.i458 ], [ %i.xr, %middle.block1337 ], [ %i.xz, %.lr.ph.i.i.i.i462 ]
  %i.ya = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i466, i64 8
  %.not.i23.i468 = icmp eq ptr %.sroa.0567.1, null
  br i1 %.not.i23.i468, label %_ZNSt6vectorISt10unique_ptrIN4LIEF2PE9AttributeESt14default_deleteIS3_EESaIS6_EE17_M_realloc_insertIJS6_EEEvN9__gnu_cxx17__normal_iteratorIPS6_S8_EEDpOT_.exit, label %bb.bp

bb.bp:                                            ; preds = %_ZNSt6vectorISt10unique_ptrIN4LIEF2PE9AttributeESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit22.i467
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0567.1, i64 noundef %i.wx) #26
  br label %_ZNSt6vectorISt10unique_ptrIN4LIEF2PE9AttributeESt14default_deleteIS3_EESaIS6_EE17_M_realloc_insertIJS6_EEEvN9__gnu_cxx17__normal_iteratorIPS6_S8_EEDpOT_.exit

_ZNSt6vectorISt10unique_ptrIN4LIEF2PE9AttributeESt14default_deleteIS3_EESaIS6_EE17_M_realloc_insertIJS6_EEEvN9__gnu_cxx17__normal_iteratorIPS6_S8_EEDpOT_.exit: ; preds = %_ZNSt6vectorISt10unique_ptrIN4LIEF2PE9AttributeESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit22.i467, %bb.bp
  %i.yb = getelementptr inbounds nuw [8 x i8], ptr %i.xf, i64 %i.xd
  br label %_ZNSt10unique_ptrIN4LIEF2PE21PKCS9AtSequenceNumberESt14default_deleteIS2_EED2Ev.exit

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit111: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit95
  %i.yc = load i128, ptr %.pre351, align 1
  %i.yd = xor i128 %i.yc, 61399908245176969875065496016400887345
  %i.ye = getelementptr i8, ptr %.pre351, i64 7
  %i.yf = load i128, ptr %i.ye, align 1
  %i.yg = xor i128 %i.yf, 74697319652654657607536373056645510190
  %i.yh = or i128 %i.yd, %i.yg
  %i.yi = icmp ne i128 %i.yh, 0
  %i.yj = zext i1 %i.yi to i32
  %i.yk = icmp eq i32 %i.yj, 0
  br i1 %i.yk, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit111.thread, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit474.thread625

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit111.thread: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit111
  call void @llvm.lifetime.start.p0(ptr nonnull %41) #23
  call void @_ZN4LIEF2PE15SignatureParser36parse_ms_platform_manifest_binary_idERNS_12BinaryStreamE(ptr dead_on_unwind nonnull writable sret(%"class.LIEF::result.373") align 8 %41, ptr noundef nonnull align 8 dereferenceable(24) %32)
  %i.yl = load i8, ptr %i.p, align 8, !tbaa !177, !range !85, !noundef !86
  %i.ym = trunc nuw i8 %i.yl to i1
  br i1 %i.ym, label %bb.bq, label %_ZNSt6vectorISt10unique_ptrIN4LIEF2PE9AttributeESt14default_deleteIS3_EESaIS6_EE9push_backEOS6_.exit470.thread944

bb.bq:                                            ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit111.thread
  %.not.i.i469 = icmp eq ptr %.sroa.30.1, %.sroa.75.1
  br i1 %.not.i.i469, label %bb.br, label %.thread950

.thread950:                                       ; preds = %bb.bq
  %i.yn = load i64, ptr %41, align 8, !tbaa !169
  store i64 %i.yn, ptr %.sroa.30.1, align 8, !tbaa !169
  %i.yo = getelementptr inbounds nuw i8, ptr %.sroa.30.1, i64 8
  br label %_ZN2tl6detail21expected_storage_baseISt10unique_ptrIN4LIEF2PE9AttributeESt14default_deleteIS5_EE11lief_errorsLb0ELb1EED2Ev.exit114

bb.br:                                            ; preds = %bb.bq
  %i.yp = ptrtoint ptr %.sroa.30.1 to i64
  %i.yq = ptrtoint ptr %.sroa.0567.1 to i64
  %i.yr = sub i64 %i.yp, %i.yq                    ; 4 uses
  %i.ys = icmp eq i64 %i.yr, 9223372036854775800
  br i1 %i.ys, label %bb.bs, label %_ZNKSt6vectorISt10unique_ptrIN4LIEF2PE9AttributeESt14default_deleteIS3_EESaIS6_EE12_M_check_lenEmPKc.exit.i484

bb.bs:                                            ; preds = %bb.br
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.197) #24
  unreachable

_ZNKSt6vectorISt10unique_ptrIN4LIEF2PE9AttributeESt14default_deleteIS3_EESaIS6_EE12_M_check_lenEmPKc.exit.i484: ; preds = %bb.br
  %i.yt = ashr exact i64 %i.yr, 3                 ; 3 uses
  %.sroa.speculated.i.i485 = call i64 @llvm.umax.i64(i64 %i.yt, i64 1)
  %i.yu = add nsw i64 %.sroa.speculated.i.i485, %i.yt ; 2 uses
  %i.yv = icmp ult i64 %i.yu, %i.yt
  %i.yw = call i64 @llvm.umin.i64(i64 %i.yu, i64 1152921504606846975)
  %i.yx = select i1 %i.yv, i64 1152921504606846975, i64 %i.yw ; 4 uses
  %.not.i.i486 = icmp ne i64 %i.yx, 0
  call void @llvm.assume(i1 %.not.i.i486)
  %i.yy = shl nuw nsw i64 %i.yx, 3
  %i.yz = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.yy) #25 ; 13 uses
  %i.za = getelementptr inbounds nuw i8, ptr %i.yz, i64 %i.yr
  %i.zb = load i64, ptr %41, align 8, !tbaa !169
  store i64 %i.zb, ptr %i.za, align 8, !tbaa !169
  store ptr null, ptr %41, align 8, !tbaa !169
  %.not10.i.i.i.i487 = icmp eq ptr %.sroa.0567.1, %.sroa.30.1
  br i1 %.not10.i.i.i.i487, label %_ZNSt6vectorISt10unique_ptrIN4LIEF2PE9AttributeESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit22.i499, label %.lr.ph.i.i.i.i488.preheader

.lr.ph.i.i.i.i488.preheader:                      ; preds = %_ZNKSt6vectorISt10unique_ptrIN4LIEF2PE9AttributeESt14default_deleteIS3_EESaIS6_EE12_M_check_lenEmPKc.exit.i484
  %i.zc = add i64 %.sroa.30.11232, -8
  %i.zd = sub i64 %i.zc, %.sroa.0567.11233        ; 3 uses
  %i.ze = lshr i64 %i.zd, 3
  %i.zf = add nuw nsw i64 %i.ze, 1                ; 2 uses
  %min.iters.check1505 = icmp ult i64 %i.zd, 56
  br i1 %min.iters.check1505, label %.lr.ph.i.i.i.i488.preheader1559, label %vector.memcheck1506

vector.memcheck1506:                              ; preds = %.lr.ph.i.i.i.i488.preheader
  %i.zg = and i64 %i.zd, -8
  %i.zh = add i64 %i.zg, 8                        ; 2 uses
  %i.zi = getelementptr i8, ptr %i.yz, i64 %i.zh
  %i.zj = getelementptr i8, ptr %.sroa.0567.1, i64 %i.zh
  %bound01507 = icmp ult ptr %i.yz, %i.zj
  %bound11508 = icmp ult ptr %.sroa.0567.1, %i.zi
  %found.conflict1509 = and i1 %bound01507, %bound11508
  br i1 %found.conflict1509, label %.lr.ph.i.i.i.i488.preheader1559, label %vector.ph1510

vector.ph1510:                                    ; preds = %vector.memcheck1506
  %n.vec1511 = and i64 %i.zf, 4611686018427387900 ; 3 uses
  %i.zk = shl i64 %n.vec1511, 3                   ; 2 uses
  %i.zl = getelementptr i8, ptr %i.yz, i64 %i.zk  ; 2 uses
  %i.zm = getelementptr i8, ptr %.sroa.0567.1, i64 %i.zk
  br label %vector.body1512

vector.body1512:                                  ; preds = %vector.body1512, %vector.ph1510
  %index1513 = phi i64 [ 0, %vector.ph1510 ], [ %index.next1518, %vector.body1512 ] ; 2 uses
  %i.zn = shl i64 %index1513, 3                   ; 2 uses
  %next.gep1514 = getelementptr i8, ptr %i.yz, i64 %i.zn ; 2 uses
  %next.gep1515 = getelementptr i8, ptr %.sroa.0567.1, i64 %i.zn ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !606)
  call void @llvm.experimental.noalias.scope.decl(metadata !607)
  %i.zo = getelementptr i8, ptr %next.gep1515, i64 16
  %wide.load1516 = load <2 x i64>, ptr %next.gep1515, align 8, !tbaa !169, !alias.scope !608
  %wide.load1517 = load <2 x i64>, ptr %i.zo, align 8, !tbaa !169, !alias.scope !608
  %i.zp = getelementptr i8, ptr %next.gep1514, i64 16
  store <2 x i64> %wide.load1516, ptr %next.gep1514, align 8, !tbaa !169, !alias.scope !609, !noalias !610
  store <2 x i64> %wide.load1517, ptr %i.zp, align 8, !tbaa !169, !alias.scope !609, !noalias !610
  %53 = getelementptr i8, ptr %next.gep1515, i64 16
  store <2 x ptr> splat (ptr null), ptr %next.gep1515, align 8, !tbaa !169, !alias.scope !608
  store <2 x ptr> splat (ptr null), ptr %53, align 8, !tbaa !169, !alias.scope !608
  %index.next1518 = add nuw i64 %index1513, 4     ; 2 uses
  %i.zq = icmp eq i64 %index.next1518, %n.vec1511
  br i1 %i.zq, label %middle.block1519, label %vector.body1512, !llvm.loop !521

middle.block1519:                                 ; preds = %vector.body1512
  %cmp.n1520 = icmp eq i64 %i.zf, %n.vec1511
  br i1 %cmp.n1520, label %_ZNSt6vectorISt10unique_ptrIN4LIEF2PE9AttributeESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit22.i499, label %.lr.ph.i.i.i.i488.preheader1559

.lr.ph.i.i.i.i488.preheader1559:                  ; preds = %vector.memcheck1506, %.lr.ph.i.i.i.i488.preheader, %middle.block1519
  %.012.i.i.i.i489.ph = phi ptr [ %i.yz, %vector.memcheck1506 ], [ %i.yz, %.lr.ph.i.i.i.i488.preheader ], [ %i.zl, %middle.block1519 ]
  %.0911.i.i.i.i490.ph = phi ptr [ %.sroa.0567.1, %vector.memcheck1506 ], [ %.sroa.0567.1, %.lr.ph.i.i.i.i488.preheader ], [ %i.zm, %middle.block1519 ]
  br label %.lr.ph.i.i.i.i488

.lr.ph.i.i.i.i488:                                ; preds = %.lr.ph.i.i.i.i488.preheader1559, %.lr.ph.i.i.i.i488
  %.012.i.i.i.i489 = phi ptr [ %i.zt, %.lr.ph.i.i.i.i488 ], [ %.012.i.i.i.i489.ph, %.lr.ph.i.i.i.i488.preheader1559 ] ; 2 uses
  %.0911.i.i.i.i490 = phi ptr [ %i.zs, %.lr.ph.i.i.i.i488 ], [ %.0911.i.i.i.i490.ph, %.lr.ph.i.i.i.i488.preheader1559 ] ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !606)
  call void @llvm.experimental.noalias.scope.decl(metadata !607)
  %i.zr = load i64, ptr %.0911.i.i.i.i490, align 8, !tbaa !169, !alias.scope !607
  store i64 %i.zr, ptr %.012.i.i.i.i489, align 8, !tbaa !169, !alias.scope !606
  store ptr null, ptr %.0911.i.i.i.i490, align 8, !tbaa !169, !alias.scope !607
  %i.zs = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i490, i64 8 ; 2 uses
  %i.zt = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i489, i64 8 ; 2 uses
  %.not.i.i.i.i491 = icmp eq ptr %i.zs, %.sroa.30.1
  br i1 %.not.i.i.i.i491, label %_ZNSt6vectorISt10unique_ptrIN4LIEF2PE9AttributeESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit22.i499, label %.lr.ph.i.i.i.i488, !llvm.loop !522

_ZNSt6vectorISt10unique_ptrIN4LIEF2PE9AttributeESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit22.i499: ; preds = %.lr.ph.i.i.i.i488, %middle.block1519, %_ZNKSt6vectorISt10unique_ptrIN4LIEF2PE9AttributeESt14default_deleteIS3_EESaIS6_EE12_M_check_lenEmPKc.exit.i484
  %.0.lcssa.i.i.i.i493 = phi ptr [ %i.yz, %_ZNKSt6vectorISt10unique_ptrIN4LIEF2PE9AttributeESt14default_deleteIS3_EESaIS6_EE12_M_check_lenEmPKc.exit.i484 ], [ %i.zl, %middle.block1519 ], [ %i.zt, %.lr.ph.i.i.i.i488 ]
  %i.zu = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i493, i64 8 ; 3 uses
  %.not.i23.i501 = icmp eq ptr %.sroa.0567.1, null
  br i1 %.not.i23.i501, label %_ZNSt6vectorISt10unique_ptrIN4LIEF2PE9AttributeESt14default_deleteIS3_EESaIS6_EE9push_backEOS6_.exit470.thread948, label %_ZNSt6vectorISt10unique_ptrIN4LIEF2PE9AttributeESt14default_deleteIS3_EESaIS6_EE9push_backEOS6_.exit470

_ZNSt6vectorISt10unique_ptrIN4LIEF2PE9AttributeESt14default_deleteIS3_EESaIS6_EE9push_backEOS6_.exit470.thread948: ; preds = %_ZNSt6vectorISt10unique_ptrIN4LIEF2PE9AttributeESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit22.i499
  %i.zv = getelementptr inbounds nuw [8 x i8], ptr %i.yz, i64 %i.yx
  br label %bb.bt

_ZNSt6vectorISt10unique_ptrIN4LIEF2PE9AttributeESt14default_deleteIS3_EESaIS6_EE9push_backEOS6_.exit470.thread944: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit111.thread
  %i.zw = call noundef nonnull align 8 dereferenceable(16) ptr @_ZN4LIEF7logging6Logger8instanceEPKc(ptr noundef nonnull @.str.299) #23
  %i.zx = load ptr, ptr %i.zw, align 8, !tbaa !62
  call void @llvm.lifetime.start.p0(ptr nonnull %6)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %6, i8 0, i64 24, i1 false)
  call void @_ZN6spdlog6logger4log_IJEEEvNS_10source_locENS_5level10level_enumEN3fmt3v1217basic_string_viewIcEEDpOT_(ptr noundef nonnull align 8 dereferenceable(208) %i.zx, ptr noundef nonnull byval(%"struct.spdlog::source_loc") align 8 %6, i32 noundef 2, ptr nonnull @.str.94, i64 52)
  call void @llvm.lifetime.end.p0(ptr nonnull %6)
  br label %_ZN2tl6detail21expected_storage_baseISt10unique_ptrIN4LIEF2PE9AttributeESt14default_deleteIS5_EE11lief_errorsLb0ELb1EED2Ev.exit114

_ZNSt6vectorISt10unique_ptrIN4LIEF2PE9AttributeESt14default_deleteIS3_EESaIS6_EE9push_backEOS6_.exit470: ; preds = %_ZNSt6vectorISt10unique_ptrIN4LIEF2PE9AttributeESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit22.i499
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0567.1, i64 noundef %i.yr) #26
  %.pre869.pre = load i8, ptr %i.p, align 8, !tbaa !177, !range !85
  %i.zy = trunc nuw i8 %.pre869.pre to i1
  %i.zz = getelementptr inbounds nuw [8 x i8], ptr %i.yz, i64 %i.yx ; 2 uses
  br i1 %i.zy, label %bb.bt, label %_ZN2tl6detail21expected_storage_baseISt10unique_ptrIN4LIEF2PE9AttributeESt14default_deleteIS5_EE11lief_errorsLb0ELb1EED2Ev.exit114

bb.bt:                                            ; preds = %_ZNSt6vectorISt10unique_ptrIN4LIEF2PE9AttributeESt14default_deleteIS3_EESaIS6_EE9push_backEOS6_.exit470.thread948, %_ZNSt6vectorISt10unique_ptrIN4LIEF2PE9AttributeESt14default_deleteIS3_EESaIS6_EE9push_backEOS6_.exit470
  %.sroa.75.13943.ph = phi ptr [ %i.zv, %_ZNSt6vectorISt10unique_ptrIN4LIEF2PE9AttributeESt14default_deleteIS3_EESaIS6_EE9push_backEOS6_.exit470.thread948 ], [ %i.zz, %_ZNSt6vectorISt10unique_ptrIN4LIEF2PE9AttributeESt14default_deleteIS3_EESaIS6_EE9push_backEOS6_.exit470 ] ; 2 uses
  %.pr = load ptr, ptr %41, align 8, !tbaa !169   ; 3 uses
  %.not.i.i112 = icmp eq ptr %.pr, null
  br i1 %.not.i.i112, label %_ZN2tl6detail21expected_storage_baseISt10unique_ptrIN4LIEF2PE9AttributeESt14default_deleteIS5_EE11lief_errorsLb0ELb1EED2Ev.exit114, label %_ZNKSt14default_deleteIN4LIEF2PE9AttributeEEclEPS2_.exit.i.i113

_ZNKSt14default_deleteIN4LIEF2PE9AttributeEEclEPS2_.exit.i.i113: ; preds = %bb.bt
  %i.aaa = load ptr, ptr %.pr, align 8, !tbaa !53
  %i.aab = getelementptr inbounds nuw i8, ptr %i.aaa, i64 24
  %i.aac = load ptr, ptr %i.aab, align 8
  call void %i.aac(ptr noundef nonnull align 8 dereferenceable(12) %.pr) #23, !inline_history !523
  br label %_ZN2tl6detail21expected_storage_baseISt10unique_ptrIN4LIEF2PE9AttributeESt14default_deleteIS5_EE11lief_errorsLb0ELb1EED2Ev.exit114

_ZN2tl6detail21expected_storage_baseISt10unique_ptrIN4LIEF2PE9AttributeESt14default_deleteIS5_EE11lief_errorsLb0ELb1EED2Ev.exit114: ; preds = %.thread950, %_ZNSt6vectorISt10unique_ptrIN4LIEF2PE9AttributeESt14default_deleteIS3_EESaIS6_EE9push_backEOS6_.exit470.thread944, %_ZNSt6vectorISt10unique_ptrIN4LIEF2PE9AttributeESt14default_deleteIS3_EESaIS6_EE9push_backEOS6_.exit470, %bb.bt, %_ZNKSt14default_deleteIN4LIEF2PE9AttributeEEclEPS2_.exit.i.i113
  %.sroa.75.13942 = phi ptr [ %i.zz, %_ZNSt6vectorISt10unique_ptrIN4LIEF2PE9AttributeESt14default_deleteIS3_EESaIS6_EE9push_backEOS6_.exit470 ], [ %.sroa.75.13943.ph, %bb.bt ], [ %.sroa.75.13943.ph, %_ZNKSt14default_deleteIN4LIEF2PE9AttributeEEclEPS2_.exit.i.i113 ], [ %.sroa.75.1, %_ZNSt6vectorISt10unique_ptrIN4LIEF2PE9AttributeESt14default_deleteIS3_EESaIS6_EE9push_backEOS6_.exit470.thread944 ], [ %.sroa.75.1, %.thread950 ]
  %.sroa.30.13940 = phi ptr [ %i.zu, %_ZNSt6vectorISt10unique_ptrIN4LIEF2PE9AttributeESt14default_deleteIS3_EESaIS6_EE9push_backEOS6_.exit470 ], [ %i.zu, %bb.bt ], [ %i.zu, %_ZNKSt14default_deleteIN4LIEF2PE9AttributeEEclEPS2_.exit.i.i113 ], [ %.sroa.30.1, %_ZNSt6vectorISt10unique_ptrIN4LIEF2PE9AttributeESt14default_deleteIS3_EESaIS6_EE9push_backEOS6_.exit470.thread944 ], [ %i.yo, %.thread950 ]
  %.sroa.0567.13938 = phi ptr [ %i.yz, %_ZNSt6vectorISt10unique_ptrIN4LIEF2PE9AttributeESt14default_deleteIS3_EESaIS6_EE9push_backEOS6_.exit470 ], [ %i.yz, %bb.bt ], [ %i.yz, %_ZNKSt14default_deleteIN4LIEF2PE9AttributeEEclEPS2_.exit.i.i113 ], [ %.sroa.0567.1, %_ZNSt6vectorISt10unique_ptrIN4LIEF2PE9AttributeESt14default_deleteIS3_EESaIS6_EE9push_backEOS6_.exit470.thread944 ], [ %.sroa.0567.1, %.thread950 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %41) #23
  br label %_ZNSt10unique_ptrIN4LIEF2PE21PKCS9AtSequenceNumberESt14default_deleteIS2_EED2Ev.exit

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit116: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit60
  %i.aad = load i128, ptr %.pre350, align 1
  %i.aae = xor i128 %i.aad, 61399908245176969875065496016400887345
  %i.aaf = getelementptr i8, ptr %.pre350, i64 5
  %i.aag = load i128, ptr %i.aaf, align 1
  %i.aah = xor i128 %i.aag, 65372116359097646071866957061507920174
  %i.aai = or i128 %i.aae, %i.aah
  %i.aaj = icmp ne i128 %i.aai, 0
  %i.aak = zext i1 %i.aaj to i32
  %i.aal = icmp eq i32 %i.aak, 0
  br i1 %i.aal, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit116.thread, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit474.thread625

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit116.thread: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit116
  call void @llvm.lifetime.start.p0(ptr nonnull %42) #23
  call void @_ZN4LIEF2PE15SignatureParser33parse_spc_relaxed_pe_marker_checkERNS_12BinaryStreamE(ptr dead_on_unwind nonnull writable sret(%"class.LIEF::result.373") align 8 %42, ptr noundef nonnull align 8 dereferenceable(24) %32)
  %i.aam = load i8, ptr %i.o, align 8, !tbaa !177, !range !85, !noundef !86
  %i.aan = trunc nuw i8 %i.aam to i1
  br i1 %i.aan, label %bb.bu, label %_ZNSt6vectorISt10unique_ptrIN4LIEF2PE9AttributeESt14default_deleteIS3_EESaIS6_EE9push_backEOS6_.exit472.thread964

bb.bu:                                            ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit116.thread
  %.not.i.i471 = icmp eq ptr %.sroa.30.1, %.sroa.75.1
  br i1 %.not.i.i471, label %bb.bv, label %.thread972

.thread972:                                       ; preds = %bb.bu
  %i.aao = load i64, ptr %42, align 8, !tbaa !169
  store i64 %i.aao, ptr %.sroa.30.1, align 8, !tbaa !169
  %i.aap = getelementptr inbounds nuw i8, ptr %.sroa.30.1, i64 8
  br label %_ZN2tl6detail21expected_storage_baseISt10unique_ptrIN4LIEF2PE9AttributeESt14default_deleteIS5_EE11lief_errorsLb0ELb1EED2Ev.exit119

bb.bv:                                            ; preds = %bb.bu
  %i.aaq = ptrtoint ptr %.sroa.30.1 to i64
  %i.aar = ptrtoint ptr %.sroa.0567.1 to i64
  %i.aas = sub i64 %i.aaq, %i.aar                 ; 4 uses
  %i.aat = icmp eq i64 %i.aas, 9223372036854775800
  br i1 %i.aat, label %bb.bw, label %_ZNKSt6vectorISt10unique_ptrIN4LIEF2PE9AttributeESt14default_deleteIS3_EESaIS6_EE12_M_check_lenEmPKc.exit.i503

bb.bw:                                            ; preds = %bb.bv
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.197) #24
  unreachable

_ZNKSt6vectorISt10unique_ptrIN4LIEF2PE9AttributeESt14default_deleteIS3_EESaIS6_EE12_M_check_lenEmPKc.exit.i503: ; preds = %bb.bv
  %i.aau = ashr exact i64 %i.aas, 3               ; 3 uses
  %.sroa.speculated.i.i504 = call i64 @llvm.umax.i64(i64 %i.aau, i64 1)
  %i.aav = add nsw i64 %.sroa.speculated.i.i504, %i.aau ; 2 uses
  %i.aaw = icmp ult i64 %i.aav, %i.aau
  %i.aax = call i64 @llvm.umin.i64(i64 %i.aav, i64 1152921504606846975)
  %i.aay = select i1 %i.aaw, i64 1152921504606846975, i64 %i.aax ; 4 uses
  %.not.i.i505 = icmp ne i64 %i.aay, 0
  call void @llvm.assume(i1 %.not.i.i505)
  %i.aaz = shl nuw nsw i64 %i.aay, 3
  %i.aba = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.aaz) #25 ; 13 uses
  %i.abb = getelementptr inbounds nuw i8, ptr %i.aba, i64 %i.aas
  %i.abc = load i64, ptr %42, align 8, !tbaa !169
  store i64 %i.abc, ptr %i.abb, align 8, !tbaa !169
  store ptr null, ptr %42, align 8, !tbaa !169
  %.not10.i.i.i.i506 = icmp eq ptr %.sroa.0567.1, %.sroa.30.1
  br i1 %.not10.i.i.i.i506, label %_ZNSt6vectorISt10unique_ptrIN4LIEF2PE9AttributeESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit22.i518, label %.lr.ph.i.i.i.i507.preheader

.lr.ph.i.i.i.i507.preheader:                      ; preds = %_ZNKSt6vectorISt10unique_ptrIN4LIEF2PE9AttributeESt14default_deleteIS3_EESaIS6_EE12_M_check_lenEmPKc.exit.i503
  %i.abd = add i64 %.sroa.30.11232, -8
  %i.abe = sub i64 %i.abd, %.sroa.0567.11233      ; 3 uses
  %i.abf = lshr i64 %i.abe, 3
  %i.abg = add nuw nsw i64 %i.abf, 1              ; 2 uses
  %min.iters.check1453 = icmp ult i64 %i.abe, 56
  br i1 %min.iters.check1453, label %.lr.ph.i.i.i.i507.preheader1557, label %vector.memcheck1454

vector.memcheck1454:                              ; preds = %.lr.ph.i.i.i.i507.preheader
  %i.abh = and i64 %i.abe, -8
  %i.abi = add i64 %i.abh, 8                      ; 2 uses
  %i.abj = getelementptr i8, ptr %i.aba, i64 %i.abi
  %i.abk = getelementptr i8, ptr %.sroa.0567.1, i64 %i.abi
  %bound01455 = icmp ult ptr %i.aba, %i.abk
  %bound11456 = icmp ult ptr %.sroa.0567.1, %i.abj
  %found.conflict1457 = and i1 %bound01455, %bound11456
  br i1 %found.conflict1457, label %.lr.ph.i.i.i.i507.preheader1557, label %vector.ph1458

vector.ph1458:                                    ; preds = %vector.memcheck1454
  %n.vec1459 = and i64 %i.abg, 4611686018427387900 ; 3 uses
  %i.abl = shl i64 %n.vec1459, 3                  ; 2 uses
  %i.abm = getelementptr i8, ptr %i.aba, i64 %i.abl ; 2 uses
  %i.abn = getelementptr i8, ptr %.sroa.0567.1, i64 %i.abl
  br label %vector.body1460

vector.body1460:                                  ; preds = %vector.body1460, %vector.ph1458
  %index1461 = phi i64 [ 0, %vector.ph1458 ], [ %index.next1466, %vector.body1460 ] ; 2 uses
  %i.abo = shl i64 %index1461, 3                  ; 2 uses
  %next.gep1462 = getelementptr i8, ptr %i.aba, i64 %i.abo ; 2 uses
  %next.gep1463 = getelementptr i8, ptr %.sroa.0567.1, i64 %i.abo ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !611)
  call void @llvm.experimental.noalias.scope.decl(metadata !612)
  %i.abp = getelementptr i8, ptr %next.gep1463, i64 16
  %wide.load1464 = load <2 x i64>, ptr %next.gep1463, align 8, !tbaa !169, !alias.scope !613
  %wide.load1465 = load <2 x i64>, ptr %i.abp, align 8, !tbaa !169, !alias.scope !613
  %i.abq = getelementptr i8, ptr %next.gep1462, i64 16
  store <2 x i64> %wide.load1464, ptr %next.gep1462, align 8, !tbaa !169, !alias.scope !614, !noalias !615
  store <2 x i64> %wide.load1465, ptr %i.abq, align 8, !tbaa !169, !alias.scope !614, !noalias !615
  %54 = getelementptr i8, ptr %next.gep1463, i64 16
  store <2 x ptr> splat (ptr null), ptr %next.gep1463, align 8, !tbaa !169, !alias.scope !613
  store <2 x ptr> splat (ptr null), ptr %54, align 8, !tbaa !169, !alias.scope !613
  %index.next1466 = add nuw i64 %index1461, 4     ; 2 uses
  %i.abr = icmp eq i64 %index.next1466, %n.vec1459
  br i1 %i.abr, label %middle.block1467, label %vector.body1460, !llvm.loop !530

middle.block1467:                                 ; preds = %vector.body1460
  %cmp.n1468 = icmp eq i64 %i.abg, %n.vec1459
  br i1 %cmp.n1468, label %_ZNSt6vectorISt10unique_ptrIN4LIEF2PE9AttributeESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit22.i518, label %.lr.ph.i.i.i.i507.preheader1557

.lr.ph.i.i.i.i507.preheader1557:                  ; preds = %vector.memcheck1454, %.lr.ph.i.i.i.i507.preheader, %middle.block1467
  %.012.i.i.i.i508.ph = phi ptr [ %i.aba, %vector.memcheck1454 ], [ %i.aba, %.lr.ph.i.i.i.i507.preheader ], [ %i.abm, %middle.block1467 ]
  %.0911.i.i.i.i509.ph = phi ptr [ %.sroa.0567.1, %vector.memcheck1454 ], [ %.sroa.0567.1, %.lr.ph.i.i.i.i507.preheader ], [ %i.abn, %middle.block1467 ]
  br label %.lr.ph.i.i.i.i507

.lr.ph.i.i.i.i507:                                ; preds = %.lr.ph.i.i.i.i507.preheader1557, %.lr.ph.i.i.i.i507
  %.012.i.i.i.i508 = phi ptr [ %i.abu, %.lr.ph.i.i.i.i507 ], [ %.012.i.i.i.i508.ph, %.lr.ph.i.i.i.i507.preheader1557 ] ; 2 uses
  %.0911.i.i.i.i509 = phi ptr [ %i.abt, %.lr.ph.i.i.i.i507 ], [ %.0911.i.i.i.i509.ph, %.lr.ph.i.i.i.i507.preheader1557 ] ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !611)
  call void @llvm.experimental.noalias.scope.decl(metadata !612)
  %i.abs = load i64, ptr %.0911.i.i.i.i509, align 8, !tbaa !169, !alias.scope !612
  store i64 %i.abs, ptr %.012.i.i.i.i508, align 8, !tbaa !169, !alias.scope !611
  store ptr null, ptr %.0911.i.i.i.i509, align 8, !tbaa !169, !alias.scope !612
  %i.abt = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i509, i64 8 ; 2 uses
  %i.abu = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i508, i64 8 ; 2 uses
  %.not.i.i.i.i510 = icmp eq ptr %i.abt, %.sroa.30.1
  br i1 %.not.i.i.i.i510, label %_ZNSt6vectorISt10unique_ptrIN4LIEF2PE9AttributeESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit22.i518, label %.lr.ph.i.i.i.i507, !llvm.loop !531

_ZNSt6vectorISt10unique_ptrIN4LIEF2PE9AttributeESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit22.i518: ; preds = %.lr.ph.i.i.i.i507, %middle.block1467, %_ZNKSt6vectorISt10unique_ptrIN4LIEF2PE9AttributeESt14default_deleteIS3_EESaIS6_EE12_M_check_lenEmPKc.exit.i503
  %.0.lcssa.i.i.i.i512 = phi ptr [ %i.aba, %_ZNKSt6vectorISt10unique_ptrIN4LIEF2PE9AttributeESt14default_deleteIS3_EESaIS6_EE12_M_check_lenEmPKc.exit.i503 ], [ %i.abm, %middle.block1467 ], [ %i.abu, %.lr.ph.i.i.i.i507 ]
  %i.abv = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i512, i64 8 ; 3 uses
  %.not.i23.i520 = icmp eq ptr %.sroa.0567.1, null
  br i1 %.not.i23.i520, label %_ZNSt6vectorISt10unique_ptrIN4LIEF2PE9AttributeESt14default_deleteIS3_EESaIS6_EE9push_backEOS6_.exit472.thread968, label %_ZNSt6vectorISt10unique_ptrIN4LIEF2PE9AttributeESt14default_deleteIS3_EESaIS6_EE9push_backEOS6_.exit472

_ZNSt6vectorISt10unique_ptrIN4LIEF2PE9AttributeESt14default_deleteIS3_EESaIS6_EE9push_backEOS6_.exit472.thread968: ; preds = %_ZNSt6vectorISt10unique_ptrIN4LIEF2PE9AttributeESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit22.i518
  %i.abw = getelementptr inbounds nuw [8 x i8], ptr %i.aba, i64 %i.aay
  br label %bb.bx

_ZNSt6vectorISt10unique_ptrIN4LIEF2PE9AttributeESt14default_deleteIS3_EESaIS6_EE9push_backEOS6_.exit472.thread964: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit116.thread
  %i.abx = call noundef nonnull align 8 dereferenceable(16) ptr @_ZN4LIEF7logging6Logger8instanceEPKc(ptr noundef nonnull @.str.299) #23
  %i.aby = load ptr, ptr %i.abx, align 8, !tbaa !62
  call void @llvm.lifetime.start.p0(ptr nonnull %5)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %5, i8 0, i64 24, i1 false)
  call void @_ZN6spdlog6logger4log_IJEEEvNS_10source_locENS_5level10level_enumEN3fmt3v1217basic_string_viewIcEEDpOT_(ptr noundef nonnull align 8 dereferenceable(208) %i.aby, ptr noundef nonnull byval(%"struct.spdlog::source_loc") align 8 %5, i32 noundef 2, ptr nonnull @.str.96, i64 43)
  call void @llvm.lifetime.end.p0(ptr nonnull %5)
  br label %_ZN2tl6detail21expected_storage_baseISt10unique_ptrIN4LIEF2PE9AttributeESt14default_deleteIS5_EE11lief_errorsLb0ELb1EED2Ev.exit119

_ZNSt6vectorISt10unique_ptrIN4LIEF2PE9AttributeESt14default_deleteIS3_EESaIS6_EE9push_backEOS6_.exit472: ; preds = %_ZNSt6vectorISt10unique_ptrIN4LIEF2PE9AttributeESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit22.i518
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0567.1, i64 noundef %i.aas) #26
  %.pre870.pre = load i8, ptr %i.o, align 8, !tbaa !177, !range !85
  %i.abz = trunc nuw i8 %.pre870.pre to i1
  %i.aca = getelementptr inbounds nuw [8 x i8], ptr %i.aba, i64 %i.aay ; 2 uses
  br i1 %i.abz, label %bb.bx, label %_ZN2tl6detail21expected_storage_baseISt10unique_ptrIN4LIEF2PE9AttributeESt14default_deleteIS5_EE11lief_errorsLb0ELb1EED2Ev.exit119

bb.bx:                                            ; preds = %_ZNSt6vectorISt10unique_ptrIN4LIEF2PE9AttributeESt14default_deleteIS3_EESaIS6_EE9push_backEOS6_.exit472.thread968, %_ZNSt6vectorISt10unique_ptrIN4LIEF2PE9AttributeESt14default_deleteIS3_EESaIS6_EE9push_backEOS6_.exit472
  %.sroa.75.14963.ph = phi ptr [ %i.abw, %_ZNSt6vectorISt10unique_ptrIN4LIEF2PE9AttributeESt14default_deleteIS3_EESaIS6_EE9push_backEOS6_.exit472.thread968 ], [ %i.aca, %_ZNSt6vectorISt10unique_ptrIN4LIEF2PE9AttributeESt14default_deleteIS3_EESaIS6_EE9push_backEOS6_.exit472 ] ; 2 uses
  %.pr971 = load ptr, ptr %42, align 8, !tbaa !169 ; 3 uses
  %.not.i.i117 = icmp eq ptr %.pr971, null
  br i1 %.not.i.i117, label %_ZN2tl6detail21expected_storage_baseISt10unique_ptrIN4LIEF2PE9AttributeESt14default_deleteIS5_EE11lief_errorsLb0ELb1EED2Ev.exit119, label %_ZNKSt14default_deleteIN4LIEF2PE9AttributeEEclEPS2_.exit.i.i118

_ZNKSt14default_deleteIN4LIEF2PE9AttributeEEclEPS2_.exit.i.i118: ; preds = %bb.bx
  %i.acb = load ptr, ptr %.pr971, align 8, !tbaa !53
  %i.acc = getelementptr inbounds nuw i8, ptr %i.acb, i64 24
  %i.acd = load ptr, ptr %i.acc, align 8
  call void %i.acd(ptr noundef nonnull align 8 dereferenceable(12) %.pr971) #23, !inline_history !523
  br label %_ZN2tl6detail21expected_storage_baseISt10unique_ptrIN4LIEF2PE9AttributeESt14default_deleteIS5_EE11lief_errorsLb0ELb1EED2Ev.exit119

_ZN2tl6detail21expected_storage_baseISt10unique_ptrIN4LIEF2PE9AttributeESt14default_deleteIS5_EE11lief_errorsLb0ELb1EED2Ev.exit119: ; preds = %.thread972, %_ZNSt6vectorISt10unique_ptrIN4LIEF2PE9AttributeESt14default_deleteIS3_EESaIS6_EE9push_backEOS6_.exit472.thread964, %_ZNSt6vectorISt10unique_ptrIN4LIEF2PE9AttributeESt14default_deleteIS3_EESaIS6_EE9push_backEOS6_.exit472, %bb.bx, %_ZNKSt14default_deleteIN4LIEF2PE9AttributeEEclEPS2_.exit.i.i118
  %.sroa.75.14962 = phi ptr [ %i.aca, %_ZNSt6vectorISt10unique_ptrIN4LIEF2PE9AttributeESt14default_deleteIS3_EESaIS6_EE9push_backEOS6_.exit472 ], [ %.sroa.75.14963.ph, %bb.bx ], [ %.sroa.75.14963.ph, %_ZNKSt14default_deleteIN4LIEF2PE9AttributeEEclEPS2_.exit.i.i118 ], [ %.sroa.75.1, %_ZNSt6vectorISt10unique_ptrIN4LIEF2PE9AttributeESt14default_deleteIS3_EESaIS6_EE9push_backEOS6_.exit472.thread964 ], [ %.sroa.75.1, %.thread972 ]
  %.sroa.30.14960 = phi ptr [ %i.abv, %_ZNSt6vectorISt10unique_ptrIN4LIEF2PE9AttributeESt14default_deleteIS3_EESaIS6_EE9push_backEOS6_.exit472 ], [ %i.abv, %bb.bx ], [ %i.abv, %_ZNKSt14default_deleteIN4LIEF2PE9AttributeEEclEPS2_.exit.i.i118 ], [ %.sroa.30.1, %_ZNSt6vectorISt10unique_ptrIN4LIEF2PE9AttributeESt14default_deleteIS3_EESaIS6_EE9push_backEOS6_.exit472.thread964 ], [ %i.aap, %.thread972 ]
  %.sroa.0567.14958 = phi ptr [ %i.aba, %_ZNSt6vectorISt10unique_ptrIN4LIEF2PE9AttributeESt14default_deleteIS3_EESaIS6_EE9push_backEOS6_.exit472 ], [ %i.aba, %bb.bx ], [ %i.aba, %_ZNKSt14default_deleteIN4LIEF2PE9AttributeEEclEPS2_.exit.i.i118 ], [ %.sroa.0567.1, %_ZNSt6vectorISt10unique_ptrIN4LIEF2PE9AttributeESt14default_deleteIS3_EESaIS6_EE9push_backEOS6_.exit472.thread964 ], [ %.sroa.0567.1, %.thread972 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %42) #23
  br label %_ZNSt10unique_ptrIN4LIEF2PE21PKCS9AtSequenceNumberESt14default_deleteIS2_EED2Ev.exit

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit474: ; preds = %_ZNR2tl8expectedINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE11lief_errorsE5valueIS6_TnPNSt9enable_ifIXntsr3std7is_voidIT_EE5valueEvE4typeELPv0EEERSB_v.exit32
  %.pre871 = load ptr, ptr %31, align 8, !tbaa !99
  %bcmp.i473 = call i32 @bcmp(ptr %.pre871, ptr nonnull @.str.97, i64 %i.cf)
  %i.ace = icmp eq i32 %bcmp.i473, 0
  br i1 %i.ace, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit474.thread, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit474.thread625

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit474.thread: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit474
  call void @llvm.lifetime.start.p0(ptr nonnull %43) #23
  call void @_ZN4LIEF2PE15SignatureParser28parse_signing_certificate_v2ERNS_12BinaryStreamE(ptr dead_on_unwind nonnull writable sret(%"class.LIEF::result.373") align 8 %43, ptr noundef nonnull align 8 dereferenceable(24) %32)
  %i.acf = load i8, ptr %i.as, align 8, !tbaa !177, !range !85, !noundef !86
  %i.acg = trunc nuw i8 %i.acf to i1
  br i1 %i.acg, label %bb.by, label %_ZNSt6vectorISt10unique_ptrIN4LIEF2PE9AttributeESt14default_deleteIS3_EESaIS6_EE9push_backEOS6_.exit476.thread986

bb.by:                                            ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit474.thread
  %.not.i.i475 = icmp eq ptr %.sroa.30.1, %.sroa.75.1
  br i1 %.not.i.i475, label %bb.bz, label %.thread994

.thread994:                                       ; preds = %bb.by
  %i.ach = load i64, ptr %43, align 8, !tbaa !169
  store i64 %i.ach, ptr %.sroa.30.1, align 8, !tbaa !169
  %i.aci = getelementptr inbounds nuw i8, ptr %.sroa.30.1, i64 8
  br label %_ZN2tl6detail21expected_storage_baseISt10unique_ptrIN4LIEF2PE9AttributeESt14default_deleteIS5_EE11lief_errorsLb0ELb1EED2Ev.exit122

bb.bz:                                            ; preds = %bb.by
  %i.acj = ptrtoint ptr %.sroa.30.1 to i64
  %i.ack = ptrtoint ptr %.sroa.0567.1 to i64
  %i.acl = sub i64 %i.acj, %i.ack                 ; 4 uses
  %i.acm = icmp eq i64 %i.acl, 9223372036854775800
  br i1 %i.acm, label %bb.ca, label %_ZNKSt6vectorISt10unique_ptrIN4LIEF2PE9AttributeESt14default_deleteIS3_EESaIS6_EE12_M_check_lenEmPKc.exit.i522

bb.ca:                                            ; preds = %bb.bz
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.197) #24
  unreachable

_ZNKSt6vectorISt10unique_ptrIN4LIEF2PE9AttributeESt14default_deleteIS3_EESaIS6_EE12_M_check_lenEmPKc.exit.i522: ; preds = %bb.bz
  %i.acn = ashr exact i64 %i.acl, 3               ; 3 uses
  %.sroa.speculated.i.i523 = call i64 @llvm.umax.i64(i64 %i.acn, i64 1)
  %i.aco = add nsw i64 %.sroa.speculated.i.i523, %i.acn ; 2 uses
  %i.acp = icmp ult i64 %i.aco, %i.acn
  %i.acq = call i64 @llvm.umin.i64(i64 %i.aco, i64 1152921504606846975)
  %i.acr = select i1 %i.acp, i64 1152921504606846975, i64 %i.acq ; 4 uses
  %.not.i.i524 = icmp ne i64 %i.acr, 0
  call void @llvm.assume(i1 %.not.i.i524)
  %i.acs = shl nuw nsw i64 %i.acr, 3
  %i.act = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.acs) #25 ; 13 uses
  %i.acu = getelementptr inbounds nuw i8, ptr %i.act, i64 %i.acl
  %i.acv = load i64, ptr %43, align 8, !tbaa !169
  store i64 %i.acv, ptr %i.acu, align 8, !tbaa !169
  store ptr null, ptr %43, align 8, !tbaa !169
  %.not10.i.i.i.i525 = icmp eq ptr %.sroa.0567.1, %.sroa.30.1
  br i1 %.not10.i.i.i.i525, label %_ZNSt6vectorISt10unique_ptrIN4LIEF2PE9AttributeESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit22.i537, label %.lr.ph.i.i.i.i526.preheader

.lr.ph.i.i.i.i526.preheader:                      ; preds = %_ZNKSt6vectorISt10unique_ptrIN4LIEF2PE9AttributeESt14default_deleteIS3_EESaIS6_EE12_M_check_lenEmPKc.exit.i522
  %i.acw = add i64 %.sroa.30.11232, -8
  %i.acx = sub i64 %i.acw, %.sroa.0567.11233      ; 3 uses
  %i.acy = lshr i64 %i.acx, 3
  %i.acz = add nuw nsw i64 %i.acy, 1              ; 2 uses
  %min.iters.check1531 = icmp ult i64 %i.acx, 56
  br i1 %min.iters.check1531, label %.lr.ph.i.i.i.i526.preheader1560, label %vector.memcheck1532

vector.memcheck1532:                              ; preds = %.lr.ph.i.i.i.i526.preheader
  %i.ada = and i64 %i.acx, -8
  %i.adb = add i64 %i.ada, 8                      ; 2 uses
  %i.adc = getelementptr i8, ptr %i.act, i64 %i.adb
  %i.add = getelementptr i8, ptr %.sroa.0567.1, i64 %i.adb
  %bound01533 = icmp ult ptr %i.act, %i.add
  %bound11534 = icmp ult ptr %.sroa.0567.1, %i.adc
  %found.conflict1535 = and i1 %bound01533, %bound11534
  br i1 %found.conflict1535, label %.lr.ph.i.i.i.i526.preheader1560, label %vector.ph1536

vector.ph1536:                                    ; preds = %vector.memcheck1532
  %n.vec1537 = and i64 %i.acz, 4611686018427387900 ; 3 uses
  %i.ade = shl i64 %n.vec1537, 3                  ; 2 uses
  %i.adf = getelementptr i8, ptr %i.act, i64 %i.ade ; 2 uses
  %i.adg = getelementptr i8, ptr %.sroa.0567.1, i64 %i.ade
  br label %vector.body1538

vector.body1538:                                  ; preds = %vector.body1538, %vector.ph1536
  %index1539 = phi i64 [ 0, %vector.ph1536 ], [ %index.next1544, %vector.body1538 ] ; 2 uses
  %i.adh = shl i64 %index1539, 3                  ; 2 uses
  %next.gep1540 = getelementptr i8, ptr %i.act, i64 %i.adh ; 2 uses
  %next.gep1541 = getelementptr i8, ptr %.sroa.0567.1, i64 %i.adh ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !616)
  call void @llvm.experimental.noalias.scope.decl(metadata !617)
  %i.adi = getelementptr i8, ptr %next.gep1541, i64 16
  %wide.load1542 = load <2 x i64>, ptr %next.gep1541, align 8, !tbaa !169, !alias.scope !618
  %wide.load1543 = load <2 x i64>, ptr %i.adi, align 8, !tbaa !169, !alias.scope !618
  %i.adj = getelementptr i8, ptr %next.gep1540, i64 16
  store <2 x i64> %wide.load1542, ptr %next.gep1540, align 8, !tbaa !169, !alias.scope !619, !noalias !620
  store <2 x i64> %wide.load1543, ptr %i.adj, align 8, !tbaa !169, !alias.scope !619, !noalias !620
  %55 = getelementptr i8, ptr %next.gep1541, i64 16
  store <2 x ptr> splat (ptr null), ptr %next.gep1541, align 8, !tbaa !169, !alias.scope !618
  store <2 x ptr> splat (ptr null), ptr %55, align 8, !tbaa !169, !alias.scope !618
  %index.next1544 = add nuw i64 %index1539, 4     ; 2 uses
  %i.adk = icmp eq i64 %index.next1544, %n.vec1537
  br i1 %i.adk, label %middle.block1545, label %vector.body1538, !llvm.loop !538

middle.block1545:                                 ; preds = %vector.body1538
  %cmp.n1546 = icmp eq i64 %i.acz, %n.vec1537
  br i1 %cmp.n1546, label %_ZNSt6vectorISt10unique_ptrIN4LIEF2PE9AttributeESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit22.i537, label %.lr.ph.i.i.i.i526.preheader1560

.lr.ph.i.i.i.i526.preheader1560:                  ; preds = %vector.memcheck1532, %.lr.ph.i.i.i.i526.preheader, %middle.block1545
  %.012.i.i.i.i527.ph = phi ptr [ %i.act, %vector.memcheck1532 ], [ %i.act, %.lr.ph.i.i.i.i526.preheader ], [ %i.adf, %middle.block1545 ]
  %.0911.i.i.i.i528.ph = phi ptr [ %.sroa.0567.1, %vector.memcheck1532 ], [ %.sroa.0567.1, %.lr.ph.i.i.i.i526.preheader ], [ %i.adg, %middle.block1545 ]
  br label %.lr.ph.i.i.i.i526

.lr.ph.i.i.i.i526:                                ; preds = %.lr.ph.i.i.i.i526.preheader1560, %.lr.ph.i.i.i.i526
  %.012.i.i.i.i527 = phi ptr [ %i.adn, %.lr.ph.i.i.i.i526 ], [ %.012.i.i.i.i527.ph, %.lr.ph.i.i.i.i526.preheader1560 ] ; 2 uses
  %.0911.i.i.i.i528 = phi ptr [ %i.adm, %.lr.ph.i.i.i.i526 ], [ %.0911.i.i.i.i528.ph, %.lr.ph.i.i.i.i526.preheader1560 ] ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !616)
  call void @llvm.experimental.noalias.scope.decl(metadata !617)
  %i.adl = load i64, ptr %.0911.i.i.i.i528, align 8, !tbaa !169, !alias.scope !617
  store i64 %i.adl, ptr %.012.i.i.i.i527, align 8, !tbaa !169, !alias.scope !616
  store ptr null, ptr %.0911.i.i.i.i528, align 8, !tbaa !169, !alias.scope !617
  %i.adm = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i528, i64 8 ; 2 uses
  %i.adn = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i527, i64 8 ; 2 uses
  %.not.i.i.i.i529 = icmp eq ptr %i.adm, %.sroa.30.1
  br i1 %.not.i.i.i.i529, label %_ZNSt6vectorISt10unique_ptrIN4LIEF2PE9AttributeESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit22.i537, label %.lr.ph.i.i.i.i526, !llvm.loop !539

_ZNSt6vectorISt10unique_ptrIN4LIEF2PE9AttributeESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit22.i537: ; preds = %.lr.ph.i.i.i.i526, %middle.block1545, %_ZNKSt6vectorISt10unique_ptrIN4LIEF2PE9AttributeESt14default_deleteIS3_EESaIS6_EE12_M_check_lenEmPKc.exit.i522
  %.0.lcssa.i.i.i.i531 = phi ptr [ %i.act, %_ZNKSt6vectorISt10unique_ptrIN4LIEF2PE9AttributeESt14default_deleteIS3_EESaIS6_EE12_M_check_lenEmPKc.exit.i522 ], [ %i.adf, %middle.block1545 ], [ %i.adn, %.lr.ph.i.i.i.i526 ]
  %i.ado = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i531, i64 8 ; 3 uses
  %.not.i23.i539 = icmp eq ptr %.sroa.0567.1, null
  br i1 %.not.i23.i539, label %_ZNSt6vectorISt10unique_ptrIN4LIEF2PE9AttributeESt14default_deleteIS3_EESaIS6_EE9push_backEOS6_.exit476.thread990, label %_ZNSt6vectorISt10unique_ptrIN4LIEF2PE9AttributeESt14default_deleteIS3_EESaIS6_EE9push_backEOS6_.exit476

_ZNSt6vectorISt10unique_ptrIN4LIEF2PE9AttributeESt14default_deleteIS3_EESaIS6_EE9push_backEOS6_.exit476.thread990: ; preds = %_ZNSt6vectorISt10unique_ptrIN4LIEF2PE9AttributeESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit22.i537
  %i.adp = getelementptr inbounds nuw [8 x i8], ptr %i.act, i64 %i.acr
  br label %bb.cb

_ZNSt6vectorISt10unique_ptrIN4LIEF2PE9AttributeESt14default_deleteIS3_EESaIS6_EE9push_backEOS6_.exit476.thread986: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit474.thread
  %i.adq = call noundef nonnull align 8 dereferenceable(16) ptr @_ZN4LIEF7logging6Logger8instanceEPKc(ptr noundef nonnull @.str.299) #23
  %i.adr = load ptr, ptr %i.adq, align 8, !tbaa !62
  call void @llvm.lifetime.start.p0(ptr nonnull %4)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %4, i8 0, i64 24, i1 false)
  call void @_ZN6spdlog6logger4log_IJEEEvNS_10source_locENS_5level10level_enumEN3fmt3v1217basic_string_viewIcEEDpOT_(ptr noundef nonnull align 8 dereferenceable(208) %i.adr, ptr noundef nonnull byval(%"struct.spdlog::source_loc") align 8 %4, i32 noundef 2, ptr nonnull @.str.98, i64 38)
  call void @llvm.lifetime.end.p0(ptr nonnull %4)
  br label %_ZN2tl6detail21expected_storage_baseISt10unique_ptrIN4LIEF2PE9AttributeESt14default_deleteIS5_EE11lief_errorsLb0ELb1EED2Ev.exit122

_ZNSt6vectorISt10unique_ptrIN4LIEF2PE9AttributeESt14default_deleteIS3_EESaIS6_EE9push_backEOS6_.exit476: ; preds = %_ZNSt6vectorISt10unique_ptrIN4LIEF2PE9AttributeESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit22.i537
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0567.1, i64 noundef %i.acl) #26
  %.pre872.pre = load i8, ptr %i.as, align 8, !tbaa !177, !range !85
  %i.ads = trunc nuw i8 %.pre872.pre to i1
  %i.adt = getelementptr inbounds nuw [8 x i8], ptr %i.act, i64 %i.acr ; 2 uses
  br i1 %i.ads, label %bb.cb, label %_ZN2tl6detail21expected_storage_baseISt10unique_ptrIN4LIEF2PE9AttributeESt14default_deleteIS5_EE11lief_errorsLb0ELb1EED2Ev.exit122

bb.cb:                                            ; preds = %_ZNSt6vectorISt10unique_ptrIN4LIEF2PE9AttributeESt14default_deleteIS3_EESaIS6_EE9push_backEOS6_.exit476.thread990, %_ZNSt6vectorISt10unique_ptrIN4LIEF2PE9AttributeESt14default_deleteIS3_EESaIS6_EE9push_backEOS6_.exit476
  %.sroa.75.15985.ph = phi ptr [ %i.adp, %_ZNSt6vectorISt10unique_ptrIN4LIEF2PE9AttributeESt14default_deleteIS3_EESaIS6_EE9push_backEOS6_.exit476.thread990 ], [ %i.adt, %_ZNSt6vectorISt10unique_ptrIN4LIEF2PE9AttributeESt14default_deleteIS3_EESaIS6_EE9push_backEOS6_.exit476 ] ; 2 uses
  %.pr993 = load ptr, ptr %43, align 8, !tbaa !169 ; 3 uses
  %.not.i.i120 = icmp eq ptr %.pr993, null
  br i1 %.not.i.i120, label %_ZN2tl6detail21expected_storage_baseISt10unique_ptrIN4LIEF2PE9AttributeESt14default_deleteIS5_EE11lief_errorsLb0ELb1EED2Ev.exit122, label %_ZNKSt14default_deleteIN4LIEF2PE9AttributeEEclEPS2_.exit.i.i121

_ZNKSt14default_deleteIN4LIEF2PE9AttributeEEclEPS2_.exit.i.i121: ; preds = %bb.cb
  %i.adu = load ptr, ptr %.pr993, align 8, !tbaa !53
  %i.adv = getelementptr inbounds nuw i8, ptr %i.adu, i64 24
  %i.adw = load ptr, ptr %i.adv, align 8
  call void %i.adw(ptr noundef nonnull align 8 dereferenceable(12) %.pr993) #23, !inline_history !523
  br label %_ZN2tl6detail21expected_storage_baseISt10unique_ptrIN4LIEF2PE9AttributeESt14default_deleteIS5_EE11lief_errorsLb0ELb1EED2Ev.exit122

_ZN2tl6detail21expected_storage_baseISt10unique_ptrIN4LIEF2PE9AttributeESt14default_deleteIS5_EE11lief_errorsLb0ELb1EED2Ev.exit122: ; preds = %.thread994, %_ZNSt6vectorISt10unique_ptrIN4LIEF2PE9AttributeESt14default_deleteIS3_EESaIS6_EE9push_backEOS6_.exit476.thread986, %_ZNSt6vectorISt10unique_ptrIN4LIEF2PE9AttributeESt14default_deleteIS3_EESaIS6_EE9push_backEOS6_.exit476, %bb.cb, %_ZNKSt14default_deleteIN4LIEF2PE9AttributeEEclEPS2_.exit.i.i121
  %.sroa.75.15984 = phi ptr [ %i.adt, %_ZNSt6vectorISt10unique_ptrIN4LIEF2PE9AttributeESt14default_deleteIS3_EESaIS6_EE9push_backEOS6_.exit476 ], [ %.sroa.75.15985.ph, %bb.cb ], [ %.sroa.75.15985.ph, %_ZNKSt14default_deleteIN4LIEF2PE9AttributeEEclEPS2_.exit.i.i121 ], [ %.sroa.75.1, %_ZNSt6vectorISt10unique_ptrIN4LIEF2PE9AttributeESt14default_deleteIS3_EESaIS6_EE9push_backEOS6_.exit476.thread986 ], [ %.sroa.75.1, %.thread994 ]
  %.sroa.30.15982 = phi ptr [ %i.ado, %_ZNSt6vectorISt10unique_ptrIN4LIEF2PE9AttributeESt14default_deleteIS3_EESaIS6_EE9push_backEOS6_.exit476 ], [ %i.ado, %bb.cb ], [ %i.ado, %_ZNKSt14default_deleteIN4LIEF2PE9AttributeEEclEPS2_.exit.i.i121 ], [ %.sroa.30.1, %_ZNSt6vectorISt10unique_ptrIN4LIEF2PE9AttributeESt14default_deleteIS3_EESaIS6_EE9push_backEOS6_.exit476.thread986 ], [ %i.aci, %.thread994 ]
  %.sroa.0567.15980 = phi ptr [ %i.act, %_ZNSt6vectorISt10unique_ptrIN4LIEF2PE9AttributeESt14default_deleteIS3_EESaIS6_EE9push_backEOS6_.exit476 ], [ %i.act, %bb.cb ], [ %i.act, %_ZNKSt14default_deleteIN4LIEF2PE9AttributeEEclEPS2_.exit.i.i121 ], [ %.sroa.0567.1, %_ZNSt6vectorISt10unique_ptrIN4LIEF2PE9AttributeESt14default_deleteIS3_EESaIS6_EE9push_backEOS6_.exit476.thread986 ], [ %.sroa.0567.1, %.thread994 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %43) #23
  br label %_ZNSt10unique_ptrIN4LIEF2PE21PKCS9AtSequenceNumberESt14default_deleteIS2_EED2Ev.exit

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit474.thread625: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit116, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit77, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit103, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit111, %_ZNR2tl8expectedINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE11lief_errorsE5valueIS6_TnPNSt9enable_ifIXntsr3std7is_voidIT_EE5valueEvE4typeELPv0EEERSB_v.exit32, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit474
  %i.adx = call noundef nonnull align 8 dereferenceable(16) ptr @_ZN4LIEF7logging6Logger8instanceEPKc(ptr noundef nonnull @.str.299) #23
  %i.ady = load ptr, ptr %i.adx, align 8, !tbaa !62
  call void @llvm.lifetime.start.p0(ptr nonnull %3)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %3, i8 0, i64 24, i1 false)
  call void @_ZN6spdlog6logger4log_IJRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEvNS_10source_locENS_5level10level_enumEN3fmt3v1217basic_string_viewIcEEDpOT_(ptr noundef nonnull align 8 dereferenceable(208) %i.ady, ptr noundef nonnull byval(%"struct.spdlog::source_loc") align 8 %3, i32 noundef 2, ptr nonnull @.str.99, i64 15, ptr noundef nonnull align 8 dereferenceable(32) %31)
  call void @llvm.lifetime.end.p0(ptr nonnull %3)
  %i.adz = load ptr, ptr %i.l, align 8, !tbaa !90, !noalias !621 ; 2 uses
  %i.aea = load i64, ptr %i.m, align 8, !tbaa !91, !noalias !621 ; 6 uses
  %i.aeb = icmp slt i64 %i.aea, 0
  br i1 %i.aeb, label %bb.cc, label %_ZNSt6vectorIhSaIhEE17_S_check_init_lenEmRKS0_.exit.i.i.i

bb.cc:                                            ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit474.thread625
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.300) #24, !noalias !621
  unreachable

_ZNSt6vectorIhSaIhEE17_S_check_init_lenEmRKS0_.exit.i.i.i: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit474.thread625
  %.not.i.i.i.i477 = icmp samesign eq i64 %i.aea, 0
  br i1 %.not.i.i.i.i477, label %_ZNK4LIEF10SpanStream7contentEv.exit, label %_ZNSt12_Vector_baseIhSaIhEE11_M_allocateEm.exit.i.i.i

_ZNSt12_Vector_baseIhSaIhEE11_M_allocateEm.exit.i.i.i: ; preds = %_ZNSt6vectorIhSaIhEE17_S_check_init_lenEmRKS0_.exit.i.i.i
  %i.aec = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.aea) #25, !noalias !621 ; 5 uses
  %i.aed = getelementptr inbounds nuw i8, ptr %i.aec, i64 %i.aea ; 2 uses
  %.not.i478 = icmp eq i64 %i.aea, 1
  br i1 %.not.i478, label %bb.ce, label %bb.cd, !prof !92

bb.cd:                                            ; preds = %_ZNSt12_Vector_baseIhSaIhEE11_M_allocateEm.exit.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.aec, ptr align 1 %i.adz, i64 %i.aea, i1 false), !noalias !621
  br label %_ZNK4LIEF10SpanStream7contentEv.exit

bb.ce:                                            ; preds = %_ZNSt12_Vector_baseIhSaIhEE11_M_allocateEm.exit.i.i.i
  %i.aee = load i8, ptr %i.adz, align 1, !tbaa !93, !noalias !621
  store i8 %i.aee, ptr %i.aec, align 1, !tbaa !93, !noalias !621
  br label %_ZNK4LIEF10SpanStream7contentEv.exit

_ZNK4LIEF10SpanStream7contentEv.exit:             ; preds = %_ZNSt6vectorIhSaIhEE17_S_check_init_lenEmRKS0_.exit.i.i.i, %bb.cd, %bb.ce
  %.sroa.0.0 = phi ptr [ null, %_ZNSt6vectorIhSaIhEE17_S_check_init_lenEmRKS0_.exit.i.i.i ], [ %i.aec, %bb.ce ], [ %i.aec, %bb.cd ]
  %.sroa.9.0 = phi ptr [ null, %_ZNSt6vectorIhSaIhEE17_S_check_init_lenEmRKS0_.exit.i.i.i ], [ %i.aed, %bb.ce ], [ %i.aed, %bb.cd ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2)
  %i.aef = call noalias noundef nonnull dereferenceable(72) ptr @_Znwm(i64 noundef 72) #25, !noalias !622 ; 11 uses
  store ptr %i.au, ptr %2, align 8, !tbaa !143, !noalias !622
  %i.aeg = load ptr, ptr %31, align 8, !tbaa !99, !noalias !622 ; 2 uses
  %i.aeh = load i64, ptr %i.n, align 8, !tbaa !102, !noalias !622 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #23, !noalias !622
  store i64 %i.aeh, ptr %i.a, align 8, !tbaa !96, !noalias !622
  %i.aei = icmp ugt i64 %i.aeh, 15
  br i1 %i.aei, label %bb.cf, label %._crit_edge.i.i.i

bb.cf:                                            ; preds = %_ZNK4LIEF10SpanStream7contentEv.exit
  %i.aej = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0) #23, !noalias !622 ; 2 uses
  store ptr %i.aej, ptr %2, align 8, !tbaa !99, !noalias !622
  %i.aek = load i64, ptr %i.a, align 8, !tbaa !96, !noalias !622
  store i64 %i.aek, ptr %i.au, align 8, !tbaa !93, !noalias !622
  br label %._crit_edge.i.i.i

._crit_edge.i.i.i:                                ; preds = %bb.cf, %_ZNK4LIEF10SpanStream7contentEv.exit
  %i.ael = phi ptr [ %i.aej, %bb.cf ], [ %i.au, %_ZNK4LIEF10SpanStream7contentEv.exit ] ; 2 uses
  switch i64 %i.aeh, label %bb.ch [
    i64 1, label %bb.cg
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i
  ]

bb.cg:                                            ; preds = %._crit_edge.i.i.i
  %i.aem = load i8, ptr %i.aeg, align 1, !tbaa !93, !noalias !622
  store i8 %i.aem, ptr %i.ael, align 1, !tbaa !93, !noalias !622
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i

bb.ch:                                            ; preds = %._crit_edge.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.ael, ptr align 1 %i.aeg, i64 %i.aeh, i1 false), !noalias !622
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i: ; preds = %bb.ch, %bb.cg, %._crit_edge.i.i.i
  %i.aen = load i64, ptr %i.a, align 8, !tbaa !96, !noalias !622 ; 2 uses
  store i64 %i.aen, ptr %i.av, align 8, !tbaa !102, !noalias !622
  %i.aeo = load ptr, ptr %2, align 8, !tbaa !99, !noalias !622
  %i.aep = getelementptr inbounds nuw i8, ptr %i.aeo, i64 %i.aen
  store i8 0, ptr %i.aep, align 1, !tbaa !93, !noalias !622
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #23, !noalias !622
  call void @_ZN4LIEF6ObjectC2Ev(ptr noundef nonnull align 8 dereferenceable(72) %i.aef) #23, !noalias !622
  %i.aeq = getelementptr inbounds nuw i8, ptr %i.aef, i64 8
  store i32 2, ptr %i.aeq, align 8, !tbaa !184, !noalias !622
  store ptr getelementptr inbounds nuw inrange(-16, 64) (i8, ptr @_ZTVN4LIEF2PE11GenericTypeE, i64 16), ptr %i.aef, align 8, !tbaa !53, !noalias !622
  %i.aer = getelementptr inbounds nuw i8, ptr %i.aef, i64 16 ; 2 uses
  %i.aes = getelementptr inbounds nuw i8, ptr %i.aef, i64 32 ; 3 uses
  store ptr %i.aes, ptr %i.aer, align 8, !tbaa !143, !noalias !622
  %i.aet = load ptr, ptr %2, align 8, !tbaa !99, !noalias !622 ; 2 uses
  %i.aeu = icmp eq ptr %i.aet, %i.au
  br i1 %i.aeu, label %bb.ci, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i479

bb.ci:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i
  %i.aev = load i64, ptr %i.av, align 8, !tbaa !102, !noalias !622 ; 3 uses
  %i.aew = icmp ult i64 %i.aev, 16
  call void @llvm.assume(i1 %i.aew)
  %i.aex = add nuw nsw i64 %i.aev, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.aes, ptr noundef nonnull align 8 dereferenceable(1) %i.au, i64 %i.aex, i1 false), !noalias !622
  br label %_ZSt11make_uniqueIN4LIEF2PE11GenericTypeEJRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIhSaIhEEEENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_.exit

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i479: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i
  store ptr %i.aet, ptr %i.aer, align 8, !tbaa !99, !noalias !622
  %i.aey = load i64, ptr %i.au, align 8, !tbaa !93, !noalias !622
  store i64 %i.aey, ptr %i.aes, align 8, !tbaa !93, !noalias !622
  %.pre.i480 = load i64, ptr %i.av, align 8, !tbaa !102, !noalias !622
  br label %_ZSt11make_uniqueIN4LIEF2PE11GenericTypeEJRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIhSaIhEEEENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_.exit

_ZSt11make_uniqueIN4LIEF2PE11GenericTypeEJRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIhSaIhEEEENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_.exit: ; preds = %bb.ci, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i479
  %i.aez = phi i64 [ %.pre.i480, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i479 ], [ %i.aev, %bb.ci ]
  %i.afa = getelementptr inbounds nuw i8, ptr %i.aef, i64 24
  store i64 %i.aez, ptr %i.afa, align 8, !tbaa !102, !noalias !622
  %i.afb = getelementptr inbounds nuw i8, ptr %i.aef, i64 48
  store ptr %.sroa.0.0, ptr %i.afb, align 8, !tbaa !71, !noalias !622
  %i.afc = getelementptr inbounds nuw i8, ptr %i.aef, i64 56
  store ptr %.sroa.9.0, ptr %i.afc, align 8, !tbaa !72, !noalias !622
  %i.afd = getelementptr inbounds nuw i8, ptr %i.aef, i64 64
  store ptr %.sroa.9.0, ptr %i.afd, align 8, !tbaa !73, !noalias !622
  call void @llvm.lifetime.end.p0(ptr nonnull %2)
  %.not.i.i482 = icmp eq ptr %.sroa.30.1, %.sroa.75.1
  br i1 %.not.i.i482, label %bb.ck, label %bb.cj

bb.cj:                                            ; preds = %_ZSt11make_uniqueIN4LIEF2PE11GenericTypeEJRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIhSaIhEEEENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_.exit
  %i.afe = ptrtoint ptr %i.aef to i64
  store i64 %i.afe, ptr %.sroa.30.1, align 8, !tbaa !169
  %i.aff = getelementptr inbounds nuw i8, ptr %.sroa.30.1, i64 8
  br label %.thread312

bb.ck:                                            ; preds = %_ZSt11make_uniqueIN4LIEF2PE11GenericTypeEJRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIhSaIhEEEENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_.exit
  %i.afg = ptrtoint ptr %.sroa.30.1 to i64
  %i.afh = ptrtoint ptr %.sroa.0567.1 to i64
  %i.afi = sub i64 %i.afg, %i.afh                 ; 4 uses
  %i.afj = icmp eq i64 %i.afi, 9223372036854775800
  br i1 %i.afj, label %bb.cl, label %_ZNKSt6vectorISt10unique_ptrIN4LIEF2PE9AttributeESt14default_deleteIS3_EESaIS6_EE12_M_check_lenEmPKc.exit.i541

bb.cl:                                            ; preds = %bb.ck
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.197) #24
  unreachable

_ZNKSt6vectorISt10unique_ptrIN4LIEF2PE9AttributeESt14default_deleteIS3_EESaIS6_EE12_M_check_lenEmPKc.exit.i541: ; preds = %bb.ck
  %i.afk = ashr exact i64 %i.afi, 3               ; 3 uses
  %.sroa.speculated.i.i542 = call i64 @llvm.umax.i64(i64 %i.afk, i64 1)
  %i.afl = add nsw i64 %.sroa.speculated.i.i542, %i.afk ; 2 uses
  %i.afm = icmp ult i64 %i.afl, %i.afk
  %i.afn = call i64 @llvm.umin.i64(i64 %i.afl, i64 1152921504606846975)
  %i.afo = select i1 %i.afm, i64 1152921504606846975, i64 %i.afn ; 3 uses
  %.not.i.i543 = icmp ne i64 %i.afo, 0
  call void @llvm.assume(i1 %.not.i.i543)
  %i.afp = shl nuw nsw i64 %i.afo, 3
  %i.afq = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.afp) #25 ; 10 uses
  %i.afr = getelementptr inbounds nuw i8, ptr %i.afq, i64 %i.afi
  %i.afs = ptrtoint ptr %i.aef to i64
  store i64 %i.afs, ptr %i.afr, align 8, !tbaa !169
  %.not10.i.i.i.i544 = icmp eq ptr %.sroa.0567.1, %.sroa.30.1
  br i1 %.not10.i.i.i.i544, label %_ZNSt6vectorISt10unique_ptrIN4LIEF2PE9AttributeESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit22.i556, label %.lr.ph.i.i.i.i545.preheader

.lr.ph.i.i.i.i545.preheader:                      ; preds = %_ZNKSt6vectorISt10unique_ptrIN4LIEF2PE9AttributeESt14default_deleteIS3_EESaIS6_EE12_M_check_lenEmPKc.exit.i541
  %i.aft = add i64 %.sroa.30.11232, -8
  %i.afu = sub i64 %i.aft, %.sroa.0567.11233      ; 3 uses
  %i.afv = lshr i64 %i.afu, 3
  %i.afw = add nuw nsw i64 %i.afv, 1              ; 2 uses
  %min.iters.check = icmp ult i64 %i.afu, 56
  br i1 %min.iters.check, label %.lr.ph.i.i.i.i545.preheader1561, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i.i.i.i545.preheader
  %i.afx = and i64 %i.afu, -8
  %i.afy = add i64 %i.afx, 8                      ; 2 uses
  %i.afz = getelementptr i8, ptr %i.afq, i64 %i.afy
  %i.aga = getelementptr i8, ptr %.sroa.0567.1, i64 %i.afy
  %bound0 = icmp ult ptr %i.afq, %i.aga
  %bound1 = icmp ult ptr %.sroa.0567.1, %i.afz
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.i.i.i.i545.preheader1561, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.afw, 4611686018427387900    ; 3 uses
  %i.agb = shl i64 %n.vec, 3                      ; 2 uses
  %i.agc = getelementptr i8, ptr %i.afq, i64 %i.agb ; 2 uses
  %i.agd = getelementptr i8, ptr %.sroa.0567.1, i64 %i.agb
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.age = shl i64 %index, 3                      ; 2 uses
  %next.gep = getelementptr i8, ptr %i.afq, i64 %i.age ; 2 uses
  %next.gep1234 = getelementptr i8, ptr %.sroa.0567.1, i64 %i.age ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !623)
  call void @llvm.experimental.noalias.scope.decl(metadata !624)
  %i.agf = getelementptr i8, ptr %next.gep1234, i64 16
  %wide.load = load <2 x i64>, ptr %next.gep1234, align 8, !tbaa !169, !alias.scope !625
  %wide.load1235 = load <2 x i64>, ptr %i.agf, align 8, !tbaa !169, !alias.scope !625
  %i.agg = getelementptr i8, ptr %next.gep, i64 16
  store <2 x i64> %wide.load, ptr %next.gep, align 8, !tbaa !169, !alias.scope !626, !noalias !627
  store <2 x i64> %wide.load1235, ptr %i.agg, align 8, !tbaa !169, !alias.scope !626, !noalias !627
  %56 = getelementptr i8, ptr %next.gep1234, i64 16
  store <2 x ptr> splat (ptr null), ptr %next.gep1234, align 8, !tbaa !169, !alias.scope !625
  store <2 x ptr> splat (ptr null), ptr %56, align 8, !tbaa !169, !alias.scope !625
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.agh = icmp eq i64 %index.next, %n.vec
  br i1 %i.agh, label %middle.block, label %vector.body, !llvm.loop !550

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.afw, %n.vec
  br i1 %cmp.n, label %_ZNSt6vectorISt10unique_ptrIN4LIEF2PE9AttributeESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit22.i556, label %.lr.ph.i.i.i.i545.preheader1561

.lr.ph.i.i.i.i545.preheader1561:                  ; preds = %vector.memcheck, %.lr.ph.i.i.i.i545.preheader, %middle.block
  %.012.i.i.i.i546.ph = phi ptr [ %i.afq, %vector.memcheck ], [ %i.afq, %.lr.ph.i.i.i.i545.preheader ], [ %i.agc, %middle.block ]
  %.0911.i.i.i.i547.ph = phi ptr [ %.sroa.0567.1, %vector.memcheck ], [ %.sroa.0567.1, %.lr.ph.i.i.i.i545.preheader ], [ %i.agd, %middle.block ]
  br label %.lr.ph.i.i.i.i545

.lr.ph.i.i.i.i545:                                ; preds = %.lr.ph.i.i.i.i545.preheader1561, %.lr.ph.i.i.i.i545
  %.012.i.i.i.i546 = phi ptr [ %i.agk, %.lr.ph.i.i.i.i545 ], [ %.012.i.i.i.i546.ph, %.lr.ph.i.i.i.i545.preheader1561 ] ; 2 uses
  %.0911.i.i.i.i547 = phi ptr [ %i.agj, %.lr.ph.i.i.i.i545 ], [ %.0911.i.i.i.i547.ph, %.lr.ph.i.i.i.i545.preheader1561 ] ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !623)
  call void @llvm.experimental.noalias.scope.decl(metadata !624)
  %i.agi = load i64, ptr %.0911.i.i.i.i547, align 8, !tbaa !169, !alias.scope !624
  store i64 %i.agi, ptr %.012.i.i.i.i546, align 8, !tbaa !169, !alias.scope !623
  store ptr null, ptr %.0911.i.i.i.i547, align 8, !tbaa !169, !alias.scope !624
  %i.agj = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i547, i64 8 ; 2 uses
  %i.agk = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i546, i64 8 ; 2 uses
  %.not.i.i.i.i548 = icmp eq ptr %i.agj, %.sroa.30.1
  br i1 %.not.i.i.i.i548, label %_ZNSt6vectorISt10unique_ptrIN4LIEF2PE9AttributeESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit22.i556, label %.lr.ph.i.i.i.i545, !llvm.loop !551

_ZNSt6vectorISt10unique_ptrIN4LIEF2PE9AttributeESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit22.i556: ; preds = %.lr.ph.i.i.i.i545, %middle.block, %_ZNKSt6vectorISt10unique_ptrIN4LIEF2PE9AttributeESt14default_deleteIS3_EESaIS6_EE12_M_check_lenEmPKc.exit.i541
  %.0.lcssa.i.i.i.i550 = phi ptr [ %i.afq, %_ZNKSt6vectorISt10unique_ptrIN4LIEF2PE9AttributeESt14default_deleteIS3_EESaIS6_EE12_M_check_lenEmPKc.exit.i541 ], [ %i.agc, %middle.block ], [ %i.agk, %.lr.ph.i.i.i.i545 ]
  %i.agl = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i550, i64 8
  %.not.i23.i558 = icmp eq ptr %.sroa.0567.1, null
  br i1 %.not.i23.i558, label %_ZNSt6vectorISt10unique_ptrIN4LIEF2PE9AttributeESt14default_deleteIS3_EESaIS6_EE17_M_realloc_insertIJS6_EEEvN9__gnu_cxx17__normal_iteratorIPS6_S8_EEDpOT_.exit559, label %bb.cm

bb.cm:                                            ; preds = %_ZNSt6vectorISt10unique_ptrIN4LIEF2PE9AttributeESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit22.i556
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0567.1, i64 noundef %i.afi) #26
  br label %_ZNSt6vectorISt10unique_ptrIN4LIEF2PE9AttributeESt14default_deleteIS3_EESaIS6_EE17_M_realloc_insertIJS6_EEEvN9__gnu_cxx17__normal_iteratorIPS6_S8_EEDpOT_.exit559

_ZNSt6vectorISt10unique_ptrIN4LIEF2PE9AttributeESt14default_deleteIS3_EESaIS6_EE17_M_realloc_insertIJS6_EEEvN9__gnu_cxx17__normal_iteratorIPS6_S8_EEDpOT_.exit559: ; preds = %_ZNSt6vectorISt10unique_ptrIN4LIEF2PE9AttributeESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit22.i556, %bb.cm
  %i.agm = getelementptr inbounds nuw [8 x i8], ptr %i.afq, i64 %i.afo
  br label %.thread312

_ZNSt10unique_ptrIN4LIEF2PE21PKCS9AtSequenceNumberESt14default_deleteIS2_EED2Ev.exit: ; preds = %_ZNSt6vectorISt10unique_ptrIN4LIEF2PE9AttributeESt14default_deleteIS3_EESaIS6_EE9push_backEOS6_.exit105.thread, %_ZNSt6vectorISt10unique_ptrIN4LIEF2PE9AttributeESt14default_deleteIS3_EESaIS6_EE17_M_realloc_insertIJS6_EEEvN9__gnu_cxx17__normal_iteratorIPS6_S8_EEDpOT_.exit, %bb.bm, %bb.bg, %bb.bi, %_ZNSt6vectorISt10unique_ptrIN4LIEF2PE9AttributeESt14default_deleteIS3_EESaIS6_EE17_M_realloc_insertIJS6_EEEvN9__gnu_cxx17__normal_iteratorIPS6_S8_EEDpOT_.exit267, %_ZN2tl6detail21expected_storage_baseIN4LIEF2PE15SignatureParser13SpcSpOpusInfoE11lief_errorsLb0ELb1EED2Ev.exit, %_ZN2tl6detail21expected_storage_baseISt6vectorIN4LIEF2PE10SignerInfoESaIS5_EE11lief_errorsLb0ELb1EED2Ev.exit, %_ZN2tl6detail21expected_storage_baseISt6vectorIhSaIhEE11lief_errorsLb0ELb1EED2Ev.exit, %_ZN2tl6detail21expected_storage_baseISt10unique_ptrIN4LIEF2PE9AttributeESt14default_deleteIS5_EE11lief_errorsLb0ELb1EED2Ev.exit114, %_ZN2tl6detail21expected_storage_baseISt10unique_ptrIN4LIEF2PE9AttributeESt14default_deleteIS5_EE11lief_errorsLb0ELb1EED2Ev.exit122, %_ZN2tl6detail21expected_storage_baseISt10unique_ptrIN4LIEF2PE9AttributeESt14default_deleteIS5_EE11lief_errorsLb0ELb1EED2Ev.exit119, %_ZN2tl6detail21expected_storage_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE11lief_errorsLb0ELb1EED2Ev.exit, %_ZN2tl6detail21expected_storage_baseIN4LIEF2PE9SignatureE11lief_errorsLb0ELb1EED2Ev.exit, %_ZN2tl6detail21expected_storage_baseISt10unique_ptrIN4LIEF2PE9AttributeESt14default_deleteIS5_EE11lief_errorsLb0ELb1EED2Ev.exit50, %_ZN2tl6detail21expected_storage_baseISt10unique_ptrIN4LIEF2PE9AttributeESt14default_deleteIS5_EE11lief_errorsLb0ELb1EED2Ev.exit
  %.sroa.0567.16 = phi ptr [ %.sroa.0567.15980, %_ZN2tl6detail21expected_storage_baseISt10unique_ptrIN4LIEF2PE9AttributeESt14default_deleteIS5_EE11lief_errorsLb0ELb1EED2Ev.exit122 ], [ %.sroa.0567.2, %_ZN2tl6detail21expected_storage_baseISt10unique_ptrIN4LIEF2PE9AttributeESt14default_deleteIS5_EE11lief_errorsLb0ELb1EED2Ev.exit ], [ %.sroa.0567.8, %_ZN2tl6detail21expected_storage_baseISt6vectorIN4LIEF2PE10SignerInfoESaIS5_EE11lief_errorsLb0ELb1EED2Ev.exit ], [ %.sroa.0567.10, %_ZN2tl6detail21expected_storage_baseISt6vectorIhSaIhEE11lief_errorsLb0ELb1EED2Ev.exit ], [ %.sroa.0567.13938, %_ZN2tl6detail21expected_storage_baseISt10unique_ptrIN4LIEF2PE9AttributeESt14default_deleteIS5_EE11lief_errorsLb0ELb1EED2Ev.exit114 ], [ %.sroa.0567.1, %bb.bm ], [ %.sroa.0567.4, %_ZN2tl6detail21expected_storage_baseIN4LIEF2PE15SignatureParser13SpcSpOpusInfoE11lief_errorsLb0ELb1EED2Ev.exit ], [ %.sroa.0567.11, %_ZN2tl6detail21expected_storage_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE11lief_errorsLb0ELb1EED2Ev.exit ], [ %.sroa.0567.5, %_ZN2tl6detail21expected_storage_baseISt10unique_ptrIN4LIEF2PE9AttributeESt14default_deleteIS5_EE11lief_errorsLb0ELb1EED2Ev.exit50 ], [ %.sroa.0567.9, %_ZN2tl6detail21expected_storage_baseIN4LIEF2PE9SignatureE11lief_errorsLb0ELb1EED2Ev.exit ], [ %.sroa.0567.14958, %_ZN2tl6detail21expected_storage_baseISt10unique_ptrIN4LIEF2PE9AttributeESt14default_deleteIS5_EE11lief_errorsLb0ELb1EED2Ev.exit119 ], [ %.sroa.0567.1, %bb.bg ], [ %i.vf, %_ZNSt6vectorISt10unique_ptrIN4LIEF2PE9AttributeESt14default_deleteIS3_EESaIS6_EE17_M_realloc_insertIJS6_EEEvN9__gnu_cxx17__normal_iteratorIPS6_S8_EEDpOT_.exit267 ], [ %.sroa.0567.1, %bb.bi ], [ %i.xf, %_ZNSt6vectorISt10unique_ptrIN4LIEF2PE9AttributeESt14default_deleteIS3_EESaIS6_EE17_M_realloc_insertIJS6_EEEvN9__gnu_cxx17__normal_iteratorIPS6_S8_EEDpOT_.exit ], [ %.sroa.0567.1, %_ZNSt6vectorISt10unique_ptrIN4LIEF2PE9AttributeESt14default_deleteIS3_EESaIS6_EE9push_backEOS6_.exit105.thread ] ; 3 uses
  %.sroa.30.16 = phi ptr [ %.sroa.30.15982, %_ZN2tl6detail21expected_storage_baseISt10unique_ptrIN4LIEF2PE9AttributeESt14default_deleteIS5_EE11lief_errorsLb0ELb1EED2Ev.exit122 ], [ %.sroa.30.2, %_ZN2tl6detail21expected_storage_baseISt10unique_ptrIN4LIEF2PE9AttributeESt14default_deleteIS5_EE11lief_errorsLb0ELb1EED2Ev.exit ], [ %.sroa.30.8, %_ZN2tl6detail21expected_storage_baseISt6vectorIN4LIEF2PE10SignerInfoESaIS5_EE11lief_errorsLb0ELb1EED2Ev.exit ], [ %.sroa.30.10, %_ZN2tl6detail21expected_storage_baseISt6vectorIhSaIhEE11lief_errorsLb0ELb1EED2Ev.exit ], [ %.sroa.30.13940, %_ZN2tl6detail21expected_storage_baseISt10unique_ptrIN4LIEF2PE9AttributeESt14default_deleteIS5_EE11lief_errorsLb0ELb1EED2Ev.exit114 ], [ %.sroa.30.1, %bb.bm ], [ %.sroa.30.4, %_ZN2tl6detail21expected_storage_baseIN4LIEF2PE15SignatureParser13SpcSpOpusInfoE11lief_errorsLb0ELb1EED2Ev.exit ], [ %.sroa.30.11, %_ZN2tl6detail21expected_storage_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE11lief_errorsLb0ELb1EED2Ev.exit ], [ %.sroa.30.5, %_ZN2tl6detail21expected_storage_baseISt10unique_ptrIN4LIEF2PE9AttributeESt14default_deleteIS5_EE11lief_errorsLb0ELb1EED2Ev.exit50 ], [ %.sroa.30.9, %_ZN2tl6detail21expected_storage_baseIN4LIEF2PE9SignatureE11lief_errorsLb0ELb1EED2Ev.exit ], [ %.sroa.30.14960, %_ZN2tl6detail21expected_storage_baseISt10unique_ptrIN4LIEF2PE9AttributeESt14default_deleteIS5_EE11lief_errorsLb0ELb1EED2Ev.exit119 ], [ %.sroa.30.1, %bb.bg ], [ %i.wa, %_ZNSt6vectorISt10unique_ptrIN4LIEF2PE9AttributeESt14default_deleteIS3_EESaIS6_EE17_M_realloc_insertIJS6_EEEvN9__gnu_cxx17__normal_iteratorIPS6_S8_EEDpOT_.exit267 ], [ %i.uu, %bb.bi ], [ %i.ya, %_ZNSt6vectorISt10unique_ptrIN4LIEF2PE9AttributeESt14default_deleteIS3_EESaIS6_EE17_M_realloc_insertIJS6_EEEvN9__gnu_cxx17__normal_iteratorIPS6_S8_EEDpOT_.exit ], [ %i.wu, %_ZNSt6vectorISt10unique_ptrIN4LIEF2PE9AttributeESt14default_deleteIS3_EESaIS6_EE9push_backEOS6_.exit105.thread ] ; 3 uses
  %.sroa.75.16 = phi ptr [ %.sroa.75.15984, %_ZN2tl6detail21expected_storage_baseISt10unique_ptrIN4LIEF2PE9AttributeESt14default_deleteIS5_EE11lief_errorsLb0ELb1EED2Ev.exit122 ], [ %.sroa.75.2, %_ZN2tl6detail21expected_storage_baseISt10unique_ptrIN4LIEF2PE9AttributeESt14default_deleteIS5_EE11lief_errorsLb0ELb1EED2Ev.exit ], [ %.sroa.75.8, %_ZN2tl6detail21expected_storage_baseISt6vectorIN4LIEF2PE10SignerInfoESaIS5_EE11lief_errorsLb0ELb1EED2Ev.exit ], [ %.sroa.75.10, %_ZN2tl6detail21expected_storage_baseISt6vectorIhSaIhEE11lief_errorsLb0ELb1EED2Ev.exit ], [ %.sroa.75.13942, %_ZN2tl6detail21expected_storage_baseISt10unique_ptrIN4LIEF2PE9AttributeESt14default_deleteIS5_EE11lief_errorsLb0ELb1EED2Ev.exit114 ], [ %.sroa.75.1, %bb.bm ], [ %.sroa.75.4, %_ZN2tl6detail21expected_storage_baseIN4LIEF2PE15SignatureParser13SpcSpOpusInfoE11lief_errorsLb0ELb1EED2Ev.exit ], [ %.sroa.75.11, %_ZN2tl6detail21expected_storage_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE11lief_errorsLb0ELb1EED2Ev.exit ], [ %.sroa.75.5, %_ZN2tl6detail21expected_storage_baseISt10unique_ptrIN4LIEF2PE9AttributeESt14default_deleteIS5_EE11lief_errorsLb0ELb1EED2Ev.exit50 ], [ %.sroa.75.9, %_ZN2tl6detail21expected_storage_baseIN4LIEF2PE9SignatureE11lief_errorsLb0ELb1EED2Ev.exit ], [ %.sroa.75.14962, %_ZN2tl6detail21expected_storage_baseISt10unique_ptrIN4LIEF2PE9AttributeESt14default_deleteIS5_EE11lief_errorsLb0ELb1EED2Ev.exit119 ], [ %.sroa.75.1, %bb.bg ], [ %i.wb, %_ZNSt6vectorISt10unique_ptrIN4LIEF2PE9AttributeESt14default_deleteIS3_EESaIS6_EE17_M_realloc_insertIJS6_EEEvN9__gnu_cxx17__normal_iteratorIPS6_S8_EEDpOT_.exit267 ], [ %.sroa.75.1, %bb.bi ], [ %i.yb, %_ZNSt6vectorISt10unique_ptrIN4LIEF2PE9AttributeESt14default_deleteIS3_EESaIS6_EE17_M_realloc_insertIJS6_EEEvN9__gnu_cxx17__normal_iteratorIPS6_S8_EEDpOT_.exit ], [ %.sroa.75.1, %_ZNSt6vectorISt10unique_ptrIN4LIEF2PE9AttributeESt14default_deleteIS3_EESaIS6_EE9push_backEOS6_.exit105.thread ] ; 3 uses
  %i.agn = load i64, ptr %i.i, align 8, !tbaa !77 ; 4 uses
  %.not = icmp ult i64 %i.cc, %i.agn
  br i1 %.not, label %bb.co, label %bb.cn

bb.cn:                                            ; preds = %_ZNSt10unique_ptrIN4LIEF2PE21PKCS9AtSequenceNumberESt14default_deleteIS2_EED2Ev.exit
  %i.ago = call noundef nonnull align 8 dereferenceable(16) ptr @_ZN4LIEF7logging6Logger8instanceEPKc(ptr noundef nonnull @.str.299) #23
  %i.agp = load ptr, ptr %i.ago, align 8, !tbaa !62
  call void @llvm.lifetime.start.p0(ptr nonnull %8)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %8, i8 0, i64 24, i1 false)
  call void @_ZN6spdlog6logger4log_IJEEEvNS_10source_locENS_5level10level_enumEN3fmt3v1217basic_string_viewIcEEDpOT_(ptr noundef nonnull align 8 dereferenceable(208) %i.agp, ptr noundef nonnull byval(%"struct.spdlog::source_loc") align 8 %8, i32 noundef 2, ptr nonnull @.str.100, i64 21)
  call void @llvm.lifetime.end.p0(ptr nonnull %8)
  br label %.thread312

bb.co:                                            ; preds = %_ZNSt10unique_ptrIN4LIEF2PE21PKCS9AtSequenceNumberESt14default_deleteIS2_EED2Ev.exit
  %i.agq = load i64, ptr %i.m, align 8, !tbaa !91 ; 2 uses
  %i.agr = icmp ult i64 %i.agn, %i.agq
  br i1 %i.agr, label %bb.cp, label %bb.cq

bb.cp:                                            ; preds = %bb.co
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #23
  %i.ags = sub nuw i64 %i.agq, %i.agn
  %i.agt = trunc i64 %i.ags to i32
  store i32 %i.agt, ptr %i.f, align 4, !tbaa !103
  %i.agu = call noundef nonnull align 8 dereferenceable(16) ptr @_ZN4LIEF7logging6Logger8instanceEPKc(ptr noundef nonnull @.str.299) #23
  %i.agv = load ptr, ptr %i.agu, align 8, !tbaa !62
  call void @llvm.lifetime.start.p0(ptr nonnull %7)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %7, i8 0, i64 24, i1 false)
  call void @_ZN6spdlog6logger4log_IJRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKjEEEvNS_10source_locENS_5level10level_enumEN3fmt3v1217basic_string_viewIcEEDpOT_(ptr noundef nonnull align 8 dereferenceable(208) %i.agv, ptr noundef nonnull byval(%"struct.spdlog::source_loc") align 8 %7, i32 noundef 2, ptr nonnull @.str.101, i64 17, ptr noundef nonnull align 8 dereferenceable(32) %31, ptr noundef nonnull align 4 dereferenceable(4) %i.f)
  call void @llvm.lifetime.end.p0(ptr nonnull %7)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #23
  %.pre355 = load i64, ptr %i.i, align 8, !tbaa !77
  br label %bb.cq

bb.cq:                                            ; preds = %bb.co, %bb.cp
  %i.agw = phi i64 [ %i.agn, %bb.co ], [ %.pre355, %bb.cp ]
  %i.agx = load ptr, ptr %32, align 8, !tbaa !53
  %i.agy = getelementptr inbounds nuw i8, ptr %i.agx, i64 16
  %i.agz = load ptr, ptr %i.agy, align 8
  %i.aha = call noundef i64 %i.agz(ptr noundef nonnull align 8 dereferenceable(24) %32) #23, !inline_history !428
  %i.ahb = icmp ult i64 %i.agw, %i.aha
  br i1 %i.ahb, label %.lr.ph, label %.thread312

.thread312:                                       ; preds = %bb.cq, %bb.cj, %_ZNSt6vectorISt10unique_ptrIN4LIEF2PE9AttributeESt14default_deleteIS3_EESaIS6_EE17_M_realloc_insertIJS6_EEEvN9__gnu_cxx17__normal_iteratorIPS6_S8_EEDpOT_.exit559, %_ZNR2tl8expectedINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE11lief_errorsE5valueIS6_TnPNSt9enable_ifIXntsr3std7is_voidIT_EE5valueEvE4typeELPv0EEERSB_v.exit31, %bb.cn
  %.sroa.0567.17 = phi ptr [ %.sroa.0567.0, %_ZNR2tl8expectedINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE11lief_errorsE5valueIS6_TnPNSt9enable_ifIXntsr3std7is_voidIT_EE5valueEvE4typeELPv0EEERSB_v.exit31 ], [ %.sroa.0567.1, %bb.cj ], [ %.sroa.0567.16, %bb.cn ], [ %i.afq, %_ZNSt6vectorISt10unique_ptrIN4LIEF2PE9AttributeESt14default_deleteIS3_EESaIS6_EE17_M_realloc_insertIJS6_EEEvN9__gnu_cxx17__normal_iteratorIPS6_S8_EEDpOT_.exit559 ], [ %.sroa.0567.16, %bb.cq ]
  %.sroa.30.17 = phi ptr [ %.sroa.30.0, %_ZNR2tl8expectedINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE11lief_errorsE5valueIS6_TnPNSt9enable_ifIXntsr3std7is_voidIT_EE5valueEvE4typeELPv0EEERSB_v.exit31 ], [ %i.aff, %bb.cj ], [ %.sroa.30.16, %bb.cn ], [ %i.agl, %_ZNSt6vectorISt10unique_ptrIN4LIEF2PE9AttributeESt14default_deleteIS3_EESaIS6_EE17_M_realloc_insertIJS6_EEEvN9__gnu_cxx17__normal_iteratorIPS6_S8_EEDpOT_.exit559 ], [ %.sroa.30.16, %bb.cq ]
  %.sroa.75.17 = phi ptr [ %.sroa.75.0, %_ZNR2tl8expectedINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE11lief_errorsE5valueIS6_TnPNSt9enable_ifIXntsr3std7is_voidIT_EE5valueEvE4typeELPv0EEERSB_v.exit31 ], [ %.sroa.75.1, %bb.cj ], [ %.sroa.75.16, %bb.cn ], [ %i.agm, %_ZNSt6vectorISt10unique_ptrIN4LIEF2PE9AttributeESt14default_deleteIS3_EESaIS6_EE17_M_realloc_insertIJS6_EEEvN9__gnu_cxx17__normal_iteratorIPS6_S8_EEDpOT_.exit559 ], [ %.sroa.75.16, %bb.cq ]
  %i.ahc = load i64, ptr %i.d, align 8, !tbaa !96
  %i.ahd = load i64, ptr %i.g, align 8, !tbaa !77
  %i.ahe = add i64 %i.ahd, %i.ahc
  store i64 %i.ahe, ptr %i.g, align 8, !tbaa !77
  call void @llvm.lifetime.end.p0(ptr nonnull %32) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #23
  br label %bb.cr

bb.cr:                                            ; preds = %.thread312, %_ZNR2tl8expectedINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE11lief_errorsE5valueIS6_TnPNSt9enable_ifIXntsr3std7is_voidIT_EE5valueEvE4typeELPv0EEERSB_v.exit, %bb.e
  %.sroa.0567.18 = phi ptr [ %.sroa.0567.17, %.thread312 ], [ %.sroa.0567.0, %_ZNR2tl8expectedINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE11lief_errorsE5valueIS6_TnPNSt9enable_ifIXntsr3std7is_voidIT_EE5valueEvE4typeELPv0EEERSB_v.exit ], [ %.sroa.0567.0, %bb.e ] ; 2 uses
  %.sroa.30.18 = phi ptr [ %.sroa.30.17, %.thread312 ], [ %.sroa.30.0, %_ZNR2tl8expectedINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE11lief_errorsE5valueIS6_TnPNSt9enable_ifIXntsr3std7is_voidIT_EE5valueEvE4typeELPv0EEERSB_v.exit ], [ %.sroa.30.0, %bb.e ] ; 2 uses
  %.sroa.75.18 = phi ptr [ %.sroa.75.17, %.thread312 ], [ %.sroa.75.0, %_ZNR2tl8expectedINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE11lief_errorsE5valueIS6_TnPNSt9enable_ifIXntsr3std7is_voidIT_EE5valueEvE4typeELPv0EEERSB_v.exit ], [ %.sroa.75.0, %bb.e ] ; 2 uses
  %i.ahf = phi i1 [ true, %.thread312 ], [ false, %_ZNR2tl8expectedINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE11lief_errorsE5valueIS6_TnPNSt9enable_ifIXntsr3std7is_voidIT_EE5valueEvE4typeELPv0EEERSB_v.exit ], [ false, %bb.e ]
  %i.ahg = load i8, ptr %i.h, align 8, !tbaa !101, !range !85, !noundef !86
  %i.ahh = trunc nuw i8 %i.ahg to i1
  br i1 %i.ahh, label %bb.cs, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i129

bb.cs:                                            ; preds = %bb.cr
  %i.ahi = load ptr, ptr %31, align 8, !tbaa !99  ; 2 uses
  %i.ahj = icmp eq ptr %i.ahi, %i.at
  br i1 %i.ahj, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i129, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i128

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i128: ; preds = %bb.cs
  %i.ahk = load i64, ptr %i.at, align 8, !tbaa !93
  %i.ahl = add i64 %i.ahk, 1
  call void @_ZdlPvm(ptr noundef %i.ahi, i64 noundef %i.ahl) #26
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i129

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i129: ; preds = %bb.cs, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i128, %bb.cr
  call void @llvm.lifetime.end.p0(ptr nonnull %31) #23
  br i1 %i.ahf, label %bb.b, label %_ZNSt6vectorISt10unique_ptrIN4LIEF2PE9AttributeESt14default_deleteIS3_EESaIS6_EED2Ev.exit

_ZNSt6vectorISt10unique_ptrIN4LIEF2PE9AttributeESt14default_deleteIS3_EESaIS6_EED2Ev.exit: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i129, %bb.b, %.thread314
  %.sroa.0567.19 = phi ptr [ %.sroa.0567.0, %.thread314 ], [ %.sroa.0567.0, %bb.b ], [ %.sroa.0567.18, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i129 ]
  %.sroa.30.19 = phi ptr [ %.sroa.30.0, %.thread314 ], [ %.sroa.30.0, %bb.b ], [ %.sroa.30.18, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i129 ]
  %.sroa.75.19 = phi ptr [ %.sroa.75.0, %.thread314 ], [ %.sroa.75.0, %bb.b ], [ %.sroa.75.18, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i129 ]
  store ptr %.sroa.0567.19, ptr %0, align 8, !tbaa !165
  %i.ahm = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sroa.30.19, ptr %i.ahm, align 8, !tbaa !166
  %i.ahn = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %.sroa.75.19, ptr %i.ahn, align 8, !tbaa !167
  %i.aho = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i8 1, ptr %i.aho, align 8, !tbaa !164
  call void @llvm.lifetime.end.p0(ptr nonnull %30) #23
  ret void
}

; Function Attrs: nounwind
declare void @_ZN4LIEF2PE10SignerInfoD1Ev(ptr noundef nonnull align 8 dead_on_return(184) dereferenceable(184)) unnamed_addr #5

; Function Attrs: mustprogress nounwind uwtable
define void @_ZN4LIEF2PE15SignatureParser18parse_content_typeERNS_12BinaryStreamE(ptr dead_on_unwind noalias nofree writable writeonly sret(%"class.LIEF::result.373") align 8 captures(none) initializes((0, 4), (8, 9)) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) local_unnamed_addr #2 align 2 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %2 = alloca %"struct.spdlog::source_loc", align 8 ; 4 uses
  %3 = alloca %"struct.spdlog::source_loc", align 8 ; 4 uses
  %4 = alloca %"struct.spdlog::source_loc", align 8 ; 4 uses
  %5 = alloca %"class.LIEF::ASN1Reader", align 8  ; 4 uses
  %6 = alloca %"class.LIEF::result.92", align 8   ; 10 uses
  %i.b = alloca i64, align 8                      ; 4 uses
  %i.c = alloca ptr, align 8                      ; 4 uses
  %i.d = alloca i64, align 8                      ; 4 uses
  %7 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #23
  store ptr %1, ptr %5, align 8, !tbaa !95
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #23
  call void @_ZN4LIEF10ASN1Reader8read_oidB5cxx11Ev(ptr dead_on_unwind nonnull writable sret(%"class.LIEF::result.92") align 8 %6, ptr noundef nonnull align 8 dereferenceable(8) %5) #23
  %i.e = getelementptr inbounds nuw i8, ptr %6, i64 32 ; 2 uses
  %i.f = load i8, ptr %i.e, align 8, !tbaa !101, !range !85, !noundef !86
  %i.g = trunc nuw i8 %i.f to i1
  %i.h = call noundef nonnull align 8 dereferenceable(16) ptr @_ZN4LIEF7logging6Logger8instanceEPKc(ptr noundef nonnull @.str.299) #23 ; 2 uses
  br i1 %i.g, label %_ZNR2tl8expectedINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE11lief_errorsE5valueIS6_TnPNSt9enable_ifIXntsr3std7is_voidIT_EE5valueEvE4typeELPv0EEERSB_v.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #23
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.j = load i64, ptr %i.i, align 8, !tbaa !77
  store i64 %i.j, ptr %i.b, align 8, !tbaa !96
  %i.k = load ptr, ptr %i.h, align 8, !tbaa !62
  call void @llvm.lifetime.start.p0(ptr nonnull %4)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %4, i8 0, i64 24, i1 false)
  call void @_ZN6spdlog6logger4log_IJRKmEEEvNS_10source_locENS_5level10level_enumEN3fmt3v1217basic_string_viewIcEEDpOT_(ptr noundef nonnull align 8 dereferenceable(208) %i.k, ptr noundef nonnull byval(%"struct.spdlog::source_loc") align 8 %4, i32 noundef 2, ptr nonnull @.str.102, i64 44, ptr noundef nonnull align 8 dereferenceable(8) %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %4)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #23
  %i.l = load i32, ptr %6, align 8, !tbaa !87
  store i32 %i.l, ptr %0, align 8, !tbaa !65
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNR2tl8expectedINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE11lief_errorsE5valueIS6_TnPNSt9enable_ifIXntsr3std7is_voidIT_EE5valueEvE4typeELPv0EEERSB_v.exit: ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #23
  %i.m = call noundef ptr @_ZN4LIEF2PE13oid_to_stringERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(32) %6) #23
  store ptr %i.m, ptr %i.c, align 8, !tbaa !74
  %i.n = load ptr, ptr %i.h, align 8, !tbaa !62
  call void @llvm.lifetime.start.p0(ptr nonnull %3)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %3, i8 0, i64 24, i1 false)
  call void @_ZN6spdlog6logger4log_IJRKPKcEEEvNS_10source_locENS_5level10level_enumEN3fmt3v1217basic_string_viewIcEEDpOT_(ptr noundef nonnull align 8 dereferenceable(208) %i.n, ptr noundef nonnull byval(%"struct.spdlog::source_loc") align 8 %3, i32 noundef 1, ptr nonnull @.str.103, i64 20, ptr noundef nonnull align 8 dereferenceable(8) %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %3)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #23
  %i.o = call noundef nonnull align 8 dereferenceable(16) ptr @_ZN4LIEF7logging6Logger8instanceEPKc(ptr noundef nonnull @.str.299) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #23
  %i.p = load ptr, ptr %1, align 8, !tbaa !53
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 16
  %i.r = load ptr, ptr %i.q, align 8
  %i.s = call noundef i64 %i.r(ptr noundef nonnull align 8 dereferenceable(24) %1) #23
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.u = load i64, ptr %i.t, align 8, !tbaa !77
  %i.v = sub i64 %i.s, %i.u
  store i64 %i.v, ptr %i.d, align 8, !tbaa !96
  %i.w = load ptr, ptr %i.o, align 8, !tbaa !62
  call void @llvm.lifetime.start.p0(ptr nonnull %2)
end_hunk_0
