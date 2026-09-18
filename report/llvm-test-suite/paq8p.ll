Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm-test-suite/original/paq8p?download=true
inline.NumInlined: 1537
inline.NumDeleted: 102
loop-unroll.NumCompletelyUnrolled: 24
loop-unroll.NumRuntimeUnrolled: 8
loop-unroll.NumUnrolled: 40
begin_hunk_0_@_Z8wavModelR5Mixer:bb.a
  %i.cal = load i16, ptr %i.cak, align 2, !tbaa !44
  %i.cam = lshr i16 %i.cal, 4
  %i.can = zext nneg i16 %i.cam to i64
  %i.cao = getelementptr inbounds nuw [2 x i8], ptr %i.buz, i64 %i.can
  %i.cap = load i16, ptr %i.cao, align 2, !tbaa !44
  %i.caq = add nsw i32 %i.bve, 8
  store i32 %i.caq, ptr %i.bvd, align 8, !tbaa !63
  %i.car = sext i32 %i.bve to i64
  %i.cas = getelementptr [2 x i8], ptr %i.bvg, i64 %i.car
  %i.cat = getelementptr i8, ptr %i.cas, i64 14
  store i16 %i.cap, ptr %i.cat, align 2, !tbaa !44
  %i.cau = load i32, ptr @bpos, align 4, !tbaa !18
  %i.cav = load i32, ptr @pos, align 4, !tbaa !18
  %i.caw = add nsw i32 %i.cav, -1
  %i.cax = load i32, ptr @buf, align 8, !tbaa !33
  %i.cay = add nsw i32 %i.cax, -1
  %i.caz = and i32 %i.cay, %i.caw
  %i.cba = load ptr, ptr getelementptr inbounds nuw (i8, ptr @buf, i64 16), align 8, !tbaa !35
  %i.cbb = sext i32 %i.caz to i64
  %i.cbc = getelementptr inbounds i8, ptr %i.cba, i64 %i.cbb
  %i.cbd = load i8, ptr %i.cbc, align 1, !tbaa !22
  %i.cbe = zext i8 %i.cbd to i32
  %i.cbf = tail call noundef i32 @_ZN10ContextMap4mix1ER5Mixeriiii(ptr noundef nonnull align 8 dereferenceable(140) @_ZZ8wavModelR5MixerE2cm, ptr noundef nonnull align 8 dereferenceable(136) %0, i32 noundef %i.bus, i32 noundef %i.cau, i32 noundef %i.cbe, i32 noundef %i.buh) ; 0 uses
  %i.cbg = load i32, ptr @_ZZ8wavModelR5MixerE8channels, align 4, !tbaa !18
  %i.cbh = shl i32 %i.cbg, 8
  %i.cbi = load i32, ptr @_ZZ8wavModelR5MixerE4bits, align 4, !tbaa !18
  %i.cbj = or i32 %i.cbh, %i.cbi
  br label %bb.cp

