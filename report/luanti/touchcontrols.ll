Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/luanti/original/touchcontrols?download=true
inline.NumInlined: 1332
inline.NumDeleted: 676
loop-unroll.NumCompletelyUnrolled: 4
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 5
begin_hunk_0_@_ZN13TouchControls4stepEf:bb.a
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !100 ; 2 uses
  %.not17.i = icmp eq ptr %i.z, %i.ab
  br i1 %.not17.i, label %_ZN13TouchControls11buttonsStepERSt6vectorI11button_infoSaIS1_EEf.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.d
  %i.ac = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %6, i64 16
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 16
  br label %bb.e

bb.e:                                             ; preds = %bb.j, %.lr.ph.i
  %.sroa.014.018.i = phi ptr [ %i.z, %.lr.ph.i ], [ %i.ax, %bb.j ] ; 7 uses
  %i.af = load i8, ptr %.sroa.014.018.i, align 8, !tbaa !101
  %switch.i = icmp ult i8 %i.af, 2
  br i1 %switch.i, label %bb.j, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ag = getelementptr inbounds nuw i8, ptr %.sroa.014.018.i, i64 16
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !107
  %i.ai = getelementptr inbounds nuw i8, ptr %.sroa.014.018.i, i64 24
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !107
  %i.ak = icmp eq ptr %i.ah, %i.aj
  br i1 %i.ak, label %bb.j, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.al = getelementptr inbounds nuw i8, ptr %.sroa.014.018.i, i64 4 ; 3 uses
  %i.am = load float, ptr %i.al, align 4, !tbaa !106
  %i.an = fadd nsz float %1, %i.am                ; 2 uses
  store float %i.an, ptr %i.al, align 4, !tbaa !106
  %i.ao = fcmp nsz olt float %i.an, 3.330000e-01
  br i1 %i.ao, label %bb.j, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ap = getelementptr inbounds nuw i8, ptr %.sroa.014.018.i, i64 8
  %i.aq = load i32, ptr %i.ap, align 8, !tbaa !96 ; 2 uses
  %.not.i.i = icmp eq i32 %i.aq, 0
  br i1 %.not.i.i, label %_ZN13TouchControls16buttonEmitActionER11button_infob.exit.i, label %bb.i

bb.i:                                             ; preds = %bb.h
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #22
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(44) %i.ac, i8 0, i64 44, i1 false)
  store i32 11, ptr %6, align 8, !tbaa !22
  store i32 1, ptr %i.ac, align 8, !tbaa !23
  %i.ar = zext i32 %i.aq to i64
  store i64 %i.ar, ptr %i.ad, align 8, !tbaa !23
  %i.as = load ptr, ptr %i.ae, align 8, !tbaa !81 ; 2 uses
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !83
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 16
  %i.av = load ptr, ptr %i.au, align 8
  %i.aw = call noundef zeroext i1 %i.av(ptr noundef nonnull align 8 dereferenceable(8) %i.as, ptr noundef nonnull align 8 dereferenceable(56) %6), !inline_history !331 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #22
  br label %_ZN13TouchControls16buttonEmitActionER11button_infob.exit.i

_ZN13TouchControls16buttonEmitActionER11button_infob.exit.i: ; preds = %bb.i, %bb.h
  call void @_ZN13TouchControls16buttonEmitActionER11button_infob(ptr noundef nonnull readonly align 8 dereferenceable(712) %0, ptr noundef nonnull align 8 dereferenceable(128) %.sroa.014.018.i, i1 noundef zeroext true)
  store float 0.000000e+00, ptr %i.al, align 4, !tbaa !106
  br label %bb.j

bb.j:                                             ; preds = %_ZN13TouchControls16buttonEmitActionER11button_infob.exit.i, %bb.g, %bb.f, %bb.e
  %i.ax = getelementptr inbounds nuw i8, ptr %.sroa.014.018.i, i64 128 ; 2 uses
  %.not.i = icmp eq ptr %i.ax, %i.ab
  br i1 %.not.i, label %_ZN13TouchControls11buttonsStepERSt6vectorI11button_infoSaIS1_EEf.exit, label %bb.e

_ZN13TouchControls11buttonsStepERSt6vectorI11button_infoSaIS1_EEf.exit: ; preds = %bb.j, %bb.d
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 472
  %i.az = load ptr, ptr %i.ay, align 8, !tbaa !100 ; 2 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 480
  %i.bb = load ptr, ptr %i.ba, align 8, !tbaa !100 ; 2 uses
  %.not17.i6 = icmp eq ptr %i.az, %i.bb
  br i1 %.not17.i6, label %_ZN13TouchControls11buttonsStepERSt6vectorI11button_infoSaIS1_EEf.exit16, label %.lr.ph.i7

.lr.ph.i7:                                        ; preds = %_ZN13TouchControls11buttonsStepERSt6vectorI11button_infoSaIS1_EEf.exit
  %i.bc = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 2 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 16
  br label %bb.k

bb.k:                                             ; preds = %bb.p, %.lr.ph.i7
  %.sroa.014.018.i9 = phi ptr [ %i.az, %.lr.ph.i7 ], [ %i.bx, %bb.p ] ; 7 uses
  %i.bf = load i8, ptr %.sroa.014.018.i9, align 8, !tbaa !101
  %switch.i10 = icmp ult i8 %i.bf, 2
  br i1 %switch.i10, label %bb.p, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.bg = getelementptr inbounds nuw i8, ptr %.sroa.014.018.i9, i64 16
  %i.bh = load ptr, ptr %i.bg, align 8, !tbaa !107
  %i.bi = getelementptr inbounds nuw i8, ptr %.sroa.014.018.i9, i64 24
  %i.bj = load ptr, ptr %i.bi, align 8, !tbaa !107
  %i.bk = icmp eq ptr %i.bh, %i.bj
  br i1 %i.bk, label %bb.p, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.bl = getelementptr inbounds nuw i8, ptr %.sroa.014.018.i9, i64 4 ; 3 uses
  %i.bm = load float, ptr %i.bl, align 4, !tbaa !106
  %i.bn = fadd nsz float %1, %i.bm                ; 2 uses
  store float %i.bn, ptr %i.bl, align 4, !tbaa !106
  %i.bo = fcmp nsz olt float %i.bn, 3.330000e-01
  br i1 %i.bo, label %bb.p, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.bp = getelementptr inbounds nuw i8, ptr %.sroa.014.018.i9, i64 8
  %i.bq = load i32, ptr %i.bp, align 8, !tbaa !96 ; 2 uses
  %.not.i.i11 = icmp eq i32 %i.bq, 0
  br i1 %.not.i.i11, label %_ZN13TouchControls16buttonEmitActionER11button_infob.exit.i12, label %bb.o

