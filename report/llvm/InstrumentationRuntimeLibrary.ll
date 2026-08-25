Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/InstrumentationRuntimeLibrary?download=true
inline.NumInlined: 724
inline.NumDeleted: 425
begin_hunk_0_@_ZN4llvm4bolt29InstrumentationRuntimeLibrary4linkERNS0_13BinaryContextENS_9StringRefERNS0_10BOLTLinkerESt8functionIFvS7_IFvRKNS0_13BinarySectionEmEEEE:bb.a
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.ac, ptr %i.ad, align 8, !tbaa !575
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #19
  %i.ae = load ptr, ptr %4, align 8, !tbaa !8
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 24
  %i.ag = load ptr, ptr %i.af, align 8
  call void %i.ag(ptr dead_on_unwind nonnull writable sret(%"class.std::optional.596") align 8 %9, ptr noundef nonnull align 8 dereferenceable(8) %4, ptr nonnull @.str.29, i64 18) #19
  %i.ah = getelementptr inbounds nuw i8, ptr %9, i64 16
  %i.ai = load i8, ptr %i.ah, align 8, !tbaa !571, !range !24, !noundef !25
  %i.aj = trunc nuw i8 %i.ai to i1
  br i1 %i.aj, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ak = call noundef nonnull align 8 dereferenceable(96) ptr @_ZN4llvm4errsEv() #19
  %i.al = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostreamlsEPKc(ptr noundef nonnull align 8 dereferenceable(48) %i.ak, ptr noundef nonnull @.str.30)
  %i.am = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostreamlsERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(48) %i.al, ptr noundef nonnull align 8 dereferenceable(32) %6)
  %i.an = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostreamlsEPKc(ptr noundef nonnull align 8 dereferenceable(48) %i.am, ptr noundef nonnull @.str.28) ; 0 uses
  call void @exit(i32 noundef 1) #21
  unreachable

bb.h:                                             ; preds = %bb.f
  %i.ao = load i64, ptr %9, align 8, !tbaa !573
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  store i64 %i.ao, ptr %i.ap, align 8, !tbaa !577
  %i.aq = call noundef nonnull align 8 dereferenceable(96) ptr @_ZN4llvm4outsEv() #19 ; 4 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 24
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !297
  %i.at = getelementptr inbounds nuw i8, ptr %i.aq, i64 32 ; 3 uses
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !301 ; 2 uses
  %i.av = ptrtoint ptr %i.as to i64
  %i.aw = ptrtoint ptr %i.au to i64
  %i.ax = sub i64 %i.av, %i.aw
  %i.ay = icmp ult i64 %i.ax, 87
  br i1 %i.ay, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.az = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(48) %i.aq, ptr noundef nonnull @.str.31, i64 noundef 87) #19
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit

bb.j:                                             ; preds = %bb.h
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(87) %i.au, ptr noundef nonnull align 1 dereferenceable(87) @.str.31, i64 87, i1 false)
  %i.ba = load ptr, ptr %i.at, align 8, !tbaa !301
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ba, i64 87
  store ptr %i.bb, ptr %i.at, align 8, !tbaa !301
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit

_ZN4llvm11raw_ostreamlsEPKc.exit:                 ; preds = %bb.i, %bb.j
  %.0.i.i = phi ptr [ %i.az, %bb.i ], [ %i.aq, %bb.j ] ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #19
  %i.bc = load i64, ptr %i.ap, align 8, !tbaa !577
  %i.bd = inttoptr i64 %i.bc to ptr
  store ptr %i.bd, ptr %10, align 8, !alias.scope !578
  %i.be = getelementptr inbounds nuw i8, ptr %10, i64 16
  store ptr null, ptr %i.be, align 8, !alias.scope !578
  %i.bf = getelementptr inbounds nuw i8, ptr %10, i64 32
  store i8 15, ptr %i.bf, align 8, !tbaa !322, !alias.scope !578
  %i.bg = getelementptr inbounds nuw i8, ptr %10, i64 33
  store i8 1, ptr %i.bg, align 1, !tbaa !319, !alias.scope !578
  call void @_ZNK4llvm5Twine5printERNS_11raw_ostreamE(ptr noundef nonnull align 8 dereferenceable(34) %10, ptr noundef nonnull align 8 dereferenceable(48) %.0.i.i) #19
  %i.bh = getelementptr inbounds nuw i8, ptr %.0.i.i, i64 24
  %i.bi = load ptr, ptr %i.bh, align 8, !tbaa !297
  %i.bj = getelementptr inbounds nuw i8, ptr %.0.i.i, i64 32 ; 3 uses
  %i.bk = load ptr, ptr %i.bj, align 8, !tbaa !301 ; 2 uses
  %i.bl = icmp eq ptr %i.bi, %i.bk
  br i1 %i.bl, label %bb.k, label %bb.l

