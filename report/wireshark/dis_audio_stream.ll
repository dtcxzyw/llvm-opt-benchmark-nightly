Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/wireshark/original/dis_audio_stream?download=true
inline.NumInlined: 326
inline.NumDeleted: 161
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@_ZN14DisAudioStream17prepareVisualDataEPK15_disstream_infoR7QString:bb.a
  br i1 %.not.i.i47, label %_ZN17QArrayDataPointerIdE17allocatedCapacityEv.exit.i49, label %_ZNK17QArrayDataPointerIdE11needsDetachEv.exit.i48

_ZNK17QArrayDataPointerIdE11needsDetachEv.exit.i48: ; preds = %bb.aa
  %i.cv = load atomic i32, ptr %i.cu monotonic, align 4
  %i.cw = icmp sgt i32 %i.cv, 1
  br i1 %i.cw, label %bb.ab, label %bb.ad

bb.ab:                                            ; preds = %_ZNK17QArrayDataPointerIdE11needsDetachEv.exit.i48
  %i.cx = getelementptr i8, ptr %i.cu, i64 8
  %i.cy = load i64, ptr %i.cx, align 8
  br label %_ZN17QArrayDataPointerIdE17allocatedCapacityEv.exit.i49

_ZN17QArrayDataPointerIdE17allocatedCapacityEv.exit.i49: ; preds = %bb.ab, %bb.aa
  %i.cz = phi i64 [ %i.cy, %bb.ab ], [ 0, %bb.aa ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #19
  %i.da = call noalias noundef ptr @_ZN10QArrayData8allocateEPPS_xxxNS_16AllocationOptionE(ptr noundef nonnull %i.b, i64 noundef 8, i64 noundef 8, i64 noundef %i.cz, i32 noundef 1) #19 ; 2 uses
  call void @llvm.assume(i1 true) [ "align"(ptr %i.da, i64 8) ]
  %i.db = load ptr, ptr %i.b, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #19
  %i.dc = load ptr, ptr %i.cr, align 8            ; 3 uses
  store ptr %i.db, ptr %i.cr, align 8
  %i.dd = getelementptr i8, ptr %0, i64 256
  store ptr %i.da, ptr %i.dd, align 8
  store i64 0, ptr %i.cs, align 8
  %.not.i.i.i50 = icmp eq ptr %i.dc, null
  br i1 %.not.i.i.i50, label %_ZN5QListIdE5clearEv.exit53, label %_ZN17QArrayDataPointerIdE5derefEv.exit.i.i51

_ZN17QArrayDataPointerIdE5derefEv.exit.i.i51:     ; preds = %_ZN17QArrayDataPointerIdE17allocatedCapacityEv.exit.i49
  %i.de = atomicrmw sub ptr %i.dc, i32 1 acq_rel, align 4
  %.not.i2.i52 = icmp eq i32 %i.de, 1
  br i1 %.not.i2.i52, label %bb.ac, label %_ZN5QListIdE5clearEv.exit53

bb.ac:                                            ; preds = %_ZN17QArrayDataPointerIdE5derefEv.exit.i.i51
  call void @_ZN10QArrayData10deallocateEPS_xx(ptr noundef nonnull %i.dc, i64 noundef 8, i64 noundef 8) #19
  br label %_ZN5QListIdE5clearEv.exit53

bb.ad:                                            ; preds = %_ZNK17QArrayDataPointerIdE11needsDetachEv.exit.i48
  store i64 0, ptr %i.cs, align 8
  br label %_ZN5QListIdE5clearEv.exit53

_ZN5QListIdE5clearEv.exit53:                      ; preds = %_ZN5QListIdE5clearEv.exit45, %_ZN17QArrayDataPointerIdE17allocatedCapacityEv.exit.i49, %_ZN17QArrayDataPointerIdE5derefEv.exit.i.i51, %bb.ac, %bb.ad
  %i.df = getelementptr i8, ptr %0, i64 272       ; 3 uses
  %i.dg = getelementptr i8, ptr %0, i64 288       ; 3 uses
  %i.dh = load i64, ptr %i.dg, align 8
  %.not.i54 = icmp eq i64 %i.dh, 0
  br i1 %.not.i54, label %_ZN5QListIdE5clearEv.exit61, label %bb.ae

bb.ae:                                            ; preds = %_ZN5QListIdE5clearEv.exit53
  %i.di = load ptr, ptr %i.df, align 8            ; 3 uses
  %.not.i.i55 = icmp eq ptr %i.di, null
  br i1 %.not.i.i55, label %_ZN17QArrayDataPointerIdE17allocatedCapacityEv.exit.i57, label %_ZNK17QArrayDataPointerIdE11needsDetachEv.exit.i56

_ZNK17QArrayDataPointerIdE11needsDetachEv.exit.i56: ; preds = %bb.ae
  %i.dj = load atomic i32, ptr %i.di monotonic, align 4
  %i.dk = icmp sgt i32 %i.dj, 1
  br i1 %i.dk, label %bb.af, label %bb.ah

bb.af:                                            ; preds = %_ZNK17QArrayDataPointerIdE11needsDetachEv.exit.i56
  %i.dl = getelementptr i8, ptr %i.di, i64 8
  %i.dm = load i64, ptr %i.dl, align 8
  br label %_ZN17QArrayDataPointerIdE17allocatedCapacityEv.exit.i57

_ZN17QArrayDataPointerIdE17allocatedCapacityEv.exit.i57: ; preds = %bb.af, %bb.ae
  %i.dn = phi i64 [ %i.dm, %bb.af ], [ 0, %bb.ae ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #19
  %i.do = call noalias noundef ptr @_ZN10QArrayData8allocateEPPS_xxxNS_16AllocationOptionE(ptr noundef nonnull %i.a, i64 noundef 8, i64 noundef 8, i64 noundef %i.dn, i32 noundef 1) #19 ; 2 uses
  call void @llvm.assume(i1 true) [ "align"(ptr %i.do, i64 8) ]
  %i.dp = load ptr, ptr %i.a, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #19
  %i.dq = load ptr, ptr %i.df, align 8            ; 3 uses
  store ptr %i.dp, ptr %i.df, align 8
  %i.dr = getelementptr i8, ptr %0, i64 280
  store ptr %i.do, ptr %i.dr, align 8
  store i64 0, ptr %i.dg, align 8
  %.not.i.i.i58 = icmp eq ptr %i.dq, null
  br i1 %.not.i.i.i58, label %_ZN5QListIdE5clearEv.exit61, label %_ZN17QArrayDataPointerIdE5derefEv.exit.i.i59

_ZN17QArrayDataPointerIdE5derefEv.exit.i.i59:     ; preds = %_ZN17QArrayDataPointerIdE17allocatedCapacityEv.exit.i57
  %i.ds = atomicrmw sub ptr %i.dq, i32 1 acq_rel, align 4
  %.not.i2.i60 = icmp eq i32 %i.ds, 1
  br i1 %.not.i2.i60, label %bb.ag, label %_ZN5QListIdE5clearEv.exit61

bb.ag:                                            ; preds = %_ZN17QArrayDataPointerIdE5derefEv.exit.i.i59
  call void @_ZN10QArrayData10deallocateEPS_xx(ptr noundef nonnull %i.dq, i64 noundef 8, i64 noundef 8) #19
  br label %_ZN5QListIdE5clearEv.exit61

bb.ah:                                            ; preds = %_ZNK17QArrayDataPointerIdE11needsDetachEv.exit.i56
  store i64 0, ptr %i.dg, align 8
  br label %_ZN5QListIdE5clearEv.exit61

bb.ai:                                            ; preds = %bb.a
  %i.dt = load i32, ptr %i.i, align 4             ; 3 uses
  %i.du = getelementptr i8, ptr %0, i64 64
  store i32 %i.dt, ptr %i.du, align 8
  %i.dv = load i32, ptr %i.j, align 4             ; 3 uses
  %i.dw = getelementptr i8, ptr %0, i64 68
  store i32 %i.dv, ptr %i.dw, align 4
  %.not = icmp eq i32 %i.dt, 0
  %.not5 = icmp eq i32 %i.dv, 0
  %or.cond = select i1 %.not, i1 true, i1 %.not5
  br i1 %or.cond, label %bb.ak, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  %i.dx = getelementptr i8, ptr %0, i64 32
  %i.dy = load i64, ptr %i.dx, align 8
  %i.dz = sitofp i64 %i.dy to double
  %i.ea = zext i32 %i.dv to i64
  %i.eb = zext i32 %i.dt to i64
  %i.ec = shl nuw nsw i64 %i.eb, 1
  %i.ed = mul i64 %i.ec, %i.ea
  %i.ee = uitofp i64 %i.ed to double
  %i.ef = fdiv double %i.dz, %i.ee
  br label %bb.ak

bb.ak:                                            ; preds = %bb.ai, %bb.aj
  %i.eg = phi double [ %i.ef, %bb.aj ], [ 0.000000e+00, %bb.ai ]
  %i.eh = getelementptr i8, ptr %0, i64 72
  store double %i.eg, ptr %i.eh, align 8
  tail call void @_ZN14DisAudioStream15buildVisualDataEPK15_disstream_info(ptr noundef align 8 dereferenceable_or_null(296) %0, ptr noundef %1)
  br label %_ZN5QListIdE5clearEv.exit61

_ZN5QListIdE5clearEv.exit61:                      ; preds = %bb.ah, %bb.ag, %_ZN17QArrayDataPointerIdE5derefEv.exit.i.i59, %_ZN17QArrayDataPointerIdE17allocatedCapacityEv.exit.i57, %_ZN5QListIdE5clearEv.exit53, %bb.ak
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i) #19
  ret i1 %i.k
}

