inline.NumInlined: 1873
inline.NumDeleted: 1202
begin_hunk_0_@_ZN6duckdb7roaring27ContainerMetadataCollection16AddContainerTypeEbb:bb.a
  store ptr %i.u, ptr %i.d, align 8, !tbaa !292
  br label %_ZNSt6vectorIhSaIhEE9push_backERKh.exit

_ZNSt6vectorIhSaIhEE9push_backERKh.exit:          ; preds = %bb.b, %_ZNSt6vectorIhSaIhEE17_M_realloc_insertIJRKhEEEvN9__gnu_cxx17__normal_iteratorIPhS1_EEDpOT_.exit.i
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define void @_ZN6duckdb7roaring34ContainerMetadataCollectionScannerC2ERNS0_27ContainerMetadataCollectionE(ptr nofree noundef nonnull writeonly align 8 captures(none) dereferenceable(32) initializes((0, 32)) %0, ptr noundef nonnull align 8 dereferenceable(96) %1) unnamed_addr #8 align 2 {
bb.a:
  store ptr %1, ptr %0, align 8, !tbaa !297
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.a, i8 0, i64 24, i1 false)
  ret void
}

; Function Attrs: mustprogress uwtable
define range(i32 1, 16712192) i32 @_ZN6duckdb7roaring34ContainerMetadataCollectionScanner7GetNextEv(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(32) %0) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !299, !nonnull !91, !align !92
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.c = load i64, ptr %i.b, align 8, !tbaa !301  ; 2 uses
  %i.d = add i64 %i.c, 1
  store i64 %i.d, ptr %i.b, align 8, !tbaa !301
  %i.e = tail call noundef nonnull align 1 dereferenceable(1) ptr @_ZNK6duckdb6vectorIhLb1ESaIhEEixEm(ptr noundef nonnull align 8 dereferenceable(24) %i.a, i64 noundef %i.c)
  %i.f = load i8, ptr %i.e, align 1, !tbaa !177   ; 2 uses
  %i.g = trunc i8 %i.f to i1
  %i.h = and i8 %i.f, 2
  %.not = icmp eq i8 %i.h, 0
  %i.i = load ptr, ptr %0, align 8, !tbaa !299, !nonnull !91, !align !92 ; 2 uses
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 24
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.l = load i64, ptr %i.k, align 8, !tbaa !302  ; 2 uses
  %i.m = add i64 %i.l, 1
  store i64 %i.m, ptr %i.k, align 8, !tbaa !302
  %i.n = tail call noundef nonnull align 1 dereferenceable(1) ptr @_ZNK6duckdb6vectorIhLb1ESaIhEEixEm(ptr noundef nonnull align 8 dereferenceable(24) %i.j, i64 noundef %i.l)
  %.0 = load i8, ptr %i.n, align 1, !tbaa !177
  %.sroa.3.0.insert.ext.i = zext i8 %.0 to i32
  %.sroa.3.0.insert.shift.i = shl nuw nsw i32 %.sroa.3.0.insert.ext.i, 16
  %.sroa.2.0.insert.insert.i = or disjoint i32 %.sroa.3.0.insert.shift.i, 256
  br label %bb.e

bb.c:                                             ; preds = %bb.a
  %i.o = getelementptr inbounds nuw i8, ptr %i.i, i64 48
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.q = load i64, ptr %i.p, align 8, !tbaa !303  ; 2 uses
  %i.r = add i64 %i.q, 1
  store i64 %i.r, ptr %i.p, align 8, !tbaa !303
  %i.s = tail call noundef nonnull align 1 dereferenceable(1) ptr @_ZNK6duckdb6vectorIhLb1ESaIhEEixEm(ptr noundef nonnull align 8 dereferenceable(24) %i.o, i64 noundef %i.q)
  %.016 = load i8, ptr %i.s, align 1, !tbaa !177  ; 2 uses
  %i.t = icmp eq i8 %.016, -7
  br i1 %i.t, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %.sroa.3.0.insert.ext.i11 = zext i8 %.016 to i32
  %.sroa.3.0.insert.shift.i12 = shl nuw nsw i32 %.sroa.3.0.insert.ext.i11, 16
  %.sroa.2.0.insert.shift.i = select i1 %i.g, i32 256, i32 0
  %.sroa.2.0.insert.insert.i13 = or disjoint i32 %.sroa.3.0.insert.shift.i12, %.sroa.2.0.insert.shift.i
  %.sroa.0.0.insert.insert.i14 = or disjoint i32 %.sroa.2.0.insert.insert.i13, 1
  br label %bb.e