bb.o:                                             ; preds = %bb.n
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #22
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(44) %i.bc, i8 0, i64 44, i1 false)
  store i32 11, ptr %5, align 8, !tbaa !22
  store i32 1, ptr %i.bc, align 8, !tbaa !23
  %i.br = zext i32 %i.bq to i64
  store i64 %i.br, ptr %i.bd, align 8, !tbaa !23
  %i.bs = load ptr, ptr %i.be, align 8, !tbaa !81 ; 2 uses
  %i.bt = load ptr, ptr %i.bs, align 8, !tbaa !83
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bt, i64 16
  %i.bv = load ptr, ptr %i.bu, align 8
  %i.bw = call noundef zeroext i1 %i.bv(ptr noundef nonnull align 8 dereferenceable(8) %i.bs, ptr noundef nonnull align 8 dereferenceable(56) %5), !inline_history !331 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #22
  br label %_ZN13TouchControls16buttonEmitActionER11button_infob.exit.i12

_ZN13TouchControls16buttonEmitActionER11button_infob.exit.i12: ; preds = %bb.o, %bb.n
  call void @_ZN13TouchControls16buttonEmitActionER11button_infob(ptr noundef nonnull readonly align 8 dereferenceable(712) %0, ptr noundef nonnull align 8 dereferenceable(128) %.sroa.014.018.i9, i1 noundef zeroext true)
  store float 0.000000e+00, ptr %i.bl, align 4, !tbaa !106
  br label %bb.p

bb.p:                                             ; preds = %_ZN13TouchControls16buttonEmitActionER11button_infob.exit.i12, %bb.m, %bb.l, %bb.k
  %i.bx = getelementptr inbounds nuw i8, ptr %.sroa.014.018.i9, i64 128 ; 2 uses
  %.not.i14 = icmp eq ptr %i.bx, %i.bb
  br i1 %.not.i14, label %_ZN13TouchControls11buttonsStepERSt6vectorI11button_infoSaIS1_EEf.exit16, label %bb.k

_ZN13TouchControls11buttonsStepERSt6vectorI11button_infoSaIS1_EEf.exit16: ; preds = %bb.p, %_ZN13TouchControls11buttonsStepERSt6vectorI11button_infoSaIS1_EEf.exit
  %i.by = getelementptr inbounds nuw i8, ptr %0, i64 67
  %i.bz = load i8, ptr %i.by, align 1, !tbaa !181, !range !199, !noundef !155
  %i.ca = trunc nuw i8 %i.bz to i1
  br i1 %i.ca, label %bb.q, label %_ZN13TouchControls19applyJoystickStatusEv.exit

bb.q:                                             ; preds = %_ZN13TouchControls11buttonsStepERSt6vectorI11button_infoSaIS1_EEf.exit16
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #22
  %i.cb = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(44) %i.cb, i8 0, i64 44, i1 false)
  store i32 11, ptr %4, align 8, !tbaa !22
  store i32 1, ptr %i.cb, align 8, !tbaa !23
  %i.cc = getelementptr inbounds nuw i8, ptr %4, i64 16
  store i64 5, ptr %i.cc, align 8, !tbaa !23
  %i.cd = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.ce = load ptr, ptr %i.cd, align 8, !tbaa !81 ; 2 uses
  %i.cf = load ptr, ptr %i.ce, align 8, !tbaa !83
  %i.cg = getelementptr inbounds nuw i8, ptr %i.cf, i64 16
  %i.ch = load ptr, ptr %i.cg, align 8
  %i.ci = call noundef zeroext i1 %i.ch(ptr noundef nonnull align 8 dereferenceable(8) %i.ce, ptr noundef nonnull align 8 dereferenceable(56) %4), !inline_history !226 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #22
  %i.cj = getelementptr inbounds nuw i8, ptr %0, i64 356
  %i.ck = load i8, ptr %i.cj, align 4, !tbaa !227, !range !199, !noundef !155
  %i.cl = trunc nuw i8 %i.ck to i1
  br i1 %i.cl, label %bb.r, label %_ZN13TouchControls19applyJoystickStatusEv.exit

bb.r:                                             ; preds = %bb.q
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #22
  %i.cm = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(44) %i.cm, i8 0, i64 44, i1 false)
  store i32 11, ptr %3, align 8, !tbaa !22
  store i32 1, ptr %i.cm, align 8, !tbaa !23
  %i.cn = getelementptr inbounds nuw i8, ptr %3, i64 16
  store i64 5, ptr %i.cn, align 8, !tbaa !23
  %i.co = getelementptr inbounds nuw i8, ptr %3, i64 24
  store i64 1, ptr %i.co, align 8, !tbaa !23
  %i.cp = load ptr, ptr %i.cd, align 8, !tbaa !81 ; 2 uses
  %i.cq = load ptr, ptr %i.cp, align 8, !tbaa !83
  %i.cr = getelementptr inbounds nuw i8, ptr %i.cq, i64 16
  %i.cs = load ptr, ptr %i.cr, align 8
  %i.ct = call noundef zeroext i1 %i.cs(ptr noundef nonnull align 8 dereferenceable(8) %i.cp, ptr noundef nonnull align 8 dereferenceable(56) %3), !inline_history !226 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #22
  br label %_ZN13TouchControls19applyJoystickStatusEv.exit

_ZN13TouchControls19applyJoystickStatusEv.exit:   ; preds = %_ZN13TouchControls11buttonsStepERSt6vectorI11button_infoSaIS1_EEf.exit16, %bb.q, %bb.r
  %i.cu = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.cv = load i8, ptr %i.cu, align 8, !tbaa !141
  %.not5 = icmp eq i8 %i.cv, 2
  br i1 %.not5, label %.thread, label %bb.s

bb.s:                                             ; preds = %_ZN13TouchControls19applyJoystickStatusEv.exit
  %i.cw = getelementptr inbounds nuw i8, ptr %0, i64 288 ; 2 uses
  %i.cx = load i8, ptr %i.cw, align 8, !tbaa !119, !range !199, !noundef !155
  %i.cy = trunc nuw i8 %i.cx to i1
  br i1 %i.cy, label %bb.t, label %bb.x

bb.t:                                             ; preds = %bb.s
  %i.cz = getelementptr inbounds nuw i8, ptr %0, i64 304
  %i.da = load i8, ptr %i.cz, align 8, !tbaa !120, !range !199, !noundef !155
  %i.db = trunc nuw i8 %i.da to i1
  br i1 %i.db, label %bb.x, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.dc = getelementptr inbounds nuw i8, ptr %0, i64 676 ; 2 uses
  %i.dd = load i32, ptr %i.dc, align 4, !tbaa !125
  %i.de = icmp eq i32 %i.dd, 0
  br i1 %i.de, label %bb.v, label %bb.x

bb.v:                                             ; preds = %bb.u
  %i.df = getelementptr inbounds nuw i8, ptr %0, i64 312
  %i.dg = load i64, ptr %i.df, align 8, !tbaa !232 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #22
  %i.dh = call i32 @clock_gettime(i32 noundef 4, ptr noundef nonnull %2) #22 ; 0 uses
  %i.di = load i64, ptr %2, align 8, !tbaa !230
  %i.dj = mul i64 %i.di, 1000
  %i.dk = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.dl = load i64, ptr %i.dk, align 8, !tbaa !231
  %i.dm = udiv i64 %i.dl, 1000000
  %8 = add i64 %i.dm, %i.dj                       ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #22
  %.not.i17 = icmp ult i64 %8, %i.dg
  %i.dn = sub nuw i64 %8, %i.dg
  %9 = sub nuw i64 %i.dg, %8
  %.0.i = select i1 %.not.i17, i64 %9, i64 %i.dn
  %i.do = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.dp = load i16, ptr %i.do, align 8, !tbaa !179
  %i.dq = zext i16 %i.dp to i64
  %i.dr = icmp ugt i64 %.0.i, %i.dq
  br i1 %i.dr, label %bb.w, label %bb.x

