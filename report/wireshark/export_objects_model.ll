Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/wireshark/original/export_objects_model?download=true
inline.NumInlined: 488
inline.NumDeleted: 251
loop-unroll.NumRuntimeUnrolled: 4
loop-unroll.NumUnrolled: 4
begin_hunk_0_@_ZNK22ExportObjectProxyModel8lessThanERK11QModelIndexS2_:bb.a
  br label %bb.j

bb.h:                                             ; preds = %bb.d
  %i.t = getelementptr i8, ptr %i.e, i64 32
  %i.u = load i64, ptr %i.t, align 8
  %i.v = getelementptr i8, ptr %i.j, i64 32
  %i.w = load i64, ptr %i.v, align 8
  %i.x = icmp ult i64 %i.u, %i.w
  br label %bb.j

bb.i:                                             ; preds = %bb.d, %bb.c
  %i.y = call noundef zeroext i1 @_ZNK21QSortFilterProxyModel8lessThanERK11QModelIndexS2_(ptr noundef align 8 dereferenceable_or_null(16) %0, ptr noundef align 8 dereferenceable(24) %1, ptr noundef align 8 dereferenceable(24) %2)
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h, %bb.g
  %.016 = phi i1 [ %i.y, %bb.i ], [ %i.s, %bb.g ], [ %i.x, %bb.h ]
  ret i1 %.016

bb.k:                                             ; preds = %bb.f, %bb.e
  %.sink = phi ptr [ %4, %bb.f ], [ %3, %bb.e ]
  %.pn = phi { ptr, i32 } [ %i.p, %bb.f ], [ %i.o, %bb.e ]
  call void @_ZN8QVariantD1Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable_or_null(32) %.sink) #26
  resume { ptr, i32 } %.pn
}

; Function Attrs: null_pointer_is_valid
declare noundef ptr @_ZNK19QAbstractProxyModel11sourceModelEv(ptr noundef align 8 dereferenceable_or_null(16)) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare noundef zeroext i1 @_ZNK21QSortFilterProxyModel8lessThanERK11QModelIndexS2_(ptr noundef align 8 dereferenceable_or_null(16), ptr noundef align 8 dereferenceable(24), ptr noundef align 8 dereferenceable(24)) unnamed_addr #3

; Function Attrs: mustprogress null_pointer_is_valid sspstrong uwtable
define void @_ZN22ExportObjectProxyModel22setContentFilterStringE7QString(ptr noundef align 8 dereferenceable_or_null(65) %0, ptr noundef align 8 %1) local_unnamed_addr #2 align 2 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 16
  %i.b = tail call noundef align 8 dereferenceable(24) ptr @_ZN7QStringaSERKS_(ptr noundef align 8 dereferenceable_or_null(24) %i.a, ptr noundef align 8 dereferenceable(24) %1) #26 ; 0 uses
  tail call void @_ZN21QSortFilterProxyModel16invalidateFilterEv(ptr noundef align 8 dereferenceable_or_null(16) %0)
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid
declare noundef align 8 dereferenceable(24) ptr @_ZN7QStringaSERKS_(ptr noundef align 8 dereferenceable_or_null(24), ptr noundef align 8 dereferenceable(24)) local_unnamed_addr #8

; Function Attrs: null_pointer_is_valid
declare void @_ZN21QSortFilterProxyModel16invalidateFilterEv(ptr noundef align 8 dereferenceable_or_null(16)) local_unnamed_addr #3

; Function Attrs: mustprogress null_pointer_is_valid sspstrong uwtable
define void @_ZN22ExportObjectProxyModel19setTextFilterStringE7QString(ptr noundef align 8 dereferenceable_or_null(65) %0, ptr noundef align 8 %1) local_unnamed_addr #2 align 2 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 40
  %i.b = tail call noundef align 8 dereferenceable(24) ptr @_ZN7QStringaSERKS_(ptr noundef align 8 dereferenceable_or_null(24) %i.a, ptr noundef align 8 dereferenceable(24) %1) #26 ; 0 uses
  tail call void @_ZN21QSortFilterProxyModel16invalidateFilterEv(ptr noundef align 8 dereferenceable_or_null(16) %0)
  ret void
}

