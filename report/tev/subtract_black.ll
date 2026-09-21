Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/tev/original/subtract_black?download=true
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0_@_ZN6LibRaw23subtract_black_internalEv:bb.a
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 136692
  %i.am = load i32, ptr %i.al, align 4, !tbaa !77 ; 9 uses
  %.not81 = icmp eq i32 %i.am, 0
  br i1 %.not81, label %bb.l, label %.preheader87

.preheader87:                                     ; preds = %bb.k
  %.not102 = icmp eq i32 %i.ab, 0
  br i1 %.not102, label %.loopexit, label %.preheader86.lr.ph

.preheader86.lr.ph:                               ; preds = %.preheader87
  %i.an = load ptr, ptr %i.a, align 8, !tbaa !82
  %wide.trip.count = zext i32 %i.ab to i64
  br label %.preheader86

.preheader86:                                     ; preds = %.preheader86.lr.ph, %.preheader86
  %indvars.iv = phi i64 [ 0, %.preheader86.lr.ph ], [ %indvars.iv.next, %.preheader86 ] ; 3 uses
  %.06392 = phi i32 [ 0, %.preheader86.lr.ph ], [ %spec.select.3, %.preheader86 ]
  %i.ao = getelementptr inbounds nuw [8 x i8], ptr %i.an, i64 %indvars.iv ; 5 uses
  %i.ap = load i16, ptr %i.ao, align 2, !tbaa !83
  %i.aq = zext i16 %i.ap to i32
  %i.ar = load i16, ptr %i.y, align 2, !tbaa !79
  %i.as = zext i16 %i.ar to i32                   ; 2 uses
  %i.at = trunc nuw nsw i64 %indvars.iv to i32    ; 8 uses
  %i.au = udiv i32 %i.at, %i.as
  %i.av = urem i32 %i.au, %i.ad
  %i.aw = mul i32 %i.av, %i.am
  %i.ax = add i32 %i.aw, 6
  %i.ay = urem i32 %i.at, %i.as
  %i.az = urem i32 %i.ay, %i.am
  %i.ba = add i32 %i.ax, %i.az
  %i.bb = zext i32 %i.ba to i64
  %i.bc = getelementptr inbounds nuw [4 x i8], ptr %i.j, i64 %i.bb
  %i.bd = load i32, ptr %i.bc, align 4, !tbaa !77
  %i.be = add i32 %i.bd, %i.k
  %i.bf = sub i32 %i.aq, %i.be                    ; 2 uses
  %i.bg = tail call i32 @llvm.smax.i32(i32 %i.bf, i32 0)
  %i.bh = tail call i32 @llvm.umin.i32(i32 %i.bg, i32 65535)
  %i.bi = trunc nuw i32 %i.bh to i16
  store i16 %i.bi, ptr %i.ao, align 2, !tbaa !83
  %spec.select = tail call i32 @llvm.smax.i32(i32 %.06392, i32 %i.bf)
  %i.bj = getelementptr inbounds nuw i8, ptr %i.ao, i64 2 ; 2 uses
  %i.bk = load i16, ptr %i.bj, align 2, !tbaa !83
  %i.bl = zext i16 %i.bk to i32
  %i.bm = load i16, ptr %i.y, align 2, !tbaa !79
  %i.bn = zext i16 %i.bm to i32                   ; 2 uses
  %i.bo = udiv i32 %i.at, %i.bn
  %i.bp = urem i32 %i.bo, %i.ad
  %i.bq = mul i32 %i.bp, %i.am
  %i.br = add i32 %i.bq, 6
  %i.bs = urem i32 %i.at, %i.bn
  %i.bt = urem i32 %i.bs, %i.am
  %i.bu = add i32 %i.br, %i.bt
  %i.bv = zext i32 %i.bu to i64
  %i.bw = getelementptr inbounds nuw [4 x i8], ptr %i.j, i64 %i.bv
  %i.bx = load i32, ptr %i.bw, align 4, !tbaa !77
  %i.by = add i32 %i.bx, %.sroa.5.0.copyload
  %i.bz = sub i32 %i.bl, %i.by                    ; 2 uses
  %i.ca = tail call i32 @llvm.smax.i32(i32 %i.bz, i32 0)
  %i.cb = tail call i32 @llvm.umin.i32(i32 %i.ca, i32 65535)
  %i.cc = trunc nuw i32 %i.cb to i16
  store i16 %i.cc, ptr %i.bj, align 2, !tbaa !83
  %spec.select.1 = tail call i32 @llvm.smax.i32(i32 %spec.select, i32 %i.bz)
  %i.cd = getelementptr inbounds nuw i8, ptr %i.ao, i64 4 ; 2 uses
  %i.ce = load i16, ptr %i.cd, align 2, !tbaa !83
  %i.cf = zext i16 %i.ce to i32
  %i.cg = load i16, ptr %i.y, align 2, !tbaa !79
  %i.ch = zext i16 %i.cg to i32                   ; 2 uses
  %i.ci = udiv i32 %i.at, %i.ch
  %i.cj = urem i32 %i.ci, %i.ad
  %i.ck = mul i32 %i.cj, %i.am
  %i.cl = add i32 %i.ck, 6
  %i.cm = urem i32 %i.at, %i.ch
  %i.cn = urem i32 %i.cm, %i.am
  %i.co = add i32 %i.cl, %i.cn
  %i.cp = zext i32 %i.co to i64
  %i.cq = getelementptr inbounds nuw [4 x i8], ptr %i.j, i64 %i.cp
  %i.cr = load i32, ptr %i.cq, align 4, !tbaa !77
  %i.cs = add i32 %i.cr, %.sroa.7.0.copyload
  %i.ct = sub i32 %i.cf, %i.cs                    ; 2 uses
  %i.cu = tail call i32 @llvm.smax.i32(i32 %i.ct, i32 0)
  %i.cv = tail call i32 @llvm.umin.i32(i32 %i.cu, i32 65535)
  %i.cw = trunc nuw i32 %i.cv to i16
  store i16 %i.cw, ptr %i.cd, align 2, !tbaa !83
  %spec.select.2 = tail call i32 @llvm.smax.i32(i32 %spec.select.1, i32 %i.ct)
  %i.cx = getelementptr inbounds nuw i8, ptr %i.ao, i64 6 ; 2 uses
  %i.cy = load i16, ptr %i.cx, align 2, !tbaa !83
  %i.cz = zext i16 %i.cy to i32
  %i.da = load i16, ptr %i.y, align 2, !tbaa !79
  %i.db = zext i16 %i.da to i32                   ; 2 uses
  %i.dc = udiv i32 %i.at, %i.db
  %i.dd = urem i32 %i.dc, %i.ad
  %i.de = mul i32 %i.dd, %i.am
  %i.df = add i32 %i.de, 6
  %i.dg = urem i32 %i.at, %i.db
  %i.dh = urem i32 %i.dg, %i.am
  %i.di = add i32 %i.df, %i.dh
  %i.dj = zext i32 %i.di to i64
  %i.dk = getelementptr inbounds nuw [4 x i8], ptr %i.j, i64 %i.dj
  %i.dl = load i32, ptr %i.dk, align 4, !tbaa !77
  %i.dm = add i32 %i.dl, %.sroa.9.0.copyload
  %i.dn = sub i32 %i.cz, %i.dm                    ; 2 uses
  %i.do = tail call i32 @llvm.smax.i32(i32 %i.dn, i32 0)
  %i.dp = tail call i32 @llvm.umin.i32(i32 %i.do, i32 65535)
  %i.dq = trunc nuw i32 %i.dp to i16
  store i16 %i.dq, ptr %i.cx, align 2, !tbaa !83
  %spec.select.3 = tail call i32 @llvm.smax.i32(i32 %spec.select.2, i32 %i.dn) ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %.loopexit, label %.preheader86, !llvm.loop !8

