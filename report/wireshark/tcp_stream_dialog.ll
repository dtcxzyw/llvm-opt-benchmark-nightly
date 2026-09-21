Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/wireshark/original/tcp_stream_dialog?download=true
inline.NumInlined: 2777
inline.NumDeleted: 831
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 3
loop-unroll.NumUnrolled: 4
begin_hunk_0_@_ZN15TCPStreamDialogC2EP7QWidgetRK11CaptureFile15tcp_graph_type_:bb.a
  %i.g = alloca { i64, i64 }, align 8             ; 5 uses
  %i.h = alloca { i64, i64 }, align 8             ; 5 uses
  %i.i = alloca { i64, i64 }, align 8             ; 5 uses
  %i.j = alloca { i64, i64 }, align 8             ; 5 uses
  %i.k = alloca { i64, i64 }, align 8             ; 5 uses
  %i.l = alloca { i64, i64 }, align 8             ; 5 uses
  %5 = alloca %class.QIcon, align 8               ; 7 uses
  %6 = alloca %class.QIcon, align 8               ; 7 uses
  %7 = alloca %class.QIcon, align 8               ; 7 uses
  %8 = alloca %class.QIcon, align 8               ; 7 uses
  %9 = alloca %class.QIcon, align 8               ; 7 uses
  %10 = alloca %class.QIcon, align 8              ; 7 uses
  %11 = alloca %class.QIcon, align 8              ; 7 uses
  %12 = alloca %class.QIcon, align 8              ; 7 uses
  %13 = alloca %class.QIcon, align 8              ; 7 uses
  %14 = alloca %class.QString, align 16           ; 5 uses
  %15 = alloca %class.QString, align 8            ; 9 uses
  %16 = alloca %class.QString, align 16           ; 10 uses
  %17 = alloca %class.QString, align 8            ; 9 uses
  %18 = alloca %class.QVariant, align 8           ; 7 uses
  %19 = alloca %class.QString, align 8            ; 9 uses
  %20 = alloca %class.QVariant, align 8           ; 7 uses
  %21 = alloca %class.QString, align 8            ; 9 uses
  %22 = alloca %class.QVariant, align 8           ; 7 uses
  %23 = alloca %class.QString, align 8            ; 9 uses
  %24 = alloca %class.QVariant, align 8           ; 7 uses
  %25 = alloca %class.QString, align 8            ; 9 uses
  %26 = alloca %class.QVariant, align 8           ; 7 uses
  %27 = alloca %class.QString, align 8            ; 9 uses
  %28 = alloca %class.QVariant, align 8           ; 7 uses
  %29 = alloca %class.QString, align 8            ; 9 uses
  %30 = alloca %class.QVariant, align 8           ; 7 uses
  %31 = alloca %class.QString, align 8            ; 9 uses
  %32 = alloca %class.QVariant, align 8           ; 7 uses
  %33 = alloca %class.QString, align 8            ; 9 uses
  %34 = alloca %class.QVariant, align 8           ; 7 uses
  %35 = alloca %"class.QMetaObject::Connection", align 8 ; 2 uses
  %36 = alloca %"class.QMetaObject::Connection", align 8 ; 2 uses
  %37 = alloca %"class.QMetaObject::Connection", align 8 ; 2 uses
  %38 = alloca %"class.QMetaObject::Connection", align 8 ; 2 uses
  %39 = alloca %"class.QMetaObject::Connection", align 8 ; 2 uses
  %40 = alloca %class.QString, align 8            ; 9 uses
  %41 = alloca %class.QFont, align 8              ; 7 uses
  %42 = alloca %class.QPen, align 8               ; 7 uses
  %43 = alloca %class.QBrush, align 8             ; 7 uses
  %44 = alloca %class.QColor, align 4             ; 5 uses
  %45 = alloca %class.QPen, align 8               ; 7 uses
  %46 = alloca %class.QBrush, align 8             ; 7 uses
  %47 = alloca %class.QColor, align 4             ; 5 uses
  %48 = alloca %class.QString, align 8            ; 9 uses
  %49 = alloca %class.QPen, align 8               ; 7 uses
  %50 = alloca %class.QBrush, align 8             ; 7 uses
  %51 = alloca %class.QColor, align 4             ; 5 uses
  %52 = alloca %class.QString, align 8            ; 9 uses
  %53 = alloca %class.QCPScatterStyle, align 8    ; 10 uses
  %54 = alloca %class.QString, align 8            ; 9 uses
  %55 = alloca %class.QPen, align 8               ; 7 uses
  %56 = alloca %class.QBrush, align 8             ; 7 uses
  %57 = alloca %class.QColor, align 4             ; 5 uses
  %58 = alloca %class.QString, align 8            ; 9 uses
  %59 = alloca %class.QPen, align 8               ; 7 uses
  %60 = alloca %class.QBrush, align 8             ; 7 uses
  %61 = alloca %class.QColor, align 4             ; 5 uses
  %62 = alloca %class.QString, align 8            ; 9 uses
  %63 = alloca %class.QPainterPath, align 8       ; 8 uses
  %64 = alloca %class.QPen, align 8               ; 9 uses
  %65 = alloca %class.QColor, align 4             ; 5 uses
  %66 = alloca %class.QCPScatterStyle, align 8    ; 10 uses
  %67 = alloca %class.QBrush, align 8             ; 7 uses
  %68 = alloca %class.QString, align 8            ; 9 uses
  %69 = alloca %class.QCPScatterStyle, align 8    ; 10 uses
  %70 = alloca %class.QString, align 8            ; 9 uses
  %71 = alloca %class.QPen, align 8               ; 7 uses
  %72 = alloca %class.QBrush, align 8             ; 7 uses
  %73 = alloca %class.QColor, align 4             ; 5 uses
  %74 = alloca %class.QString, align 8            ; 9 uses
  %75 = alloca %class.QCPScatterStyle, align 8    ; 10 uses
  %76 = alloca %class.QString, align 8            ; 9 uses
  %77 = alloca %class.QPen, align 8               ; 7 uses
  %78 = alloca %class.QBrush, align 8             ; 7 uses
  %79 = alloca %class.QColor, align 4             ; 5 uses
  %80 = alloca %class.QString, align 8            ; 9 uses
  %81 = alloca %class.QPen, align 8               ; 7 uses
  %82 = alloca %class.QBrush, align 8             ; 7 uses
  %83 = alloca %class.QColor, align 4             ; 5 uses
  %84 = alloca %class.QString, align 8            ; 9 uses
  %85 = alloca %class.QCPScatterStyle, align 8    ; 10 uses
  %86 = alloca %class.QColor, align 4             ; 5 uses
  %87 = alloca %class.QString, align 8            ; 9 uses
  %88 = alloca %class.QSharedPointer.22, align 8  ; 4 uses
  %89 = alloca %class.QSharedPointer.65, align 8  ; 7 uses
  %90 = alloca %class.QString, align 8            ; 6 uses
  %91 = alloca %class.QSharedPointer.22, align 8  ; 4 uses
  %92 = alloca %class.QSharedPointer.65, align 8  ; 7 uses
  %93 = alloca %class.QString, align 8            ; 6 uses
  %94 = alloca %class.QSharedPointer.22, align 8  ; 4 uses
  %95 = alloca %class.QSharedPointer.65, align 8  ; 7 uses
  %96 = alloca %class.QString, align 8            ; 6 uses
  %97 = alloca %class.QColor, align 4             ; 5 uses
  %98 = alloca %class.QColor, align 4             ; 5 uses
  %99 = alloca %class.QString, align 8            ; 9 uses
  %100 = alloca %"class.QMetaObject::Connection", align 8 ; 2 uses
  %101 = alloca %"class.QMetaObject::Connection", align 8 ; 2 uses
  %102 = alloca %"class.QMetaObject::Connection", align 8 ; 2 uses
  %103 = alloca %"class.QMetaObject::Connection", align 8 ; 2 uses
  %104 = alloca %"class.QMetaObject::Connection", align 8 ; 2 uses
  %105 = alloca %"class.QMetaObject::Connection", align 8 ; 2 uses
  tail call void @_ZN7QDialogC2EP7QWidget6QFlagsIN2Qt10WindowTypeEE(ptr noundef align 8 dereferenceable_or_null(72) %0, ptr noundef null, i32 1)
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 40
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) dereferenceable_or_null(24) %i.n, i8 0, i64 24, i1 false)
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 64
  store ptr %1, ptr %i.o, align 8
  store ptr getelementptr inbounds nuw inrange(-16, 456) (i8, ptr @_ZTV15TCPStreamDialog, i64 16), ptr %0, align 8
  store ptr getelementptr inbounds nuw inrange(-16, 64) (i8, ptr @_ZTV15TCPStreamDialog, i64 488), ptr %i.m, align 8
  %i.p = getelementptr i8, ptr %0, i64 72         ; 76 uses
  %i.q = invoke noalias noundef dereferenceable_or_null(520) ptr @_Znwm(i64 noundef 520) #30
          to label %bb.b unwind label %bb.h

