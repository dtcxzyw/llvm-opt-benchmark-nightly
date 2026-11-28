Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/wireshark/original/lua_debugger_files?download=true
inline.NumInlined: 661
inline.NumDeleted: 290
begin_hunk_0_@_ZN26LuaDebuggerFilesController11ensureEntryERK7QString:bb.a
  %i.cj = atomicrmw add ptr %i.ci, i32 -1 acq_rel, align 4
  %.not.i.i73 = icmp eq i32 %i.cj, 1
  br i1 %.not.i.i73, label %bb.ar, label %_ZN7QStringD2Ev.exit74

bb.ar:                                            ; preds = %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i72
  %i.ck = load ptr, ptr %9, align 8
  call void @_ZN10QArrayData10deallocateEPS_xx(ptr noundef %i.ck, i64 noundef 2, i64 noundef 8) #17
  br label %_ZN7QStringD2Ev.exit74

_ZN7QStringD2Ev.exit74:                           ; preds = %.body, %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i72, %bb.ar
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #17
  %i.cl = load ptr, ptr %8, align 8               ; 2 uses
  %.not.i.i.i75 = icmp eq ptr %i.cl, null
  br i1 %.not.i.i.i75, label %_ZN7QStringD2Ev.exit78, label %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i76

_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i76:    ; preds = %_ZN7QStringD2Ev.exit74
  %i.cm = atomicrmw add ptr %i.cl, i32 -1 acq_rel, align 4
  %.not.i.i77 = icmp eq i32 %i.cm, 1
  br i1 %.not.i.i77, label %bb.as, label %_ZN7QStringD2Ev.exit78

bb.as:                                            ; preds = %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i76
  %i.cn = load ptr, ptr %8, align 8
  call void @_ZN10QArrayData10deallocateEPS_xx(ptr noundef %i.cn, i64 noundef 2, i64 noundef 8) #17
  br label %_ZN7QStringD2Ev.exit78

_ZN7QStringD2Ev.exit78:                           ; preds = %_ZN7QStringD2Ev.exit74, %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i76, %bb.as
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #17
  br label %bb.az

bb.at:                                            ; preds = %._crit_edge
  %i.co = getelementptr i8, ptr %0, i64 24
  %i.cp = load ptr, ptr %i.co, align 8            ; 2 uses
  %.not45 = icmp eq ptr %i.cp, null
  br i1 %.not45, label %.critedge, label %bb.au

bb.au:                                            ; preds = %bb.at
  invoke void @_ZN9QTreeView9expandAllEv(ptr noundef nonnull align 8 dereferenceable_or_null(40) %i.cp)
          to label %.critedge unwind label %bb.av

bb.av:                                            ; preds = %bb.c, %bb.au
  %i.cq = landingpad { ptr, i32 }
          cleanup
  br label %bb.az

.critedge:                                        ; preds = %bb.e, %._crit_edge, %bb.at, %bb.au, %bb.d
  %.039 = phi i1 [ false, %bb.d ], [ true, %bb.au ], [ true, %bb.at ], [ false, %._crit_edge ], [ false, %bb.e ]
  %i.cr = load ptr, ptr %7, align 8               ; 2 uses
  %.not.i.i.i79 = icmp eq ptr %i.cr, null
  br i1 %.not.i.i.i79, label %_ZN5QListISt4pairI7QStringS1_EED2Ev.exit, label %_ZN17QArrayDataPointerISt4pairI7QStringS1_EE5derefEv.exit.i.i

_ZN17QArrayDataPointerISt4pairI7QStringS1_EE5derefEv.exit.i.i: ; preds = %.critedge
  %i.cs = atomicrmw add ptr %i.cr, i32 -1 acq_rel, align 4
  %.not.i.i80 = icmp eq i32 %i.cs, 1
  br i1 %.not.i.i80, label %bb.aw, label %_ZN5QListISt4pairI7QStringS1_EED2Ev.exit

bb.aw:                                            ; preds = %_ZN17QArrayDataPointerISt4pairI7QStringS1_EE5derefEv.exit.i.i
  %i.ct = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.cu = load ptr, ptr %i.ct, align 8            ; 2 uses
  %i.cv = getelementptr inbounds nuw i8, ptr %7, i64 16
  %i.cw = load i64, ptr %i.cv, align 8
  %.idx.i.i.i = mul i64 %i.cw, 48                 ; 2 uses
  %i.cx = getelementptr i8, ptr %i.cu, i64 %.idx.i.i.i
  %.not4.i.i.i.i.i.i = icmp eq i64 %.idx.i.i.i, 0
  br i1 %.not4.i.i.i.i.i.i, label %_ZN9QtPrivate16QGenericArrayOpsISt4pairI7QStringS2_EE10destroyAllEv.exit.i.i, label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %bb.aw, %_ZSt8_DestroyISt4pairI7QStringS1_EEvPT_.exit.i.i.i.i.i.i
  %.05.i.i.i.i.i.i = phi ptr [ %i.df, %_ZSt8_DestroyISt4pairI7QStringS1_EEvPT_.exit.i.i.i.i.i.i ], [ %i.cu, %bb.aw ] ; 4 uses
  %i.cy = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i.i, i64 24 ; 2 uses
  %i.cz = load ptr, ptr %i.cy, align 8            ; 2 uses
  %.not.i.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.cz, null
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i, label %_ZN7QStringD2Ev.exit.i.i.i.i.i.i.i.i, label %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i.i.i.i.i.i.i.i.i

_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i.i.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i
  %i.da = atomicrmw add ptr %i.cz, i32 -1 acq_rel, align 4
  %.not.i.i.i.i.i.i.i.i.i.i = icmp eq i32 %i.da, 1
  br i1 %.not.i.i.i.i.i.i.i.i.i.i, label %bb.ax, label %_ZN7QStringD2Ev.exit.i.i.i.i.i.i.i.i

bb.ax:                                            ; preds = %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i.i.i.i.i.i.i.i.i
  %i.db = load ptr, ptr %i.cy, align 8
  call void @_ZN10QArrayData10deallocateEPS_xx(ptr noundef %i.db, i64 noundef 2, i64 noundef 8) #17
  br label %_ZN7QStringD2Ev.exit.i.i.i.i.i.i.i.i

_ZN7QStringD2Ev.exit.i.i.i.i.i.i.i.i:             ; preds = %bb.ax, %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i.i.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i
  %i.dc = load ptr, ptr %.05.i.i.i.i.i.i, align 8 ; 2 uses
  %.not.i.i.i1.i.i.i.i.i.i.i.i = icmp eq ptr %i.dc, null
  br i1 %.not.i.i.i1.i.i.i.i.i.i.i.i, label %_ZSt8_DestroyISt4pairI7QStringS1_EEvPT_.exit.i.i.i.i.i.i, label %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i2.i.i.i.i.i.i.i.i

_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i2.i.i.i.i.i.i.i.i: ; preds = %_ZN7QStringD2Ev.exit.i.i.i.i.i.i.i.i
  %i.dd = atomicrmw add ptr %i.dc, i32 -1 acq_rel, align 4
  %.not.i.i3.i.i.i.i.i.i.i.i = icmp eq i32 %i.dd, 1
  br i1 %.not.i.i3.i.i.i.i.i.i.i.i, label %bb.ay, label %_ZSt8_DestroyISt4pairI7QStringS1_EEvPT_.exit.i.i.i.i.i.i

bb.ay:                                            ; preds = %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i2.i.i.i.i.i.i.i.i
  %i.de = load ptr, ptr %.05.i.i.i.i.i.i, align 8
  call void @_ZN10QArrayData10deallocateEPS_xx(ptr noundef %i.de, i64 noundef 2, i64 noundef 8) #17
  br label %_ZSt8_DestroyISt4pairI7QStringS1_EEvPT_.exit.i.i.i.i.i.i

