Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/pbrt-v4/original/wtest?download=true
inline.NumInlined: 90
inline.NumDeleted: 46
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumUnrolled: 3
begin_hunk_0_@_Z9checkMetaPKcS0_PdiPsiS0_:bb.a
_ZNSolsEPFRSoS_E.exit:                            ; preds = %.thread80
  %i.da = load ptr, ptr %i.i, align 8, !tbaa !9
  %i.db = getelementptr inbounds nuw i8, ptr %i.da, i64 16
  %i.dc = load ptr, ptr %i.db, align 8
  invoke void %i.dc(ptr noundef nonnull align 8 dereferenceable(8) %i.i)
          to label %_ZN4Ptex4v2_47PtexPtrINS0_11PtexTextureEED2Ev.exit unwind label %bb.an

bb.an:                                            ; preds = %_ZNSolsEPFRSoS_E.exit
  %i.dd = landingpad { ptr, i32 }
          catch ptr null
  %i.de = extractvalue { ptr, i32 } %i.dd, 0
  call void @__clang_call_terminate(ptr %i.de) #19
  unreachable

_ZN4Ptex4v2_47PtexPtrINS0_11PtexTextureEED2Ev.exit: ; preds = %.noexc58, %_ZNSolsEPFRSoS_E.exit
  %.12482 = phi i1 [ %i.cp, %_ZNSolsEPFRSoS_E.exit ], [ false, %.noexc58 ]
  %i.df = load ptr, ptr %7, align 8, !tbaa !19    ; 2 uses
  %i.dg = icmp eq ptr %i.df, %i.g
  br i1 %i.dg, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZN4Ptex4v2_47PtexPtrINS0_11PtexTextureEED2Ev.exit
  %i.dh = load i64, ptr %i.g, align 8, !tbaa !18
  %i.di = add i64 %i.dh, 1
  call void @_ZdlPvm(ptr noundef %i.df, i64 noundef %i.di) #20
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZN4Ptex4v2_47PtexPtrINS0_11PtexTextureEED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #16
  ret i1 %.12482

_ZN4Ptex4v2_47PtexPtrINS0_12PtexMetaDataEED2Ev.exit48: ; preds = %bb.d, %bb.e, %bb.f, %bb.h, %.noexc56, %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i, %.noexc58
  %i.dj = landingpad { ptr, i32 }
          cleanup
  br label %_ZN4Ptex4v2_47PtexPtrINS0_11PtexTextureEED2Ev.exit51

bb.ao:                                            ; preds = %bb.ab, %bb.al
  %.pn.pn.pn.pn.pn.pn.ph = phi { ptr, i32 } [ %.pn.pn.pn.pn, %bb.al ], [ %i.cj, %bb.ab ]
  %i.dk = load ptr, ptr %i.i, align 8, !tbaa !9
  %i.dl = getelementptr inbounds nuw i8, ptr %i.dk, i64 16
  %i.dm = load ptr, ptr %i.dl, align 8
  invoke void %i.dm(ptr noundef nonnull align 8 dereferenceable(8) %i.i)
          to label %_ZN4Ptex4v2_47PtexPtrINS0_11PtexTextureEED2Ev.exit51 unwind label %bb.ap

bb.ap:                                            ; preds = %bb.ao
  %i.dn = landingpad { ptr, i32 }
          catch ptr null
  %i.do = extractvalue { ptr, i32 } %i.dn, 0
  call void @__clang_call_terminate(ptr %i.do) #19
  unreachable

_ZN4Ptex4v2_47PtexPtrINS0_11PtexTextureEED2Ev.exit51: ; preds = %bb.ao, %_ZN4Ptex4v2_47PtexPtrINS0_12PtexMetaDataEED2Ev.exit48, %bb.i
  %.pn.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %i.aj, %bb.i ], [ %i.dj, %_ZN4Ptex4v2_47PtexPtrINS0_12PtexMetaDataEED2Ev.exit48 ], [ %.pn.pn.pn.pn.pn.pn.ph, %bb.ao ]
  %i.dp = load ptr, ptr %7, align 8, !tbaa !19    ; 2 uses
  %i.dq = icmp eq ptr %i.dp, %i.g
  br i1 %i.dq, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit54, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i52

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i52: ; preds = %_ZN4Ptex4v2_47PtexPtrINS0_11PtexTextureEED2Ev.exit51
  %i.dr = load i64, ptr %i.g, align 8, !tbaa !18
  %i.ds = add i64 %i.dr, 1
  call void @_ZdlPvm(ptr noundef %i.dp, i64 noundef %i.ds) #20
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit54

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit54: ; preds = %_ZN4Ptex4v2_47PtexPtrINS0_11PtexTextureEED2Ev.exit51, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i52
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #16
  resume { ptr, i32 } %.pn.pn.pn.pn.pn.pn.pn
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

declare noundef ptr @_ZN4Ptex4v2_411PtexTexture4openEPKcRNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEb(ptr noundef, ptr noundef nonnull align 8 dereferenceable(32), i1 noundef zeroext) local_unnamed_addr #2

declare i32 @__gxx_personality_v0(...)

; Function Attrs: inlinehint mustprogress uwtable
declare noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef) local_unnamed_addr #3

; Function Attrs: inlinehint mustprogress uwtable
declare noundef nonnull align 8 dereferenceable(8) ptr @_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_(ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #3

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i32 @strcmp(ptr noundef captures(none), ptr noundef captures(none)) local_unnamed_addr #4

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: mustprogress norecurse uwtable
define hidden noundef range(i32 0, 2) i32 @main(i32 noundef %0, ptr nofree noundef readnone captures(none) %1) local_unnamed_addr #5 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.std::__cxx11::basic_string", align 8 ; 18 uses
  %3 = alloca %"struct.Ptex::v2_4::FaceInfo", align 4 ; 8 uses
  %i.a = alloca [3 x double], align 16            ; 9 uses
  %i.b = alloca [4 x i16], align 8                ; 8 uses
  %i.c = load atomic i8, ptr @_ZGVZ4mainE3res acquire, align 8
  %i.d = icmp eq i8 %i.c, 0
  br i1 %i.d, label %bb.b, label %bb.d, !prof !49

bb.b:                                             ; preds = %bb.a
  %i.e = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZ4mainE3res) #16
  %.not = icmp eq i32 %i.e, 0
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  store i8 8, ptr @_ZZ4mainE3res, align 16, !tbaa !50
  store i8 7, ptr getelementptr inbounds nuw (i8, ptr @_ZZ4mainE3res, i64 1), align 1, !tbaa !52
  store i16 513, ptr getelementptr inbounds nuw (i8, ptr @_ZZ4mainE3res, i64 2), align 2
  store i8 3, ptr getelementptr inbounds nuw (i8, ptr @_ZZ4mainE3res, i64 4), align 4, !tbaa !50
  store i8 1, ptr getelementptr inbounds nuw (i8, ptr @_ZZ4mainE3res, i64 5), align 1, !tbaa !52
  store i16 1029, ptr getelementptr inbounds nuw (i8, ptr @_ZZ4mainE3res, i64 6), align 2
  store i8 9, ptr getelementptr inbounds nuw (i8, ptr @_ZZ4mainE3res, i64 8), align 8, !tbaa !50
  store i8 8, ptr getelementptr inbounds nuw (i8, ptr @_ZZ4mainE3res, i64 9), align 1, !tbaa !52
  store i16 1026, ptr getelementptr inbounds nuw (i8, ptr @_ZZ4mainE3res, i64 10), align 2
  store i8 6, ptr getelementptr inbounds nuw (i8, ptr @_ZZ4mainE3res, i64 12), align 4, !tbaa !50
  store i8 2, ptr getelementptr inbounds nuw (i8, ptr @_ZZ4mainE3res, i64 13), align 1, !tbaa !52
  store i16 1031, ptr getelementptr inbounds nuw (i8, ptr @_ZZ4mainE3res, i64 14), align 2
  store i8 2, ptr getelementptr inbounds nuw (i8, ptr @_ZZ4mainE3res, i64 16), align 16, !tbaa !50
  store i8 1, ptr getelementptr inbounds nuw (i8, ptr @_ZZ4mainE3res, i64 17), align 1, !tbaa !52
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZ4mainE3res) #16
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b, %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #16
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 6 uses
  store ptr %i.f, ptr %2, align 8, !tbaa !11
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i64 0, ptr %i.g, align 8, !tbaa !15
  store i8 0, ptr %i.f, align 8, !tbaa !18
  %i.h = invoke noundef ptr @_ZN4Ptex4v2_410PtexWriter4openEPKcNS0_8MeshTypeENS0_8DataTypeEiiiRNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEb(ptr noundef nonnull @.str.5, i32 noundef 1, i32 noundef 1, i32 noundef 3, i32 noundef -1, i32 noundef 9, ptr noundef nonnull align 8 dereferenceable(32) %2, i1 noundef zeroext true)
          to label %bb.e unwind label %bb.l       ; 13 uses

