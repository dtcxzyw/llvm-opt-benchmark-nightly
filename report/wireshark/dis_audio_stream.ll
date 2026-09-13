Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/wireshark/original/dis_audio_stream?download=true
inline.NumInlined: 326
inline.NumDeleted: 161
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@_ZN14DisAudioStream13playDisStreamEPK15_disstream_infoR7QString:bb.a
  %i.at = fmul double %i.ar, %i.as
  %i.au = tail call double @llvm.floor.f64(double %i.at)
  %i.av = fptosi double %i.au to i64
  %i.aw = load i64, ptr %i.s, align 8
  %i.ax = zext i32 %i.v to i64
  %i.ay = shl nuw nsw i64 %i.ax, 1                ; 2 uses
  %i.az = udiv i64 %i.aw, %i.ay
  %i.ba = tail call i64 @llvm.smin.i64(i64 %i.az, i64 %i.av)
  %i.bb = tail call noundef i64 @llvm.smax.i64(i64 %i.ba, i64 0)
  %i.bc = mul i64 %i.ay, %i.bb                    ; 3 uses
  %i.bd = icmp sgt i64 %i.bc, 0
  %i.be = load i64, ptr %i.r, align 16
  %i.bf = icmp slt i64 %i.bc, %i.be               ; 2 uses
  %or.cond = select i1 %i.bd, i1 %i.bf, i1 false
  br i1 %or.cond, label %bb.g, label %bb.k

bb.g:                                             ; preds = %.then.cont
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #19
  invoke void @_ZNK10QByteArray3midExx(ptr dead_on_unwind nonnull writable sret(%class.QByteArray) align 8 %6, ptr noundef nonnull align 8 dereferenceable_or_null(24) %5, i64 noundef %i.bc, i64 noundef -1)
          to label %bb.h unwind label %bb.j

bb.h:                                             ; preds = %bb.g
  %i.bg = load <2 x ptr>, ptr %6, align 16
  %i.bh = load <2 x ptr>, ptr %5, align 16
  %i.bi = load ptr, ptr %5, align 16              ; 2 uses
  store <2 x ptr> %i.bg, ptr %5, align 16
  store <2 x ptr> %i.bh, ptr %6, align 16
  %i.bj = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 2 uses
  %i.bk = load i64, ptr %i.r, align 16
  %i.bl = load i64, ptr %i.bj, align 16
  store i64 %i.bl, ptr %i.r, align 16
  store i64 %i.bk, ptr %i.bj, align 16
  %.not.i.i.i51 = icmp eq ptr %i.bi, null
  br i1 %.not.i.i.i51, label %_ZN10QByteArrayD2Ev.exit, label %_ZN17QArrayDataPointerIcE5derefEv.exit.i.i

_ZN17QArrayDataPointerIcE5derefEv.exit.i.i:       ; preds = %bb.h
  %i.bm = atomicrmw sub ptr %i.bi, i32 1 acq_rel, align 4
  %.not.i.i = icmp eq i32 %i.bm, 1
  br i1 %.not.i.i, label %bb.i, label %_ZN10QByteArrayD2Ev.exit

bb.i:                                             ; preds = %_ZN17QArrayDataPointerIcE5derefEv.exit.i.i
  %i.bn = load ptr, ptr %6, align 16
  call void @_ZN10QArrayData10deallocateEPS_xx(ptr noundef %i.bn, i64 noundef 1, i64 noundef 8) #19
  br label %_ZN10QByteArrayD2Ev.exit

_ZN10QByteArrayD2Ev.exit:                         ; preds = %bb.h, %_ZN17QArrayDataPointerIcE5derefEv.exit.i.i, %bb.i
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #19
  br label %bb.n

bb.j:                                             ; preds = %bb.g
  %i.bo = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #19
  br label %bb.ch

bb.k:                                             ; preds = %.then.cont
  br i1 %i.bf, label %bb.n, label %bb.l

