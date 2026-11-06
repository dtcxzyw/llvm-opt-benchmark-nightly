Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/libigl/original/tetgen?download=true
inline.NumInlined: 6986
inline.NumDeleted: 169
loop-unroll.NumCompletelyUnrolled: 436
loop-unroll.NumRuntimeUnrolled: 112
loop-unroll.NumUnrolled: 551
begin_hunk_0_@_ZN8tetgenio8load_plyEPc:bb.a
  %i.ev = load ptr, ptr %i.c, align 8, !tbaa !51
  %i.ew = call i64 @__isoc23_strtol(ptr noundef %i.ev, ptr noundef nonnull %i.c, i32 noundef 0) #40 ; 2 uses
  %i.ex = trunc i64 %i.ew to i32                  ; 2 uses
  store i32 %i.ex, ptr %i.eu, align 8, !tbaa !90
  %i.ey = icmp eq i32 %i.ex, 0
  br i1 %i.ey, label %bb.be, label %bb.bf

bb.be:                                            ; preds = %bb.bd
  %i.ez = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.59, i32 noundef %.1187, ptr noundef nonnull %i.a) ; 0 uses
  %i.fa = call i32 @fclose(ptr noundef nonnull %i.l) ; 0 uses
  br label %bb.bt

bb.bf:                                            ; preds = %bb.bd
  %sext = shl i64 %i.ew, 32
  %i.fb = call i64 @llvm.smax.i64(i64 %sext, i64 -1)
  %i.fc = ashr i64 %i.fb, 30
  %i.fd = call noalias noundef nonnull ptr @_Znam(i64 noundef %i.fc) #41
  store ptr %i.fd, ptr %i.et, align 8, !tbaa !89
  %i.fe = load i32, ptr %i.eu, align 8, !tbaa !90
  %i.ff = icmp sgt i32 %i.fe, 0
  br i1 %i.ff, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.bf, %bb.bl
  %indvars.iv = phi i64 [ %indvars.iv.next, %bb.bl ], [ 0, %bb.bf ] ; 2 uses
  %.3303 = phi i32 [ %spec.select, %bb.bl ], [ %.0311, %bb.bf ]
  %i.fg = load ptr, ptr %i.c, align 8, !tbaa !51
  br label %bb.bg

bb.bg:                                            ; preds = %bb.bh, %.lr.ph
  %.0.i171 = phi ptr [ %i.fg, %.lr.ph ], [ %i.fi, %bb.bh ] ; 3 uses
  %i.fh = load i8, ptr %.0.i171, align 1, !tbaa !48 ; 2 uses
  switch i8 %i.fh, label %bb.bh [
    i8 0, label %.critedge.i172.preheader
    i8 35, label %.critedge.i172.preheader
    i8 32, label %.critedge.i172.preheader
    i8 9, label %.critedge.i172.preheader
    i8 44, label %.critedge.i172.preheader
  ]

.critedge.i172.preheader:                         ; preds = %bb.bg, %bb.bg, %bb.bg, %bb.bg, %bb.bg
  br label %.critedge.i172

bb.bh:                                            ; preds = %bb.bg
  %i.fi = getelementptr inbounds nuw i8, ptr %.0.i171, i64 1
  br label %bb.bg, !llvm.loop !1

.critedge.i172:                                   ; preds = %.critedge.i172.preheader, %.critedge4.i175
  %i.fj = phi i8 [ %.pre.i176, %.critedge4.i175 ], [ %i.fh, %.critedge.i172.preheader ] ; 2 uses
  %.1.i173 = phi ptr [ %i.fl, %.critedge4.i175 ], [ %.0.i171, %.critedge.i172.preheader ] ; 5 uses
  switch i8 %i.fj, label %bb.bi [
    i8 35, label %bb.bj
    i8 0, label %_ZN8tetgenio14findnextnumberEPc.exit177
    i8 43, label %_ZN8tetgenio14findnextnumberEPc.exit177
    i8 45, label %_ZN8tetgenio14findnextnumberEPc.exit177
    i8 46, label %_ZN8tetgenio14findnextnumberEPc.exit177
  ]

bb.bi:                                            ; preds = %.critedge.i172
  %i.fk = add i8 %i.fj, -58
  %or.cond.i174 = icmp ult i8 %i.fk, -10
  br i1 %or.cond.i174, label %.critedge4.i175, label %_ZN8tetgenio14findnextnumberEPc.exit177

.critedge4.i175:                                  ; preds = %bb.bi
  %i.fl = getelementptr inbounds nuw i8, ptr %.1.i173, i64 1 ; 2 uses
  %.pre.i176 = load i8, ptr %i.fl, align 1, !tbaa !48
  br label %.critedge.i172, !llvm.loop !2

bb.bj:                                            ; preds = %.critedge.i172
  store i8 0, ptr %.1.i173, align 1, !tbaa !48
  br label %_ZN8tetgenio14findnextnumberEPc.exit177

_ZN8tetgenio14findnextnumberEPc.exit177:          ; preds = %.critedge.i172, %.critedge.i172, %.critedge.i172, %.critedge.i172, %bb.bi, %bb.bj
  store ptr %.1.i173, ptr %i.c, align 8, !tbaa !51
  %i.fm = load i8, ptr %.1.i173, align 1, !tbaa !48
  %i.fn = icmp eq i8 %i.fm, 0
  br i1 %i.fn, label %bb.bk, label %bb.bl

bb.bk:                                            ; preds = %_ZN8tetgenio14findnextnumberEPc.exit177
  %i.fo = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.59, i32 noundef %.1187, ptr noundef nonnull %i.a) ; 0 uses
  %i.fp = call i32 @fclose(ptr noundef nonnull %i.l) ; 0 uses
  br label %bb.bt

bb.bl:                                            ; preds = %_ZN8tetgenio14findnextnumberEPc.exit177
  %i.fq = call i64 @__isoc23_strtol(ptr noundef nonnull %.1.i173, ptr noundef nonnull %i.c, i32 noundef 0) #40
  %i.fr = trunc i64 %i.fq to i32                  ; 2 uses
  %i.fs = load ptr, ptr %i.et, align 8, !tbaa !89
  %i.ft = getelementptr inbounds nuw [4 x i8], ptr %i.fs, i64 %indvars.iv
  store i32 %i.fr, ptr %i.ft, align 4, !tbaa !57
  %spec.select = call i32 @llvm.smin.i32(i32 %.3303, i32 %i.fr) ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.fu = load i32, ptr %i.eu, align 8, !tbaa !90
  %i.fv = sext i32 %i.fu to i64
  %i.fw = icmp slt i64 %indvars.iv.next, %i.fv
  br i1 %i.fw, label %.lr.ph, label %._crit_edge, !llvm.loop !469

._crit_edge:                                      ; preds = %bb.bl, %bb.bf
  %.3.lcssa = phi i32 [ %.0311, %bb.bf ], [ %spec.select, %bb.bl ]
  %i.fx = add nsw i32 %.086310, 1
  br label %.critedge144

bb.bm:                                            ; preds = %bb.bc
  %i.fy = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.60, i32 noundef %.1187, ptr noundef nonnull %i.a) ; 0 uses
  br label %bb.bn

.critedge144:                                     ; preds = %_ZN8tetgenio14findnextnumberEPc.exit170.2, %._crit_edge
  %.192 = phi i32 [ %i.ej, %_ZN8tetgenio14findnextnumberEPc.exit170.2 ], [ %.091308, %._crit_edge ] ; 2 uses
  %.187 = phi i32 [ %.086310, %_ZN8tetgenio14findnextnumberEPc.exit170.2 ], [ %i.fx, %._crit_edge ] ; 2 uses
  %.5 = phi i32 [ %.0311, %_ZN8tetgenio14findnextnumberEPc.exit170.2 ], [ %.3.lcssa, %._crit_edge ] ; 2 uses
  %i.fz = call ptr @fgets(ptr noundef nonnull %i.b, i32 noundef 2047, ptr noundef nonnull %i.l) ; 2 uses
  %i.ga = icmp eq ptr %i.fz, null
  br i1 %i.ga, label %_ZN8tetgenio8readlineEPcP8_IO_FILEPi.exit.thread, label %.preheader.i.preheader, !llvm.loop !468

bb.bn:                                            ; preds = %_ZN8tetgenio8readlineEPcP8_IO_FILEPi.exit.thread, %bb.bm
  %.093290 = phi i32 [ %.093291, %_ZN8tetgenio8readlineEPcP8_IO_FILEPi.exit.thread ], [ %.093307.us, %bb.bm ] ; 2 uses
  %.091278 = phi i32 [ %.091279, %_ZN8tetgenio8readlineEPcP8_IO_FILEPi.exit.thread ], [ %.091308, %bb.bm ] ; 2 uses
  %.088266 = phi i32 [ %.088267, %_ZN8tetgenio8readlineEPcP8_IO_FILEPi.exit.thread ], [ %.088309.us, %bb.bm ] ; 2 uses
  %.086254 = phi i32 [ %.086255, %_ZN8tetgenio8readlineEPcP8_IO_FILEPi.exit.thread ], [ %.086310, %bb.bm ] ; 2 uses
  %.0242 = phi i32 [ %.0243, %_ZN8tetgenio8readlineEPcP8_IO_FILEPi.exit.thread ], [ %.0311, %bb.bm ] ; 3 uses
  %i.gb = call i32 @fclose(ptr noundef nonnull %i.l) ; 0 uses
  %switch = icmp ult i32 %.0242, 2
  br i1 %switch, label %bb.bp, label %bb.bo

bb.bo:                                            ; preds = %bb.bn
  %i.gc = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.61, i32 noundef %.0242, ptr noundef nonnull %i.a) ; 0 uses
  br label %bb.bt

bb.bp:                                            ; preds = %bb.bn
  store i32 %.0242, ptr %0, align 8, !tbaa !53
  %.not139 = icmp eq i32 %.091278, %.093290
  br i1 %.not139, label %bb.br, label %bb.bq

bb.bq:                                            ; preds = %bb.bp
  %i.gd = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.62, i32 noundef %.093290, i32 noundef %.091278, ptr noundef nonnull %i.a) ; 0 uses
  br label %bb.bt