bb.l:                                             ; preds = %bb.k, %._crit_edge127
  %.not103 = icmp eq i32 %i.ab, 0
  br i1 %.not103, label %.loopexit, label %.preheader.lr.ph

.preheader.lr.ph:                                 ; preds = %bb.l
  %i.dr = load ptr, ptr %i.a, align 8, !tbaa !82
  %wide.trip.count116 = zext i32 %i.ab to i64
  br label %.preheader

.preheader:                                       ; preds = %.preheader.lr.ph, %.preheader
  %indvars.iv113 = phi i64 [ 0, %.preheader.lr.ph ], [ %indvars.iv.next114, %.preheader ] ; 2 uses
  %.396 = phi i32 [ 0, %.preheader.lr.ph ], [ %spec.select82.3, %.preheader ]
  %i.ds = getelementptr inbounds nuw [8 x i8], ptr %i.dr, i64 %indvars.iv113 ; 5 uses
  %i.dt = load i16, ptr %i.ds, align 2, !tbaa !83
  %i.du = zext i16 %i.dt to i32
  %i.dv = sub nsw i32 %i.du, %i.k                 ; 2 uses
  %i.dw = tail call i32 @llvm.smax.i32(i32 %i.dv, i32 0)
  %i.dx = tail call i32 @llvm.umin.i32(i32 %i.dw, i32 65535)
  %i.dy = trunc nuw i32 %i.dx to i16
  store i16 %i.dy, ptr %i.ds, align 2, !tbaa !83
  %spec.select82 = tail call i32 @llvm.smax.i32(i32 %.396, i32 %i.dv)
  %i.dz = getelementptr inbounds nuw i8, ptr %i.ds, i64 2 ; 2 uses
  %i.ea = load i16, ptr %i.dz, align 2, !tbaa !83
  %i.eb = zext i16 %i.ea to i32
  %i.ec = sub nsw i32 %i.eb, %.sroa.5.0.copyload  ; 2 uses
  %i.ed = tail call i32 @llvm.smax.i32(i32 %i.ec, i32 0)
  %i.ee = tail call i32 @llvm.umin.i32(i32 %i.ed, i32 65535)
  %i.ef = trunc nuw i32 %i.ee to i16
  store i16 %i.ef, ptr %i.dz, align 2, !tbaa !83
  %spec.select82.1 = tail call i32 @llvm.smax.i32(i32 %spec.select82, i32 %i.ec)
  %i.eg = getelementptr inbounds nuw i8, ptr %i.ds, i64 4 ; 2 uses
  %i.eh = load i16, ptr %i.eg, align 2, !tbaa !83
  %i.ei = zext i16 %i.eh to i32
  %i.ej = sub nsw i32 %i.ei, %.sroa.7.0.copyload  ; 2 uses
  %i.ek = tail call i32 @llvm.smax.i32(i32 %i.ej, i32 0)
  %i.el = tail call i32 @llvm.umin.i32(i32 %i.ek, i32 65535)
  %i.em = trunc nuw i32 %i.el to i16
  store i16 %i.em, ptr %i.eg, align 2, !tbaa !83
  %spec.select82.2 = tail call i32 @llvm.smax.i32(i32 %spec.select82.1, i32 %i.ej)
  %i.en = getelementptr inbounds nuw i8, ptr %i.ds, i64 6 ; 2 uses
  %i.eo = load i16, ptr %i.en, align 2, !tbaa !83
  %i.ep = zext i16 %i.eo to i32
  %i.eq = sub nsw i32 %i.ep, %.sroa.9.0.copyload  ; 2 uses
  %i.er = tail call i32 @llvm.smax.i32(i32 %i.eq, i32 0)
  %i.es = tail call i32 @llvm.umin.i32(i32 %i.er, i32 65535)
  %i.et = trunc nuw i32 %i.es to i16
  store i16 %i.et, ptr %i.en, align 2, !tbaa !83
  %spec.select82.3 = tail call i32 @llvm.smax.i32(i32 %spec.select82.2, i32 %i.eq) ; 2 uses
  %indvars.iv.next114 = add nuw nsw i64 %indvars.iv113, 1 ; 2 uses
  %exitcond117.not = icmp eq i64 %indvars.iv.next114, %wide.trip.count116
  br i1 %exitcond117.not, label %.loopexit, label %.preheader, !llvm.loop !9