; Function Attrs: mustprogress null_pointer_is_valid sspstrong uwtable
define void @_ZN22ExportObjectProxyModel15setUniqueFilterEb(ptr noundef align 8 dereferenceable_or_null(65) initializes((64, 65)) %0, i1 noundef zeroext %1) local_unnamed_addr #2 align 2 {
bb.a:
  %i.a = zext i1 %1 to i8
  %i.b = getelementptr i8, ptr %0, i64 64
  store i8 %i.a, ptr %i.b, align 8
  tail call void @_ZN21QSortFilterProxyModel16invalidateFilterEv(ptr noundef align 8 dereferenceable_or_null(16) %0)
  ret void
}

; Function Attrs: mustprogress null_pointer_is_valid sspstrong uwtable
define noundef zeroext i1 @_ZNK22ExportObjectProxyModel16filterAcceptsRowEiRK11QModelIndex(ptr noundef align 8 dereferenceable_or_null(65) %0, i32 noundef %1, ptr nofree readnone align 8 captures(none) %2) unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %class.QModelIndex, align 8         ; 9 uses
  %4 = alloca %class.QModelIndex, align 8         ; 6 uses
  %5 = alloca %class.QString, align 8             ; 7 uses
  %6 = alloca %class.QVariant, align 8            ; 7 uses
  %7 = alloca %class.QModelIndex, align 8         ; 8 uses
  %8 = alloca %class.QModelIndex, align 8         ; 6 uses
  %9 = alloca %class.QModelIndex, align 8         ; 8 uses
  %10 = alloca %class.QModelIndex, align 8        ; 6 uses
  %11 = alloca %class.QString, align 8            ; 9 uses
  %12 = alloca %class.QVariant, align 8           ; 7 uses
  %13 = alloca %class.QString, align 8            ; 9 uses
  %14 = alloca %class.QVariant, align 8           ; 9 uses
  %15 = alloca %class.QModelIndex, align 8        ; 5 uses
  %16 = alloca %class.QModelIndex, align 8        ; 6 uses
  %17 = alloca %class.QVariant, align 8           ; 7 uses
  %i.a = getelementptr i8, ptr %0, i64 16
  %i.b = getelementptr i8, ptr %0, i64 32
  %i.c = load i64, ptr %i.b, align 8
  %i.d = icmp sgt i64 %i.c, 0
  br i1 %i.d, label %bb.b, label %bb.g

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #26
  %i.e = tail call noundef ptr @_ZNK19QAbstractProxyModel11sourceModelEv(ptr noundef align 8 dereferenceable_or_null(16) %0) ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #26
  store i32 -1, ptr %4, align 8
  %i.f = getelementptr inbounds nuw i8, ptr %4, i64 4
  store i32 -1, ptr %i.f, align 4
  %i.g = getelementptr inbounds nuw i8, ptr %4, i64 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.g, i8 0, i64 16, i1 false)
  %i.h = load ptr, ptr %i.e, align 8
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 96
  %i.j = load ptr, ptr %i.i, align 8
  call void %i.j(ptr dead_on_unwind nonnull writable sret(%class.QModelIndex) align 8 %3, ptr noundef align 8 dereferenceable_or_null(16) %i.e, i32 noundef %1, i32 noundef 2, ptr noundef nonnull align 8 dereferenceable(24) %4)
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #26
  %i.k = load i32, ptr %3, align 8
  %i.l = icmp sgt i32 %i.k, -1
  %i.m = getelementptr inbounds nuw i8, ptr %3, i64 4
  %i.n = load i32, ptr %i.m, align 4
  %i.o = icmp sgt i32 %i.n, -1
  %or.cond = select i1 %i.l, i1 %i.o, i1 false
  %i.p = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.q = load ptr, ptr %i.p, align 8              ; 3 uses
  %i.r = icmp ne ptr %i.q, null
  %or.cond61 = select i1 %or.cond, i1 %i.r, i1 false
  br i1 %or.cond61, label %_ZNK11QModelIndex4dataEi.exit, label %.thread

_ZNK11QModelIndex4dataEi.exit:                    ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #26
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #26
  %i.s = load ptr, ptr %i.q, align 8, !noalias !82
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 144
  %i.u = load ptr, ptr %i.t, align 8, !noalias !82
  call void %i.u(ptr dead_on_unwind nonnull writable sret(%class.QVariant) align 8 %6, ptr noundef nonnull align 8 dereferenceable_or_null(16) %i.q, ptr noundef nonnull align 8 dereferenceable(24) dereferenceable_or_null(24) %3, i32 noundef 0), !inline_history !1
  invoke void @_ZNK8QVariant8toStringEv(ptr dead_on_unwind nonnull writable sret(%class.QString) align 8 %5, ptr noundef nonnull align 8 dereferenceable_or_null(32) %6)
          to label %bb.c unwind label %bb.e