bb.br:                                            ; preds = %bb.bp
  %.not140 = icmp eq i32 %.086254, %.088266
  br i1 %.not140, label %bb.bt, label %bb.bs

bb.bs:                                            ; preds = %bb.br
  %i.ge = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.63, i32 noundef %.088266, i32 noundef %.086254, ptr noundef nonnull %i.a) ; 0 uses
  br label %bb.bt

bb.bt:                                            ; preds = %bb.br, %bb.bs, %bb.bq, %bb.bo, %bb.bk, %bb.be, %bb.am, %.split341.us, %.split338.us, %.split335.us, %.split.us, %bb.f, %bb.b
  %.0106 = phi i1 [ false, %bb.b ], [ false, %bb.am ], [ false, %bb.be ], [ false, %bb.bk ], [ false, %bb.bq ], [ false, %bb.bs ], [ false, %bb.f ], [ false, %bb.bo ], [ false, %.split.us ], [ false, %.split335.us ], [ false, %.split338.us ], [ false, %.split341.us ], [ true, %bb.br ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #40
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #40
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #40
  ret i1 %.0106
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define noundef ptr @_ZN8tetgenio13findnextfieldEPc(ptr nofree noundef nonnull readnone align 8 captures(none) dereferenceable(448) %0, ptr nofree noundef readonly captures(ret: address, provenance) %1) local_unnamed_addr #13 align 2 {
bb.a:
  br label %bb.b

bb.b:                                             ; preds = %bb.c, %bb.a
  %.0 = phi ptr [ %1, %bb.a ], [ %i.b, %bb.c ]    ; 3 uses
  %i.a = load i8, ptr %.0, align 1, !tbaa !48     ; 2 uses
  switch i8 %i.a, label %bb.c [
    i8 0, label %.critedge.preheader
    i8 32, label %.critedge.preheader
    i8 9, label %.critedge.preheader
    i8 44, label %.critedge.preheader
    i8 59, label %.critedge.preheader
  ]

.critedge.preheader:                              ; preds = %bb.b, %bb.b, %bb.b, %bb.b, %bb.b
  br label %.critedge

bb.c:                                             ; preds = %bb.b
  %i.b = getelementptr inbounds nuw i8, ptr %.0, i64 1
  br label %bb.b, !llvm.loop !4

.critedge:                                        ; preds = %.critedge.preheader, %.critedge2
  %i.c = phi i8 [ %.pre, %.critedge2 ], [ %i.a, %.critedge.preheader ]
  %.1 = phi ptr [ %i.d, %.critedge2 ], [ %.0, %.critedge.preheader ] ; 2 uses
  switch i8 %i.c, label %bb.d [
    i8 32, label %.critedge2
    i8 9, label %.critedge2
    i8 44, label %.critedge2
    i8 59, label %.critedge2
  ]

.critedge2:                                       ; preds = %.critedge, %.critedge, %.critedge, %.critedge
  %i.d = getelementptr inbounds nuw i8, ptr %.1, i64 1 ; 2 uses
  %.pre = load i8, ptr %i.d, align 1, !tbaa !48
  br label %.critedge, !llvm.loop !5

bb.d:                                             ; preds = %.critedge
  ret ptr %.1
}

; Function Attrs: mustprogress uwtable
define noundef zeroext i1 @_ZN8tetgenio8load_stlEPc(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(448) %0, ptr nofree noundef readonly captures(none) %1) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca [1024 x i8], align 16             ; 12 uses
  %i.b = alloca [2048 x i8], align 16             ; 11 uses
  %i.c = alloca ptr, align 8                      ; 19 uses
  %i.d = alloca [80 x i8], align 16               ; 4 uses
  %i.e = alloca i32, align 4                      ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #40
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #40
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #40
  %i.f = call ptr @strncpy(ptr noundef nonnull dereferenceable(1) %i.a, ptr noundef nonnull dereferenceable(1) %1, i64 noundef 1023) #40 ; 0 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 1023
  store i8 0, ptr %i.g, align 1, !tbaa !48
  %i.h = load i8, ptr %i.a, align 16, !tbaa !48
  %i.i = icmp eq i8 %i.h, 0
  br i1 %i.i, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %puts = call i32 @puts(ptr nonnull dereferenceable(1) @str.16) ; 0 uses
  br label %bb.az

bb.c:                                             ; preds = %bb.a
  %i.j = call i64 @strlen(ptr nonnull dereferenceable(1) %i.a)
  %i.k = getelementptr i8, ptr %i.a, i64 %i.j     ; 2 uses
  %i.l = getelementptr i8, ptr %i.k, i64 -4
  %i.m = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.l, ptr noundef nonnull dereferenceable(5) @.str.87) #44
  %.not = icmp eq i32 %i.m, 0
  br i1 %.not, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(5) %i.k, ptr noundef nonnull align 1 dereferenceable(5) @.str.87, i64 5, i1 false)
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.n = call noalias ptr @fopen(ptr noundef nonnull %i.a, ptr noundef nonnull @.str.88) ; 14 uses
  %.not98 = icmp eq ptr %i.n, null
  br i1 %.not98, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.o = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.65, ptr noundef nonnull %i.a) ; 0 uses
  br label %bb.az

bb.g:                                             ; preds = %bb.e
  %i.p = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.6, ptr noundef nonnull %i.a) ; 0 uses
  %i.q = call ptr @fgets(ptr noundef nonnull %i.b, i32 noundef 2048, ptr noundef nonnull %i.n)
  %.not99 = icmp eq ptr %i.q, null
  br i1 %.not99, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.r = call i32 @fclose(ptr noundef nonnull %i.n) ; 0 uses
  br label %bb.az

bb.i:                                             ; preds = %bb.g
  %i.s = load i32, ptr %i.b, align 16
  %i.t = xor i32 %i.s, 1768714099
  %i.u = getelementptr i8, ptr %i.b, i64 4
  %i.v = load i8, ptr %i.u, align 4
  %i.w = zext i8 %i.v to i32
  %i.x = xor i32 %i.w, 100
  %i.y = or i32 %i.t, %i.x
  %i.z = icmp ne i32 %i.y, 0
  %i.aa = zext i1 %i.z to i32
  %.not100 = icmp eq i32 %i.aa, 0
  br i1 %.not100, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ab = load i32, ptr %i.b, align 16
  %i.ac = xor i32 %i.ab, 1229737811
  %i.ad = getelementptr i8, ptr %i.b, i64 4
  %i.ae = load i8, ptr %i.ad, align 4
  %i.af = zext i8 %i.ae to i32
  %i.ag = xor i32 %i.af, 68
  %i.ah = or i32 %i.ac, %i.ag
  %i.ai = icmp ne i32 %i.ah, 0                    ; 2 uses
  %i.aj = zext i1 %i.ai to i32                    ; 0 uses
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  %i.ak = phi i1 [ false, %bb.i ], [ %i.ai, %bb.j ]
  %i.al = call noalias noundef nonnull dereferenceable(48) ptr @_Znwm(i64 noundef 48) #41 ; 26 uses
  invoke void @_ZN10tetgenmesh9arraypoolC1Eii(ptr noundef nonnull align 8 dereferenceable(48) %i.al, i32 noundef 24, i32 noundef 10)
          to label %bb.l unwind label %bb.p

bb.l:                                             ; preds = %bb.k
  br i1 %i.ak, label %bb.ae, label %.preheader139

.preheader139:                                    ; preds = %bb.l
  %i.am = call ptr @fgets(ptr noundef nonnull %i.b, i32 noundef 2047, ptr noundef nonnull %i.n) ; 2 uses
  %i.an = icmp eq ptr %i.am, null
  br i1 %i.an, label %.loopexit136, label %.preheader.i.preheader.lr.ph

.preheader.i.preheader.lr.ph:                     ; preds = %.preheader139
  %i.ao = getelementptr inbounds nuw i8, ptr %i.al, i64 32 ; 3 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %i.al, i64 4
  br label %.preheader.i.preheader

.preheader.i.preheader:                           ; preds = %.preheader.i.preheader.lr.ph, %.loopexit137
  %i.aq = phi ptr [ %i.am, %.preheader.i.preheader.lr.ph ], [ %i.cm, %.loopexit137 ]
  %.092148 = phi i32 [ 1, %.preheader.i.preheader.lr.ph ], [ %.193, %.loopexit137 ]
  %.0127147 = phi i32 [ 0, %.preheader.i.preheader.lr.ph ], [ %.1128, %.loopexit137 ]
  br label %.preheader.i

.backedge.i:                                      ; preds = %bb.m, %bb.m, %bb.m
  %i.ar = call ptr @fgets(ptr noundef nonnull %i.b, i32 noundef 2047, ptr noundef nonnull %i.n) ; 2 uses
  %i.as = icmp eq ptr %i.ar, null
  br i1 %i.as, label %.loopexit136, label %.preheader.i

.preheader.i:                                     ; preds = %.preheader.i.preheader, %.backedge.i
  %.1128.in = phi i32 [ %.1128, %.backedge.i ], [ %.0127147, %.preheader.i.preheader ]
  %i.at = phi ptr [ %i.ar, %.backedge.i ], [ %i.aq, %.preheader.i.preheader ]
  %.1128 = add nsw i32 %.1128.in, 1               ; 3 uses
  br label %bb.m

bb.m:                                             ; preds = %.critedge.i, %.preheader.i
  %.0.i = phi ptr [ %i.av, %.critedge.i ], [ %i.at, %.preheader.i ] ; 7 uses
  %i.au = load i8, ptr %.0.i, align 1, !tbaa !48
  switch i8 %i.au, label %bb.n [
    i8 32, label %.critedge.i
    i8 9, label %.critedge.i
    i8 0, label %.backedge.i
    i8 13, label %.backedge.i
    i8 10, label %.backedge.i
  ]

.critedge.i:                                      ; preds = %bb.m, %bb.m
  %i.av = getelementptr inbounds nuw i8, ptr %.0.i, i64 1
  br label %bb.m, !llvm.loop !3