bb.e:                                             ; preds = %bb.d
  %.not124 = icmp eq ptr %i.h, null
  br i1 %.not124, label %bb.f, label %.preheader190.preheader

.preheader190.preheader:                          ; preds = %bb.e
  %i.i = load i8, ptr @_ZZ4mainE3res, align 16, !tbaa !50
  %i.j = zext nneg i8 %i.i to i32
  %i.k = shl nuw i32 1, %i.j
  %i.l = load i8, ptr getelementptr inbounds nuw (i8, ptr @_ZZ4mainE3res, i64 1), align 1, !tbaa !52
  %i.m = zext nneg i8 %i.l to i32
  %i.n = shl i32 %i.k, %i.m
  %i.o = load i8, ptr getelementptr inbounds nuw (i8, ptr @_ZZ4mainE3res, i64 2), align 2, !tbaa !50
  %i.p = zext nneg i8 %i.o to i32
  %i.q = shl nuw i32 1, %i.p
  %i.r = load i8, ptr getelementptr inbounds nuw (i8, ptr @_ZZ4mainE3res, i64 3), align 1, !tbaa !52
  %i.s = zext nneg i8 %i.r to i32
  %i.t = shl i32 %i.q, %i.s
  %.sroa.speculated = call i32 @llvm.smax.i32(i32 %i.n, i32 %i.t)
  %i.u = load i8, ptr getelementptr inbounds nuw (i8, ptr @_ZZ4mainE3res, i64 4), align 4, !tbaa !50
  %i.v = zext nneg i8 %i.u to i32
  %i.w = shl nuw i32 1, %i.v
  %i.x = load i8, ptr getelementptr inbounds nuw (i8, ptr @_ZZ4mainE3res, i64 5), align 1, !tbaa !52
  %i.y = zext nneg i8 %i.x to i32
  %i.z = shl i32 %i.w, %i.y
  %.sroa.speculated.1 = call i32 @llvm.smax.i32(i32 %.sroa.speculated, i32 %i.z)
  %i.aa = load i8, ptr getelementptr inbounds nuw (i8, ptr @_ZZ4mainE3res, i64 6), align 2, !tbaa !50
  %i.ab = zext nneg i8 %i.aa to i32
  %i.ac = shl nuw i32 1, %i.ab
  %i.ad = load i8, ptr getelementptr inbounds nuw (i8, ptr @_ZZ4mainE3res, i64 7), align 1, !tbaa !52
  %i.ae = zext nneg i8 %i.ad to i32
  %i.af = shl i32 %i.ac, %i.ae
  %.sroa.speculated.2 = call i32 @llvm.smax.i32(i32 %.sroa.speculated.1, i32 %i.af)
  %i.ag = load i8, ptr getelementptr inbounds nuw (i8, ptr @_ZZ4mainE3res, i64 8), align 8, !tbaa !50
  %i.ah = zext nneg i8 %i.ag to i32
  %i.ai = shl nuw i32 1, %i.ah
  %i.aj = load i8, ptr getelementptr inbounds nuw (i8, ptr @_ZZ4mainE3res, i64 9), align 1, !tbaa !52
  %i.ak = zext nneg i8 %i.aj to i32
  %i.al = shl i32 %i.ai, %i.ak
  %.sroa.speculated.3 = call i32 @llvm.smax.i32(i32 %.sroa.speculated.2, i32 %i.al)
  %i.am = load i8, ptr getelementptr inbounds nuw (i8, ptr @_ZZ4mainE3res, i64 10), align 2, !tbaa !50
  %i.an = zext nneg i8 %i.am to i32
  %i.ao = shl nuw i32 1, %i.an
  %i.ap = load i8, ptr getelementptr inbounds nuw (i8, ptr @_ZZ4mainE3res, i64 11), align 1, !tbaa !52
  %i.aq = zext nneg i8 %i.ap to i32
  %i.ar = shl i32 %i.ao, %i.aq
  %.sroa.speculated.4 = call i32 @llvm.smax.i32(i32 %.sroa.speculated.3, i32 %i.ar)
  %i.as = load i8, ptr getelementptr inbounds nuw (i8, ptr @_ZZ4mainE3res, i64 12), align 4, !tbaa !50
  %i.at = zext nneg i8 %i.as to i32
  %i.au = shl nuw i32 1, %i.at
  %i.av = load i8, ptr getelementptr inbounds nuw (i8, ptr @_ZZ4mainE3res, i64 13), align 1, !tbaa !52
  %i.aw = zext nneg i8 %i.av to i32
  %i.ax = shl i32 %i.au, %i.aw
  %.sroa.speculated.5 = call i32 @llvm.smax.i32(i32 %.sroa.speculated.4, i32 %i.ax)
  %i.ay = load i8, ptr getelementptr inbounds nuw (i8, ptr @_ZZ4mainE3res, i64 14), align 2, !tbaa !50
  %i.az = zext nneg i8 %i.ay to i32
  %i.ba = shl nuw i32 1, %i.az
  %i.bb = load i8, ptr getelementptr inbounds nuw (i8, ptr @_ZZ4mainE3res, i64 15), align 1, !tbaa !52
  %i.bc = zext nneg i8 %i.bb to i32
  %i.bd = shl i32 %i.ba, %i.bc
  %.sroa.speculated.6 = call i32 @llvm.smax.i32(i32 %.sroa.speculated.5, i32 %i.bd)
  %i.be = load i8, ptr getelementptr inbounds nuw (i8, ptr @_ZZ4mainE3res, i64 16), align 16, !tbaa !50
  %i.bf = zext nneg i8 %i.be to i32
  %i.bg = shl nuw i32 1, %i.bf
  %i.bh = load i8, ptr getelementptr inbounds nuw (i8, ptr @_ZZ4mainE3res, i64 17), align 1, !tbaa !52
  %i.bi = zext nneg i8 %i.bh to i32
  %i.bj = shl i32 %i.bg, %i.bi
  %.sroa.speculated.7 = call i32 @llvm.smax.i32(i32 %.sroa.speculated.6, i32 %i.bj)
  %.sroa.speculated.8 = call i32 @llvm.smax.i32(i32 %.sroa.speculated.7, i32 0)
  %i.bk = mul nuw nsw i32 %.sroa.speculated.8, 6
  %i.bl = zext nneg i32 %i.bk to i64              ; 2 uses
  %i.bm = call noalias ptr @malloc(i64 noundef %i.bl) #21 ; 11 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %3, i64 3
  %i.bo = getelementptr inbounds nuw i8, ptr %3, i64 4
  %i.bp = getelementptr inbounds nuw i8, ptr %3, i64 2
  br label %bb.n

bb.f:                                             ; preds = %bb.e
  %i.bq = load ptr, ptr %2, align 8, !tbaa !19    ; 3 uses
  %.not.i = icmp eq ptr %i.bq, null
  br i1 %.not.i, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.br = load ptr, ptr @_ZSt4cerr, align 8, !tbaa !9
  %i.bs = getelementptr i8, ptr %i.br, i64 -24
  %i.bt = load i64, ptr %i.bs, align 8
  %i.bu = getelementptr inbounds i8, ptr @_ZSt4cerr, i64 %i.bt ; 2 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bu, i64 32
  %i.bw = load i32, ptr %i.bv, align 8, !tbaa !20
  %i.bx = or i32 %i.bw, 1
  invoke void @_ZNSt9basic_iosIcSt11char_traitsIcEE5clearESt12_Ios_Iostate(ptr noundef nonnull align 8 dereferenceable(264) %i.bu, i32 noundef %i.bx)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit unwind label %bb.l

