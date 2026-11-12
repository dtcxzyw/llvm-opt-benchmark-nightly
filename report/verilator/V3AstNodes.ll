Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/verilator/original/V3AstNodes?download=true
inline.NumInlined: 27718
inline.NumDeleted: 2557
loop-unroll.NumCompletelyUnrolled: 4
loop-unroll.NumUnrolled: 4
begin_hunk_0_@_ZNK7AstNode6user3pEv:bb.a
  %i.d = icmp eq i32 %i.b, %i.c
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.f = load i64, ptr %i.e, align 8
  %i.g = inttoptr i64 %i.f to ptr
  %.sroa.0.0.i = select i1 %i.d, ptr %i.g, ptr null
  ret ptr %.sroa.0.0.i
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef ptr @_ZNK7AstNode6user4pEv(ptr noundef nonnull align 8 dereferenceable(152) %0) #3 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 140
  %i.b = load i32, ptr %i.a, align 4, !tbaa !463
  %i.c = load i32, ptr @_ZN12VNUser4InUse12s_userCntGblE, align 4, !tbaa !100
  %i.d = icmp eq i32 %i.b, %i.c
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 144
  %i.f = load i64, ptr %i.e, align 8
  %i.g = inttoptr i64 %i.f to ptr
  %.sroa.0.0.i = select i1 %i.d, ptr %i.g, ptr null
  ret ptr %.sroa.0.0.i
}

; Function Attrs: mustprogress uwtable
define dso_local void @_ZNK7AstNode12dumpTreeJsonERSoRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(152) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(32) %2) local_unnamed_addr #3 align 2 personality ptr @__gxx_personality_v0 {
_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit:
  %i.a = alloca i64, align 8                      ; 6 uses
  %i.b = alloca i8, align 1                       ; 4 uses
  %i.c = alloca i8, align 1                       ; 4 uses
  %i.d = alloca i8, align 1                       ; 4 uses
  %i.e = alloca i8, align 1                       ; 4 uses
  %i.f = alloca i8, align 1                       ; 4 uses
  %i.g = alloca i64, align 8                      ; 6 uses
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 16 uses
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %i.h = alloca i8, align 1                       ; 4 uses
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %6 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %7 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %8 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %9 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %10 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %11 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %12 = alloca %"class.std::__cxx11::basic_string", align 8 ; 15 uses
  %i.i = load ptr, ptr %2, align 8, !tbaa !75
  %i.j = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.k = load i64, ptr %i.j, align 8, !tbaa !73
  %i.l = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef %i.i, i64 noundef %i.k) ; 6 uses
  %i.m = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.l, ptr noundef nonnull @.str.1282, i64 noundef 9) ; 0 uses
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 64
  %.sroa.0.0.copyload.i.i = load i16, ptr %i.n, align 8, !tbaa !62
  %i.o = zext i16 %.sroa.0.0.copyload.i.i to i64
  %i.p = getelementptr inbounds nuw [8 x i8], ptr @_ZZNK6VNType5asciiEvE5names, i64 %i.o
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !102  ; 2 uses
  %i.r = tail call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.q) #33
  %i.s = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.l, ptr noundef nonnull %i.q, i64 noundef %i.r) ; 0 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h)
  store i8 34, ptr %i.h, align 1, !tbaa !74
  %i.t = load ptr, ptr %i.l, align 8, !tbaa !77
  %i.u = getelementptr i8, ptr %i.t, i64 -24
  %i.v = load i64, ptr %i.u, align 8
  %i.w = getelementptr inbounds i8, ptr %i.l, i64 %i.v
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 16
  %i.y = load i64, ptr %i.x, align 8, !tbaa !86
  %.not.i34 = icmp eq i64 %i.y, 0
  br i1 %.not.i34, label %bb.b, label %bb.a

bb.a:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit
  %i.z = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.l, ptr noundef nonnull %i.h, i64 noundef 1) ; 0 uses
  br label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit

bb.b:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit
  %i.aa = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %i.l, i8 noundef signext 34) ; 0 uses
  br label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit: ; preds = %bb.a, %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #33
  %i.ab = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 6 uses
  store ptr %i.ab, ptr %5, align 8, !tbaa !70
  store i32 1701667182, ptr %i.ab, align 8
  %i.ac = getelementptr inbounds nuw i8, ptr %5, i64 8
  store i64 4, ptr %i.ac, align 8, !tbaa !73
  %i.ad = getelementptr inbounds nuw i8, ptr %5, i64 20
  store i8 0, ptr %i.ad, align 4, !tbaa !74
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #33
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #33
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #33, !noalias !1261
  %i.ae = load ptr, ptr %0, align 8, !tbaa !77, !noalias !1261
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 64
  %i.ag = load ptr, ptr %i.af, align 8, !noalias !1261
  invoke void %i.ag(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %4, ptr noundef nonnull align 8 dereferenceable(152) %0)
          to label %.noexc35 unwind label %bb.ah, !inline_history !622

.noexc35:                                         ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit
  invoke void @_ZN7AstNode10prettyNameERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %7, ptr noundef nonnull align 8 dereferenceable(32) %4)
          to label %bb.c unwind label %bb.d

bb.c:                                             ; preds = %.noexc35
  %i.ah = load ptr, ptr %4, align 8, !tbaa !75, !noalias !1261 ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.aj = icmp eq ptr %i.ah, %i.ai
  br i1 %i.aj, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.c
  %i.ak = load i64, ptr %i.ai, align 8, !tbaa !74, !noalias !1261
  %i.al = add i64 %i.ak, 1
  call void @_ZdlPvm(ptr noundef %i.ah, i64 noundef %i.al) #34
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i