bb.k:                                             ; preds = %_ZN4llvm11raw_ostreamlsEPKc.exit
  %i.bm = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(48) %.0.i.i, ptr noundef nonnull @.str.28, i64 noundef 1) #19 ; 0 uses
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit11

bb.l:                                             ; preds = %_ZN4llvm11raw_ostreamlsEPKc.exit
  store i8 10, ptr %i.bk, align 1
  %i.bn = load ptr, ptr %i.bj, align 8, !tbaa !301
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bn, i64 1
  store ptr %i.bo, ptr %i.bj, align 8, !tbaa !301
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit11

_ZN4llvm11raw_ostreamlsEPKc.exit11:               ; preds = %bb.k, %bb.l
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #19
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #19
  %i.bp = load ptr, ptr %4, align 8, !tbaa !8
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bp, i64 24
  %i.br = load ptr, ptr %i.bq, align 8
  call void %i.br(ptr dead_on_unwind nonnull writable sret(%"class.std::optional.596") align 8 %11, ptr noundef nonnull align 8 dereferenceable(8) %4, ptr nonnull @.str.32, i64 27) #19
  %i.bs = getelementptr inbounds nuw i8, ptr %11, i64 16
  %i.bt = load i8, ptr %i.bs, align 8, !tbaa !571, !range !24, !noundef !25
  %i.bu = trunc nuw i8 %i.bt to i1
  %i.bv = load i64, ptr %11, align 8
  %i.bw = call noundef nonnull align 8 dereferenceable(96) ptr @_ZN4llvm4outsEv() #19 ; 4 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bw, i64 24
  %i.by = load ptr, ptr %i.bx, align 8, !tbaa !297
  %i.bz = getelementptr inbounds nuw i8, ptr %i.bw, i64 32 ; 3 uses
  %i.ca = load ptr, ptr %i.bz, align 8, !tbaa !301 ; 2 uses
  %i.cb = ptrtoint ptr %i.by to i64
  %i.cc = ptrtoint ptr %i.ca to i64
  %i.cd = sub i64 %i.cb, %i.cc
  %i.ce = icmp ult i64 %i.cd, 32
  br i1 %i.ce, label %bb.m, label %bb.n

bb.m:                                             ; preds = %_ZN4llvm11raw_ostreamlsEPKc.exit11
  %i.cf = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(48) %i.bw, ptr noundef nonnull @.str.33, i64 noundef 32) #19
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit14

bb.n:                                             ; preds = %_ZN4llvm11raw_ostreamlsEPKc.exit11
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(32) %i.ca, ptr noundef nonnull align 1 dereferenceable(32) @.str.33, i64 32, i1 false)
  %i.cg = load ptr, ptr %i.bz, align 8, !tbaa !301
  %i.ch = getelementptr inbounds nuw i8, ptr %i.cg, i64 32
  store ptr %i.ch, ptr %i.bz, align 8, !tbaa !301
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit14

