Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/draco/original/stl_encoder?download=true
inline.NumInlined: 453
inline.NumDeleted: 265
loop-unroll.NumCompletelyUnrolled: 4
loop-unroll.NumUnrolled: 4
begin_hunk_0_@_ZN5draco10StlEncoder12EncodeToFileERKNS_4MeshERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE:bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #13
  br label %bb.q

bb.g:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #13
  invoke void @_ZN5draco13EncoderBufferC1Ev(ptr noundef nonnull align 8 dereferenceable(41) %6)
          to label %bb.h unwind label %bb.j

bb.h:                                             ; preds = %bb.g
  store ptr %2, ptr %i.c, align 8, !tbaa !14, !noalias !44
  store ptr %6, ptr %1, align 8, !tbaa !27, !noalias !44
  invoke void @_ZN5draco10StlEncoder14EncodeInternalEv(ptr dead_on_unwind writable sret(%"class.draco::Status") align 8 %0, ptr noundef nonnull align 8 dereferenceable(24) %1)
          to label %bb.i unwind label %bb.k

bb.i:                                             ; preds = %bb.h
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %1, i8 0, i64 24, i1 false), !noalias !44
  %i.ah = load i32, ptr %0, align 8, !tbaa !26
  %i.ai = icmp eq i32 %i.ah, 0
  br i1 %i.ai, label %bb.l, label %.critedge

bb.j:                                             ; preds = %bb.g
  %i.aj = landingpad { ptr, i32 }
          cleanup
  br label %bb.o

bb.k:                                             ; preds = %bb.h, %_ZN5draco6StatusD2Ev.exit
  %i.ak = landingpad { ptr, i32 }
          cleanup
  call void @_ZN5draco13EncoderBufferD2Ev(ptr noundef nonnull align 8 dead_on_return(41) dereferenceable(41) %6) #13
  br label %bb.o

bb.l:                                             ; preds = %bb.i
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !21 ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 4 uses
  %i.ao = icmp eq ptr %i.am, %i.an
  br i1 %i.ao, label %_ZN5draco6StatusD2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.l
  %i.ap = load i64, ptr %i.an, align 8, !tbaa !22
  %i.aq = add i64 %i.ap, 1
  call void @_ZdlPvm(ptr noundef %i.am, i64 noundef %i.aq) #14
  br label %_ZN5draco6StatusD2Ev.exit

_ZN5draco6StatusD2Ev.exit:                        ; preds = %bb.l, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  %i.ar = load ptr, ptr %4, align 8, !tbaa !43    ; 2 uses
  %i.as = load ptr, ptr %6, align 8, !tbaa !29    ; 2 uses
  %i.at = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !30
  %i.av = ptrtoint ptr %i.au to i64
  %i.aw = ptrtoint ptr %i.as to i64
  %i.ax = sub i64 %i.av, %i.aw
  %i.ay = load ptr, ptr %i.ar, align 8, !tbaa !32
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 16
  %i.ba = load ptr, ptr %i.az, align 8
  %i.bb = invoke noundef zeroext i1 %i.ba(ptr noundef nonnull align 8 dereferenceable(8) %i.ar, ptr noundef %i.as, i64 noundef %i.ax)
          to label %bb.m unwind label %bb.k       ; 0 uses

bb.m:                                             ; preds = %_ZN5draco6StatusD2Ev.exit
  store i32 0, ptr %0, align 8, !tbaa !26, !alias.scope !45
  store ptr %i.an, ptr %i.al, align 8, !tbaa !17, !alias.scope !45
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 0, ptr %i.bc, align 8, !tbaa !23, !alias.scope !45
  store i8 0, ptr %i.an, align 8, !tbaa !22, !alias.scope !45
  br label %.critedge

.critedge:                                        ; preds = %bb.m, %bb.i
  %i.bd = getelementptr inbounds nuw i8, ptr %6, i64 24
  %i.be = load ptr, ptr %i.bd, align 8, !tbaa !34 ; 2 uses
  %.not.i.i = icmp eq ptr %i.be, null
  br i1 %.not.i.i, label %_ZNSt10unique_ptrIN5draco13EncoderBuffer10BitEncoderESt14default_deleteIS2_EED2Ev.exit.i, label %_ZNKSt14default_deleteIN5draco13EncoderBuffer10BitEncoderEEclEPS2_.exit.i.i

_ZNKSt14default_deleteIN5draco13EncoderBuffer10BitEncoderEEclEPS2_.exit.i.i: ; preds = %.critedge
  call void @_ZdlPvm(ptr noundef nonnull %i.be, i64 noundef 16) #14
  br label %_ZNSt10unique_ptrIN5draco13EncoderBuffer10BitEncoderESt14default_deleteIS2_EED2Ev.exit.i

_ZNSt10unique_ptrIN5draco13EncoderBuffer10BitEncoderESt14default_deleteIS2_EED2Ev.exit.i: ; preds = %_ZNKSt14default_deleteIN5draco13EncoderBuffer10BitEncoderEEclEPS2_.exit.i.i, %.critedge
  %i.bf = load ptr, ptr %6, align 8, !tbaa !29    ; 3 uses
  %.not.i.i.i.i = icmp eq ptr %i.bf, null
  br i1 %.not.i.i.i.i, label %_ZN5draco13EncoderBufferD2Ev.exit, label %bb.n

bb.n:                                             ; preds = %_ZNSt10unique_ptrIN5draco13EncoderBuffer10BitEncoderESt14default_deleteIS2_EED2Ev.exit.i
  %i.bg = getelementptr inbounds nuw i8, ptr %6, i64 16
  %i.bh = load ptr, ptr %i.bg, align 8, !tbaa !35
  %i.bi = ptrtoint ptr %i.bh to i64
  %i.bj = ptrtoint ptr %i.bf to i64
  %i.bk = sub i64 %i.bi, %i.bj
  call void @_ZdlPvm(ptr noundef nonnull %i.bf, i64 noundef %i.bk) #14
  br label %_ZN5draco13EncoderBufferD2Ev.exit

_ZN5draco13EncoderBufferD2Ev.exit:                ; preds = %_ZNSt10unique_ptrIN5draco13EncoderBuffer10BitEncoderESt14default_deleteIS2_EED2Ev.exit.i, %bb.n
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #13
  br label %bb.p

bb.o:                                             ; preds = %bb.k, %bb.j
  %.pn13 = phi { ptr, i32 } [ %i.ak, %bb.k ], [ %i.aj, %bb.j ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #13
  br label %bb.q

bb.p:                                             ; preds = %_ZN5draco13EncoderBufferD2Ev.exit, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.bl = load ptr, ptr %4, align 8, !tbaa !43    ; 3 uses
  %.not.i = icmp eq ptr %i.bl, null
  br i1 %.not.i, label %_ZNSt10unique_ptrIN5draco19FileWriterInterfaceESt14default_deleteIS1_EED2Ev.exit, label %_ZNKSt14default_deleteIN5draco19FileWriterInterfaceEEclEPS1_.exit.i

_ZNKSt14default_deleteIN5draco19FileWriterInterfaceEEclEPS1_.exit.i: ; preds = %bb.p
  %i.bm = load ptr, ptr %i.bl, align 8, !tbaa !32
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bm, i64 8
  %i.bo = load ptr, ptr %i.bn, align 8
  call void %i.bo(ptr noundef nonnull align 8 dereferenceable(8) %i.bl) #13, !inline_history !41
  br label %_ZNSt10unique_ptrIN5draco19FileWriterInterfaceESt14default_deleteIS1_EED2Ev.exit

_ZNSt10unique_ptrIN5draco19FileWriterInterfaceESt14default_deleteIS1_EED2Ev.exit: ; preds = %bb.p, %_ZNKSt14default_deleteIN5draco19FileWriterInterfaceEEclEPS1_.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #13
  ret void

bb.q:                                             ; preds = %bb.o, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit19
  %.pn13.pn = phi { ptr, i32 } [ %.pn13, %bb.o ], [ %.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit19 ]
  %i.bp = load ptr, ptr %4, align 8, !tbaa !43    ; 3 uses
  %.not.i21 = icmp eq ptr %i.bp, null
  br i1 %.not.i21, label %_ZNSt10unique_ptrIN5draco19FileWriterInterfaceESt14default_deleteIS1_EED2Ev.exit23, label %_ZNKSt14default_deleteIN5draco19FileWriterInterfaceEEclEPS1_.exit.i22

_ZNKSt14default_deleteIN5draco19FileWriterInterfaceEEclEPS1_.exit.i22: ; preds = %bb.q
  %i.bq = load ptr, ptr %i.bp, align 8, !tbaa !32
  %i.br = getelementptr inbounds nuw i8, ptr %i.bq, i64 8
  %i.bs = load ptr, ptr %i.br, align 8
  call void %i.bs(ptr noundef nonnull align 8 dereferenceable(8) %i.bp) #13, !inline_history !41
  br label %_ZNSt10unique_ptrIN5draco19FileWriterInterfaceESt14default_deleteIS1_EED2Ev.exit23

_ZNSt10unique_ptrIN5draco19FileWriterInterfaceESt14default_deleteIS1_EED2Ev.exit23: ; preds = %bb.q, %_ZNKSt14default_deleteIN5draco19FileWriterInterfaceEEclEPS1_.exit.i22
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #13
  resume { ptr, i32 } %.pn13.pn
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #2

declare void @_ZN5draco17FileWriterFactory10OpenWriterERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr dead_on_unwind writable sret(%"class.std::unique_ptr.20") align 8, ptr noundef nonnull align 8 dereferenceable(32)) local_unnamed_addr #3