_ZSt8_DestroyISt4pairI7QStringS1_EEvPT_.exit.i.i.i.i.i.i: ; preds = %bb.ay, %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i2.i.i.i.i.i.i.i.i, %_ZN7QStringD2Ev.exit.i.i.i.i.i.i.i.i
  %i.df = getelementptr i8, ptr %.05.i.i.i.i.i.i, i64 48 ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.df, %i.cx
  br i1 %.not.i.i.i.i.i.i, label %_ZN9QtPrivate16QGenericArrayOpsISt4pairI7QStringS2_EE10destroyAllEv.exit.i.i, label %.lr.ph.i.i.i.i.i.i, !llvm.loop !1

_ZN9QtPrivate16QGenericArrayOpsISt4pairI7QStringS2_EE10destroyAllEv.exit.i.i: ; preds = %_ZSt8_DestroyISt4pairI7QStringS1_EEvPT_.exit.i.i.i.i.i.i, %bb.aw
  %i.dg = load ptr, ptr %7, align 8
  call void @_ZN10QArrayData10deallocateEPS_xx(ptr noundef %i.dg, i64 noundef 48, i64 noundef 8) #17
  br label %_ZN5QListISt4pairI7QStringS1_EED2Ev.exit

_ZN5QListISt4pairI7QStringS1_EED2Ev.exit:         ; preds = %.critedge, %_ZN17QArrayDataPointerISt4pairI7QStringS1_EE5derefEv.exit.i.i, %_ZN9QtPrivate16QGenericArrayOpsISt4pairI7QStringS2_EE10destroyAllEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #17
  br label %bb.bb

bb.az:                                            ; preds = %_ZN7QStringD2Ev.exit78, %bb.av
  %.pn51.pn.pn = phi { ptr, i32 } [ %i.cq, %bb.av ], [ %.pn51, %_ZN7QStringD2Ev.exit78 ]
  call void @_ZN5QListISt4pairI7QStringS1_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable_or_null(24) %7) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #17
  %i.dh = load ptr, ptr %6, align 8               ; 2 uses
  %.not.i.i.i81 = icmp eq ptr %i.dh, null
  br i1 %.not.i.i.i81, label %_ZN7QStringD2Ev.exit84, label %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i82

_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i82:    ; preds = %bb.az
  %i.di = atomicrmw add ptr %i.dh, i32 -1 acq_rel, align 4
  %.not.i.i83 = icmp eq i32 %i.di, 1
  br i1 %.not.i.i83, label %bb.ba, label %_ZN7QStringD2Ev.exit84

bb.ba:                                            ; preds = %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i82
  %i.dj = load ptr, ptr %6, align 8
  call void @_ZN10QArrayData10deallocateEPS_xx(ptr noundef %i.dj, i64 noundef 2, i64 noundef 8) #17
  br label %_ZN7QStringD2Ev.exit84

_ZN7QStringD2Ev.exit84:                           ; preds = %bb.az, %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i82, %bb.ba
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #17
  resume { ptr, i32 } %.pn51.pn.pn

bb.bb:                                            ; preds = %bb.b, %_ZN5QListISt4pairI7QStringS1_EED2Ev.exit
  %.140 = phi i1 [ %.039, %_ZN5QListISt4pairI7QStringS1_EED2Ev.exit ], [ false, %bb.b ]
  %i.dk = load ptr, ptr %6, align 8               ; 2 uses
  %.not.i.i.i85 = icmp eq ptr %i.dk, null
  br i1 %.not.i.i.i85, label %_ZN7QStringD2Ev.exit88, label %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i86

_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i86:    ; preds = %bb.bb
  %i.dl = atomicrmw add ptr %i.dk, i32 -1 acq_rel, align 4
  %.not.i.i87 = icmp eq i32 %i.dl, 1
  br i1 %.not.i.i87, label %bb.bc, label %_ZN7QStringD2Ev.exit88

bb.bc:                                            ; preds = %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i86
  %i.dm = load ptr, ptr %6, align 8
  call void @_ZN10QArrayData10deallocateEPS_xx(ptr noundef %i.dm, i64 noundef 2, i64 noundef 8) #17
  br label %_ZN7QStringD2Ev.exit88

_ZN7QStringD2Ev.exit88:                           ; preds = %bb.bb, %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i86, %bb.bc
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #17
  br label %bb.bd

bb.bd:                                            ; preds = %bb.a, %_ZN7QStringD2Ev.exit88
  %.241 = phi i1 [ %.140, %_ZN7QStringD2Ev.exit88 ], [ false, %bb.a ]
  ret i1 %.241
}

; Function Attrs: null_pointer_is_valid
declare void @_ZN12QDirIterator4nextEv(ptr dead_on_unwind writable sret(%class.QString) align 8, ptr noundef align 8 dereferenceable_or_null(8)) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid
declare void @_ZN12QDirIteratorD1Ev(ptr noundef align 8 dead_on_return(8) dereferenceable_or_null(8)) unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid
declare void @_ZN4QDirD1Ev(ptr noundef align 8 dead_on_return(8) dereferenceable_or_null(8)) unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare void @_ZNK17LuaDebuggerDialog18normalizedFilePathERK7QString(ptr dead_on_unwind writable sret(%class.QString) align 8, ptr noundef align 8 dereferenceable_or_null(1268), ptr noundef align 8 dereferenceable(24)) local_unnamed_addr #2

; Function Attrs: mustprogress null_pointer_is_valid sspstrong uwtable
define noundef zeroext i1 @_ZNK26LuaDebuggerFilesController20appendPathComponentsERK7QStringR5QListISt4pairIS0_S0_EE(ptr nofree readnone align 8 captures(none) %0, ptr noundef align 8 dereferenceable(24) %1, ptr noundef align 8 dereferenceable(24) %2) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca [3 x ptr], align 16               ; 6 uses
  %3 = alloca %"struct.QtPrivate::QStringViewArg", align 8 ; 6 uses
  %4 = alloca %"struct.QtPrivate::QStringViewArg", align 8 ; 6 uses
  %i.b = alloca [3 x ptr], align 16               ; 6 uses
  %5 = alloca %"struct.QtPrivate::QStringViewArg", align 8 ; 6 uses
  %6 = alloca %"struct.QtPrivate::QStringViewArg", align 8 ; 6 uses
  %7 = alloca %class.QString, align 16            ; 5 uses
  %8 = alloca %class.QString, align 16            ; 5 uses
  %9 = alloca %class.QString, align 8             ; 9 uses
  %10 = alloca %class.QList.13, align 8           ; 22 uses
  %11 = alloca %class.QString, align 16           ; 41 uses
  %12 = alloca %class.QString, align 16           ; 10 uses
  %13 = alloca %class.QString, align 16           ; 10 uses
  %14 = alloca %class.QString, align 16           ; 8 uses
  %15 = alloca %class.QString, align 16           ; 11 uses
  %16 = alloca %"struct.std::pair", align 16      ; 11 uses
  %17 = alloca %class.QString, align 16           ; 11 uses
  %18 = alloca %class.QString, align 16           ; 12 uses
  %19 = alloca %"struct.std::pair", align 16      ; 11 uses
  %20 = alloca %class.QString, align 16           ; 11 uses
  %21 = alloca %"struct.std::pair", align 8       ; 15 uses
  %22 = alloca %"struct.std::pair", align 16      ; 11 uses
  %23 = alloca %class.QString, align 16           ; 11 uses
  %24 = alloca %"struct.std::pair", align 16      ; 11 uses
  %25 = alloca %class.QString, align 16           ; 11 uses
  %26 = alloca %class.QString, align 8            ; 10 uses
  %27 = alloca %class.QString, align 8            ; 11 uses
  %28 = alloca %class.QString, align 8            ; 11 uses
  %29 = alloca %"struct.std::pair", align 8       ; 12 uses
  %30 = alloca %class.QString, align 16           ; 11 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #17
  call void @_ZN4QDir20fromNativeSeparatorsERK7QString(ptr dead_on_unwind nonnull writable sret(%class.QString) align 8 %9, ptr noundef align 8 dereferenceable(24) %1)
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #17
  invoke void @_ZNK7QString5splitE5QChar6QFlagsIN2Qt18SplitBehaviorFlagsEENS2_15CaseSensitivityE(ptr dead_on_unwind nonnull writable sret(%class.QList.13) align 8 %10, ptr noundef nonnull align 8 dereferenceable_or_null(24) %9, i16 47, i32 1, i32 noundef 1)
          to label %bb.b unwind label %bb.k

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %10, i64 16 ; 2 uses
  %i.d = load i64, ptr %i.c, align 8
  %i.e = trunc i64 %i.d to i32                    ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #17
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) dereferenceable_or_null(24) %11, i8 0, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #17
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #17
  invoke void @_ZN7QString8fromUtf8E14QByteArrayView(ptr dead_on_unwind nonnull writable sret(%class.QString) align 8 %8, i64 2, ptr @.str.3)
          to label %bb.c unwind label %bb.l