_ZN4llvm11raw_ostreamlsEPKc.exit14:               ; preds = %bb.m, %bb.n
  %.0.i.i13 = phi ptr [ %i.cf, %bb.m ], [ %i.bw, %bb.n ] ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #19
  %i.ci = inttoptr i64 %i.bv to ptr
  %i.cj = select i1 %i.bu, ptr %i.ci, ptr null
  store ptr %i.cj, ptr %12, align 8, !alias.scope !581
  %i.ck = getelementptr inbounds nuw i8, ptr %12, i64 16
  store ptr null, ptr %i.ck, align 8, !alias.scope !581
  %i.cl = getelementptr inbounds nuw i8, ptr %12, i64 32
  store i8 15, ptr %i.cl, align 8, !tbaa !322, !alias.scope !581
  %i.cm = getelementptr inbounds nuw i8, ptr %12, i64 33
  store i8 1, ptr %i.cm, align 1, !tbaa !319, !alias.scope !581
  call void @_ZNK4llvm5Twine5printERNS_11raw_ostreamE(ptr noundef nonnull align 8 dereferenceable(34) %12, ptr noundef nonnull align 8 dereferenceable(48) %.0.i.i13) #19
  %i.cn = getelementptr inbounds nuw i8, ptr %.0.i.i13, i64 24
  %i.co = load ptr, ptr %i.cn, align 8, !tbaa !297
  %i.cp = getelementptr inbounds nuw i8, ptr %.0.i.i13, i64 32 ; 3 uses
  %i.cq = load ptr, ptr %i.cp, align 8, !tbaa !301 ; 2 uses
  %i.cr = icmp eq ptr %i.co, %i.cq
  br i1 %i.cr, label %bb.o, label %bb.p

bb.o:                                             ; preds = %_ZN4llvm11raw_ostreamlsEPKc.exit14
  %i.cs = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(48) %.0.i.i13, ptr noundef nonnull @.str.28, i64 noundef 1) #19 ; 0 uses
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit17

bb.p:                                             ; preds = %_ZN4llvm11raw_ostreamlsEPKc.exit14
  store i8 10, ptr %i.cq, align 1
  %i.ct = load ptr, ptr %i.cp, align 8, !tbaa !301
  %i.cu = getelementptr inbounds nuw i8, ptr %i.ct, i64 1
  store ptr %i.cu, ptr %i.cp, align 8, !tbaa !301
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit17

_ZN4llvm11raw_ostreamlsEPKc.exit17:               ; preds = %bb.o, %bb.p
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #19
  call void @_ZN4llvm4bolt29InstrumentationRuntimeLibrary19emitTablesAsELFNoteERNS0_13BinaryContextE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(2268) %1)
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #19
  br label %bb.q

bb.q:                                             ; preds = %_ZNSt14_Function_baseD2Ev.exit, %_ZN4llvm11raw_ostreamlsEPKc.exit17
  %i.cv = load ptr, ptr %6, align 8, !tbaa !14    ; 2 uses
  %i.cw = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 2 uses
  %i.cx = icmp eq ptr %i.cv, %i.cw
  br i1 %i.cx, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.q
  %i.cy = load i64, ptr %i.cw, align 8, !tbaa !19
  %i.cz = add i64 %i.cy, 1
  call void @_ZdlPvm(ptr noundef %i.cv, i64 noundef %i.cz) #20
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.q, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #19
  ret void
}

declare void @_ZN4llvm4bolt14RuntimeLibrary10getLibPathB5cxx11ENS_9StringRefES2_(ptr dead_on_unwind writable sret(%"class.std::__cxx11::basic_string") align 8, ptr, i64, ptr, i64) local_unnamed_addr #4