bb.b:                                             ; preds = %bb.a
  store ptr %i.q, ptr %i.p, align 8
  %i.r = getelementptr i8, ptr %0, i64 80         ; 6 uses
  store ptr %2, ptr %i.r, align 8
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 2 uses
  store i8 0, ptr %i.s, align 8
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 89 ; 2 uses
  store i8 0, ptr %i.t, align 1
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 112
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.u, i8 0, i64 16, i1 false)
  store i8 1, ptr %i.v, align 8
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 120 ; 2 uses
  store ptr null, ptr %i.w, align 8
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 128
  store i32 0, ptr %i.x, align 8
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 132
  store i8 1, ptr %i.y, align 4
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 133
  store i8 1, ptr %i.z, align 1
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 134 ; 2 uses
  store i8 1, ptr %i.aa, align 2
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 224 ; 3 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 232 ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 240
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 264
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 272 ; 3 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 280 ; 3 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 288 ; 4 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 296 ; 6 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 304 ; 3 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 312 ; 4 uses
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 320 ; 6 uses
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 328 ; 4 uses
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 336 ; 6 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 344 ; 3 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 352 ; 3 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 360 ; 3 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 368 ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 416
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(188) %i.ab, i8 0, i64 188, i1 false)
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(74) %i.as, ptr noundef nonnull align 8 dereferenceable(72) @constinit, i64 72, i1 false)
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 488 ; 2 uses
  %i.au = load i16, ptr %i.at, align 8
  %i.av = and i16 %i.au, -1024
  store i16 %i.av, ptr %i.at, align 8
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 496 ; 2 uses
  store i8 1, ptr %i.aw, align 8
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 504
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 520 ; 36 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ax, i8 0, i64 16, i1 false)
  invoke void @_ZN5QMenuC1EP7QWidget(ptr noundef nonnull align 8 dereferenceable_or_null(40) %i.ay, ptr noundef null)
          to label %bb.c unwind label %bb.i