declare i32 @__gxx_personality_v0(...)

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #2

declare void @_ZN5draco13EncoderBufferC1Ev(ptr noundef nonnull align 8 dereferenceable(41)) unnamed_addr #3

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN5draco10StlEncoder14EncodeToBufferERKNS_4MeshEPNS_13EncoderBufferE(ptr dead_on_unwind noalias writable sret(%"class.draco::Status") align 8 %0, ptr nofree noundef nonnull align 8 captures(none) dereferenceable(24) initializes((0, 8), (16, 24)) %1, ptr noundef nonnull align 8 dereferenceable(216) %2, ptr noundef %3) local_unnamed_addr #1 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 16
  store ptr %2, ptr %i.a, align 8, !tbaa !14
  store ptr %3, ptr %1, align 8, !tbaa !27
  tail call void @_ZN5draco10StlEncoder14EncodeInternalEv(ptr dead_on_unwind writable sret(%"class.draco::Status") align 8 %0, ptr noundef nonnull align 8 dereferenceable(24) %1)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %1, i8 0, i64 24, i1 false)
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN5draco13EncoderBufferD2Ev(ptr noundef nonnull align 8 dead_on_return(41) dereferenceable(41) %0) unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !34   ; 2 uses
  %.not.i = icmp eq ptr %i.b, null
  br i1 %.not.i, label %_ZNSt10unique_ptrIN5draco13EncoderBuffer10BitEncoderESt14default_deleteIS2_EED2Ev.exit, label %_ZNKSt14default_deleteIN5draco13EncoderBuffer10BitEncoderEEclEPS2_.exit.i

_ZNKSt14default_deleteIN5draco13EncoderBuffer10BitEncoderEEclEPS2_.exit.i: ; preds = %bb.a
  tail call void @_ZdlPvm(ptr noundef nonnull %i.b, i64 noundef 16) #14
  br label %_ZNSt10unique_ptrIN5draco13EncoderBuffer10BitEncoderESt14default_deleteIS2_EED2Ev.exit

_ZNSt10unique_ptrIN5draco13EncoderBuffer10BitEncoderESt14default_deleteIS2_EED2Ev.exit: ; preds = %bb.a, %_ZNKSt14default_deleteIN5draco13EncoderBuffer10BitEncoderEEclEPS2_.exit.i
  %i.c = load ptr, ptr %0, align 8, !tbaa !29     ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.c, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorIcSaIcEED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %_ZNSt10unique_ptrIN5draco13EncoderBuffer10BitEncoderESt14default_deleteIS2_EED2Ev.exit
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !35
  %i.f = ptrtoint ptr %i.e to i64
  %i.g = ptrtoint ptr %i.c to i64
  %i.h = sub i64 %i.f, %i.g
  tail call void @_ZdlPvm(ptr noundef nonnull %i.c, i64 noundef %i.h) #14
  br label %_ZNSt6vectorIcSaIcEED2Ev.exit

_ZNSt6vectorIcSaIcEED2Ev.exit:                    ; preds = %_ZNSt10unique_ptrIN5draco13EncoderBuffer10BitEncoderESt14default_deleteIS2_EED2Ev.exit, %bb.b
  ret void
}

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN5draco10StlEncoder14EncodeInternalEv(ptr dead_on_unwind noalias writable sret(%"class.draco::Status") align 8 %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %1) local_unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %i.b = alloca i64, align 8                      ; 5 uses
  %i.c = alloca i64, align 8                      ; 6 uses
  %i.d = alloca i64, align 8                      ; 5 uses
  %2 = alloca %"class.std::__cxx11::basic_stringstream", align 8 ; 20 uses
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  %i.e = alloca i32, align 4                      ; 8 uses
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %i.f = alloca i16, align 2                      ; 6 uses
  %6 = alloca [3 x %"class.draco::VectorD"], align 16 ; 14 uses
  %7 = alloca %"class.draco::VectorD", align 8    ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #13
  call void @_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEC1Ev(ptr noundef nonnull align 8 dereferenceable(128) %2)
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 5 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !32
  %i.i = getelementptr i8, ptr %i.h, i64 -24      ; 2 uses
  %i.j = load i64, ptr %i.i, align 8
  %i.k = getelementptr inbounds i8, ptr %i.g, i64 %i.j
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 24 ; 2 uses
  %i.m = load i32, ptr %i.l, align 8, !tbaa !77
  %i.n = and i32 %i.m, -177
  %i.o = or disjoint i32 %i.n, 32
  store i32 %i.o, ptr %i.l, align 8, !tbaa !78
  %i.p = load i64, ptr %i.i, align 8
  %i.q = getelementptr inbounds i8, ptr %i.g, i64 %i.p
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 16
  store i64 80, ptr %i.r, align 8, !tbaa !79
  %i.s = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.g, ptr noundef nonnull @.str.1, i64 noundef 21)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit unwind label %bb.l ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit: ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #13
  call void @llvm.experimental.noalias.scope.decl(metadata !80)
  call void @llvm.experimental.noalias.scope.decl(metadata !81)
  %i.t = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 7 uses
  store ptr %i.t, ptr %3, align 8, !tbaa !17, !alias.scope !82
  %i.u = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  store i64 0, ptr %i.u, align 8, !tbaa !23, !alias.scope !82
  store i8 0, ptr %i.t, align 8, !tbaa !22, !alias.scope !82
  %i.v = getelementptr inbounds nuw i8, ptr %2, i64 64
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !84, !noalias !82 ; 3 uses
  %.not.i.not.i.i = icmp eq ptr %i.w, null
  %i.x = getelementptr inbounds nuw i8, ptr %2, i64 48
  %i.y = load ptr, ptr %i.x, align 8, !noalias !82 ; 2 uses
  %i.z = icmp ugt ptr %i.w, %i.y
  %.08.i.i.i = select i1 %i.z, ptr %i.w, ptr %i.y ; 2 uses
  %.not5.i.i = icmp eq ptr %.08.i.i.i, null
  %.not.i.i = select i1 %.not.i.not.i.i, i1 true, i1 %.not5.i.i
  br i1 %.not.i.i, label %bb.d, label %bb.b