bb.l:                                             ; preds = %bb.k
  invoke void @_ZN10QByteArray5clearEv(ptr noundef nonnull align 8 dereferenceable_or_null(24) %5)
          to label %bb.n unwind label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.bp = landingpad { ptr, i32 }
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
  %i.bq = load i64, ptr %i.r, align 16
  %i.br = sitofp i64 %i.bq to double
  %i.bs = zext i32 %.pr109 to i64
  %i.bt = zext i32 %.pr153 to i64
  %i.bu = shl nuw nsw i64 %i.bt, 1
  %i.bv = mul i64 %i.bu, %i.bs
  %i.bw = uitofp i64 %i.bv to double
  %i.bx = fdiv double %i.br, %i.bw
  br label %.thread

.thread:                                          ; preds = %bb.e, %bb.d, %bb.o, %.thread150, %bb.p
  %i.by = phi double [ %i.bx, %bb.p ], [ 0.000000e+00, %.thread150 ], [ 0.000000e+00, %bb.o ], [ 0.000000e+00, %bb.d ], [ 0.000000e+00, %bb.e ]
  %i.bz = getelementptr i8, ptr %0, i64 72        ; 2 uses
  store double %i.by, ptr %i.bz, align 8
  store i16 2, ptr %4, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #19
  invoke void @_ZN13QMediaDevices18defaultAudioOutputEv(ptr dead_on_unwind nonnull writable sret(%class.QAudioDevice) align 8 %7)
          to label %bb.q unwind label %bb.ay

bb.q:                                             ; preds = %.thread
  %i.ca = invoke noundef zeroext i1 @_ZNK12QAudioDevice17isFormatSupportedERK12QAudioFormat(ptr noundef nonnull align 8 dereferenceable_or_null(8) %7, ptr noundef nonnull align 8 dereferenceable(24) %4)
          to label %bb.r unwind label %bb.az

bb.r:                                             ; preds = %bb.q
  br i1 %i.ca, label %bb.bf, label %bb.s

bb.s:                                             ; preds = %bb.r
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #19
  invoke void @_ZNK12QAudioDevice15preferredFormatEv(ptr dead_on_unwind nonnull writable sret(%class.QAudioFormat) align 8 %8, ptr noundef nonnull align 8 dereferenceable_or_null(8) %7)
          to label %bb.t unwind label %bb.ba

bb.t:                                             ; preds = %bb.s
  %i.cb = load i16, ptr %8, align 8
  %.off = add i16 %i.cb, -1
  %switch = icmp ult i16 %.off, 4
  br i1 %switch, label %bb.u, label %bb.bd

bb.u:                                             ; preds = %bb.t
  %i.cc = getelementptr inbounds nuw i8, ptr %8, i64 8
  %i.cd = load i32, ptr %i.cc, align 8            ; 2 uses
  %i.ce = icmp sgt i32 %i.cd, 0
  br i1 %i.ce, label %bb.v, label %bb.bd

bb.v:                                             ; preds = %bb.u
  %i.cf = getelementptr inbounds nuw i8, ptr %8, i64 2
  %i.cg = load i16, ptr %i.cf, align 2            ; 2 uses
  %i.ch = sext i16 %i.cg to i32                   ; 3 uses
  %.off113 = add nsw i32 %i.ch, -1
  %switch114 = icmp ult i32 %.off113, 2
  br i1 %switch114, label %bb.w, label %bb.bd