bb.h:                                             ; preds = %bb.f
  %i.by = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.bq) #16
  %i.bz = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cerr, ptr noundef nonnull %i.bq, i64 noundef %i.by)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit unwind label %bb.l ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit: ; preds = %bb.g, %bb.h
  %i.ca = load ptr, ptr @_ZSt4cerr, align 8, !tbaa !9
  %i.cb = getelementptr i8, ptr %i.ca, i64 -24
  %i.cc = load i64, ptr %i.cb, align 8
  %i.cd = getelementptr inbounds i8, ptr @_ZSt4cerr, i64 %i.cc
  %i.ce = getelementptr inbounds nuw i8, ptr %i.cd, i64 240
  %i.cf = load ptr, ptr %i.ce, align 8, !tbaa !29 ; 6 uses
  %.not.i.i.i = icmp eq ptr %i.cf, null
  br i1 %.not.i.i.i, label %bb.i, label %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i

bb.i:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit
  invoke void @_ZSt16__throw_bad_castv() #17
          to label %.noexc157 unwind label %bb.l

.noexc157:                                        ; preds = %bb.i
  unreachable

_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit
  %i.cg = getelementptr inbounds nuw i8, ptr %i.cf, i64 56
  %i.ch = load i8, ptr %i.cg, align 8, !tbaa !37
  %.not.i1.i.i = icmp eq i8 %i.ch, 0
  br i1 %.not.i1.i.i, label %bb.k, label %bb.j

bb.j:                                             ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i
  %i.ci = getelementptr inbounds nuw i8, ptr %i.cf, i64 67
  %i.cj = load i8, ptr %i.ci, align 1, !tbaa !18
  br label %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i

bb.k:                                             ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i
  invoke void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570) %i.cf)
          to label %.noexc158 unwind label %bb.l

.noexc158:                                        ; preds = %bb.k
  %i.ck = load ptr, ptr %i.cf, align 8, !tbaa !9
  %i.cl = getelementptr inbounds nuw i8, ptr %i.ck, i64 48
  %i.cm = load ptr, ptr %i.cl, align 8
  %i.cn = invoke noundef signext i8 %i.cm(ptr noundef nonnull align 8 dereferenceable(570) %i.cf, i8 noundef signext 10)
          to label %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i unwind label %bb.l, !inline_history !43

_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i: ; preds = %.noexc158, %bb.j
  %.0.i.i.i = phi i8 [ %i.cj, %bb.j ], [ %i.cn, %.noexc158 ]
  %i.co = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cerr, i8 noundef signext %.0.i.i.i)
          to label %.noexc160 unwind label %bb.l

.noexc160:                                        ; preds = %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i
  %i.cp = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8) %i.co)
          to label %_ZNSolsEPFRSoS_E.exit unwind label %bb.l ; 0 uses

bb.l:                                             ; preds = %.noexc160, %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i, %.noexc158, %bb.k, %bb.i, %bb.h, %bb.g, %bb.d
  %i.cq = landingpad { ptr, i32 }
          cleanup
  br label %bb.ar

bb.m:                                             ; preds = %bb.o
  call void @free(ptr noundef %i.bm) #16
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) %i.a, ptr noundef nonnull align 16 dereferenceable(24) @__const.main.dvals_buff, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #16
  store i64 2251825583751170, ptr %i.b, align 8
  %i.cr = load ptr, ptr %i.h, align 8, !tbaa !9
  %i.cs = getelementptr inbounds nuw i8, ptr %i.cr, i64 40
  %i.ct = load ptr, ptr %i.cs, align 8
  invoke void %i.ct(ptr noundef nonnull align 8 dereferenceable(8) %i.h, ptr noundef nonnull @.str, ptr noundef nonnull @.str.6)
          to label %.noexc131 unwind label %bb.v, !inline_history !53

.noexc131:                                        ; preds = %bb.m
  %i.cu = load ptr, ptr %i.h, align 8, !tbaa !9
  %i.cv = getelementptr inbounds nuw i8, ptr %i.cu, i64 80
  %i.cw = load ptr, ptr %i.cv, align 8
  invoke void %i.cw(ptr noundef nonnull align 8 dereferenceable(8) %i.h, ptr noundef nonnull @.str.1, ptr noundef nonnull %i.a, i32 noundef 3)
          to label %.noexc132 unwind label %bb.v, !inline_history !53

.noexc132:                                        ; preds = %.noexc131
  %i.cx = load ptr, ptr %i.h, align 8, !tbaa !9
  %i.cy = getelementptr inbounds nuw i8, ptr %i.cx, i64 56
  %i.cz = load ptr, ptr %i.cy, align 8
  invoke void %i.cz(ptr noundef nonnull align 8 dereferenceable(8) %i.h, ptr noundef nonnull @.str.2, ptr noundef nonnull %i.b, i32 noundef 4)
          to label %_Z9writeMetaPN4Ptex4v2_410PtexWriterEPKcPdiPsiS4_.exit unwind label %bb.v, !inline_history !53

bb.n:                                             ; preds = %.preheader190.preheader, %bb.o
  %indvars.iv204 = phi i64 [ 0, %.preheader190.preheader ], [ %indvars.iv.next205, %bb.o ] ; 5 uses
  call void @llvm.memset.p0.i64(ptr align 1 %i.bm, i8 0, i64 %i.bl, i1 false)
  %i.da = getelementptr inbounds nuw [2 x i8], ptr @_ZZ4mainE3res, i64 %indvars.iv204 ; 3 uses
  %i.db = load i8, ptr %i.da, align 2, !tbaa !50  ; 4 uses
  %i.dc = zext nneg i8 %i.db to i32               ; 2 uses
  %i.dd = shl nuw i32 1, %i.dc                    ; 4 uses
  %i.de = getelementptr inbounds nuw i8, ptr %i.da, i64 1
  %i.df = load i8, ptr %i.de, align 1, !tbaa !52  ; 2 uses
  %i.dg = zext nneg i8 %i.df to i32
  %i.dh = shl nuw i32 1, %i.dg                    ; 2 uses
  %.not198 = icmp eq i8 %i.df, 31
  br i1 %.not198, label %._crit_edge195.split, label %.preheader.lr.ph

.preheader.lr.ph:                                 ; preds = %bb.n
  %.not199 = icmp eq i8 %i.db, 31
  %i.di = add nsw i32 %i.dd, -1
  %i.dj = uitofp nneg i32 %i.di to float          ; 7 uses
  %i.dk = add nsw i32 %i.dh, -1
  %i.dl = uitofp nneg i32 %i.dk to float
  br i1 %.not199, label %._crit_edge195.split, label %.preheader.preheader

.preheader.preheader:                             ; preds = %.preheader.lr.ph
  %smax = call i32 @llvm.smax.i32(i32 %i.dd, i32 1)
  %smax202 = call i32 @llvm.smax.i32(i32 %i.dh, i32 1)
  %min.iters.check = icmp slt i32 %i.dd, 8
  %4 = and i32 %smax, 2147483640
  %n.vec.a = zext nneg i32 %4 to i64
  %broadcast.splatinsert229 = insertelement <8 x float> poison, float %i.dj, i64 0
  %broadcast.splat230 = shufflevector <8 x float> %broadcast.splatinsert229, <8 x float> poison, <8 x i32> zeroinitializer
  %exitcond.not.a = icmp slt i32 %i.dd, 2
  %5 = fdiv nnan float 1.000000e+00, %i.dj
  %6 = fmul nnan float %5, 6.553500e+04
  %7 = fptoui float %6 to i16
  %exitcond.not.1 = icmp eq i8 %i.db, 1
  %8 = fdiv nnan float 2.000000e+00, %i.dj
  %9 = fmul nnan float %8, 6.553500e+04
  %10 = fptoui float %9 to i16
  %11 = fdiv nnan float 3.000000e+00, %i.dj
  %12 = fmul nnan float %11, 6.553500e+04
  %13 = fptoui float %12 to i16
  %exitcond.not.3 = icmp eq i8 %i.db, 2
  %14 = fdiv nnan float 4.000000e+00, %i.dj
  %15 = fmul nnan float %14, 6.553500e+04
  %16 = fptoui float %15 to i16
  %17 = fdiv nnan float 5.000000e+00, %i.dj
  %18 = fmul nnan float %17, 6.553500e+04
  %19 = fptoui float %18 to i16
  %20 = fdiv nnan float 6.000000e+00, %i.dj
  %21 = fmul nnan float %20, 6.553500e+04
  %22 = fptoui float %21 to i16
  br label %.preheader