bb.c:                                             ; preds = %bb.b
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 560
  store ptr %0, ptr %i.az, align 8
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 568
  store ptr null, ptr %i.ba, align 8
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 576
  store i8 0, ptr %i.bb, align 8
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 584
  store i32 -1, ptr %i.bc, align 8
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 588
  store i32 -1, ptr %i.bd, align 4
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 592
  store i32 -1, ptr %i.be, align 8
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 600 ; 2 uses
  store double 1.000000e+00, ptr %i.bf, align 8
  %i.bg = getelementptr i8, ptr %0, i64 136       ; 3 uses
  tail call void @llvm.memset.p0.i64(ptr noundef align 8 dereferenceable(88) %i.bg, i8 noundef 0, i64 noundef 88, i1 noundef false) #28
  %i.bh = load ptr, ptr %i.p, align 8
  invoke void @_ZN18Ui_TCPStreamDialog7setupUiEP7QDialog(ptr noundef align 8 dereferenceable_or_null(520) %i.bh, ptr noundef %0)
          to label %bb.d unwind label %bb.j

bb.d:                                             ; preds = %bb.c
  %.not = icmp eq ptr %1, null
  br i1 %.not, label %bb.m, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.bi = getelementptr i8, ptr %1, i64 32
  %i.bj = load ptr, ptr %i.bi, align 8            ; 2 uses
  %i.bk = getelementptr i8, ptr %i.bj, i64 20
  %i.bl = getelementptr i8, ptr %i.bj, i64 28
  %106 = load <2 x i32>, ptr %i.bl, align 4
  %107 = load <2 x i32>, ptr %i.bk, align 4
  %108 = add <2 x i32> %106, splat (i32 1)
  %109 = sub <2 x i32> %108, %107                 ; 2 uses
  %110 = extractelement <2 x i32> %109, i64 0
  %111 = shl i32 %110, 1
  %112 = sdiv i32 %111, 3
  %113 = extractelement <2 x i32> %109, i64 1
  %i.bm = shl i32 %113, 2
  %i.bn = sdiv i32 %i.bm, 5
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #28
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) dereferenceable_or_null(24) %15, i8 0, i64 24, i1 false)
  invoke void @_ZN19GeometryStateDialog12loadGeometryEiiRK7QString(ptr noundef align 8 dereferenceable_or_null(72) %0, i32 noundef %112, i32 noundef %i.bn, ptr noundef nonnull align 8 dereferenceable(24) %15)
          to label %bb.f unwind label %bb.k