bb.b:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit
  %i.aa = getelementptr inbounds nuw i8, ptr %2, i64 56
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !85, !noalias !82 ; 2 uses
  %i.ac = ptrtoint ptr %.08.i.i.i to i64
  %i.ad = ptrtoint ptr %i.ab to i64
  %i.ae = sub i64 %i.ac, %i.ad
  %i.af = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %3, i64 noundef 0, i64 noundef 0, ptr noundef %i.ab, i64 noundef %i.ae)
          to label %_ZNKSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit unwind label %bb.c ; 0 uses

bb.c:                                             ; preds = %bb.d, %bb.b
  %i.ag = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ah = load ptr, ptr %3, align 8, !tbaa !21, !alias.scope !82 ; 2 uses
  %i.ai = icmp eq ptr %i.ah, %i.t
  br i1 %i.ai, label %.body, label %.body.sink.split

bb.d:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit
  %i.aj = getelementptr inbounds nuw i8, ptr %2, i64 96
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(32) %i.aj)
          to label %_ZNKSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit unwind label %bb.c

_ZNKSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit: ; preds = %bb.d, %bb.b
  %i.ak = load ptr, ptr %1, align 8, !tbaa !27    ; 4 uses
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 32
  %i.am = load i64, ptr %i.al, align 8, !tbaa !97
  %i.an = icmp slt i64 %i.am, 1
  br i1 %i.an, label %bb.e, label %.thread148

.thread148:                                       ; preds = %_ZNKSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #13
  %i.ao = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !14 ; 3 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 192
  %i.ar = getelementptr inbounds nuw i8, ptr %i.ap, i64 200
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !100
  %i.at = load ptr, ptr %i.aq, align 8, !tbaa !101
  %i.au = ptrtoint ptr %i.as to i64
  %i.av = ptrtoint ptr %i.at to i64
  %i.aw = sub i64 %i.au, %i.av
  %i.ax = sdiv exact i64 %i.aw, 12
  %i.ay = trunc i64 %i.ax to i32
  store i32 %i.ay, ptr %i.e, align 4, !tbaa !102
  br label %_ZN5draco13EncoderBuffer6EncodeEPKvm.exit52

bb.e:                                             ; preds = %_ZNKSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit
  %i.az = load i64, ptr %i.u, align 8, !tbaa !23
  %i.ba = load ptr, ptr %3, align 8, !tbaa !21    ; 2 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ak, i64 8
  %i.bc = load ptr, ptr %i.bb, align 8, !tbaa !103
  %i.bd = getelementptr inbounds nuw i8, ptr %i.ba, i64 %i.az
  %i.be = load ptr, ptr %i.ak, align 8, !tbaa !103 ; 2 uses
  %i.bf = ptrtoint ptr %i.bc to i64
  %i.bg = ptrtoint ptr %i.be to i64
  %i.bh = sub i64 %i.bf, %i.bg
  %i.bi = getelementptr inbounds i8, ptr %i.be, i64 %i.bh
  invoke void @_ZNSt6vectorIcSaIcEE15_M_range_insertIPKhEEvN9__gnu_cxx17__normal_iteratorIPcS1_EET_S9_St20forward_iterator_tag(ptr noundef nonnull align 8 dereferenceable(41) %i.ak, ptr %i.bi, ptr noundef %i.ba, ptr noundef %i.bd)
          to label %bb.f unwind label %bb.m

bb.f:                                             ; preds = %bb.e
  %.pre = load ptr, ptr %1, align 8, !tbaa !27    ; 4 uses
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %.pre, i64 32
  %.pre121 = load i64, ptr %.phi.trans.insert, align 8, !tbaa !97
  %i.bj = icmp slt i64 %.pre121, 1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #13
  %i.bk = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 4 uses
  %i.bl = load ptr, ptr %i.bk, align 8, !tbaa !14 ; 3 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bl, i64 192
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bl, i64 200
  %i.bo = load ptr, ptr %i.bn, align 8, !tbaa !100
  %i.bp = load ptr, ptr %i.bm, align 8, !tbaa !101
  %i.bq = ptrtoint ptr %i.bo to i64
  %i.br = ptrtoint ptr %i.bp to i64
  %i.bs = sub i64 %i.bq, %i.br
  %i.bt = sdiv exact i64 %i.bs, 12
  %i.bu = trunc i64 %i.bt to i32
  store i32 %i.bu, ptr %i.e, align 4, !tbaa !102
  br i1 %i.bj, label %bb.g, label %_ZN5draco13EncoderBuffer6EncodeEPKvm.exit52

bb.g:                                             ; preds = %bb.f
  %i.bv = getelementptr inbounds nuw i8, ptr %.pre, i64 8
  %i.bw = load ptr, ptr %i.bv, align 8, !tbaa !103
  %i.bx = getelementptr inbounds nuw i8, ptr %i.e, i64 4
  %i.by = load ptr, ptr %.pre, align 8, !tbaa !103 ; 2 uses
  %i.bz = ptrtoint ptr %i.bw to i64
  %i.ca = ptrtoint ptr %i.by to i64
  %i.cb = sub i64 %i.bz, %i.ca
  %i.cc = getelementptr inbounds i8, ptr %i.by, i64 %i.cb
  invoke void @_ZNSt6vectorIcSaIcEE15_M_range_insertIPKhEEvN9__gnu_cxx17__normal_iteratorIPcS1_EET_S9_St20forward_iterator_tag(ptr noundef nonnull align 8 dereferenceable(41) %.pre, ptr %i.cc, ptr noundef nonnull %i.e, ptr noundef nonnull %i.bx)
          to label %._ZN5draco13EncoderBuffer6EncodeEPKvm.exit52_crit_edge unwind label %bb.n

._ZN5draco13EncoderBuffer6EncodeEPKvm.exit52_crit_edge: ; preds = %bb.g
  %.pre122 = load ptr, ptr %i.bk, align 8, !tbaa !14
  br label %_ZN5draco13EncoderBuffer6EncodeEPKvm.exit52

_ZN5draco13EncoderBuffer6EncodeEPKvm.exit52:      ; preds = %.thread148, %._ZN5draco13EncoderBuffer6EncodeEPKvm.exit52_crit_edge, %bb.f
  %i.cd = phi ptr [ %i.bk, %._ZN5draco13EncoderBuffer6EncodeEPKvm.exit52_crit_edge ], [ %i.bk, %bb.f ], [ %i.ao, %.thread148 ] ; 2 uses
  %i.ce = phi ptr [ %.pre122, %._ZN5draco13EncoderBuffer6EncodeEPKvm.exit52_crit_edge ], [ %i.bl, %bb.f ], [ %i.ap, %.thread148 ]
  %i.cf = invoke noundef i32 @_ZNK5draco10PointCloud19GetNamedAttributeIdENS_17GeometryAttribute4TypeE(ptr noundef nonnull align 8 dereferenceable(164) %i.ce, i32 noundef 0)
          to label %bb.h unwind label %bb.n       ; 2 uses

bb.h:                                             ; preds = %_ZN5draco13EncoderBuffer6EncodeEPKvm.exit52
  %i.cg = icmp slt i32 %i.cf, 0
  br i1 %i.cg, label %.noexc.i, label %bb.q

.noexc.i:                                         ; preds = %bb.h
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #13
  %i.ch = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 6 uses
  store ptr %i.ch, ptr %4, align 8, !tbaa !17
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #13
  store i64 39, ptr %i.d, align 8, !tbaa !19
  %i.ci = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull align 8 dereferenceable(8) %i.d, i64 noundef 0)
          to label %.noexc53 unwind label %bb.o   ; 3 uses