bb.c:                                             ; preds = %bb.b
  %i.f = load <2 x ptr>, ptr %8, align 16
  store <2 x ptr> %i.f, ptr %12, align 16
  %i.g = getelementptr inbounds nuw i8, ptr %12, i64 16
  %i.h = getelementptr inbounds nuw i8, ptr %8, i64 16
  %i.i = load i64, ptr %i.h, align 16
  store i64 %i.i, ptr %i.g, align 16
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #17
  %i.j = invoke noundef zeroext i1 @_ZNK7QString10startsWithERKS_N2Qt15CaseSensitivityE(ptr noundef align 8 dereferenceable_or_null(24) %1, ptr noundef nonnull align 8 dereferenceable(24) %12, i32 noundef 1)
          to label %bb.d unwind label %bb.m

bb.d:                                             ; preds = %bb.c
  br i1 %i.j, label %.critedge, label %bb.e

bb.e:                                             ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #17
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #17
  invoke void @_ZN7QString8fromUtf8E14QByteArrayView(ptr dead_on_unwind nonnull writable sret(%class.QString) align 8 %7, i64 2, ptr @.str.4)
          to label %bb.f unwind label %bb.n

bb.f:                                             ; preds = %bb.e
  %i.k = load <2 x ptr>, ptr %7, align 16
  store <2 x ptr> %i.k, ptr %13, align 16
  %i.l = getelementptr inbounds nuw i8, ptr %13, i64 16
  %i.m = getelementptr inbounds nuw i8, ptr %7, i64 16
  %i.n = load i64, ptr %i.m, align 16
  store i64 %i.n, ptr %i.l, align 16
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #17
  %i.o = invoke noundef zeroext i1 @_ZNK7QString10startsWithERKS_N2Qt15CaseSensitivityE(ptr noundef align 8 dereferenceable_or_null(24) %1, ptr noundef nonnull align 8 dereferenceable(24) %13, i32 noundef 1)
          to label %bb.g unwind label %bb.o

bb.g:                                             ; preds = %bb.f
  %i.p = load ptr, ptr %13, align 16              ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.p, null
  br i1 %.not.i.i.i, label %_ZN7QStringD2Ev.exit, label %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i

_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i:      ; preds = %bb.g
  %i.q = atomicrmw add ptr %i.p, i32 -1 acq_rel, align 4
  %.not.i.i = icmp eq i32 %i.q, 1
  br i1 %.not.i.i, label %bb.h, label %_ZN7QStringD2Ev.exit

bb.h:                                             ; preds = %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i
  %i.r = load ptr, ptr %13, align 16
  call void @_ZN10QArrayData10deallocateEPS_xx(ptr noundef %i.r, i64 noundef 2, i64 noundef 8) #17
  br label %_ZN7QStringD2Ev.exit

_ZN7QStringD2Ev.exit:                             ; preds = %bb.g, %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i, %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #17
  br label %.critedge

.critedge:                                        ; preds = %bb.d, %_ZN7QStringD2Ev.exit
  %i.s = phi i1 [ %i.o, %_ZN7QStringD2Ev.exit ], [ true, %bb.d ]
  %i.t = load ptr, ptr %12, align 16              ; 2 uses
  %.not.i.i.i91 = icmp eq ptr %i.t, null
  br i1 %.not.i.i.i91, label %_ZN7QStringD2Ev.exit94, label %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i92

_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i92:    ; preds = %.critedge
  %i.u = atomicrmw add ptr %i.t, i32 -1 acq_rel, align 4
  %.not.i.i93 = icmp eq i32 %i.u, 1
  br i1 %.not.i.i93, label %bb.i, label %_ZN7QStringD2Ev.exit94

bb.i:                                             ; preds = %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i92
  %i.v = load ptr, ptr %12, align 16
  call void @_ZN10QArrayData10deallocateEPS_xx(ptr noundef %i.v, i64 noundef 2, i64 noundef 8) #17
  br label %_ZN7QStringD2Ev.exit94

_ZN7QStringD2Ev.exit94:                           ; preds = %.critedge, %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i92, %bb.i
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #17
  br i1 %i.s, label %bb.j, label %bb.af

bb.j:                                             ; preds = %_ZN7QStringD2Ev.exit94
  %i.w = icmp slt i32 %i.e, 2
  br i1 %i.w, label %bb.df, label %bb.s

bb.k:                                             ; preds = %bb.a
  %i.x = landingpad { ptr, i32 }
          cleanup
  br label %bb.dm

bb.l:                                             ; preds = %bb.b
  %i.y = landingpad { ptr, i32 }
          cleanup
  br label %_ZN7QStringD2Ev.exit102

bb.m:                                             ; preds = %bb.c
  %i.z = landingpad { ptr, i32 }
          cleanup
  br label %bb.q

bb.n:                                             ; preds = %bb.e
  %i.aa = landingpad { ptr, i32 }
          cleanup
  br label %_ZN7QStringD2Ev.exit98

bb.o:                                             ; preds = %bb.f
  %i.ab = landingpad { ptr, i32 }
          cleanup                                 ; 3 uses
  %i.ac = load ptr, ptr %13, align 16             ; 2 uses
  %.not.i.i.i95 = icmp eq ptr %i.ac, null
  br i1 %.not.i.i.i95, label %_ZN7QStringD2Ev.exit98, label %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i96

_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i96:    ; preds = %bb.o
  %i.ad = atomicrmw add ptr %i.ac, i32 -1 acq_rel, align 4
  %.not.i.i97 = icmp eq i32 %i.ad, 1
  br i1 %.not.i.i97, label %bb.p, label %_ZN7QStringD2Ev.exit98

bb.p:                                             ; preds = %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i96
  %i.ae = load ptr, ptr %13, align 16
  call void @_ZN10QArrayData10deallocateEPS_xx(ptr noundef %i.ae, i64 noundef 2, i64 noundef 8) #17
  br label %_ZN7QStringD2Ev.exit98

_ZN7QStringD2Ev.exit98:                           ; preds = %bb.p, %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i96, %bb.o, %bb.n
  %.pn = phi { ptr, i32 } [ %i.aa, %bb.n ], [ %i.ab, %bb.o ], [ %i.ab, %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i96 ], [ %i.ab, %bb.p ]
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #17
  br label %bb.q

bb.q:                                             ; preds = %_ZN7QStringD2Ev.exit98, %bb.m
  %.pn.pn = phi { ptr, i32 } [ %.pn, %_ZN7QStringD2Ev.exit98 ], [ %i.z, %bb.m ] ; 3 uses
  %i.af = load ptr, ptr %12, align 16             ; 2 uses
  %.not.i.i.i99 = icmp eq ptr %i.af, null
  br i1 %.not.i.i.i99, label %_ZN7QStringD2Ev.exit102, label %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i100

_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i100:   ; preds = %bb.q
  %i.ag = atomicrmw add ptr %i.af, i32 -1 acq_rel, align 4
  %.not.i.i101 = icmp eq i32 %i.ag, 1
  br i1 %.not.i.i101, label %bb.r, label %_ZN7QStringD2Ev.exit102