; Function Attrs: mustprogress null_pointer_is_valid sspstrong uwtable
define noundef zeroext i1 @_ZN14DisAudioStream13playDisStreamEPK15_disstream_infoR7QString(ptr noundef align 8 dereferenceable_or_null(296) %0, ptr noundef %1, ptr nofree noundef align 8 captures(none) dereferenceable(24) %2) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca { i64, i64 }, align 8             ; 5 uses
  %i.b = alloca { i64, i64 }, align 8             ; 5 uses
  %3 = alloca %class.QByteArray, align 16         ; 24 uses
  %i.c = alloca i32, align 4                      ; 5 uses
  %i.d = alloca i32, align 4                      ; 5 uses
  %4 = alloca %class.QAudioFormat, align 8        ; 12 uses
  %5 = alloca %class.QByteArray, align 16         ; 17 uses
  %6 = alloca %class.QByteArray, align 16         ; 8 uses
  %7 = alloca %class.QAudioDevice, align 8        ; 10 uses
  %8 = alloca %class.QAudioFormat, align 8        ; 9 uses
  %9 = alloca %class.QByteArray, align 16         ; 19 uses
  %10 = alloca %class.QString, align 16           ; 8 uses
  %11 = alloca %"class.QMetaObject::Connection", align 8 ; 2 uses
  %12 = alloca %class.QString, align 16           ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #19
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #19
  %i.e = call noundef zeroext i1 @_ZN14DisAudioStream11decodeToPcmEPK15_disstream_infoR7QStringRjS5_(ptr noundef align 8 dereferenceable_or_null(296) %0, ptr noundef %1, ptr noundef align 8 dereferenceable(24) %2, ptr noundef nonnull align 4 dereferenceable(4) %i.c, ptr noundef nonnull align 4 dereferenceable(4) %i.d)
  br i1 %i.e, label %bb.b, label %bb.cj