.noexc53:                                         ; preds = %.noexc.i
  store ptr %i.ci, ptr %4, align 8, !tbaa !21
  %i.cj = load i64, ptr %i.d, align 8, !tbaa !19  ; 3 uses
  store i64 %i.cj, ptr %i.ch, align 8, !tbaa !22
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(39) %i.ci, ptr noundef nonnull align 1 dereferenceable(39) @.str.2, i64 39, i1 false)
  %i.ck = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  store i64 %i.cj, ptr %i.ck, align 8, !tbaa !23
  %i.cl = getelementptr inbounds nuw i8, ptr %i.ci, i64 %i.cj
  store i8 0, ptr %i.cl, align 1, !tbaa !22
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #13
  call void @llvm.experimental.noalias.scope.decl(metadata !104)
  store i32 -1, ptr %0, align 8, !tbaa !26, !alias.scope !104
  %i.cm = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.cn = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  store ptr %i.cn, ptr %i.cm, align 8, !tbaa !17, !alias.scope !104
  %i.co = load ptr, ptr %4, align 8, !tbaa !21, !noalias !104 ; 2 uses
  %i.cp = load i64, ptr %i.ck, align 8, !tbaa !23, !noalias !104 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #13, !noalias !104
  store i64 %i.cp, ptr %i.c, align 8, !tbaa !19, !noalias !104
  %i.cq = icmp ugt i64 %i.cp, 15
  br i1 %i.cq, label %.noexc.i.i.i, label %._crit_edge.i.i.i.i

.noexc.i.i.i:                                     ; preds = %.noexc53
  %i.cr = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %i.cm, ptr noundef nonnull align 8 dereferenceable(8) %i.c, i64 noundef 0)
          to label %.noexc54 unwind label %bb.p   ; 2 uses

.noexc54:                                         ; preds = %.noexc.i.i.i
  store ptr %i.cr, ptr %i.cm, align 8, !tbaa !21, !alias.scope !104
  %i.cs = load i64, ptr %i.c, align 8, !tbaa !19, !noalias !104
  store i64 %i.cs, ptr %i.cn, align 8, !tbaa !22, !alias.scope !104
  br label %._crit_edge.i.i.i.i

._crit_edge.i.i.i.i:                              ; preds = %.noexc54, %.noexc53
  %i.ct = phi ptr [ %i.cr, %.noexc54 ], [ %i.cn, %.noexc53 ] ; 2 uses
  switch i64 %i.cp, label %bb.j [
    i64 1, label %bb.i
    i64 0, label %bb.k
  ]

bb.i:                                             ; preds = %._crit_edge.i.i.i.i
  %i.cu = load i8, ptr %i.co, align 1, !tbaa !22
  store i8 %i.cu, ptr %i.ct, align 1, !tbaa !22
  br label %bb.k

bb.j:                                             ; preds = %._crit_edge.i.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.ct, ptr align 1 %i.co, i64 %i.cp, i1 false)
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i, %._crit_edge.i.i.i.i
  %i.cv = load i64, ptr %i.c, align 8, !tbaa !19, !noalias !104 ; 2 uses
  %i.cw = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.cv, ptr %i.cw, align 8, !tbaa !23, !alias.scope !104
  %i.cx = load ptr, ptr %i.cm, align 8, !tbaa !21, !alias.scope !104
  %i.cy = getelementptr inbounds nuw i8, ptr %i.cx, i64 %i.cv
  store i8 0, ptr %i.cy, align 1, !tbaa !22
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #13, !noalias !104
  %i.cz = load ptr, ptr %4, align 8, !tbaa !21    ; 2 uses
  %i.da = icmp eq ptr %i.cz, %i.ch
  br i1 %i.da, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.k
  %i.db = load i64, ptr %i.ch, align 8, !tbaa !22
  %i.dc = add i64 %i.db, 1
  call void @_ZdlPvm(ptr noundef %i.cz, i64 noundef %i.dc) #14
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.k, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #13
  br label %_ZNSt6vectorIhSaIhEED2Ev.exit

bb.l:                                             ; preds = %bb.a
  %i.dd = landingpad { ptr, i32 }
          cleanup
  br label %bb.aj

bb.m:                                             ; preds = %bb.e
  %i.de = landingpad { ptr, i32 }
          cleanup
  br label %bb.ai

bb.n:                                             ; preds = %bb.g, %_ZN5draco13EncoderBuffer6EncodeEPKvm.exit52
  %i.df = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIhSaIhEED2Ev.exit90

bb.o:                                             ; preds = %.noexc.i
  %i.dg = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit57

bb.p:                                             ; preds = %.noexc.i.i.i
  %i.dh = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.di = load ptr, ptr %4, align 8, !tbaa !21    ; 2 uses
  %i.dj = icmp eq ptr %i.di, %i.ch
  br i1 %i.dj, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit57, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i55

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i55: ; preds = %bb.p
  %i.dk = load i64, ptr %i.ch, align 8, !tbaa !22
  %i.dl = add i64 %i.dk, 1
  call void @_ZdlPvm(ptr noundef %i.di, i64 noundef %i.dl) #14
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit57

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit57: ; preds = %bb.p, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i55, %bb.o
  %.pn44 = phi { ptr, i32 } [ %i.dg, %bb.o ], [ %i.dh, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i55 ], [ %i.dh, %bb.p ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #13
  br label %_ZNSt6vectorIhSaIhEED2Ev.exit90

bb.q:                                             ; preds = %bb.h
  %i.dm = load ptr, ptr %i.cd, align 8, !tbaa !14 ; 4 uses
  %i.dn = getelementptr inbounds nuw i8, ptr %i.dm, i64 16
  %i.do = zext nneg i32 %i.cf to i64              ; 2 uses
  %i.dp = load ptr, ptr %i.dn, align 8, !tbaa !107
  %i.dq = getelementptr inbounds nuw [8 x i8], ptr %i.dp, i64 %i.do
  %i.dr = load ptr, ptr %i.dq, align 8, !tbaa !109
  %i.ds = getelementptr inbounds nuw i8, ptr %i.dr, i64 28
  %i.dt = load i32, ptr %i.ds, align 4, !tbaa !115
  %.not = icmp eq i32 %i.dt, 9
  br i1 %.not, label %bb.w, label %.noexc.i59

.noexc.i59:                                       ; preds = %bb.q
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #13
  %i.du = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 6 uses
  store ptr %i.du, ptr %5, align 8, !tbaa !17
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #13
  store i64 47, ptr %i.b, align 8, !tbaa !19
  %i.dv = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull align 8 dereferenceable(8) %i.b, i64 noundef 0)
          to label %.noexc60 unwind label %bb.u   ; 3 uses

.noexc60:                                         ; preds = %.noexc.i59
  store ptr %i.dv, ptr %5, align 8, !tbaa !21
  %i.dw = load i64, ptr %i.b, align 8, !tbaa !19  ; 3 uses
  store i64 %i.dw, ptr %i.du, align 8, !tbaa !22
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(47) %i.dv, ptr noundef nonnull align 1 dereferenceable(47) @.str.3, i64 47, i1 false)
  %i.dx = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 2 uses
  store i64 %i.dw, ptr %i.dx, align 8, !tbaa !23
  %i.dy = getelementptr inbounds nuw i8, ptr %i.dv, i64 %i.dw
  store i8 0, ptr %i.dy, align 1, !tbaa !22
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #13
  call void @llvm.experimental.noalias.scope.decl(metadata !116)
  store i32 -1, ptr %0, align 8, !tbaa !26, !alias.scope !116
  %i.dz = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.ea = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  store ptr %i.ea, ptr %i.dz, align 8, !tbaa !17, !alias.scope !116
  %i.eb = load ptr, ptr %5, align 8, !tbaa !21, !noalias !116 ; 2 uses
  %i.ec = load i64, ptr %i.dx, align 8, !tbaa !23, !noalias !116 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #13, !noalias !116
  store i64 %i.ec, ptr %i.a, align 8, !tbaa !19, !noalias !116
  %i.ed = icmp ugt i64 %i.ec, 15
  br i1 %i.ed, label %.noexc.i.i.i63, label %._crit_edge.i.i.i.i62

.noexc.i.i.i63:                                   ; preds = %.noexc60
  %i.ee = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %i.dz, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0)
          to label %.noexc64 unwind label %bb.v   ; 2 uses