.loopexit:                                        ; preds = %.preheader86, %.preheader, %.preheader87, %bb.l
  %.6 = phi i32 [ %spec.select82.3, %.preheader ], [ 0, %bb.l ], [ 0, %.preheader87 ], [ %spec.select.3, %.preheader86 ]
  %i.eu = and i32 %.6, 65535
  %i.ev = getelementptr inbounds nuw i8, ptr %0, i64 153092
  store i32 %i.eu, ptr %i.ev, align 4, !tbaa !85
  %i.ew = getelementptr inbounds nuw i8, ptr %0, i64 153088
  %i.ex = load i32, ptr %i.ew, align 8, !tbaa !86
  %i.ey = getelementptr inbounds nuw i8, ptr %0, i64 153096 ; 2 uses
  %i.ez = load i32, ptr %i.ey, align 8, !tbaa !87
  %i.fa = sub i32 %i.ez, %i.ex
  store i32 %i.fa, ptr %i.ey, align 8, !tbaa !87
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16420) %i.j, i8 0, i64 16420, i1 false)
  br label %bb.w

bb.m:                                             ; preds = %bb.h, %bb.g, %bb.c
  %i.fb = load ptr, ptr %i.a, align 8, !tbaa !82  ; 2 uses
  %i.fc = getelementptr inbounds nuw i8, ptr %0, i64 28
  %i.fd = load i16, ptr %i.fc, align 4, !tbaa !78
  %i.fe = zext i16 %i.fd to i32
  %i.ff = getelementptr inbounds nuw i8, ptr %0, i64 30
  %i.fg = load i16, ptr %i.ff, align 2, !tbaa !79
  %i.fh = zext i16 %i.fg to i32
  %i.fi = shl nuw nsw i32 %i.fe, 2
  %i.fj = mul i32 %i.fi, %i.fh                    ; 3 uses
  %.not104 = icmp eq i32 %i.fj, 0
  br i1 %.not104, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.m
  %wide.trip.count121 = zext i32 %i.fj to i64     ; 3 uses
  %min.iters.check = icmp ult i32 %i.fj, 8
  br i1 %min.iters.check, label %.lr.ph.preheader137, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.preheader
  %n.vec = and i64 %wide.trip.count121, 4294967288 ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.phi = phi <4 x i16> [ zeroinitializer, %vector.ph ], [ %1, %vector.body ]
  %vec.phi135 = phi <4 x i16> [ zeroinitializer, %vector.ph ], [ %2, %vector.body ]
  %i.fk = getelementptr inbounds nuw [2 x i8], ptr %i.fb, i64 %index ; 2 uses
  %i.fl = getelementptr inbounds nuw i8, ptr %i.fk, i64 8
  %wide.load = load <4 x i16>, ptr %i.fk, align 2, !tbaa !83
  %wide.load136 = load <4 x i16>, ptr %i.fl, align 2, !tbaa !83
  %1 = tail call <4 x i16> @llvm.umax.v4i16(<4 x i16> %vec.phi, <4 x i16> %wide.load) ; 2 uses
  %2 = tail call <4 x i16> @llvm.umax.v4i16(<4 x i16> %vec.phi135, <4 x i16> %wide.load136) ; 2 uses
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.fm = icmp eq i64 %index.next, %n.vec
  br i1 %i.fm, label %middle.block, label %vector.body, !llvm.loop !10

middle.block:                                     ; preds = %vector.body
  %rdx.minmax = tail call <4 x i16> @llvm.umax.v4i16(<4 x i16> %1, <4 x i16> %2)
  %3 = tail call i16 @llvm.vector.reduce.umax.v4i16(<4 x i16> %rdx.minmax)
  %4 = zext i16 %3 to i32                         ; 2 uses
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count121
  br i1 %cmp.n, label %._crit_edge, label %.lr.ph.preheader137