bb.cp:                                            ; preds = %bb.co, %bb.bm
  %.0267 = phi i32 [ 0, %bb.bm ], [ %i.cbj, %bb.co ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #38
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #38
  ret i32 %.0267

bb.cq:                                            ; preds = %bb.ba, %bb.az, %bb.ay, %bb.ax, %bb.aw, %bb.av, %bb.au, %bb.at, %bb.as
  %_ZGVZ8wavModelR5MixerE2cm.sink = phi ptr [ @_ZGVZ8wavModelR5MixerE2cm, %bb.ba ], [ @_ZGVZ8wavModelR5MixerE4scm8, %bb.az ], [ @_ZGVZ8wavModelR5MixerE4scm7, %bb.ay ], [ @_ZGVZ8wavModelR5MixerE4scm6, %bb.ax ], [ @_ZGVZ8wavModelR5MixerE4scm5, %bb.aw ], [ @_ZGVZ8wavModelR5MixerE4scm4, %bb.av ], [ @_ZGVZ8wavModelR5MixerE4scm3, %bb.au ], [ @_ZGVZ8wavModelR5MixerE4scm2, %bb.at ], [ @_ZGVZ8wavModelR5MixerE4scm1, %bb.as ]
  %.pn = phi { ptr, i32 } [ %i.cf, %bb.ba ], [ %i.ce, %bb.az ], [ %i.cd, %bb.ay ], [ %i.cc, %bb.ax ], [ %i.cb, %bb.aw ], [ %i.ca, %bb.av ], [ %i.bz, %bb.au ], [ %i.by, %bb.at ], [ %i.bx, %bb.as ]
  tail call void @__cxa_guard_abort(ptr nonnull %_ZGVZ8wavModelR5MixerE2cm.sink) #38
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #38
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #38
  resume { ptr, i32 } %.pn
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr dso_local noundef i32 @_Z1Xii(i32 noundef %0, i32 noundef %1) local_unnamed_addr #14 comdat {
bb.a:
  %i.a = load i32, ptr @_ZL5wmode, align 4, !tbaa !18
  switch i32 %i.a, label %bb.i [
    i32 18, label %bb.b
    i32 17, label %bb.e
    i32 10, label %bb.f
  ]

bb.b:                                             ; preds = %bb.a
  %i.b = load i32, ptr @_ZL1S, align 4, !tbaa !18 ; 2 uses
  %.not19 = icmp sgt i32 %0, %i.b
  %i.c = add i32 %1, %0                           ; 2 uses
  br i1 %.not19, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = shl i32 %i.c, 2
  %i.e = load i32, ptr @pos, align 4, !tbaa !18
  %i.f = sub i32 %i.e, %i.d                       ; 2 uses
  %i.g = load i32, ptr @buf, align 8, !tbaa !33
  %i.h = add nsw i32 %i.g, -1                     ; 2 uses
  %i.i = and i32 %i.h, %i.f
  %i.j = load ptr, ptr getelementptr inbounds nuw (i8, ptr @buf, i64 16), align 8, !tbaa !35 ; 2 uses
  %i.k = sext i32 %i.i to i64
  %i.l = getelementptr inbounds i8, ptr %i.j, i64 %i.k
  %i.m = load i8, ptr %i.l, align 1, !tbaa !22
  %i.n = zext i8 %i.m to i32
  %i.o = add i32 %i.f, 1
  %i.p = and i32 %i.h, %i.o
  %i.q = sext i32 %i.p to i64
  %i.r = getelementptr inbounds i8, ptr %i.j, i64 %i.q
  %i.s = load i8, ptr %i.r, align 1, !tbaa !22
  %i.t = zext i8 %i.s to i32
  %i.u = shl nuw i32 %i.t, 24
  %i.v = shl nuw nsw i32 %i.n, 16
  %sext.i = or disjoint i32 %i.u, %i.v
  %i.w = ashr exact i32 %sext.i, 16
  br label %bb.j

bb.d:                                             ; preds = %bb.b
  %.neg24 = sub i32 %i.b, %i.c
  %.neg25 = shl i32 %.neg24, 2
  %.neg26 = or disjoint i32 %.neg25, 2
  %i.x = load i32, ptr @pos, align 4, !tbaa !18
  %i.y = add i32 %.neg26, %i.x                    ; 2 uses
  %i.z = load i32, ptr @buf, align 8, !tbaa !33
  %i.aa = add nsw i32 %i.z, -1                    ; 2 uses
  %i.ab = and i32 %i.aa, %i.y
  %i.ac = load ptr, ptr getelementptr inbounds nuw (i8, ptr @buf, i64 16), align 8, !tbaa !35 ; 2 uses
  %i.ad = sext i32 %i.ab to i64
  %i.ae = getelementptr inbounds i8, ptr %i.ac, i64 %i.ad
  %i.af = load i8, ptr %i.ae, align 1, !tbaa !22
  %i.ag = zext i8 %i.af to i32
  %i.ah = add i32 %i.y, 1
  %i.ai = and i32 %i.aa, %i.ah
  %i.aj = sext i32 %i.ai to i64
  %i.ak = getelementptr inbounds i8, ptr %i.ac, i64 %i.aj
  %i.al = load i8, ptr %i.ak, align 1, !tbaa !22
  %i.am = zext i8 %i.al to i32
  %i.an = shl nuw i32 %i.am, 24
  %i.ao = shl nuw nsw i32 %i.ag, 16
  %sext.i20 = or disjoint i32 %i.an, %i.ao
  %i.ap = ashr exact i32 %sext.i20, 16
  br label %bb.j

bb.e:                                             ; preds = %bb.a
  %i.aq = add nsw i32 %1, %0
  %i.ar = shl i32 %i.aq, 1
  %i.as = load i32, ptr @pos, align 4, !tbaa !18
  %i.at = sub i32 %i.as, %i.ar                    ; 2 uses
  %i.au = load i32, ptr @buf, align 8, !tbaa !33
  %i.av = add nsw i32 %i.au, -1                   ; 2 uses
  %i.aw = and i32 %i.av, %i.at
  %i.ax = load ptr, ptr getelementptr inbounds nuw (i8, ptr @buf, i64 16), align 8, !tbaa !35 ; 2 uses
  %i.ay = sext i32 %i.aw to i64
  %i.az = getelementptr inbounds i8, ptr %i.ax, i64 %i.ay
  %i.ba = load i8, ptr %i.az, align 1, !tbaa !22
  %i.bb = zext i8 %i.ba to i32
  %i.bc = add i32 %i.at, 1
  %i.bd = and i32 %i.av, %i.bc
  %i.be = sext i32 %i.bd to i64
  %i.bf = getelementptr inbounds i8, ptr %i.ax, i64 %i.be
  %i.bg = load i8, ptr %i.bf, align 1, !tbaa !22
  %i.bh = zext i8 %i.bg to i32
  %i.bi = shl nuw i32 %i.bh, 24
  %i.bj = shl nuw nsw i32 %i.bb, 16
  %sext.i21 = or disjoint i32 %i.bi, %i.bj
  %i.bk = ashr exact i32 %sext.i21, 16
  br label %bb.j

bb.f:                                             ; preds = %bb.a
  %i.bl = load i32, ptr @_ZL1S, align 4, !tbaa !18 ; 2 uses
  %.not = icmp sgt i32 %0, %i.bl
  %i.bm = add i32 %1, %0                          ; 2 uses
  br i1 %.not, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.bn = shl i32 %i.bm, 1
  %i.bo = load i32, ptr @pos, align 4, !tbaa !18
  %i.bp = sub nsw i32 %i.bo, %i.bn
  %i.bq = load i32, ptr @buf, align 8, !tbaa !33
  %i.br = add nsw i32 %i.bq, -1
  %i.bs = and i32 %i.br, %i.bp
  %i.bt = load ptr, ptr getelementptr inbounds nuw (i8, ptr @buf, i64 16), align 8, !tbaa !35
  %i.bu = sext i32 %i.bs to i64
  %i.bv = getelementptr inbounds i8, ptr %i.bt, i64 %i.bu
  %i.bw = load i8, ptr %i.bv, align 1, !tbaa !22
  %i.bx = zext i8 %i.bw to i32
  br label %bb.j

bb.h:                                             ; preds = %bb.f
  %.neg = sub i32 %i.bl, %i.bm
  %.neg22 = shl i32 %.neg, 1
  %.neg23 = or disjoint i32 %.neg22, 1
  %i.by = load i32, ptr @pos, align 4, !tbaa !18
  %i.bz = add i32 %.neg23, %i.by
  %i.ca = load i32, ptr @buf, align 8, !tbaa !33
  %i.cb = add nsw i32 %i.ca, -1
  %i.cc = and i32 %i.cb, %i.bz
  %i.cd = load ptr, ptr getelementptr inbounds nuw (i8, ptr @buf, i64 16), align 8, !tbaa !35
  %i.ce = sext i32 %i.cc to i64
  %i.cf = getelementptr inbounds i8, ptr %i.cd, i64 %i.ce
  %i.cg = load i8, ptr %i.cf, align 1, !tbaa !22
  %i.ch = zext i8 %i.cg to i32
  br label %bb.j

bb.i:                                             ; preds = %bb.a
  %i.ci = load i32, ptr @pos, align 4, !tbaa !18
  %i.cj = add i32 %1, %0
  %i.ck = sub i32 %i.ci, %i.cj
  %i.cl = load i32, ptr @buf, align 8, !tbaa !33
  %i.cm = add nsw i32 %i.cl, -1
  %i.cn = and i32 %i.cm, %i.ck
  %i.co = load ptr, ptr getelementptr inbounds nuw (i8, ptr @buf, i64 16), align 8, !tbaa !35
  %i.cp = sext i32 %i.cn to i64
  %i.cq = getelementptr inbounds i8, ptr %i.co, i64 %i.cp
  %i.cr = load i8, ptr %i.cq, align 1, !tbaa !22
  %i.cs = zext i8 %i.cr to i32
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h, %bb.g, %bb.e, %bb.d, %bb.c
  %.0 = phi i32 [ %i.w, %bb.c ], [ %i.ap, %bb.d ], [ %i.bk, %bb.e ], [ %i.bx, %bb.g ], [ %i.ch, %bb.h ], [ %i.cs, %bb.i ]
  ret i32 %.0
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fmuladd.f64(double, double, double) #21

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare double @sqrt(double noundef) local_unnamed_addr #22

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.floor.f64(double) #21

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define dso_local noundef i32 @_Z6execxtii(i32 noundef %0, i32 noundef %1) local_unnamed_addr #23 {
bb.a:
  %i.a = load i32, ptr @pos, align 4, !tbaa !18   ; 2 uses
  %reass.sub = sub i32 %i.a, %0                   ; 3 uses
  %i.b = add i32 %reass.sub, -2
  %i.c = load i32, ptr @buf, align 8, !tbaa !33
  %i.d = add nsw i32 %i.c, -1                     ; 4 uses
  %i.e = and i32 %i.d, %i.b
  %i.f = load ptr, ptr getelementptr inbounds nuw (i8, ptr @buf, i64 16), align 8, !tbaa !35 ; 4 uses
  %i.g = sext i32 %i.e to i64
  %i.h = getelementptr inbounds i8, ptr %i.f, i64 %i.g
  %i.i = load i8, ptr %i.h, align 1, !tbaa !22    ; 3 uses
  %i.j = add i32 %reass.sub, -3
  %i.k = and i32 %i.d, %i.j
  %i.l = sext i32 %i.k to i64
  %i.m = getelementptr inbounds i8, ptr %i.f, i64 %i.l
  %i.n = load i8, ptr %i.m, align 1, !tbaa !22    ; 3 uses
  %.neg = xor i32 %0, -1
  %i.o = add i32 %i.a, %.neg
  %i.p = and i32 %i.d, %i.o
  %i.q = sext i32 %i.p to i64
  %i.r = getelementptr inbounds i8, ptr %i.f, i64 %i.q
  %i.s = load i8, ptr %i.r, align 1, !tbaa !22
  %.not = icmp eq i32 %0, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.t = and i32 %i.d, %reass.sub
  %i.u = sext i32 %i.t to i64
  %i.v = getelementptr inbounds i8, ptr %i.f, i64 %i.u
  %i.w = load i8, ptr %i.v, align 1, !tbaa !22
  %i.x = zext i8 %i.w to i32
  %i.y = shl nuw nsw i32 %i.x, 12
  %i.z = and i32 %i.y, 815104
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %i.aa = phi i32 [ %i.z, %bb.b ], [ 0, %bb.a ]
  %i.ab = zext i8 %i.s to i32
  %i.ac = icmp eq i8 %i.i, 102
  %i.ad = select i1 %i.ac, i32 2, i32 0
  %i.ae = icmp eq i8 %i.i, 15
  %i.af = zext i1 %i.ae to i32
  %i.ag = or disjoint i32 %i.ad, %i.af
  %i.ah = icmp eq i8 %i.i, 103
  %i.ai = select i1 %i.ah, i32 3, i32 0
  %i.aj = add nuw nsw i32 %i.ag, %i.ai
  %i.ak = icmp eq i8 %i.n, 15
  %2 = select i1 %i.ak, i32 4, i32 0
  %3 = add nuw nsw i32 %i.aj, %2
  %i.al = icmp eq i8 %i.n, 102
  %i.am = select i1 %i.al, i32 8, i32 0
  %i.an = add nuw nsw i32 %3, %i.am
  %4 = icmp eq i8 %i.n, 103
  %i.ao = select i1 %4, i32 12, i32 0
  %i.ap = add nuw nsw i32 %i.an, %i.ao
  %i.aq = shl nuw nsw i32 %i.ab, 4
  %5 = shl i32 %1, 20
  %6 = or disjoint i32 %i.aq, %5
  %i.ar = or i32 %6, %i.ap
  %i.as = or i32 %i.ar, %i.aa
  ret i32 %i.as
}