bb.e:                                             ; preds = %bb.c, %bb.d, %bb.b
  %.sroa.0.0 = phi i32 [ %.sroa.2.0.insert.insert.i, %bb.b ], [ %.sroa.0.0.insert.insert.i14, %bb.d ], [ 16318722, %bb.c ]
  ret i32 %.sroa.0.0
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef nonnull align 1 dereferenceable(1) ptr @_ZNK6duckdb6vectorIhLb1ESaIhEEixEm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 4 uses
  %i.b = alloca i64, align 8                      ; 4 uses
  %2 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %3 = alloca %"class.std::allocator", align 1    ; 5 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !291
  %i.e = load ptr, ptr %0, align 8, !tbaa !193    ; 2 uses
  %i.f = ptrtoint ptr %i.d to i64
  %i.g = ptrtoint ptr %i.e to i64
  %i.h = sub i64 %i.f, %i.g                       ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store i64 %1, ptr %i.a, align 8, !tbaa !7
  store i64 %i.h, ptr %i.b, align 8, !tbaa !7
  %.not.i.i = icmp ult i64 %1, %i.h
  br i1 %.not.i.i, label %_ZNK6duckdb6vectorIhLb1ESaIhEE3getILb1EEERKhm.exit, label %bb.b, !prof !296

bb.b:                                             ; preds = %bb.a
  %i.i = tail call ptr @__cxa_allocate_exception(i64 16) #26 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #26
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #26
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull @.str.17, ptr noundef nonnull align 1 dereferenceable(1) %3)
          to label %bb.c unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i

bb.c:                                             ; preds = %bb.b
  invoke void @_ZN6duckdb17InternalExceptionC2IJRmS2_EEERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_(ptr noundef nonnull align 8 dereferenceable(16) %i.i, ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 8 dereferenceable(8) %i.a, ptr noundef nonnull align 8 dereferenceable(8) %i.b)
          to label %bb.d unwind label %bb.e

bb.d:                                             ; preds = %bb.c
  invoke void @__cxa_throw(ptr nonnull %i.i, ptr nonnull @_ZTIN6duckdb17InternalExceptionE, ptr nonnull @_ZNSt13runtime_errorD2Ev) #27
          to label %bb.h unwind label %bb.e

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i: ; preds = %bb.b
  %i.j = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #26
  br label %bb.f

bb.e:                                             ; preds = %bb.d, %bb.c
  %.0.i.i = phi i1 [ false, %bb.d ], [ true, %bb.c ] ; 2 uses
  %i.k = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  %i.l = load ptr, ptr %2, align 8, !tbaa !9      ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.n = icmp eq ptr %i.l, %i.m
  br i1 %i.n, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %bb.e
  call void @_ZdlPv(ptr noundef %i.l) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #26
  br i1 %.0.i.i, label %bb.f, label %bb.g

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i: ; preds = %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #26
  br i1 %.0.i.i, label %bb.f, label %bb.g

bb.f:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i
  %.pn8.i.i = phi { ptr, i32 } [ %i.j, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i ], [ %i.k, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i ], [ %i.k, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i ]
  call void @__cxa_free_exception(ptr %i.i) #26
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i
  %.pn7.i.i = phi { ptr, i32 } [ %i.k, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i ], [ %.pn8.i.i, %bb.f ], [ %i.k, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i ]
  resume { ptr, i32 } %.pn7.i.i

bb.h:                                             ; preds = %bb.d
  unreachable