.preheader:                                       ; preds = %.preheader.preheader, %._crit_edge
  %.0115194 = phi i32 [ %23, %._crit_edge ], [ 0, %.preheader.preheader ] ; 11 uses
  %i.dm = shl i32 %.0115194, %i.dc
  %i.dn = uitofp nneg i32 %.0115194 to float
  %i.do = fdiv float %i.dn, %i.dl
  %i.dp = fmul float %i.do, 6.553500e+04
  %i.dq = fptoui float %i.dp to i16               ; 8 uses
  %i.dr = sext i32 %i.dm to i64                   ; 8 uses
  br i1 %min.iters.check, label %scalar.ph, label %vector.ph

vector.ph:                                        ; preds = %.preheader
  %broadcast.splatinsert = insertelement <8 x i32> poison, i32 %.0115194, i64 0
  %broadcast.splat = shufflevector <8 x i32> %broadcast.splatinsert, <8 x i32> poison, <8 x i32> zeroinitializer
  %broadcast.splatinsert227 = insertelement <8 x i16> poison, i16 %i.dq, i64 0
  %broadcast.splat228 = shufflevector <8 x i16> %broadcast.splatinsert227, <8 x i16> poison, <8 x i32> zeroinitializer
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.ind = phi <8 x i32> [ <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>, %vector.ph ], [ %vec.ind.next, %vector.body ] ; 3 uses
  %i.ds = xor <8 x i32> %broadcast.splat, %vec.ind
  %i.dt = uitofp nneg <8 x i32> %vec.ind to <8 x float>
  %i.du = fdiv <8 x float> %i.dt, %broadcast.splat230
  %i.dv = fmul <8 x float> %i.du, splat (float 6.553500e+04)
  %i.dw = fptoui <8 x float> %i.dv to <8 x i16>
  %i.dx = add nsw i64 %index, %i.dr
  %i.dy = mul nsw i64 %i.dx, 6
  %i.dz = getelementptr inbounds i8, ptr %i.bm, i64 %i.dy
  %i.ea = trunc <8 x i32> %i.ds to <8 x i1>
  %i.eb = sext <8 x i1> %i.ea to <8 x i16>
  %i.ec = shufflevector <8 x i16> %i.dw, <8 x i16> %broadcast.splat228, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.ed = shufflevector <8 x i16> %i.eb, <8 x i16> poison, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %interleaved.vec = shufflevector <16 x i16> %i.ec, <16 x i16> %i.ed, <24 x i32> <i32 0, i32 8, i32 16, i32 1, i32 9, i32 17, i32 2, i32 10, i32 18, i32 3, i32 11, i32 19, i32 4, i32 12, i32 20, i32 5, i32 13, i32 21, i32 6, i32 14, i32 22, i32 7, i32 15, i32 23>
  store <24 x i16> %interleaved.vec, ptr %i.dz, align 2, !tbaa !54
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %vec.ind.next = add <8 x i32> %vec.ind, splat (i32 8)
  %i.ee = icmp eq i64 %index.next, %n.vec.a
  br i1 %i.ee, label %._crit_edge, label %vector.body, !llvm.loop !56

._crit_edge:                                      ; preds = %vector.body, %scalar.ph, %scalar.ph.1, %scalar.ph.2, %scalar.ph.4
  %23 = add nuw nsw i32 %.0115194, 1              ; 2 uses
  %exitcond203.not = icmp eq i32 %23, %smax202
  br i1 %exitcond203.not, label %._crit_edge195.split, label %.preheader, !llvm.loop !60

scalar.ph:                                        ; preds = %.preheader
  %.idx = mul nsw i64 %i.dr, 6
  %24 = getelementptr inbounds i8, ptr %i.bm, i64 %.idx ; 3 uses
  store i16 0, ptr %24, align 2, !tbaa !54
  %25 = getelementptr i8, ptr %24, i64 2
  store i16 %i.dq, ptr %25, align 2, !tbaa !54
  %26 = trunc i32 %.0115194 to i1
  %27 = sext i1 %26 to i16
  %28 = getelementptr i8, ptr %24, i64 4
  store i16 %27, ptr %28, align 2, !tbaa !54
  br i1 %exitcond.not.a, label %._crit_edge, label %scalar.ph.1

scalar.ph.1:                                      ; preds = %scalar.ph
  %29 = mul nsw i64 %i.dr, 6
  %30 = getelementptr i8, ptr %i.bm, i64 %29      ; 3 uses
  %31 = getelementptr i8, ptr %30, i64 6
  store i16 %7, ptr %31, align 2, !tbaa !54
  %32 = getelementptr i8, ptr %30, i64 8
  store i16 %i.dq, ptr %32, align 2, !tbaa !54
  %33 = trunc i32 %.0115194 to i16
  %34 = or i16 %33, -2
  %.neg = add nsw i16 %34, 1
  %35 = getelementptr i8, ptr %30, i64 10
  store i16 %.neg, ptr %35, align 2, !tbaa !54
  br i1 %exitcond.not.1, label %._crit_edge, label %scalar.ph.2

scalar.ph.2:                                      ; preds = %scalar.ph.1
  %36 = mul nsw i64 %i.dr, 6
  %37 = getelementptr i8, ptr %i.bm, i64 %36      ; 3 uses
  %38 = getelementptr i8, ptr %37, i64 12
  store i16 %10, ptr %38, align 2, !tbaa !54
  %39 = getelementptr i8, ptr %37, i64 14
  store i16 %i.dq, ptr %39, align 2, !tbaa !54
  %40 = trunc i32 %.0115194 to i1
  %41 = sext i1 %40 to i16
  %42 = getelementptr i8, ptr %37, i64 16
  store i16 %41, ptr %42, align 2, !tbaa !54
  %43 = mul nsw i64 %i.dr, 6
  %44 = getelementptr i8, ptr %i.bm, i64 %43      ; 3 uses
  %45 = getelementptr i8, ptr %44, i64 18
  store i16 %13, ptr %45, align 2, !tbaa !54
  %46 = getelementptr i8, ptr %44, i64 20
  store i16 %i.dq, ptr %46, align 2, !tbaa !54
  %47 = trunc i32 %.0115194 to i16
  %48 = or i16 %47, -2
  %.neg240 = add nsw i16 %48, 1
  %49 = getelementptr i8, ptr %44, i64 22
  store i16 %.neg240, ptr %49, align 2, !tbaa !54
  br i1 %exitcond.not.3, label %._crit_edge, label %scalar.ph.4

scalar.ph.4:                                      ; preds = %scalar.ph.2
  %50 = mul nsw i64 %i.dr, 6
  %51 = getelementptr i8, ptr %i.bm, i64 %50      ; 3 uses
  %52 = getelementptr i8, ptr %51, i64 24
  store i16 %16, ptr %52, align 2, !tbaa !54
  %53 = getelementptr i8, ptr %51, i64 26
  store i16 %i.dq, ptr %53, align 2, !tbaa !54
  %54 = trunc i32 %.0115194 to i1
  %55 = sext i1 %54 to i16
  %56 = getelementptr i8, ptr %51, i64 28
  store i16 %55, ptr %56, align 2, !tbaa !54
  %i.ef = mul nsw i64 %i.dr, 6
  %57 = getelementptr i8, ptr %i.bm, i64 %i.ef    ; 3 uses
  %58 = getelementptr i8, ptr %57, i64 30
  store i16 %19, ptr %58, align 2, !tbaa !54
  %i.eg = getelementptr i8, ptr %57, i64 32
  store i16 %i.dq, ptr %i.eg, align 2, !tbaa !54
  %59 = trunc i32 %.0115194 to i16
  %60 = or i16 %59, -2
  %.neg241 = add nsw i16 %60, 1
  %i.eh = getelementptr i8, ptr %57, i64 34
  store i16 %.neg241, ptr %i.eh, align 2, !tbaa !54
  %61 = mul nsw i64 %i.dr, 6
  %62 = getelementptr i8, ptr %i.bm, i64 %61      ; 3 uses
  %63 = getelementptr i8, ptr %62, i64 36
  store i16 %22, ptr %63, align 2, !tbaa !54
  %i.ei = getelementptr i8, ptr %62, i64 38
  store i16 %i.dq, ptr %i.ei, align 2, !tbaa !54
  %64 = trunc i32 %.0115194 to i1
  %65 = sext i1 %64 to i16
  %66 = getelementptr i8, ptr %62, i64 40
  store i16 %65, ptr %66, align 2, !tbaa !54
  br label %._crit_edge