bb.w:                                             ; preds = %bb.v
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #19
  call void @llvm.experimental.noalias.scope.decl(metadata !26)
  %i.ci = icmp eq i32 %i.f, 0
  br i1 %i.ci, label %.loopexit.sink.split.i, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.cj = load i64, ptr %i.s, align 8, !noalias !26 ; 2 uses
  %i.ck = lshr i64 %i.cj, 1                       ; 2 uses
  %i.cl = icmp eq i64 %i.ck, 0
  %i.cm = icmp ugt i64 %i.cj, 4294967295
  %or.cond72.i = or i1 %i.cm, %i.cl
  br i1 %or.cond72.i, label %.loopexit.sink.split.i, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.cn = trunc nuw nsw i64 %i.ck to i32          ; 2 uses
  %i.co = uitofp nneg i32 %i.cn to double
  %i.cp = uitofp nneg i32 %i.cd to double         ; 3 uses
  %i.cq = fmul nnan double %i.cp, %i.co
  %i.cr = uitofp i32 %i.f to double               ; 3 uses
  %i.cs = fdiv double %i.cq, %i.cr
  %i.ct = call i64 @lround(double noundef %i.cs) #19, !noalias !26
  %i.cu = trunc i64 %i.ct to i32
  %.sroa.speculated65.i = call i32 @llvm.smax.i32(i32 %i.cu, i32 1) ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) dereferenceable_or_null(24) %9, i8 0, i64 24, i1 false), !alias.scope !26
  %i.cv = mul nuw i32 %.sroa.speculated65.i, %i.ch
  %i.cw = sext i32 %i.cv to i64
  %i.cx = shl nsw i64 %i.cw, 1
  invoke void @_ZN10QByteArray6resizeEx(ptr noundef nonnull align 8 dereferenceable_or_null(24) %9, i64 noundef %i.cx)
          to label %bb.z unwind label %bb.aa

bb.z:                                             ; preds = %bb.y
  %i.cy = load ptr, ptr %i.o, align 8, !noalias !26 ; 2 uses
  %.not.i.i.i52 = icmp eq ptr %i.cy, null
  %spec.select.i.i.i = select i1 %.not.i.i.i52, ptr @_ZN10QByteArray6_emptyE, ptr %i.cy ; 4 uses
  %i.cz = load ptr, ptr %9, align 16, !alias.scope !26 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.cz, null
  br i1 %.not.i.i.i.i, label %_ZNK17QArrayDataPointerIcE11needsDetachEv.exit.thread.i.i.i, label %_ZNK17QArrayDataPointerIcE11needsDetachEv.exit.i.i.i

_ZNK17QArrayDataPointerIcE11needsDetachEv.exit.i.i.i: ; preds = %bb.z
  %i.da = load atomic i32, ptr %i.cz monotonic, align 4
  %i.db = icmp sgt i32 %i.da, 1
  br i1 %i.db, label %_ZNK17QArrayDataPointerIcE11needsDetachEv.exit.thread.i.i.i, label %_ZN10QByteArray4dataEv.exit.i

_ZNK17QArrayDataPointerIcE11needsDetachEv.exit.thread.i.i.i: ; preds = %_ZNK17QArrayDataPointerIcE11needsDetachEv.exit.i.i.i, %bb.z
  %i.dc = getelementptr inbounds nuw i8, ptr %9, i64 16
  %i.dd = load i64, ptr %i.dc, align 16, !alias.scope !26
  invoke void @_ZN10QByteArray11reallocDataExN10QArrayData16AllocationOptionE(ptr noundef nonnull align 8 dereferenceable_or_null(24) %9, i64 noundef %i.dd, i32 noundef 1)
          to label %_ZN10QByteArray4dataEv.exit.i unwind label %bb.ab

_ZN10QByteArray4dataEv.exit.i:                    ; preds = %_ZNK17QArrayDataPointerIcE11needsDetachEv.exit.thread.i.i.i, %_ZNK17QArrayDataPointerIcE11needsDetachEv.exit.i.i.i
  %i.de = getelementptr inbounds nuw i8, ptr %9, i64 8
  %i.df = load ptr, ptr %i.de, align 8, !alias.scope !26 ; 2 uses
  %i.dg = add nsw i32 %i.cn, -1                   ; 4 uses
  %i.dh = icmp eq i16 %i.cg, 2
  %wide.trip.count80.i = zext nneg i32 %.sroa.speculated65.i to i64 ; 2 uses
  br i1 %i.dh, label %_ZN10QByteArray4dataEv.exit.split.us.i, label %_ZN10QByteArray4dataEv.exit.split.i