; Function Attrs: mustprogress uwtable
define dso_local void @_Z8exeModelR5Mixer(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(136) %0) local_unnamed_addr #6 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load atomic i8, ptr @_ZGVZ8exeModelR5MixerE2cm acquire, align 8
  %i.b = icmp eq i8 %i.a, 0
  br i1 %i.b, label %bb.b, label %bb.e, !prof !94

bb.b:                                             ; preds = %bb.a
  %i.c = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZ8exeModelR5MixerE2cm) #38
  %.not = icmp eq i32 %i.c, 0
  br i1 %.not, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = load i32, ptr @level, align 4, !tbaa !18
  %i.e = shl i32 65536, %i.d
  invoke void @_ZN10ContextMapC2Eii(ptr noundef nonnull align 8 dereferenceable(140) @_ZZ8exeModelR5MixerE2cm, i32 noundef %i.e, i32 noundef 12)
          to label %bb.d unwind label %bb.f

bb.d:                                             ; preds = %bb.c
  %i.f = tail call i32 @__cxa_atexit(ptr nonnull @_ZN10ContextMapD2Ev, ptr nonnull @_ZZ8exeModelR5MixerE2cm, ptr nonnull @__dso_handle) #38 ; 0 uses
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZ8exeModelR5MixerE2cm) #38
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.b, %bb.a
  %i.g = load i32, ptr @bpos, align 4, !tbaa !18  ; 2 uses
  %.not6 = icmp eq i32 %i.g, 0
  %.pre9 = load ptr, ptr getelementptr inbounds nuw (i8, ptr @buf, i64 16), align 8, !tbaa !35 ; 9 uses
  br i1 %.not6, label %.peel.next, label %.loopexit