bb.r:                                             ; preds = %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i100
  %i.ah = load ptr, ptr %12, align 16
  call void @_ZN10QArrayData10deallocateEPS_xx(ptr noundef %i.ah, i64 noundef 2, i64 noundef 8) #17
  br label %_ZN7QStringD2Ev.exit102

_ZN7QStringD2Ev.exit102:                          ; preds = %bb.r, %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i100, %bb.q, %bb.l
  %.pn.pn.pn = phi { ptr, i32 } [ %i.y, %bb.l ], [ %.pn.pn, %bb.q ], [ %.pn.pn, %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i100 ], [ %.pn.pn, %bb.r ]
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #17
  br label %bb.dk

bb.s:                                             ; preds = %bb.j
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #17
  %i.ai = getelementptr inbounds nuw i8, ptr %10, i64 8 ; 2 uses
  %i.aj = load ptr, ptr %i.ai, align 8            ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #17, !noalias !35
  call void @llvm.experimental.noalias.scope.decl(metadata !36)
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 8
  %i.al = load ptr, ptr %i.ak, align 8, !noalias !37 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.al, null
  %spec.select.i.i.i.i = select i1 %.not.i.i.i.i, ptr @_ZN7QString6_emptyE, ptr %i.al
  %i.am = getelementptr inbounds nuw i8, ptr %i.aj, i64 16
  %i.an = load i64, ptr %i.am, align 8, !noalias !37
  store i8 2, ptr %5, align 8, !alias.scope !36, !noalias !35
  %i.ao = getelementptr inbounds nuw i8, ptr %5, i64 8
  store i64 %i.an, ptr %i.ao, align 8, !alias.scope !36, !noalias !35
  %.sroa.2.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %5, i64 16
  store ptr %spec.select.i.i.i.i, ptr %.sroa.2.0..sroa_idx.i.i.i, align 8, !alias.scope !36, !noalias !35
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #17, !noalias !35
  call void @llvm.experimental.noalias.scope.decl(metadata !38)
  %i.ap = getelementptr i8, ptr %i.aj, i64 32
  %i.aq = load ptr, ptr %i.ap, align 8, !noalias !39 ; 2 uses
  %.not.i.i.i3.i = icmp eq ptr %i.aq, null
  %spec.select.i.i.i4.i = select i1 %.not.i.i.i3.i, ptr @_ZN7QString6_emptyE, ptr %i.aq
  %i.ar = getelementptr i8, ptr %i.aj, i64 40
  %i.as = load i64, ptr %i.ar, align 8, !noalias !39
  store i8 2, ptr %6, align 8, !alias.scope !38, !noalias !35
  %i.at = getelementptr inbounds nuw i8, ptr %6, i64 8
  store i64 %i.as, ptr %i.at, align 8, !alias.scope !38, !noalias !35
  %.sroa.2.0..sroa_idx.i.i5.i = getelementptr inbounds nuw i8, ptr %6, i64 16
  store ptr %spec.select.i.i.i4.i, ptr %.sroa.2.0..sroa_idx.i.i5.i, align 8, !alias.scope !38, !noalias !35
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #17, !noalias !40
  store ptr %5, ptr %i.b, align 16, !noalias !40
  %i.au = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr %6, ptr %i.au, align 8, !noalias !40
  %i.av = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store ptr null, ptr %i.av, align 16, !noalias !40
  invoke void @_ZN9QtPrivate12argToQStringE11QStringViewmPPKNS_7ArgBaseE(ptr dead_on_unwind nonnull writable sret(%class.QString) align 8 %14, i64 7, ptr nonnull @.str.5, i64 noundef 2, ptr noundef nonnull %i.b)
          to label %bb.t unwind label %_ZN17QArrayDataPointerIDsED2Ev.exit149

bb.t:                                             ; preds = %bb.s
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #17, !noalias !40
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #17, !noalias !35
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #17, !noalias !35
  %i.aw = load <2 x ptr>, ptr %14, align 16
end_hunk_0
begin_hunk_1_@_ZNK26LuaDebuggerFilesController20appendPathComponentsERK7QStringR5QListISt4pairIS0_S0_EE:bb.a

bb.cb:                                            ; preds = %bb.bv
  %i.jg = landingpad { ptr, i32 }
          cleanup
  br label %_ZN7QStringD2Ev.exit289

bb.cc:                                            ; preds = %_ZNK17QArrayDataPointerISt4pairI7QStringS1_EE11needsDetachEv.exit.thread.i.i.i.i.i270, %_ZNSt4pairI7QStringS0_EC2IRS0_S0_TnNSt9enable_ifIXaaclsr5_PCCPE22_MoveConstructiblePairIT_T0_EEclsr5_PCCPE30_ImplicitlyMoveConvertiblePairIS5_S6_EEEbE4typeELb1EEEOS5_OS6_.exit267
  %i.jh = landingpad { ptr, i32 }
          cleanup                                 ; 3 uses
  call void @_ZNSt4pairI7QStringS0_ED2Ev(ptr noundef nonnull align 8 dead_on_return(48) dereferenceable_or_null(48) %24) #17
  %i.ji = load ptr, ptr %25, align 16             ; 2 uses
  %.not.i.i.i286 = icmp eq ptr %i.ji, null
  br i1 %.not.i.i.i286, label %_ZN7QStringD2Ev.exit289, label %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i287

_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i287:   ; preds = %bb.cc
  %i.jj = atomicrmw add ptr %i.ji, i32 -1 acq_rel, align 4
  %.not.i.i288 = icmp eq i32 %i.jj, 1
  br i1 %.not.i.i288, label %bb.cd, label %_ZN7QStringD2Ev.exit289

bb.cd:                                            ; preds = %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i287
  %i.jk = load ptr, ptr %25, align 16
  call void @_ZN10QArrayData10deallocateEPS_xx(ptr noundef %i.jk, i64 noundef 2, i64 noundef 8) #17
  br label %_ZN7QStringD2Ev.exit289

_ZN7QStringD2Ev.exit289:                          ; preds = %bb.cd, %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i287, %bb.cc, %bb.cb
  %.pn75 = phi { ptr, i32 } [ %i.jg, %bb.cb ], [ %i.jh, %bb.cc ], [ %i.jh, %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i287 ], [ %i.jh, %bb.cd ]
  call void @llvm.lifetime.end.p0(ptr nonnull %25) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %24) #17
  br label %bb.dk

bb.ce:                                            ; preds = %.thread420, %_ZN7QStringD2Ev.exit285, %bb.bt
  %i.jl = phi ptr [ %i.hy, %_ZN7QStringD2Ev.exit285 ], [ %i.hy, %bb.bt ], [ %i.gn, %.thread420 ] ; 2 uses
  %.1 = phi i32 [ 1, %_ZN7QStringD2Ev.exit285 ], [ %.045, %bb.bt ], [ 0, %.thread420 ] ; 2 uses
  %i.jm = icmp slt i32 %.1, %i.e
  br i1 %i.jm, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.ce
  %i.jn = getelementptr inbounds nuw i8, ptr %10, i64 8
  %i.jo = getelementptr inbounds nuw i8, ptr %11, i64 8 ; 2 uses
  %i.jp = getelementptr inbounds nuw i8, ptr %26, i64 8
  %i.jq = getelementptr inbounds nuw i8, ptr %26, i64 16
  %i.jr = getelementptr inbounds nuw i8, ptr %27, i64 8
  %i.js = getelementptr inbounds nuw i8, ptr %27, i64 16
  %i.jt = getelementptr inbounds nuw i8, ptr %29, i64 8
  %i.ju = getelementptr inbounds nuw i8, ptr %29, i64 16
  %i.jv = getelementptr inbounds nuw i8, ptr %29, i64 24 ; 3 uses
  %i.jw = getelementptr inbounds nuw i8, ptr %29, i64 40
  %i.jx = getelementptr inbounds nuw i8, ptr %30, i64 16
  %i.jy = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.jz = zext nneg i32 %.1 to i64
  br label %bb.cf