_ZNK6duckdb6vectorIhLb1ESaIhEE3getILb1EEERKhm.exit: ; preds = %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %i.o = getelementptr inbounds nuw i8, ptr %i.e, i64 %1
  ret ptr %i.o
}

; Function Attrs: mustprogress uwtable
define void @_ZN6duckdb7roaring19RoaringAnalyzeStateC2ERKNS_15CompressionInfoE(ptr noundef nonnull align 8 dereferenceable(208) initializes((0, 24)) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %1) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
.noexc:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load i64, ptr %1, align 8, !tbaa !93
  store i64 %i.b, ptr %i.a, align 8, !tbaa !93
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVN6duckdb7roaring19RoaringAnalyzeStateE, i64 16), ptr %0, align 8, !tbaa !149
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !304)
  %i.d = tail call noalias noundef nonnull dereferenceable(512) ptr @_Znam(i64 noundef 512) #29 ; 25 uses
  store ptr %i.d, ptr %i.c, align 8, !tbaa !307, !alias.scope !304
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %.noexc
  %index = phi i64 [ 0, %.noexc ], [ %index.next, %vector.body ] ; 9 uses
  %vec.ind = phi <8 x i32> [ <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>, %.noexc ], [ %vec.ind.next, %vector.body ] ; 9 uses
  %vec.ind8 = phi <8 x i8> [ <i8 0, i8 1, i8 2, i8 3, i8 4, i8 5, i8 6, i8 7>, %.noexc ], [ %vec.ind.next9, %vector.body ] ; 8 uses
  %i.e = getelementptr inbounds nuw [2 x i8], ptr %i.d, i64 %index ; 3 uses
  %i.f = getelementptr inbounds nuw [2 x i8], ptr %i.d, i64 %index
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 2 ; 2 uses
  %i.h = getelementptr inbounds nuw [2 x i8], ptr %i.d, i64 %index
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 4 ; 2 uses
  %i.j = getelementptr inbounds nuw [2 x i8], ptr %i.d, i64 %index
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 6 ; 2 uses
  %i.l = getelementptr inbounds nuw [2 x i8], ptr %i.d, i64 %index
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 8 ; 2 uses
  %i.n = getelementptr inbounds nuw [2 x i8], ptr %i.d, i64 %index
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 10 ; 2 uses
  %i.p = getelementptr inbounds nuw [2 x i8], ptr %i.d, i64 %index
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 12 ; 2 uses
  %i.r = getelementptr inbounds nuw [2 x i8], ptr %i.d, i64 %index
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 14 ; 2 uses
  %i.t = load i8, ptr %i.e, align 1, !noalias !304
  %i.u = load i8, ptr %i.g, align 1, !noalias !304
  %i.v = load i8, ptr %i.i, align 1, !noalias !304
  %i.w = load i8, ptr %i.k, align 1, !noalias !304
  %i.x = load i8, ptr %i.m, align 1, !noalias !304
  %i.y = load i8, ptr %i.o, align 1, !noalias !304
  %i.z = load i8, ptr %i.q, align 1, !noalias !304
  %i.aa = load i8, ptr %i.s, align 1, !noalias !304
  %i.ab = insertelement <8 x i8> poison, i8 %i.t, i64 0
  %i.ac = insertelement <8 x i8> %i.ab, i8 %i.u, i64 1
  %i.ad = insertelement <8 x i8> %i.ac, i8 %i.v, i64 2
  %i.ae = insertelement <8 x i8> %i.ad, i8 %i.w, i64 3
  %i.af = insertelement <8 x i8> %i.ae, i8 %i.x, i64 4
  %i.ag = insertelement <8 x i8> %i.af, i8 %i.y, i64 5
  %i.ah = insertelement <8 x i8> %i.ag, i8 %i.z, i64 6
  %i.ai = insertelement <8 x i8> %i.ah, i8 %i.aa, i64 7
  %i.aj = and <8 x i8> %i.ai, splat (i8 3)        ; 8 uses
  %i.ak = extractelement <8 x i8> %i.aj, i64 0
  store i8 %i.ak, ptr %i.e, align 1, !noalias !304
  %i.al = extractelement <8 x i8> %i.aj, i64 1
  store i8 %i.al, ptr %i.g, align 1, !noalias !304
  %i.am = extractelement <8 x i8> %i.aj, i64 2
  store i8 %i.am, ptr %i.i, align 1, !noalias !304
  %i.an = extractelement <8 x i8> %i.aj, i64 3
  store i8 %i.an, ptr %i.k, align 1, !noalias !304
  %2 = extractelement <8 x i8> %i.aj, i64 4
  store i8 %2, ptr %i.m, align 1, !noalias !304
  %3 = extractelement <8 x i8> %i.aj, i64 5
  store i8 %3, ptr %i.o, align 1, !noalias !304
  %4 = extractelement <8 x i8> %i.aj, i64 6
  store i8 %4, ptr %i.q, align 1, !noalias !304
  %5 = extractelement <8 x i8> %i.aj, i64 7
  store i8 %5, ptr %i.s, align 1, !noalias !304
  %i.ao = and <8 x i8> %vec.ind8, splat (i8 1)
  %i.ap = shl <8 x i8> %vec.ind8, splat (i8 1)
  %i.aq = and <8 x i8> %i.ap, splat (i8 4)
  %i.ar = and <8 x i32> %vec.ind, splat (i32 3)
  %i.as = icmp eq <8 x i32> %i.ar, splat (i32 1)  ; 3 uses
  %i.at = and <8 x i8> %vec.ind8, splat (i8 4)
  %i.au = and <8 x i32> %vec.ind, splat (i32 6)
  %i.av = icmp eq <8 x i32> %i.au, splat (i32 2)  ; 2 uses
  %i.aw = or <8 x i1> %i.as, %i.av
  %i.ax = lshr <8 x i8> %vec.ind8, splat (i8 1)
  %i.ay = and <8 x i8> %i.ax, splat (i8 4)
  %i.az = and <8 x i32> %vec.ind, splat (i32 12)
  %i.ba = icmp eq <8 x i32> %i.az, splat (i32 4)  ; 2 uses
  %i.bb = or <8 x i1> %i.ba, %i.aw
  %i.bc = lshr <8 x i8> %vec.ind8, splat (i8 2)
  %i.bd = and <8 x i8> %i.bc, splat (i8 4)
  %i.be = and <8 x i32> %vec.ind, splat (i32 24)
  %i.bf = icmp eq <8 x i32> %i.be, splat (i32 8)  ; 2 uses
  %i.bg = or <8 x i1> %i.bf, %i.bb
  %i.bh = lshr <8 x i8> %vec.ind8, splat (i8 3)
  %i.bi = and <8 x i8> %i.bh, splat (i8 4)
  %i.bj = and <8 x i32> %vec.ind, splat (i32 48)
  %i.bk = icmp eq <8 x i32> %i.bj, splat (i32 16) ; 2 uses
  %i.bl = or <8 x i1> %i.bk, %i.bg
  %i.bm = lshr <8 x i8> %vec.ind8, splat (i8 4)
  %i.bn = and <8 x i8> %i.bm, splat (i8 4)
  %i.bo = add nuw nsw <8 x i8> %i.at, <i8 0, i8 4, i8 0, i8 4, i8 0, i8 4, i8 0, i8 4>
  %i.bp = or disjoint <8 x i8> %i.bo, %i.ao
  %i.bq = add nuw nsw <8 x i8> %i.bp, %i.aq
  %i.br = add nuw nsw <8 x i8> %i.bq, %i.ay
  %i.bs = add nuw nsw <8 x i8> %i.br, %i.bd
  %i.bt = add nuw nsw <8 x i8> %i.bs, %i.bi
  %i.bu = add nuw nsw <8 x i8> %i.bt, %i.bn
  %i.bv = and <8 x i32> %vec.ind, splat (i32 96)
  %i.bw = icmp eq <8 x i32> %i.bv, splat (i32 32) ; 2 uses
  %i.bx = or <8 x i1> %i.bw, %i.bl
  %i.by = and <8 x i32> %vec.ind, splat (i32 128)
  %i.bz = icmp eq <8 x i32> %i.by, zeroinitializer
  %i.ca = and <8 x i8> %i.bu, splat (i8 -3)
  %i.cb = select <8 x i1> %i.bz, <8 x i8> zeroinitializer, <8 x i8> splat (i8 6)
  %i.cc = add nuw nsw <8 x i8> %i.cb, %i.ca
  %i.cd = and <8 x i32> %vec.ind, splat (i32 192)
  %i.ce = icmp eq <8 x i32> %i.cd, splat (i32 64) ; 2 uses
  %i.cf = or <8 x i1> %i.ce, %i.bx
  %i.cg = select <8 x i1> %i.as, <8 x i8> splat (i8 2), <8 x i8> splat (i8 1)
  %i.ch = zext <8 x i1> %i.as to <8 x i8>
  %i.ci = select <8 x i1> %i.av, <8 x i8> %i.cg, <8 x i8> %i.ch
  %i.cj = zext <8 x i1> %i.ba to <8 x i8>
  %i.ck = zext <8 x i1> %i.bf to <8 x i8>
  %i.cl = zext <8 x i1> %i.bk to <8 x i8>
  %i.cm = zext <8 x i1> %i.bw to <8 x i8>
  %i.cn = zext <8 x i1> %i.ce to <8 x i8>
  %i.co = add nuw nsw <8 x i8> %i.ck, %i.cj
  %i.cp = add nuw nsw <8 x i8> %i.co, %i.cl
  %i.cq = add nuw nsw <8 x i8> %i.cp, %i.cm
  %i.cr = add nuw nsw <8 x i8> %i.cq, %i.cn
  %i.cs = add nuw nsw <8 x i8> %i.cr, %i.ci
  %predphi = select <8 x i1> %i.cf, <8 x i8> %i.cs, <8 x i8> zeroinitializer
  %interleaved.vec = shufflevector <8 x i8> %i.cc, <8 x i8> %predphi, <16 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11, i32 4, i32 12, i32 5, i32 13, i32 6, i32 14, i32 7, i32 15>
  store <16 x i8> %interleaved.vec, ptr %i.e, align 1, !noalias !304
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %vec.ind.next = add <8 x i32> %vec.ind, splat (i32 8)
  %vec.ind.next9 = add <8 x i8> %vec.ind8, splat (i8 8)
  %i.ct = icmp eq i64 %index.next, 248
  br i1 %i.ct, label %scalar.ph, label %vector.body, !llvm.loop !308