bb.w:                                             ; preds = %bb.v
  store i32 2, ptr %i.dc, align 4, !tbaa !125
  br label %bb.x

bb.x:                                             ; preds = %bb.v, %bb.w, %bb.u, %bb.t, %bb.s
  %.pr = load i8, ptr %i.cu, align 8, !tbaa !141
  %i.ds = icmp eq i8 %.pr, 0
  br i1 %i.ds, label %bb.y, label %.thread

bb.y:                                             ; preds = %bb.x
  %i.dt = load i8, ptr %i.cw, align 8, !tbaa !119, !range !199, !noundef !155
  %i.du = trunc nuw i8 %i.dt to i1
  br i1 %i.du, label %bb.aa, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.dv = getelementptr inbounds nuw i8, ptr %0, i64 328
  %i.dw = load i8, ptr %i.dv, align 8, !tbaa !233, !range !199, !noundef !155
  %i.dx = trunc nuw i8 %i.dw to i1
  br i1 %i.dx, label %bb.aa, label %.thread

bb.aa:                                            ; preds = %bb.z, %bb.y
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #22
  %i.dy = load ptr, ptr %0, align 8, !tbaa !85    ; 2 uses
  %i.dz = load ptr, ptr %i.dy, align 8, !tbaa !83
  %i.ea = getelementptr inbounds nuw i8, ptr %i.dz, i64 48
  %i.eb = load ptr, ptr %i.ea, align 8
  %i.ec = call noundef ptr %i.eb(ptr noundef nonnull align 8 dereferenceable(8) %i.dy) ; 2 uses
  %i.ed = load ptr, ptr %i.ec, align 8, !tbaa !83
  %i.ee = getelementptr inbounds nuw i8, ptr %i.ed, i64 176
  %i.ef = load ptr, ptr %i.ee, align 8
  %i.eg = call noundef ptr %i.ef(ptr noundef nonnull align 8 dereferenceable(8) %i.ec) ; 2 uses
  %i.eh = getelementptr inbounds nuw i8, ptr %0, i64 320
  %i.ei = load ptr, ptr %i.eg, align 8, !tbaa !83
  %i.ej = load ptr, ptr %i.ei, align 8
  call void %i.ej(ptr dead_on_unwind nonnull writable sret(%"class.core::line3d") align 4 %7, ptr noundef nonnull align 8 dereferenceable(8) %i.eg, ptr noundef nonnull align 4 dereferenceable(8) %i.eh, ptr noundef null)
  %i.ek = getelementptr inbounds nuw i8, ptr %0, i64 264
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ek, ptr noundef nonnull align 4 dereferenceable(24) %7, i64 24, i1 false), !tbaa.struct !332
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #22
  br label %.thread

.thread:                                          ; preds = %_ZN13TouchControls19applyJoystickStatusEv.exit, %bb.aa, %bb.z, %bb.x
  %i.el = getelementptr inbounds nuw i8, ptr %0, i64 328
  store i8 0, ptr %i.el, align 8, !tbaa !233
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN13TouchControls16resetHotbarRectsEv(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(712) %0) local_unnamed_addr #5 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 200 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !196  ; 2 uses
  %.not5.i.i.i = icmp eq ptr %i.b, null
  br i1 %.not5.i.i.i, label %_ZNSt13unordered_mapItN4core4rectIiEESt4hashItESt8equal_toItESaISt4pairIKtS2_EEE5clearEv.exit, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.a, %.lr.ph.i.i.i
  %.06.i.i.i = phi ptr [ %i.c, %.lr.ph.i.i.i ], [ %i.b, %bb.a ] ; 2 uses
  %i.c = load ptr, ptr %.06.i.i.i, align 8, !tbaa !183 ; 2 uses
  tail call void @_ZdlPvm(ptr noundef nonnull %.06.i.i.i, i64 noundef 32) #25
  %.not.i.i.i = icmp eq ptr %i.c, null
  br i1 %.not.i.i.i, label %_ZNSt13unordered_mapItN4core4rectIiEESt4hashItESt8equal_toItESaISt4pairIKtS2_EEE5clearEv.exit, label %.lr.ph.i.i.i, !llvm.loop !4

_ZNSt13unordered_mapItN4core4rectIiEESt4hashItESt8equal_toItESaISt4pairIKtS2_EEE5clearEv.exit: ; preds = %.lr.ph.i.i.i, %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 184
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !115
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 192
  %i.g = load i64, ptr %i.f, align 8, !tbaa !116
  %i.h = shl i64 %i.g, 3
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.e, i8 0, i64 %i.h, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.a, i8 0, i64 16, i1 false)
  ret void
}

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN13TouchControls18registerHotbarRectEtRKN4core4rectIiEE(ptr noundef nonnull align 8 dereferenceable(712) %0, i16 noundef zeroext %1, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(16) %2) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 184 ; 2 uses
  %i.b = zext i16 %1 to i64                       ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 192
  %i.d = load i64, ptr %i.c, align 8, !tbaa !116  ; 2 uses
  %i.e = urem i64 %i.b, %i.d                      ; 3 uses
  %i.f = load ptr, ptr %i.a, align 8, !tbaa !115
  %i.g = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %i.e
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !228  ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.h, null
  br i1 %.not.i.i.i.i, label %.loopexit.i.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !183  ; 3 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  %i.k = load i16, ptr %i.j, align 2, !tbaa !222
  %i.l = icmp eq i16 %1, %i.k
  br i1 %i.l, label %_ZNSt13unordered_mapItN4core4rectIiEESt4hashItESt8equal_toItESaISt4pairIKtS2_EEEixERS8_.exit, label %.lr.ph.i.i.i.i

bb.c:                                             ; preds = %bb.d
  %i.m = icmp eq i16 %1, %i.p
  br i1 %i.m, label %_ZNSt13unordered_mapItN4core4rectIiEESt4hashItESt8equal_toItESaISt4pairIKtS2_EEEixERS8_.exit, label %.lr.ph.i.i.i.i, !llvm.loop !333

.lr.ph.i.i.i.i:                                   ; preds = %bb.b, %bb.c
  %.020.i.i.i.i = phi ptr [ %i.n, %bb.c ], [ %i.i, %bb.b ]
  %i.n = load ptr, ptr %.020.i.i.i.i, align 8, !tbaa !183 ; 4 uses
  %.not18.i.i.i.i = icmp eq ptr %i.n, null
  br i1 %.not18.i.i.i.i, label %.loopexit.i.i, label %bb.d