bb.n:                                             ; preds = %bb.m
  store ptr %.0.i, ptr %i.c, align 8, !tbaa !51
  %i.aw = icmp eq i32 %.092148, 0
  br i1 %i.aw, label %bb.o, label %bb.q

bb.o:                                             ; preds = %bb.n
  %i.ax = call noundef ptr @strstr(ptr noundef nonnull dereferenceable(1) %.0.i, ptr noundef nonnull dereferenceable(1) @.str.89) #44 ; 2 uses
  store ptr %i.ax, ptr %i.c, align 8, !tbaa !51
  %.not105 = icmp ne ptr %i.ax, null
  %spec.select = zext i1 %.not105 to i32
  br label %.loopexit137

bb.p:                                             ; preds = %bb.k
  %i.ay = landingpad { ptr, i32 }
          cleanup
  call void @_ZdlPvm(ptr noundef nonnull %i.al, i64 noundef 48) #42
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #40
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #40
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #40
  resume { ptr, i32 } %i.ay

bb.q:                                             ; preds = %bb.n
  %i.az = call noundef ptr @strstr(ptr noundef nonnull dereferenceable(1) %.0.i, ptr noundef nonnull dereferenceable(1) @.str.91) #44 ; 2 uses
  store ptr %i.az, ptr %i.c, align 8, !tbaa !51
  %.not103 = icmp eq ptr %i.az, null
  br i1 %.not103, label %bb.r, label %.loopexit137

bb.r:                                             ; preds = %bb.q
  store ptr %.0.i, ptr %i.c, align 8, !tbaa !51
  %i.ba = call noundef ptr @strstr(ptr noundef nonnull dereferenceable(1) %.0.i, ptr noundef nonnull dereferenceable(1) @.str.72) #44 ; 3 uses
  store ptr %i.ba, ptr %i.c, align 8, !tbaa !51
  %.not104 = icmp eq ptr %i.ba, null
  br i1 %.not104, label %.loopexit137, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.bb = load i64, ptr %i.ao, align 8, !tbaa !98
  %i.bc = trunc i64 %i.bb to i32
  %i.bd = call noundef ptr @_ZN10tetgenmesh9arraypool8getblockEi(ptr noundef nonnull align 8 dereferenceable(48) %i.al, i32 noundef %i.bc)
  %i.be = load i64, ptr %i.ao, align 8, !tbaa !98 ; 2 uses
  %i.bf = load i32, ptr %i.ap, align 4, !tbaa !99
  %i.bg = add nsw i32 %i.bf, -1
  %i.bh = sext i32 %i.bg to i64
  %i.bi = and i64 %i.be, %i.bh
  %i.bj = load i32, ptr %i.al, align 8, !tbaa !100
  %i.bk = sext i32 %i.bj to i64
  %i.bl = mul nsw i64 %i.bi, %i.bk
  %i.bm = getelementptr inbounds i8, ptr %i.bd, i64 %i.bl ; 3 uses
  %i.bn = add nsw i64 %i.be, 1
  store i64 %i.bn, ptr %i.ao, align 8, !tbaa !98
  br label %bb.t

bb.t:                                             ; preds = %bb.u, %bb.s
  %.0.i110 = phi ptr [ %i.ba, %bb.s ], [ %i.bp, %bb.u ] ; 3 uses
  %i.bo = load i8, ptr %.0.i110, align 1, !tbaa !48 ; 2 uses
  switch i8 %i.bo, label %bb.u [
    i8 0, label %.critedge.i111.preheader
    i8 35, label %.critedge.i111.preheader
    i8 32, label %.critedge.i111.preheader
    i8 9, label %.critedge.i111.preheader
    i8 44, label %.critedge.i111.preheader
  ]

.critedge.i111.preheader:                         ; preds = %bb.t, %bb.t, %bb.t, %bb.t, %bb.t
  br label %.critedge.i111

bb.u:                                             ; preds = %bb.t
  %i.bp = getelementptr inbounds nuw i8, ptr %.0.i110, i64 1
  br label %bb.t, !llvm.loop !1

.critedge.i111:                                   ; preds = %.critedge.i111.preheader, %.critedge4.i
  %.pr = phi i8 [ %.pre.i, %.critedge4.i ], [ %i.bo, %.critedge.i111.preheader ] ; 3 uses
  %.1.i = phi ptr [ %i.br, %.critedge4.i ], [ %.0.i110, %.critedge.i111.preheader ] ; 5 uses
  switch i8 %.pr, label %bb.v [
    i8 35, label %_ZN8tetgenio14findnextnumberEPc.exit.thread
    i8 0, label %_ZN8tetgenio14findnextnumberEPc.exit
    i8 43, label %_ZN8tetgenio14findnextnumberEPc.exit
    i8 45, label %_ZN8tetgenio14findnextnumberEPc.exit
    i8 46, label %_ZN8tetgenio14findnextnumberEPc.exit
  ]

bb.v:                                             ; preds = %.critedge.i111
  %i.bq = add i8 %.pr, -58
  %or.cond.i = icmp ult i8 %i.bq, -10
  br i1 %or.cond.i, label %.critedge4.i, label %_ZN8tetgenio14findnextnumberEPc.exit.thread217

_ZN8tetgenio14findnextnumberEPc.exit.thread217:   ; preds = %bb.v
  store ptr %.1.i, ptr %i.c, align 8, !tbaa !51
  br label %bb.w

.critedge4.i:                                     ; preds = %bb.v
  %i.br = getelementptr inbounds nuw i8, ptr %.1.i, i64 1 ; 2 uses
  %.pre.i = load i8, ptr %i.br, align 1, !tbaa !48
  br label %.critedge.i111, !llvm.loop !2

_ZN8tetgenio14findnextnumberEPc.exit.thread:      ; preds = %.critedge.i111, %.critedge.i111.1, %.critedge.i111.2
  %.1.i.lcssa = phi ptr [ %.1.i.2, %.critedge.i111.2 ], [ %.1.i.1, %.critedge.i111.1 ], [ %.1.i, %.critedge.i111 ]
  store i8 0, ptr %.1.i.lcssa, align 1, !tbaa !48
  br label %.loopexit138

_ZN8tetgenio14findnextnumberEPc.exit:             ; preds = %.critedge.i111, %.critedge.i111, %.critedge.i111, %.critedge.i111
  store ptr %.1.i, ptr %i.c, align 8, !tbaa !51
  %i.bs = icmp eq i8 %.pr, 0
  br i1 %i.bs, label %.loopexit138, label %bb.w

.loopexit138:                                     ; preds = %_ZN8tetgenio14findnextnumberEPc.exit, %_ZN8tetgenio14findnextnumberEPc.exit.1, %_ZN8tetgenio14findnextnumberEPc.exit.2, %_ZN8tetgenio14findnextnumberEPc.exit.thread
  %i.bt = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.92, i32 noundef %.1128) ; 0 uses
  call void @_ZN10tetgenmesh9arraypoolD1Ev(ptr noundef nonnull align 8 dead_on_return(48) dereferenceable(48) %i.al) #40
  call void @_ZdlPvm(ptr noundef nonnull %i.al, i64 noundef 48) #42
  %i.bu = call i32 @fclose(ptr noundef nonnull %i.n) ; 0 uses
  br label %bb.az

bb.w:                                             ; preds = %_ZN8tetgenio14findnextnumberEPc.exit.thread217, %_ZN8tetgenio14findnextnumberEPc.exit
  %i.bv = call double @strtod(ptr noundef nonnull %.1.i, ptr noundef nonnull %i.c) #40
  store double %i.bv, ptr %i.bm, align 8, !tbaa !56
  %i.bw = load ptr, ptr %i.c, align 8, !tbaa !51
  br label %bb.x

bb.x:                                             ; preds = %bb.aa, %bb.w
  %.0.i110.1 = phi ptr [ %i.bw, %bb.w ], [ %i.ce, %bb.aa ] ; 3 uses
  %i.bx = load i8, ptr %.0.i110.1, align 1, !tbaa !48 ; 2 uses
  switch i8 %i.bx, label %bb.aa [
    i8 0, label %.critedge.i111.1.preheader
    i8 35, label %.critedge.i111.1.preheader
    i8 32, label %.critedge.i111.1.preheader
    i8 9, label %.critedge.i111.1.preheader
    i8 44, label %.critedge.i111.1.preheader
  ]

.critedge.i111.1.preheader:                       ; preds = %bb.x, %bb.x, %bb.x, %bb.x, %bb.x
  br label %.critedge.i111.1

.critedge.i111.1:                                 ; preds = %.critedge.i111.1.preheader, %.critedge4.i.1
  %.pr.1 = phi i8 [ %.pre.i.1, %.critedge4.i.1 ], [ %i.bx, %.critedge.i111.1.preheader ] ; 3 uses
  %.1.i.1 = phi ptr [ %i.cd, %.critedge4.i.1 ], [ %.0.i110.1, %.critedge.i111.1.preheader ] ; 5 uses
  switch i8 %.pr.1, label %bb.y [
    i8 35, label %_ZN8tetgenio14findnextnumberEPc.exit.thread
    i8 0, label %_ZN8tetgenio14findnextnumberEPc.exit.1
    i8 43, label %_ZN8tetgenio14findnextnumberEPc.exit.1
    i8 45, label %_ZN8tetgenio14findnextnumberEPc.exit.1
    i8 46, label %_ZN8tetgenio14findnextnumberEPc.exit.1
  ]

bb.y:                                             ; preds = %.critedge.i111.1
  %i.by = add i8 %.pr.1, -58
  %or.cond.i.1 = icmp ult i8 %i.by, -10
  br i1 %or.cond.i.1, label %.critedge4.i.1, label %_ZN8tetgenio14findnextnumberEPc.exit.1.thread

_ZN8tetgenio14findnextnumberEPc.exit.1.thread:    ; preds = %bb.y
  store ptr %.1.i.1, ptr %i.c, align 8, !tbaa !51
  br label %bb.z