bb.f:                                             ; preds = %bb.e
  %i.bo = load ptr, ptr %15, align 8              ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.bo, null
  br i1 %.not.i.i.i, label %_ZN7QStringD2Ev.exit, label %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i

_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i:      ; preds = %bb.f
  %i.bp = atomicrmw sub ptr %i.bo, i32 1 acq_rel, align 4
  %.not.i.i = icmp eq i32 %i.bp, 1
  br i1 %.not.i.i, label %bb.g, label %_ZN7QStringD2Ev.exit

bb.g:                                             ; preds = %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i
  %i.bq = load ptr, ptr %15, align 8
  call void @_ZN10QArrayData10deallocateEPS_xx(ptr noundef %i.bq, i64 noundef 2, i64 noundef 8) #28
  br label %_ZN7QStringD2Ev.exit

_ZN7QStringD2Ev.exit:                             ; preds = %bb.f, %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i, %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #28
  br label %bb.m

bb.h:                                             ; preds = %bb.a
  %i.br = landingpad { ptr, i32 }
          cleanup
  br label %bb.tj

bb.i:                                             ; preds = %bb.b
  %i.bs = landingpad { ptr, i32 }
          cleanup
  br label %bb.ti

bb.j:                                             ; preds = %bb.m, %bb.c
  %i.bt = landingpad { ptr, i32 }
          cleanup
  br label %bb.th

bb.k:                                             ; preds = %bb.e
  %i.bu = landingpad { ptr, i32 }
          cleanup
  %i.bv = load ptr, ptr %15, align 8              ; 2 uses
  %.not.i.i.i351 = icmp eq ptr %i.bv, null
  br i1 %.not.i.i.i351, label %_ZN7QStringD2Ev.exit354, label %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i352

_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i352:   ; preds = %bb.k
  %i.bw = atomicrmw sub ptr %i.bv, i32 1 acq_rel, align 4
  %.not.i.i353 = icmp eq i32 %i.bw, 1
  br i1 %.not.i.i353, label %bb.l, label %_ZN7QStringD2Ev.exit354

bb.l:                                             ; preds = %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i352
  %i.bx = load ptr, ptr %15, align 8
  call void @_ZN10QArrayData10deallocateEPS_xx(ptr noundef %i.bx, i64 noundef 2, i64 noundef 8) #28
  br label %_ZN7QStringD2Ev.exit354

_ZN7QStringD2Ev.exit354:                          ; preds = %bb.k, %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i352, %bb.l
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #28
  br label %bb.th

bb.m:                                             ; preds = %_ZN7QStringD2Ev.exit, %bb.d
  invoke void @_ZN7QWidget12setAttributeEN2Qt15WidgetAttributeEb(ptr noundef align 8 dereferenceable_or_null(40) %0, i32 noundef 55, i1 noundef zeroext true)
          to label %bb.n unwind label %bb.j