._crit_edge:                                      ; preds = %_ZN7QStringD2Ev.exit345, %bb.ce
  %i.ka = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.kb = load i64, ptr %i.ka, align 8
  %i.kc = icmp ne i64 %i.kb, 0
  br label %bb.df

bb.cf:                                            ; preds = %.lr.ph, %_ZN7QStringD2Ev.exit345
  %indvars.iv = phi i64 [ %i.jz, %.lr.ph ], [ %indvars.iv.next, %_ZN7QStringD2Ev.exit345 ] ; 2 uses
  %i.kd = load ptr, ptr %i.jn, align 8
  %i.ke = getelementptr [24 x i8], ptr %i.kd, i64 %indvars.iv ; 8 uses
  %i.kf = load i64, ptr %i.jl, align 8            ; 2 uses
  %i.kg = icmp eq i64 %i.kf, 0
  br i1 %i.kg, label %bb.ch, label %bb.cg

bb.cg:                                            ; preds = %bb.cf
  %i.kh = load ptr, ptr %i.jo, align 8            ; 2 uses
  %.not.i.i.i290 = icmp eq ptr %i.kh, null
  %spec.select.i.i.i291 = select i1 %.not.i.i.i290, ptr @_ZN7QString6_emptyE, ptr %i.kh
  %i.ki = call noundef i32 @_ZN7QString14compare_helperEPK5QCharxPKcxN2Qt15CaseSensitivityE(ptr noundef nonnull %spec.select.i.i.i291, i64 noundef %i.kf, ptr noundef @.str.8, i64 noundef -1, i32 noundef 1) #17
  %i.kj = icmp eq i32 %i.ki, 0
  br i1 %i.kj, label %._crit_edge428, label %bb.cq

._crit_edge428:                                   ; preds = %bb.cg
  %.pre429 = load i64, ptr %i.jl, align 8
  br label %bb.ch

bb.ch:                                            ; preds = %._crit_edge428, %bb.cf
  %i.kk = phi i64 [ %.pre429, %._crit_edge428 ], [ 0, %bb.cf ]
  call void @llvm.lifetime.start.p0(ptr nonnull %26) #17
  %i.kl = load ptr, ptr %i.jo, align 8            ; 2 uses
  %.not.i.i.i292 = icmp eq ptr %i.kl, null
  %spec.select.i.i.i293 = select i1 %.not.i.i.i292, ptr @_ZN7QString6_emptyE, ptr %i.kl
  %i.km = call noundef i32 @_ZN7QString14compare_helperEPK5QCharxPKcxN2Qt15CaseSensitivityE(ptr noundef nonnull %spec.select.i.i.i293, i64 noundef %i.kk, ptr noundef @.str.8, i64 noundef -1, i32 noundef 1) #17
  %i.kn = icmp eq i32 %i.km, 0                    ; 2 uses
  br i1 %i.kn, label %bb.ci, label %bb.cj

bb.ci:                                            ; preds = %bb.ch
  call void @llvm.lifetime.start.p0(ptr nonnull %27) #17
  store ptr null, ptr %27, align 8
  store ptr @.str.9, ptr %i.jr, align 8
  store i64 3, ptr %i.js, align 8
  invoke void @_ZNK7QString3argERKS_i5QChar(ptr dead_on_unwind nonnull writable sret(%class.QString) align 8 %26, ptr noundef nonnull align 8 dereferenceable_or_null(24) %27, ptr noundef align 8 dereferenceable(24) %i.ke, i32 noundef 0, i16 32)
          to label %_ZN7QStringC2ERKS_.exit295 unwind label %bb.co

bb.cj:                                            ; preds = %bb.ch
  %i.ko = load ptr, ptr %i.ke, align 8            ; 3 uses
  store ptr %i.ko, ptr %26, align 8
  %i.kp = getelementptr inbounds nuw i8, ptr %i.ke, i64 8
  %i.kq = load ptr, ptr %i.kp, align 8
  store ptr %i.kq, ptr %i.jp, align 8
  %i.kr = getelementptr inbounds nuw i8, ptr %i.ke, i64 16
  %i.ks = load i64, ptr %i.kr, align 8
  store i64 %i.ks, ptr %i.jq, align 8
  %.not.i.i.i294 = icmp eq ptr %i.ko, null
  br i1 %.not.i.i.i294, label %_ZN7QStringC2ERKS_.exit295, label %bb.ck

bb.ck:                                            ; preds = %bb.cj
  %i.kt = atomicrmw add ptr %i.ko, i32 1 acq_rel, align 4 ; 0 uses
  br label %_ZN7QStringC2ERKS_.exit295

_ZN7QStringC2ERKS_.exit295:                       ; preds = %bb.ck, %bb.cj, %bb.ci
  %i.ku = call noundef align 8 dereferenceable(24) ptr @_ZN7QStringaSERKS_(ptr noundef nonnull align 8 dereferenceable_or_null(24) %11, ptr noundef nonnull align 8 dereferenceable(24) %26) #17 ; 0 uses
  %i.kv = load ptr, ptr %26, align 8              ; 2 uses
  %.not.i.i.i296 = icmp eq ptr %i.kv, null
  br i1 %.not.i.i.i296, label %_ZN7QStringD2Ev.exit299, label %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i297

_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i297:   ; preds = %_ZN7QStringC2ERKS_.exit295
  %i.kw = atomicrmw add ptr %i.kv, i32 -1 acq_rel, align 4
  %.not.i.i298 = icmp eq i32 %i.kw, 1
  br i1 %.not.i.i298, label %bb.cl, label %_ZN7QStringD2Ev.exit299

bb.cl:                                            ; preds = %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i297
  %i.kx = load ptr, ptr %26, align 8
  call void @_ZN10QArrayData10deallocateEPS_xx(ptr noundef %i.kx, i64 noundef 2, i64 noundef 8) #17
  br label %_ZN7QStringD2Ev.exit299

_ZN7QStringD2Ev.exit299:                          ; preds = %_ZN7QStringC2ERKS_.exit295, %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i297, %bb.cl
  br i1 %i.kn, label %.critedge87, label %.critedge89

.critedge87:                                      ; preds = %_ZN7QStringD2Ev.exit299
  %i.ky = load ptr, ptr %27, align 8              ; 2 uses
  %.not.i.i.i300 = icmp eq ptr %i.ky, null
  br i1 %.not.i.i.i300, label %_ZN17QArrayDataPointerIDsED2Ev.exit307, label %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i301

_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i301:   ; preds = %.critedge87
  %i.kz = atomicrmw add ptr %i.ky, i32 -1 acq_rel, align 4
  %.not.i.i302 = icmp eq i32 %i.kz, 1
  br i1 %.not.i.i302, label %bb.cm, label %_ZN17QArrayDataPointerIDsED2Ev.exit307

bb.cm:                                            ; preds = %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i301
  %i.la = load ptr, ptr %27, align 8
  call void @_ZN10QArrayData10deallocateEPS_xx(ptr noundef %i.la, i64 noundef 2, i64 noundef 8) #17
  br label %_ZN17QArrayDataPointerIDsED2Ev.exit307

_ZN17QArrayDataPointerIDsED2Ev.exit307:           ; preds = %bb.cm, %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i301, %.critedge87
  call void @llvm.lifetime.end.p0(ptr nonnull %27) #17
  br label %.critedge89

.critedge89:                                      ; preds = %_ZN7QStringD2Ev.exit299, %_ZN17QArrayDataPointerIDsED2Ev.exit307
  call void @llvm.lifetime.end.p0(ptr nonnull %26) #17
  br label %bb.cw

bb.cn:                                            ; preds = %_ZNK17QArrayDataPointerI7QStringE11needsDetachEv.exit.thread.i.i.i.i262, %_ZNK17QArrayDataPointerI7QStringE11needsDetachEv.exit.thread.i.i.i.i232, %_ZNK17QArrayDataPointerI7QStringE11needsDetachEv.exit.thread.i.i.i.i169, %_ZNK17QArrayDataPointerI7QStringE11needsDetachEv.exit.thread.i.i.i.i, %bb.ah, %bb.ba
  %i.lb = landingpad { ptr, i32 }
          cleanup
  br label %bb.dk