_ZN8tetgenio14findnextnumberEPc.exit.1:           ; preds = %.critedge.i111.1, %.critedge.i111.1, %.critedge.i111.1, %.critedge.i111.1
  store ptr %.1.i.1, ptr %i.c, align 8, !tbaa !51
  %i.bz = icmp eq i8 %.pr.1, 0
  br i1 %i.bz, label %.loopexit138, label %bb.z

bb.z:                                             ; preds = %_ZN8tetgenio14findnextnumberEPc.exit.1.thread, %_ZN8tetgenio14findnextnumberEPc.exit.1
  %i.ca = call double @strtod(ptr noundef nonnull %.1.i.1, ptr noundef nonnull %i.c) #40
  %i.cb = getelementptr inbounds nuw i8, ptr %i.bm, i64 8
  store double %i.ca, ptr %i.cb, align 8, !tbaa !56
  %i.cc = load ptr, ptr %i.c, align 8, !tbaa !51
  br label %bb.ab

.critedge4.i.1:                                   ; preds = %bb.y
  %i.cd = getelementptr inbounds nuw i8, ptr %.1.i.1, i64 1 ; 2 uses
  %.pre.i.1 = load i8, ptr %i.cd, align 1, !tbaa !48
  br label %.critedge.i111.1, !llvm.loop !2

bb.aa:                                            ; preds = %bb.x
  %i.ce = getelementptr inbounds nuw i8, ptr %.0.i110.1, i64 1
  br label %bb.x, !llvm.loop !1

bb.ab:                                            ; preds = %bb.ad, %bb.z
  %.0.i110.2 = phi ptr [ %i.cc, %bb.z ], [ %i.cl, %bb.ad ] ; 3 uses
  %i.cf = load i8, ptr %.0.i110.2, align 1, !tbaa !48 ; 2 uses
  switch i8 %i.cf, label %bb.ad [
    i8 0, label %.critedge.i111.2.preheader
    i8 35, label %.critedge.i111.2.preheader
    i8 32, label %.critedge.i111.2.preheader
    i8 9, label %.critedge.i111.2.preheader
    i8 44, label %.critedge.i111.2.preheader
  ]

.critedge.i111.2.preheader:                       ; preds = %bb.ab, %bb.ab, %bb.ab, %bb.ab, %bb.ab
  br label %.critedge.i111.2

.critedge.i111.2:                                 ; preds = %.critedge.i111.2.preheader, %.critedge4.i.2
  %.pr.2 = phi i8 [ %.pre.i.2, %.critedge4.i.2 ], [ %i.cf, %.critedge.i111.2.preheader ] ; 3 uses
  %.1.i.2 = phi ptr [ %i.ck, %.critedge4.i.2 ], [ %.0.i110.2, %.critedge.i111.2.preheader ] ; 5 uses
  switch i8 %.pr.2, label %bb.ac [
    i8 35, label %_ZN8tetgenio14findnextnumberEPc.exit.thread
    i8 0, label %_ZN8tetgenio14findnextnumberEPc.exit.2
    i8 43, label %_ZN8tetgenio14findnextnumberEPc.exit.2
    i8 45, label %_ZN8tetgenio14findnextnumberEPc.exit.2
    i8 46, label %_ZN8tetgenio14findnextnumberEPc.exit.2
  ]

bb.ac:                                            ; preds = %.critedge.i111.2
  %i.cg = add i8 %.pr.2, -58
  %or.cond.i.2 = icmp ult i8 %i.cg, -10
  br i1 %or.cond.i.2, label %.critedge4.i.2, label %_ZN8tetgenio14findnextnumberEPc.exit.2.thread

_ZN8tetgenio14findnextnumberEPc.exit.2.thread:    ; preds = %bb.ac
  store ptr %.1.i.2, ptr %i.c, align 8, !tbaa !51
  br label %.loopexit137.loopexit

_ZN8tetgenio14findnextnumberEPc.exit.2:           ; preds = %.critedge.i111.2, %.critedge.i111.2, %.critedge.i111.2, %.critedge.i111.2
  store ptr %.1.i.2, ptr %i.c, align 8, !tbaa !51
  %i.ch = icmp eq i8 %.pr.2, 0
  br i1 %i.ch, label %.loopexit138, label %.loopexit137.loopexit

.loopexit137.loopexit:                            ; preds = %_ZN8tetgenio14findnextnumberEPc.exit.2.thread, %_ZN8tetgenio14findnextnumberEPc.exit.2
  %i.ci = call double @strtod(ptr noundef nonnull %.1.i.2, ptr noundef nonnull %i.c) #40
  %i.cj = getelementptr inbounds nuw i8, ptr %i.bm, i64 16
  store double %i.ci, ptr %i.cj, align 8, !tbaa !56
  br label %.loopexit137

.critedge4.i.2:                                   ; preds = %bb.ac
  %i.ck = getelementptr inbounds nuw i8, ptr %.1.i.2, i64 1 ; 2 uses
  %.pre.i.2 = load i8, ptr %i.ck, align 1, !tbaa !48
  br label %.critedge.i111.2, !llvm.loop !2

bb.ad:                                            ; preds = %bb.ab
  %i.cl = getelementptr inbounds nuw i8, ptr %.0.i110.2, i64 1
  br label %bb.ab, !llvm.loop !1

.loopexit137:                                     ; preds = %.loopexit137.loopexit, %bb.o, %bb.q, %bb.r
  %.193 = phi i32 [ 1, %bb.r ], [ 0, %bb.q ], [ %spec.select, %bb.o ], [ 1, %.loopexit137.loopexit ]
  %i.cm = call ptr @fgets(ptr noundef nonnull %i.b, i32 noundef 2047, ptr noundef nonnull %i.n) ; 2 uses
  %i.cn = icmp eq ptr %i.cm, null
  br i1 %i.cn, label %.loopexit136, label %.preheader.i.preheader, !llvm.loop !470

bb.ae:                                            ; preds = %bb.l
  call void @rewind(ptr noundef nonnull %i.n)
  %i.co = call i32 @feof(ptr noundef nonnull %i.n) #40
  %.not106151 = icmp eq i32 %i.co, 0
  br i1 %.not106151, label %.lr.ph, label %.loopexit136

.lr.ph:                                           ; preds = %bb.ae
  %i.cp = getelementptr inbounds nuw i8, ptr %i.al, i64 32 ; 7 uses
  %i.cq = getelementptr inbounds nuw i8, ptr %i.al, i64 8 ; 3 uses
  %i.cr = getelementptr inbounds nuw i8, ptr %i.al, i64 24 ; 5 uses
  %i.cs = getelementptr inbounds nuw i8, ptr %i.al, i64 4 ; 3 uses
  %i.ct = getelementptr inbounds nuw i8, ptr %i.al, i64 16 ; 8 uses
  %i.cu = getelementptr inbounds nuw i8, ptr %i.al, i64 40 ; 13 uses
  br label %bb.af

bb.af:                                            ; preds = %.lr.ph, %bb.av
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #40
  %i.cv = call i64 @fread(ptr noundef nonnull %i.d, i64 noundef 1, i64 noundef 80, ptr noundef nonnull %i.n)
  %.not107 = icmp eq i64 %i.cv, 0
  br i1 %.not107, label %.thread, label %bb.ag

.thread:                                          ; preds = %bb.af
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #40
  br label %.loopexit136

bb.ag:                                            ; preds = %bb.af
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #40
  store i32 0, ptr %i.e, align 4, !tbaa !57
  %i.cw = call i64 @fread(ptr noundef nonnull %i.e, i64 noundef 4, i64 noundef 1, ptr noundef nonnull %i.n)
  %i.cx = load i32, ptr %i.e, align 4, !tbaa !57  ; 3 uses
  %i.cy = icmp ugt i32 %i.cx, 100000000           ; 2 uses
  br i1 %i.cy, label %.preheader135, label %_ZL9SwapBytesPcii.exit

.preheader135:                                    ; preds = %bb.ag
  %2 = call i32 @llvm.bswap.i32(i32 %i.cx)        ; 2 uses
  store i32 %2, ptr %i.e, align 4, !tbaa !48
  br label %_ZL9SwapBytesPcii.exit

_ZL9SwapBytesPcii.exit:                           ; preds = %.preheader135, %bb.ag
  %i.cz = phi i32 [ %2, %.preheader135 ], [ %i.cx, %bb.ag ] ; 3 uses
  %i.da = icmp ne i64 %i.cw, 0
  %i.db = icmp ne i32 %i.cz, 0
  %or.cond = and i1 %i.da, %i.db
  br i1 %or.cond, label %bb.ah, label %bb.av

bb.ah:                                            ; preds = %_ZL9SwapBytesPcii.exit
  %i.dc = mul i32 %i.cz, 50
  %i.dd = zext i32 %i.dc to i64                   ; 3 uses
  %i.de = call noalias noundef nonnull ptr @_Znam(i64 noundef %i.dd) #41 ; 3 uses
  %i.df = call i64 @fread(ptr noundef nonnull %i.de, i64 noundef 1, i64 noundef %i.dd, ptr noundef nonnull %i.n)
  %i.dg = icmp eq i64 %i.df, %i.dd
  br i1 %i.dg, label %.preheader134.preheader, label %.loopexit

.preheader134.preheader:                          ; preds = %bb.ah
  %wide.trip.count = zext i32 %i.cz to i64
  br label %.preheader134

.preheader134:                                    ; preds = %.preheader134.preheader, %_ZN10tetgenmesh9arraypool8getblockEi.exit.2
  %indvars.iv = phi i64 [ 0, %.preheader134.preheader ], [ %indvars.iv.next, %_ZN10tetgenmesh9arraypool8getblockEi.exit.2 ] ; 2 uses
  %i.dh = mul i64 %indvars.iv, 50
  %i.di = and i64 %i.dh, 4294967294
  %i.dj = getelementptr inbounds nuw i8, ptr %i.de, i64 %i.di ; 19 uses
  br i1 %i.cy, label %.preheader.preheader, label %_ZL9SwapBytesPcii.exit115