scalar.ph:                                        ; preds = %vector.body
  %i.cu = getelementptr inbounds nuw i8, ptr %i.d, i64 496 ; 3 uses
  %i.cv = load i8, ptr %i.cu, align 1, !noalias !304
  %i.cw = and i8 %i.cv, 3
  store i8 %i.cw, ptr %i.cu, align 1, !noalias !304
  %i.cx = getelementptr inbounds nuw i8, ptr %i.d, i64 497
  store i8 0, ptr %i.cx, align 1, !tbaa !309, !noalias !304
  store i8 22, ptr %i.cu, align 1, !noalias !304
  %i.cy = getelementptr inbounds nuw i8, ptr %i.d, i64 498 ; 3 uses
  %i.cz = load i8, ptr %i.cy, align 1, !noalias !304
  %i.da = and i8 %i.cz, 3
  store i8 %i.da, ptr %i.cy, align 1, !noalias !304
  %i.db = getelementptr inbounds nuw i8, ptr %i.d, i64 499
  store i8 1, ptr %i.db, align 1, !tbaa !309, !noalias !304
  store i8 27, ptr %i.cy, align 1, !noalias !304
  %i.dc = getelementptr inbounds nuw i8, ptr %i.d, i64 500 ; 3 uses
  %i.dd = load i8, ptr %i.dc, align 1, !noalias !304
  %i.de = and i8 %i.dd, 3
  store i8 %i.de, ptr %i.dc, align 1, !noalias !304
  %i.df = getelementptr inbounds nuw i8, ptr %i.d, i64 501
  store i8 1, ptr %i.df, align 1, !tbaa !309, !noalias !304
  store i8 26, ptr %i.dc, align 1, !noalias !304
  %i.dg = getelementptr inbounds nuw i8, ptr %i.d, i64 502 ; 3 uses
  %i.dh = load i8, ptr %i.dg, align 1, !noalias !304
  %i.di = and i8 %i.dh, 3
  store i8 %i.di, ptr %i.dg, align 1, !noalias !304
  %i.dj = getelementptr inbounds nuw i8, ptr %i.d, i64 503
  store i8 1, ptr %i.dj, align 1, !tbaa !309, !noalias !304
  store i8 31, ptr %i.dg, align 1, !noalias !304
  %i.dk = getelementptr inbounds nuw i8, ptr %i.d, i64 504 ; 3 uses
  %i.dl = load i8, ptr %i.dk, align 1, !noalias !304
  %i.dm = and i8 %i.dl, 3
  store i8 %i.dm, ptr %i.dk, align 1, !noalias !304
  %i.dn = getelementptr inbounds nuw i8, ptr %i.d, i64 505
  store i8 0, ptr %i.dn, align 1, !tbaa !309, !noalias !304
  store i8 26, ptr %i.dk, align 1, !noalias !304
  %i.do = getelementptr inbounds nuw i8, ptr %i.d, i64 506 ; 3 uses
  %i.dp = load i8, ptr %i.do, align 1, !noalias !304
  %i.dq = and i8 %i.dp, 3
  store i8 %i.dq, ptr %i.do, align 1, !noalias !304
  %i.dr = getelementptr inbounds nuw i8, ptr %i.d, i64 507
  store i8 1, ptr %i.dr, align 1, !tbaa !309, !noalias !304
  store i8 31, ptr %i.do, align 1, !noalias !304
  %i.ds = getelementptr inbounds nuw i8, ptr %i.d, i64 508 ; 3 uses
  %i.dt = load i8, ptr %i.ds, align 1, !noalias !304
  %i.du = and i8 %i.dt, 3
  store i8 %i.du, ptr %i.ds, align 1, !noalias !304
  %i.dv = getelementptr inbounds nuw i8, ptr %i.d, i64 509
  store i8 0, ptr %i.dv, align 1, !tbaa !309, !noalias !304
  store i8 30, ptr %i.ds, align 1, !noalias !304
  %i.dw = getelementptr inbounds nuw i8, ptr %i.d, i64 510 ; 3 uses
  %i.dx = load i8, ptr %i.dw, align 1, !noalias !304
  %i.dy = and i8 %i.dx, 3
  store i8 %i.dy, ptr %i.dw, align 1, !noalias !304
  %i.dz = getelementptr inbounds nuw i8, ptr %i.d, i64 511
  store i8 0, ptr %i.dz, align 1, !tbaa !309, !noalias !304
  store i8 35, ptr %i.dw, align 1, !noalias !304
  %i.ea = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i16 0, ptr %i.ea, align 8, !tbaa !128
  %i.eb = getelementptr inbounds nuw i8, ptr %0, i64 26
  store i16 0, ptr %i.eb, align 2, !tbaa !127
  %i.ec = getelementptr inbounds nuw i8, ptr %0, i64 28
  store i16 0, ptr %i.ec, align 4, !tbaa !129
  %i.ed = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i16 0, ptr %i.ed, align 8, !tbaa !126
  %i.ee = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.ef = getelementptr inbounds nuw i8, ptr %0, i64 88
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.ee, i8 0, i64 48, i1 false)
  invoke void @_ZN6duckdb7roaring27ContainerMetadataCollectionC1Ev(ptr noundef nonnull align 8 dereferenceable(96) %i.ef)
          to label %bb.a unwind label %bb.b