bb.c:                                             ; preds = %_ZNK11QModelIndex4dataEi.exit
  %i.v = call noundef i32 @_ZNK7QString7compareERKS_N2Qt15CaseSensitivityE(ptr noundef align 8 dereferenceable_or_null(24) %i.a, ptr noundef nonnull align 8 dereferenceable(24) %5, i32 noundef 1) #26
  %.not = icmp eq i32 %i.v, 0
  %i.w = load ptr, ptr %5, align 8                ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.w, null
  br i1 %.not.i.i.i, label %_ZN7QStringD2Ev.exit, label %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i

_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i:      ; preds = %bb.c
  %i.x = atomicrmw add ptr %i.w, i32 -1 acq_rel, align 4
  %.not.i.i = icmp eq i32 %i.x, 1
  br i1 %.not.i.i, label %bb.d, label %_ZN7QStringD2Ev.exit

bb.d:                                             ; preds = %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i
  %i.y = load ptr, ptr %5, align 8
  call void @_ZN10QArrayData10deallocateEPS_xx(ptr noundef %i.y, i64 noundef 2, i64 noundef 8) #26
  br label %_ZN7QStringD2Ev.exit

_ZN7QStringD2Ev.exit:                             ; preds = %bb.c, %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i, %bb.d
  call void @_ZN8QVariantD1Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable_or_null(32) %6) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #26
  br i1 %.not, label %bb.f, label %.thread

bb.e:                                             ; preds = %_ZNK11QModelIndex4dataEi.exit
  %i.z = landingpad { ptr, i32 }
          cleanup
  call void @_ZN8QVariantD1Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable_or_null(32) %6) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #26
  br label %bb.ah

.thread:                                          ; preds = %_ZN7QStringD2Ev.exit, %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #26
  br label %bb.ag

bb.f:                                             ; preds = %_ZN7QStringD2Ev.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #26
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.a
  %i.aa = getelementptr i8, ptr %0, i64 40        ; 2 uses
  %i.ab = getelementptr i8, ptr %0, i64 56
  %i.ac = load i64, ptr %i.ab, align 8
  %i.ad = icmp sgt i64 %i.ac, 0
  br i1 %i.ad, label %bb.h, label %bb.ab

bb.h:                                             ; preds = %bb.g
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #26
  %i.ae = call noundef ptr @_ZNK19QAbstractProxyModel11sourceModelEv(ptr noundef align 8 dereferenceable_or_null(16) %0) ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #26
  store i32 -1, ptr %8, align 8
  %i.af = getelementptr inbounds nuw i8, ptr %8, i64 4
  store i32 -1, ptr %i.af, align 4
  %i.ag = getelementptr inbounds nuw i8, ptr %8, i64 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ag, i8 0, i64 16, i1 false)
  %i.ah = load ptr, ptr %i.ae, align 8
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 96
  %i.aj = load ptr, ptr %i.ai, align 8
  call void %i.aj(ptr dead_on_unwind nonnull writable sret(%class.QModelIndex) align 8 %7, ptr noundef align 8 dereferenceable_or_null(16) %i.ae, i32 noundef %1, i32 noundef 1, ptr noundef nonnull align 8 dereferenceable(24) %8)
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #26
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #26
  %i.ak = call noundef ptr @_ZNK19QAbstractProxyModel11sourceModelEv(ptr noundef align 8 dereferenceable_or_null(16) %0) ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #26
  store i32 -1, ptr %10, align 8
  %i.al = getelementptr inbounds nuw i8, ptr %10, i64 4
  store i32 -1, ptr %i.al, align 4
  %i.am = getelementptr inbounds nuw i8, ptr %10, i64 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.am, i8 0, i64 16, i1 false)
  %i.an = load ptr, ptr %i.ak, align 8
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 96
  %i.ap = load ptr, ptr %i.ao, align 8
  call void %i.ap(ptr dead_on_unwind nonnull writable sret(%class.QModelIndex) align 8 %9, ptr noundef align 8 dereferenceable_or_null(16) %i.ak, i32 noundef %1, i32 noundef 4, ptr noundef nonnull align 8 dereferenceable(24) %10)
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #26
  %i.aq = getelementptr inbounds nuw i8, ptr %7, i64 16
  %i.ar = load ptr, ptr %i.aq, align 8            ; 3 uses
  %i.as = icmp ne ptr %i.ar, null
  %i.at = load <2 x i32>, ptr %7, align 8
  %i.au = load <2 x i32>, ptr %9, align 8
  %i.av = shufflevector <2 x i32> %i.at, <2 x i32> %i.au, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %.fr = freeze <4 x i32> %i.av
  %i.aw = getelementptr inbounds nuw i8, ptr %9, i64 16 ; 2 uses
  %i.ax = load ptr, ptr %i.aw, align 8
  %i.ay = icmp ne ptr %i.ax, null
  %i.az = icmp slt <4 x i32> %.fr, zeroinitializer
  %i.ba = bitcast <4 x i1> %i.az to i4
  %i.bb = icmp eq i4 %i.ba, 0
  %op.rdx = select i1 %i.bb, i1 %i.as, i1 false
  %op.rdx85 = select i1 %op.rdx, i1 %i.ay, i1 false
  br i1 %op.rdx85, label %_ZNK11QModelIndex4dataEi.exit31, label %.thread55