bb.b:                                             ; preds = %bb.a
  %i.f = load i32, ptr %i.c, align 4              ; 4 uses
  %i.g = getelementptr i8, ptr %0, i64 64         ; 3 uses
  store i32 %i.f, ptr %i.g, align 8
  %i.h = load i32, ptr %i.d, align 4              ; 2 uses
  %i.i = getelementptr i8, ptr %0, i64 68         ; 3 uses
  store i32 %i.h, ptr %i.i, align 4
  tail call void @_ZN14DisAudioStream15buildVisualDataEPK15_disstream_info(ptr noundef align 8 dereferenceable_or_null(296) %0, ptr noundef %1)
  tail call void @_ZN14DisAudioStream12stopPlaybackEb(ptr noundef align 8 dereferenceable_or_null(296) %0, i1 noundef zeroext true)
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #19
  %i.j = getelementptr inbounds nuw i8, ptr %4, i64 16
  store i64 0, ptr %i.j, align 8
  store i64 0, ptr %4, align 8
  %i.k = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i32 %i.f, ptr %i.k, align 8
  %i.l = trunc i32 %i.h to i16
  %i.m = getelementptr inbounds nuw i8, ptr %4, i64 2
  store i16 %i.l, ptr %i.m, align 2
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #19
  %i.n = getelementptr i8, ptr %0, i64 16         ; 2 uses
  %i.o = getelementptr i8, ptr %0, i64 24
  %i.p = load <2 x ptr>, ptr %i.n, align 8
  %i.q = load ptr, ptr %i.n, align 8              ; 2 uses
  store <2 x ptr> %i.p, ptr %5, align 16
  %i.r = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 7 uses
  %i.s = getelementptr i8, ptr %0, i64 32         ; 3 uses
  %i.t = load i64, ptr %i.s, align 8
  store i64 %i.t, ptr %i.r, align 16
  %.not.i.i.i = icmp eq ptr %i.q, null
  br i1 %.not.i.i.i, label %_ZN10QByteArrayC2ERKS_.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.u = atomicrmw add ptr %i.q, i32 1 acq_rel, align 4 ; 0 uses
  br label %_ZN10QByteArrayC2ERKS_.exit