bb.a:                                             ; preds = %scalar.ph
  %i.eg = getelementptr inbounds nuw i8, ptr %0, i64 184
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.eg, i8 0, i64 24, i1 false)
  ret void

bb.b:                                             ; preds = %scalar.ph
  %i.eh = landingpad { ptr, i32 }
          cleanup
  %i.ei = load ptr, ptr %i.c, align 8, !tbaa !307 ; 2 uses
  %.not.i5 = icmp eq ptr %i.ei, null
  br i1 %.not.i5, label %_ZNSt10unique_ptrIA_N6duckdb7roaring17BitmaskTableEntryESt14default_deleteIS3_EED2Ev.exit, label %_ZNKSt14default_deleteIA_N6duckdb7roaring17BitmaskTableEntryEEclIS2_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS3_EE5valueEvE4typeEPS7_.exit.i

_ZNKSt14default_deleteIA_N6duckdb7roaring17BitmaskTableEntryEEclIS2_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS3_EE5valueEvE4typeEPS7_.exit.i: ; preds = %bb.b
  tail call void @_ZdaPv(ptr noundef nonnull %i.ei) #28
  br label %_ZNSt10unique_ptrIA_N6duckdb7roaring17BitmaskTableEntryESt14default_deleteIS3_EED2Ev.exit