._crit_edge195.split:                             ; preds = %._crit_edge, %.preheader.lr.ph, %bb.n
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #16
  %.sroa.0.0.copyload = load i16, ptr %i.da, align 2
  %i.ej = getelementptr inbounds nuw [16 x i8], ptr @_ZZ4mainE8adjfaces, i64 %indvars.iv204
  %i.ek = getelementptr inbounds nuw [16 x i8], ptr @_ZZ4mainE8adjedges, i64 %indvars.iv204 ; 4 uses
  store i16 %.sroa.0.0.copyload, ptr %3, align 4
  store i8 0, ptr %i.bn, align 1, !tbaa !61
  %i.el = load <4 x i32>, ptr %i.ej, align 16, !tbaa !45
  store <4 x i32> %i.el, ptr %i.bo, align 4, !tbaa !45
  %i.em = load i32, ptr %i.ek, align 16, !tbaa !45
  %i.en = getelementptr inbounds nuw i8, ptr %i.ek, i64 4
  %i.eo = load i32, ptr %i.en, align 4, !tbaa !45
  %i.ep = getelementptr inbounds nuw i8, ptr %i.ek, i64 8
  %i.eq = load i32, ptr %i.ep, align 8, !tbaa !45
  %i.er = getelementptr inbounds nuw i8, ptr %i.ek, i64 12
  %i.es = load i32, ptr %i.er, align 4, !tbaa !45
  %i.et = and i32 %i.em, 3
  %i.eu = shl i32 %i.eo, 2
  %i.ev = and i32 %i.eu, 12
  %i.ew = or disjoint i32 %i.ev, %i.et
  %i.ex = shl i32 %i.eq, 4
  %i.ey = and i32 %i.ex, 48
  %i.ez = or disjoint i32 %i.ew, %i.ey
  %i.fa = shl i32 %i.es, 6
  %i.fb = or disjoint i32 %i.ez, %i.fa
  %i.fc = trunc i32 %i.fb to i8
  store i8 %i.fc, ptr %i.bp, align 2, !tbaa !63
  %i.fd = load ptr, ptr %i.h, align 8, !tbaa !9
  %i.fe = getelementptr inbounds nuw i8, ptr %i.fd, i64 96
  %i.ff = load ptr, ptr %i.fe, align 8
  %i.fg = trunc nuw nsw i64 %indvars.iv204 to i32
  %i.fh = invoke noundef zeroext i1 %i.ff(ptr noundef nonnull align 8 dereferenceable(8) %i.h, i32 noundef %i.fg, ptr noundef nonnull align 4 dereferenceable(20) %3, ptr noundef %i.bm, i32 noundef 0)
          to label %bb.o unwind label %bb.p       ; 0 uses

bb.o:                                             ; preds = %._crit_edge195.split
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #16
  %indvars.iv.next205 = add nuw nsw i64 %indvars.iv204, 1 ; 2 uses
  %exitcond207.not = icmp eq i64 %indvars.iv.next205, 9
  br i1 %exitcond207.not, label %bb.m, label %bb.n, !llvm.loop !64

bb.p:                                             ; preds = %._crit_edge195.split
  %i.fi = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #16
  br label %bb.ar

_Z9writeMetaPN4Ptex4v2_410PtexWriterEPKcPdiPsiS4_.exit: ; preds = %.noexc132
  %i.fj = load ptr, ptr %i.h, align 8, !tbaa !9
  %i.fk = getelementptr inbounds nuw i8, ptr %i.fj, i64 112
  %i.fl = load ptr, ptr %i.fk, align 8
  %i.fm = invoke noundef zeroext i1 %i.fl(ptr noundef nonnull align 8 dereferenceable(8) %i.h, ptr noundef nonnull align 8 dereferenceable(32) %2)
          to label %bb.q unwind label %bb.v

bb.q:                                             ; preds = %_Z9writeMetaPN4Ptex4v2_410PtexWriterEPKcPdiPsiS4_.exit
  br i1 %i.fm, label %bb.w, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.fn = load ptr, ptr %2, align 8, !tbaa !19    ; 3 uses
  %.not.i134 = icmp eq ptr %i.fn, null
  br i1 %.not.i134, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r
  %i.fo = load ptr, ptr @_ZSt4cerr, align 8, !tbaa !9
  %i.fp = getelementptr i8, ptr %i.fo, i64 -24
  %i.fq = load i64, ptr %i.fp, align 8
  %i.fr = getelementptr inbounds i8, ptr @_ZSt4cerr, i64 %i.fq ; 2 uses
  %i.fs = getelementptr inbounds nuw i8, ptr %i.fr, i64 32
  %i.ft = load i32, ptr %i.fs, align 8, !tbaa !20
  %i.fu = or i32 %i.ft, 1
  invoke void @_ZNSt9basic_iosIcSt11char_traitsIcEE5clearESt12_Ios_Iostate(ptr noundef nonnull align 8 dereferenceable(264) %i.fr, i32 noundef %i.fu)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit137 unwind label %bb.v

bb.t:                                             ; preds = %bb.r
  %i.fv = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.fn) #16
  %i.fw = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cerr, ptr noundef nonnull %i.fn, i64 noundef %i.fv)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit137 unwind label %bb.v ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit137: ; preds = %bb.s, %bb.t
  %i.fx = load ptr, ptr @_ZSt4cerr, align 8, !tbaa !9
  %i.fy = getelementptr i8, ptr %i.fx, i64 -24
  %i.fz = load i64, ptr %i.fy, align 8
  %i.ga = getelementptr inbounds i8, ptr @_ZSt4cerr, i64 %i.fz
  %i.gb = getelementptr inbounds nuw i8, ptr %i.ga, i64 240
  %i.gc = load ptr, ptr %i.gb, align 8, !tbaa !29 ; 5 uses
  %.not.i.i.i162 = icmp eq ptr %i.gc, null
  br i1 %.not.i.i.i162, label %.invoke, label %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i163

_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i163: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit137
  %i.gd = getelementptr inbounds nuw i8, ptr %i.gc, i64 56
  %i.ge = load i8, ptr %i.gd, align 8, !tbaa !37
  %.not.i1.i.i164 = icmp eq i8 %i.ge, 0
  br i1 %.not.i1.i.i164, label %bb.u, label %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i176.invoke.sink.split

bb.u:                                             ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i163
  invoke void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570) %i.gc)
          to label %.noexc179.invoke unwind label %bb.v

bb.v:                                             ; preds = %.noexc179.invoke, %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i176.invoke, %.invoke, %.noexc181.invoke, %bb.af, %bb.u, %bb.am, %.noexc149, %bb.aj, %bb.ae, %bb.ad, %.noexc140, %bb.aa, %bb.t, %bb.s, %.noexc132, %.noexc131, %bb.m, %bb.ao, %bb.an, %bb.al, %_Z9writeMetaPN4Ptex4v2_410PtexWriterEPKcPdiPsiS4_.exit151, %middle.block238, %bb.ah, %bb.ag, %_Z9writeMetaPN4Ptex4v2_410PtexWriterEPKcPdiPsiS4_.exit142, %bb.z, %bb.x, %bb.w, %_Z9writeMetaPN4Ptex4v2_410PtexWriterEPKcPdiPsiS4_.exit
  %i.gf = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #16
  br label %bb.ar

bb.w:                                             ; preds = %bb.q
  %i.gg = load ptr, ptr %i.h, align 8, !tbaa !9
  %i.gh = getelementptr inbounds nuw i8, ptr %i.gg, i64 16
  %i.gi = load ptr, ptr %i.gh, align 8
  invoke void %i.gi(ptr noundef nonnull align 8 dereferenceable(8) %i.h)
          to label %bb.x unwind label %bb.v