bb.d:                                             ; preds = %.lr.ph.i.i.i.i
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  %i.p = load i16, ptr %i.o, align 2, !tbaa !222  ; 2 uses
  %i.q = zext i16 %i.p to i64
  %i.r = urem i64 %i.q, %i.d
  %.not19.i.i.i.i = icmp eq i64 %i.r, %i.e
  br i1 %.not19.i.i.i.i, label %bb.c, label %..loopexit_crit_edge21.i.i.i.i, !llvm.loop !333

..loopexit_crit_edge21.i.i.i.i:                   ; preds = %bb.d
  br label %.loopexit.i.i, !llvm.loop !333

.loopexit.i.i:                                    ; preds = %.lr.ph.i.i.i.i, %..loopexit_crit_edge21.i.i.i.i, %bb.a
  %i.s = tail call noalias noundef nonnull dereferenceable(32) ptr @_Znwm(i64 noundef 32) #24 ; 5 uses
  store ptr null, ptr %i.s, align 8, !tbaa !183
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  store i16 %1, ptr %i.t, align 8, !tbaa !335
  %i.u = getelementptr inbounds nuw i8, ptr %i.s, i64 12
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.u, i8 0, i64 16, i1 false)
  %i.v = invoke ptr @_ZNSt10_HashtableItSt4pairIKtN4core4rectIiEEESaIS5_ENSt8__detail10_Select1stESt8equal_toItESt4hashItENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb0ELb0ELb1EEEE21_M_insert_unique_nodeEmmPNS7_10_Hash_nodeIS5_Lb0EEEm(ptr noundef nonnull align 8 dereferenceable(56) %i.a, i64 noundef %i.e, i64 noundef %i.b, ptr noundef nonnull %i.s, i64 noundef 1)
          to label %_ZNSt13unordered_mapItN4core4rectIiEESt4hashItESt8equal_toItESaISt4pairIKtS2_EEEixERS8_.exit unwind label %_ZNSt10_HashtableItSt4pairIKtN4core4rectIiEEESaIS5_ENSt8__detail10_Select1stESt8equal_toItESt4hashItENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb0ELb0ELb1EEEE12_Scoped_nodeD2Ev.exit22.i.i

_ZNSt10_HashtableItSt4pairIKtN4core4rectIiEEESaIS5_ENSt8__detail10_Select1stESt8equal_toItESt4hashItENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb0ELb0ELb1EEEE12_Scoped_nodeD2Ev.exit22.i.i: ; preds = %.loopexit.i.i
  %i.w = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPvm(ptr noundef nonnull %i.s, i64 noundef 32) #25
  resume { ptr, i32 } %i.w

_ZNSt13unordered_mapItN4core4rectIiEESt4hashItESt8equal_toItESaISt4pairIKtS2_EEEixERS8_.exit: ; preds = %bb.c, %bb.b, %.loopexit.i.i
  %.pn.i.i = phi ptr [ %i.v, %.loopexit.i.i ], [ %i.i, %bb.b ], [ %i.n, %bb.c ]
  %.1.i.i = getelementptr inbounds nuw i8, ptr %.pn.i.i, i64 12
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %.1.i.i, ptr noundef nonnull align 4 dereferenceable(16) %2, i64 16, i1 false), !tbaa.struct !235
  ret void
}

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN13TouchControls10setVisibleEb(ptr noundef nonnull align 8 dereferenceable(712) %0, i1 noundef zeroext %1) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %struct.SEvent, align 8             ; 6 uses
  %3 = alloca %struct.SEvent, align 8             ; 6 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.b = load i8, ptr %i.a, align 8, !tbaa !111, !range !199, !noundef !155
  %i.c = zext i1 %1 to i8                         ; 2 uses
  %i.d = icmp eq i8 %i.b, %i.c
  br i1 %i.d, label %bb.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  store i8 %i.c, ptr %i.a, align 8, !tbaa !111
  br i1 %1, label %bb.h, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 640 ; 2 uses
  %i.f = load i64, ptr %i.e, align 8, !tbaa !215
  %i.g = icmp eq i64 %i.f, 0
  br i1 %i.g, label %._crit_edge.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.c
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 632
  br label %bb.d

bb.d:                                             ; preds = %bb.d, %.lr.ph.i
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !184
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  %i.k = load i64, ptr %i.j, align 8, !tbaa !217
  tail call void @_ZN13TouchControls18handleReleaseEventEm(ptr noundef nonnull align 8 dereferenceable(712) %0, i64 noundef %i.k)
  %i.l = load i64, ptr %i.e, align 8, !tbaa !215
  %i.m = icmp eq i64 %i.l, 0
  br i1 %i.m, label %._crit_edge.i, label %bb.d, !llvm.loop !8

._crit_edge.i:                                    ; preds = %bb.d, %bb.c
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 680 ; 2 uses
  %i.o = load i8, ptr %i.n, align 8, !tbaa !126, !range !199, !noundef !155
  %i.p = trunc nuw i8 %i.o to i1
  br i1 %i.p, label %bb.e, label %bb.f

bb.e:                                             ; preds = %._crit_edge.i
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #22
  %i.q = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(44) %i.q, i8 0, i64 44, i1 false)
  store i32 11, ptr %3, align 8, !tbaa !22
  store i32 1, ptr %i.q, align 8, !tbaa !23
  %i.r = getelementptr inbounds nuw i8, ptr %3, i64 16
  store i64 8, ptr %i.r, align 8, !tbaa !23
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !81   ; 2 uses
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !83
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 16
  %i.w = load ptr, ptr %i.v, align 8
  %i.x = call noundef zeroext i1 %i.w(ptr noundef nonnull align 8 dereferenceable(8) %i.t, ptr noundef nonnull align 8 dereferenceable(56) %3), !inline_history !336 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #22
  store i8 0, ptr %i.n, align 8, !tbaa !126
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %._crit_edge.i
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 696 ; 2 uses
  %i.z = load i8, ptr %i.y, align 8, !tbaa !128, !range !199, !noundef !155
end_hunk_0
begin_hunk_1_@_ZNSt10_HashtableItSt4pairIKtN4core4rectIiEEESaIS5_ENSt8__detail10_Select1stESt8equal_toItESt4hashItENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb0ELb0ELb1EEEE21_M_insert_unique_nodeEmmPNS7_10_Hash_nodeIS5_Lb0EEEm:bb.a

bb.c:                                             ; preds = %bb.b
  %i.l = landingpad { ptr, i32 }
          catch ptr null
  %i.m = extractvalue { ptr, i32 } %i.l, 0
  %i.n = tail call ptr @__cxa_begin_catch(ptr %i.m) #22 ; 0 uses
  store i64 %i.c, ptr %i.b, align 8, !tbaa !236
  invoke void @__cxa_rethrow() #23
          to label %bb.g unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.o = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %bb.e unwind label %bb.f

bb.e:                                             ; preds = %bb.d
  resume { ptr, i32 } %i.o

bb.f:                                             ; preds = %bb.d
  %i.p = landingpad { ptr, i32 }
          catch ptr null
  %i.q = extractvalue { ptr, i32 } %i.p, 0
  tail call void @__clang_call_terminate(ptr %i.q) #26
  unreachable

bb.g:                                             ; preds = %bb.c
  unreachable