_ZNK11QModelIndex4dataEi.exit31:                  ; preds = %bb.h
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #26
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #26
  %i.bc = load ptr, ptr %i.ar, align 8, !noalias !83
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bc, i64 144
  %i.be = load ptr, ptr %i.bd, align 8, !noalias !83
  call void %i.be(ptr dead_on_unwind nonnull writable sret(%class.QVariant) align 8 %12, ptr noundef nonnull align 8 dereferenceable_or_null(16) %i.ar, ptr noundef nonnull align 8 dereferenceable(24) dereferenceable_or_null(24) %7, i32 noundef 0), !inline_history !1
  invoke void @_ZNK8QVariant8toStringEv(ptr dead_on_unwind nonnull writable sret(%class.QString) align 8 %11, ptr noundef nonnull align 8 dereferenceable_or_null(32) %12)
          to label %bb.i unwind label %bb.p

bb.i:                                             ; preds = %_ZNK11QModelIndex4dataEi.exit31
  call void @_ZN8QVariantD1Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable_or_null(32) %12) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #26
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #26
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #26
  call void @llvm.experimental.noalias.scope.decl(metadata !84)
  %i.bf = load ptr, ptr %i.aw, align 8, !noalias !84 ; 3 uses
  %.not.i32 = icmp eq ptr %i.bf, null
  br i1 %.not.i32, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.bg = load ptr, ptr %i.bf, align 8, !noalias !84
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bg, i64 144
  %i.bi = load ptr, ptr %i.bh, align 8, !noalias !84
  invoke void %i.bi(ptr dead_on_unwind nonnull writable sret(%class.QVariant) align 8 %14, ptr noundef nonnull align 8 dereferenceable_or_null(16) %i.bf, ptr noundef nonnull align 8 dereferenceable(24) dereferenceable_or_null(24) %9, i32 noundef 0)
          to label %_ZNK11QModelIndex4dataEi.exit33 unwind label %bb.q, !inline_history !1

bb.k:                                             ; preds = %bb.i
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %14, i8 0, i64 24, i1 false), !alias.scope !84
  %i.bj = getelementptr inbounds nuw i8, ptr %14, i64 24
  store i64 2, ptr %i.bj, align 8, !alias.scope !84
  br label %_ZNK11QModelIndex4dataEi.exit33

_ZNK11QModelIndex4dataEi.exit33:                  ; preds = %bb.k, %bb.j
  invoke void @_ZNK8QVariant8toStringEv(ptr dead_on_unwind nonnull writable sret(%class.QString) align 8 %13, ptr noundef nonnull align 8 dereferenceable_or_null(32) %14)
          to label %bb.l unwind label %bb.r

bb.l:                                             ; preds = %_ZNK11QModelIndex4dataEi.exit33
  call void @_ZN8QVariantD1Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable_or_null(32) %14) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #26
  %i.bk = invoke noundef i64 @_ZNK7QString7indexOfERKS_xN2Qt15CaseSensitivityE(ptr noundef nonnull align 8 dereferenceable_or_null(24) %11, ptr noundef align 8 dereferenceable(24) %i.aa, i64 noundef 0, i32 noundef 1)
          to label %bb.m unwind label %bb.t

bb.m:                                             ; preds = %bb.l
  %.not76 = icmp eq i64 %i.bk, -1
  br i1 %.not76, label %bb.n, label %bb.v

bb.n:                                             ; preds = %bb.m
  %i.bl = invoke noundef i64 @_ZNK7QString7indexOfERKS_xN2Qt15CaseSensitivityE(ptr noundef nonnull align 8 dereferenceable_or_null(24) %13, ptr noundef align 8 dereferenceable(24) %i.aa, i64 noundef 0, i32 noundef 1)
          to label %bb.o unwind label %bb.t