.peel.next:                                       ; preds = %bb.e
  %i.h = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZZ8exeModelR5MixerE2cm, i64 96), align 8, !tbaa !75 ; 2 uses
  %i.i = load i32, ptr @buf, align 8, !tbaa !33
  %i.j = add nsw i32 %i.i, -1                     ; 3 uses
  %i.k = load i32, ptr @pos, align 4, !tbaa !18   ; 3 uses
  %i.l = add i32 %i.k, -3
  %i.m = and i32 %i.j, %i.l
  %i.n = sext i32 %i.m to i64
  %i.o = getelementptr inbounds i8, ptr %.pre9, i64 %i.n
  %i.p = load i8, ptr %i.o, align 1, !tbaa !22    ; 3 uses
  %i.q = add i32 %i.k, -2
  %i.r = and i32 %i.j, %i.q
  %i.s = sext i32 %i.r to i64
  %i.t = getelementptr inbounds i8, ptr %.pre9, i64 %i.s
  %i.u = load i8, ptr %i.t, align 1, !tbaa !22    ; 3 uses
  %i.v = add i32 %i.k, -1
  %i.w = and i32 %i.j, %i.v
  %i.x = sext i32 %i.w to i64
  %i.y = getelementptr inbounds i8, ptr %.pre9, i64 %i.x
  %i.z = load i8, ptr %i.y, align 1, !tbaa !22
  %i.aa = zext i8 %i.z to i32
  %i.ab = icmp eq i8 %i.u, 102
  %i.ac = select i1 %i.ab, i32 2, i32 0
  %i.ad = icmp eq i8 %i.u, 15
  %i.ae = zext i1 %i.ad to i32
  %i.af = or disjoint i32 %i.ac, %i.ae
  %i.ag = icmp eq i8 %i.u, 103
  %i.ah = select i1 %i.ag, i32 3, i32 0
  %i.ai = add nuw nsw i32 %i.af, %i.ah
  %i.aj = icmp eq i8 %i.p, 15
  %1 = select i1 %i.aj, i32 4, i32 0
  %2 = add nuw nsw i32 %i.ai, %1
  %i.ak = icmp eq i8 %i.p, 102
  %i.al = select i1 %i.ak, i32 8, i32 0
  %i.am = add nuw nsw i32 %2, %i.al
  %3 = icmp eq i8 %i.p, 103
  %i.an = select i1 %3, i32 12, i32 0
  %i.ao = add nuw nsw i32 %i.am, %i.an
  %i.ap = shl nuw nsw i32 %i.aa, 4
  %i.aq = or i32 %i.ao, %i.ap
  %i.ar = load i32, ptr getelementptr inbounds nuw (i8, ptr @_ZZ8exeModelR5MixerE2cm, i64 136), align 8, !tbaa !90 ; 4 uses
  %i.as = add nsw i32 %i.ar, 1
  store i32 %i.as, ptr getelementptr inbounds nuw (i8, ptr @_ZZ8exeModelR5MixerE2cm, i64 136), align 8, !tbaa !90
  %i.at = mul i32 %i.aq, 987654323
  %i.au = add i32 %i.at, %i.ar                    ; 2 uses
  %i.av = tail call i32 @llvm.fshl.i32(i32 %i.au, i32 %i.au, i32 16)
  %i.aw = mul i32 %i.av, 123456791
  %i.ax = add i32 %i.aw, %i.ar
  %i.ay = sext i32 %i.ar to i64
  %i.az = getelementptr inbounds [4 x i8], ptr %i.h, i64 %i.ay
  store i32 %i.ax, ptr %i.az, align 4, !tbaa !18
  br label %_Z6execxtii.exit