_ZN10QByteArray4dataEv.exit.split.us.i:           ; preds = %_ZN10QByteArray4dataEv.exit.i, %_ZN10QByteArray4dataEv.exit.split.us.i
  %indvars.iv76.i = phi i64 [ %indvars.iv.next77.i, %_ZN10QByteArray4dataEv.exit.split.us.i ], [ 0, %_ZN10QByteArray4dataEv.exit.i ] ; 3 uses
  %i.di = trunc nuw nsw i64 %indvars.iv76.i to i32
  %i.dj = uitofp nneg i32 %i.di to double
  %i.dk = fmul nnan double %i.cr, %i.dj
  %i.dl = fdiv double %i.dk, %i.cp                ; 2 uses
  %i.dm = call double @llvm.floor.f64(double %i.dl)
  %i.dn = fptosi double %i.dm to i32              ; 3 uses
  %i.do = add nuw i32 %i.dn, 1
  %.sroa.speculated54.us.i = call i32 @llvm.smin.i32(i32 %i.dg, i32 %i.do)
  %13 = uitofp nneg i32 %i.dn to double
  %i.dp = fsub double %i.dl, %13
  %i.dq = call i32 @llvm.smin.i32(i32 %i.dg, i32 %i.dn)
  %.sroa.speculated.us.i = call i32 @llvm.smax.i32(i32 %i.dq, i32 0)
  %i.dr = zext nneg i32 %.sroa.speculated.us.i to i64
  %i.ds = getelementptr [2 x i8], ptr %spec.select.i.i.i, i64 %i.dr
  %i.dt = load i16, ptr %i.ds, align 2
  %i.du = sitofp i16 %i.dt to double              ; 2 uses
  %i.dv = sext i32 %.sroa.speculated54.us.i to i64
  %i.dw = getelementptr [2 x i8], ptr %spec.select.i.i.i, i64 %i.dv
  %i.dx = load i16, ptr %i.dw, align 2
  %i.dy = sitofp i16 %i.dx to double
  %i.dz = fsub double %i.dy, %i.du
  %i.ea = call double @llvm.fmuladd.f64(double %i.dz, double %i.dp, double %i.du)
  %i.eb = call i64 @lround(double noundef %i.ea) #19
  %i.ec = trunc i64 %i.eb to i16                  ; 2 uses
  %.idx = shl nuw nsw i64 %indvars.iv76.i, 2
  %i.ed = getelementptr i8, ptr %i.df, i64 %.idx  ; 2 uses
  store i16 %i.ec, ptr %i.ed, align 2
  %i.ee = getelementptr i8, ptr %i.ed, i64 2
  store i16 %i.ec, ptr %i.ee, align 2
  %indvars.iv.next77.i = add nuw nsw i64 %indvars.iv76.i, 1 ; 2 uses
  %exitcond81.not.i = icmp eq i64 %indvars.iv.next77.i, %wide.trip.count80.i
  br i1 %exitcond81.not.i, label %_ZL19resample_int16_monoRK10QByteArrayjjj.exit, label %_ZN10QByteArray4dataEv.exit.split.us.i, !llvm.loop !18

bb.aa:                                            ; preds = %bb.y
  %i.ef = landingpad { ptr, i32 }
          cleanup
  br label %bb.ac

bb.ab:                                            ; preds = %_ZNK17QArrayDataPointerIcE11needsDetachEv.exit.thread.i.i.i
  %i.eg = landingpad { ptr, i32 }
          cleanup
  br label %bb.ac