_ZN10QByteArrayC2ERKS_.exit:                      ; preds = %bb.b, %bb.c
  %.not = icmp eq ptr %1, null
  %.pr.pre117 = load i32, ptr %i.g, align 8       ; 4 uses
  br i1 %.not, label %bb.o, label %bb.d

bb.d:                                             ; preds = %_ZN10QByteArrayC2ERKS_.exit
  %.not33 = icmp eq i32 %.pr.pre117, 0
  br i1 %.not33, label %.thread, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.v = load i32, ptr %i.i, align 4              ; 2 uses
  %.not34 = icmp eq i32 %i.v, 0
  br i1 %.not34, label %.thread, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.w = getelementptr i8, ptr %0, i64 80
  %i.x = load double, ptr %i.w, align 8           ; 4 uses
  %i.y = fcmp ogt double %i.x, 0.000000e+00
  br i1 %i.y, label %.then.cont, label %.thread150

.then.cont:                                       ; preds = %bb.f
  %i.z = getelementptr i8, ptr %1, i64 136
  %.val49 = load i64, ptr %i.z, align 8
  %i.aa = getelementptr i8, ptr %1, i64 144
  %.val50 = load i32, ptr %i.aa, align 8
  %i.ab = sitofp i64 %.val49 to double
  %i.ac = getelementptr i8, ptr %1, i64 152
  %.val = load i64, ptr %i.ac, align 8
  %i.ad = getelementptr i8, ptr %1, i64 160
  %.val48 = load i32, ptr %i.ad, align 8
  %i.ae = sitofp i64 %.val to double
  %i.af = insertelement <2 x i32> poison, i32 %.val50, i64 0
  %i.ag = insertelement <2 x i32> %i.af, i32 %.val48, i64 1
  %i.ah = sitofp <2 x i32> %i.ag to <2 x double>
  %i.ai = fdiv <2 x double> %i.ah, splat (double 1.000000e+09) ; 2 uses
  %i.aj = extractelement <2 x double> %i.ai, i64 0
  %i.ak = fadd double %i.aj, %i.ab                ; 3 uses
  %i.al = extractelement <2 x double> %i.ai, i64 1
  %i.am = fadd double %i.al, %i.ae                ; 3 uses
  %i.an = fcmp olt double %i.am, %i.x             ; 2 uses
  %i.ao = select i1 %i.an, double %i.am, double %i.x
  %13 = fcmp uge double %i.ak, %i.ao
  %.mux = select i1 %i.an, double %i.am, double %i.x
  %i.ap = select i1 %13, double %i.ak, double %.mux
  %i.aq = fsub double %i.ap, %i.ak
  %i.ar = uitofp i32 %.pr.pre117 to double
  %i.as = fmul double %i.aq, %i.ar
  %i.at = tail call double @llvm.floor.f64(double %i.as)
  %i.au = fptosi double %i.at to i64
  %i.av = load i64, ptr %i.s, align 8
  %i.aw = zext i32 %i.v to i64
  %i.ax = shl nuw nsw i64 %i.aw, 1                ; 2 uses
  %i.ay = udiv i64 %i.av, %i.ax
  %i.az = tail call i64 @llvm.smin.i64(i64 %i.ay, i64 %i.au)
  %i.ba = tail call noundef i64 @llvm.smax.i64(i64 %i.az, i64 0)
  %i.bb = mul i64 %i.ax, %i.ba                    ; 3 uses
  %i.bc = icmp sgt i64 %i.bb, 0
  %i.bd = load i64, ptr %i.r, align 16
  %i.be = icmp slt i64 %i.bb, %i.bd               ; 2 uses
  %or.cond = select i1 %i.bc, i1 %i.be, i1 false
  br i1 %or.cond, label %bb.g, label %bb.k