.noexc64:                                         ; preds = %.noexc.i.i.i63
  store ptr %i.ee, ptr %i.dz, align 8, !tbaa !21, !alias.scope !116
  %i.ef = load i64, ptr %i.a, align 8, !tbaa !19, !noalias !116
  store i64 %i.ef, ptr %i.ea, align 8, !tbaa !22, !alias.scope !116
  br label %._crit_edge.i.i.i.i62

._crit_edge.i.i.i.i62:                            ; preds = %.noexc64, %.noexc60
  %i.eg = phi ptr [ %i.ee, %.noexc64 ], [ %i.ea, %.noexc60 ] ; 2 uses
  switch i64 %i.ec, label %bb.s [
    i64 1, label %bb.r
    i64 0, label %bb.t
  ]

bb.r:                                             ; preds = %._crit_edge.i.i.i.i62
  %i.eh = load i8, ptr %i.eb, align 1, !tbaa !22
  store i8 %i.eh, ptr %i.eg, align 1, !tbaa !22
  br label %bb.t

bb.s:                                             ; preds = %._crit_edge.i.i.i.i62
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.eg, ptr align 1 %i.eb, i64 %i.ec, i1 false)
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %bb.r, %._crit_edge.i.i.i.i62
  %i.ei = load i64, ptr %i.a, align 8, !tbaa !19, !noalias !116 ; 2 uses
  %i.ej = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.ei, ptr %i.ej, align 8, !tbaa !23, !alias.scope !116
  %i.ek = load ptr, ptr %i.dz, align 8, !tbaa !21, !alias.scope !116
  %i.el = getelementptr inbounds nuw i8, ptr %i.ek, i64 %i.ei
  store i8 0, ptr %i.el, align 1, !tbaa !22
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #13, !noalias !116
  %i.em = load ptr, ptr %5, align 8, !tbaa !21    ; 2 uses
  %i.en = icmp eq ptr %i.em, %i.du
  br i1 %i.en, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit68, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i66

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i66: ; preds = %bb.t
  %i.eo = load i64, ptr %i.du, align 8, !tbaa !22
  %i.ep = add i64 %i.eo, 1
  call void @_ZdlPvm(ptr noundef %i.em, i64 noundef %i.ep) #14
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit68

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit68: ; preds = %bb.t, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i66
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #13
  br label %_ZNSt6vectorIhSaIhEED2Ev.exit

bb.u:                                             ; preds = %.noexc.i59
  %i.eq = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit71

bb.v:                                             ; preds = %.noexc.i.i.i63
  %i.er = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.es = load ptr, ptr %5, align 8, !tbaa !21    ; 2 uses
  %i.et = icmp eq ptr %i.es, %i.du
  br i1 %i.et, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit71, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i69

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i69: ; preds = %bb.v
  %i.eu = load i64, ptr %i.du, align 8, !tbaa !22
  %i.ev = add i64 %i.eu, 1
  call void @_ZdlPvm(ptr noundef %i.es, i64 noundef %i.ev) #14
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit71

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit71: ; preds = %bb.v, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i69, %bb.u
  %.pn42 = phi { ptr, i32 } [ %i.eq, %bb.u ], [ %i.er, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i69 ], [ %i.er, %bb.v ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #13
  br label %_ZNSt6vectorIhSaIhEED2Ev.exit90

bb.w:                                             ; preds = %bb.q
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #13
  store i16 0, ptr %i.f, align 2, !tbaa !118
  %i.ew = getelementptr inbounds nuw i8, ptr %i.dm, i64 192
  %i.ex = getelementptr inbounds nuw i8, ptr %i.dm, i64 200
  %i.ey = load ptr, ptr %i.ex, align 8, !tbaa !100
  %i.ez = load ptr, ptr %i.ew, align 8, !tbaa !101 ; 2 uses
  %i.fa = ptrtoint ptr %i.ey to i64
  %i.fb = ptrtoint ptr %i.ez to i64
  %i.fc = sub i64 %i.fa, %i.fb
  %i.fd = sdiv exact i64 %i.fc, 12
  %i.fe = and i64 %i.fd, 4294967295
  %.not116 = icmp eq i64 %i.fe, 0
  br i1 %.not116, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.w
  %8 = getelementptr inbounds nuw i8, ptr %7, i64 4
  %i.ff = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 2 uses
  %i.fg = getelementptr inbounds nuw i8, ptr %7, i64 12
  %i.fh = getelementptr inbounds nuw i8, ptr %i.f, i64 2
  %.12..sroa_idx = getelementptr inbounds nuw i8, ptr %6, i64 12
  %.12..sroa_idx151 = getelementptr inbounds nuw i8, ptr %6, i64 12
  %.24..sroa_idx = getelementptr inbounds nuw i8, ptr %6, i64 24
  %.12..sroa_idx152 = getelementptr inbounds nuw i8, ptr %6, i64 12
  %.24..sroa_idx153 = getelementptr inbounds nuw i8, ptr %6, i64 24
  %.16..sroa_idx = getelementptr inbounds nuw i8, ptr %6, i64 16
  %.4..sroa_idx = getelementptr inbounds nuw i8, ptr %6, i64 4
  %.28..sroa_idx = getelementptr inbounds nuw i8, ptr %6, i64 28
  br label %bb.x

bb.x:                                             ; preds = %.lr.ph, %_ZN5draco13EncoderBuffer6EncodeEPKvm.exit83
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %_ZN5draco13EncoderBuffer6EncodeEPKvm.exit83 ] ; 2 uses
  %i.fi = phi ptr [ %i.ez, %.lr.ph ], [ %i.mc, %_ZN5draco13EncoderBuffer6EncodeEPKvm.exit83 ]
  %i.fj = phi ptr [ %i.dm, %.lr.ph ], [ %i.ly, %_ZN5draco13EncoderBuffer6EncodeEPKvm.exit83 ]
  %i.fk = getelementptr inbounds nuw i8, ptr %i.fj, i64 16
  %i.fl = load ptr, ptr %i.fk, align 8, !tbaa !107
  %i.fm = getelementptr inbounds nuw [8 x i8], ptr %i.fl, i64 %i.do
  %i.fn = load ptr, ptr %i.fm, align 8, !tbaa !109 ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(36) %6, i8 0, i64 36, i1 false), !tbaa !120
  %i.fo = getelementptr inbounds nuw [12 x i8], ptr %i.fi, i64 %indvars.iv ; 6 uses
  %i.fp = load i32, ptr %i.fo, align 4, !tbaa !122 ; 2 uses
  %i.fq = getelementptr inbounds nuw i8, ptr %i.fn, i64 100 ; 4 uses
  %i.fr = load i8, ptr %i.fq, align 4, !tbaa !143, !range !144, !noalias !145, !noundef !146
  %i.fs = trunc nuw i8 %i.fr to i1                ; 2 uses
  br i1 %i.fs, label %bb.y, label %.else.i

.else.i:                                          ; preds = %bb.x
  %i.ft = getelementptr inbounds nuw i8, ptr %i.fn, i64 72
  %i.fu = load ptr, ptr %i.ft, align 8, !noalias !145
  %i.fv = zext i32 %i.fp to i64
  %i.fw = getelementptr inbounds nuw [4 x i8], ptr %i.fu, i64 %i.fv
  %storemerge.i.else.val.i = load i32, ptr %i.fw, align 4, !tbaa !102, !noalias !145
  br label %bb.y

bb.y:                                             ; preds = %.else.i, %bb.x
  %storemerge.i.i = phi i32 [ %i.fp, %bb.x ], [ %storemerge.i.else.val.i, %.else.i ]
  %i.fx = getelementptr inbounds nuw i8, ptr %i.fn, i64 48 ; 4 uses
  %i.fy = load i64, ptr %i.fx, align 8, !tbaa !147
  %i.fz = getelementptr inbounds nuw i8, ptr %i.fn, i64 40 ; 4 uses
  %i.ga = load i64, ptr %i.fz, align 8, !tbaa !148 ; 8 uses
  %i.gb = zext i32 %storemerge.i.i to i64
  %i.gc = mul nsw i64 %i.ga, %i.gb
  %i.gd = load ptr, ptr %i.fn, align 8, !tbaa !149
  %i.ge = load ptr, ptr %i.gd, align 8, !tbaa !151
  %i.gf = getelementptr i8, ptr %i.ge, i64 %i.fy  ; 4 uses
  %i.gg = getelementptr i8, ptr %i.gf, i64 %i.gc
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 16 %6, ptr align 1 %i.gg, i64 %i.ga, i1 false)
  %i.gh = getelementptr inbounds nuw i8, ptr %i.fo, i64 4 ; 2 uses
  %i.gi = load i32, ptr %i.gh, align 4, !tbaa !122 ; 2 uses
  br i1 %i.fs, label %.thread, label %.else.i76