bb.x:                                             ; preds = %bb.w
  %i.gj = invoke noundef zeroext i1 @_Z9checkMetaPKcS0_PdiPsiS0_(ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.6, ptr noundef nonnull %i.a, i32 noundef 3, ptr noundef nonnull %i.b, i32 noundef 4, ptr noundef null)
          to label %bb.y unwind label %bb.v

bb.y:                                             ; preds = %bb.x
  br i1 %i.gj, label %bb.z, label %_ZNSolsEPFRSoS_E.exit139

bb.z:                                             ; preds = %bb.y
  %i.gk = invoke noundef ptr @_ZN4Ptex4v2_410PtexWriter4editEPKcbNS0_8MeshTypeENS0_8DataTypeEiiiRNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEb(ptr noundef nonnull @.str.5, i1 noundef zeroext true, i32 noundef 1, i32 noundef 1, i32 noundef 3, i32 noundef -1, i32 noundef 9, ptr noundef nonnull align 8 dereferenceable(32) %2, i1 noundef zeroext true)
          to label %bb.aa unwind label %bb.v      ; 8 uses

bb.aa:                                            ; preds = %bb.z
  %i.gl = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store double 0.000000e+00, ptr %i.gl, align 16, !tbaa !65
  %i.gm = load ptr, ptr %i.gk, align 8, !tbaa !9
  %i.gn = getelementptr inbounds nuw i8, ptr %i.gm, i64 40
  %i.go = load ptr, ptr %i.gn, align 8
  invoke void %i.go(ptr noundef nonnull align 8 dereferenceable(8) %i.gk, ptr noundef nonnull @.str, ptr noundef nonnull @.str.7)
          to label %.noexc140 unwind label %bb.v, !inline_history !53

.noexc140:                                        ; preds = %bb.aa
  %i.gp = load ptr, ptr %i.gk, align 8, !tbaa !9
  %i.gq = getelementptr inbounds nuw i8, ptr %i.gp, i64 80
  %i.gr = load ptr, ptr %i.gq, align 8
  invoke void %i.gr(ptr noundef nonnull align 8 dereferenceable(8) %i.gk, ptr noundef nonnull @.str.1, ptr noundef nonnull %i.a, i32 noundef 3)
          to label %_Z9writeMetaPN4Ptex4v2_410PtexWriterEPKcPdiPsiS4_.exit142 unwind label %bb.v, !inline_history !53

_Z9writeMetaPN4Ptex4v2_410PtexWriterEPKcPdiPsiS4_.exit142: ; preds = %.noexc140
  %i.gs = load ptr, ptr %i.gk, align 8, !tbaa !9
  %i.gt = getelementptr inbounds nuw i8, ptr %i.gs, i64 112
  %i.gu = load ptr, ptr %i.gt, align 8
  %i.gv = invoke noundef zeroext i1 %i.gu(ptr noundef nonnull align 8 dereferenceable(8) %i.gk, ptr noundef nonnull align 8 dereferenceable(32) %2)
          to label %bb.ab unwind label %bb.v

bb.ab:                                            ; preds = %_Z9writeMetaPN4Ptex4v2_410PtexWriterEPKcPdiPsiS4_.exit142
  br i1 %i.gv, label %bb.ag, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.gw = load ptr, ptr %2, align 8, !tbaa !19    ; 3 uses
  %.not.i143 = icmp eq ptr %i.gw, null
  br i1 %.not.i143, label %bb.ad, label %bb.ae

bb.ad:                                            ; preds = %bb.ac
  %i.gx = load ptr, ptr @_ZSt4cerr, align 8, !tbaa !9
  %i.gy = getelementptr i8, ptr %i.gx, i64 -24
  %i.gz = load i64, ptr %i.gy, align 8
  %i.ha = getelementptr inbounds i8, ptr @_ZSt4cerr, i64 %i.gz ; 2 uses
  %i.hb = getelementptr inbounds nuw i8, ptr %i.ha, i64 32
  %i.hc = load i32, ptr %i.hb, align 8, !tbaa !20
  %i.hd = or i32 %i.hc, 1
  invoke void @_ZNSt9basic_iosIcSt11char_traitsIcEE5clearESt12_Ios_Iostate(ptr noundef nonnull align 8 dereferenceable(264) %i.ha, i32 noundef %i.hd)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit146 unwind label %bb.v

bb.ae:                                            ; preds = %bb.ac
  %i.he = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.gw) #16
  %i.hf = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cerr, ptr noundef nonnull %i.gw, i64 noundef %i.he)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit146 unwind label %bb.v ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit146: ; preds = %bb.ad, %bb.ae
  %i.hg = load ptr, ptr @_ZSt4cerr, align 8, !tbaa !9
  %i.hh = getelementptr i8, ptr %i.hg, i64 -24
  %i.hi = load i64, ptr %i.hh, align 8
  %i.hj = getelementptr inbounds i8, ptr @_ZSt4cerr, i64 %i.hi
  %i.hk = getelementptr inbounds nuw i8, ptr %i.hj, i64 240
  %i.hl = load ptr, ptr %i.hk, align 8, !tbaa !29 ; 5 uses
  %.not.i.i.i173 = icmp eq ptr %i.hl, null
  br i1 %.not.i.i.i173, label %.invoke, label %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i174

.invoke:                                          ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit137, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit146
  invoke void @_ZSt16__throw_bad_castv() #17
          to label %.cont unwind label %bb.v

.cont:                                            ; preds = %.invoke
  unreachable

_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i174: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit146
  %i.hm = getelementptr inbounds nuw i8, ptr %i.hl, i64 56
  %i.hn = load i8, ptr %i.hm, align 8, !tbaa !37
  %.not.i1.i.i175 = icmp eq i8 %i.hn, 0
  br i1 %.not.i1.i.i175, label %bb.af, label %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i176.invoke.sink.split

bb.af:                                            ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i174
  invoke void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570) %i.hl)
          to label %.noexc179.invoke unwind label %bb.v

.noexc179.invoke:                                 ; preds = %bb.af, %bb.u
  %.sink = phi ptr [ %i.gc, %bb.u ], [ %i.hl, %bb.af ] ; 2 uses
  %i.ho = load ptr, ptr %.sink, align 8, !tbaa !9
  %i.hp = getelementptr inbounds nuw i8, ptr %i.ho, i64 48
  %i.hq = load ptr, ptr %i.hp, align 8
  %i.hr = invoke noundef signext i8 %i.hq(ptr noundef nonnull align 8 dereferenceable(570) %.sink, i8 noundef signext 10)
          to label %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i176.invoke unwind label %bb.v, !inline_history !43

_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i176.invoke.sink.split: ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i174, %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i163
  %.sink226 = phi ptr [ %i.gc, %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i163 ], [ %i.hl, %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i174 ]
  %i.hs = getelementptr inbounds nuw i8, ptr %.sink226, i64 67
  %i.ht = load i8, ptr %i.hs, align 1, !tbaa !18
  br label %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i176.invoke

_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i176.invoke: ; preds = %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i176.invoke.sink.split, %.noexc179.invoke
  %i.hu = phi i8 [ %i.hr, %.noexc179.invoke ], [ %i.ht, %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i176.invoke.sink.split ]
  %i.hv = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cerr, i8 noundef signext %i.hu)
          to label %.noexc181.invoke unwind label %bb.v

.noexc181.invoke:                                 ; preds = %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i176.invoke
  %i.hw = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8) %i.hv)
          to label %_ZNSolsEPFRSoS_E.exit139 unwind label %bb.v ; 0 uses

bb.ag:                                            ; preds = %bb.ab
  %i.hx = load ptr, ptr %i.gk, align 8, !tbaa !9
  %i.hy = getelementptr inbounds nuw i8, ptr %i.hx, i64 16
  %i.hz = load ptr, ptr %i.hy, align 8
  invoke void %i.hz(ptr noundef nonnull align 8 dereferenceable(8) %i.gk)
          to label %bb.ah unwind label %bb.v

bb.ah:                                            ; preds = %bb.ag
  %i.ia = invoke noundef zeroext i1 @_Z9checkMetaPKcS0_PdiPsiS0_(ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.7, ptr noundef nonnull %i.a, i32 noundef 3, ptr noundef nonnull %i.b, i32 noundef 4, ptr noundef null)
          to label %bb.ai unwind label %bb.v

bb.ai:                                            ; preds = %bb.ah
  br i1 %i.ia, label %vector.ph232, label %_ZNSolsEPFRSoS_E.exit139