bb.g:                                             ; preds = %.then.cont
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #19
  invoke void @_ZNK10QByteArray3midExx(ptr dead_on_unwind nonnull writable sret(%class.QByteArray) align 8 %6, ptr noundef nonnull align 8 dereferenceable_or_null(24) %5, i64 noundef %i.bb, i64 noundef -1)
          to label %bb.h unwind label %bb.j

bb.h:                                             ; preds = %bb.g
  %i.bf = load <2 x ptr>, ptr %6, align 16
  %i.bg = load <2 x ptr>, ptr %5, align 16
  %i.bh = load ptr, ptr %5, align 16              ; 2 uses
  store <2 x ptr> %i.bf, ptr %5, align 16
  store <2 x ptr> %i.bg, ptr %6, align 16
  %i.bi = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 2 uses
  %i.bj = load i64, ptr %i.r, align 16
  %i.bk = load i64, ptr %i.bi, align 16
  store i64 %i.bk, ptr %i.r, align 16
  store i64 %i.bj, ptr %i.bi, align 16
  %.not.i.i.i51 = icmp eq ptr %i.bh, null
  br i1 %.not.i.i.i51, label %_ZN10QByteArrayD2Ev.exit, label %_ZN17QArrayDataPointerIcE5derefEv.exit.i.i

_ZN17QArrayDataPointerIcE5derefEv.exit.i.i:       ; preds = %bb.h
  %i.bl = atomicrmw sub ptr %i.bh, i32 1 acq_rel, align 4
  %.not.i.i = icmp eq i32 %i.bl, 1
  br i1 %.not.i.i, label %bb.i, label %_ZN10QByteArrayD2Ev.exit

bb.i:                                             ; preds = %_ZN17QArrayDataPointerIcE5derefEv.exit.i.i
  %i.bm = load ptr, ptr %6, align 16
  call void @_ZN10QArrayData10deallocateEPS_xx(ptr noundef %i.bm, i64 noundef 1, i64 noundef 8) #19
  br label %_ZN10QByteArrayD2Ev.exit

_ZN10QByteArrayD2Ev.exit:                         ; preds = %bb.h, %_ZN17QArrayDataPointerIcE5derefEv.exit.i.i, %bb.i
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #19
  br label %bb.n

bb.j:                                             ; preds = %bb.g
  %i.bn = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #19
  br label %bb.ch

bb.k:                                             ; preds = %.then.cont
  br i1 %i.be, label %bb.n, label %bb.l

bb.l:                                             ; preds = %bb.k
  invoke void @_ZN10QByteArray5clearEv(ptr noundef nonnull align 8 dereferenceable_or_null(24) %5)
          to label %bb.n unwind label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.bo = landingpad { ptr, i32 }
          cleanup
  br label %bb.ch

bb.n:                                             ; preds = %bb.k, %bb.l, %_ZN10QByteArrayD2Ev.exit
  %.pr.pre = load i32, ptr %i.g, align 8
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %_ZN10QByteArrayC2ERKS_.exit
  %.pr = phi i32 [ %.pr.pre, %bb.n ], [ %.pr.pre117, %_ZN10QByteArrayC2ERKS_.exit ] ; 2 uses
  %.not39 = icmp eq i32 %.pr, 0
  br i1 %.not39, label %.thread, label %.thread150

.thread150:                                       ; preds = %bb.f, %bb.o
  %.pr153 = phi i32 [ %.pr, %bb.o ], [ %.pr.pre117, %bb.f ]
  %.pr109 = load i32, ptr %i.i, align 4           ; 2 uses
  %.not40 = icmp eq i32 %.pr109, 0
  br i1 %.not40, label %.thread, label %bb.p