bb.co:                                            ; preds = %bb.ci
  %i.lc = landingpad { ptr, i32 }
          cleanup
  %i.ld = load ptr, ptr %27, align 8              ; 2 uses
  %.not.i.i.i308 = icmp eq ptr %i.ld, null
  br i1 %.not.i.i.i308, label %_ZN17QArrayDataPointerIDsED2Ev.exit315, label %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i309

_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i309:   ; preds = %bb.co
  %i.le = atomicrmw add ptr %i.ld, i32 -1 acq_rel, align 4
  %.not.i.i310 = icmp eq i32 %i.le, 1
  br i1 %.not.i.i310, label %bb.cp, label %_ZN17QArrayDataPointerIDsED2Ev.exit315

bb.cp:                                            ; preds = %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i309
  %i.lf = load ptr, ptr %27, align 8
  call void @_ZN10QArrayData10deallocateEPS_xx(ptr noundef %i.lf, i64 noundef 2, i64 noundef 8) #17
  br label %_ZN17QArrayDataPointerIDsED2Ev.exit315

_ZN17QArrayDataPointerIDsED2Ev.exit315:           ; preds = %bb.cp, %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i309, %bb.co
  call void @llvm.lifetime.end.p0(ptr nonnull %27) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %26) #17
  br label %bb.dk

bb.cq:                                            ; preds = %bb.cg
  call void @llvm.lifetime.start.p0(ptr nonnull %28) #17
  invoke void @_ZN7QString8fromUtf8E14QByteArrayView(ptr dead_on_unwind nonnull writable sret(%class.QString) align 8 %28, i64 1, ptr @.str.8)
          to label %.noexc316 unwind label %bb.ct

.noexc316:                                        ; preds = %bb.cq
  %i.lg = invoke noundef align 8 dereferenceable(24) ptr @_ZN7QString6appendERKS_(ptr noundef nonnull align 8 dereferenceable_or_null(24) %28, ptr noundef align 8 dereferenceable(24) %i.ke)
          to label %_ZplPKcRK7QString.exit unwind label %bb.cr ; 0 uses

bb.cr:                                            ; preds = %.noexc316
  %i.lh = landingpad { ptr, i32 }
          cleanup                                 ; 3 uses
  %i.li = load ptr, ptr %28, align 8              ; 2 uses
  %.not.i.i.i369 = icmp eq ptr %i.li, null
  br i1 %.not.i.i.i369, label %.body, label %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i370

_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i370:   ; preds = %bb.cr
  %i.lj = atomicrmw add ptr %i.li, i32 -1 acq_rel, align 4
  %.not.i.i371 = icmp eq i32 %i.lj, 1
  br i1 %.not.i.i371, label %bb.cv, label %.body

_ZplPKcRK7QString.exit:                           ; preds = %.noexc316
  %i.lk = invoke noundef align 8 dereferenceable(24) ptr @_ZN7QString6appendERKS_(ptr noundef nonnull align 8 dereferenceable_or_null(24) %11, ptr noundef nonnull align 8 dereferenceable(24) %28)
          to label %_ZN7QStringpLERKS_.exit unwind label %bb.cu ; 0 uses

_ZN7QStringpLERKS_.exit:                          ; preds = %_ZplPKcRK7QString.exit
  %i.ll = load ptr, ptr %28, align 8              ; 2 uses
  %.not.i.i.i318 = icmp eq ptr %i.ll, null
  br i1 %.not.i.i.i318, label %_ZN7QStringD2Ev.exit321, label %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i319

_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i319:   ; preds = %_ZN7QStringpLERKS_.exit
  %i.lm = atomicrmw add ptr %i.ll, i32 -1 acq_rel, align 4
  %.not.i.i320 = icmp eq i32 %i.lm, 1
  br i1 %.not.i.i320, label %bb.cs, label %_ZN7QStringD2Ev.exit321

bb.cs:                                            ; preds = %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i319
  %i.ln = load ptr, ptr %28, align 8
  call void @_ZN10QArrayData10deallocateEPS_xx(ptr noundef %i.ln, i64 noundef 2, i64 noundef 8) #17
  br label %_ZN7QStringD2Ev.exit321

_ZN7QStringD2Ev.exit321:                          ; preds = %_ZN7QStringpLERKS_.exit, %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i319, %bb.cs
  call void @llvm.lifetime.end.p0(ptr nonnull %28) #17
  br label %bb.cw

bb.ct:                                            ; preds = %bb.cq
  %i.lo = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.cu:                                            ; preds = %_ZplPKcRK7QString.exit
  %i.lp = landingpad { ptr, i32 }
          cleanup                                 ; 3 uses
  %i.lq = load ptr, ptr %28, align 8              ; 2 uses
  %.not.i.i.i322 = icmp eq ptr %i.lq, null
  br i1 %.not.i.i.i322, label %.body, label %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i323

_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i323:   ; preds = %bb.cu
  %i.lr = atomicrmw add ptr %i.lq, i32 -1 acq_rel, align 4
  %.not.i.i324 = icmp eq i32 %i.lr, 1
  br i1 %.not.i.i324, label %bb.cv, label %.body

bb.cv:                                            ; preds = %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i323, %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i370
  %.pn77.ph = phi { ptr, i32 } [ %i.lh, %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i370 ], [ %i.lp, %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i323 ]
  %i.ls = load ptr, ptr %28, align 8
  call void @_ZN10QArrayData10deallocateEPS_xx(ptr noundef %i.ls, i64 noundef 2, i64 noundef 8) #17
  br label %.body

.body:                                            ; preds = %bb.cv, %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i323, %bb.cu, %bb.ct, %bb.cr, %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i370
  %.pn77 = phi { ptr, i32 } [ %i.lp, %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i323 ], [ %i.lo, %bb.ct ], [ %i.lh, %bb.cr ], [ %i.lh, %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i370 ], [ %i.lp, %bb.cu ], [ %.pn77.ph, %bb.cv ]
  call void @llvm.lifetime.end.p0(ptr nonnull %28) #17
  br label %bb.dk

bb.cw:                                            ; preds = %_ZN7QStringD2Ev.exit321, %.critedge89
  call void @llvm.lifetime.start.p0(ptr nonnull %29) #17
  call void @llvm.lifetime.start.p0(ptr nonnull %30) #17
  invoke void @_ZN4QDir18toNativeSeparatorsERK7QString(ptr dead_on_unwind nonnull writable sret(%class.QString) align 8 %30, ptr noundef nonnull align 8 dereferenceable(24) %11)
          to label %bb.cx unwind label %bb.dc

bb.cx:                                            ; preds = %bb.cw
  %i.lt = load ptr, ptr %i.ke, align 8            ; 3 uses
  store ptr %i.lt, ptr %29, align 8
  %i.lu = getelementptr inbounds nuw i8, ptr %i.ke, i64 8
  %i.lv = load ptr, ptr %i.lu, align 8
  store ptr %i.lv, ptr %i.jt, align 8
  %i.lw = getelementptr inbounds nuw i8, ptr %i.ke, i64 16
  %i.lx = load i64, ptr %i.lw, align 8
  store i64 %i.lx, ptr %i.ju, align 8
  %.not.i.i.i.i326 = icmp eq ptr %i.lt, null
  br i1 %.not.i.i.i.i326, label %_ZNSt4pairI7QStringS0_EC2IRKS0_S0_TnNSt9enable_ifIXaaclsr5_PCCPE22_MoveConstructiblePairIT_T0_EEclsr5_PCCPE30_ImplicitlyMoveConvertiblePairIS6_S7_EEEbE4typeELb1EEEOS6_OS7_.exit, label %bb.cy