vector.ph232:                                     ; preds = %bb.ai
  %i.ib = call noalias dereferenceable_or_null(4000) ptr @malloc(i64 noundef 4000) #21 ; 5 uses
  br label %vector.body233

vector.body233:                                   ; preds = %vector.body233.1, %vector.ph232
  %index234 = phi i64 [ 0, %vector.ph232 ], [ %index.next236.1, %vector.body233.1 ] ; 4 uses
  %vec.ind235 = phi <2 x i32> [ <i32 0, i32 1>, %vector.ph232 ], [ %vec.ind.next237.1, %vector.body233.1 ] ; 5 uses
  %step.add = add <2 x i32> %vec.ind235, splat (i32 2)
  %i.ic = uitofp nneg <2 x i32> %vec.ind235 to <2 x double>
  %i.id = uitofp nneg <2 x i32> %step.add to <2 x double>
  %i.ie = getelementptr inbounds nuw [8 x i8], ptr %i.ib, i64 %index234 ; 2 uses
  %i.if = getelementptr inbounds nuw i8, ptr %i.ie, i64 16
  store <2 x double> %i.ic, ptr %i.ie, align 8, !tbaa !65
  store <2 x double> %i.id, ptr %i.if, align 8, !tbaa !65
  %i.ig = icmp eq i64 %index234, 496
  br i1 %i.ig, label %middle.block238, label %vector.body233.1

vector.body233.1:                                 ; preds = %vector.body233
  %vec.ind.next237 = add <2 x i32> %vec.ind235, splat (i32 4)
  %step.add.1 = add <2 x i32> %vec.ind235, splat (i32 6)
  %i.ih = uitofp nneg <2 x i32> %vec.ind.next237 to <2 x double>
  %i.ii = uitofp nneg <2 x i32> %step.add.1 to <2 x double>
  %i.ij = getelementptr inbounds nuw [8 x i8], ptr %i.ib, i64 %index234 ; 2 uses
  %i.ik = getelementptr inbounds nuw i8, ptr %i.ij, i64 32
  %i.il = getelementptr inbounds nuw i8, ptr %i.ij, i64 48
  store <2 x double> %i.ih, ptr %i.ik, align 8, !tbaa !65
  store <2 x double> %i.ii, ptr %i.il, align 8, !tbaa !65
  %index.next236.1 = add nuw nsw i64 %index234, 8
  %vec.ind.next237.1 = add <2 x i32> %vec.ind235, splat (i32 8)
  br label %vector.body233

middle.block238:                                  ; preds = %vector.body233
  %i.im = invoke noundef ptr @_ZN4Ptex4v2_410PtexWriter4editEPKcbNS0_8MeshTypeENS0_8DataTypeEiiiRNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEb(ptr noundef nonnull @.str.5, i1 noundef zeroext false, i32 noundef 1, i32 noundef 1, i32 noundef 3, i32 noundef -1, i32 noundef 9, ptr noundef nonnull align 8 dereferenceable(32) %2, i1 noundef zeroext true)
          to label %bb.aj unwind label %bb.v      ; 8 uses

bb.aj:                                            ; preds = %middle.block238
  %i.in = load ptr, ptr %i.im, align 8, !tbaa !9
  %i.io = getelementptr inbounds nuw i8, ptr %i.in, i64 80
  %i.ip = load ptr, ptr %i.io, align 8
  invoke void %i.ip(ptr noundef nonnull align 8 dereferenceable(8) %i.im, ptr noundef nonnull @.str.1, ptr noundef nonnull %i.ib, i32 noundef 500)
          to label %.noexc149 unwind label %bb.v, !inline_history !53

.noexc149:                                        ; preds = %bb.aj
  %i.iq = load ptr, ptr %i.im, align 8, !tbaa !9
  %i.ir = getelementptr inbounds nuw i8, ptr %i.iq, i64 40
  %i.is = load ptr, ptr %i.ir, align 8
  invoke void %i.is(ptr noundef nonnull align 8 dereferenceable(8) %i.im, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.8)
          to label %_Z9writeMetaPN4Ptex4v2_410PtexWriterEPKcPdiPsiS4_.exit151 unwind label %bb.v, !inline_history !53

_Z9writeMetaPN4Ptex4v2_410PtexWriterEPKcPdiPsiS4_.exit151: ; preds = %.noexc149
  %i.it = load ptr, ptr %i.im, align 8, !tbaa !9
  %i.iu = getelementptr inbounds nuw i8, ptr %i.it, i64 112
  %i.iv = load ptr, ptr %i.iu, align 8
  %i.iw = invoke noundef zeroext i1 %i.iv(ptr noundef nonnull align 8 dereferenceable(8) %i.im, ptr noundef nonnull align 8 dereferenceable(32) %2)
          to label %bb.ak unwind label %bb.v

bb.ak:                                            ; preds = %_Z9writeMetaPN4Ptex4v2_410PtexWriterEPKcPdiPsiS4_.exit151
  br i1 %i.iw, label %bb.an, label %bb.al

bb.al:                                            ; preds = %bb.ak
  %i.ix = load ptr, ptr %2, align 8, !tbaa !19
  %i.iy = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cerr, ptr noundef %i.ix)
          to label %bb.am unwind label %bb.v

bb.am:                                            ; preds = %bb.al
  %i.iz = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_(ptr noundef nonnull align 8 dereferenceable(8) %i.iy)
          to label %_ZNSolsEPFRSoS_E.exit139 unwind label %bb.v, !inline_history !67 ; 0 uses

bb.an:                                            ; preds = %bb.ak
  %i.ja = load ptr, ptr %i.im, align 8, !tbaa !9
  %i.jb = getelementptr inbounds nuw i8, ptr %i.ja, i64 16
  %i.jc = load ptr, ptr %i.jb, align 8
  invoke void %i.jc(ptr noundef nonnull align 8 dereferenceable(8) %i.im)
          to label %bb.ao unwind label %bb.v

bb.ao:                                            ; preds = %bb.an
  %i.jd = invoke noundef zeroext i1 @_Z9checkMetaPKcS0_PdiPsiS0_(ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.7, ptr noundef nonnull %i.ib, i32 noundef 500, ptr noundef nonnull %i.b, i32 noundef 4, ptr noundef nonnull @.str.8)
          to label %bb.ap unwind label %bb.v

bb.ap:                                            ; preds = %bb.ao
  br i1 %i.jd, label %bb.aq, label %_ZNSolsEPFRSoS_E.exit139

bb.aq:                                            ; preds = %bb.ap
  call void @free(ptr noundef nonnull %i.ib) #16
  br label %_ZNSolsEPFRSoS_E.exit139

_ZNSolsEPFRSoS_E.exit139:                         ; preds = %.noexc181.invoke, %bb.am, %bb.ap, %bb.ai, %bb.y, %bb.aq
  %.0111 = phi i32 [ 0, %bb.aq ], [ 1, %.noexc181.invoke ], [ 1, %bb.ai ], [ 1, %bb.am ], [ 1, %bb.y ], [ 1, %bb.ap ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #16
  br label %_ZNSolsEPFRSoS_E.exit

_ZNSolsEPFRSoS_E.exit:                            ; preds = %.noexc160, %_ZNSolsEPFRSoS_E.exit139
  %.1 = phi i32 [ %.0111, %_ZNSolsEPFRSoS_E.exit139 ], [ 1, %.noexc160 ]
  %i.je = load ptr, ptr %2, align 8, !tbaa !19    ; 2 uses
  %i.jf = icmp eq ptr %i.je, %i.f
  br i1 %i.jf, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZNSolsEPFRSoS_E.exit
  %i.jg = load i64, ptr %i.f, align 8, !tbaa !18
  %i.jh = add i64 %i.jg, 1
  call void @_ZdlPvm(ptr noundef %i.je, i64 noundef %i.jh) #20
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZNSolsEPFRSoS_E.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #16
  ret i32 %.1

bb.ar:                                            ; preds = %bb.v, %bb.p, %bb.l
  %.pn126.pn = phi { ptr, i32 } [ %i.cq, %bb.l ], [ %i.gf, %bb.v ], [ %i.fi, %bb.p ]
  %i.ji = load ptr, ptr %2, align 8, !tbaa !19    ; 2 uses
  %i.jj = icmp eq ptr %i.ji, %i.f
  br i1 %i.jj, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit156, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i154

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i154: ; preds = %bb.ar
  %i.jk = load i64, ptr %i.f, align 8, !tbaa !18
  %i.jl = add i64 %i.jk, 1
  call void @_ZdlPvm(ptr noundef %i.ji, i64 noundef %i.jl) #20
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit156

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit156: ; preds = %bb.ar, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i154
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #16
  resume { ptr, i32 } %.pn126.pn
}