bb.p:                                             ; preds = %.thread150
  %i.bp = load i64, ptr %i.r, align 16
  %i.bq = sitofp i64 %i.bp to double
  %i.br = zext i32 %.pr109 to i64
  %i.bs = zext i32 %.pr153 to i64
  %i.bt = shl nuw nsw i64 %i.bs, 1
  %i.bu = mul i64 %i.bt, %i.br
  %i.bv = uitofp i64 %i.bu to double
  %i.bw = fdiv double %i.bq, %i.bv
  br label %.thread

.thread:                                          ; preds = %bb.e, %bb.d, %bb.o, %.thread150, %bb.p
  %i.bx = phi double [ %i.bw, %bb.p ], [ 0.000000e+00, %.thread150 ], [ 0.000000e+00, %bb.o ], [ 0.000000e+00, %bb.d ], [ 0.000000e+00, %bb.e ]
  %i.by = getelementptr i8, ptr %0, i64 72        ; 2 uses
  store double %i.bx, ptr %i.by, align 8
  store i16 2, ptr %4, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #19
  invoke void @_ZN13QMediaDevices18defaultAudioOutputEv(ptr dead_on_unwind nonnull writable sret(%class.QAudioDevice) align 8 %7)
          to label %bb.q unwind label %bb.ay

bb.q:                                             ; preds = %.thread
  %i.bz = invoke noundef zeroext i1 @_ZNK12QAudioDevice17isFormatSupportedERK12QAudioFormat(ptr noundef nonnull align 8 dereferenceable_or_null(8) %7, ptr noundef nonnull align 8 dereferenceable(24) %4)
          to label %bb.r unwind label %bb.az

bb.r:                                             ; preds = %bb.q
  br i1 %i.bz, label %bb.bf, label %bb.s

bb.s:                                             ; preds = %bb.r
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #19
  invoke void @_ZNK12QAudioDevice15preferredFormatEv(ptr dead_on_unwind nonnull writable sret(%class.QAudioFormat) align 8 %8, ptr noundef nonnull align 8 dereferenceable_or_null(8) %7)
          to label %bb.t unwind label %bb.ba

bb.t:                                             ; preds = %bb.s
  %i.ca = load i16, ptr %8, align 8
  %.off = add i16 %i.ca, -1
  %switch = icmp ult i16 %.off, 4
  br i1 %switch, label %bb.u, label %bb.bd

bb.u:                                             ; preds = %bb.t
  %i.cb = getelementptr inbounds nuw i8, ptr %8, i64 8
  %i.cc = load i32, ptr %i.cb, align 8            ; 2 uses
  %i.cd = icmp sgt i32 %i.cc, 0
  br i1 %i.cd, label %bb.v, label %bb.bd

bb.v:                                             ; preds = %bb.u
  %i.ce = getelementptr inbounds nuw i8, ptr %8, i64 2
  %i.cf = load i16, ptr %i.ce, align 2            ; 2 uses
  %i.cg = sext i16 %i.cf to i32                   ; 3 uses
  %.off113 = add nsw i32 %i.cg, -1
  %switch114 = icmp ult i32 %.off113, 2
  br i1 %switch114, label %bb.w, label %bb.bd

bb.w:                                             ; preds = %bb.v
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #19
  call void @llvm.experimental.noalias.scope.decl(metadata !16)
  %i.ch = icmp eq i32 %i.f, 0
  br i1 %i.ch, label %.loopexit.sink.split.i, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.ci = load i64, ptr %i.s, align 8, !noalias !16 ; 2 uses
  %i.cj = lshr i64 %i.ci, 1                       ; 2 uses
  %i.ck = icmp eq i64 %i.cj, 0
  %i.cl = icmp ugt i64 %i.ci, 4294967295
  %or.cond72.i = or i1 %i.cl, %i.ck
  br i1 %or.cond72.i, label %.loopexit.sink.split.i, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.cm = trunc nuw nsw i64 %i.cj to i32          ; 2 uses
  %i.cn = uitofp nneg i32 %i.cm to double
  %i.co = uitofp nneg i32 %i.cc to double         ; 3 uses
  %i.cp = fmul nnan double %i.co, %i.cn
  %i.cq = uitofp i32 %i.f to double               ; 3 uses
  %i.cr = fdiv double %i.cp, %i.cq
  %i.cs = call i64 @lround(double noundef %i.cr) #19, !noalias !16
  %i.ct = trunc i64 %i.cs to i32
  %.sroa.speculated65.i = call i32 @llvm.smax.i32(i32 %i.ct, i32 1) ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) dereferenceable_or_null(24) %9, i8 0, i64 24, i1 false), !alias.scope !16
  %i.cu = mul nuw i32 %.sroa.speculated65.i, %i.cg
  %i.cv = sext i32 %i.cu to i64
  %i.cw = shl nsw i64 %i.cv, 1
  invoke void @_ZN10QByteArray6resizeEx(ptr noundef nonnull align 8 dereferenceable_or_null(24) %9, i64 noundef %i.cw)
          to label %bb.z unwind label %bb.aa