bb.d:                                             ; preds = %.noexc35
  %i.am = landingpad { ptr, i32 }
          cleanup
  %i.an = load ptr, ptr %4, align 8, !tbaa !75, !noalias !1261 ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.ap = icmp eq ptr %i.an, %i.ao
  br i1 %i.ap, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit4.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i2.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i2.i: ; preds = %bb.d
  %i.aq = load i64, ptr %i.ao, align 8, !tbaa !74, !noalias !1261
  %i.ar = add i64 %i.aq, 1
  call void @_ZdlPvm(ptr noundef %i.an, i64 noundef %i.ar) #34
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit4.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit4.i: ; preds = %bb.d, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i2.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #33, !noalias !1261
  br label %.body

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i: ; preds = %bb.c, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #33, !noalias !1261
  invoke void @_ZN14V3OutFormatter17quoteNameControlsERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_8LanguageE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %6, ptr noundef nonnull align 8 dereferenceable(32) %7, i8 noundef zeroext 0)
          to label %bb.e unwind label %bb.ai

bb.e:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i
  invoke void @_ZN7AstNode11dumpJsonStrERSoRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull align 8 dereferenceable(32) %6)
          to label %bb.f unwind label %bb.aj

bb.f:                                             ; preds = %bb.e
  %i.as = load ptr, ptr %6, align 8, !tbaa !75    ; 2 uses
  %i.at = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 2 uses
  %i.au = icmp eq ptr %i.as, %i.at
  br i1 %i.au, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.f
  %i.av = load i64, ptr %i.at, align 8, !tbaa !74
  %i.aw = add i64 %i.av, 1
  call void @_ZdlPvm(ptr noundef %i.as, i64 noundef %i.aw) #34
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.f, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  %i.ax = load ptr, ptr %7, align 8, !tbaa !75    ; 2 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 2 uses
  %i.az = icmp eq ptr %i.ax, %i.ay
  br i1 %i.az, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit38, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i36

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i36: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.ba = load i64, ptr %i.ay, align 8, !tbaa !74
  %i.bb = add i64 %i.ba, 1
  call void @_ZdlPvm(ptr noundef %i.ax, i64 noundef %i.bb) #34
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit38

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit38: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i36
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #33
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #33
  %i.bc = load ptr, ptr %5, align 8, !tbaa !75    ; 2 uses
  %i.bd = icmp eq ptr %i.bc, %i.ab
  br i1 %i.bd, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit41, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i39

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i39: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit38
  %i.be = load i64, ptr %i.ab, align 8, !tbaa !74
  %i.bf = add i64 %i.be, 1
  call void @_ZdlPvm(ptr noundef %i.bc, i64 noundef %i.bf) #34
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit41

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit41: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit38, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i39
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #33
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #33
  %i.bg = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 6 uses
  store ptr %i.bg, ptr %8, align 8, !tbaa !70
  store i32 1919181921, ptr %i.bg, align 8
  %i.bh = getelementptr inbounds nuw i8, ptr %8, i64 8
  store i64 4, ptr %i.bh, align 8, !tbaa !73
  %i.bi = getelementptr inbounds nuw i8, ptr %8, i64 20
  store i8 0, ptr %i.bi, align 4, !tbaa !74
  invoke void @_ZN7AstNode11dumpJsonPtrERSoRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKS_(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(32) %8, ptr noundef nonnull %0)
          to label %bb.g unwind label %bb.ak

bb.g:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit41
  %i.bj = load ptr, ptr %8, align 8, !tbaa !75    ; 2 uses
  %i.bk = icmp eq ptr %i.bj, %i.bg
  br i1 %i.bk, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit48, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i46

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i46: ; preds = %bb.g
  %i.bl = load i64, ptr %i.bg, align 8, !tbaa !74
  %i.bm = add i64 %i.bl, 1
  call void @_ZdlPvm(ptr noundef %i.bj, i64 noundef %i.bm) #34
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit48

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit48: ; preds = %bb.g, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i46
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #33
  %i.bn = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.bo = load ptr, ptr %i.bn, align 8, !tbaa !451 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #33
  %i.bp = load i8, ptr getelementptr inbounds nuw (i8, ptr @v3Global, i64 1109), align 1, !tbaa !148, !range !149, !noundef !150
  %i.bq = trunc nuw i8 %i.bp to i1
  br i1 %i.bq, label %bb.h, label %bb.i

bb.h:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit48
  %i.br = getelementptr inbounds nuw i8, ptr %i.bo, i64 2
  %i.bs = load i16, ptr %i.br, align 2, !tbaa !455, !noalias !1262
  call void @_ZN17FileLineSingleton15filenameLettersB5cxx11Et(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %3, i16 noundef zeroext %i.bs)
  br label %bb.l

bb.i:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit48
  %i.bt = call noundef nonnull align 8 dereferenceable(32) ptr @_ZNK8FileLine8filenameB5cxx11Ev(ptr noundef nonnull align 8 dereferenceable(48) %i.bo) ; 2 uses
  %i.bu = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 3 uses
  store ptr %i.bu, ptr %3, align 8, !tbaa !70
  %i.bv = load ptr, ptr %i.bt, align 8, !tbaa !75 ; 2 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bt, i64 8
  %i.bx = load i64, ptr %i.bw, align 8, !tbaa !73 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #33
  store i64 %i.bx, ptr %i.g, align 8, !tbaa !89
  %i.by = icmp ugt i64 %i.bx, 15
  br i1 %i.by, label %.noexc.i.i, label %._crit_edge.i.i.i

.noexc.i.i:                                       ; preds = %bb.i
  %i.bz = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(8) %i.g, i64 noundef 0) ; 2 uses
  store ptr %i.bz, ptr %3, align 8, !tbaa !75
  %i.ca = load i64, ptr %i.g, align 8, !tbaa !89
  store i64 %i.ca, ptr %i.bu, align 8, !tbaa !74
  br label %._crit_edge.i.i.i

._crit_edge.i.i.i:                                ; preds = %.noexc.i.i, %bb.i
  %i.cb = phi ptr [ %i.bz, %.noexc.i.i ], [ %i.bu, %bb.i ] ; 2 uses
  switch i64 %i.bx, label %bb.k [
    i64 1, label %bb.j
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i
  ]