.thread:                                          ; preds = %bb.y
  %i.gj = zext i32 %i.gi to i64
  %i.gk = mul nsw i64 %i.ga, %i.gj
  %i.gl = getelementptr i8, ptr %i.gf, i64 %i.gk
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %.12..sroa_idx151, ptr align 1 %i.gl, i64 %i.ga, i1 false)
  %i.gm = getelementptr inbounds nuw i8, ptr %i.fo, i64 8
  br label %bb.z

.else.i76:                                        ; preds = %bb.y
  %i.gn = getelementptr inbounds nuw i8, ptr %i.fn, i64 72
  %i.go = load ptr, ptr %i.gn, align 8, !noalias !152 ; 2 uses
  %i.gp = zext i32 %i.gi to i64
  %i.gq = getelementptr inbounds nuw [4 x i8], ptr %i.go, i64 %i.gp
  %storemerge.i.else.val.i73 = load i32, ptr %i.gq, align 4, !tbaa !102, !noalias !152
  %i.gr = zext i32 %storemerge.i.else.val.i73 to i64
  %i.gs = mul nsw i64 %i.ga, %i.gr
  %i.gt = getelementptr i8, ptr %i.gf, i64 %i.gs
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %.12..sroa_idx, ptr align 1 %i.gt, i64 %i.ga, i1 false)
  %i.gu = getelementptr inbounds nuw i8, ptr %i.fo, i64 8
  %i.gv = load i32, ptr %i.gu, align 4, !tbaa !122
  %i.gw = zext i32 %i.gv to i64
  %i.gx = getelementptr inbounds nuw [4 x i8], ptr %i.go, i64 %i.gw
  br label %bb.z

bb.z:                                             ; preds = %.thread, %.else.i76
  %storemerge.i.i78.in = phi ptr [ %i.gm, %.thread ], [ %i.gx, %.else.i76 ]
  %storemerge.i.i78 = load i32, ptr %storemerge.i.i78.in, align 4, !tbaa !102
  %i.gy = zext i32 %storemerge.i.i78 to i64
  %i.gz = mul nsw i64 %i.ga, %i.gy
  %i.ha = getelementptr i8, ptr %i.gf, i64 %i.gz
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %.24..sroa_idx, ptr align 1 %i.ha, i64 %i.ga, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #13
  %.12. = load float, ptr %.12..sroa_idx152, align 4, !tbaa !120, !noalias !153
  %.0. = load float, ptr %6, align 16, !tbaa !120, !noalias !153
  %.24. = load float, ptr %.24..sroa_idx153, align 8, !tbaa !120, !noalias !154
  %.16. = load <2 x float>, ptr %.16..sroa_idx, align 16, !tbaa !120, !noalias !153 ; 2 uses
  %.4. = load <2 x float>, ptr %.4..sroa_idx, align 4, !tbaa !120, !noalias !153 ; 3 uses
  %i.hb = fsub <2 x float> %.16., %.4.            ; 2 uses
  %i.hc = shufflevector <2 x float> %.16., <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %i.hd = insertelement <2 x float> %i.hc, float %.12., i64 1
  %i.he = shufflevector <2 x float> %.4., <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %i.hf = insertelement <2 x float> %i.he, float %.0., i64 1 ; 2 uses
  %i.hg = fsub <2 x float> %i.hd, %i.hf           ; 2 uses
  %.28. = load <2 x float>, ptr %.28..sroa_idx, align 4, !tbaa !120, !noalias !154 ; 2 uses
  %i.hh = shufflevector <2 x float> %.28., <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %i.hi = insertelement <2 x float> %i.hh, float %.24., i64 1
  %i.hj = fsub <2 x float> %i.hi, %i.hf           ; 2 uses
  %i.hk = fsub <2 x float> %.28., %.4.            ; 2 uses
  %i.hl = fneg <2 x float> %i.hk
  %i.hm = fmul <2 x float> %i.hg, %i.hl
  %i.hn = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.hb, <2 x float> %i.hj, <2 x float> %i.hm) ; 3 uses
  %9 = extractelement <2 x float> %i.hn, i64 0    ; 3 uses
  store float %9, ptr %7, align 8, !tbaa !120, !alias.scope !155
  %i.ho = extractelement <2 x float> %i.hn, i64 1 ; 3 uses
  store float %i.ho, ptr %8, align 4, !tbaa !120, !alias.scope !155
  %i.hp = extractelement <2 x float> %i.hj, i64 1
  %i.hq = fneg float %i.hp
  %i.hr = extractelement <2 x float> %i.hb, i64 0
  %i.hs = fmul float %i.hr, %i.hq
  %i.ht = extractelement <2 x float> %i.hg, i64 1
  %i.hu = extractelement <2 x float> %i.hk, i64 0
  %i.hv = call float @llvm.fmuladd.f32(float %i.ht, float %i.hu, float %i.hs) ; 4 uses
  store float %i.hv, ptr %i.ff, align 8, !tbaa !120, !alias.scope !155
  %10 = call float @llvm.fmuladd.f32(float %9, float %9, float 0.000000e+00)
  %i.hw = call float @llvm.fmuladd.f32(float %i.ho, float %i.ho, float %10)
  %i.hx = call noundef float @llvm.fmuladd.f32(float %i.hv, float %i.hv, float %i.hw) ; 2 uses
  %i.hy = fcmp oeq float %i.hx, 0.000000e+00
  br i1 %i.hy, label %_ZN5draco7VectorDIfLi3EE9NormalizeEv.exit, label %.preheader.preheader.i

.preheader.preheader.i:                           ; preds = %bb.z
  %sqrt.i = call float @llvm.sqrt.f32(float %i.hx) ; 2 uses
  %i.hz = insertelement <2 x float> poison, float %sqrt.i, i64 0
  %i.ia = shufflevector <2 x float> %i.hz, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ib = fdiv <2 x float> %i.hn, %i.ia
  store <2 x float> %i.ib, ptr %7, align 8, !tbaa !120
  %i.ic = fdiv float %i.hv, %sqrt.i
  store float %i.ic, ptr %i.ff, align 8, !tbaa !120
  br label %_ZN5draco7VectorDIfLi3EE9NormalizeEv.exit

_ZN5draco7VectorDIfLi3EE9NormalizeEv.exit:        ; preds = %.preheader.preheader.i, %bb.z
  %i.id = load ptr, ptr %1, align 8, !tbaa !27    ; 5 uses
  %i.ie = getelementptr inbounds nuw i8, ptr %i.id, i64 32
  %i.if = load i64, ptr %i.ie, align 8, !tbaa !97
  %i.ig = icmp slt i64 %i.if, 1
  br i1 %i.ig, label %bb.aa, label %_ZN5draco13EncoderBuffer6EncodeEPKvm.exit81