bb.f:                                             ; preds = %bb.c
  %i.ba = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_guard_abort(ptr nonnull @_ZGVZ8exeModelR5MixerE2cm) #38
  resume { ptr, i32 } %i.ba

_Z6execxtii.exit:                                 ; preds = %.peel.next, %_Z6execxtii.exit
  %.07 = phi i32 [ 1, %.peel.next ], [ %i.di, %_Z6execxtii.exit ] ; 4 uses
  %i.bb = load i32, ptr @pos, align 4, !tbaa !18  ; 3 uses
  %i.bc = add nsw i32 %i.bb, -1
  %i.bd = load i32, ptr @buf, align 8, !tbaa !33
  %i.be = add nsw i32 %i.bd, -1                   ; 5 uses
  %i.bf = and i32 %i.be, %i.bc
  %i.bg = sext i32 %i.bf to i64
  %i.bh = getelementptr inbounds i8, ptr %.pre9, i64 %i.bg
  %i.bi = load i8, ptr %i.bh, align 1, !tbaa !22
  %i.bj = zext i8 %i.bi to i32
  %i.bk = icmp samesign ugt i32 %.07, 4
  %reass.sub.i = sub i32 %i.bb, %.07              ; 3 uses
  %i.bl = add i32 %reass.sub.i, -2
  %i.bm = and i32 %i.be, %i.bl
  %i.bn = sext i32 %i.bm to i64
  %i.bo = getelementptr inbounds i8, ptr %.pre9, i64 %i.bn
  %i.bp = load i8, ptr %i.bo, align 1, !tbaa !22  ; 3 uses
  %i.bq = add i32 %reass.sub.i, -3
  %i.br = and i32 %i.be, %i.bq
  %i.bs = sext i32 %i.br to i64
  %i.bt = getelementptr inbounds i8, ptr %.pre9, i64 %i.bs
  %i.bu = load i8, ptr %i.bt, align 1, !tbaa !22  ; 3 uses
  %.neg.i = xor i32 %.07, -1
  %i.bv = add i32 %i.bb, %.neg.i
  %i.bw = and i32 %i.be, %i.bv
  %i.bx = sext i32 %i.bw to i64
  %i.by = getelementptr inbounds i8, ptr %.pre9, i64 %i.bx
  %i.bz = load i8, ptr %i.by, align 1, !tbaa !22
  %i.ca = and i32 %i.be, %reass.sub.i
  %i.cb = sext i32 %i.ca to i64
  %i.cc = getelementptr inbounds i8, ptr %.pre9, i64 %i.cb
  %i.cd = load i8, ptr %i.cc, align 1, !tbaa !22
  %i.ce = zext i8 %i.cd to i32
  %i.cf = shl nuw nsw i32 %i.ce, 12
  %i.cg = and i32 %i.cf, 815104
  %i.ch = zext i8 %i.bz to i32
  %i.ci = icmp eq i8 %i.bp, 102
  %i.cj = select i1 %i.ci, i32 2, i32 0
  %i.ck = icmp eq i8 %i.bp, 15
  %i.cl = zext i1 %i.ck to i32
  %i.cm = or disjoint i32 %i.cj, %i.cl
  %i.cn = icmp eq i8 %i.bp, 103
  %i.co = select i1 %i.cn, i32 3, i32 0
  %i.cp = add nuw nsw i32 %i.cm, %i.co
  %i.cq = icmp eq i8 %i.bu, 15
  %4 = select i1 %i.cq, i32 4, i32 0
  %5 = add nuw nsw i32 %i.cp, %4
  %i.cr = icmp eq i8 %i.bu, 102
  %i.cs = select i1 %i.cr, i32 8, i32 0
  %i.ct = add nuw nsw i32 %5, %i.cs
  %6 = icmp eq i8 %i.bu, 103
  %i.cu = select i1 %6, i32 12, i32 0
  %i.cv = add nuw nsw i32 %i.ct, %i.cu
  %i.cw = shl nuw nsw i32 %i.ch, 4
  %7 = shl nuw nsw i32 %i.bj, 20
  %8 = select i1 %i.bk, i32 %7, i32 0
  %9 = or disjoint i32 %i.cw, %8
  %i.cx = or i32 %i.cv, %9
  %i.cy = or i32 %i.cx, %i.cg
  %i.cz = load i32, ptr getelementptr inbounds nuw (i8, ptr @_ZZ8exeModelR5MixerE2cm, i64 136), align 8, !tbaa !90 ; 4 uses
  %i.da = add nsw i32 %i.cz, 1
  store i32 %i.da, ptr getelementptr inbounds nuw (i8, ptr @_ZZ8exeModelR5MixerE2cm, i64 136), align 8, !tbaa !90
  %i.db = mul i32 %i.cy, 987654323
  %i.dc = add i32 %i.db, %i.cz                    ; 2 uses
  %i.dd = tail call i32 @llvm.fshl.i32(i32 %i.dc, i32 %i.dc, i32 16)
  %i.de = mul i32 %i.dd, 123456791
  %i.df = add i32 %i.de, %i.cz
  %i.dg = sext i32 %i.cz to i64
  %i.dh = getelementptr inbounds [4 x i8], ptr %i.h, i64 %i.dg
  store i32 %i.df, ptr %i.dh, align 4, !tbaa !18
  %i.di = add nuw nsw i32 %.07, 1                 ; 2 uses
  %exitcond.not = icmp eq i32 %i.di, 12
  br i1 %exitcond.not, label %.loopexit.loopexit, label %_Z6execxtii.exit, !llvm.loop !259