bb.j:                                             ; preds = %._crit_edge.i.i.i
  %i.cc = load i8, ptr %i.bv, align 1, !tbaa !74
  store i8 %i.cc, ptr %i.cb, align 1, !tbaa !74
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i

bb.k:                                             ; preds = %._crit_edge.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.cb, ptr align 1 %i.bv, i64 %i.bx, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i: ; preds = %bb.k, %bb.j, %._crit_edge.i.i.i
  %i.cd = load i64, ptr %i.g, align 8, !tbaa !89  ; 2 uses
  %i.ce = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i64 %i.cd, ptr %i.ce, align 8, !tbaa !73
  %i.cf = load ptr, ptr %3, align 8, !tbaa !75
  %i.cg = getelementptr inbounds nuw i8, ptr %i.cf, i64 %i.cd
  store i8 0, ptr %i.cg, align 1, !tbaa !74
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #33
  br label %bb.l

bb.l:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i, %bb.h
  %i.ch = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull @.str.2308, i64 noundef 8)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i unwind label %bb.af ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i: ; preds = %bb.l
  %i.ci = load ptr, ptr %3, align 8, !tbaa !75
  %i.cj = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.ck = load i64, ptr %i.cj, align 8, !tbaa !73
  %i.cl = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef %i.ci, i64 noundef %i.ck)
          to label %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit.i unwind label %bb.af ; 5 uses

_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit.i: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  store i8 44, ptr %i.f, align 1, !tbaa !74
  %i.cm = load ptr, ptr %i.cl, align 8, !tbaa !77
  %i.cn = getelementptr i8, ptr %i.cm, i64 -24
  %i.co = load i64, ptr %i.cn, align 8
  %i.cp = getelementptr inbounds i8, ptr %i.cl, i64 %i.co
  %i.cq = getelementptr inbounds nuw i8, ptr %i.cp, i64 16
  %i.cr = load i64, ptr %i.cq, align 8, !tbaa !86
  %.not.i.i = icmp eq i64 %i.cr, 0
  br i1 %.not.i.i, label %bb.n, label %bb.m

bb.m:                                             ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit.i
  %i.cs = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.cl, ptr noundef nonnull %i.f, i64 noundef 1)
          to label %bb.o unwind label %bb.af

bb.n:                                             ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit.i
  %i.ct = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %i.cl, i8 noundef signext 44)
          to label %bb.o unwind label %bb.af      ; 0 uses

bb.o:                                             ; preds = %bb.n, %bb.m
  %.0.i.i = phi ptr [ %i.cs, %bb.m ], [ %i.cl, %bb.n ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  %i.cu = getelementptr inbounds nuw i8, ptr %i.bo, i64 12 ; 2 uses
  %i.cv = load i32, ptr %i.cu, align 4, !tbaa !458
  %i.cw = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) %.0.i.i, i32 noundef %i.cv)
          to label %bb.p unwind label %bb.af      ; 5 uses

bb.p:                                             ; preds = %bb.o
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  store i8 58, ptr %i.e, align 1, !tbaa !74
  %i.cx = load ptr, ptr %i.cw, align 8, !tbaa !77
  %i.cy = getelementptr i8, ptr %i.cx, i64 -24
  %i.cz = load i64, ptr %i.cy, align 8
  %i.da = getelementptr inbounds i8, ptr %i.cw, i64 %i.cz
  %i.db = getelementptr inbounds nuw i8, ptr %i.da, i64 16
  %i.dc = load i64, ptr %i.db, align 8, !tbaa !86
  %.not.i9.i = icmp eq i64 %i.dc, 0
  br i1 %.not.i9.i, label %bb.r, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.dd = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.cw, ptr noundef nonnull %i.e, i64 noundef 1)
          to label %bb.s unwind label %bb.af

bb.r:                                             ; preds = %bb.p
  %i.de = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %i.cw, i8 noundef signext 58)
          to label %bb.s unwind label %bb.af      ; 0 uses

bb.s:                                             ; preds = %bb.r, %bb.q
  %.0.i10.i = phi ptr [ %i.dd, %bb.q ], [ %i.cw, %bb.r ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  %i.df = getelementptr inbounds nuw i8, ptr %i.bo, i64 16 ; 2 uses
  %i.dg = load i64, ptr %i.df, align 8
  %i.dh = trunc i64 %i.dg to i32
  %i.di = and i32 %i.dh, 16777215
  %i.dj = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) %.0.i10.i, i32 noundef %i.di)
          to label %bb.t unwind label %bb.af      ; 5 uses

bb.t:                                             ; preds = %bb.s
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  store i8 44, ptr %i.d, align 1, !tbaa !74
  %i.dk = load ptr, ptr %i.dj, align 8, !tbaa !77
  %i.dl = getelementptr i8, ptr %i.dk, i64 -24
  %i.dm = load i64, ptr %i.dl, align 8
  %i.dn = getelementptr inbounds i8, ptr %i.dj, i64 %i.dm
  %i.do = getelementptr inbounds nuw i8, ptr %i.dn, i64 16
  %i.dp = load i64, ptr %i.do, align 8, !tbaa !86
  %.not.i14.i = icmp eq i64 %i.dp, 0
  br i1 %.not.i14.i, label %bb.v, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.dq = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.dj, ptr noundef nonnull %i.d, i64 noundef 1)
          to label %bb.w unwind label %bb.af

bb.v:                                             ; preds = %bb.t
  %i.dr = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %i.dj, i8 noundef signext 44)
          to label %bb.w unwind label %bb.af      ; 0 uses

bb.w:                                             ; preds = %bb.v, %bb.u
  %.0.i15.i = phi ptr [ %i.dq, %bb.u ], [ %i.dj, %bb.v ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  %i.ds = load i32, ptr %i.cu, align 4, !tbaa !458
  %i.dt = getelementptr inbounds nuw i8, ptr %i.bo, i64 24
  %i.du = load i16, ptr %i.dt, align 8, !tbaa !459
  %i.dv = zext i16 %i.du to i32
  %i.dw = add nsw i32 %i.ds, %i.dv
  %i.dx = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) %.0.i15.i, i32 noundef %i.dw)
          to label %bb.x unwind label %bb.af      ; 5 uses