bb.z:                                             ; preds = %bb.y
  %i.cx = load ptr, ptr %i.o, align 8, !noalias !16 ; 2 uses
  %.not.i.i.i52 = icmp eq ptr %i.cx, null
  %spec.select.i.i.i = select i1 %.not.i.i.i52, ptr @_ZN10QByteArray6_emptyE, ptr %i.cx ; 4 uses
  %i.cy = load ptr, ptr %9, align 16, !alias.scope !16 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.cy, null
  br i1 %.not.i.i.i.i, label %_ZNK17QArrayDataPointerIcE11needsDetachEv.exit.thread.i.i.i, label %_ZNK17QArrayDataPointerIcE11needsDetachEv.exit.i.i.i

_ZNK17QArrayDataPointerIcE11needsDetachEv.exit.i.i.i: ; preds = %bb.z
  %i.cz = load atomic i32, ptr %i.cy monotonic, align 4
  %i.da = icmp sgt i32 %i.cz, 1
  br i1 %i.da, label %_ZNK17QArrayDataPointerIcE11needsDetachEv.exit.thread.i.i.i, label %_ZN10QByteArray4dataEv.exit.i

_ZNK17QArrayDataPointerIcE11needsDetachEv.exit.thread.i.i.i: ; preds = %_ZNK17QArrayDataPointerIcE11needsDetachEv.exit.i.i.i, %bb.z
  %i.db = getelementptr inbounds nuw i8, ptr %9, i64 16
  %i.dc = load i64, ptr %i.db, align 16, !alias.scope !16
  invoke void @_ZN10QByteArray11reallocDataExN10QArrayData16AllocationOptionE(ptr noundef nonnull align 8 dereferenceable_or_null(24) %9, i64 noundef %i.dc, i32 noundef 1)
          to label %_ZN10QByteArray4dataEv.exit.i unwind label %bb.ab

_ZN10QByteArray4dataEv.exit.i:                    ; preds = %_ZNK17QArrayDataPointerIcE11needsDetachEv.exit.thread.i.i.i, %_ZNK17QArrayDataPointerIcE11needsDetachEv.exit.i.i.i
  %i.dd = getelementptr inbounds nuw i8, ptr %9, i64 8
  %i.de = load ptr, ptr %i.dd, align 8, !alias.scope !16 ; 2 uses
  %i.df = add nsw i32 %i.cm, -1                   ; 4 uses
  %i.dg = icmp eq i16 %i.cf, 2
  %wide.trip.count80.i = zext nneg i32 %.sroa.speculated65.i to i64 ; 2 uses
  br i1 %i.dg, label %_ZN10QByteArray4dataEv.exit.split.us.i, label %_ZN10QByteArray4dataEv.exit.split.i

_ZN10QByteArray4dataEv.exit.split.us.i:           ; preds = %_ZN10QByteArray4dataEv.exit.i, %_ZN10QByteArray4dataEv.exit.split.us.i
  %indvars.iv76.i = phi i64 [ %indvars.iv.next77.i, %_ZN10QByteArray4dataEv.exit.split.us.i ], [ 0, %_ZN10QByteArray4dataEv.exit.i ] ; 3 uses
  %i.dh = trunc nuw nsw i64 %indvars.iv76.i to i32
  %i.di = uitofp nneg i32 %i.dh to double
  %i.dj = fmul nnan double %i.cq, %i.di
  %i.dk = fdiv double %i.dj, %i.co                ; 2 uses
end_hunk_0