.preheader.preheader:                             ; preds = %.preheader134
  %i.dk = load i32, ptr %i.dj, align 1
  %3 = call i32 @llvm.bswap.i32(i32 %i.dk)
  store i32 %3, ptr %i.dj, align 1, !tbaa !48
  %i.dl = getelementptr inbounds nuw i8, ptr %i.dj, i64 4 ; 2 uses
  %i.dm = load i32, ptr %i.dl, align 1
  %4 = call i32 @llvm.bswap.i32(i32 %i.dm)
  store i32 %4, ptr %i.dl, align 1, !tbaa !48
  %i.dn = getelementptr inbounds nuw i8, ptr %i.dj, i64 8 ; 2 uses
  %i.do = load i32, ptr %i.dn, align 1
  %5 = call i32 @llvm.bswap.i32(i32 %i.do)
  store i32 %5, ptr %i.dn, align 1, !tbaa !48
  %i.dp = getelementptr inbounds nuw i8, ptr %i.dj, i64 12 ; 2 uses
  %i.dq = load i32, ptr %i.dp, align 1
  %6 = call i32 @llvm.bswap.i32(i32 %i.dq)
  store i32 %6, ptr %i.dp, align 1, !tbaa !48
  %i.dr = getelementptr inbounds nuw i8, ptr %i.dj, i64 16 ; 2 uses
  %i.ds = load i32, ptr %i.dr, align 1
  %7 = call i32 @llvm.bswap.i32(i32 %i.ds)
  store i32 %7, ptr %i.dr, align 1, !tbaa !48
  %i.dt = getelementptr inbounds nuw i8, ptr %i.dj, i64 20 ; 2 uses
  %i.du = load i32, ptr %i.dt, align 1
  %8 = call i32 @llvm.bswap.i32(i32 %i.du)
  store i32 %8, ptr %i.dt, align 1, !tbaa !48
  %i.dv = getelementptr inbounds nuw i8, ptr %i.dj, i64 24 ; 2 uses
  %i.dw = load i32, ptr %i.dv, align 1
  %9 = call i32 @llvm.bswap.i32(i32 %i.dw)
  store i32 %9, ptr %i.dv, align 1, !tbaa !48
  %i.dx = getelementptr inbounds nuw i8, ptr %i.dj, i64 28 ; 2 uses
  %i.dy = load i32, ptr %i.dx, align 1
  %10 = call i32 @llvm.bswap.i32(i32 %i.dy)
  store i32 %10, ptr %i.dx, align 1, !tbaa !48
  %i.dz = getelementptr inbounds nuw i8, ptr %i.dj, i64 32 ; 2 uses
  %i.ea = load i32, ptr %i.dz, align 1
  %11 = call i32 @llvm.bswap.i32(i32 %i.ea)
  store i32 %11, ptr %i.dz, align 1, !tbaa !48
  %i.eb = getelementptr inbounds nuw i8, ptr %i.dj, i64 36 ; 2 uses
  %i.ec = load i32, ptr %i.eb, align 1
  %12 = call i32 @llvm.bswap.i32(i32 %i.ec)
  store i32 %12, ptr %i.eb, align 1, !tbaa !48
  %i.ed = getelementptr inbounds nuw i8, ptr %i.dj, i64 40 ; 2 uses
  %i.ee = load i32, ptr %i.ed, align 1
  %13 = call i32 @llvm.bswap.i32(i32 %i.ee)
  store i32 %13, ptr %i.ed, align 1, !tbaa !48
  %i.ef = getelementptr inbounds nuw i8, ptr %i.dj, i64 44 ; 2 uses
  %i.eg = load i32, ptr %i.ef, align 1
  %14 = call i32 @llvm.bswap.i32(i32 %i.eg)
  store i32 %14, ptr %i.ef, align 1, !tbaa !48
  br label %_ZL9SwapBytesPcii.exit115

_ZL9SwapBytesPcii.exit115:                        ; preds = %.preheader.preheader, %.preheader134
  %i.eh = load i64, ptr %i.cp, align 8, !tbaa !98
  %i.ei = trunc i64 %i.eh to i32
  %i.ej = load i32, ptr %i.cq, align 8, !tbaa !101
  %i.ek = ashr i32 %i.ei, %i.ej                   ; 6 uses
  %i.el = load ptr, ptr %i.cr, align 8, !tbaa !102 ; 10 uses
  %i.em = ptrtoaddr ptr %i.el to i64
  %i.en = icmp eq ptr %i.el, null
  br i1 %i.en, label %bb.ai, label %bb.aj

bb.ai:                                            ; preds = %_ZL9SwapBytesPcii.exit115
  %i.eo = add nsw i32 %i.ek, 128                  ; 4 uses
  %i.ep = sext i32 %i.eo to i64
  %i.eq = shl nsw i64 %i.ep, 3                    ; 2 uses
  %i.er = call noalias ptr @malloc(i64 noundef %i.eq) #45 ; 3 uses
  store ptr %i.er, ptr %i.cr, align 8, !tbaa !102
  store i32 %i.eo, ptr %i.ct, align 8, !tbaa !103
  %i.es = icmp sgt i32 %i.ek, -128
  br i1 %i.es, label %.lr.ph45.preheader.i, label %._crit_edge46.i

.lr.ph45.preheader.i:                             ; preds = %bb.ai
  %i.et = zext nneg i32 %i.eo to i64
  %i.eu = shl nuw nsw i64 %i.et, 3
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.er, i8 0, i64 %i.eu, i1 false), !tbaa !51
  br label %._crit_edge46.i

._crit_edge46.i:                                  ; preds = %.lr.ph45.preheader.i, %bb.ai
  store i64 %i.eq, ptr %i.cu, align 8, !tbaa !104
  br label %bb.al

bb.aj:                                            ; preds = %_ZL9SwapBytesPcii.exit115
  %i.ev = load i32, ptr %i.ct, align 8, !tbaa !103 ; 9 uses
  %.not.i = icmp slt i32 %i.ek, %i.ev
  br i1 %.not.i, label %bb.al, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  %i.ew = mul nsw i32 %i.ev, 3                    ; 2 uses
  %.not39.i = icmp slt i32 %i.ek, %i.ew
  %i.ex = add nsw i32 %i.ek, 128
  %spec.select.i = select i1 %.not39.i, i32 %i.ew, i32 %i.ex ; 6 uses
  %i.ey = sext i32 %spec.select.i to i64
  %i.ez = shl nsw i64 %i.ey, 3
  %i.fa = call noalias ptr @malloc(i64 noundef %i.ez) #45 ; 10 uses
  %i.fb = icmp sgt i32 %i.ev, 0
  br i1 %i.fb, label %.lr.ph.preheader.i, label %.preheader.i116

.lr.ph.preheader.i:                               ; preds = %bb.ak
  %i.fc = ptrtoaddr ptr %i.fa to i64
  %wide.trip.count.i = zext nneg i32 %i.ev to i64 ; 5 uses
  %min.iters.check298 = icmp ult i32 %i.ev, 4
  %i.fd = sub i64 %i.em, %i.fc
  %diff.check300 = icmp ugt i64 %i.fd, -32
  %or.cond311 = or i1 %min.iters.check298, %diff.check300
  br i1 %or.cond311, label %.lr.ph.i.preheader, label %vector.ph301

vector.ph301:                                     ; preds = %.lr.ph.preheader.i
  %n.vec302 = and i64 %wide.trip.count.i, 2147483644 ; 3 uses
  br label %vector.body303

vector.body303:                                   ; preds = %vector.body303, %vector.ph301
  %index304 = phi i64 [ 0, %vector.ph301 ], [ %index.next307, %vector.body303 ] ; 3 uses
  %i.fe = getelementptr inbounds nuw [8 x i8], ptr %i.el, i64 %index304 ; 2 uses
  %i.ff = getelementptr inbounds nuw i8, ptr %i.fe, i64 16
  %wide.load305 = load <2 x ptr>, ptr %i.fe, align 8, !tbaa !51
  %wide.load306 = load <2 x ptr>, ptr %i.ff, align 8, !tbaa !51
  %i.fg = getelementptr inbounds nuw [8 x i8], ptr %i.fa, i64 %index304 ; 2 uses
  %i.fh = getelementptr inbounds nuw i8, ptr %i.fg, i64 16
  store <2 x ptr> %wide.load305, ptr %i.fg, align 8, !tbaa !51
  store <2 x ptr> %wide.load306, ptr %i.fh, align 8, !tbaa !51
  %index.next307 = add nuw i64 %index304, 4       ; 2 uses
  %i.fi = icmp eq i64 %index.next307, %n.vec302
  br i1 %i.fi, label %middle.block308, label %vector.body303, !llvm.loop !471

middle.block308:                                  ; preds = %vector.body303
  %cmp.n309 = icmp eq i64 %n.vec302, %wide.trip.count.i
  br i1 %cmp.n309, label %.preheader.i116, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %.lr.ph.preheader.i, %middle.block308
  %indvars.iv.i117.ph = phi i64 [ 0, %.lr.ph.preheader.i ], [ %n.vec302, %middle.block308 ] ; 3 uses
  %xtraiter = and i64 %wide.trip.count.i, 3       ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.prol.loopexit, label %.lr.ph.i.prol

.lr.ph.i.prol:                                    ; preds = %.lr.ph.i.preheader, %.lr.ph.i.prol
  %indvars.iv.i117.prol = phi i64 [ %indvars.iv.next.i118.prol, %.lr.ph.i.prol ], [ %indvars.iv.i117.ph, %.lr.ph.i.preheader ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.prol ], [ 0, %.lr.ph.i.preheader ]
  %i.fj = getelementptr inbounds nuw [8 x i8], ptr %i.el, i64 %indvars.iv.i117.prol
  %i.fk = load ptr, ptr %i.fj, align 8, !tbaa !51
  %i.fl = getelementptr inbounds nuw [8 x i8], ptr %i.fa, i64 %indvars.iv.i117.prol
  store ptr %i.fk, ptr %i.fl, align 8, !tbaa !51
  %indvars.iv.next.i118.prol = add nuw nsw i64 %indvars.iv.i117.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.prol.loopexit, label %.lr.ph.i.prol, !llvm.loop !472