bb.cy:                                            ; preds = %bb.cx
  %i.ly = atomicrmw add ptr %i.lt, i32 1 acq_rel, align 4 ; 0 uses
  br label %_ZNSt4pairI7QStringS0_EC2IRKS0_S0_TnNSt9enable_ifIXaaclsr5_PCCPE22_MoveConstructiblePairIT_T0_EEclsr5_PCCPE30_ImplicitlyMoveConvertiblePairIS6_S7_EEEbE4typeELb1EEEOS6_OS7_.exit

_ZNSt4pairI7QStringS0_EC2IRKS0_S0_TnNSt9enable_ifIXaaclsr5_PCCPE22_MoveConstructiblePairIT_T0_EEclsr5_PCCPE30_ImplicitlyMoveConvertiblePairIS6_S7_EEEbE4typeELb1EEEOS6_OS7_.exit: ; preds = %bb.cx, %bb.cy
  %i.lz = load <2 x ptr>, ptr %30, align 16
  store <2 x ptr> %i.lz, ptr %i.jv, align 8
  %i.ma = load i64, ptr %i.jx, align 16
  store i64 %i.ma, ptr %i.jw, align 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) %30, i8 0, i64 24, i1 false)
  %i.mb = load i64, ptr %i.jy, align 8
  invoke void @_ZN9QtPrivate16QMovableArrayOpsISt4pairI7QStringS2_EE7emplaceIJS3_EEEvxDpOT_(ptr noundef align 8 dereferenceable_or_null(24) %2, i64 noundef %i.mb, ptr noundef nonnull align 8 dereferenceable(48) %29)
          to label %.noexc331 unwind label %bb.dd

.noexc331:                                        ; preds = %_ZNSt4pairI7QStringS0_EC2IRKS0_S0_TnNSt9enable_ifIXaaclsr5_PCCPE22_MoveConstructiblePairIT_T0_EEclsr5_PCCPE30_ImplicitlyMoveConvertiblePairIS6_S7_EEEbE4typeELb1EEEOS6_OS7_.exit
  %i.mc = load ptr, ptr %2, align 8               ; 2 uses
  %.not.i.i.i.i.i.i328 = icmp eq ptr %i.mc, null
  br i1 %.not.i.i.i.i.i.i328, label %_ZNK17QArrayDataPointerISt4pairI7QStringS1_EE11needsDetachEv.exit.thread.i.i.i.i.i330, label %_ZNK17QArrayDataPointerISt4pairI7QStringS1_EE11needsDetachEv.exit.i.i.i.i.i329

_ZNK17QArrayDataPointerISt4pairI7QStringS1_EE11needsDetachEv.exit.i.i.i.i.i329: ; preds = %.noexc331
  %i.md = load atomic i32, ptr %i.mc monotonic, align 4
  %i.me = icmp sgt i32 %i.md, 1
  br i1 %i.me, label %_ZNK17QArrayDataPointerISt4pairI7QStringS1_EE11needsDetachEv.exit.thread.i.i.i.i.i330, label %_ZN5QListISt4pairI7QStringS1_EE6appendEOS2_.exit333

_ZNK17QArrayDataPointerISt4pairI7QStringS1_EE11needsDetachEv.exit.thread.i.i.i.i.i330: ; preds = %_ZNK17QArrayDataPointerISt4pairI7QStringS1_EE11needsDetachEv.exit.i.i.i.i.i329, %.noexc331
  invoke void @_ZN17QArrayDataPointerISt4pairI7QStringS1_EE17reallocateAndGrowEN10QArrayData14GrowthPositionExPS3_(ptr noundef align 8 dereferenceable_or_null(24) %2, i32 noundef 0, i64 noundef 0, ptr noundef null)
          to label %_ZN5QListISt4pairI7QStringS1_EE6appendEOS2_.exit333 unwind label %bb.dd

_ZN5QListISt4pairI7QStringS1_EE6appendEOS2_.exit333: ; preds = %_ZNK17QArrayDataPointerISt4pairI7QStringS1_EE11needsDetachEv.exit.i.i.i.i.i329, %_ZNK17QArrayDataPointerISt4pairI7QStringS1_EE11needsDetachEv.exit.thread.i.i.i.i.i330
  %i.mf = load ptr, ptr %i.jv, align 8            ; 2 uses
  %.not.i.i.i.i334 = icmp eq ptr %i.mf, null
  br i1 %.not.i.i.i.i334, label %_ZN7QStringD2Ev.exit.i337, label %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i.i335

_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i.i335: ; preds = %_ZN5QListISt4pairI7QStringS1_EE6appendEOS2_.exit333
  %i.mg = atomicrmw add ptr %i.mf, i32 -1 acq_rel, align 4
  %.not.i.i.i336 = icmp eq i32 %i.mg, 1
  br i1 %.not.i.i.i336, label %bb.cz, label %_ZN7QStringD2Ev.exit.i337

bb.cz:                                            ; preds = %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i.i335
  %i.mh = load ptr, ptr %i.jv, align 8
  call void @_ZN10QArrayData10deallocateEPS_xx(ptr noundef %i.mh, i64 noundef 2, i64 noundef 8) #17
  br label %_ZN7QStringD2Ev.exit.i337

_ZN7QStringD2Ev.exit.i337:                        ; preds = %bb.cz, %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i.i335, %_ZN5QListISt4pairI7QStringS1_EE6appendEOS2_.exit333
  %i.mi = load ptr, ptr %29, align 8              ; 2 uses
  %.not.i.i.i1.i338 = icmp eq ptr %i.mi, null
  br i1 %.not.i.i.i1.i338, label %_ZNSt4pairI7QStringS0_ED2Ev.exit341, label %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i2.i339

_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i2.i339: ; preds = %_ZN7QStringD2Ev.exit.i337
  %i.mj = atomicrmw add ptr %i.mi, i32 -1 acq_rel, align 4
  %.not.i.i3.i340 = icmp eq i32 %i.mj, 1
  br i1 %.not.i.i3.i340, label %bb.da, label %_ZNSt4pairI7QStringS0_ED2Ev.exit341

bb.da:                                            ; preds = %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i2.i339
  %i.mk = load ptr, ptr %29, align 8
  call void @_ZN10QArrayData10deallocateEPS_xx(ptr noundef %i.mk, i64 noundef 2, i64 noundef 8) #17
  br label %_ZNSt4pairI7QStringS0_ED2Ev.exit341

_ZNSt4pairI7QStringS0_ED2Ev.exit341:              ; preds = %_ZN7QStringD2Ev.exit.i337, %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i2.i339, %bb.da
  %i.ml = load ptr, ptr %30, align 16             ; 2 uses
  %.not.i.i.i342 = icmp eq ptr %i.ml, null
  br i1 %.not.i.i.i342, label %_ZN7QStringD2Ev.exit345, label %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i343

_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i343:   ; preds = %_ZNSt4pairI7QStringS0_ED2Ev.exit341
  %i.mm = atomicrmw add ptr %i.ml, i32 -1 acq_rel, align 4
  %.not.i.i344 = icmp eq i32 %i.mm, 1
  br i1 %.not.i.i344, label %bb.db, label %_ZN7QStringD2Ev.exit345

bb.db:                                            ; preds = %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i343
  %i.mn = load ptr, ptr %30, align 16
  call void @_ZN10QArrayData10deallocateEPS_xx(ptr noundef %i.mn, i64 noundef 2, i64 noundef 8) #17
  br label %_ZN7QStringD2Ev.exit345

_ZN7QStringD2Ev.exit345:                          ; preds = %_ZNSt4pairI7QStringS0_ED2Ev.exit341, %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i343, %bb.db
  call void @llvm.lifetime.end.p0(ptr nonnull %30) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %29) #17
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32
  %exitcond.not = icmp eq i32 %lftr.wideiv, %i.e
  br i1 %exitcond.not, label %._crit_edge, label %bb.cf, !llvm.loop !34

bb.dc:                                            ; preds = %bb.cw
  %i.mo = landingpad { ptr, i32 }
          cleanup
  br label %_ZN7QStringD2Ev.exit349