_ZN10QByteArray4dataEv.exit.split.i:              ; preds = %_ZN10QByteArray4dataEv.exit.i, %_ZN10QByteArray4dataEv.exit.split.i
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %_ZN10QByteArray4dataEv.exit.split.i ], [ 0, %_ZN10QByteArray4dataEv.exit.i ] ; 2 uses
  %i.eh = trunc nuw nsw i64 %indvars.iv.i to i32  ; 2 uses
  %i.ei = uitofp nneg i32 %i.eh to double
  %i.ej = fmul nnan double %i.cr, %i.ei
  %i.ek = fdiv double %i.ej, %i.cp                ; 2 uses
  %i.el = call double @llvm.floor.f64(double %i.ek)
  %i.em = fptosi double %i.el to i32              ; 3 uses
  %i.en = add nuw i32 %i.em, 1
  %.sroa.speculated54.i = call i32 @llvm.smin.i32(i32 %i.dg, i32 %i.en)
  %14 = uitofp nneg i32 %i.em to double
  %i.eo = fsub double %i.ek, %14
  %i.ep = call i32 @llvm.smin.i32(i32 %i.dg, i32 %i.em)
  %.sroa.speculated.i = call i32 @llvm.smax.i32(i32 %i.ep, i32 0)
  %i.eq = zext nneg i32 %.sroa.speculated.i to i64
  %i.er = getelementptr [2 x i8], ptr %spec.select.i.i.i, i64 %i.eq
  %i.es = load i16, ptr %i.er, align 2
  %i.et = sitofp i16 %i.es to double              ; 2 uses
  %i.eu = sext i32 %.sroa.speculated54.i to i64
  %i.ev = getelementptr [2 x i8], ptr %spec.select.i.i.i, i64 %i.eu
  %i.ew = load i16, ptr %i.ev, align 2
  %i.ex = sitofp i16 %i.ew to double
  %i.ey = fsub double %i.ex, %i.et
  %i.ez = call double @llvm.fmuladd.f64(double %i.ey, double %i.eo, double %i.et)
  %i.fa = call i64 @lround(double noundef %i.ez) #19
  %i.fb = trunc i64 %i.fa to i16
  %i.fc = mul nuw nsw i32 %i.eh, %i.ch
  %i.fd = zext i32 %i.fc to i64
  %i.fe = getelementptr [2 x i8], ptr %i.df, i64 %i.fd
  store i16 %i.fb, ptr %i.fe, align 2
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count80.i
  br i1 %exitcond.not.i, label %_ZL19resample_int16_monoRK10QByteArrayjjj.exit, label %_ZN10QByteArray4dataEv.exit.split.i, !llvm.loop !18

bb.ac:                                            ; preds = %bb.ab, %bb.aa
  %.pn.i = phi { ptr, i32 } [ %i.eg, %bb.ab ], [ %i.ef, %bb.aa ] ; 3 uses
  %i.ff = load ptr, ptr %9, align 16              ; 2 uses
  %.not.i.i.i91 = icmp eq ptr %i.ff, null
  br i1 %.not.i.i.i91, label %.body, label %_ZN17QArrayDataPointerIcE5derefEv.exit.i.i92

_ZN17QArrayDataPointerIcE5derefEv.exit.i.i92:     ; preds = %bb.ac
  %i.fg = atomicrmw sub ptr %i.ff, i32 1 acq_rel, align 4
  %.not.i.i93 = icmp eq i32 %i.fg, 1
  br i1 %.not.i.i93, label %.body.sink.split, label %.body

.loopexit.sink.split.i:                           ; preds = %bb.x, %bb.w
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) dereferenceable_or_null(24) %9, i8 0, i64 24, i1 false), !alias.scope !26
  br label %_ZL19resample_int16_monoRK10QByteArrayjjj.exit