_ZNSt10unique_ptrIA_N6duckdb7roaring17BitmaskTableEntryESt14default_deleteIS3_EED2Ev.exit: ; preds = %_ZNKSt14default_deleteIA_N6duckdb7roaring17BitmaskTableEntryEEclIS2_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS3_EE5valueEvE4typeEPS7_.exit.i, %bb.b
  resume { ptr, i32 } %i.eh
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define void @_ZN6duckdb7roaring19RoaringAnalyzeState10HandleByteERS1_h(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(208) %0, i8 noundef zeroext %1) local_unnamed_addr #12 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = zext i8 %1 to i64
  %i.c = load ptr, ptr %i.a, align 8, !tbaa !307
  %i.d = getelementptr inbounds nuw [2 x i8], ptr %i.c, i64 %i.b ; 2 uses
  %.sroa.0.0.copyload = load i8, ptr %i.d, align 1, !tbaa !177 ; 3 uses
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 1
  %.sroa.7.0.copyload = load i8, ptr %.sroa.7.0..sroa_idx, align 1, !tbaa !177
  %i.e = and i8 %.sroa.0.0.copyload, 1
  %i.f = icmp eq i8 %i.e, 0
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.h = load i16, ptr %i.g, align 8, !tbaa !126  ; 3 uses
  br i1 %i.f, label %bb.b, label %._crit_edge