.lr.ph.preheader137:                              ; preds = %.lr.ph.preheader, %middle.block
  %indvars.iv118.ph = phi i64 [ 0, %.lr.ph.preheader ], [ %n.vec, %middle.block ]
  %.0100.ph = phi i32 [ 0, %.lr.ph.preheader ], [ %4, %middle.block ]
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader137, %.lr.ph
  %indvars.iv118 = phi i64 [ %indvars.iv.next119, %.lr.ph ], [ %indvars.iv118.ph, %.lr.ph.preheader137 ] ; 2 uses
  %.0100 = phi i32 [ %spec.select83, %.lr.ph ], [ %.0100.ph, %.lr.ph.preheader137 ]
  %i.fn = getelementptr inbounds nuw [2 x i8], ptr %i.fb, i64 %indvars.iv118
  %i.fo = load i16, ptr %i.fn, align 2, !tbaa !83
  %i.fp = zext i16 %i.fo to i32
  %spec.select83 = tail call i32 @llvm.umax.i32(i32 %.0100, i32 %i.fp) ; 2 uses
  %indvars.iv.next119 = add nuw nsw i64 %indvars.iv118, 1 ; 2 uses
  %exitcond122.not = icmp eq i64 %indvars.iv.next119, %wide.trip.count121
  br i1 %exitcond122.not, label %._crit_edge, label %.lr.ph, !llvm.loop !11

._crit_edge:                                      ; preds = %.lr.ph, %middle.block, %bb.m
  %.0.lcssa = phi i32 [ 0, %bb.m ], [ %4, %middle.block ], [ %spec.select83, %.lr.ph ]
  %i.fq = getelementptr inbounds nuw i8, ptr %0, i64 153092
  store i32 %.0.lcssa, ptr %i.fq, align 4, !tbaa !85
  br label %bb.w

bb.n:                                             ; preds = %bb.j
  invoke void @_ZN6LibRaw7recycleEv(ptr noundef nonnull align 8 dereferenceable(768512) %0)
          to label %bb.v unwind label %bb.o

bb.o:                                             ; preds = %.invoke, %bb.u, %bb.t, %bb.s, %bb.r, %bb.q, %bb.p, %bb.n
  %i.fr = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_end_catch() #5
  br label %bb.x

bb.p:                                             ; preds = %bb.j
  invoke void @_ZN6LibRaw7recycleEv(ptr noundef nonnull align 8 dereferenceable(768512) %0)
          to label %bb.v unwind label %bb.o

bb.q:                                             ; preds = %bb.j
  invoke void @_ZN6LibRaw7recycleEv(ptr noundef nonnull align 8 dereferenceable(768512) %0)
          to label %bb.v unwind label %bb.o

.invoke:                                          ; preds = %bb.j, %bb.j, %bb.j
  invoke void @_ZN6LibRaw7recycleEv(ptr noundef nonnull align 8 dereferenceable(768512) %0)
          to label %bb.v unwind label %bb.o

bb.r:                                             ; preds = %bb.j, %bb.j
  invoke void @_ZN6LibRaw7recycleEv(ptr noundef nonnull align 8 dereferenceable(768512) %0)
          to label %bb.v unwind label %bb.o

bb.s:                                             ; preds = %bb.j
  invoke void @_ZN6LibRaw7recycleEv(ptr noundef nonnull align 8 dereferenceable(768512) %0)
          to label %bb.v unwind label %bb.o

bb.t:                                             ; preds = %bb.j
  invoke void @_ZN6LibRaw7recycleEv(ptr noundef nonnull align 8 dereferenceable(768512) %0)
          to label %bb.v unwind label %bb.o

bb.u:                                             ; preds = %bb.j
  invoke void @_ZN6LibRaw7recycleEv(ptr noundef nonnull align 8 dereferenceable(768512) %0)
          to label %bb.v unwind label %bb.o

bb.v:                                             ; preds = %.invoke, %bb.j, %bb.u, %bb.t, %bb.s, %bb.r, %bb.q, %bb.p, %bb.n
  %.068 = phi i32 [ -2, %bb.u ], [ -100011, %bb.t ], [ -100013, %bb.n ], [ -100007, %bb.p ], [ -100012, %bb.q ], [ -1, %bb.j ], [ -100008, %.invoke ], [ -100009, %bb.r ], [ -100010, %bb.s ]
  tail call void @__cxa_end_catch() #5
  br label %bb.w

bb.w:                                             ; preds = %.loopexit, %._crit_edge, %bb.a, %bb.v
  %.169 = phi i32 [ %.068, %bb.v ], [ -4, %bb.a ], [ 0, %._crit_edge ], [ 0, %.loopexit ]
  ret i32 %.169

bb.x:                                             ; preds = %bb.o, %bb.i
  %.merged = phi { ptr, i32 } [ %i.fr, %bb.o ], [ %i.ae, %bb.i ]
  resume { ptr, i32 } %.merged
}

declare i32 @__gxx_personality_v0(...)

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #2

; Function Attrs: nounwind memory(none)
declare i32 @llvm.eh.typeid.for.p0(ptr) #3

declare ptr @__cxa_begin_catch(ptr) local_unnamed_addr

declare void @_ZN6LibRaw7recycleEv(ptr noundef nonnull align 8 dereferenceable(768512)) local_unnamed_addr #1