declare void @_ZN4llvm4bolt14RuntimeLibrary11loadLibraryENS_9StringRefERNS0_10BOLTLinkerESt8functionIFvS5_IFvRKNS0_13BinarySectionEmEEEE(ptr, i64, ptr noundef nonnull align 8 dereferenceable(8), ptr nofree noundef align 8 dereferenceable(32)) local_unnamed_addr #4

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostreamlsERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 8 dereferenceable(32) %1) local_unnamed_addr #3 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %1, align 8, !tbaa !14
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.c = load i64, ptr %i.b, align 8, !tbaa !391
  %i.d = tail call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %i.a, i64 noundef %i.c) #19
  ret ptr %i.d
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN4llvm4bolt29InstrumentationRuntimeLibrary19emitTablesAsELFNoteERNS0_13BinaryContextE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(2268) %1) local_unnamed_addr #3 align 2 {
bb.a:
  %2 = alloca %"class.std::__cxx11::basic_string", align 8 ; 7 uses
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 7 uses
  %4 = alloca %"class.llvm::Twine", align 8       ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #19
  call void @_ZN4llvm4bolt29InstrumentationRuntimeLibrary11buildTablesB5cxx11ERNS0_13BinaryContextE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %2, ptr noundef nonnull align 8 dereferenceable(32) %0, ptr nonnull align 8 poison)
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #19
  %i.a = load ptr, ptr %2, align 8, !tbaa !14
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.c = load i64, ptr %i.b, align 8, !tbaa !391
  call void @_ZN4llvm4bolt13BinarySection13encodeELFNoteB5cxx11ENS_9StringRefES2_j(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %3, ptr nonnull @.str.34, i64 4, ptr %i.a, i64 %i.c, i32 noundef 2) #19
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #19
  %i.d = getelementptr inbounds nuw i8, ptr %4, i64 32
  %i.e = getelementptr inbounds nuw i8, ptr %4, i64 33
  store i8 1, ptr %i.e, align 1, !tbaa !319
  store ptr @.str.35, ptr %4, align 8, !tbaa !19
  store i8 3, ptr %i.d, align 8, !tbaa !322
  %i.f = load ptr, ptr %3, align 8, !tbaa !14
  %i.g = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  %i.h = load i64, ptr %i.g, align 8, !tbaa !391  ; 2 uses
  %i.i = call noalias noundef nonnull ptr @_Znam(i64 noundef %i.h) #22 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.i, ptr align 1 %i.f, i64 %i.h, i1 false)
  %5 = load i64, ptr %i.g, align 8, !tbaa !391
  %i.j = call noundef nonnull align 8 dereferenceable(391) ptr @_ZN4llvm4bolt13BinaryContext23registerOrUpdateSectionERKNS_5TwineEjjPhmj(ptr noundef nonnull align 8 dereferenceable(2268) %1, ptr noundef nonnull align 8 dereferenceable(34) %4, i32 noundef 7, i32 noundef 0, ptr noundef nonnull %i.i, i64 noundef %5, i32 noundef 1) #19 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #19
  %i.k = load ptr, ptr %3, align 8, !tbaa !14     ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.m = icmp eq ptr %i.k, %i.l
  br i1 %i.m, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.a
  %i.n = load i64, ptr %i.l, align 8, !tbaa !19
  %i.o = add i64 %i.n, 1
  call void @_ZdlPvm(ptr noundef %i.k, i64 noundef %i.o) #20
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.a, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #19
  %i.p = load ptr, ptr %2, align 8, !tbaa !14     ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.r = icmp eq ptr %i.p, %i.q
  br i1 %i.r, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit5, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i3

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i3: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.s = load i64, ptr %i.q, align 8, !tbaa !19
  %i.t = add i64 %i.s, 1
  call void @_ZdlPvm(ptr noundef %i.p, i64 noundef %i.t) #20
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit5

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit5: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i3
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #19
  ret void
}

declare noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(48), ptr noundef, i64 noundef) local_unnamed_addr #4

; Function Attrs: nounwind
declare void @_ZN4llvm11raw_ostreamD2Ev(ptr noundef nonnull align 8 dead_on_return(48) dereferenceable(48)) unnamed_addr #6

declare void @_ZN4llvm4bolt13BinarySection13encodeELFNoteB5cxx11ENS_9StringRefES2_j(ptr dead_on_unwind writable sret(%"class.std::__cxx11::basic_string") align 8, ptr, i64, ptr, i64, i32 noundef) local_unnamed_addr #4

declare void @_ZN4llvm4bolt14RuntimeLibrary6anchorEv(ptr noundef nonnull align 8 dereferenceable(24)) unnamed_addr #4

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm4bolt29InstrumentationRuntimeLibraryD2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %0) unnamed_addr #1 comdat align 2 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 56) (i8, ptr @_ZTVN4llvm4bolt29InstrumentationRuntimeLibraryE, i64 16), ptr %0, align 8, !tbaa !8
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !325  ; 3 uses
  %.not.i = icmp eq ptr %i.b, null
  br i1 %.not.i, label %_ZNSt10unique_ptrIN4llvm4bolt22InstrumentationSummaryESt14default_deleteIS2_EED2Ev.exit, label %_ZNKSt14default_deleteIN4llvm4bolt22InstrumentationSummaryEEclEPS2_.exit.i