; Function Attrs: nofree nounwind
declare i32 @__cxa_guard_acquire(ptr) local_unnamed_addr #6

; Function Attrs: nofree nounwind
declare void @__cxa_guard_release(ptr) local_unnamed_addr #6

declare noundef ptr @_ZN4Ptex4v2_410PtexWriter4openEPKcNS0_8MeshTypeENS0_8DataTypeEiiiRNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEb(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef nonnull align 8 dereferenceable(32), i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite, errnomem: write)
declare noalias noundef ptr @malloc(i64 noundef) local_unnamed_addr #7

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #8

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr noundef captures(none)) local_unnamed_addr #9

declare noundef ptr @_ZN4Ptex4v2_410PtexWriter4editEPKcbNS0_8MeshTypeENS0_8DataTypeEiiiRNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEb(ptr noundef, i1 noundef zeroext, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef nonnull align 8 dereferenceable(32), i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: noinline noreturn nounwind uwtable
define linkonce_odr hidden void @__clang_call_terminate(ptr noundef %0) local_unnamed_addr #10 comdat {
bb.a:
  %i.a = tail call ptr @__cxa_begin_catch(ptr %0) #16 ; 0 uses
  tail call void @_ZSt9terminatev() #19
  unreachable
}

declare ptr @__cxa_begin_catch(ptr) local_unnamed_addr

; Function Attrs: cold nofree noreturn
declare void @_ZSt9terminatev() local_unnamed_addr #11

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPvm(ptr noundef, i64 noundef) local_unnamed_addr #12

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef, i64 noundef) local_unnamed_addr #2

declare void @_ZNSt9basic_iosIcSt11char_traitsIcEE5clearESt12_Ios_Iostate(ptr noundef nonnull align 8 dereferenceable(264), i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i64 @strlen(ptr noundef captures(none)) local_unnamed_addr #4

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8), i8 noundef signext) local_unnamed_addr #2

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #2

; Function Attrs: noreturn
declare void @_ZSt16__throw_bad_castv() local_unnamed_addr #13

declare void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570)) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i32 @bcmp(ptr captures(none), ptr captures(none), i64) local_unnamed_addr #14

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #15

attributes #0 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { inlinehint mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress norecurse uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nofree nounwind }
attributes #7 = { mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite, errnomem: write) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #9 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { noinline noreturn nounwind uwtable "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { cold nofree noreturn }
attributes #12 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { nocallback nofree nosync nounwind willreturn memory(argmem: read) }
attributes #15 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #16 = { nounwind }
attributes #17 = { noreturn }
attributes #18 = { nounwind willreturn memory(read) }
attributes #19 = { noreturn nounwind }
attributes #20 = { builtin nounwind }
attributes #21 = { nounwind allocsize(0) }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}
!llvm.errno.tbaa = !{!4}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"PIE Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 2}
!3 = !{!"Ubuntu clang version 24.0.0 (++20260816081927+7cb5d896117c-1~exp1~20260816201937.1790)"}
!4 = !{!5, !6, i64 0}
!5 = !{!"__libc_errno", !6, i64 0}
!6 = !{!"int", !7, i64 0}
!7 = !{!"omnipotent char", !8, i64 0}
!8 = !{!"Simple C++ TBAA"}
!9 = !{!10, !10, i64 0}
!10 = !{!"vtable pointer", !8, i64 0}
!11 = !{!12, !13, i64 0}
!12 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_Alloc_hiderE", !13, i64 0}
!13 = !{!"p1 omnipotent char", !14, i64 0}
!14 = !{!"any pointer", !7, i64 0}
!15 = !{!16, !17, i64 8}
!16 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE", !12, i64 0, !17, i64 8, !7, i64 16}
!17 = !{!"long", !7, i64 0}
!18 = !{!7, !7, i64 0}
!19 = !{!16, !13, i64 0}
!20 = !{!21, !23, i64 32}
!21 = !{!"_ZTSSt8ios_base", !17, i64 8, !17, i64 16, !22, i64 24, !23, i64 28, !23, i64 32, !24, i64 40, !25, i64 48, !7, i64 64, !6, i64 192, !26, i64 200, !27, i64 208}
!22 = !{!"_ZTSSt13_Ios_Fmtflags", !7, i64 0}
!23 = !{!"_ZTSSt12_Ios_Iostate", !7, i64 0}
!24 = !{!"p1 _ZTSNSt8ios_base14_Callback_listE", !14, i64 0}
!25 = !{!"_ZTSNSt8ios_base6_WordsE", !14, i64 0, !17, i64 8}
!26 = !{!"p1 _ZTSNSt8ios_base6_WordsE", !14, i64 0}
!27 = !{!"_ZTSSt6locale", !28, i64 0}
!28 = !{!"p1 _ZTSNSt6locale5_ImplE", !14, i64 0}
!29 = !{!30, !34, i64 240}
!30 = !{!"_ZTSSt9basic_iosIcSt11char_traitsIcEE", !21, i64 0, !31, i64 216, !7, i64 224, !32, i64 225, !33, i64 232, !34, i64 240, !35, i64 248, !36, i64 256}
!31 = !{!"p1 _ZTSSo", !14, i64 0}
!32 = !{!"bool", !7, i64 0}
!33 = !{!"p1 _ZTSSt15basic_streambufIcSt11char_traitsIcEE", !14, i64 0}
!34 = !{!"p1 _ZTSSt5ctypeIcE", !14, i64 0}
!35 = !{!"p1 _ZTSSt7num_putIcSt19ostreambuf_iteratorIcSt11char_traitsIcEEE", !14, i64 0}
!36 = !{!"p1 _ZTSSt7num_getIcSt19istreambuf_iteratorIcSt11char_traitsIcEEE", !14, i64 0}
!37 = !{!38, !7, i64 56}
!38 = !{!"_ZTSSt5ctypeIcE", !39, i64 0, !40, i64 16, !32, i64 24, !41, i64 32, !41, i64 40, !42, i64 48, !7, i64 56, !7, i64 57, !7, i64 313, !7, i64 569}
!39 = !{!"_ZTSNSt6locale5facetE", !6, i64 8}
!40 = !{!"p1 _ZTS15__locale_struct", !14, i64 0}
!41 = !{!"p1 int", !14, i64 0}
!42 = !{!"p1 short", !14, i64 0}
!43 = distinct !{ptr @_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_, null}
!44 = !{!13, !13, i64 0}
!45 = !{!6, !6, i64 0}
!46 = !{!47, !47, i64 0}
!47 = !{!"p1 double", !14, i64 0}
!48 = !{!42, !42, i64 0}
!49 = !{!"branch_weights", i32 1, i32 1048575}
!50 = !{!51, !7, i64 0}
!51 = !{!"_ZTSN4Ptex4v2_43ResE", !7, i64 0, !7, i64 1}
!52 = !{!51, !7, i64 1}
!53 = !{ptr @_Z9writeMetaPN4Ptex4v2_410PtexWriterEPKcPdiPsiS4_}
!54 = !{!55, !55, i64 0}
!55 = !{!"short", !7, i64 0}
!56 = distinct !{!56, !57, !58, !59}
!57 = !{!"llvm.loop.mustprogress"}
!58 = !{!"llvm.loop.isvectorized", i32 1}
!59 = !{!"llvm.loop.unroll.runtime.disable"}
!60 = distinct !{!60, !57}
!61 = !{!62, !7, i64 3}
!62 = !{!"_ZTSN4Ptex4v2_48FaceInfoE", !51, i64 0, !7, i64 2, !7, i64 3, !7, i64 4}
!63 = !{!62, !7, i64 2}
!64 = distinct !{!64, !57}
!65 = !{!66, !66, i64 0}
!66 = !{!"double", !7, i64 0}
!67 = distinct !{null}
end_hunk_0