declare void @__cxa_end_catch() local_unnamed_addr

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #4

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umin.i32(i32, i32) #4

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umax.i32(i32, i32) #4

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x i16> @llvm.umax.v4i16(<4 x i16>, <4 x i16>) #4

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i16 @llvm.vector.reduce.umax.v4i16(<4 x i16>) #4

attributes #0 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #3 = { nounwind memory(none) }
attributes #4 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #5 = { nounwind }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}
!llvm.errno.tbaa = !{!7}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{!"Ubuntu clang version 24.0.0 (++20260816081927+7cb5d896117c-1~exp1~20260816201937.1790)"}
!3 = !{!"Simple C++ TBAA"}
!4 = !{!"omnipotent char", !3, i64 0}
!5 = !{!"int", !4, i64 0}
!6 = !{!"__libc_errno", !5, i64 0}
!7 = !{!6, !5, i64 0}
!8 = distinct !{!8, !84}
!9 = distinct !{!9, !84}
!10 = distinct !{!10, !84, !88, !89}
!11 = distinct !{!11, !84, !89, !88}
!12 = !{!"any pointer", !4, i64 0}
!13 = !{!"p1 short", !12, i64 0}
!14 = !{!"short", !4, i64 0}
!15 = !{!"double", !4, i64 0}
!16 = !{!"_ZTS20libraw_image_sizes_t", !14, i64 0, !14, i64 2, !14, i64 4, !14, i64 6, !14, i64 8, !14, i64 10, !14, i64 12, !14, i64 14, !5, i64 16, !15, i64 24, !5, i64 32, !4, i64 36, !14, i64 164, !4, i64 166}
!17 = !{!"p1 omnipotent char", !12, i64 0}
!18 = !{!"_ZTS16libraw_iparams_t", !4, i64 0, !4, i64 4, !4, i64 68, !4, i64 132, !4, i64 196, !4, i64 260, !5, i64 324, !5, i64 328, !5, i64 332, !5, i64 336, !5, i64 340, !5, i64 344, !4, i64 348, !4, i64 384, !4, i64 420, !5, i64 428, !17, i64 432}
!19 = !{!"float", !4, i64 0}
!20 = !{!"_ZTS18libraw_nikonlens_t", !19, i64 0, !4, i64 4, !4, i64 5, !4, i64 6, !4, i64 7}
!21 = !{!"_ZTS16libraw_dnglens_t", !19, i64 0, !19, i64 4, !19, i64 8, !19, i64 12}
!22 = !{!"long long", !4, i64 0}
!23 = !{!"_ZTS24libraw_makernotes_lens_t", !22, i64 0, !4, i64 8, !14, i64 136, !14, i64 138, !22, i64 144, !14, i64 152, !14, i64 154, !4, i64 156, !14, i64 220, !4, i64 222, !4, i64 238, !19, i64 256, !19, i64 260, !19, i64 264, !19, i64 268, !19, i64 272, !19, i64 276, !19, i64 280, !19, i64 284, !19, i64 288, !19, i64 292, !19, i64 296, !19, i64 300, !19, i64 304, !19, i64 308, !19, i64 312, !22, i64 320, !4, i64 328, !22, i64 456, !4, i64 464, !22, i64 592, !4, i64 600, !14, i64 728, !19, i64 732}
!24 = !{!"_ZTS17libraw_lensinfo_t", !19, i64 0, !19, i64 4, !19, i64 8, !19, i64 12, !19, i64 16, !4, i64 20, !4, i64 148, !4, i64 276, !4, i64 404, !14, i64 532, !20, i64 536, !21, i64 544, !23, i64 560}
!25 = !{!"_ZTS13libraw_area_t", !14, i64 0, !14, i64 2, !14, i64 4, !14, i64 6}
!26 = !{!"_ZTS25libraw_canon_makernotes_t", !5, i64 0, !5, i64 4, !5, i64 8, !5, i64 12, !4, i64 16, !5, i64 32, !4, i64 36, !14, i64 52, !14, i64 54, !4, i64 56, !14, i64 58, !14, i64 60, !14, i64 62, !14, i64 64, !14, i64 66, !14, i64 68, !14, i64 70, !14, i64 72, !14, i64 74, !14, i64 76, !14, i64 78, !14, i64 80, !14, i64 82, !5, i64 84, !19, i64 88, !14, i64 92, !14, i64 94, !14, i64 96, !14, i64 98, !5, i64 100, !14, i64 104, !5, i64 108, !5, i64 112, !14, i64 116, !5, i64 120, !25, i64 124, !25, i64 132, !25, i64 140, !25, i64 148, !25, i64 156, !4, i64 164}
!27 = !{!"_ZTS30libraw_sensor_highspeed_crop_t", !14, i64 0, !14, i64 2, !14, i64 4, !14, i64 6}
!28 = !{!"_ZTS25libraw_nikon_makernotes_t", !15, i64 0, !14, i64 8, !14, i64 10, !4, i64 12, !4, i64 19, !4, i64 20, !4, i64 21, !4, i64 34, !4, i64 54, !4, i64 58, !4, i64 62, !4, i64 66, !4, i64 67, !4, i64 68, !4, i64 69, !4, i64 70, !4, i64 71, !4, i64 73, !4, i64 74, !4, i64 75, !4, i64 76, !4, i64 77, !4, i64 78, !4, i64 82, !4, i64 86, !14, i64 88, !5, i64 92, !5, i64 96, !5, i64 100, !5, i64 104, !4, i64 112, !4, i64 144, !4, i64 145, !4, i64 146, !5, i64 148, !5, i64 152, !5, i64 156, !4, i64 160, !4, i64 162, !14, i64 170, !27, i64 172, !14, i64 180, !14, i64 182, !14, i64 184, !5, i64 188, !4, i64 192, !4, i64 212, !5, i64 232, !4, i64 236, !5, i64 248, !17, i64 256, !14, i64 264, !14, i64 266, !4, i64 268, !14, i64 270, !15, i64 272, !15, i64 280, !15, i64 288}
!29 = !{!"_ZTS30libraw_hasselblad_makernotes_t", !5, i64 0, !15, i64 8, !4, i64 16, !4, i64 24, !4, i64 88, !5, i64 152, !5, i64 156, !5, i64 160, !5, i64 164, !4, i64 168, !4, i64 200, !5, i64 264, !4, i64 268, !4, i64 276, !4, i64 288}
!30 = !{!"_ZTS18libraw_fuji_info_t", !19, i64 0, !14, i64 4, !14, i64 6, !14, i64 8, !14, i64 10, !14, i64 12, !14, i64 14, !14, i64 16, !14, i64 18, !4, i64 20, !4, i64 53, !19, i64 88, !14, i64 92, !14, i64 94, !4, i64 96, !14, i64 100, !5, i64 104, !5, i64 108, !14, i64 112, !4, i64 114, !14, i64 120, !14, i64 122, !14, i64 124, !14, i64 126, !14, i64 128, !5, i64 132, !14, i64 136, !4, i64 138, !4, i64 151, !4, i64 156, !5, i64 164, !14, i64 168, !5, i64 172, !14, i64 176, !4, i64 178, !4, i64 196, !5, i64 324, !5, i64 328, !5, i64 332, !4, i64 336, !5, i64 344}
!31 = !{!"_ZTS27libraw_olympus_makernotes_t", !4, i64 0, !14, i64 6, !5, i64 8, !5, i64 12, !5, i64 16, !5, i64 20, !5, i64 24, !5, i64 28, !5, i64 32, !5, i64 36, !5, i64 40, !5, i64 44, !5, i64 48, !5, i64 52, !5, i64 56, !5, i64 60, !4, i64 64, !4, i64 72, !14, i64 82, !4, i64 84, !14, i64 88, !14, i64 90, !4, i64 92, !4, i64 352, !14, i64 392, !4, i64 394, !4, i64 396, !4, i64 404, !14, i64 416, !14, i64 418, !14, i64 420, !14, i64 422, !15, i64 424, !4, i64 432, !4, i64 440, !4, i64 448, !5, i64 452, !14, i64 456, !14, i64 458}
!32 = !{!"_ZTS18libraw_sony_info_t", !14, i64 0, !4, i64 2, !4, i64 3, !5, i64 4, !4, i64 8, !5, i64 12, !4, i64 16, !4, i64 17, !14, i64 18, !4, i64 20, !4, i64 24, !4, i64 25, !14, i64 26, !4, i64 28, !4, i64 38, !4, i64 39, !4, i64 40, !14, i64 48, !4, i64 50, !4, i64 51, !4, i64 52, !14, i64 54, !5, i64 56, !14, i64 60, !4, i64 62, !14, i64 66, !14, i64 68, !14, i64 70, !14, i64 72, !14, i64 74, !14, i64 76, !14, i64 78, !5, i64 80, !19, i64 84, !14, i64 88, !5, i64 92, !5, i64 96, !14, i64 100, !4, i64 102, !5, i64 124, !14, i64 128, !5, i64 132, !4, i64 136, !4, i64 137, !14, i64 138, !14, i64 140, !14, i64 142, !14, i64 144, !14, i64 146, !14, i64 148, !14, i64 150, !14, i64 152, !14, i64 154, !5, i64 156, !14, i64 160, !4, i64 162, !19, i64 180}
!33 = !{!"_ZTS25libraw_kodak_makernotes_t", !14, i64 0, !14, i64 2, !14, i64 4, !14, i64 6, !14, i64 8, !14, i64 10, !4, i64 12, !4, i64 48, !4, i64 84, !4, i64 120, !4, i64 156, !4, i64 192, !14, i64 228, !14, i64 230, !14, i64 232, !14, i64 234, !19, i64 236, !19, i64 240}
!34 = !{!"_ZTS29libraw_panasonic_makernotes_t", !14, i64 0, !14, i64 2, !4, i64 4, !5, i64 36, !19, i64 40, !4, i64 44, !14, i64 56, !14, i64 58, !5, i64 60, !5, i64 64}
!35 = !{!"_ZTS26libraw_pentax_makernotes_t", !4, i64 0, !4, i64 4, !4, i64 8, !14, i64 12, !5, i64 16, !5, i64 20, !14, i64 24, !4, i64 26, !14, i64 30, !4, i64 32, !4, i64 33, !14, i64 34}
!36 = !{!"_ZTS22libraw_p1_makernotes_t", !4, i64 0, !4, i64 64, !4, i64 128, !4, i64 384}
!37 = !{!"_ZTS25libraw_ricoh_makernotes_t", !14, i64 0, !4, i64 4, !4, i64 12, !14, i64 20, !5, i64 24, !5, i64 28, !5, i64 32, !5, i64 36, !14, i64 40, !14, i64 42, !14, i64 44, !14, i64 46, !14, i64 48, !14, i64 50, !15, i64 56, !15, i64 64}
!38 = !{!"_ZTS27libraw_samsung_makernotes_t", !4, i64 0, !4, i64 16, !4, i64 32, !4, i64 40, !15, i64 88, !5, i64 96, !4, i64 100}
!39 = !{!"_ZTS24libraw_metadata_common_t", !19, i64 0, !19, i64 4, !19, i64 8, !19, i64 12, !19, i64 16, !19, i64 20, !19, i64 24, !19, i64 28, !19, i64 32, !19, i64 36, !19, i64 40, !19, i64 44, !19, i64 48, !19, i64 52, !19, i64 56, !19, i64 60, !14, i64 64, !4, i64 66, !19, i64 196, !4, i64 200, !5, i64 296}
!40 = !{!"_ZTS19libraw_makernotes_t", !26, i64 0, !28, i64 168, !29, i64 464, !30, i64 848, !31, i64 1200, !32, i64 1664, !33, i64 1848, !34, i64 2092, !35, i64 2160, !36, i64 2196, !37, i64 2648, !38, i64 2720, !39, i64 2856}
!41 = !{!"_ZTS21libraw_shootinginfo_t", !14, i64 0, !14, i64 2, !14, i64 4, !14, i64 6, !14, i64 8, !14, i64 10, !14, i64 12, !4, i64 14, !4, i64 78}
!42 = !{!"_ZTS22libraw_output_params_t", !4, i64 0, !4, i64 16, !4, i64 32, !4, i64 64, !4, i64 112, !19, i64 128, !19, i64 132, !5, i64 136, !5, i64 140, !5, i64 144, !5, i64 148, !5, i64 152, !5, i64 156, !5, i64 160, !17, i64 168, !17, i64 176, !17, i64 184, !17, i64 192, !5, i64 200, !5, i64 204, !5, i64 208, !5, i64 212, !5, i64 216, !5, i64 220, !4, i64 224, !5, i64 240, !5, i64 244, !19, i64 248, !19, i64 252, !5, i64 256, !5, i64 260, !5, i64 264, !5, i64 268, !5, i64 272, !5, i64 276, !5, i64 280, !5, i64 284, !19, i64 288, !19, i64 292, !5, i64 296, !5, i64 300}
!43 = !{!"any p2 pointer", !12, i64 0}
!44 = !{!"p2 omnipotent char", !43, i64 0}
!45 = !{!"_ZTS26libraw_raw_unpack_params_t", !5, i64 0, !5, i64 4, !5, i64 8, !5, i64 12, !5, i64 16, !5, i64 20, !5, i64 24, !19, i64 28, !4, i64 32, !44, i64 40}
!46 = !{!"_ZTS5ph1_t", !5, i64 0, !5, i64 4, !5, i64 8, !5, i64 12, !5, i64 16, !5, i64 20, !5, i64 24, !5, i64 28, !19, i64 32}
!47 = !{!"_ZTS19libraw_dng_levels_t", !5, i64 0, !4, i64 4, !5, i64 16420, !4, i64 16424, !19, i64 32840, !4, i64 32844, !4, i64 32860, !4, i64 32868, !5, i64 32884, !4, i64 32888, !4, i64 32904, !19, i64 32920, !19, i64 32924, !4, i64 32928}
!48 = !{!"_ZTS18libraw_colordata_t", !4, i64 0, !4, i64 131072, !5, i64 147488, !5, i64 147492, !5, i64 147496, !4, i64 147500, !19, i64 147516, !19, i64 147520, !4, i64 147524, !4, i64 147652, !4, i64 147668, !4, i64 147684, !4, i64 147732, !4, i64 147780, !4, i64 147828, !46, i64 147876, !19, i64 147912, !19, i64 147916, !4, i64 147920, !4, i64 147984, !4, i64 148048, !4, i64 148112, !4, i64 148176, !4, i64 148193, !12, i64 148264, !5, i64 148272, !4, i64 148276, !4, i64 148308, !47, i64 148648, !4, i64 181624, !4, i64 185720, !5, i64 187000, !4, i64 187004, !5, i64 187076, !5, i64 187080}
!49 = !{!"long", !4, i64 0}
!50 = !{!"_ZTS17libraw_gps_info_t", !4, i64 0, !4, i64 12, !4, i64 24, !19, i64 36, !4, i64 40, !4, i64 41, !4, i64 42, !4, i64 43, !4, i64 44}
!51 = !{!"_ZTS17libraw_imgother_t", !19, i64 0, !19, i64 4, !19, i64 8, !19, i64 12, !49, i64 16, !5, i64 24, !4, i64 28, !50, i64 156, !4, i64 204, !4, i64 716, !4, i64 780}
!52 = !{!"_ZTS24LibRaw_thumbnail_formats", !4, i64 0}
!53 = !{!"_ZTS18libraw_thumbnail_t", !52, i64 0, !14, i64 4, !14, i64 6, !5, i64 8, !5, i64 12, !17, i64 16}
!54 = !{!"_ZTS23libraw_thumbnail_list_t", !5, i64 0, !4, i64 8}
!55 = !{!"p1 float", !12, i64 0}
!56 = !{!"_ZTS31libraw_internal_output_params_t", !5, i64 0, !5, i64 4, !5, i64 8, !14, i64 12, !14, i64 14}
!57 = !{!"_ZTS16libraw_rawdata_t", !12, i64 0, !13, i64 8, !13, i64 16, !13, i64 24, !55, i64 32, !55, i64 40, !55, i64 48, !13, i64 56, !13, i64 64, !18, i64 72, !16, i64 512, !56, i64 696, !48, i64 712}
!58 = !{!"_ZTS13libraw_data_t", !13, i64 0, !16, i64 8, !18, i64 192, !24, i64 632, !40, i64 1928, !41, i64 5088, !42, i64 5232, !45, i64 5536, !5, i64 5584, !5, i64 5588, !48, i64 5592, !51, i64 192680, !53, i64 193480, !54, i64 193504, !57, i64 193768, !12, i64 381568}
!59 = !{!"p1 _ZTS10LibRaw_TLS", !12, i64 0}
!60 = !{!"p1 _ZTS26LibRaw_abstract_datastream", !12, i64 0}
!61 = !{!"p1 _ZTS8_IO_FILE", !12, i64 0}
!62 = !{!"_ZTS15internal_data_t", !60, i64 0, !61, i64 8, !5, i64 16, !17, i64 24, !22, i64 32, !22, i64 40, !4, i64 48}
!63 = !{!"p1 int", !12, i64 0}
!64 = !{!"_ZTS13output_data_t", !63, i64 0, !63, i64 8}
!65 = !{!"_ZTS15identify_data_t", !5, i64 0, !22, i64 8, !22, i64 16, !5, i64 24, !5, i64 28, !5, i64 32}
!66 = !{!"_ZTS33LibRaw_internal_thumbnail_formats", !4, i64 0}
!67 = !{!"_ZTS12pana8_tags_t", !4, i64 0, !4, i64 24, !14, i64 36, !4, i64 38, !4, i64 46, !4, i64 80, !4, i64 114, !14, i64 148, !14, i64 150, !4, i64 152, !4, i64 192, !4, i64 204, !4, i64 224, !4, i64 234}
!68 = !{!"_ZTS15unpacker_data_t", !14, i64 0, !4, i64 2, !4, i64 10, !5, i64 16, !22, i64 24, !22, i64 32, !22, i64 40, !22, i64 48, !22, i64 56, !22, i64 64, !22, i64 72, !5, i64 80, !5, i64 84, !5, i64 88, !5, i64 92, !66, i64 96, !5, i64 100, !5, i64 104, !5, i64 108, !5, i64 112, !5, i64 116, !5, i64 120, !5, i64 124, !5, i64 128, !5, i64 132, !5, i64 136, !5, i64 140, !22, i64 144, !5, i64 152, !5, i64 156, !5, i64 160, !5, i64 164, !5, i64 168, !5, i64 172, !5, i64 176, !5, i64 180, !5, i64 184, !67, i64 192, !4, i64 440, !5, i64 2488, !5, i64 2492, !14, i64 2496, !14, i64 2498, !5, i64 2500, !5, i64 2504, !5, i64 2508, !5, i64 2512, !5, i64 2516, !5, i64 2520, !5, i64 2524, !4, i64 2528, !14, i64 2608}
!69 = !{!"_ZTS22libraw_internal_data_t", !62, i64 0, !56, i64 64, !64, i64 80, !65, i64 96, !68, i64 136}
!70 = !{!"p1 _ZTS6decode", !12, i64 0}
!71 = !{!"_ZTS13libraw_memmgr", !43, i64 0, !5, i64 8}
!72 = !{!"_ZTS18libraw_callbacks_t", !12, i64 0, !12, i64 8, !12, i64 16, !12, i64 24, !12, i64 32, !12, i64 40, !12, i64 48, !12, i64 56, !12, i64 64, !12, i64 72, !12, i64 80, !12, i64 88, !12, i64 96, !12, i64 104, !12, i64 112, !12, i64 120, !12, i64 128, !12, i64 136, !12, i64 144}
!73 = !{!"_ZTS6LibRaw", !58, i64 8, !59, i64 381584, !69, i64 381592, !4, i64 384344, !70, i64 433496, !70, i64 433504, !4, i64 433512, !71, i64 768232, !72, i64 768248, !4, i64 768400, !4, i64 768416, !4, i64 768432, !12, i64 768448, !12, i64 768456, !12, i64 768464, !49, i64 768472, !12, i64 768480, !12, i64 768488, !12, i64 768496, !12, i64 768504}
!74 = !{!73, !5, i64 5592}
!75 = !{!"vtable pointer", !3, i64 0}
!76 = !{!75, !75, i64 0}
!77 = !{!5, !5, i64 0}
!78 = !{!73, !14, i64 28}
!79 = !{!73, !14, i64 30}
!80 = !{!"_ZTS17LibRaw_exceptions", !4, i64 0}
!81 = !{!80, !80, i64 0}
!82 = !{!73, !13, i64 8}
!83 = !{!14, !14, i64 0}
!84 = !{!"llvm.loop.mustprogress"}
!85 = !{!73, !5, i64 153092}
!86 = !{!73, !5, i64 153088}
!87 = !{!73, !5, i64 153096}
!88 = !{!"llvm.loop.isvectorized", i32 1}
!89 = !{!"llvm.loop.unroll.runtime.disable"}
end_hunk_0