_ZL19resample_int16_monoRK10QByteArrayjjj.exit:   ; preds = %_ZN10QByteArray4dataEv.exit.split.i, %_ZN10QByteArray4dataEv.exit.split.us.i, %.loopexit.sink.split.i
  %i.fh = getelementptr inbounds nuw i8, ptr %9, i64 16
  %i.fi = load i64, ptr %i.fh, align 16           ; 5 uses
  %i.fj = icmp eq i64 %i.fi, 0
  br i1 %i.fj, label %bb.bb, label %bb.ad

bb.ad:                                            ; preds = %_ZL19resample_int16_monoRK10QByteArrayjjj.exit
  %i.fk = load i16, ptr %8, align 8               ; 2 uses
  %i.fl = icmp eq i16 %i.fk, 2
  br i1 %i.fl, label %bb.ae, label %bb.ag

bb.ae:                                            ; preds = %bb.ad
  %i.fm = load <2 x ptr>, ptr %9, align 16, !noalias !27 ; 2 uses
  %i.fn = load ptr, ptr %9, align 16, !noalias !27 ; 2 uses
  %.not.i.i.i.i59 = icmp eq ptr %i.fn, null
  %i.fo = insertelement <2 x ptr> %i.fm, ptr null, i64 0
  br i1 %.not.i.i.i.i59, label %_ZL27convert_int16_pcm_to_formatRK10QByteArrayN12QAudioFormat12SampleFormatE.exit, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.fp = atomicrmw add ptr %i.fn, i32 1 acq_rel, align 4, !noalias !27 ; 0 uses
  br label %_ZL27convert_int16_pcm_to_formatRK10QByteArrayN12QAudioFormat12SampleFormatE.exit

bb.ag:                                            ; preds = %bb.ad
  %i.fq = lshr i64 %i.fi, 1                       ; 7 uses
  %i.fr = icmp eq i64 %i.fq, 0
  %i.fs = icmp ugt i64 %i.fi, 4294967295
  %or.cond.i53 = or i1 %i.fs, %i.fr
  br i1 %or.cond.i53, label %_ZL27convert_int16_pcm_to_formatRK10QByteArrayN12QAudioFormat12SampleFormatE.exit, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  %i.ft = getelementptr inbounds nuw i8, ptr %9, i64 8
  %i.fu = load ptr, ptr %i.ft, align 8, !noalias !27 ; 2 uses
  %.not.i.i.i54 = icmp eq ptr %i.fu, null
  %spec.select.i.i.i55 = select i1 %.not.i.i.i54, ptr @_ZN10QByteArray6_emptyE, ptr %i.fu ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #19, !noalias !27
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) dereferenceable_or_null(24) %3, i8 0, i64 24, i1 false), !noalias !27
  switch i16 %i.fk, label %_ZN10QByteArrayD2Ev.exit.i [
    i16 1, label %bb.ai
    i16 3, label %bb.an
    i16 4, label %bb.ar
  ]

bb.ai:                                            ; preds = %bb.ah
  invoke void @_ZN10QByteArray6resizeEx(ptr noundef nonnull align 8 dereferenceable_or_null(24) %3, i64 noundef %i.fq)
          to label %.lr.ph63.i unwind label %bb.aj, !noalias !27

.lr.ph63.i:                                       ; preds = %bb.ai
  %i.fv = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.fw = getelementptr inbounds nuw i8, ptr %3, i64 8
  br label %bb.ak

._crit_edge64.i:                                  ; preds = %bb.al
  %i.fx = load <2 x ptr>, ptr %3, align 16, !noalias !27
  %i.fy = load i64, ptr %i.fv, align 16, !noalias !27
  br label %_ZN10QByteArrayD2Ev.exit.i

bb.aj:                                            ; preds = %bb.ar, %bb.an, %bb.ai
  %i.fz = landingpad { ptr, i32 }
          cleanup
  br label %bb.av