.lr.ph.i.prol.loopexit:                           ; preds = %.lr.ph.i.prol, %.lr.ph.i.preheader
  %indvars.iv.i117.unr = phi i64 [ %indvars.iv.i117.ph, %.lr.ph.i.preheader ], [ %indvars.iv.next.i118.prol, %.lr.ph.i.prol ]
  %i.fm = sub nsw i64 %indvars.iv.i117.ph, %wide.trip.count.i
  %i.fn = icmp ugt i64 %i.fm, -4
  br i1 %i.fn, label %.preheader.i116, label %.lr.ph.i

.preheader.i116:                                  ; preds = %.lr.ph.i.prol.loopexit, %.lr.ph.i, %middle.block308, %bb.ak
  %i.fo = icmp slt i32 %i.ev, %spec.select.i
  br i1 %i.fo, label %.lr.ph42.preheader.i, label %._crit_edge.i

.lr.ph42.preheader.i:                             ; preds = %.preheader.i116
  %i.fp = sext i32 %i.ev to i64
  %i.fq = shl nsw i64 %i.fp, 3
  %scevgep.i = getelementptr i8, ptr %i.fa, i64 %i.fq
  %i.fr = xor i32 %i.ev, -1
  %i.fs = add i32 %spec.select.i, %i.fr
  %i.ft = zext i32 %i.fs to i64
  %i.fu = shl nuw nsw i64 %i.ft, 3
  %i.fv = add nuw nsw i64 %i.fu, 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %scevgep.i, i8 0, i64 %i.fv, i1 false), !tbaa !51
  br label %._crit_edge.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.prol.loopexit, %.lr.ph.i
  %indvars.iv.i117 = phi i64 [ %indvars.iv.next.i118.3, %.lr.ph.i ], [ %indvars.iv.i117.unr, %.lr.ph.i.prol.loopexit ] ; 6 uses
  %i.fw = getelementptr inbounds nuw [8 x i8], ptr %i.el, i64 %indvars.iv.i117
  %i.fx = load ptr, ptr %i.fw, align 8, !tbaa !51
  %i.fy = getelementptr inbounds nuw [8 x i8], ptr %i.fa, i64 %indvars.iv.i117
  store ptr %i.fx, ptr %i.fy, align 8, !tbaa !51
  %indvars.iv.next.i118 = add nuw nsw i64 %indvars.iv.i117, 1 ; 2 uses
  %i.fz = getelementptr inbounds nuw [8 x i8], ptr %i.el, i64 %indvars.iv.next.i118
  %i.ga = load ptr, ptr %i.fz, align 8, !tbaa !51
  %i.gb = getelementptr inbounds nuw [8 x i8], ptr %i.fa, i64 %indvars.iv.next.i118
  store ptr %i.ga, ptr %i.gb, align 8, !tbaa !51
  %indvars.iv.next.i118.1346 = add nuw nsw i64 %indvars.iv.i117, 2 ; 2 uses
  %i.gc = getelementptr inbounds nuw [8 x i8], ptr %i.el, i64 %indvars.iv.next.i118.1346
  %i.gd = load ptr, ptr %i.gc, align 8, !tbaa !51
  %i.ge = getelementptr inbounds nuw [8 x i8], ptr %i.fa, i64 %indvars.iv.next.i118.1346
  store ptr %i.gd, ptr %i.ge, align 8, !tbaa !51
  %indvars.iv.next.i118.2350 = add nuw nsw i64 %indvars.iv.i117, 3 ; 2 uses
  %i.gf = getelementptr inbounds nuw [8 x i8], ptr %i.el, i64 %indvars.iv.next.i118.2350
  %i.gg = load ptr, ptr %i.gf, align 8, !tbaa !51
  %i.gh = getelementptr inbounds nuw [8 x i8], ptr %i.fa, i64 %indvars.iv.next.i118.2350
  store ptr %i.gg, ptr %i.gh, align 8, !tbaa !51
  %indvars.iv.next.i118.3 = add nuw nsw i64 %indvars.iv.i117, 4 ; 2 uses
  %exitcond.not.i119.3 = icmp eq i64 %indvars.iv.next.i118.3, %wide.trip.count.i
  br i1 %exitcond.not.i119.3, label %.preheader.i116, label %.lr.ph.i, !llvm.loop !473

._crit_edge.i:                                    ; preds = %.lr.ph42.preheader.i, %.preheader.i116
  call void @free(ptr noundef nonnull %i.el) #40
  %i.gi = load i32, ptr %i.ct, align 8, !tbaa !103
  %i.gj = sub nsw i32 %spec.select.i, %i.gi
  %i.gk = sext i32 %i.gj to i64
  %i.gl = shl nsw i64 %i.gk, 3
  %i.gm = load i64, ptr %i.cu, align 8, !tbaa !104
  %i.gn = add i64 %i.gl, %i.gm
  store i64 %i.gn, ptr %i.cu, align 8, !tbaa !104
  store ptr %i.fa, ptr %i.cr, align 8, !tbaa !102
  store i32 %spec.select.i, ptr %i.ct, align 8, !tbaa !103
  br label %bb.al

bb.al:                                            ; preds = %._crit_edge.i, %bb.aj, %._crit_edge46.i
  %i.go = phi i32 [ %i.ev, %bb.aj ], [ %spec.select.i, %._crit_edge.i ], [ %i.eo, %._crit_edge46.i ] ; 9 uses
  %i.gp = phi ptr [ %i.el, %bb.aj ], [ %i.fa, %._crit_edge.i ], [ %i.er, %._crit_edge46.i ] ; 10 uses
  %i.gq = ptrtoaddr ptr %i.gp to i64
  %i.gr = sext i32 %i.ek to i64
  %i.gs = getelementptr inbounds [8 x i8], ptr %i.gp, i64 %i.gr ; 2 uses
  %i.gt = load ptr, ptr %i.gs, align 8, !tbaa !51 ; 2 uses
  %i.gu = icmp eq ptr %i.gt, null
  %.pre185 = load i32, ptr %i.cs, align 4, !tbaa !99 ; 3 uses
  %.pre186 = load i32, ptr %i.al, align 8, !tbaa !100 ; 3 uses
  br i1 %i.gu, label %bb.am, label %bb.an

bb.am:                                            ; preds = %bb.al
  %i.gv = mul nsw i32 %.pre186, %.pre185
  %i.gw = sext i32 %i.gv to i64                   ; 2 uses
  %i.gx = call noalias ptr @malloc(i64 noundef %i.gw) #45 ; 2 uses
  store ptr %i.gx, ptr %i.gs, align 8, !tbaa !51
  %i.gy = load i64, ptr %i.cu, align 8, !tbaa !104
  %i.gz = add i64 %i.gy, %i.gw
  store i64 %i.gz, ptr %i.cu, align 8, !tbaa !104
  br label %bb.an

bb.an:                                            ; preds = %bb.am, %bb.al
  %.033.i = phi ptr [ %i.gx, %bb.am ], [ %i.gt, %bb.al ]
  %i.ha = load i64, ptr %i.cp, align 8, !tbaa !98 ; 2 uses
  %i.hb = add nsw i32 %.pre185, -1
  %i.hc = sext i32 %i.hb to i64
  %i.hd = and i64 %i.ha, %i.hc
  %i.he = sext i32 %.pre186 to i64
  %i.hf = mul nsw i64 %i.hd, %i.he
  %i.hg = getelementptr inbounds i8, ptr %.033.i, i64 %i.hf ; 2 uses
  %i.hh = add nsw i64 %i.ha, 1                    ; 2 uses
  store i64 %i.hh, ptr %i.cp, align 8, !tbaa !98
  %i.hi = getelementptr inbounds nuw i8, ptr %i.dj, i64 12
  %i.hj = load <2 x float>, ptr %i.hi, align 4, !tbaa !77
  %i.hk = fpext <2 x float> %i.hj to <2 x double>
  store <2 x double> %i.hk, ptr %i.hg, align 8, !tbaa !56
  %i.hl = getelementptr inbounds nuw i8, ptr %i.dj, i64 20
  %i.hm = load float, ptr %i.hl, align 4, !tbaa !77
  %i.hn = fpext float %i.hm to double
  %i.ho = getelementptr inbounds nuw i8, ptr %i.hg, i64 16
  store double %i.hn, ptr %i.ho, align 8, !tbaa !56
  %i.hp = trunc i64 %i.hh to i32
end_hunk_0
begin_hunk_1_@_ZN10tetgenmesh10freememoryEv:bb.a
bb.bc:                                            ; preds = %bb.bb
  tail call void @_ZN10tetgenmesh9arraypoolD1Ev(ptr noundef nonnull align 8 dead_on_return(48) dereferenceable(48) %i.bz) #40
  tail call void @_ZdlPvm(ptr noundef nonnull %i.bz, i64 noundef 48) #42
  br label %bb.bd

bb.bd:                                            ; preds = %bb.bb, %bb.bc, %bb.ay
  %i.cb = getelementptr inbounds nuw i8, ptr %0, i64 68496 ; 2 uses
  %i.cc = load ptr, ptr %i.cb, align 8, !tbaa !377 ; 2 uses
  %.not55 = icmp eq ptr %i.cc, null
  br i1 %.not55, label %bb.bo, label %bb.be

bb.be:                                            ; preds = %bb.bd
  tail call void @_ZdaPv(ptr noundef nonnull %i.cc) #42
  %i.cd = getelementptr inbounds nuw i8, ptr %0, i64 68504
  %i.ce = load ptr, ptr %i.cd, align 8, !tbaa !378 ; 2 uses
  %i.cf = icmp eq ptr %i.ce, null
  br i1 %i.cf, label %bb.bg, label %bb.bf

bb.bf:                                            ; preds = %bb.be
  tail call void @_ZdaPv(ptr noundef nonnull %i.ce) #42
  br label %bb.bg

bb.bg:                                            ; preds = %bb.bf, %bb.be
  %i.cg = getelementptr inbounds nuw i8, ptr %0, i64 68512
  %i.ch = load ptr, ptr %i.cg, align 8, !tbaa !354 ; 2 uses
  %i.ci = icmp eq ptr %i.ch, null
  br i1 %i.ci, label %bb.bi, label %bb.bh