bb.n:                                             ; preds = %bb.m
  %i.by = load ptr, ptr %i.p, align 8
  %i.bz = getelementptr i8, ptr %i.by, i64 368
  %i.ca = load ptr, ptr %i.bz, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #28
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #28
  invoke void @_ZN7QString8fromUtf8E14QByteArrayView(ptr dead_on_unwind nonnull writable sret(%class.QString) align 8 %14, i64 28, ptr nonnull @.str.13)
          to label %bb.o unwind label %bb.u

bb.o:                                             ; preds = %bb.n
  %i.cb = load <2 x ptr>, ptr %14, align 16
  store <2 x ptr> %i.cb, ptr %16, align 16
  %i.cc = getelementptr inbounds nuw i8, ptr %16, i64 16
  %i.cd = getelementptr inbounds nuw i8, ptr %14, i64 16
  %i.ce = load i64, ptr %i.cd, align 16
  store i64 %i.ce, ptr %i.cc, align 16
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #28
  invoke void @_ZN7QWidget13setStyleSheetERK7QString(ptr noundef align 8 dereferenceable_or_null(40) %i.ca, ptr noundef nonnull align 8 dereferenceable(24) %16)
          to label %bb.p unwind label %bb.v

bb.p:                                             ; preds = %bb.o
  %i.cf = load ptr, ptr %16, align 16             ; 2 uses
  %.not.i.i.i355 = icmp eq ptr %i.cf, null
  br i1 %.not.i.i.i355, label %_ZN7QStringD2Ev.exit358, label %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i356

_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i356:   ; preds = %bb.p
  %i.cg = atomicrmw sub ptr %i.cf, i32 1 acq_rel, align 4
  %.not.i.i357 = icmp eq i32 %i.cg, 1
  br i1 %.not.i.i357, label %bb.q, label %_ZN7QStringD2Ev.exit358

bb.q:                                             ; preds = %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i356
  %i.ch = load ptr, ptr %16, align 16
  call void @_ZN10QArrayData10deallocateEPS_xx(ptr noundef %i.ch, i64 noundef 2, i64 noundef 8) #28
  br label %_ZN7QStringD2Ev.exit358

_ZN7QStringD2Ev.exit358:                          ; preds = %bb.p, %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i356, %bb.q
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #28
  %i.ci = load ptr, ptr %i.r, align 8, !align !16 ; 2 uses
  %i.cj = invoke noundef zeroext i1 @_ZNK11CaptureFile7isValidEv(ptr noundef align 8 dereferenceable_or_null(48) %i.ci)
          to label %.noexc unwind label %bb.x

.noexc:                                           ; preds = %_ZN7QStringD2Ev.exit358
  br i1 %i.cj, label %bb.r, label %_ZNK11CaptureFile7capFileEv.exit

bb.r:                                             ; preds = %.noexc
  %i.ck = getelementptr i8, ptr %i.ci, i64 16
  %i.cl = load ptr, ptr %i.ck, align 8
  br label %_ZNK11CaptureFile7capFileEv.exit

_ZNK11CaptureFile7capFileEv.exit:                 ; preds = %bb.r, %.noexc
  %i.cm = phi ptr [ %i.cl, %bb.r ], [ null, %.noexc ]
  %i.cn = invoke i32 @select_tcpip_session(ptr noundef %i.cm)
          to label %bb.s unwind label %bb.x       ; 2 uses

bb.s:                                             ; preds = %_ZNK11CaptureFile7capFileEv.exit
  %i.co = icmp eq i32 %i.cn, -1
  br i1 %i.co, label %bb.t, label %bb.y

bb.t:                                             ; preds = %bb.s
  %i.cp = load ptr, ptr %0, align 8
  %i.cq = getelementptr inbounds nuw i8, ptr %i.cp, i64 432
  %i.cr = load ptr, ptr %i.cq, align 8
  invoke void %i.cr(ptr noundef align 8 dereferenceable_or_null(40) %0, i32 noundef 0)
          to label %bb.tb unwind label %bb.x

bb.u:                                             ; preds = %bb.n
  %i.cs = landingpad { ptr, i32 }
          cleanup
  br label %_ZN7QStringD2Ev.exit362