bb.ak:                                            ; preds = %bb.al, %.lr.ph63.i
  %i.ga = phi i64 [ 0, %.lr.ph63.i ], [ %i.gn, %bb.al ] ; 2 uses
  %.03162.i = phi i32 [ 0, %.lr.ph63.i ], [ %i.gm, %bb.al ]
  %i.gb = getelementptr [2 x i8], ptr %spec.select.i.i.i55, i64 %i.ga
  %i.gc = load i16, ptr %i.gb, align 2, !noalias !27
  %i.gd = lshr i16 %i.gc, 8
  %i.ge = load ptr, ptr %3, align 16, !noalias !27 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.ge, null
  br i1 %.not.i.i.i.i.i, label %_ZNK17QArrayDataPointerIcE11needsDetachEv.exit.thread.i.i.i.i, label %_ZNK17QArrayDataPointerIcE11needsDetachEv.exit.i.i.i.i

_ZNK17QArrayDataPointerIcE11needsDetachEv.exit.i.i.i.i: ; preds = %bb.ak
  %i.gf = load atomic i32, ptr %i.ge monotonic, align 4, !noalias !27
  %i.gg = icmp sgt i32 %i.gf, 1
  br i1 %i.gg, label %_ZNK17QArrayDataPointerIcE11needsDetachEv.exit.thread.i.i.i.i, label %bb.al

_ZNK17QArrayDataPointerIcE11needsDetachEv.exit.thread.i.i.i.i: ; preds = %_ZNK17QArrayDataPointerIcE11needsDetachEv.exit.i.i.i.i, %bb.ak
  %i.gh = load i64, ptr %i.fv, align 16, !noalias !27
  invoke void @_ZN10QByteArray11reallocDataExN10QArrayData16AllocationOptionE(ptr noundef nonnull align 8 dereferenceable_or_null(24) %3, i64 noundef %i.gh, i32 noundef 1)
          to label %bb.al unwind label %bb.am, !noalias !27

bb.al:                                            ; preds = %_ZNK17QArrayDataPointerIcE11needsDetachEv.exit.thread.i.i.i.i, %_ZNK17QArrayDataPointerIcE11needsDetachEv.exit.i.i.i.i
  %i.gi = load ptr, ptr %i.fw, align 8, !noalias !27
  %i.gj = getelementptr i8, ptr %i.gi, i64 %i.ga
  %i.gk = trunc nuw i16 %i.gd to i8
  %i.gl = xor i8 %i.gk, -128
  store i8 %i.gl, ptr %i.gj, align 1, !noalias !27
  %i.gm = add i32 %.03162.i, 1                    ; 2 uses
  %i.gn = sext i32 %i.gm to i64                   ; 2 uses
  %i.go = icmp sgt i64 %i.fq, %i.gn
  br i1 %i.go, label %bb.ak, label %._crit_edge64.i, !llvm.loop !21

bb.am:                                            ; preds = %_ZNK17QArrayDataPointerIcE11needsDetachEv.exit.thread.i.i.i.i
  %i.gp = landingpad { ptr, i32 }
          cleanup
  br label %bb.av

bb.an:                                            ; preds = %bb.ah
  %i.gq = shl nuw nsw i64 %i.fq, 2
  invoke void @_ZN10QByteArray6resizeEx(ptr noundef nonnull align 8 dereferenceable_or_null(24) %3, i64 noundef %i.gq)
          to label %.lr.ph60.i unwind label %bb.aj, !noalias !27

.lr.ph60.i:                                       ; preds = %bb.an
  %i.gr = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.gs = getelementptr inbounds nuw i8, ptr %3, i64 8
  br label %bb.ao

._crit_edge61.i:                                  ; preds = %bb.ap
  %i.gt = load <2 x ptr>, ptr %3, align 16, !noalias !27
  %i.gu = load i64, ptr %i.gr, align 16, !noalias !27
  br label %_ZN10QByteArrayD2Ev.exit.i