bb.o:                                             ; preds = %bb.n
  %.not77 = icmp eq i64 %i.bl, -1
  br i1 %.not77, label %bb.w, label %bb.v

bb.p:                                             ; preds = %_ZNK11QModelIndex4dataEi.exit31
  %i.bm = landingpad { ptr, i32 }
          cleanup
  call void @_ZN8QVariantD1Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable_or_null(32) %12) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #26
  br label %_ZN7QStringD2Ev.exit52

bb.q:                                             ; preds = %bb.j
  %i.bn = landingpad { ptr, i32 }
          cleanup
  br label %bb.s

bb.r:                                             ; preds = %_ZNK11QModelIndex4dataEi.exit33
  %i.bo = landingpad { ptr, i32 }
          cleanup
  call void @_ZN8QVariantD1Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable_or_null(32) %14) #26
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %bb.q
  %.pn = phi { ptr, i32 } [ %i.bo, %bb.r ], [ %i.bn, %bb.q ]
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #26
  br label %_ZN7QStringD2Ev.exit40

bb.t:                                             ; preds = %bb.n, %bb.l
  %i.bp = landingpad { ptr, i32 }
          cleanup                                 ; 3 uses
  %i.bq = load ptr, ptr %13, align 8              ; 2 uses
  %.not.i.i.i37 = icmp eq ptr %i.bq, null
  br i1 %.not.i.i.i37, label %_ZN7QStringD2Ev.exit40, label %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i38

_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i38:    ; preds = %bb.t
  %i.br = atomicrmw add ptr %i.bq, i32 -1 acq_rel, align 4
  %.not.i.i39 = icmp eq i32 %i.br, 1
  br i1 %.not.i.i39, label %bb.u, label %_ZN7QStringD2Ev.exit40

bb.u:                                             ; preds = %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i38
  %i.bs = load ptr, ptr %13, align 8
  call void @_ZN10QArrayData10deallocateEPS_xx(ptr noundef %i.bs, i64 noundef 2, i64 noundef 8) #26
  br label %_ZN7QStringD2Ev.exit40

bb.v:                                             ; preds = %bb.o, %bb.m
  br label %bb.w

bb.w:                                             ; preds = %bb.o, %bb.v
  %i.bt = phi i1 [ true, %bb.v ], [ false, %bb.o ]
  %i.bu = load ptr, ptr %13, align 8              ; 2 uses
  %.not.i.i.i41 = icmp eq ptr %i.bu, null
  br i1 %.not.i.i.i41, label %_ZN7QStringD2Ev.exit44, label %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i42

_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i42:    ; preds = %bb.w
  %i.bv = atomicrmw add ptr %i.bu, i32 -1 acq_rel, align 4
  %.not.i.i43 = icmp eq i32 %i.bv, 1
  br i1 %.not.i.i43, label %bb.x, label %_ZN7QStringD2Ev.exit44

bb.x:                                             ; preds = %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i42
  %i.bw = load ptr, ptr %13, align 8
  call void @_ZN10QArrayData10deallocateEPS_xx(ptr noundef %i.bw, i64 noundef 2, i64 noundef 8) #26
  br label %_ZN7QStringD2Ev.exit44

_ZN7QStringD2Ev.exit44:                           ; preds = %bb.w, %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i42, %bb.x
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #26
  %i.bx = load ptr, ptr %11, align 8              ; 2 uses
  %.not.i.i.i45 = icmp eq ptr %i.bx, null
  br i1 %.not.i.i.i45, label %bb.z, label %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i46

_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i46:    ; preds = %_ZN7QStringD2Ev.exit44
  %i.by = atomicrmw add ptr %i.bx, i32 -1 acq_rel, align 4
  %.not.i.i47 = icmp eq i32 %i.by, 1
  br i1 %.not.i.i47, label %bb.y, label %bb.z

bb.y:                                             ; preds = %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i46
  %i.bz = load ptr, ptr %11, align 8
  call void @_ZN10QArrayData10deallocateEPS_xx(ptr noundef %i.bz, i64 noundef 2, i64 noundef 8) #26
  br label %bb.z

.thread55:                                        ; preds = %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #26
  br label %bb.ag

bb.z:                                             ; preds = %bb.y, %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i46, %_ZN7QStringD2Ev.exit44
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #26
  br i1 %i.bt, label %bb.ab, label %bb.ag