_ZNSt10_HashtableItSt4pairIKtN4core4rectIiEEESaIS5_ENSt8__detail10_Select1stESt8equal_toItESt4hashItENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb0ELb0ELb1EEEE9_M_rehashEmRKm.exit: ; preds = %bb.b
  %i.r = load i64, ptr %i.d, align 8, !tbaa !116
  %i.s = urem i64 %2, %i.r
  br label %bb.h

bb.h:                                             ; preds = %_ZNSt10_HashtableItSt4pairIKtN4core4rectIiEEESaIS5_ENSt8__detail10_Select1stESt8equal_toItESt4hashItENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb0ELb0ELb1EEEE9_M_rehashEmRKm.exit, %bb.a
  %.0 = phi i64 [ %i.s, %_ZNSt10_HashtableItSt4pairIKtN4core4rectIiEEESaIS5_ENSt8__detail10_Select1stESt8equal_toItESt4hashItENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb0ELb0ELb1EEEE9_M_rehashEmRKm.exit ], [ %1, %bb.a ]
  %i.t = load ptr, ptr %0, align 8, !tbaa !115    ; 2 uses
  %i.u = getelementptr inbounds nuw [8 x i8], ptr %i.t, i64 %.0 ; 3 uses
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !228  ; 2 uses
  %.not.i = icmp eq ptr %i.v, null
  br i1 %.not.i, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !183
  store ptr %i.w, ptr %3, align 8, !tbaa !183
  %i.x = load ptr, ptr %i.u, align 8, !tbaa !228
  store ptr %3, ptr %i.x, align 8, !tbaa !183
  br label %_ZNSt10_HashtableItSt4pairIKtN4core4rectIiEEESaIS5_ENSt8__detail10_Select1stESt8equal_toItESt4hashItENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb0ELb0ELb1EEEE22_M_insert_bucket_beginEmPNS7_10_Hash_nodeIS5_Lb0EEE.exit

bb.j:                                             ; preds = %bb.h
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !196
  store ptr %i.z, ptr %3, align 8, !tbaa !183
  store ptr %3, ptr %i.y, align 8, !tbaa !196
  %i.aa = load ptr, ptr %3, align 8, !tbaa !183   ; 2 uses
  %.not11.i = icmp eq ptr %i.aa, null
  br i1 %.not11.i, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 8
  %i.ac = load i64, ptr %i.d, align 8, !tbaa !116
  %i.ad = load i16, ptr %i.ab, align 2, !tbaa !222
  %i.ae = zext i16 %i.ad to i64
  %i.af = urem i64 %i.ae, %i.ac
  %i.ag = getelementptr inbounds nuw [8 x i8], ptr %i.t, i64 %i.af
  store ptr %3, ptr %i.ag, align 8, !tbaa !228
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  store ptr %i.y, ptr %i.u, align 8, !tbaa !228
  br label %_ZNSt10_HashtableItSt4pairIKtN4core4rectIiEEESaIS5_ENSt8__detail10_Select1stESt8equal_toItESt4hashItENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb0ELb0ELb1EEEE22_M_insert_bucket_beginEmPNS7_10_Hash_nodeIS5_Lb0EEE.exit

_ZNSt10_HashtableItSt4pairIKtN4core4rectIiEEESaIS5_ENSt8__detail10_Select1stESt8equal_toItESt4hashItENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb0ELb0ELb1EEEE22_M_insert_bucket_beginEmPNS7_10_Hash_nodeIS5_Lb0EEE.exit: ; preds = %bb.i, %bb.l
  %i.ah = load i64, ptr %i.f, align 8, !tbaa !391
  %i.ai = add i64 %i.ah, 1
  store i64 %i.ai, ptr %i.f, align 8, !tbaa !391
  ret ptr %3
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZNSt10_HashtableItSt4pairIKtN4core4rectIiEEESaIS5_ENSt8__detail10_Select1stESt8equal_toItESt4hashItENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb0ELb0ELb1EEEE13_M_rehash_auxEmSt17integral_constantIbLb1EE(ptr noundef nonnull align 8 dereferenceable(56) %0, i64 noundef %1) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = icmp eq i64 %1, 1
  br i1 %i.a, label %bb.b, label %bb.c, !prof !191

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  store ptr null, ptr %i.b, align 8, !tbaa !393
  br label %_ZNSt10_HashtableItSt4pairIKtN4core4rectIiEEESaIS5_ENSt8__detail10_Select1stESt8equal_toItESt4hashItENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb0ELb0ELb1EEEE19_M_allocate_bucketsEm.exit

bb.c:                                             ; preds = %bb.a
  %i.c = icmp ugt i64 %1, 1152921504606846975
  br i1 %i.c, label %bb.d, label %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKtN4core4rectIiEEELb0EEEEE19_M_allocate_bucketsEm.exit.i, !prof !191

bb.d:                                             ; preds = %bb.c
  %i.d = icmp ugt i64 %1, 2305843009213693951
  br i1 %i.d, label %.noexc.i.i, label %.noexc7.i.i

.noexc.i.i:                                       ; preds = %bb.d
  tail call void @_ZSt28__throw_bad_array_new_lengthv() #23
  unreachable

.noexc7.i.i:                                      ; preds = %bb.d
  tail call void @_ZSt17__throw_bad_allocv() #23
  unreachable

_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKtN4core4rectIiEEELb0EEEEE19_M_allocate_bucketsEm.exit.i: ; preds = %bb.c
  %i.e = shl nuw nsw i64 %1, 3                    ; 2 uses
  %i.f = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.e) #24 ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr nonnull align 8 %i.f, i8 0, i64 %i.e, i1 false)
  br label %_ZNSt10_HashtableItSt4pairIKtN4core4rectIiEEESaIS5_ENSt8__detail10_Select1stESt8equal_toItESt4hashItENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb0ELb0ELb1EEEE19_M_allocate_bucketsEm.exit

_ZNSt10_HashtableItSt4pairIKtN4core4rectIiEEESaIS5_ENSt8__detail10_Select1stESt8equal_toItESt4hashItENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb0ELb0ELb1EEEE19_M_allocate_bucketsEm.exit: ; preds = %bb.b, %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKtN4core4rectIiEEELb0EEEEE19_M_allocate_bucketsEm.exit.i
  %.0.i = phi ptr [ %i.b, %bb.b ], [ %i.f, %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKtN4core4rectIiEEELb0EEEEE19_M_allocate_bucketsEm.exit.i ] ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 5 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !196  ; 2 uses
  store ptr null, ptr %i.g, align 8, !tbaa !196
  %.not29 = icmp eq ptr %i.h, null
  br i1 %.not29, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %_ZNSt10_HashtableItSt4pairIKtN4core4rectIiEEESaIS5_ENSt8__detail10_Select1stESt8equal_toItESt4hashItENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb0ELb0ELb1EEEE19_M_allocate_bucketsEm.exit, %bb.h
  %.031 = phi i64 [ %.1, %bb.h ], [ 0, %_ZNSt10_HashtableItSt4pairIKtN4core4rectIiEEESaIS5_ENSt8__detail10_Select1stESt8equal_toItESt4hashItENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb0ELb0ELb1EEEE19_M_allocate_bucketsEm.exit ] ; 2 uses
  %.02530 = phi ptr [ %i.i, %bb.h ], [ %i.h, %_ZNSt10_HashtableItSt4pairIKtN4core4rectIiEEESaIS5_ENSt8__detail10_Select1stESt8equal_toItESt4hashItENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb0ELb0ELb1EEEE19_M_allocate_bucketsEm.exit ] ; 8 uses
  %i.i = load ptr, ptr %.02530, align 8, !tbaa !183 ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %.02530, i64 8
  %i.k = load i16, ptr %i.j, align 8, !tbaa !222
  %i.l = zext i16 %i.k to i64
  %i.m = urem i64 %i.l, %1                        ; 3 uses
  %i.n = getelementptr inbounds nuw [8 x i8], ptr %.0.i, i64 %i.m ; 3 uses
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !228  ; 2 uses
  %.not27 = icmp eq ptr %i.o, null
  br i1 %.not27, label %bb.e, label %bb.g