_ZNKSt14default_deleteIN4llvm4bolt22InstrumentationSummaryEEclEPS2_.exit.i: ; preds = %bb.a
  tail call void @_ZN4llvm4bolt22InstrumentationSummaryD2Ev(ptr noundef nonnull align 8 dead_on_return(144) dereferenceable(144) %i.b) #19
  tail call void @_ZdlPvm(ptr noundef nonnull %i.b, i64 noundef 144) #20
  br label %_ZNSt10unique_ptrIN4llvm4bolt22InstrumentationSummaryESt14default_deleteIS2_EED2Ev.exit

_ZNSt10unique_ptrIN4llvm4bolt22InstrumentationSummaryESt14default_deleteIS2_EED2Ev.exit: ; preds = %bb.a, %_ZNKSt14default_deleteIN4llvm4bolt22InstrumentationSummaryEEclEPS2_.exit.i
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm4bolt29InstrumentationRuntimeLibraryD0Ev(ptr noundef nonnull align 8 dereferenceable(32) %0) unnamed_addr #1 comdat align 2 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 56) (i8, ptr @_ZTVN4llvm4bolt29InstrumentationRuntimeLibraryE, i64 16), ptr %0, align 8, !tbaa !8
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !325  ; 3 uses
  %.not.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i, label %_ZN4llvm4bolt29InstrumentationRuntimeLibraryD2Ev.exit, label %_ZNKSt14default_deleteIN4llvm4bolt22InstrumentationSummaryEEclEPS2_.exit.i.i

_ZNKSt14default_deleteIN4llvm4bolt22InstrumentationSummaryEEclEPS2_.exit.i.i: ; preds = %bb.a
  tail call void @_ZN4llvm4bolt22InstrumentationSummaryD2Ev(ptr noundef nonnull align 8 dead_on_return(144) dereferenceable(144) %i.b) #19, !inline_history !584
  tail call void @_ZdlPvm(ptr noundef nonnull %i.b, i64 noundef 144) #20, !inline_history !584
  br label %_ZN4llvm4bolt29InstrumentationRuntimeLibraryD2Ev.exit

_ZN4llvm4bolt29InstrumentationRuntimeLibraryD2Ev.exit: ; preds = %bb.a, %_ZNKSt14default_deleteIN4llvm4bolt22InstrumentationSummaryEEclEPS2_.exit.i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 32) #20
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNK4llvm4bolt29InstrumentationRuntimeLibrary21addRuntimeLibSectionsERSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS8_EE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) unnamed_addr #3 comdat align 2 {
._crit_edge.i.i:
  %i.a = alloca i64, align 8                      ; 5 uses
  %2 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #19
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 7 uses
  store ptr %i.b, ptr %2, align 8, !tbaa !396
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #19
  store i64 20, ptr %i.a, align 8, !tbaa !523
  %i.c = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0) #19 ; 2 uses
  store ptr %i.c, ptr %2, align 8, !tbaa !14
  %i.d = load i64, ptr %i.a, align 8, !tbaa !523  ; 3 uses
  store i64 %i.d, ptr %i.b, align 8, !tbaa !19
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(20) %i.c, ptr noundef nonnull align 1 dereferenceable(20) @.str.8, i64 20, i1 false)
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 4 uses
  store i64 %i.d, ptr %i.e, align 8, !tbaa !391
  %i.f = load ptr, ptr %2, align 8, !tbaa !14
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 %i.d
  store i8 0, ptr %i.g, align 1, !tbaa !19
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #19
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 3 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !585  ; 6 uses
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !587
  %.not.i.i = icmp eq ptr %i.i, %i.k
  br i1 %.not.i.i, label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backEOS5_.exit, label %bb.a

bb.a:                                             ; preds = %._crit_edge.i.i
  %i.l = getelementptr inbounds nuw i8, ptr %i.i, i64 16 ; 3 uses
  store ptr %i.l, ptr %i.i, align 8, !tbaa !396
  %i.m = load ptr, ptr %2, align 8, !tbaa !14     ; 2 uses
  %i.n = icmp eq ptr %i.m, %i.b
  br i1 %i.n, label %bb.b, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