bb.x:                                             ; preds = %bb.w
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  store i8 58, ptr %i.c, align 1, !tbaa !74
  %i.dy = load ptr, ptr %i.dx, align 8, !tbaa !77
  %i.dz = getelementptr i8, ptr %i.dy, i64 -24
  %i.ea = load i64, ptr %i.dz, align 8
  %i.eb = getelementptr inbounds i8, ptr %i.dx, i64 %i.ea
  %i.ec = getelementptr inbounds nuw i8, ptr %i.eb, i64 16
  %i.ed = load i64, ptr %i.ec, align 8, !tbaa !86
  %.not.i19.i = icmp eq i64 %i.ed, 0
  br i1 %.not.i19.i, label %bb.z, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.ee = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.dx, ptr noundef nonnull %i.c, i64 noundef 1)
          to label %bb.aa unwind label %bb.af

bb.z:                                             ; preds = %bb.x
  %i.ef = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %i.dx, i8 noundef signext 58)
          to label %bb.aa unwind label %bb.af     ; 0 uses

bb.aa:                                            ; preds = %bb.z, %bb.y
  %.0.i20.i = phi ptr [ %i.ee, %bb.y ], [ %i.dx, %bb.z ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  %13 = load i64, ptr %i.df, align 8
  %14 = lshr i64 %13, 32
  %15 = trunc nuw i64 %14 to i32
  %i.eg = and i32 %15, 16777215
  %i.eh = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) %.0.i20.i, i32 noundef %i.eg)
          to label %bb.ab unwind label %bb.af     ; 4 uses

bb.ab:                                            ; preds = %bb.aa
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store i8 34, ptr %i.b, align 1, !tbaa !74
  %i.ei = load ptr, ptr %i.eh, align 8, !tbaa !77
  %i.ej = getelementptr i8, ptr %i.ei, i64 -24
  %i.ek = load i64, ptr %i.ej, align 8
  %i.el = getelementptr inbounds i8, ptr %i.eh, i64 %i.ek
  %i.em = getelementptr inbounds nuw i8, ptr %i.el, i64 16
  %i.en = load i64, ptr %i.em, align 8, !tbaa !86
  %.not.i24.i = icmp eq i64 %i.en, 0
  br i1 %.not.i24.i, label %bb.ad, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.eo = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.eh, ptr noundef nonnull %i.b, i64 noundef 1)
          to label %bb.ae unwind label %bb.af     ; 0 uses

bb.ad:                                            ; preds = %bb.ab
  %i.ep = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %i.eh, i8 noundef signext 34)
          to label %bb.ae unwind label %bb.af     ; 0 uses

bb.ae:                                            ; preds = %bb.ad, %bb.ac
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %i.eq = load ptr, ptr %3, align 8, !tbaa !75    ; 2 uses
  %i.er = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.es = icmp eq ptr %i.eq, %i.er
  br i1 %i.es, label %_ZL12dumpFileInfoRSoPK8FileLine.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i49

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i49: ; preds = %bb.ae
  %i.et = load i64, ptr %i.er, align 8, !tbaa !74
  %i.eu = add i64 %i.et, 1
  call void @_ZdlPvm(ptr noundef %i.eq, i64 noundef %i.eu) #34
  br label %_ZL12dumpFileInfoRSoPK8FileLine.exit

bb.af:                                            ; preds = %bb.ad, %bb.ac, %bb.aa, %bb.z, %bb.y, %bb.w, %bb.v, %bb.u, %bb.s, %bb.r, %bb.q, %bb.o, %bb.n, %bb.m, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i, %bb.l
  %i.ev = landingpad { ptr, i32 }
          cleanup
  %i.ew = load ptr, ptr %3, align 8, !tbaa !75    ; 2 uses
  %i.ex = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.ey = icmp eq ptr %i.ew, %i.ex
  br i1 %i.ey, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit31.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i29.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i29.i: ; preds = %bb.af
  %i.ez = load i64, ptr %i.ex, align 8, !tbaa !74
  %i.fa = add i64 %i.ez, 1
  call void @_ZdlPvm(ptr noundef %i.ew, i64 noundef %i.fa) #34
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit31.i

common.resume:                                    ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit66, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit69, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit72, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit103, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit31.i
  %common.resume.op = phi { ptr, i32 } [ %i.ev, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit31.i ], [ %i.gk, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit72 ], [ %.pn27.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit103 ], [ %i.gf, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit69 ], [ %.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit66 ]
  resume { ptr, i32 } %common.resume.op

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit31.i: ; preds = %bb.af, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i29.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #33
  br label %common.resume

_ZL12dumpFileInfoRSoPK8FileLine.exit:             ; preds = %bb.ae, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i49
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #33
  %i.fb = load ptr, ptr %0, align 8, !tbaa !77
  %i.fc = getelementptr inbounds nuw i8, ptr %i.fb, i64 256
  %i.fd = load ptr, ptr %i.fc, align 8
  %i.fe = call noundef zeroext i1 %i.fd(ptr noundef nonnull align 8 dereferenceable(152) %0)
  br i1 %i.fe, label %._crit_edge.i.i51, label %bb.am

._crit_edge.i.i51:                                ; preds = %_ZL12dumpFileInfoRSoPK8FileLine.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #33
  %i.ff = getelementptr inbounds nuw i8, ptr %9, i64 16 ; 6 uses
  store ptr %i.ff, ptr %9, align 8, !tbaa !70
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(6) %i.ff, ptr noundef nonnull align 1 dereferenceable(6) @.str.1285, i64 6, i1 false)
  %i.fg = getelementptr inbounds nuw i8, ptr %9, i64 8
  store i64 6, ptr %i.fg, align 8, !tbaa !73
  %i.fh = getelementptr inbounds nuw i8, ptr %9, i64 22
  store i8 0, ptr %i.fh, align 2, !tbaa !74
  %i.fi = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.fj = load ptr, ptr %i.fi, align 8, !tbaa !175
  invoke void @_ZN7AstNode11dumpJsonPtrERSoRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKS_(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(32) %9, ptr noundef %i.fj)
          to label %bb.ag unwind label %bb.al