_ZN7QStringD2Ev.exit40:                           ; preds = %bb.u, %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i38, %bb.t, %bb.s
  %.pn23 = phi { ptr, i32 } [ %.pn, %bb.s ], [ %i.bp, %bb.t ], [ %i.bp, %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i38 ], [ %i.bp, %bb.u ] ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #26
  %i.ca = load ptr, ptr %11, align 8              ; 2 uses
  %.not.i.i.i49 = icmp eq ptr %i.ca, null
  br i1 %.not.i.i.i49, label %_ZN7QStringD2Ev.exit52, label %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i50

_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i50:    ; preds = %_ZN7QStringD2Ev.exit40
  %i.cb = atomicrmw add ptr %i.ca, i32 -1 acq_rel, align 4
  %.not.i.i51 = icmp eq i32 %i.cb, 1
  br i1 %.not.i.i51, label %bb.aa, label %_ZN7QStringD2Ev.exit52

bb.aa:                                            ; preds = %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i50
  %i.cc = load ptr, ptr %11, align 8
  call void @_ZN10QArrayData10deallocateEPS_xx(ptr noundef %i.cc, i64 noundef 2, i64 noundef 8) #26
  br label %_ZN7QStringD2Ev.exit52

_ZN7QStringD2Ev.exit52:                           ; preds = %bb.aa, %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i50, %_ZN7QStringD2Ev.exit40, %bb.p
  %.pn23.pn = phi { ptr, i32 } [ %i.bm, %bb.p ], [ %.pn23, %_ZN7QStringD2Ev.exit40 ], [ %.pn23, %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i50 ], [ %.pn23, %bb.aa ]
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #26
  br label %bb.ah

bb.ab:                                            ; preds = %bb.z, %bb.g
  %i.cd = getelementptr i8, ptr %0, i64 64
  %i.ce = load i8, ptr %i.cd, align 8, !range !11, !noundef !12
  %i.cf = trunc nuw i8 %i.ce to i1
  br i1 %i.cf, label %bb.ac, label %bb.af

bb.ac:                                            ; preds = %bb.ab
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #26
  %i.cg = call noundef ptr @_ZNK19QAbstractProxyModel11sourceModelEv(ptr noundef align 8 dereferenceable_or_null(16) %0) ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #26
  store i32 -1, ptr %16, align 8
  %i.ch = getelementptr inbounds nuw i8, ptr %16, i64 4
  store i32 -1, ptr %i.ch, align 4
  %i.ci = getelementptr inbounds nuw i8, ptr %16, i64 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ci, i8 0, i64 16, i1 false)
  %i.cj = load ptr, ptr %i.cg, align 8
  %i.ck = getelementptr inbounds nuw i8, ptr %i.cj, i64 96
  %i.cl = load ptr, ptr %i.ck, align 8
  call void %i.cl(ptr dead_on_unwind nonnull writable sret(%class.QModelIndex) align 8 %15, ptr noundef align 8 dereferenceable_or_null(16) %i.cg, i32 noundef %1, i32 noundef 4, ptr noundef nonnull align 8 dereferenceable(24) %16)
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #26
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #26
  %i.cm = call noundef ptr @_ZNK19QAbstractProxyModel11sourceModelEv(ptr noundef align 8 dereferenceable_or_null(16) %0) ; 2 uses
  %i.cn = load ptr, ptr %i.cm, align 8
  %i.co = getelementptr inbounds nuw i8, ptr %i.cn, i64 144
  %i.cp = load ptr, ptr %i.co, align 8
  call void %i.cp(ptr dead_on_unwind nonnull writable sret(%class.QVariant) align 8 %17, ptr noundef align 8 dereferenceable_or_null(16) %i.cm, ptr noundef nonnull align 8 dereferenceable(24) %15, i32 noundef 257)
  %i.cq = invoke noundef zeroext i1 @_ZNK8QVariant6toBoolEv(ptr noundef nonnull align 8 dereferenceable_or_null(32) %17)
          to label %bb.ad unwind label %bb.ae

bb.ad:                                            ; preds = %bb.ac
  call void @_ZN8QVariantD1Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable_or_null(32) %17) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #26
  br i1 %i.cq, label %bb.af, label %bb.ag

bb.ae:                                            ; preds = %bb.ac
  %i.cr = landingpad { ptr, i32 }
          cleanup
  call void @_ZN8QVariantD1Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable_or_null(32) %17) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #26
  br label %bb.ah
end_hunk_0