bb.bh:                                            ; preds = %bb.bg
  tail call void @_ZdaPv(ptr noundef nonnull %i.ch) #42
  br label %bb.bi

bb.bi:                                            ; preds = %bb.bh, %bb.bg
  %i.cj = getelementptr inbounds nuw i8, ptr %0, i64 68520
  %i.ck = load ptr, ptr %i.cj, align 8, !tbaa !355 ; 2 uses
  %i.cl = icmp eq ptr %i.ck, null
  br i1 %i.cl, label %bb.bk, label %bb.bj

bb.bj:                                            ; preds = %bb.bi
  tail call void @_ZdaPv(ptr noundef nonnull %i.ck) #42
  br label %bb.bk

bb.bk:                                            ; preds = %bb.bj, %bb.bi
  %i.cm = getelementptr inbounds nuw i8, ptr %0, i64 68528
  %i.cn = load ptr, ptr %i.cm, align 8, !tbaa !352 ; 2 uses
  %i.co = icmp eq ptr %i.cn, null
  br i1 %i.co, label %bb.bm, label %bb.bl

bb.bl:                                            ; preds = %bb.bk
  tail call void @_ZdaPv(ptr noundef nonnull %i.cn) #42
  br label %bb.bm

bb.bm:                                            ; preds = %bb.bl, %bb.bk
  %i.cp = getelementptr inbounds nuw i8, ptr %0, i64 68536
  %i.cq = load ptr, ptr %i.cp, align 8, !tbaa !353 ; 2 uses
  %i.cr = icmp eq ptr %i.cq, null
  br i1 %i.cr, label %bb.bo, label %bb.bn

bb.bn:                                            ; preds = %bb.bm
  tail call void @_ZdaPv(ptr noundef nonnull %i.cq) #42
  br label %bb.bo

bb.bo:                                            ; preds = %bb.bm, %bb.bn, %bb.bd
  %i.cs = getelementptr inbounds nuw i8, ptr %0, i64 68552 ; 2 uses
  %i.ct = load ptr, ptr %i.cs, align 8, !tbaa !351 ; 2 uses
  %.not56 = icmp eq ptr %i.ct, null
  br i1 %.not56, label %bb.bt, label %bb.bp

bb.bp:                                            ; preds = %bb.bo
  tail call void @_ZdaPv(ptr noundef nonnull %i.ct) #42
  %i.cu = getelementptr inbounds nuw i8, ptr %0, i64 68568
  %i.cv = load ptr, ptr %i.cu, align 8, !tbaa !374 ; 2 uses
  %i.cw = icmp eq ptr %i.cv, null
  br i1 %i.cw, label %bb.br, label %bb.bq

bb.bq:                                            ; preds = %bb.bp
  tail call void @_ZdaPv(ptr noundef nonnull %i.cv) #42
  br label %bb.br

bb.br:                                            ; preds = %bb.bq, %bb.bp
  %i.cx = getelementptr inbounds nuw i8, ptr %0, i64 68576
  %i.cy = load ptr, ptr %i.cx, align 8, !tbaa !376 ; 2 uses
  %i.cz = icmp eq ptr %i.cy, null
  br i1 %i.cz, label %bb.bt, label %bb.bs

bb.bs:                                            ; preds = %bb.br
  tail call void @_ZdaPv(ptr noundef nonnull %i.cy) #42
  br label %bb.bt

bb.bt:                                            ; preds = %bb.br, %bb.bs, %bb.bo
  %i.da = getelementptr inbounds nuw i8, ptr %0, i64 68560
  %i.db = load ptr, ptr %i.da, align 8, !tbaa !397 ; 2 uses
  %.not57 = icmp eq ptr %i.db, null
  br i1 %.not57, label %bb.bv, label %bb.bu

bb.bu:                                            ; preds = %bb.bt
  tail call void @_ZdaPv(ptr noundef nonnull %i.db) #42
  br label %bb.bv

bb.bv:                                            ; preds = %bb.bu, %bb.bt
  %i.dc = getelementptr inbounds nuw i8, ptr %0, i64 68632 ; 2 uses
  %i.dd = load ptr, ptr %i.dc, align 8, !tbaa !395 ; 2 uses
  %.not58 = icmp eq ptr %i.dd, null
  br i1 %.not58, label %bb.bx, label %bb.bw

bb.bw:                                            ; preds = %bb.bv
  tail call void @_ZdaPv(ptr noundef nonnull %i.dd) #42
  br label %bb.bx

bb.bx:                                            ; preds = %bb.bw, %bb.bv
  %i.de = getelementptr inbounds nuw i8, ptr %0, i64 1456
  store ptr null, ptr %i.de, align 8, !tbaa !417
  %i.df = getelementptr inbounds nuw i8, ptr %0, i64 68624
  store i32 0, ptr %i.df, align 8, !tbaa !394
  %i.dg = getelementptr inbounds nuw i8, ptr %0, i64 68688
  %i.dh = getelementptr inbounds nuw i8, ptr %0, i64 68716
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(69984) %0, i8 0, i64 168, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(144) %i.ad, i8 0, i64 144, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(60) %i.bt, i8 0, i64 60, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(52) %i.cb, i8 0, i64 52, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.cs, i8 0, i64 40, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(52) %i.dc, i8 0, i64 52, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(28) %i.dg, i8 0, i64 28, i1 false)
  store i32 1, ptr %i.dh, align 4, !tbaa !297
  %i.di = getelementptr inbounds nuw i8, ptr %0, i64 68720
  store i32 0, ptr %i.di, align 8, !tbaa !238
  %i.dj = getelementptr inbounds nuw i8, ptr %0, i64 68728
  store i64 0, ptr %i.dj, align 8, !tbaa !349
  %i.dk = getelementptr inbounds nuw i8, ptr %0, i64 68736
  store i64 1, ptr %i.dk, align 8, !tbaa !340
  %i.dl = load double, ptr @_ZN10tetgenmesh2PIE, align 8, !tbaa !56 ; 3 uses
  %i.dm = getelementptr inbounds nuw i8, ptr %0, i64 68800
  store double %i.dl, ptr %i.dm, align 8, !tbaa !366
  %i.dn = getelementptr inbounds nuw i8, ptr %0, i64 68792
  store double %i.dl, ptr %i.dn, align 8, !tbaa !426
  %i.do = fmul double %i.dl, f0x3FEFFB72EA61D951
  %i.dp = tail call double @cos(double noundef %i.do) #40 ; 2 uses
  %i.dq = getelementptr inbounds nuw i8, ptr %0, i64 68808
  store double %i.dp, ptr %i.dq, align 8, !tbaa !411
  %i.dr = getelementptr inbounds nuw i8, ptr %0, i64 68816
  store double %i.dp, ptr %i.dr, align 8, !tbaa !317
  %i.ds = getelementptr inbounds nuw i8, ptr %0, i64 68824
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.ds, i8 0, i64 72, i1 false)
  %i.dt = getelementptr inbounds nuw i8, ptr %0, i64 68896
  store <2 x double> <double 1.000000e+02, double 1.000000e+30>, ptr %i.dt, align 8, !tbaa !56
  %i.du = getelementptr inbounds nuw i8, ptr %0, i64 68912
  %i.dv = getelementptr inbounds nuw i8, ptr %0, i64 68984
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.du, i8 0, i64 72, i1 false)
  store i64 -1, ptr %i.dv, align 8, !tbaa !345
  %i.dw = getelementptr inbounds nuw i8, ptr %0, i64 68992
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(192) %i.dw, i8 0, i64 192, i1 false)
  ret void
}

; Function Attrs: nofree nounwind
declare noundef i32 @puts(ptr noundef readonly captures(none)) local_unnamed_addr #37

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smax.i64(i64, i64) #2

; Function Attrs: nofree nounwind
declare noundef i64 @fwrite(ptr noundef readonly captures(none), i64 noundef, i64 noundef, ptr noundef captures(none)) local_unnamed_addr #37

; Function Attrs: nofree nounwind
declare noundef i32 @fputc(i32 noundef, ptr noundef captures(none)) local_unnamed_addr #37

; Function Attrs: nofree nounwind
declare noundef i32 @putchar(i32 noundef) local_unnamed_addr #37

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #2

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #2

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #2

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umax.i32(i32, i32) #2

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.sqrt.f64(double) #2

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.ctpop.i32(i32) #2

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.cttz.i32(i32, i1 immarg) #38

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.ctlz.i32(i32, i1 immarg) #38

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #39

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr writeonly captures(none), ptr readonly captures(none), i64, i1 immarg) #1

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.bswap.i32(i32) #2

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x double> @llvm.fmuladd.v2f64(<2 x double>, <2 x double>, <2 x double>) #2

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x double> @llvm.sqrt.v2f64(<2 x double>) #2

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x double> @llvm.fabs.v2f64(<2 x double>) #2

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.vector.reduce.fadd.v2f64(double, <2 x double>) #2

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x i32> @llvm.ctlz.v4i32(<4 x i32>, i1 immarg) #38

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x double> @llvm.fmuladd.v4f64(<4 x double>, <4 x double>, <4 x double>) #2

attributes #0 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #3 = { nobuiltin allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { inlinehint mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nofree nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { mustprogress nocallback nofree nounwind willreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { mustprogress nounwind memory(readwrite, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #16 = { cold mustprogress noreturn uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #17 = { mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #18 = { mustprogress nofree norecurse nosync nounwind memory(readwrite, argmem: none, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #19 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #20 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #21 = { mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite, errnomem: write) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #22 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #23 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #24 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #25 = { mustprogress nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #26 = { mustprogress nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #27 = { mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #28 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #29 = { mustprogress nofree norecurse nosync nounwind memory(argmem: readwrite, errnomem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #30 = { mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #31 = { mustprogress nofree norecurse nosync nounwind memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #32 = { mustprogress nofree nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #33 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #34 = { mustprogress nofree norecurse nosync nounwind memory(read, inaccessiblemem: none, errnomem: readwrite, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #35 = { cold noreturn }
attributes #36 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #37 = { nofree nounwind }
attributes #38 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #39 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #40 = { nounwind }
attributes #41 = { builtin allocsize(0) }
attributes #42 = { builtin nounwind }
attributes #43 = { noreturn }
attributes #44 = { nounwind willreturn memory(read) }
attributes #45 = { nounwind allocsize(0) }