bb.aa:                                            ; preds = %_ZN5draco7VectorDIfLi3EE9NormalizeEv.exit
  %i.ih = getelementptr inbounds nuw i8, ptr %i.id, i64 8
  %i.ii = load ptr, ptr %i.ih, align 8, !tbaa !103
  %i.ij = load ptr, ptr %i.id, align 8, !tbaa !103 ; 2 uses
  %i.ik = ptrtoint ptr %i.ii to i64
  %i.il = ptrtoint ptr %i.ij to i64
  %i.im = sub i64 %i.ik, %i.il
  %i.in = getelementptr inbounds i8, ptr %i.ij, i64 %i.im
  invoke void @_ZNSt6vectorIcSaIcEE15_M_range_insertIPKhEEvN9__gnu_cxx17__normal_iteratorIPcS1_EET_S9_St20forward_iterator_tag(ptr noundef nonnull align 8 dereferenceable(41) %i.id, ptr %i.in, ptr noundef nonnull %7, ptr noundef nonnull %i.fg)
          to label %._ZN5draco13EncoderBuffer6EncodeEPKvm.exit81_crit_edge unwind label %.loopexit.split-lp.loopexit.split-lp

._ZN5draco13EncoderBuffer6EncodeEPKvm.exit81_crit_edge: ; preds = %bb.aa
  %.pre123 = load ptr, ptr %1, align 8, !tbaa !27
  br label %_ZN5draco13EncoderBuffer6EncodeEPKvm.exit81

_ZN5draco13EncoderBuffer6EncodeEPKvm.exit81:      ; preds = %._ZN5draco13EncoderBuffer6EncodeEPKvm.exit81_crit_edge, %_ZN5draco7VectorDIfLi3EE9NormalizeEv.exit
  %i.io = phi ptr [ %.pre123, %._ZN5draco13EncoderBuffer6EncodeEPKvm.exit81_crit_edge ], [ %i.id, %_ZN5draco7VectorDIfLi3EE9NormalizeEv.exit ] ; 5 uses
  %i.ip = getelementptr inbounds nuw i8, ptr %i.fn, i64 72 ; 3 uses
  %i.iq = load i32, ptr %i.fo, align 4, !tbaa !122 ; 2 uses
  %i.ir = load i8, ptr %i.fq, align 4, !tbaa !143, !range !144, !noalias !156, !noundef !146 ; 2 uses
  %i.is = trunc nuw i8 %i.ir to i1
  br i1 %i.is, label %bb.ac, label %.else

bb.ab:                                            ; preds = %_ZN5draco13EncoderBuffer6EncodeEPKvm.exit85.2
  %i.it = getelementptr inbounds nuw i8, ptr %.pre128, i64 8
  %i.iu = load ptr, ptr %i.it, align 8, !tbaa !103
  %i.iv = load ptr, ptr %.pre128, align 8, !tbaa !103 ; 2 uses
  %i.iw = ptrtoint ptr %i.iu to i64
  %i.ix = ptrtoint ptr %i.iv to i64
  %i.iy = sub i64 %i.iw, %i.ix
  %i.iz = getelementptr inbounds i8, ptr %i.iv, i64 %i.iy
  invoke void @_ZNSt6vectorIcSaIcEE15_M_range_insertIPKhEEvN9__gnu_cxx17__normal_iteratorIPcS1_EET_S9_St20forward_iterator_tag(ptr noundef nonnull align 8 dereferenceable(41) %.pre128, ptr %i.iz, ptr noundef nonnull %i.f, ptr noundef nonnull %i.fh)
          to label %_ZN5draco13EncoderBuffer6EncodeEPKvm.exit83 unwind label %.loopexit.split-lp.loopexit.split-lp

.else:                                            ; preds = %_ZN5draco13EncoderBuffer6EncodeEPKvm.exit81
  %i.ja = load ptr, ptr %i.ip, align 8, !noalias !156
  %i.jb = zext i32 %i.iq to i64
  %i.jc = getelementptr inbounds nuw [4 x i8], ptr %i.ja, i64 %i.jb
  %storemerge.i.else.val = load i32, ptr %i.jc, align 4, !tbaa !102, !noalias !156
  br label %bb.ac

bb.ac:                                            ; preds = %_ZN5draco13EncoderBuffer6EncodeEPKvm.exit81, %.else
  %storemerge.i = phi i32 [ %i.iq, %_ZN5draco13EncoderBuffer6EncodeEPKvm.exit81 ], [ %storemerge.i.else.val, %.else ]
  %i.jd = getelementptr inbounds nuw i8, ptr %i.io, i64 32
  %i.je = load i64, ptr %i.jd, align 8, !tbaa !97
  %i.jf = icmp slt i64 %i.je, 1
  br i1 %i.jf, label %bb.ad, label %_ZN5draco13EncoderBuffer6EncodeEPKvm.exit85

bb.ad:                                            ; preds = %bb.ac
  %i.jg = load ptr, ptr %i.fn, align 8, !tbaa !149
  %i.jh = load ptr, ptr %i.jg, align 8, !tbaa !151
  %i.ji = load i64, ptr %i.fz, align 8, !tbaa !148 ; 2 uses
  %i.jj = zext i32 %storemerge.i to i64
  %i.jk = mul nsw i64 %i.ji, %i.jj
  %i.jl = getelementptr i8, ptr %i.jh, i64 %i.jk
  %i.jm = load i64, ptr %i.fx, align 8, !tbaa !147
  %i.jn = getelementptr i8, ptr %i.jl, i64 %i.jm  ; 2 uses
  %i.jo = getelementptr inbounds nuw i8, ptr %i.io, i64 8
  %i.jp = load ptr, ptr %i.jo, align 8, !tbaa !103
  %i.jq = getelementptr inbounds nuw i8, ptr %i.jn, i64 %i.ji
  %i.jr = load ptr, ptr %i.io, align 8, !tbaa !103 ; 2 uses
  %i.js = ptrtoint ptr %i.jp to i64
  %i.jt = ptrtoint ptr %i.jr to i64
  %i.ju = sub i64 %i.js, %i.jt
  %i.jv = getelementptr inbounds i8, ptr %i.jr, i64 %i.ju
  invoke void @_ZNSt6vectorIcSaIcEE15_M_range_insertIPKhEEvN9__gnu_cxx17__normal_iteratorIPcS1_EET_S9_St20forward_iterator_tag(ptr noundef nonnull align 8 dereferenceable(41) %i.io, ptr %i.jv, ptr noundef %i.jn, ptr noundef %i.jq)
          to label %._ZN5draco13EncoderBuffer6EncodeEPKvm.exit85_crit_edge unwind label %.loopexit.split-lp.loopexit.split-lp

._ZN5draco13EncoderBuffer6EncodeEPKvm.exit85_crit_edge: ; preds = %bb.ad
  %.pre124 = load ptr, ptr %1, align 8, !tbaa !27
  %.pre125 = load i8, ptr %i.fq, align 4, !tbaa !143, !range !144, !noalias !156
  br label %_ZN5draco13EncoderBuffer6EncodeEPKvm.exit85

_ZN5draco13EncoderBuffer6EncodeEPKvm.exit85:      ; preds = %._ZN5draco13EncoderBuffer6EncodeEPKvm.exit85_crit_edge, %bb.ac
  %i.jw = phi i8 [ %.pre125, %._ZN5draco13EncoderBuffer6EncodeEPKvm.exit85_crit_edge ], [ %i.ir, %bb.ac ] ; 2 uses
  %i.jx = phi ptr [ %.pre124, %._ZN5draco13EncoderBuffer6EncodeEPKvm.exit85_crit_edge ], [ %i.io, %bb.ac ] ; 5 uses
  %i.jy = load i32, ptr %i.gh, align 4, !tbaa !122 ; 2 uses
  %i.jz = trunc nuw i8 %i.jw to i1
  br i1 %i.jz, label %bb.ae, label %.else.1

.else.1:                                          ; preds = %_ZN5draco13EncoderBuffer6EncodeEPKvm.exit85
  %i.ka = load ptr, ptr %i.ip, align 8, !noalias !156
  %i.kb = zext i32 %i.jy to i64
  %i.kc = getelementptr inbounds nuw [4 x i8], ptr %i.ka, i64 %i.kb
  %storemerge.i.else.val.1 = load i32, ptr %i.kc, align 4, !tbaa !102, !noalias !156
  br label %bb.ae