bb.v:                                             ; preds = %bb.o
  %i.ct = landingpad { ptr, i32 }
          cleanup                                 ; 3 uses
  %i.cu = load ptr, ptr %16, align 16             ; 2 uses
  %.not.i.i.i359 = icmp eq ptr %i.cu, null
  br i1 %.not.i.i.i359, label %_ZN7QStringD2Ev.exit362, label %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i360

_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i360:   ; preds = %bb.v
  %i.cv = atomicrmw sub ptr %i.cu, i32 1 acq_rel, align 4
  %.not.i.i361 = icmp eq i32 %i.cv, 1
  br i1 %.not.i.i361, label %bb.w, label %_ZN7QStringD2Ev.exit362

bb.w:                                             ; preds = %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i360
  %i.cw = load ptr, ptr %16, align 16
  call void @_ZN10QArrayData10deallocateEPS_xx(ptr noundef %i.cw, i64 noundef 2, i64 noundef 8) #28
  br label %_ZN7QStringD2Ev.exit362

_ZN7QStringD2Ev.exit362:                          ; preds = %bb.w, %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i360, %bb.v, %bb.u
  %.pn = phi { ptr, i32 } [ %i.cs, %bb.u ], [ %i.ct, %bb.v ], [ %i.ct, %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i360 ], [ %i.ct, %bb.w ]
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #28
  br label %bb.th

bb.x:                                             ; preds = %_ZN7QStringD2Ev.exit358, %bb.t, %_ZNK11CaptureFile7capFileEv.exit
  %i.cx = landingpad { ptr, i32 }
          cleanup
  br label %bb.th

bb.y:                                             ; preds = %bb.s
  %i.cy = load ptr, ptr %i.p, align 8
  %i.cz = getelementptr i8, ptr %i.cy, i64 312
  %i.da = load ptr, ptr %i.cz, align 8            ; 17 uses
  invoke void @_ZN7QWidget17setUpdatesEnabledEb(ptr noundef align 8 dereferenceable_or_null(40) %i.da, i1 noundef zeroext false)
          to label %bb.z unwind label %bb.ah

bb.z:                                             ; preds = %bb.y
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #28
  %i.db = load ptr, ptr %i.p, align 8
  %i.dc = getelementptr i8, ptr %i.db, i64 168
  %i.dd = load ptr, ptr %i.dc, align 8
  invoke void @_ZNK7QAction4textEv(ptr dead_on_unwind nonnull writable sret(%class.QString) align 8 %17, ptr noundef align 8 dereferenceable_or_null(16) %i.dd)
          to label %bb.aa unwind label %bb.ai

bb.aa:                                            ; preds = %bb.z
  call void @llvm.lifetime.start.p0(ptr nonnull %18) #28
  invoke void @_ZN8QVariantC1Ei(ptr noundef nonnull align 8 dereferenceable_or_null(32) %18, i32 noundef 3)
          to label %bb.ab unwind label %bb.aj

bb.ab:                                            ; preds = %bb.aa
  %i.de = invoke noundef i32 @_ZNK9QComboBox5countEv(ptr noundef align 8 dereferenceable_or_null(40) %i.da)
          to label %.noexc363 unwind label %bb.ak

.noexc363:                                        ; preds = %bb.ab
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #28
  call void @_ZN5QIconC1Ev(ptr noundef nonnull align 8 dereferenceable_or_null(8) %13) #28
  invoke void @_ZN9QComboBox10insertItemEiRK5QIconRK7QStringRK8QVariant(ptr noundef align 8 dereferenceable_or_null(40) %i.da, i32 noundef %i.de, ptr noundef nonnull align 8 dereferenceable(8) %13, ptr noundef nonnull align 8 dereferenceable(24) %17, ptr noundef nonnull align 8 dereferenceable(32) %18)
          to label %bb.ad unwind label %bb.ac

bb.ac:                                            ; preds = %.noexc363
  %i.df = landingpad { ptr, i32 }
          cleanup
  call void @_ZN5QIconD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable_or_null(8) %13) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #28
  br label %.body

bb.ad:                                            ; preds = %.noexc363
  call void @_ZN5QIconD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable_or_null(8) %13) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #28
  call void @_ZN8QVariantD1Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable_or_null(32) %18) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #28
end_hunk_0