bb.ag:                                            ; preds = %._crit_edge.i.i51
  %i.fk = load ptr, ptr %9, align 8, !tbaa !75    ; 2 uses
  %i.fl = icmp eq ptr %i.fk, %i.ff
  br i1 %i.fl, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit57, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i55

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i55: ; preds = %bb.ag
  %i.fm = load i64, ptr %i.ff, align 8, !tbaa !74
  %i.fn = add i64 %i.fm, 1
  call void @_ZdlPvm(ptr noundef %i.fk, i64 noundef %i.fn) #34
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit57

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit57: ; preds = %bb.ag, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i55
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #33
  br label %bb.ax

bb.ah:                                            ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit
  %i.fo = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.ai:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i
  %i.fp = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit60

bb.aj:                                            ; preds = %bb.e
  %i.fq = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.fr = load ptr, ptr %6, align 8, !tbaa !75    ; 2 uses
  %i.fs = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 2 uses
  %i.ft = icmp eq ptr %i.fr, %i.fs
  br i1 %i.ft, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit60, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i58

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i58: ; preds = %bb.aj
  %i.fu = load i64, ptr %i.fs, align 8, !tbaa !74
  %i.fv = add i64 %i.fu, 1
  call void @_ZdlPvm(ptr noundef %i.fr, i64 noundef %i.fv) #34
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit60

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit60: ; preds = %bb.aj, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i58, %bb.ai
  %.pn = phi { ptr, i32 } [ %i.fp, %bb.ai ], [ %i.fq, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i58 ], [ %i.fq, %bb.aj ] ; 2 uses
  %i.fw = load ptr, ptr %7, align 8, !tbaa !75    ; 2 uses
  %i.fx = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 2 uses
  %i.fy = icmp eq ptr %i.fw, %i.fx
  br i1 %i.fy, label %.body, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i61

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i61: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit60
  %i.fz = load i64, ptr %i.fx, align 8, !tbaa !74
  %i.ga = add i64 %i.fz, 1
  call void @_ZdlPvm(ptr noundef %i.fw, i64 noundef %i.ga) #34
  br label %.body

.body:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit60, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i61, %bb.ah, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit4.i
  %.pn.pn = phi { ptr, i32 } [ %i.am, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit4.i ], [ %i.fo, %bb.ah ], [ %.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i61 ], [ %.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit60 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #33
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #33
  %i.gb = load ptr, ptr %5, align 8, !tbaa !75    ; 2 uses
  %i.gc = icmp eq ptr %i.gb, %i.ab
  br i1 %i.gc, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit66, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i64

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i64: ; preds = %.body
  %i.gd = load i64, ptr %i.ab, align 8, !tbaa !74
  %i.ge = add i64 %i.gd, 1
  call void @_ZdlPvm(ptr noundef %i.gb, i64 noundef %i.ge) #34
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit66

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit66: ; preds = %.body, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i64
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #33
  br label %common.resume

bb.ak:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit41
  %i.gf = landingpad { ptr, i32 }
          cleanup
  %i.gg = load ptr, ptr %8, align 8, !tbaa !75    ; 2 uses
  %i.gh = icmp eq ptr %i.gg, %i.bg
  br i1 %i.gh, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit69, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i67

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i67: ; preds = %bb.ak
  %i.gi = load i64, ptr %i.bg, align 8, !tbaa !74
  %i.gj = add i64 %i.gi, 1
  call void @_ZdlPvm(ptr noundef %i.gg, i64 noundef %i.gj) #34
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit69

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit69: ; preds = %bb.ak, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i67
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #33
  br label %common.resume

bb.al:                                            ; preds = %._crit_edge.i.i51
  %i.gk = landingpad { ptr, i32 }
          cleanup
  %i.gl = load ptr, ptr %9, align 8, !tbaa !75    ; 2 uses
  %i.gm = icmp eq ptr %i.gl, %i.ff
  br i1 %i.gm, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit72, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i70

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i70: ; preds = %bb.al
  %i.gn = load i64, ptr %i.ff, align 8, !tbaa !74
  %i.go = add i64 %i.gn, 1
  call void @_ZdlPvm(ptr noundef %i.gl, i64 noundef %i.go) #34
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit72

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit72: ; preds = %bb.al, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i70
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #33
  br label %common.resume

bb.am:                                            ; preds = %_ZL12dumpFileInfoRSoPK8FileLine.exit
  %i.gp = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.gq = load ptr, ptr %i.gp, align 8, !tbaa !175 ; 3 uses
  %.not = icmp eq ptr %i.gq, null
  br i1 %.not, label %bb.ax, label %._crit_edge.i.i73

._crit_edge.i.i73:                                ; preds = %bb.am
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #33
  %i.gr = getelementptr inbounds nuw i8, ptr %10, i64 16 ; 6 uses
  store ptr %i.gr, ptr %10, align 8, !tbaa !70
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(6) %i.gr, ptr noundef nonnull align 1 dereferenceable(6) @.str.1285, i64 6, i1 false)
  %i.gs = getelementptr inbounds nuw i8, ptr %10, i64 8
  store i64 6, ptr %i.gs, align 8, !tbaa !73
  %i.gt = getelementptr inbounds nuw i8, ptr %10, i64 22
  store i8 0, ptr %i.gt, align 2, !tbaa !74
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #33
end_hunk_0
begin_hunk_1_@_ZN7AstNode4castI18AstAssocArrayDType12AstNodeDTypeEEPT_PT0_:bb.a
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 64
  %.sroa.0.0.copyload.i.i = load i16, ptr %i.a, align 8, !tbaa !62
  %i.b = icmp eq i16 %.sroa.0.0.copyload.i.i, 73
  %spec.select = select i1 %i.b, ptr %0, ptr null
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.c = phi ptr [ null, %bb.a ], [ %spec.select, %bb.b ]
  ret ptr %i.c
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local noundef ptr @_ZNK6VNType5asciiEv(ptr noundef nonnull align 2 dereferenceable(2) %0) #4 comdat align 2 {
bb.a:
  %i.a = load i16, ptr %0, align 2, !tbaa !464
  %i.b = zext i16 %i.a to i64
  %i.c = getelementptr inbounds nuw [8 x i8], ptr @_ZZNK6VNType5asciiEvE5names, i64 %i.b
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !102
  ret ptr %i.d
}