!llvm.module.flags = !{!28, !29}
!llvm.ident = !{!30}
!llvm.errno.tbaa = !{!35}

!0 = distinct !{!0, !49}
!1 = distinct !{!1, !49}
!2 = distinct !{!2, !49}
!3 = distinct !{!3, !49}
!4 = distinct !{!4, !49}
!5 = distinct !{!5, !49}
!6 = distinct !{!6, !49}
!7 = distinct !{!7, !49}
!8 = distinct !{!8, !49}
!9 = distinct !{!9, !49}
!10 = distinct !{!10, !49}
!11 = distinct !{!11, !49}
!12 = distinct !{!12, !49}
!13 = distinct !{!13, !49}
!14 = distinct !{!14, !49}
!15 = distinct !{!15, !49}
!16 = distinct !{!16, !49}
!17 = distinct !{!17, !49}
!18 = distinct !{!18, !49}
!19 = distinct !{!19, !49}
!20 = distinct !{!20, !49}
!21 = distinct !{!21, !49}
!22 = distinct !{!22, !49}
!23 = distinct !{!23, !49}
!24 = distinct !{!24, !49}
!25 = distinct !{!25, !49}
!26 = distinct !{!26, !49}
!27 = distinct !{null}
!28 = !{i32 8, !"PIC Level", i32 2}
!29 = !{i32 7, !"uwtable", i32 2}
!30 = !{!"Ubuntu clang version 24.0.0 (++20260807082003+f3bd40ce6ba5-1~exp1~20260807082012.1771)"}
!31 = !{!"Simple C++ TBAA"}
!32 = !{!"omnipotent char", !31, i64 0}
!33 = !{!"int", !32, i64 0}
!34 = !{!"__libc_errno", !33, i64 0}
!35 = !{!34, !33, i64 0}
!36 = !{!"any pointer", !32, i64 0}
!37 = !{!"p1 double", !36, i64 0}
!38 = !{!"p1 int", !36, i64 0}
!39 = !{!"any p2 pointer", !36, i64 0}
!40 = !{!"p2 int", !39, i64 0}
!41 = !{!"_ZTS8tetgenio", !33, i64 0, !33, i64 4, !33, i64 8, !37, i64 16, !37, i64 24, !37, i64 32, !38, i64 40, !38, i64 48, !36, i64 56, !33, i64 64, !33, i64 68, !33, i64 72, !38, i64 80, !37, i64 88, !37, i64 96, !38, i64 104, !38, i64 112, !38, i64 120, !33, i64 128, !33, i64 132, !33, i64 136, !36, i64 144, !38, i64 152, !33, i64 160, !37, i64 168, !33, i64 176, !37, i64 184, !33, i64 192, !38, i64 200, !37, i64 208, !33, i64 216, !37, i64 224, !33, i64 232, !37, i64 240, !33, i64 248, !38, i64 256, !38, i64 264, !38, i64 272, !38, i64 280, !38, i64 288, !33, i64 296, !38, i64 304, !38, i64 312, !38, i64 320, !38, i64 328, !33, i64 336, !37, i64 344, !36, i64 352, !36, i64 360, !40, i64 368, !33, i64 376, !33, i64 380, !33, i64 384, !33, i64 388, !36, i64 392, !36, i64 400, !36, i64 408, !36, i64 416, !36, i64 424, !36, i64 432, !36, i64 440}
!42 = !{!41, !33, i64 64}
!43 = !{!41, !37, i64 16}
!44 = !{!41, !33, i64 68}
!45 = !{!41, !37, i64 24}
!46 = !{!41, !38, i64 40}
!47 = !{!41, !36, i64 56}
!48 = !{!32, !32, i64 0}
!49 = !{!"llvm.loop.mustprogress"}
!50 = !{!"p1 omnipotent char", !36, i64 0}
!51 = !{!50, !50, i64 0}
!52 = !{!41, !33, i64 8}
!53 = !{!41, !33, i64 0}
!54 = !{!41, !33, i64 4}
!55 = !{!"double", !32, i64 0}
!56 = !{!55, !55, i64 0}
!57 = !{!33, !33, i64 0}
!58 = !{!41, !33, i64 336}
!59 = !{!41, !38, i64 304}
!60 = !{!41, !38, i64 312}
!61 = !{!41, !33, i64 132}
!62 = !{!41, !33, i64 296}
!63 = !{!41, !38, i64 256}
!64 = !{!41, !38, i64 264}
!65 = !{!41, !33, i64 128}
!66 = !{!41, !33, i64 136}
!67 = !{!41, !38, i64 80}
!68 = !{!41, !37, i64 88}
!69 = !{!41, !37, i64 96}
!70 = !{!41, !33, i64 232}
!71 = !{!41, !37, i64 224}
!72 = !{!41, !33, i64 248}
!73 = !{!41, !37, i64 240}
!74 = !{!41, !33, i64 72}
!75 = !{!41, !37, i64 32}
!76 = !{!"float", !32, i64 0}
!77 = !{!76, !76, i64 0}
!78 = !{!41, !38, i64 200}
!79 = !{!41, !33, i64 216}
!80 = !{!41, !33, i64 160}
!81 = !{!41, !36, i64 144}
!82 = !{!41, !38, i64 152}
!83 = !{!"_ZTSN8tetgenio5facetE", !36, i64 0, !33, i64 8, !37, i64 16, !33, i64 24}
!84 = !{!83, !36, i64 0}
!85 = !{!83, !33, i64 8}
!86 = !{!83, !37, i64 16}
!87 = !{!83, !33, i64 24}
!88 = !{!"_ZTSN8tetgenio7polygonE", !38, i64 0, !33, i64 8}
!89 = !{!88, !38, i64 0}
!90 = !{!88, !33, i64 8}
!91 = !{!41, !33, i64 176}
!92 = !{!41, !37, i64 168}
!93 = !{!41, !33, i64 192}
!94 = !{!41, !37, i64 184}
!95 = !{!"p2 omnipotent char", !39, i64 0}
!96 = !{!"long", !32, i64 0}
!97 = !{!"_ZTSN10tetgenmesh9arraypoolE", !33, i64 0, !33, i64 4, !33, i64 8, !33, i64 12, !33, i64 16, !95, i64 24, !96, i64 32, !96, i64 40}
!98 = !{!97, !96, i64 32}
!99 = !{!97, !33, i64 4}
!100 = !{!97, !33, i64 0}
!101 = !{!97, !33, i64 8}
!102 = !{!97, !95, i64 24}
!103 = !{!97, !33, i64 16}
!104 = !{!97, !96, i64 40}
!105 = !{!"llvm.loop.isvectorized", i32 1}
!106 = !{!"llvm.loop.unroll.runtime.disable"}
!107 = !{!"llvm.loop.unroll.disable"}
!108 = !{!97, !33, i64 12}
!109 = !{!36, !36, i64 0}
!110 = !{!37, !37, i64 0}
!111 = !{!"llvm.loop.peeled.count", i32 1}
!112 = !{!41, !38, i64 104}
!113 = !{!"_ZTSN14tetgenbehavior10objecttypeE", !32, i64 0}
!114 = !{!"_ZTS14tetgenbehavior", !33, i64 0, !33, i64 4, !33, i64 8, !33, i64 12, !33, i64 16, !33, i64 20, !33, i64 24, !33, i64 28, !33, i64 32, !33, i64 36, !33, i64 40, !33, i64 44, !33, i64 48, !33, i64 52, !33, i64 56, !33, i64 60, !33, i64 64, !33, i64 68, !33, i64 72, !33, i64 76, !33, i64 80, !33, i64 84, !33, i64 88, !33, i64 92, !33, i64 96, !33, i64 100, !33, i64 104, !33, i64 108, !33, i64 112, !33, i64 116, !33, i64 120, !33, i64 124, !33, i64 128, !33, i64 132, !33, i64 136, !33, i64 140, !33, i64 144, !33, i64 148, !33, i64 152, !33, i64 156, !33, i64 160, !33, i64 164, !33, i64 168, !33, i64 172, !33, i64 176, !33, i64 180, !33, i64 184, !33, i64 188, !33, i64 192, !33, i64 196, !33, i64 200, !33, i64 204, !33, i64 208, !33, i64 212, !33, i64 216, !33, i64 220, !33, i64 224, !33, i64 228, !33, i64 232, !33, i64 236, !33, i64 240, !33, i64 244, !33, i64 248, !33, i64 252, !55, i64 256, !55, i64 264, !55, i64 272, !55, i64 280, !55, i64 288, !55, i64 296, !55, i64 304, !55, i64 312, !55, i64 320, !55, i64 328, !55, i64 336, !55, i64 344, !55, i64 352, !55, i64 360, !55, i64 368, !55, i64 376, !55, i64 384, !32, i64 392, !32, i64 1416, !32, i64 2440, !32, i64 3464, !32, i64 4488, !33, i64 5512, !32, i64 5516, !113, i64 6540}
!115 = !{!114, !33, i64 0}
!116 = !{!114, !55, i64 272}
!117 = !{!114, !55, i64 288}
!118 = !{!114, !55, i64 280}
!119 = !{!114, !33, i64 16}
!120 = !{!114, !33, i64 20}
!121 = !{!114, !33, i64 172}
!122 = !{!114, !33, i64 176}
!123 = !{!114, !33, i64 8}
!124 = !{!114, !55, i64 376}
!125 = !{!114, !55, i64 384}
!126 = !{!114, !33, i64 12}
!127 = !{!114, !55, i64 312}
!128 = !{!114, !55, i64 336}
!129 = !{!114, !33, i64 28}
!130 = !{!114, !33, i64 180}
!131 = !{!114, !55, i64 368}
end_hunk_1