.loopexit.loopexit:                               ; preds = %_Z6execxtii.exit
  %.pre = load i32, ptr @bpos, align 4, !tbaa !18
  br label %.loopexit

.loopexit:                                        ; preds = %.loopexit.loopexit, %bb.e
  %i.dj = phi i32 [ %.pre, %.loopexit.loopexit ], [ %i.g, %bb.e ]
  %i.dk = load i32, ptr @c0, align 4, !tbaa !18
  %i.dl = load i32, ptr @pos, align 4, !tbaa !18
  %i.dm = add nsw i32 %i.dl, -1
  %i.dn = load i32, ptr @buf, align 8, !tbaa !33
  %i.do = add nsw i32 %i.dn, -1
  %i.dp = and i32 %i.do, %i.dm
  %i.dq = sext i32 %i.dp to i64
  %i.dr = getelementptr inbounds i8, ptr %.pre9, i64 %i.dq
  %i.ds = load i8, ptr %i.dr, align 1, !tbaa !22
  %i.dt = zext i8 %i.ds to i32
  %i.du = load i32, ptr @y, align 4, !tbaa !18
  %i.dv = tail call noundef i32 @_ZN10ContextMap4mix1ER5Mixeriiii(ptr noundef nonnull align 8 dereferenceable(140) @_ZZ8exeModelR5MixerE2cm, ptr noundef nonnull align 8 dereferenceable(136) %0, i32 noundef %i.dk, i32 noundef %i.dj, i32 noundef %i.dt, i32 noundef %i.du) ; 0 uses
  ret void
}

; Function Attrs: mustprogress uwtable
define dso_local void @_Z13indirectModelR5Mixer(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(136) %0) local_unnamed_addr #6 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load atomic i8, ptr @_ZGVZ13indirectModelR5MixerE2cm acquire, align 8
  %i.b = icmp eq i8 %i.a, 0
  br i1 %i.b, label %bb.b, label %bb.e, !prof !94

bb.b:                                             ; preds = %bb.a
  %i.c = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZ13indirectModelR5MixerE2cm) #38
  %.not = icmp eq i32 %i.c, 0
  br i1 %.not, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = load i32, ptr @level, align 4, !tbaa !18
  %i.e = shl i32 65536, %i.d
  invoke void @_ZN10ContextMapC2Eii(ptr noundef nonnull align 8 dereferenceable(140) @_ZZ13indirectModelR5MixerE2cm, i32 noundef %i.e, i32 noundef 6)
          to label %bb.d unwind label %bb.g

bb.d:                                             ; preds = %bb.c
  %i.f = tail call i32 @__cxa_atexit(ptr nonnull @_ZN10ContextMapD2Ev, ptr nonnull @_ZZ13indirectModelR5MixerE2cm, ptr nonnull @__dso_handle) #38 ; 0 uses
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZ13indirectModelR5MixerE2cm) #38
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.b, %bb.a
  %i.g = load i32, ptr @bpos, align 4, !tbaa !18  ; 2 uses
  %.not20 = icmp eq i32 %i.g, 0
  br i1 %.not20, label %bb.f, label %bb.h