bb.b:                                             ; preds = %bb.a
  %i.o = load i64, ptr %i.e, align 8, !tbaa !391  ; 3 uses
  %i.p = icmp ult i64 %i.o, 16
  call void @llvm.assume(i1 %i.p)
  %i.q = add nuw nsw i64 %i.o, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.l, ptr noundef nonnull align 8 dereferenceable(1) %i.b, i64 %i.q, i1 false)
  br label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backEOS5_.exit.thread

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.a
  store ptr %i.m, ptr %i.i, align 8, !tbaa !14
  %i.r = load i64, ptr %i.b, align 8, !tbaa !19
  store i64 %i.r, ptr %i.l, align 8, !tbaa !19
  %.pre = load i64, ptr %i.e, align 8, !tbaa !391
  br label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backEOS5_.exit.thread

_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backEOS5_.exit.thread: ; preds = %bb.b, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  %i.s = phi i64 [ %.pre, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i ], [ %i.o, %bb.b ]
  %i.t = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  store i64 %i.s, ptr %i.t, align 8, !tbaa !391
  store i64 0, ptr %i.e, align 8, !tbaa !391
  %i.u = load ptr, ptr %i.h, align 8, !tbaa !585
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 32
  store ptr %i.v, ptr %i.h, align 8, !tbaa !585
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backEOS5_.exit: ; preds = %._crit_edge.i.i
  call void @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %1, ptr %i.i, ptr noundef nonnull align 8 dereferenceable(32) %2)
  %.pre1 = load ptr, ptr %2, align 8, !tbaa !14   ; 2 uses
  %i.w = icmp eq ptr %.pre1, %i.b
  br i1 %i.w, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backEOS5_.exit
  %i.x = load i64, ptr %i.b, align 8, !tbaa !19
  %i.y = add i64 %i.x, 1
  call void @_ZdlPvm(ptr noundef %.pre1, i64 noundef %i.y) #20
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backEOS5_.exit, %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backEOS5_.exit.thread, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #19
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i64 @strlen(ptr noundef captures(none)) local_unnamed_addr #7

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZNK4llvm2cl15OptionValueCopyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE7compareERKNS0_18GenericOptionValueE(ptr noundef nonnull align 8 dereferenceable(41) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) unnamed_addr #3 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.b = load i8, ptr %i.a, align 8, !tbaa !588, !range !24, !noundef !25
  %i.c = trunc nuw i8 %i.b to i1
  br i1 %i.c, label %bb.b, label %_ZNK4llvm2cl15OptionValueCopyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE7compareERKS7_.exit

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.f = load i8, ptr %i.e, align 8, !tbaa !588, !range !24, !noundef !25
  %i.g = trunc nuw i8 %i.f to i1
  br i1 %i.g, label %bb.c, label %_ZNK4llvm2cl15OptionValueCopyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE7compareERKS7_.exit

bb.c:                                             ; preds = %bb.b
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.j = load i64, ptr %i.i, align 8, !tbaa !391  ; 3 uses
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.l = load i64, ptr %i.k, align 8, !tbaa !391
  %i.m = icmp eq i64 %i.j, %i.l
  br i1 %i.m, label %bb.d, label %_ZNK4llvm2cl15OptionValueCopyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE7compareERKS7_.exit

bb.d:                                             ; preds = %bb.c
  %i.n = icmp eq i64 %i.j, 0
  br i1 %i.n, label %_ZNK4llvm2cl15OptionValueCopyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE7compareERKS7_.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.o = load ptr, ptr %i.d, align 8, !tbaa !14
  %i.p = load ptr, ptr %i.h, align 8, !tbaa !14
  %bcmp.i.i = tail call i32 @bcmp(ptr %i.p, ptr %i.o, i64 %i.j)
  %i.q = icmp eq i32 %bcmp.i.i, 0
  br label %_ZNK4llvm2cl15OptionValueCopyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE7compareERKS7_.exit

_ZNK4llvm2cl15OptionValueCopyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE7compareERKS7_.exit: ; preds = %bb.e, %bb.d, %bb.c, %bb.b, %bb.a
  %.0 = phi i1 [ false, %bb.a ], [ false, %bb.b ], [ false, %bb.c ], [ %i.q, %bb.e ], [ true, %bb.d ]
  ret i1 %.0
}

declare void @_ZN4llvm2cl18GenericOptionValue6anchorEv(ptr noundef nonnull align 8 dereferenceable(8)) unnamed_addr #4

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPvm(ptr noundef, i64 noundef) local_unnamed_addr #8
end_hunk_0