bb.e:                                             ; preds = %.lr.ph
  %i.p = load ptr, ptr %i.g, align 8, !tbaa !196
  store ptr %i.p, ptr %.02530, align 8, !tbaa !183
  store ptr %.02530, ptr %i.g, align 8, !tbaa !196
  store ptr %i.g, ptr %i.n, align 8, !tbaa !228
  %i.q = load ptr, ptr %.02530, align 8, !tbaa !183
  %.not28 = icmp eq ptr %i.q, null
  br i1 %.not28, label %bb.h, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.r = getelementptr inbounds nuw [8 x i8], ptr %.0.i, i64 %.031
  store ptr %.02530, ptr %i.r, align 8, !tbaa !228
  br label %bb.h

bb.g:                                             ; preds = %.lr.ph
  %i.s = load ptr, ptr %i.o, align 8, !tbaa !183
  store ptr %i.s, ptr %.02530, align 8, !tbaa !183
  %i.t = load ptr, ptr %i.n, align 8, !tbaa !228
  store ptr %.02530, ptr %i.t, align 8, !tbaa !183
  br label %bb.h

bb.h:                                             ; preds = %bb.e, %bb.f, %bb.g
  %.1 = phi i64 [ %.031, %bb.g ], [ %i.m, %bb.f ], [ %i.m, %bb.e ]
  %.not = icmp eq ptr %i.i, null
  br i1 %.not, label %._crit_edge, label %.lr.ph, !llvm.loop !392

._crit_edge:                                      ; preds = %bb.h, %_ZNSt10_HashtableItSt4pairIKtN4core4rectIiEEESaIS5_ENSt8__detail10_Select1stESt8equal_toItESt4hashItENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb0ELb0ELb1EEEE19_M_allocate_bucketsEm.exit
  %i.u = load ptr, ptr %0, align 8, !tbaa !115    ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.w = icmp eq ptr %i.u, %i.v
  br i1 %i.w, label %_ZNSt10_HashtableItSt4pairIKtN4core4rectIiEEESaIS5_ENSt8__detail10_Select1stESt8equal_toItESt4hashItENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb0ELb0ELb1EEEE21_M_deallocate_bucketsEv.exit, label %bb.i

bb.i:                                             ; preds = %._crit_edge
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.y = load i64, ptr %i.x, align 8, !tbaa !116
  %i.z = shl i64 %i.y, 3
  tail call void @_ZdlPvm(ptr noundef %i.u, i64 noundef %i.z) #25
  br label %_ZNSt10_HashtableItSt4pairIKtN4core4rectIiEEESaIS5_ENSt8__detail10_Select1stESt8equal_toItESt4hashItENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb0ELb0ELb1EEEE21_M_deallocate_bucketsEv.exit

_ZNSt10_HashtableItSt4pairIKtN4core4rectIiEEESaIS5_ENSt8__detail10_Select1stESt8equal_toItESt4hashItENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb0ELb0ELb1EEEE21_M_deallocate_bucketsEv.exit: ; preds = %._crit_edge, %bb.i
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %1, ptr %i.aa, align 8, !tbaa !116
  store ptr %.0.i, ptr %0, align 8, !tbaa !115
  ret void
}

declare extern_weak void @_ZTH13warningstream() #2

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare nonnull ptr @llvm.threadlocal.address.p0(ptr nonnull) #11

declare extern_weak void @_ZTH10infostream() #2

declare extern_weak void @_ZTH13verbosestream() #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #20

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #12

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #12

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #21

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x double> @llvm.fmuladd.v2f64(<2 x double>, <2 x double>, <2 x double>) #12

attributes #0 = { mustprogress uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { uwtable "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { inlinehint mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { noinline noreturn nounwind uwtable "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { cold nofree noreturn }
attributes #9 = { mustprogress nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #12 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #13 = { noreturn "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #15 = { nobuiltin nounwind "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #16 = { mustprogress noinline nounwind uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #17 = { nobuiltin allocsize(0) "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #18 = { nounwind "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #19 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #20 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #21 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #22 = { nounwind }
attributes #23 = { noreturn }
attributes #24 = { builtin allocsize(0) }
attributes #25 = { builtin nounwind }
attributes #26 = { noreturn nounwind }

!llvm.module.flags = !{!11, !12, !13}
!llvm.ident = !{!14}
!llvm.errno.tbaa = !{!19}