bb.ae:                                            ; preds = %.else.1, %_ZN5draco13EncoderBuffer6EncodeEPKvm.exit85
  %storemerge.i.1 = phi i32 [ %i.jy, %_ZN5draco13EncoderBuffer6EncodeEPKvm.exit85 ], [ %storemerge.i.else.val.1, %.else.1 ]
  %i.kd = getelementptr inbounds nuw i8, ptr %i.jx, i64 32
  %i.ke = load i64, ptr %i.kd, align 8, !tbaa !97
  %i.kf = icmp slt i64 %i.ke, 1
  br i1 %i.kf, label %bb.af, label %_ZN5draco13EncoderBuffer6EncodeEPKvm.exit85.1

bb.af:                                            ; preds = %bb.ae
  %i.kg = load ptr, ptr %i.fn, align 8, !tbaa !149
  %i.kh = load ptr, ptr %i.kg, align 8, !tbaa !151
  %i.ki = load i64, ptr %i.fz, align 8, !tbaa !148 ; 2 uses
  %i.kj = zext i32 %storemerge.i.1 to i64
  %i.kk = mul nsw i64 %i.ki, %i.kj
  %i.kl = getelementptr i8, ptr %i.kh, i64 %i.kk
  %i.km = load i64, ptr %i.fx, align 8, !tbaa !147
  %i.kn = getelementptr i8, ptr %i.kl, i64 %i.km  ; 2 uses
  %i.ko = getelementptr inbounds nuw i8, ptr %i.jx, i64 8
  %i.kp = load ptr, ptr %i.ko, align 8, !tbaa !103
  %i.kq = getelementptr inbounds nuw i8, ptr %i.kn, i64 %i.ki
  %i.kr = load ptr, ptr %i.jx, align 8, !tbaa !103 ; 2 uses
  %i.ks = ptrtoint ptr %i.kp to i64
  %i.kt = ptrtoint ptr %i.kr to i64
  %i.ku = sub i64 %i.ks, %i.kt
  %i.kv = getelementptr inbounds i8, ptr %i.kr, i64 %i.ku
  invoke void @_ZNSt6vectorIcSaIcEE15_M_range_insertIPKhEEvN9__gnu_cxx17__normal_iteratorIPcS1_EET_S9_St20forward_iterator_tag(ptr noundef nonnull align 8 dereferenceable(41) %i.jx, ptr %i.kv, ptr noundef %i.kn, ptr noundef %i.kq)
          to label %._ZN5draco13EncoderBuffer6EncodeEPKvm.exit85.1_crit_edge unwind label %.loopexit.split-lp.loopexit.split-lp

._ZN5draco13EncoderBuffer6EncodeEPKvm.exit85.1_crit_edge: ; preds = %bb.af
  %.pre126 = load ptr, ptr %1, align 8, !tbaa !27
  %.pre127 = load i8, ptr %i.fq, align 4, !tbaa !143, !range !144, !noalias !156
  br label %_ZN5draco13EncoderBuffer6EncodeEPKvm.exit85.1

_ZN5draco13EncoderBuffer6EncodeEPKvm.exit85.1:    ; preds = %._ZN5draco13EncoderBuffer6EncodeEPKvm.exit85.1_crit_edge, %bb.ae
  %i.kw = phi i8 [ %.pre127, %._ZN5draco13EncoderBuffer6EncodeEPKvm.exit85.1_crit_edge ], [ %i.jw, %bb.ae ]
  %i.kx = phi ptr [ %.pre126, %._ZN5draco13EncoderBuffer6EncodeEPKvm.exit85.1_crit_edge ], [ %i.jx, %bb.ae ] ; 4 uses
  %i.ky = getelementptr inbounds nuw i8, ptr %i.fo, i64 8
  %i.kz = load i32, ptr %i.ky, align 4, !tbaa !122 ; 2 uses
  %i.la = trunc nuw i8 %i.kw to i1
  br i1 %i.la, label %bb.ag, label %.else.2

.else.2:                                          ; preds = %_ZN5draco13EncoderBuffer6EncodeEPKvm.exit85.1
  %i.lb = load ptr, ptr %i.ip, align 8, !noalias !156
  %i.lc = zext i32 %i.kz to i64
  %i.ld = getelementptr inbounds nuw [4 x i8], ptr %i.lb, i64 %i.lc
  %storemerge.i.else.val.2 = load i32, ptr %i.ld, align 4, !tbaa !102, !noalias !156
  br label %bb.ag

bb.ag:                                            ; preds = %.else.2, %_ZN5draco13EncoderBuffer6EncodeEPKvm.exit85.1
  %storemerge.i.2 = phi i32 [ %i.kz, %_ZN5draco13EncoderBuffer6EncodeEPKvm.exit85.1 ], [ %storemerge.i.else.val.2, %.else.2 ]
  %i.le = getelementptr inbounds nuw i8, ptr %i.kx, i64 32
  %i.lf = load i64, ptr %i.le, align 8, !tbaa !97
  %i.lg = icmp slt i64 %i.lf, 1
  br i1 %i.lg, label %bb.ah, label %_ZN5draco13EncoderBuffer6EncodeEPKvm.exit83

bb.ah:                                            ; preds = %bb.ag
  %i.lh = load ptr, ptr %i.fn, align 8, !tbaa !149
  %i.li = load ptr, ptr %i.lh, align 8, !tbaa !151
  %i.lj = load i64, ptr %i.fz, align 8, !tbaa !148 ; 2 uses
  %i.lk = zext i32 %storemerge.i.2 to i64
  %i.ll = mul nsw i64 %i.lj, %i.lk
  %i.lm = getelementptr i8, ptr %i.li, i64 %i.ll
  %i.ln = load i64, ptr %i.fx, align 8, !tbaa !147
  %i.lo = getelementptr i8, ptr %i.lm, i64 %i.ln  ; 2 uses
  %i.lp = getelementptr inbounds nuw i8, ptr %i.kx, i64 8
  %i.lq = load ptr, ptr %i.lp, align 8, !tbaa !103
  %i.lr = getelementptr inbounds nuw i8, ptr %i.lo, i64 %i.lj
  %i.ls = load ptr, ptr %i.kx, align 8, !tbaa !103 ; 2 uses
  %i.lt = ptrtoint ptr %i.lq to i64
  %i.lu = ptrtoint ptr %i.ls to i64
  %i.lv = sub i64 %i.lt, %i.lu
  %i.lw = getelementptr inbounds i8, ptr %i.ls, i64 %i.lv
  invoke void @_ZNSt6vectorIcSaIcEE15_M_range_insertIPKhEEvN9__gnu_cxx17__normal_iteratorIPcS1_EET_S9_St20forward_iterator_tag(ptr noundef nonnull align 8 dereferenceable(41) %i.kx, ptr %i.lw, ptr noundef %i.lo, ptr noundef %i.lr)
          to label %_ZN5draco13EncoderBuffer6EncodeEPKvm.exit85.2 unwind label %.loopexit.split-lp.loopexit.split-lp

_ZN5draco13EncoderBuffer6EncodeEPKvm.exit85.2:    ; preds = %bb.ah
  %.pre128 = load ptr, ptr %1, align 8, !tbaa !27 ; 4 uses
  %.phi.trans.insert129 = getelementptr inbounds nuw i8, ptr %.pre128, i64 32
  %.pre130 = load i64, ptr %.phi.trans.insert129, align 8, !tbaa !97
  %i.lx = icmp slt i64 %.pre130, 1
  br i1 %i.lx, label %bb.ab, label %_ZN5draco13EncoderBuffer6EncodeEPKvm.exit83

.loopexit.split-lp.loopexit.split-lp:             ; preds = %bb.ad, %bb.af, %bb.ah, %bb.ab, %bb.aa
  %lpad.loopexit.split-lp117 = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %6)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #13
  br label %_ZNSt6vectorIhSaIhEED2Ev.exit90

_ZN5draco13EncoderBuffer6EncodeEPKvm.exit83:      ; preds = %bb.ag, %_ZN5draco13EncoderBuffer6EncodeEPKvm.exit85.2, %bb.ab
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %6)
end_hunk_0