bb.dd:                                            ; preds = %_ZNK17QArrayDataPointerISt4pairI7QStringS1_EE11needsDetachEv.exit.thread.i.i.i.i.i330, %_ZNSt4pairI7QStringS0_EC2IRKS0_S0_TnNSt9enable_ifIXaaclsr5_PCCPE22_MoveConstructiblePairIT_T0_EEclsr5_PCCPE30_ImplicitlyMoveConvertiblePairIS6_S7_EEEbE4typeELb1EEEOS6_OS7_.exit
  %i.mp = landingpad { ptr, i32 }
          cleanup                                 ; 3 uses
  call void @_ZNSt4pairI7QStringS0_ED2Ev(ptr noundef nonnull align 8 dead_on_return(48) dereferenceable_or_null(48) %29) #17
  %i.mq = load ptr, ptr %30, align 16             ; 2 uses
  %.not.i.i.i346 = icmp eq ptr %i.mq, null
  br i1 %.not.i.i.i346, label %_ZN7QStringD2Ev.exit349, label %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i347

_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i347:   ; preds = %bb.dd
  %i.mr = atomicrmw add ptr %i.mq, i32 -1 acq_rel, align 4
  %.not.i.i348 = icmp eq i32 %i.mr, 1
  br i1 %.not.i.i348, label %bb.de, label %_ZN7QStringD2Ev.exit349

bb.de:                                            ; preds = %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i347
  %i.ms = load ptr, ptr %30, align 16
  call void @_ZN10QArrayData10deallocateEPS_xx(ptr noundef %i.ms, i64 noundef 2, i64 noundef 8) #17
  br label %_ZN7QStringD2Ev.exit349

_ZN7QStringD2Ev.exit349:                          ; preds = %bb.de, %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i347, %bb.dd, %bb.dc
  %.pn81 = phi { ptr, i32 } [ %i.mo, %bb.dc ], [ %i.mp, %bb.dd ], [ %i.mp, %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i347 ], [ %i.mp, %bb.de ]
  call void @llvm.lifetime.end.p0(ptr nonnull %30) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %29) #17
  br label %bb.dk

bb.df:                                            ; preds = %bb.j, %._crit_edge
  %.063 = phi i1 [ %i.kc, %._crit_edge ], [ false, %bb.j ]
  %i.mt = load ptr, ptr %11, align 16             ; 2 uses
  %.not.i.i.i350 = icmp eq ptr %i.mt, null
  br i1 %.not.i.i.i350, label %_ZN7QStringD2Ev.exit353, label %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i351

_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i351:   ; preds = %bb.df
  %i.mu = atomicrmw add ptr %i.mt, i32 -1 acq_rel, align 4
  %.not.i.i352 = icmp eq i32 %i.mu, 1
  br i1 %.not.i.i352, label %bb.dg, label %_ZN7QStringD2Ev.exit353

bb.dg:                                            ; preds = %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i351
  %i.mv = load ptr, ptr %11, align 16
  call void @_ZN10QArrayData10deallocateEPS_xx(ptr noundef %i.mv, i64 noundef 2, i64 noundef 8) #17
  br label %_ZN7QStringD2Ev.exit353

_ZN7QStringD2Ev.exit353:                          ; preds = %bb.df, %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i351, %bb.dg
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #17
  %i.mw = load ptr, ptr %10, align 8              ; 2 uses
  %.not.i.i.i354 = icmp eq ptr %i.mw, null
  br i1 %.not.i.i.i354, label %_ZN5QListI7QStringED2Ev.exit, label %_ZN17QArrayDataPointerI7QStringE5derefEv.exit.i.i

_ZN17QArrayDataPointerI7QStringE5derefEv.exit.i.i: ; preds = %_ZN7QStringD2Ev.exit353
  %i.mx = atomicrmw add ptr %i.mw, i32 -1 acq_rel, align 4
  %.not.i.i355 = icmp eq i32 %i.mx, 1
  br i1 %.not.i.i355, label %bb.dh, label %_ZN5QListI7QStringED2Ev.exit

bb.dh:                                            ; preds = %_ZN17QArrayDataPointerI7QStringE5derefEv.exit.i.i
  %i.my = getelementptr inbounds nuw i8, ptr %10, i64 8
  %i.mz = load ptr, ptr %i.my, align 8            ; 2 uses
  %i.na = load i64, ptr %i.c, align 8
  %.idx.i.i.i = mul i64 %i.na, 24                 ; 2 uses
  %i.nb = getelementptr i8, ptr %i.mz, i64 %.idx.i.i.i
  %.not4.i.i.i.i.i.i = icmp eq i64 %.idx.i.i.i, 0
  br i1 %.not4.i.i.i.i.i.i, label %_ZN9QtPrivate16QGenericArrayOpsI7QStringE10destroyAllEv.exit.i.i, label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %bb.dh, %_ZSt8_DestroyI7QStringEvPT_.exit.i.i.i.i.i.i
  %.05.i.i.i.i.i.i = phi ptr [ %i.nf, %_ZSt8_DestroyI7QStringEvPT_.exit.i.i.i.i.i.i ], [ %i.mz, %bb.dh ] ; 3 uses
  %i.nc = load ptr, ptr %.05.i.i.i.i.i.i, align 8 ; 2 uses
  %.not.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.nc, null
  br i1 %.not.i.i.i.i.i.i.i.i.i.i, label %_ZSt8_DestroyI7QStringEvPT_.exit.i.i.i.i.i.i, label %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i.i.i.i.i.i.i.i

_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i
  %i.nd = atomicrmw add ptr %i.nc, i32 -1 acq_rel, align 4
  %.not.i.i.i.i.i.i.i.i.i = icmp eq i32 %i.nd, 1
  br i1 %.not.i.i.i.i.i.i.i.i.i, label %bb.di, label %_ZSt8_DestroyI7QStringEvPT_.exit.i.i.i.i.i.i

bb.di:                                            ; preds = %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i.i.i.i.i.i.i.i
  %i.ne = load ptr, ptr %.05.i.i.i.i.i.i, align 8
  call void @_ZN10QArrayData10deallocateEPS_xx(ptr noundef %i.ne, i64 noundef 2, i64 noundef 8) #17
  br label %_ZSt8_DestroyI7QStringEvPT_.exit.i.i.i.i.i.i

_ZSt8_DestroyI7QStringEvPT_.exit.i.i.i.i.i.i:     ; preds = %bb.di, %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i
  %i.nf = getelementptr i8, ptr %.05.i.i.i.i.i.i, i64 24 ; 2 uses
  %.not.i.i.i.i.i.i356 = icmp eq ptr %i.nf, %i.nb
  br i1 %.not.i.i.i.i.i.i356, label %_ZN9QtPrivate16QGenericArrayOpsI7QStringE10destroyAllEv.exit.i.i, label %.lr.ph.i.i.i.i.i.i, !llvm.loop !0

_ZN9QtPrivate16QGenericArrayOpsI7QStringE10destroyAllEv.exit.i.i: ; preds = %_ZSt8_DestroyI7QStringEvPT_.exit.i.i.i.i.i.i, %bb.dh
  %i.ng = load ptr, ptr %10, align 8
  call void @_ZN10QArrayData10deallocateEPS_xx(ptr noundef %i.ng, i64 noundef 24, i64 noundef 8) #17
  br label %_ZN5QListI7QStringED2Ev.exit

_ZN5QListI7QStringED2Ev.exit:                     ; preds = %_ZN7QStringD2Ev.exit353, %_ZN17QArrayDataPointerI7QStringE5derefEv.exit.i.i, %_ZN9QtPrivate16QGenericArrayOpsI7QStringE10destroyAllEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #17
  %i.nh = load ptr, ptr %9, align 8               ; 2 uses
  %.not.i.i.i357 = icmp eq ptr %i.nh, null
  br i1 %.not.i.i.i357, label %_ZN7QStringD2Ev.exit360, label %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i358

_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i358:   ; preds = %_ZN5QListI7QStringED2Ev.exit
end_hunk_1