!0 = distinct !{null, null, null, null, null}
!1 = distinct !{!1, !108}
!2 = distinct !{!2, !108}
!3 = distinct !{!3, !108}
!4 = distinct !{!4, !108}
!5 = distinct !{null, null, ptr @_ZNSt12__shared_ptrIN3gui9IGUIImageELN9__gnu_cxx12_Lock_policyE2EED2Ev, null, null}
!6 = distinct !{null}
!7 = distinct !{null}
!8 = distinct !{!8, !108}
!9 = distinct !{!9, !108}
!10 = distinct !{null, null}
!11 = !{i32 8, !"PIC Level", i32 2}
!12 = !{i32 7, !"PIE Level", i32 2}
!13 = !{i32 7, !"uwtable", i32 2}
!14 = !{!"Ubuntu clang version 24.0.0 (++20260802081851+e18c3ea02484-1~exp1~20260802082001.1761)"}
!15 = !{!"Simple C++ TBAA"}
!16 = !{!"omnipotent char", !15, i64 0}
!17 = !{!"int", !16, i64 0}
!18 = !{!"__libc_errno", !17, i64 0}
!19 = !{!18, !17, i64 0}
!20 = !{!"_ZTS11EEVENT_TYPE", !16, i64 0}
!21 = !{!"_ZTS6SEvent", !20, i64 0, !16, i64 8}
!22 = !{!21, !20, i64 0}
!23 = !{!16, !16, i64 0}
!24 = !{!"any pointer", !16, i64 0}
!25 = !{!"p1 _ZTS14IrrlichtDevice", !24, i64 0}
!26 = !{!"p1 _ZTSN3gui15IGUIEnvironmentE", !24, i64 0}
!27 = !{!"p1 _ZTS14IEventReceiver", !24, i64 0}
!28 = !{!"p1 _ZTS20ISimpleTextureSource", !24, i64 0}
!29 = !{!"bool", !16, i64 0}
!30 = !{!"_ZTSN4core8vector2dIjEE", !17, i64 0, !17, i64 4}
!31 = !{!"_ZTS21TouchInteractionStyle", !16, i64 0}
!32 = !{!"double", !16, i64 0}
!33 = !{!"short", !16, i64 0}
!34 = !{!"any p2 pointer", !24, i64 0}
!35 = !{!"p2 _ZTSNSt8__detail15_Hash_node_baseE", !34, i64 0}
!36 = !{!"long", !16, i64 0}
!37 = !{!"p1 _ZTSNSt8__detail15_Hash_node_baseE", !24, i64 0}
!38 = !{!"_ZTSNSt8__detail15_Hash_node_baseE", !37, i64 0}
!39 = !{!"float", !16, i64 0}
!40 = !{!"_ZTSNSt8__detail20_Prime_rehash_policyE", !39, i64 0, !36, i64 8}
!41 = !{!"_ZTSSt10_HashtableI19touch_gui_button_idSt4pairIKS0_10ButtonMetaESaIS4_ENSt8__detail10_Select1stESt8equal_toIS0_ESt4hashIS0_ENS6_18_Mod_range_hashingENS6_20_Default_ranged_hashENS6_20_Prime_rehash_policyENS6_17_Hashtable_traitsILb0ELb0ELb1EEEE", !35, i64 0, !36, i64 8, !38, i64 16, !36, i64 24, !40, i64 32, !37, i64 48}
!42 = !{!"_ZTSSt13unordered_mapI19touch_gui_button_id10ButtonMetaSt4hashIS0_ESt8equal_toIS0_ESaISt4pairIKS0_S1_EEE", !41, i64 0}
!43 = !{!"_ZTS12ButtonLayout", !42, i64 0, !42, i64 56}
!44 = !{!"_ZTSSt10_HashtableItSt4pairIKtN4core4rectIiEEESaIS5_ENSt8__detail10_Select1stESt8equal_toItESt4hashItENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb0ELb0ELb1EEEE", !35, i64 0, !36, i64 8, !38, i64 16, !36, i64 24, !40, i64 32, !37, i64 48}
!45 = !{!"_ZTSSt13unordered_mapItN4core4rectIiEESt4hashItESt8equal_toItESaISt4pairIKtS2_EEE", !44, i64 0}
!46 = !{!"_ZTSSt22_Optional_payload_baseItE", !16, i64 0, !29, i64 2}
!47 = !{!"_ZTSSt17_Optional_payloadItLb1ELb1ELb1EE", !46, i64 0}
!48 = !{!"_ZTSSt14_Optional_baseItLb1ELb1EE", !47, i64 0}
!49 = !{!"_ZTSSt8optionalItE", !48, i64 0}
!50 = !{!"_ZTSN4core8vector3dIfEE", !39, i64 0, !39, i64 4, !39, i64 8}
!51 = !{!"_ZTSN4core6line3dIfEE", !50, i64 0, !50, i64 12}
!52 = !{!"_ZTSN4core8vector2dIiEE", !17, i64 0, !17, i64 4}
!53 = !{!"p1 _ZTSN3gui9IGUIImageE", !24, i64 0}
!54 = !{!"p1 _ZTSSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE", !24, i64 0}
!55 = !{!"_ZTSSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EE", !54, i64 0}
!56 = !{!"_ZTSSt12__shared_ptrIN3gui9IGUIImageELN9__gnu_cxx12_Lock_policyE2EE", !53, i64 0, !55, i64 8}
!57 = !{!"_ZTSSt10shared_ptrIN3gui9IGUIImageEE", !56, i64 0}
!58 = !{!"p1 _ZTS11button_info", !24, i64 0}
!59 = !{!"_ZTSNSt12_Vector_baseI11button_infoSaIS0_EE17_Vector_impl_dataE", !58, i64 0, !58, i64 8, !58, i64 16}
!60 = !{!"_ZTSNSt12_Vector_baseI11button_infoSaIS0_EE12_Vector_implE", !59, i64 0}
!61 = !{!"_ZTSSt12_Vector_baseI11button_infoSaIS0_EE", !60, i64 0}
!62 = !{!"_ZTSSt6vectorI11button_infoSaIS0_EE", !61, i64 0}
!63 = !{!"p1 _ZTSN3gui14IGUIStaticTextE", !24, i64 0}
!64 = !{!"_ZTSSt12__shared_ptrIN3gui14IGUIStaticTextELN9__gnu_cxx12_Lock_policyE2EE", !63, i64 0, !55, i64 8}
!65 = !{!"_ZTSSt10shared_ptrIN3gui14IGUIStaticTextEE", !64, i64 0}
!66 = !{!"p1 _ZTSSt10shared_ptrIN3gui14IGUIStaticTextEE", !24, i64 0}
!67 = !{!"_ZTSNSt12_Vector_baseISt10shared_ptrIN3gui14IGUIStaticTextEESaIS3_EE17_Vector_impl_dataE", !66, i64 0, !66, i64 8, !66, i64 16}
!68 = !{!"_ZTSNSt12_Vector_baseISt10shared_ptrIN3gui14IGUIStaticTextEESaIS3_EE12_Vector_implE", !67, i64 0}
!69 = !{!"_ZTSSt12_Vector_baseISt10shared_ptrIN3gui14IGUIStaticTextEESaIS3_EE", !68, i64 0}
!70 = !{!"_ZTSSt6vectorISt10shared_ptrIN3gui14IGUIStaticTextEESaIS3_EE", !69, i64 0}
!71 = !{!"p1 _ZTSN4core4rectIiEE", !24, i64 0}
!72 = !{!"_ZTSNSt12_Vector_baseIN4core4rectIiEESaIS2_EE17_Vector_impl_dataE", !71, i64 0, !71, i64 8, !71, i64 16}
!73 = !{!"_ZTSNSt12_Vector_baseIN4core4rectIiEESaIS2_EE12_Vector_implE", !72, i64 0}
!74 = !{!"_ZTSSt12_Vector_baseIN4core4rectIiEESaIS2_EE", !73, i64 0}
!75 = !{!"_ZTSSt6vectorIN4core4rectIiEESaIS2_EE", !74, i64 0}
!76 = !{!"_ZTSSt10_HashtableImSt4pairIKmN4core8vector2dIiEEESaIS5_ENSt8__detail10_Select1stESt8equal_toImESt4hashImENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb0ELb0ELb1EEEE", !35, i64 0, !36, i64 8, !38, i64 16, !36, i64 24, !40, i64 32, !37, i64 48}
!77 = !{!"_ZTSSt13unordered_mapImN4core8vector2dIiEESt4hashImESt8equal_toImESaISt4pairIKmS2_EEE", !76, i64 0}
!78 = !{!"_ZTS20TouchInteractionMode", !16, i64 0}
!79 = !{!"_ZTS8TapState", !16, i64 0}
!80 = !{!"_ZTS13TouchControls", !25, i64 0, !26, i64 8, !27, i64 16, !28, i64 24, !29, i64 32, !30, i64 36, !17, i64 44, !31, i64 48, !32, i64 56, !33, i64 64, !29, i64 66, !29, i64 67, !43, i64 72, !45, i64 184, !49, i64 240, !32, i64 248, !32, i64 256, !51, i64 264, !29, i64 288, !36, i64 296, !29, i64 304, !36, i64 312, !52, i64 320, !29, i64 328, !29, i64 329, !29, i64 330, !36, i64 336, !29, i64 344, !39, i64 348, !39, i64 352, !29, i64 356, !57, i64 360, !57, i64 376, !57, i64 392, !62, i64 408, !57, i64 432, !29, i64 448, !65, i64 456, !62, i64 472, !70, i64 496, !75, i64 520, !65, i64 544, !77, i64 560, !77, i64 616, !78, i64 672, !79, i64 676, !29, i64 680, !36, i64 688, !29, i64 696, !36, i64 704}
!81 = !{!80, !27, i64 16}
!82 = !{!"vtable pointer", !15, i64 0}
!83 = !{!82, !82, i64 0}
!84 = !{!17, !17, i64 0}
!85 = !{!80, !25, i64 0}
!86 = !{!80, !28, i64 24}
!87 = !{!"_ZTS19touch_gui_button_id", !16, i64 0}
!88 = !{!"_ZTSN7KeyType1TE", !16, i64 0}
!89 = !{!"p1 long", !24, i64 0}
!90 = !{!"_ZTSNSt12_Vector_baseImSaImEE17_Vector_impl_dataE", !89, i64 0, !89, i64 8, !89, i64 16}
!91 = !{!"_ZTSNSt12_Vector_baseImSaImEE12_Vector_implE", !90, i64 0}
!92 = !{!"_ZTSSt12_Vector_baseImSaImEE", !91, i64 0}
!93 = !{!"_ZTSSt6vectorImSaImEE", !92, i64 0}
!94 = !{!"_ZTSN11button_infoUt_E", !16, i64 0}
!95 = !{!"_ZTS11button_info", !87, i64 0, !39, i64 4, !88, i64 8, !93, i64 16, !57, i64 40, !94, i64 56, !16, i64 64}
!96 = !{!95, !88, i64 8}
!97 = !{ptr @_ZN13TouchControls16emitGameKeyEventEN7KeyType1TEb}
!98 = !{!95, !94, i64 56}
!99 = !{!56, !53, i64 0}
!100 = !{!58, !58, i64 0}
!101 = !{!95, !87, i64 0}
!102 = !{!90, !89, i64 8}
!103 = !{!90, !89, i64 16}
!104 = !{!36, !36, i64 0}
!105 = !{!90, !89, i64 0}
!106 = !{!95, !39, i64 4}
!107 = !{!89, !89, i64 0}
!108 = !{!"llvm.loop.mustprogress"}
!109 = !{ptr @_ZN13TouchControls16buttonEmitActionER11button_infob, ptr @_ZN13TouchControls16emitGameKeyEventEN7KeyType1TEb}
!110 = !{!80, !26, i64 8}
!111 = !{!80, !29, i64 32}
!112 = !{!30, !17, i64 0}
!113 = !{!41, !35, i64 0}
!114 = !{!41, !36, i64 8}
!115 = !{!44, !35, i64 0}
!116 = !{!44, !36, i64 8}
!117 = !{!46, !29, i64 2}
!118 = !{!39, !39, i64 0}
!119 = !{!80, !29, i64 288}
!120 = !{!80, !29, i64 304}
!121 = !{!80, !29, i64 344}
!122 = !{!76, !35, i64 0}
!123 = !{!76, !36, i64 8}
!124 = !{!80, !78, i64 672}
!125 = !{!80, !79, i64 676}
!126 = !{!80, !29, i64 680}
!127 = !{!80, !36, i64 688}
!128 = !{!80, !29, i64 696}
!129 = !{!80, !36, i64 704}
!130 = !{!80, !17, i64 44}
!131 = !{!"p1 _ZTS8Settings", !24, i64 0}
!132 = !{!131, !131, i64 0}
!133 = !{!"p1 omnipotent char", !24, i64 0}
!134 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_Alloc_hiderE", !133, i64 0}
!135 = !{!134, !133, i64 0}
!136 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE", !134, i64 0, !36, i64 8, !16, i64 16}
!137 = !{!136, !133, i64 0}
!138 = !{!136, !36, i64 8}
!139 = !{!72, !71, i64 0}
!140 = !{!72, !71, i64 16}
!141 = !{!80, !31, i64 48}
!142 = !{!"p1 _ZTS9LogTarget", !24, i64 0}
!143 = !{!"p1 _ZTSNSt6locale5_ImplE", !24, i64 0}
!144 = !{!"_ZTSSt6locale", !143, i64 0}
!145 = !{!"_ZTSSt15basic_streambufIcSt11char_traitsIcEE", !133, i64 8, !133, i64 16, !133, i64 24, !133, i64 32, !133, i64 40, !133, i64 48, !144, i64 56}
!146 = !{!"_ZTSSt14_Function_base", !16, i64 0, !24, i64 16}
!147 = !{!"_ZTSSt8functionIFvSt17basic_string_viewIcSt11char_traitsIcEEEE", !146, i64 0, !24, i64 24}
!148 = !{!"_ZTS18StringStreamBufferILj256ESt8functionIFvSt17basic_string_viewIcSt11char_traitsIcEEEEE", !145, i64 0, !147, i64 64, !17, i64 96, !16, i64 100}
!149 = !{!"_ZTS17DummyStreamBuffer", !145, i64 0}
!150 = !{!"_ZTSSo"}
!151 = !{!"p1 _ZTSSo", !24, i64 0}
!152 = !{!"_ZTS11StreamProxy", !151, i64 0}
!153 = !{!"_ZTS9LogStream", !142, i64 0, !148, i64 8, !149, i64 368, !150, i64 432, !150, i64 704, !152, i64 976, !152, i64 984}
!154 = !{!153, !142, i64 0}
!155 = !{}
!156 = !{i64 8}
!157 = !{!133, !133, i64 0}
!158 = !{!152, !151, i64 0}
!159 = !{!"_ZTSSt13_Ios_Fmtflags", !16, i64 0}
!160 = !{!"_ZTSSt12_Ios_Iostate", !16, i64 0}
!161 = !{!"p1 _ZTSNSt8ios_base14_Callback_listE", !24, i64 0}
!162 = !{!"_ZTSNSt8ios_base6_WordsE", !24, i64 0, !36, i64 8}
!163 = !{!"p1 _ZTSNSt8ios_base6_WordsE", !24, i64 0}
!164 = !{!"_ZTSSt8ios_base", !36, i64 8, !36, i64 16, !159, i64 24, !160, i64 28, !160, i64 32, !161, i64 40, !162, i64 48, !16, i64 64, !17, i64 192, !163, i64 200, !144, i64 208}
end_hunk_1