bb.f:                                             ; preds = %bb.e
  %i.h = load i32, ptr @c4, align 4, !tbaa !18    ; 3 uses
  %i.i = and i32 %i.h, 65535                      ; 3 uses
  %i.j = and i32 %i.h, 255                        ; 4 uses
  %i.k = lshr i32 %i.i, 8
  %i.l = zext nneg i32 %i.k to i64
  %i.m = getelementptr inbounds nuw [4 x i8], ptr @_ZZ13indirectModelR5MixerE2t1, i64 %i.l ; 2 uses
  %i.n = load i32, ptr %i.m, align 4, !tbaa !18
  %i.o = shl i32 %i.n, 8
  %i.p = or disjoint i32 %i.o, %i.j
  store i32 %i.p, ptr %i.m, align 4, !tbaa !18
  %i.q = lshr i32 %i.h, 8
  %i.r = and i32 %i.q, 65535
  %i.s = zext nneg i32 %i.r to i64
  %i.t = getelementptr inbounds nuw [2 x i8], ptr @_ZZ13indirectModelR5MixerE2t2, i64 %i.s ; 2 uses
  %i.u = load i16, ptr %i.t, align 2, !tbaa !44
  %i.v = zext i16 %i.u to i32
  %i.w = shl nuw nsw i32 %i.v, 8
  %i.x = or disjoint i32 %i.w, %i.j
  %i.y = trunc i32 %i.x to i16
  store i16 %i.y, ptr %i.t, align 2, !tbaa !44
  %i.z = zext nneg i32 %i.j to i64
  %i.aa = getelementptr inbounds nuw [4 x i8], ptr @_ZZ13indirectModelR5MixerE2t1, i64 %i.z
  %i.ab = load i32, ptr %i.aa, align 4, !tbaa !18
  %i.ac = shl i32 %i.ab, 8                        ; 2 uses
  %i.ad = or disjoint i32 %i.ac, %i.j             ; 3 uses
  %i.ae = and i32 %i.ad, 65535
  %i.af = load i32, ptr getelementptr inbounds nuw (i8, ptr @_ZZ13indirectModelR5MixerE2cm, i64 136), align 8, !tbaa !90 ; 4 uses
  %i.ag = add nsw i32 %i.af, 1
  store i32 %i.ag, ptr getelementptr inbounds nuw (i8, ptr @_ZZ13indirectModelR5MixerE2cm, i64 136), align 8, !tbaa !90
  %i.ah = mul i32 %i.ae, 987654323
  %i.ai = add i32 %i.ah, %i.af                    ; 2 uses
  %i.aj = tail call i32 @llvm.fshl.i32(i32 %i.ai, i32 %i.ai, i32 16)
  %i.ak = mul i32 %i.aj, 123456791
  %i.al = add i32 %i.ak, %i.af
  %i.am = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZZ13indirectModelR5MixerE2cm, i64 96), align 8, !tbaa !75 ; 6 uses
  %i.an = sext i32 %i.af to i64
  %i.ao = getelementptr inbounds [4 x i8], ptr %i.am, i64 %i.an
  store i32 %i.al, ptr %i.ao, align 4, !tbaa !18
  %i.ap = and i32 %i.ad, 16777215
  %i.aq = load i32, ptr getelementptr inbounds nuw (i8, ptr @_ZZ13indirectModelR5MixerE2cm, i64 136), align 8, !tbaa !90 ; 4 uses
  %i.ar = add nsw i32 %i.aq, 1
  store i32 %i.ar, ptr getelementptr inbounds nuw (i8, ptr @_ZZ13indirectModelR5MixerE2cm, i64 136), align 8, !tbaa !90
  %i.as = mul i32 %i.ap, 987654323
  %i.at = add i32 %i.aq, %i.as                    ; 2 uses
  %i.au = tail call i32 @llvm.fshl.i32(i32 %i.at, i32 %i.at, i32 16)
  %i.av = mul i32 %i.au, 123456791
  %i.aw = add i32 %i.av, %i.aq
  %i.ax = sext i32 %i.aq to i64
  %i.ay = getelementptr inbounds [4 x i8], ptr %i.am, i64 %i.ax
  store i32 %i.aw, ptr %i.ay, align 4, !tbaa !18
  %i.az = load i32, ptr getelementptr inbounds nuw (i8, ptr @_ZZ13indirectModelR5MixerE2cm, i64 136), align 8, !tbaa !90 ; 4 uses
  %i.ba = add nsw i32 %i.az, 1
  store i32 %i.ba, ptr getelementptr inbounds nuw (i8, ptr @_ZZ13indirectModelR5MixerE2cm, i64 136), align 8, !tbaa !90
  %i.bb = mul i32 %i.ad, 987654323
  %i.bc = add i32 %i.az, %i.bb                    ; 2 uses
  %i.bd = tail call i32 @llvm.fshl.i32(i32 %i.bc, i32 %i.bc, i32 16)
  %i.be = mul i32 %i.bd, 123456791
  %i.bf = add i32 %i.be, %i.az
  %i.bg = sext i32 %i.az to i64
  %i.bh = getelementptr inbounds [4 x i8], ptr %i.am, i64 %i.bg
  store i32 %i.bf, ptr %i.bh, align 4, !tbaa !18
  %i.bi = and i32 %i.ac, 65280
  %i.bj = load i32, ptr getelementptr inbounds nuw (i8, ptr @_ZZ13indirectModelR5MixerE2cm, i64 136), align 8, !tbaa !90 ; 4 uses
  %i.bk = add nsw i32 %i.bj, 1
  store i32 %i.bk, ptr getelementptr inbounds nuw (i8, ptr @_ZZ13indirectModelR5MixerE2cm, i64 136), align 8, !tbaa !90
  %i.bl = mul i32 %i.bi, 987654323
  %i.bm = add i32 %i.bj, %i.bl                    ; 2 uses
  %i.bn = tail call i32 @llvm.fshl.i32(i32 %i.bm, i32 %i.bm, i32 16)
  %i.bo = mul i32 %i.bn, 123456791
  %i.bp = add i32 %i.bo, %i.bj
  %i.bq = sext i32 %i.bj to i64
  %i.br = getelementptr inbounds [4 x i8], ptr %i.am, i64 %i.bq
  store i32 %i.bp, ptr %i.br, align 4, !tbaa !18
  %i.bs = zext nneg i32 %i.i to i64
  %i.bt = getelementptr inbounds nuw [2 x i8], ptr @_ZZ13indirectModelR5MixerE2t2, i64 %i.bs
  %i.bu = load i16, ptr %i.bt, align 2, !tbaa !44
  %i.bv = zext i16 %i.bu to i32
  %i.bw = shl nuw i32 %i.bv, 16
  %i.bx = or disjoint i32 %i.bw, %i.i             ; 2 uses
  %i.by = and i32 %i.bx, 16777215
  %i.bz = load i32, ptr getelementptr inbounds nuw (i8, ptr @_ZZ13indirectModelR5MixerE2cm, i64 136), align 8, !tbaa !90 ; 4 uses
  %i.ca = add nsw i32 %i.bz, 1
  store i32 %i.ca, ptr getelementptr inbounds nuw (i8, ptr @_ZZ13indirectModelR5MixerE2cm, i64 136), align 8, !tbaa !90
  %i.cb = mul i32 %i.by, 987654323
  %i.cc = add i32 %i.cb, %i.bz                    ; 2 uses
  %i.cd = tail call i32 @llvm.fshl.i32(i32 %i.cc, i32 %i.cc, i32 16)
  %i.ce = mul i32 %i.cd, 123456791
  %i.cf = add i32 %i.ce, %i.bz
  %i.cg = sext i32 %i.bz to i64
  %i.ch = getelementptr inbounds [4 x i8], ptr %i.am, i64 %i.cg
  store i32 %i.cf, ptr %i.ch, align 4, !tbaa !18
  %i.ci = load i32, ptr getelementptr inbounds nuw (i8, ptr @_ZZ13indirectModelR5MixerE2cm, i64 136), align 8, !tbaa !90 ; 4 uses
  %i.cj = add nsw i32 %i.ci, 1
  store i32 %i.cj, ptr getelementptr inbounds nuw (i8, ptr @_ZZ13indirectModelR5MixerE2cm, i64 136), align 8, !tbaa !90
  %i.ck = mul i32 %i.bx, 987654323
  %i.cl = add i32 %i.ci, %i.ck                    ; 2 uses
  %i.cm = tail call i32 @llvm.fshl.i32(i32 %i.cl, i32 %i.cl, i32 16)
  %i.cn = mul i32 %i.cm, 123456791
  %i.co = add i32 %i.cn, %i.ci
  %i.cp = sext i32 %i.ci to i64
  %i.cq = getelementptr inbounds [4 x i8], ptr %i.am, i64 %i.cp
  store i32 %i.co, ptr %i.cq, align 4, !tbaa !18
  %.pre = load i32, ptr @bpos, align 4, !tbaa !18
  br label %bb.h