declare noundef zeroext i1 @_ZNK9V3Options15dumpTreeAddridsEv(ptr noundef nonnull align 8 dereferenceable(1728)) #8

declare void @_ZN17FileLineSingleton15filenameLettersB5cxx11Et(ptr dead_on_unwind writable sret(%"class.std::__cxx11::basic_string") align 8, i16 noundef zeroext) #8

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local noundef i32 @_ZNK8FileLine10filenamenoEv(ptr noundef nonnull align 8 dereferenceable(48) %0) #4 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 2
  %i.b = load i16, ptr %i.a, align 2, !tbaa !455
  %i.c = zext i16 %i.b to i32
  ret i32 %i.c
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local ptr @_ZNK7AstNode6user1uEv(ptr noundef nonnull align 8 dereferenceable(152) %0) #3 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.b = load i32, ptr %i.a, align 8, !tbaa !460
  %i.c = load i32, ptr @_ZN12VNUser1InUse12s_userCntGblE, align 4, !tbaa !100
  %i.d = icmp eq i32 %i.b, %i.c
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.f = load i64, ptr %i.e, align 8
  %i.g = inttoptr i64 %i.f to ptr
  %.sroa.0.0 = select i1 %i.d, ptr %i.g, ptr null
  ret ptr %.sroa.0.0
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef ptr @_ZNK6VNUser7toNodepEv(ptr noundef nonnull align 8 dereferenceable(8) %0) #3 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !74
  ret ptr %i.a
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local noundef ptr @_ZNK6VNUser2toIP7AstNodeEENSt9enable_ifIXsr3std10is_pointerIT_EE5valueES4_E4typeEv(ptr noundef nonnull align 8 dereferenceable(8) %0) #4 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !74
  ret ptr %i.a
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local ptr @_ZNK7AstNode6user2uEv(ptr noundef nonnull align 8 dereferenceable(152) %0) #3 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 116
  %i.b = load i32, ptr %i.a, align 4, !tbaa !461
  %i.c = load i32, ptr @_ZN12VNUser2InUse12s_userCntGblE, align 4, !tbaa !100
  %i.d = icmp eq i32 %i.b, %i.c
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.f = load i64, ptr %i.e, align 8
  %i.g = inttoptr i64 %i.f to ptr
  %.sroa.0.0 = select i1 %i.d, ptr %i.g, ptr null
  ret ptr %.sroa.0.0
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local ptr @_ZNK7AstNode6user3uEv(ptr noundef nonnull align 8 dereferenceable(152) %0) #3 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.b = load i32, ptr %i.a, align 8, !tbaa !462
  %i.c = load i32, ptr @_ZN12VNUser3InUse12s_userCntGblE, align 4, !tbaa !100
  %i.d = icmp eq i32 %i.b, %i.c
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.f = load i64, ptr %i.e, align 8
  %i.g = inttoptr i64 %i.f to ptr
  %.sroa.0.0 = select i1 %i.d, ptr %i.g, ptr null
  ret ptr %.sroa.0.0
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local ptr @_ZNK7AstNode6user4uEv(ptr noundef nonnull align 8 dereferenceable(152) %0) #3 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 140
  %i.b = load i32, ptr %i.a, align 4, !tbaa !463
  %i.c = load i32, ptr @_ZN12VNUser4InUse12s_userCntGblE, align 4, !tbaa !100
  %i.d = icmp eq i32 %i.b, %i.c
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 144
  %i.f = load i64, ptr %i.e, align 8
  %i.g = inttoptr i64 %i.f to ptr
  %.sroa.0.0 = select i1 %i.d, ptr %i.g, ptr null
  ret ptr %.sroa.0.0
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(32) ptr @_ZNK8FileLine8filenameB5cxx11Ev(ptr noundef nonnull align 8 dereferenceable(48) %0) #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load atomic i8, ptr @_ZGVZN8FileLine9singletonEvE1s acquire, align 8
  %i.b = icmp eq i8 %i.a, 0
  br i1 %i.b, label %bb.b, label %_ZN8FileLine9singletonEv.exit, !prof !465

bb.b:                                             ; preds = %bb.a
  %i.c = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN8FileLine9singletonEvE1s) #33
  %.not.i = icmp eq i32 %i.c, 0
  br i1 %.not.i, label %_ZN8FileLine9singletonEv.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  invoke void @_ZN17FileLineSingletonC2Ev(ptr noundef nonnull align 8 dereferenceable(336) @_ZZN8FileLine9singletonEvE1s)
          to label %bb.d unwind label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.d = tail call i32 @__cxa_atexit(ptr nonnull @_ZN17FileLineSingletonD2Ev, ptr nonnull @_ZZN8FileLine9singletonEvE1s, ptr nonnull @__dso_handle) #33 ; 0 uses
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN8FileLine9singletonEvE1s) #33
  br label %_ZN8FileLine9singletonEv.exit

bb.e:                                             ; preds = %bb.c
  %i.e = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_guard_abort(ptr nonnull @_ZGVZN8FileLine9singletonEvE1s) #33
  resume { ptr, i32 } %i.e