bb.b:                                             ; preds = %bb.a
  %.not = icmp eq i16 %i.h, 0
  br i1 %.not, label %._crit_edge, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 30
  %i.j = load i8, ptr %i.i, align 2, !tbaa !311, !range !312, !noundef !91
  %i.k = zext nneg i8 %i.j to i16
  br label %._crit_edge

._crit_edge:                                      ; preds = %bb.a, %bb.b, %bb.c
  %i.l = phi i16 [ %i.h, %bb.c ], [ 0, %bb.b ], [ %i.h, %bb.a ]
  %i.m = phi i16 [ %i.k, %bb.c ], [ 1, %bb.b ], [ 0, %bb.a ]
  %i.n = zext i8 %.sroa.7.0.copyload to i16
  %i.o = add nuw nsw i16 %i.m, %i.n
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 28 ; 2 uses
  %i.q = load i16, ptr %i.p, align 4, !tbaa !129
  %i.r = add i16 %i.o, %i.q
  store i16 %i.r, ptr %i.p, align 4, !tbaa !129
  %i.s = lshr i8 %.sroa.0.0.copyload, 2
  %i.t = zext nneg i8 %i.s to i16                 ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.v = load i16, ptr %i.u, align 8, !tbaa !128
  %i.w = add i16 %i.v, %i.t
  store i16 %i.w, ptr %i.u, align 8, !tbaa !128
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 26 ; 2 uses
end_hunk_0