bb.g:                                             ; preds = %bb.c
  %i.cr = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_guard_abort(ptr nonnull @_ZGVZ13indirectModelR5MixerE2cm) #38
  resume { ptr, i32 } %i.cr

bb.h:                                             ; preds = %bb.f, %bb.e
  %i.cs = phi i32 [ %.pre, %bb.f ], [ %i.g, %bb.e ]
  %i.ct = load i32, ptr @c0, align 4, !tbaa !18
  %i.cu = load i32, ptr @pos, align 4, !tbaa !18
  %i.cv = add nsw i32 %i.cu, -1
  %i.cw = load i32, ptr @buf, align 8, !tbaa !33
  %i.cx = add nsw i32 %i.cw, -1
  %i.cy = and i32 %i.cx, %i.cv
  %i.cz = load ptr, ptr getelementptr inbounds nuw (i8, ptr @buf, i64 16), align 8, !tbaa !35
  %i.da = sext i32 %i.cy to i64
  %i.db = getelementptr inbounds i8, ptr %i.cz, i64 %i.da
  %i.dc = load i8, ptr %i.db, align 1, !tbaa !22
  %i.dd = zext i8 %i.dc to i32
  %i.de = load i32, ptr @y, align 4, !tbaa !18
  %i.df = tail call noundef i32 @_ZN10ContextMap4mix1ER5Mixeriiii(ptr noundef nonnull align 8 dereferenceable(140) @_ZZ13indirectModelR5MixerE2cm, ptr noundef nonnull align 8 dereferenceable(136) %0, i32 noundef %i.ct, i32 noundef %i.cs, i32 noundef %i.dd, i32 noundef %i.de) ; 0 uses
  ret void
}

; Function Attrs: mustprogress uwtable
define dso_local void @_Z8dmcModelR5Mixer(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(136) %0) local_unnamed_addr #6 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load atomic i8, ptr @_ZGVZ8dmcModelR5MixerE1t acquire, align 8
  %i.b = icmp eq i8 %i.a, 0
  br i1 %i.b, label %bb.b, label %bb.e, !prof !94
end_hunk_0