_ZN8FileLine9singletonEv.exit:                    ; preds = %bb.a, %bb.b, %bb.d
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 2
  %i.g = load i16, ptr %i.f, align 2, !tbaa !455
  %i.h = zext i16 %i.g to i64                     ; 2 uses
  %i.i = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZZN8FileLine9singletonEvE1s, i64 104), align 8, !tbaa !853, !noalias !2156 ; 2 uses
  %i.j = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZZN8FileLine9singletonEvE1s, i64 112), align 8, !tbaa !851, !noalias !2156
  %i.k = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZZN8FileLine9singletonEvE1s, i64 128), align 8, !tbaa !850, !noalias !2156
  %i.l = ptrtoint ptr %i.i to i64
  %i.m = ptrtoint ptr %i.j to i64
  %i.n = sub i64 %i.l, %i.m
  %i.o = ashr exact i64 %i.n, 5
  %i.p = add nsw i64 %i.o, %i.h                   ; 5 uses
  %i.q = icmp sgt i64 %i.p, -1
  br i1 %i.q, label %bb.f, label %bb.i

bb.f:                                             ; preds = %_ZN8FileLine9singletonEv.exit
  %i.r = icmp samesign ult i64 %i.p, 16
  br i1 %i.r, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.s = getelementptr inbounds nuw [32 x i8], ptr %i.i, i64 %i.h
  br label %_ZNK17FileLineSingleton12numberToNameB5cxx11Et.exit

bb.h:                                             ; preds = %bb.f
  %i.t = lshr i64 %i.p, 4
  br label %bb.j

bb.i:                                             ; preds = %_ZN8FileLine9singletonEv.exit
  %i.u = ashr i64 %i.p, 4
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %i.v = phi i64 [ %i.t, %bb.h ], [ %i.u, %bb.i ] ; 2 uses
  %i.w = getelementptr inbounds [8 x i8], ptr %i.k, i64 %i.v
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !844, !noalias !2156
  %i.y = shl nsw i64 %i.v, 4
  %i.z = sub nsw i64 %i.p, %i.y
  %i.aa = getelementptr inbounds [32 x i8], ptr %i.x, i64 %i.z
  br label %_ZNK17FileLineSingleton12numberToNameB5cxx11Et.exit

_ZNK17FileLineSingleton12numberToNameB5cxx11Et.exit: ; preds = %bb.g, %bb.j
  %storemerge.i.i.i.i.i = phi ptr [ %i.aa, %bb.j ], [ %i.s, %bb.g ]
  ret ptr %storemerge.i.i.i.i.i
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local noundef i32 @_ZNK8FileLine11firstLinenoEv(ptr noundef nonnull align 8 dereferenceable(48) %0) #4 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.b = load i32, ptr %i.a, align 4, !tbaa !458
  ret i32 %i.b
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local noundef i32 @_ZNK8FileLine11firstColumnEv(ptr noundef nonnull align 8 dereferenceable(48) %0) #4 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load i64, ptr %i.a, align 8
  %i.c = trunc i64 %i.b to i32
  %i.d = and i32 %i.c, 16777215
  ret i32 %i.d
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local noundef i32 @_ZNK8FileLine10lastColumnEv(ptr noundef nonnull align 8 dereferenceable(48) %0) #4 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %1 = load i64, ptr %i.a, align 8
  %2 = lshr i64 %1, 32
  %3 = trunc nuw i64 %2 to i32
  %i.b = and i32 %3, 16777215
  ret i32 %i.b
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(32) ptr @_ZNK17FileLineSingleton12numberToNameB5cxx11Et(ptr noundef nonnull align 8 dereferenceable(336) %0, i16 noundef zeroext %1) #4 comdat align 2 {
bb.a:
  %i.a = zext i16 %1 to i64                       ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !853, !noalias !2159 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !851, !noalias !2159
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !850, !noalias !2159
  %i.h = ptrtoint ptr %i.c to i64
  %i.i = ptrtoint ptr %i.e to i64
  %i.j = sub i64 %i.h, %i.i
  %i.k = ashr exact i64 %i.j, 5
  %i.l = add nsw i64 %i.k, %i.a                   ; 5 uses
  %i.m = icmp sgt i64 %i.l, -1
  br i1 %i.m, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  %i.n = icmp samesign ult i64 %i.l, 16
  br i1 %i.n, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.o = getelementptr inbounds nuw [32 x i8], ptr %i.c, i64 %i.a
  br label %_ZNKSt5dequeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EEixEm.exit

bb.d:                                             ; preds = %bb.b
  %i.p = lshr i64 %i.l, 4
  br label %bb.f

bb.e:                                             ; preds = %bb.a
  %i.q = ashr i64 %i.l, 4
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.r = phi i64 [ %i.p, %bb.d ], [ %i.q, %bb.e ] ; 2 uses
  %i.s = getelementptr inbounds [8 x i8], ptr %i.g, i64 %i.r
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !844, !noalias !2159
  %i.u = shl nsw i64 %i.r, 4
  %i.v = sub nsw i64 %i.l, %i.u
  %i.w = getelementptr inbounds [32 x i8], ptr %i.t, i64 %i.v
  br label %_ZNKSt5dequeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EEixEm.exit

_ZNKSt5dequeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EEixEm.exit: ; preds = %bb.c, %bb.f
  %storemerge.i.i.i.i = phi ptr [ %i.w, %bb.f ], [ %i.o, %bb.c ]
  ret ptr %storemerge.i.i.i.i
}

; Function Attrs: mustprogress uwtable
declare void @_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEC1Ev(ptr noundef nonnull align 8 dereferenceable(128)) unnamed_addr #3 align 2

; Function Attrs: mustprogress nounwind uwtable
declare void @_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(128)) unnamed_addr #4 align 2

; Function Attrs: nounwind
declare void @_ZNSt8ios_baseD2Ev(ptr noundef nonnull align 8 dead_on_return(216) dereferenceable(216)) unnamed_addr #12

; Function Attrs: nounwind
declare void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8)) unnamed_addr #12

declare noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32), i64 noundef, i64 noundef, ptr noundef, i64 noundef) local_unnamed_addr #8