bb.ao:                                            ; preds = %bb.ap, %.lr.ph60.i
  %i.gv = phi i64 [ 0, %.lr.ph60.i ], [ %i.hj, %bb.ap ]
  %.03059.i = phi i32 [ 0, %.lr.ph60.i ], [ %i.hi, %bb.ap ] ; 2 uses
  %i.gw = getelementptr [2 x i8], ptr %spec.select.i.i.i55, i64 %i.gv
  %i.gx = load i16, ptr %i.gw, align 2, !noalias !27
  %i.gy = sext i16 %i.gx to i32
  %i.gz = shl nsw i32 %i.gy, 16
  %i.ha = load ptr, ptr %3, align 16, !noalias !27 ; 2 uses
  %.not.i.i.i40.i = icmp eq ptr %i.ha, null
  br i1 %.not.i.i.i40.i, label %_ZNK17QArrayDataPointerIcE11needsDetachEv.exit.thread.i.i.i58, label %_ZNK17QArrayDataPointerIcE11needsDetachEv.exit.i.i.i57

_ZNK17QArrayDataPointerIcE11needsDetachEv.exit.i.i.i57: ; preds = %bb.ao
  %i.hb = load atomic i32, ptr %i.ha monotonic, align 4, !noalias !27
  %i.hc = icmp sgt i32 %i.hb, 1
  br i1 %i.hc, label %_ZNK17QArrayDataPointerIcE11needsDetachEv.exit.thread.i.i.i58, label %bb.ap

_ZNK17QArrayDataPointerIcE11needsDetachEv.exit.thread.i.i.i58: ; preds = %_ZNK17QArrayDataPointerIcE11needsDetachEv.exit.i.i.i57, %bb.ao
  %i.hd = load i64, ptr %i.gr, align 16, !noalias !27
  invoke void @_ZN10QByteArray11reallocDataExN10QArrayData16AllocationOptionE(ptr noundef nonnull align 8 dereferenceable_or_null(24) %3, i64 noundef %i.hd, i32 noundef 1)
          to label %bb.ap unwind label %bb.aq, !noalias !27

bb.ap:                                            ; preds = %_ZNK17QArrayDataPointerIcE11needsDetachEv.exit.thread.i.i.i58, %_ZNK17QArrayDataPointerIcE11needsDetachEv.exit.i.i.i57
  %i.he = load ptr, ptr %i.gs, align 8, !noalias !27
  %i.hf = shl i32 %.03059.i, 2
  %i.hg = sext i32 %i.hf to i64
  %i.hh = getelementptr i8, ptr %i.he, i64 %i.hg
  store i32 %i.gz, ptr %i.hh, align 1
  %i.hi = add i32 %.03059.i, 1                    ; 2 uses
  %i.hj = sext i32 %i.hi to i64                   ; 2 uses
  %i.hk = icmp sgt i64 %i.fq, %i.hj
  br i1 %i.hk, label %bb.ao, label %._crit_edge61.i, !llvm.loop !22

bb.aq:                                            ; preds = %_ZNK17QArrayDataPointerIcE11needsDetachEv.exit.thread.i.i.i58
  %i.hl = landingpad { ptr, i32 }
          cleanup
  br label %bb.av

bb.ar:                                            ; preds = %bb.ah
  %i.hm = shl nuw nsw i64 %i.fq, 2
  invoke void @_ZN10QByteArray6resizeEx(ptr noundef nonnull align 8 dereferenceable_or_null(24) %3, i64 noundef %i.hm)
          to label %.lr.ph.i unwind label %bb.aj, !noalias !27

.lr.ph.i:                                         ; preds = %bb.ar
  %i.hn = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.ho = getelementptr inbounds nuw i8, ptr %3, i64 8
  br label %bb.as

._crit_edge.i:                                    ; preds = %bb.at
  %i.hp = load <2 x ptr>, ptr %3, align 16, !noalias !27
  %i.hq = load i64, ptr %i.hn, align 16, !noalias !27
end_hunk_0