declare void @_ZN7AstNode7vpiNameERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr dead_on_unwind writable sret(%"class.std::__cxx11::basic_string") align 8, ptr noundef nonnull align 8 dereferenceable(32)) local_unnamed_addr #8

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local noundef ptr @_ZN7AstNode15unsafePrivateAsI6AstVarS_EEPKT_PKT0_(ptr noundef %0) #4 comdat align 2 {
bb.a:
  ret ptr %0
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZeqRK8VVarTypeS1_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 1 dereferenceable(1) %1) #4 comdat {
bb.a:
  %i.a = load i8, ptr %0, align 1, !tbaa !495
  %i.b = load i8, ptr %1, align 1, !tbaa !495
  %i.c = icmp eq i8 %i.a, %i.b
  ret i1 %i.c
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN7AstNode11prettyNameQERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef nonnull align 8 dereferenceable(32) %1) local_unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.std::__cxx11::basic_string", align 8 ; 17 uses
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 13 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #33
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #33
  %i.a = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 8 uses
  store ptr %i.a, ptr %3, align 8, !tbaa !70, !alias.scope !2166
  store i8 39, ptr %i.a, align 8, !tbaa !74
  %i.b = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  store i64 1, ptr %i.b, align 8, !tbaa !73, !alias.scope !2166
  %i.c = getelementptr inbounds nuw i8, ptr %3, i64 17
  store i8 0, ptr %i.c, align 1, !tbaa !74
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #33
  invoke void @_ZN7AstNode10prettyNameERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %4, ptr noundef nonnull align 8 dereferenceable(32) %1)
          to label %bb.b unwind label %bb.k

bb.b:                                             ; preds = %bb.a
  call void @llvm.experimental.noalias.scope.decl(metadata !2167)
  %i.d = load i64, ptr %i.b, align 8, !tbaa !73, !noalias !2167 ; 4 uses
  %i.e = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.f = load i64, ptr %i.e, align 8, !tbaa !73, !noalias !2167 ; 4 uses
  %i.g = add i64 %i.f, %i.d                       ; 2 uses
  %i.h = load ptr, ptr %3, align 8, !tbaa !75, !noalias !2167 ; 2 uses
  %i.i = icmp eq ptr %i.h, %i.a
  br i1 %i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i: ; preds = %bb.b
  %i.j = icmp ult i64 %i.d, 16
  call void @llvm.assume(i1 %i.j)
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.b
  %i.k = load i64, ptr %i.a, align 8, !tbaa !74, !noalias !2167
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i
  %i.l = phi i64 [ %i.k, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ], [ 15, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i ]
  %i.m = icmp ugt i64 %i.g, %i.l
  br i1 %i.m, label %bb.c, label %bb.e

bb.c:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i
  %i.n = load ptr, ptr %4, align 8, !tbaa !75, !noalias !2167
  %i.o = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.p = icmp eq ptr %i.n, %i.o
  br i1 %i.p, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i13.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i12.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i13.i: ; preds = %bb.c
  %i.q = icmp ult i64 %i.f, 16
  call void @llvm.assume(i1 %i.q)
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit14.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i12.i: ; preds = %bb.c
  %i.r = load i64, ptr %i.o, align 8, !tbaa !74, !noalias !2167
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit14.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit14.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i12.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i13.i
  %i.s = phi i64 [ %i.r, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i12.i ], [ 15, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i13.i ]
  %.not.i = icmp ugt i64 %i.g, %i.s
  br i1 %.not.i, label %bb.e, label %.critedge.i

.critedge.i:                                      ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit14.i
  %i.t = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %4, i64 noundef 0, i64 noundef 0, ptr noundef %i.h, i64 noundef %i.d)
          to label %.noexc unwind label %bb.l     ; 5 uses

.noexc:                                           ; preds = %.critedge.i
  %i.u = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 3 uses
  store ptr %i.u, ptr %2, align 8, !tbaa !70, !alias.scope !2167
  %i.v = load ptr, ptr %i.t, align 8, !tbaa !75   ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.t, i64 16 ; 5 uses
  %i.x = icmp eq ptr %i.v, %i.w
  br i1 %i.x, label %bb.d, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i15.i

bb.d:                                             ; preds = %.noexc
  %i.y = getelementptr inbounds nuw i8, ptr %i.t, i64 8
  %i.z = load i64, ptr %i.y, align 8, !tbaa !73   ; 2 uses
  %i.aa = icmp ult i64 %i.z, 16
  call void @llvm.assume(i1 %i.aa)
  %i.ab = add nuw nsw i64 %i.z, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.u, ptr noundef nonnull align 8 dereferenceable(1) %i.w, i64 %i.ab, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i15.i: ; preds = %.noexc
  store ptr %i.v, ptr %2, align 8, !tbaa !75, !alias.scope !2167
  %i.ac = load i64, ptr %i.w, align 8, !tbaa !74
  store i64 %i.ac, ptr %i.u, align 8, !tbaa !74, !alias.scope !2167
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i15.i, %bb.d
  %i.ad = getelementptr inbounds nuw i8, ptr %i.t, i64 8 ; 2 uses
  %i.ae = load i64, ptr %i.ad, align 8, !tbaa !73
  %i.af = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i64 %i.ae, ptr %i.af, align 8, !tbaa !73, !alias.scope !2167
  store ptr %i.w, ptr %i.t, align 8, !tbaa !75
  store i64 0, ptr %i.ad, align 8, !tbaa !73
  store i8 0, ptr %i.w, align 8, !tbaa !74
  br label %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_S9_.exit

bb.e:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit14.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i
  %i.ag = sub i64 4611686018427387903, %i.d
  %i.ah = icmp ult i64 %i.ag, %i.f
  br i1 %i.ah, label %bb.f, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i

bb.f:                                             ; preds = %bb.e
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.1819) #35
          to label %.noexc6 unwind label %bb.l

.noexc6:                                          ; preds = %bb.f
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i: ; preds = %bb.e
  %i.ai = load ptr, ptr %4, align 8, !tbaa !75, !noalias !2167
  %i.aj = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef %i.ai, i64 noundef %i.f)
          to label %.noexc7 unwind label %bb.l    ; 5 uses

.noexc7:                                          ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i
end_hunk_1
