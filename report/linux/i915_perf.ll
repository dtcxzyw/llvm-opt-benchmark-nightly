inline.NumInlined: 568
inline.NumDeleted: 169
loop-unroll.NumCompletelyUnrolled: 13
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 15
begin_hunk_0_@i915_oa_init_reg_state:bb.a

.lr.ph.i.2.i:                                     ; preds = %.preheader.i.2.i
  %i.bl = getelementptr i8, ptr %i.bi, i64 88
  %i.bm = load ptr, ptr %i.bl, align 8            ; 2 uses
  br label %bb.k

bb.k:                                             ; preds = %bb.l, %.lr.ph.i.2.i
  %.013.i.2.i = phi i32 [ 0, %.lr.ph.i.2.i ], [ %i.br, %bb.l ] ; 2 uses
  %i.bn = sext i32 %.013.i.2.i to i64             ; 2 uses
  %i.bo = getelementptr [8 x i8], ptr %i.bm, i64 %i.bn
  %i.bp = load i32, ptr %i.bo, align 4
  %i.bq = icmp eq i32 %i.bp, 58968
  br i1 %i.bq, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.br = add nuw i32 %.013.i.2.i, 1              ; 2 uses
  %exitcond.not.i.2.i = icmp eq i32 %i.br, %i.bk
  br i1 %exitcond.not.i.2.i, label %oa_config_flex_reg.exit.2.i, label %bb.k, !llvm.loop !18

bb.m:                                             ; preds = %bb.k
  %i.bs = getelementptr [8 x i8], ptr %i.bm, i64 %i.bn
  %i.bt = getelementptr i8, ptr %i.bs, i64 4
  %i.bu = load i32, ptr %i.bt, align 4
  br label %oa_config_flex_reg.exit.2.i

oa_config_flex_reg.exit.2.i:                      ; preds = %bb.l, %bb.m, %.preheader.i.2.i, %oa_config_flex_reg.exit.1.i
  %.09.i.2.i = phi i32 [ %i.bu, %bb.m ], [ 0, %oa_config_flex_reg.exit.1.i ], [ 0, %.preheader.i.2.i ], [ 0, %bb.l ]
  %i.bv = add i32 %i.o, 5
  %i.bw = zext i32 %i.bv to i64
  %i.bx = getelementptr [4 x i8], ptr %.val, i64 %i.bw
  store i32 %.09.i.2.i, ptr %i.bx, align 4
  %i.by = load ptr, ptr %i.ab, align 8            ; 3 uses
  %.not.i.3.i = icmp eq ptr %i.by, null
  br i1 %.not.i.3.i, label %oa_config_flex_reg.exit.3.i, label %.preheader.i.3.i

.preheader.i.3.i:                                 ; preds = %oa_config_flex_reg.exit.2.i
  %i.bz = getelementptr i8, ptr %i.by, i64 96
  %i.ca = load i32, ptr %i.bz, align 8            ; 2 uses
  %.not14.i.3.i = icmp eq i32 %i.ca, 0
  br i1 %.not14.i.3.i, label %oa_config_flex_reg.exit.3.i, label %.lr.ph.i.3.i

.lr.ph.i.3.i:                                     ; preds = %.preheader.i.3.i
  %i.cb = getelementptr i8, ptr %i.by, i64 88
  %i.cc = load ptr, ptr %i.cb, align 8            ; 2 uses
  br label %bb.n

bb.n:                                             ; preds = %bb.o, %.lr.ph.i.3.i
  %.013.i.3.i = phi i32 [ 0, %.lr.ph.i.3.i ], [ %i.ch, %bb.o ] ; 2 uses
  %i.cd = sext i32 %.013.i.3.i to i64             ; 2 uses
  %i.ce = getelementptr [8 x i8], ptr %i.cc, i64 %i.cd
  %i.cf = load i32, ptr %i.ce, align 4
  %i.cg = icmp eq i32 %i.cf, 59224
  br i1 %i.cg, label %bb.p, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.ch = add nuw i32 %.013.i.3.i, 1              ; 2 uses
  %exitcond.not.i.3.i = icmp eq i32 %i.ch, %i.ca
  br i1 %exitcond.not.i.3.i, label %oa_config_flex_reg.exit.3.i, label %bb.n, !llvm.loop !18

bb.p:                                             ; preds = %bb.n
  %i.ci = getelementptr [8 x i8], ptr %i.cc, i64 %i.cd
  %i.cj = getelementptr i8, ptr %i.ci, i64 4
  %i.ck = load i32, ptr %i.cj, align 4
  br label %oa_config_flex_reg.exit.3.i

oa_config_flex_reg.exit.3.i:                      ; preds = %bb.o, %bb.p, %.preheader.i.3.i, %oa_config_flex_reg.exit.2.i
  %.09.i.3.i = phi i32 [ %i.ck, %bb.p ], [ 0, %oa_config_flex_reg.exit.2.i ], [ 0, %.preheader.i.3.i ], [ 0, %bb.o ]
  %i.cl = add i32 %i.o, 7
  %i.cm = zext i32 %i.cl to i64
  %i.cn = getelementptr [4 x i8], ptr %.val, i64 %i.cm
  store i32 %.09.i.3.i, ptr %i.cn, align 4
  %i.co = load ptr, ptr %i.ab, align 8            ; 3 uses
  %.not.i.4.i = icmp eq ptr %i.co, null
  br i1 %.not.i.4.i, label %oa_config_flex_reg.exit.4.i, label %.preheader.i.4.i

.preheader.i.4.i:                                 ; preds = %oa_config_flex_reg.exit.3.i
  %i.cp = getelementptr i8, ptr %i.co, i64 96
  %i.cq = load i32, ptr %i.cp, align 8            ; 2 uses
  %.not14.i.4.i = icmp eq i32 %i.cq, 0
  br i1 %.not14.i.4.i, label %oa_config_flex_reg.exit.4.i, label %.lr.ph.i.4.i

.lr.ph.i.4.i:                                     ; preds = %.preheader.i.4.i
  %i.cr = getelementptr i8, ptr %i.co, i64 88
  %i.cs = load ptr, ptr %i.cr, align 8            ; 2 uses
  br label %bb.q

bb.q:                                             ; preds = %bb.r, %.lr.ph.i.4.i
  %.013.i.4.i = phi i32 [ 0, %.lr.ph.i.4.i ], [ %i.cx, %bb.r ] ; 2 uses
  %i.ct = sext i32 %.013.i.4.i to i64             ; 2 uses
  %i.cu = getelementptr [8 x i8], ptr %i.cs, i64 %i.ct
  %i.cv = load i32, ptr %i.cu, align 4
  %i.cw = icmp eq i32 %i.cv, 58460
  br i1 %i.cw, label %bb.s, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.cx = add nuw i32 %.013.i.4.i, 1              ; 2 uses
  %exitcond.not.i.4.i = icmp eq i32 %i.cx, %i.cq
  br i1 %exitcond.not.i.4.i, label %oa_config_flex_reg.exit.4.i, label %bb.q, !llvm.loop !18

bb.s:                                             ; preds = %bb.q
  %i.cy = getelementptr [8 x i8], ptr %i.cs, i64 %i.ct
  %i.cz = getelementptr i8, ptr %i.cy, i64 4
  %i.da = load i32, ptr %i.cz, align 4
  br label %oa_config_flex_reg.exit.4.i

oa_config_flex_reg.exit.4.i:                      ; preds = %bb.r, %bb.s, %.preheader.i.4.i, %oa_config_flex_reg.exit.3.i
  %.09.i.4.i = phi i32 [ %i.da, %bb.s ], [ 0, %oa_config_flex_reg.exit.3.i ], [ 0, %.preheader.i.4.i ], [ 0, %bb.r ]
  %i.db = add i32 %i.o, 9
  %i.dc = zext i32 %i.db to i64
  %i.dd = getelementptr [4 x i8], ptr %.val, i64 %i.dc
  store i32 %.09.i.4.i, ptr %i.dd, align 4
  %i.de = load ptr, ptr %i.ab, align 8            ; 3 uses
  %.not.i.5.i = icmp eq ptr %i.de, null
  br i1 %.not.i.5.i, label %oa_config_flex_reg.exit.5.i, label %.preheader.i.5.i

.preheader.i.5.i:                                 ; preds = %oa_config_flex_reg.exit.4.i
  %i.df = getelementptr i8, ptr %i.de, i64 96
  %i.dg = load i32, ptr %i.df, align 8            ; 2 uses
  %.not14.i.5.i = icmp eq i32 %i.dg, 0
  br i1 %.not14.i.5.i, label %oa_config_flex_reg.exit.5.i, label %.lr.ph.i.5.i

.lr.ph.i.5.i:                                     ; preds = %.preheader.i.5.i
  %i.dh = getelementptr i8, ptr %i.de, i64 88
  %i.di = load ptr, ptr %i.dh, align 8            ; 2 uses
  br label %bb.t

bb.t:                                             ; preds = %bb.u, %.lr.ph.i.5.i
  %.013.i.5.i = phi i32 [ 0, %.lr.ph.i.5.i ], [ %i.dn, %bb.u ] ; 2 uses
  %i.dj = sext i32 %.013.i.5.i to i64             ; 2 uses
  %i.dk = getelementptr [8 x i8], ptr %i.di, i64 %i.dj
  %i.dl = load i32, ptr %i.dk, align 4
  %i.dm = icmp eq i32 %i.dl, 58716
  br i1 %i.dm, label %bb.v, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.dn = add nuw i32 %.013.i.5.i, 1              ; 2 uses
  %exitcond.not.i.5.i = icmp eq i32 %i.dn, %i.dg
  br i1 %exitcond.not.i.5.i, label %oa_config_flex_reg.exit.5.i, label %bb.t, !llvm.loop !18

bb.v:                                             ; preds = %bb.t
  %i.do = getelementptr [8 x i8], ptr %i.di, i64 %i.dj
  %i.dp = getelementptr i8, ptr %i.do, i64 4
  %i.dq = load i32, ptr %i.dp, align 4
  br label %oa_config_flex_reg.exit.5.i

oa_config_flex_reg.exit.5.i:                      ; preds = %bb.u, %bb.v, %.preheader.i.5.i, %oa_config_flex_reg.exit.4.i
  %.09.i.5.i = phi i32 [ %i.dq, %bb.v ], [ 0, %oa_config_flex_reg.exit.4.i ], [ 0, %.preheader.i.5.i ], [ 0, %bb.u ]
  %i.dr = add i32 %i.o, 11
  %i.ds = zext i32 %i.dr to i64
  %i.dt = getelementptr [4 x i8], ptr %.val, i64 %i.ds
  store i32 %.09.i.5.i, ptr %i.dt, align 4
  %i.du = load ptr, ptr %i.ab, align 8            ; 3 uses
  %.not.i.6.i = icmp eq ptr %i.du, null
  br i1 %.not.i.6.i, label %gen8_update_reg_state_unlocked.exit, label %.preheader.i.6.i

.preheader.i.6.i:                                 ; preds = %oa_config_flex_reg.exit.5.i
  %i.dv = getelementptr i8, ptr %i.du, i64 96
  %i.dw = load i32, ptr %i.dv, align 8            ; 2 uses
  %.not14.i.6.i = icmp eq i32 %i.dw, 0
  br i1 %.not14.i.6.i, label %gen8_update_reg_state_unlocked.exit, label %.lr.ph.i.6.i

.lr.ph.i.6.i:                                     ; preds = %.preheader.i.6.i
  %i.dx = getelementptr i8, ptr %i.du, i64 88
  %i.dy = load ptr, ptr %i.dx, align 8            ; 2 uses
  br label %bb.w

bb.w:                                             ; preds = %bb.x, %.lr.ph.i.6.i
  %.013.i.6.i = phi i32 [ 0, %.lr.ph.i.6.i ], [ %i.ed, %bb.x ] ; 2 uses
  %i.dz = sext i32 %.013.i.6.i to i64             ; 2 uses
  %i.ea = getelementptr [8 x i8], ptr %i.dy, i64 %i.dz
  %i.eb = load i32, ptr %i.ea, align 4
  %i.ec = icmp eq i32 %i.eb, 58972
  br i1 %i.ec, label %bb.y, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.ed = add nuw i32 %.013.i.6.i, 1              ; 2 uses
  %exitcond.not.i.6.i = icmp eq i32 %i.ed, %i.dw
  br i1 %exitcond.not.i.6.i, label %gen8_update_reg_state_unlocked.exit, label %bb.w, !llvm.loop !18

bb.y:                                             ; preds = %bb.w
  %i.ee = getelementptr [8 x i8], ptr %i.dy, i64 %i.dz
  %i.ef = getelementptr i8, ptr %i.ee, i64 4
  %i.eg = load i32, ptr %i.ef, align 4
  br label %gen8_update_reg_state_unlocked.exit

gen8_update_reg_state_unlocked.exit:              ; preds = %bb.x, %oa_config_flex_reg.exit.5.i, %.preheader.i.6.i, %bb.y
  %.09.i.6.i = phi i32 [ %i.eg, %bb.y ], [ 0, %oa_config_flex_reg.exit.5.i ], [ 0, %.preheader.i.6.i ], [ 0, %bb.x ]
  %i.eh = add i32 %i.o, 13
  %i.ei = zext i32 %i.eh to i64
  %i.ej = getelementptr [4 x i8], ptr %.val, i64 %i.ei
  store i32 %.09.i.6.i, ptr %i.ej, align 4
  br label %bb.z

bb.z:                                             ; preds = %bb.b, %bb.c, %gen8_update_reg_state_unlocked.exit, %bb.a
  ret void
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define dso_local i32 @i915_perf_open_ioctl(ptr noundef %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readonly captures(none) %2) local_unnamed_addr #0 align 16 prefalign(16) {
bb.a:
  %i.a = alloca ptr, align 8                      ; 9 uses
  %3 = alloca %struct.i915_gem_ww_ctx, align 8    ; 16 uses
  %i.b = alloca ptr, align 8                      ; 4 uses
  %4 = alloca %struct.i915_gem_engines_iter, align 8 ; 6 uses
  %5 = alloca %struct.i915_gem_ww_ctx, align 8    ; 10 uses
  %6 = alloca %struct.drm_i915_gem_context_param_sseu, align 8 ; 6 uses
  %7 = alloca %struct.perf_open_properties, align 8 ; 22 uses
  %i.c = getelementptr i8, ptr %0, i64 3280       ; 25 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #19
  %i.d = load ptr, ptr %i.c, align 8              ; 3 uses
  %.not = icmp eq ptr %i.d, null
  br i1 %.not, label %bb.if, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = load i32, ptr %1, align 8
  %.not20 = icmp ult i32 %i.e, 8
  br i1 %.not20, label %bb.c, label %__drm_to_dev.exit

__drm_to_dev.exit:                                ; preds = %bb.b
  %i.f = getelementptr i8, ptr %i.d, i64 8
  %i.g = load ptr, ptr %i.f, align 8
  tail call void (ptr, ptr, i32, ptr, ...) @__drm_dev_dbg(ptr noundef null, ptr noundef %i.g, i32 noundef 1, ptr noundef nonnull @.str) #18
  br label %bb.if

bb.c:                                             ; preds = %bb.b
  %i.h = getelementptr i8, ptr %1, i64 8
  %i.i = load i64, ptr %i.h, align 8
  %i.j = getelementptr i8, ptr %1, i64 4
  %i.k = load i32, ptr %i.j, align 4              ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #19
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %6, i8 0, i64 32, i1 false), !annotation !19
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %7, i8 0, i64 48, i1 false)
  %i.l = getelementptr inbounds nuw i8, ptr %7, i64 48 ; 3 uses
  store i64 5000000, ptr %i.l, align 8
  %i.m = add i32 %i.k, -11
  %or.cond.i = icmp ult i32 %i.m, -10
  br i1 %or.cond.i, label %__drm_to_dev.exit.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.c
  %i.n = inttoptr i64 %i.i to ptr
  %i.o = getelementptr inbounds nuw i8, ptr %7, i64 4 ; 7 uses
  %i.p = getelementptr inbounds nuw i8, ptr %7, i64 24 ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %7, i64 28 ; 2 uses
  %i.r = getelementptr i8, ptr %0, i64 3504
  %i.s = getelementptr inbounds nuw i8, ptr %7, i64 20 ; 3 uses
  %i.t = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 3 uses
  %i.u = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 2 uses
  br label %bb.d

__drm_to_dev.exit.i:                              ; preds = %bb.c
  %i.v = getelementptr i8, ptr %i.d, i64 8
  %i.w = load ptr, ptr %i.v, align 8
  tail call void (ptr, ptr, i32, ptr, ...) @__drm_dev_dbg(ptr noundef null, ptr noundef %i.w, i32 noundef 1, ptr noundef nonnull @.str.25) #18
  br label %read_properties_unlocked.exit.thread

bb.d:                                             ; preds = %bb.au, %.lr.ph.i
  %.0165349.i = phi ptr [ %i.n, %.lr.ph.i ], [ %i.fc, %bb.au ] ; 3 uses
  %.0167348.i = phi i1 [ false, %.lr.ph.i ], [ %.1168.i, %bb.au ] ; 10 uses
  %.0170347.i = phi i1 [ false, %.lr.ph.i ], [ %.1171.i, %bb.au ] ; 10 uses
  %.0173346.i = phi i1 [ false, %.lr.ph.i ], [ %.1174.i, %bb.au ] ; 10 uses
  %.0176345.i = phi i8 [ 0, %.lr.ph.i ], [ %.1177.i, %bb.au ] ; 10 uses
  %.0179344.i = phi i8 [ 0, %.lr.ph.i ], [ %.1180.i, %bb.au ] ; 10 uses
  %.0182343.i = phi i32 [ 0, %.lr.ph.i ], [ %i.fd, %bb.au ]
  %i.x = call i64 @llvm.read_register.i64(metadata !0)
  %i.y = call { ptr, i64, i64 } asm sideeffect "call __get_user_${4:c}", "={ax},={rdx},={rsp},0,i,{rsp},~{dirflag},~{fpsr},~{flags}"(ptr %.0165349.i, i64 8, i64 %i.x) #19, !srcloc !20 ; 3 uses
  %i.z = extractvalue { ptr, i64, i64 } %i.y, 0
  %i.aa = extractvalue { ptr, i64, i64 } %i.y, 1  ; 2 uses
  %i.ab = extractvalue { ptr, i64, i64 } %i.y, 2
  %i.ac = ptrtoint ptr %i.z to i64
  %i.ad = trunc i64 %i.ac to i32                  ; 2 uses
  call void @llvm.write_register.i64(metadata !0, i64 %i.ab)
  %.not201.i = icmp eq i32 %i.ad, 0
  br i1 %.not201.i, label %bb.e, label %read_properties_unlocked.exit.thread

bb.e:                                             ; preds = %bb.d
  %i.ae = call i64 @llvm.read_register.i64(metadata !0)
  %i.af = getelementptr i8, ptr %.0165349.i, i64 8
  %i.ag = call { ptr, i64, i64 } asm sideeffect "call __get_user_${4:c}", "={ax},={rdx},={rsp},0,i,{rsp},~{dirflag},~{fpsr},~{flags}"(ptr %i.af, i64 8, i64 %i.ae) #19, !srcloc !21 ; 3 uses
  %i.ah = extractvalue { ptr, i64, i64 } %i.ag, 0
  %i.ai = extractvalue { ptr, i64, i64 } %i.ag, 1 ; 19 uses
  %i.aj = extractvalue { ptr, i64, i64 } %i.ag, 2
  %i.ak = ptrtoint ptr %i.ah to i64
  %i.al = trunc i64 %i.ak to i32                  ; 2 uses
  call void @llvm.write_register.i64(metadata !0, i64 %i.aj)
  %.not202.i = icmp eq i32 %i.al, 0
  br i1 %.not202.i, label %bb.f, label %read_properties_unlocked.exit.thread

bb.f:                                             ; preds = %bb.e
  %i.am = add i64 %i.aa, -11
  %or.cond3.i = icmp ult i64 %i.am, -10
  br i1 %or.cond3.i, label %bb.g, label %bb.i

bb.g:                                             ; preds = %bb.f
  %i.an = load ptr, ptr %i.c, align 8             ; 2 uses
  %.not.i212.i = icmp eq ptr %i.an, null
  br i1 %.not.i212.i, label %__drm_to_dev.exit213.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ao = getelementptr i8, ptr %i.an, i64 8
  %i.ap = load ptr, ptr %i.ao, align 8
  br label %__drm_to_dev.exit213.i

__drm_to_dev.exit213.i:                           ; preds = %bb.h, %bb.g
  %i.aq = phi ptr [ %i.ap, %bb.h ], [ null, %bb.g ]
  call void (ptr, ptr, i32, ptr, ...) @__drm_dev_dbg(ptr noundef null, ptr noundef %i.aq, i32 noundef 1, ptr noundef nonnull @.str.26) #18
  br label %read_properties_unlocked.exit.thread

bb.i:                                             ; preds = %bb.f
  %i.ar = trunc nuw nsw i64 %i.aa to i32
  switch i32 %i.ar, label %default.unreachable.i [
    i32 1, label %bb.j
    i32 2, label %bb.k
    i32 3, label %bb.m
    i32 4, label %bb.q
    i32 5, label %bb.w
    i32 6, label %bb.ai
    i32 7, label %bb.aj
    i32 8, label %bb.ao
    i32 9, label %bb.as
    i32 10, label %bb.at
  ]

bb.j:                                             ; preds = %bb.i
  %i.as = load i8, ptr %i.o, align 4
  %i.at = or i8 %i.as, 1
  store i8 %i.at, ptr %i.o, align 4
  store i64 %i.ai, ptr %i.u, align 8
  br label %bb.au

bb.k:                                             ; preds = %bb.i
  %.not205.i = icmp eq i64 %i.ai, 0
  br i1 %.not205.i, label %bb.au, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.au = load i32, ptr %7, align 8
  %i.av = or i32 %i.au, 1
  store i32 %i.av, ptr %7, align 8
  br label %bb.au

bb.m:                                             ; preds = %bb.i
  %i.aw = icmp eq i64 %i.ai, 0
  br i1 %i.aw, label %bb.n, label %bb.p

bb.n:                                             ; preds = %bb.m
  %i.ax = load ptr, ptr %i.c, align 8             ; 2 uses
  %.not.i214.i = icmp eq ptr %i.ax, null
  br i1 %.not.i214.i, label %__drm_to_dev.exit215.i, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.ay = getelementptr i8, ptr %i.ax, i64 8
  %i.az = load ptr, ptr %i.ay, align 8
  br label %__drm_to_dev.exit215.i

__drm_to_dev.exit215.i:                           ; preds = %bb.o, %bb.n
  %i.ba = phi ptr [ %i.az, %bb.o ], [ null, %bb.n ]
  call void (ptr, ptr, i32, ptr, ...) @__drm_dev_dbg(ptr noundef null, ptr noundef %i.ba, i32 noundef 1, ptr noundef nonnull @.str.27) #18
  br label %read_properties_unlocked.exit.thread

bb.p:                                             ; preds = %bb.m
  %i.bb = trunc i64 %i.ai to i32
  store i32 %i.bb, ptr %i.t, align 8
  br label %bb.au

bb.q:                                             ; preds = %bb.i
  %i.bc = add i64 %i.ai, -15
  %or.cond5.i = icmp ult i64 %i.bc, -14
  br i1 %or.cond5.i, label %bb.r, label %.split258.i

bb.r:                                             ; preds = %bb.q
  %i.bd = load ptr, ptr %i.c, align 8             ; 2 uses
  %.not.i216.i = icmp eq ptr %i.bd, null
  br i1 %.not.i216.i, label %__drm_to_dev.exit217.i, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.be = getelementptr i8, ptr %i.bd, i64 8
  %i.bf = load ptr, ptr %i.be, align 8
  br label %__drm_to_dev.exit217.i

__drm_to_dev.exit217.i:                           ; preds = %bb.s, %bb.r
  %i.bg = phi ptr [ %i.bf, %bb.s ], [ null, %bb.r ]
  call void (ptr, ptr, i32, ptr, ...) @__drm_dev_dbg(ptr noundef null, ptr noundef %i.bg, i32 noundef 1, ptr noundef nonnull @.str.28, i64 noundef %i.ai) #18
  br label %read_properties_unlocked.exit.thread

.split258.i:                                      ; preds = %bb.q
  %i.bh = call i8 asm sideeffect " btq  $2,$1", "={@ccc},*m,Ir,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i64) %i.r, i64 range(i64 1, 15) %i.ai) #19, !srcloc !22 ; 2 uses
  %i.bi = icmp ult i8 %i.bh, 2
  call void @llvm.assume(i1 %i.bi)
  %i.bj = trunc nuw i8 %i.bh to i1
  br i1 %i.bj, label %bb.v, label %bb.t

bb.t:                                             ; preds = %.split258.i
  %i.bk = load ptr, ptr %i.c, align 8             ; 2 uses
  %.not.i218.i = icmp eq ptr %i.bk, null
  br i1 %.not.i218.i, label %__drm_to_dev.exit219.i, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.bl = getelementptr i8, ptr %i.bk, i64 8
  %i.bm = load ptr, ptr %i.bl, align 8
  br label %__drm_to_dev.exit219.i

__drm_to_dev.exit219.i:                           ; preds = %bb.u, %bb.t
  %i.bn = phi ptr [ %i.bm, %bb.u ], [ null, %bb.t ]
end_hunk_0
begin_hunk_1_@i915_perf_open_ioctl:bb.a
  store i32 0, ptr %i.wi, align 4
  call void @i915_request_add(ptr noundef %i.vr) #18
  br label %bb.fh

__store_reg_to_mem.exit.i.i.i.i.i.i:              ; preds = %i915_request_get.exit.i.i.i.i.i.i
  %i.wj = ptrtoint ptr %i.wd to i64
  %i.wk = trunc i64 %i.wj to i32                  ; 2 uses
  call void @i915_request_add(ptr noundef %i.vr) #18
  %.not.i.i.i53.i.i.i = icmp eq i32 %i.wk, 0
  br i1 %.not.i.i.i53.i.i.i, label %bb.fh, label %bb.fi

bb.fh:                                            ; preds = %__store_reg_to_mem.exit.i.i.i.i.i.i, %__store_reg_to_mem.exit.thread.i.i.i.i.i.i
  %i.wl = call i64 @i915_request_wait(ptr noundef %i.vr, i32 noundef 0, i64 noundef 500) #18
  %i.wm = icmp slt i64 %i.wl, 0
  %spec.select.i.i.i.i.i.i = select i1 %i.wm, i32 -62, i32 0
  br label %bb.fi

bb.fi:                                            ; preds = %bb.fh, %__store_reg_to_mem.exit.i.i.i.i.i.i
  %.0.i.i.i.i.i.i = phi i32 [ %i.wk, %__store_reg_to_mem.exit.i.i.i.i.i.i ], [ %spec.select.i.i.i.i.i.i, %bb.fh ] ; 4 uses
  br i1 %.not.i.i.i.i.i.i.i.i, label %__read_reg.exit.i.i.i.i.i, label %bb.fj

bb.fj:                                            ; preds = %bb.fi
  %i.wn = getelementptr i8, ptr %i.vr, i64 56     ; 4 uses
  %i.wo = call i32 asm sideeffect ".pushsection .smp_locks,\22a\22\0A.balign 4\0A.long 671f - .\0A.popsection\0A671:\0A\09lock xaddl $0, $1", "=r,=*m,0,*m,~{memory},~{cc},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i32) %i.wn, i32 -1, ptr elementtype(i32) %i.wn) #19, !srcloc !43 ; 2 uses
  %i.wp = icmp eq i32 %i.wo, 1
  br i1 %i.wp, label %bb.fm, label %bb.fk

bb.fk:                                            ; preds = %bb.fj
  %i.wq = icmp slt i32 %i.wo, 1
  br i1 %i.wq, label %bb.fl, label %__read_reg.exit.i.i.i.i.i, !prof !25

bb.fl:                                            ; preds = %bb.fk
  call void @refcount_warn_saturate(ptr noundef %i.wn, i32 noundef 3) #18
  br label %__read_reg.exit.i.i.i.i.i

bb.fm:                                            ; preds = %bb.fj
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #19, !srcloc !44
  call void @dma_fence_release(ptr noundef %i.wn) #18, !callees !45, !inline_history !46
  br label %__read_reg.exit.i.i.i.i.i

__read_reg.exit.i.i.i.i.i:                        ; preds = %bb.fm, %bb.fl, %bb.fk, %bb.fi, %bb.fd
  %.011.i.i.i.i.i.i = phi i32 [ %i.vu, %bb.fd ], [ %.0.i.i.i.i.i.i, %bb.fi ], [ %.0.i.i.i.i.i.i, %bb.fk ], [ %.0.i.i.i.i.i.i, %bb.fl ], [ %.0.i.i.i.i.i.i, %bb.fm ] ; 2 uses
  %.not13.i.i.i.i.i = icmp eq i32 %.011.i.i.i.i.i.i, 0
  br i1 %.not13.i.i.i.i.i, label %bb.fn, label %bb.fq

bb.fn:                                            ; preds = %__read_reg.exit.i.i.i.i.i
  %i.wr = getelementptr i8, ptr %i.vd, i64 184    ; 2 uses
  %i.ws = load ptr, ptr %i.wr, align 8
  %i.wt = call ptr @i915_gem_object_pin_map_unlocked(ptr noundef %i.ws, i32 noundef 0) #18 ; 3 uses
  %i.wu = icmp ugt ptr %i.wt, inttoptr (i64 -4096 to ptr)
  br i1 %i.wu, label %bb.fo, label %bb.fp

bb.fo:                                            ; preds = %bb.fn
  %i.wv = ptrtoint ptr %i.wt to i64
  %i.ww = trunc i64 %i.wv to i32
  br label %bb.fq

bb.fp:                                            ; preds = %bb.fn
  %i.wx = load i32, ptr %i.wt, align 4
  %i.wy = load ptr, ptr %i.wr, align 8
  %i.wz = getelementptr i8, ptr %i.wy, i64 688    ; 2 uses
  call void asm sideeffect ".pushsection .smp_locks,\22a\22\0A.balign 4\0A.long 671f - .\0A.popsection\0A671:\0A\09lock decl $0", "=*m,*m,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i32) %i.wz, ptr elementtype(i32) %i.wz) #19, !srcloc !47
  br label %bb.fq

bb.fq:                                            ; preds = %bb.fp, %bb.fo, %__read_reg.exit.i.i.i.i.i, %bb.fb
  %.1.i.i.i.i = phi i32 [ 0, %bb.fo ], [ %i.wx, %bb.fp ], [ 0, %__read_reg.exit.i.i.i.i.i ], [ 0, %bb.fb ]
  %.010.i.i.i.i.i = phi i32 [ %i.ww, %bb.fo ], [ 0, %bb.fp ], [ %.011.i.i.i.i.i.i, %__read_reg.exit.i.i.i.i.i ], [ %i.vi, %bb.fb ]
  call void @i915_vma_unpin_and_release(ptr noundef nonnull %i.b, i32 noundef 0) #18
  br label %gen12_guc_sw_ctx_id.exit.i.i.i.i

gen12_guc_sw_ctx_id.exit.i.i.i.i:                 ; preds = %bb.fq, %bb.fa
  %.2.i.i.i.i = phi i32 [ 0, %bb.fa ], [ %.1.i.i.i.i, %bb.fq ]
  %.0.i.i50.i.i.i = phi i32 [ %i.vg, %bb.fa ], [ %.010.i.i.i.i.i, %bb.fq ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #19
  %.not.i51.i.i.i = icmp eq i32 %.0.i.i50.i.i.i, 0
  br i1 %.not.i51.i.i.i, label %bb.fs, label %gen12_get_render_context_id.exit.i.i.i

bb.fr:                                            ; preds = %bb.ey
  %i.xa = load ptr, ptr %i.ur, align 8            ; 2 uses
  %i.xb = getelementptr i8, ptr %i.xa, i64 1656
  %i.xc = load i8, ptr %i.xb, align 8
  %i.xd = zext i8 %i.xc to i32
  %i.xe = shl nuw nsw i32 %i.xd, 8
  %i.xf = getelementptr i8, ptr %i.xa, i64 1657
  %i.xg = load i8, ptr %i.xf, align 1
  %i.xh = zext i8 %i.xg to i32
  %i.xi = or disjoint i32 %i.xe, %i.xh
  %i.xj = icmp samesign ugt i32 %i.xi, 3126       ; 2 uses
  %spec.select.i.i.i.i = select i1 %i.xj, i32 8388352, i32 65472
  %spec.select13.i.i.i.i = select i1 %i.xj, i32 8388480, i32 65504
  br label %bb.fs

bb.fs:                                            ; preds = %bb.fr, %gen12_guc_sw_ctx_id.exit.i.i.i.i
  %.012.i.i.i.i = phi i32 [ %.2.i.i.i.i, %gen12_guc_sw_ctx_id.exit.i.i.i.i ], [ %spec.select.i.i.i.i, %bb.fr ]
  %.0.i48.i.i.i = phi i32 [ 8388480, %gen12_guc_sw_ctx_id.exit.i.i.i.i ], [ %spec.select13.i.i.i.i, %bb.fr ] ; 2 uses
  %i.xk = and i32 %.0.i48.i.i.i, %.012.i.i.i.i
  %i.xl = getelementptr i8, ptr %i.ma, i64 104
  store i32 %i.xk, ptr %i.xl, align 8
  %i.xm = getelementptr i8, ptr %i.ma, i64 108
  store i32 %.0.i48.i.i.i, ptr %i.xm, align 4
  br label %gen12_get_render_context_id.exit.i.i.i

bb.ft:                                            ; preds = %bb.et
  %i.xn = call ptr asm sideeffect "lea (2f)(%rip), $0\0A1:\0A.pushsection __bug_table,\22aw\22\0A\09912: .pushsection .discard.annotate_data, \22M\22, @progbits, 8; .long 912b - ., 1; .popsection\0A\092:\0A\09\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${1:c} - .\09# bug_entry::format\0A\09.long ${2:c} - .\09# bug_entry::file\0A\09.word ${3:c}\09# bug_entry::line\0A\09.word ${4:c}\09# bug_entry::flags\0A\09.org 2b + ${5:c}\0A.popsection\0A", "=r,i,i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr nonnull @.str.35, ptr nonnull @.str.24, i32 1596, i32 2321, i64 16) #19, !srcloc !48
  %i.xo = load ptr, ptr %i.tu, align 8
  %i.xp = load ptr, ptr %i.xo, align 8
  %i.xq = getelementptr i8, ptr %i.xp, i64 1656
  %i.xr = load i8, ptr %i.xq, align 8
  %i.xs = zext i8 %i.xr to i64
  call void (ptr, ...) @__SCT__WARN_trap(ptr noundef %i.xn, ptr noundef nonnull @.str.65, i64 noundef %i.xs) #18
  call void asm sideeffect "", "~{dirflag},~{fpsr},~{flags}"() #19, !srcloc !49
  br label %gen12_get_render_context_id.exit.i.i.i

gen12_get_render_context_id.exit.i.i.i:           ; preds = %bb.ft, %bb.fs, %gen12_guc_sw_ctx_id.exit.i.i.i.i, %bb.ex, %bb.ew, %bb.eu
  %.1.i.i.i = phi i32 [ 0, %bb.ft ], [ 0, %bb.eu ], [ 0, %bb.ew ], [ 0, %bb.ex ], [ 0, %bb.fs ], [ %.0.i.i50.i.i.i, %gen12_guc_sw_ctx_id.exit.i.i.i.i ]
  %i.xt = getelementptr i8, ptr %i.ma, i64 104
  %i.xu = load i32, ptr %i.xt, align 8            ; 2 uses
  %i.xv = getelementptr i8, ptr %.015.i.i.i.i, i64 168
  store i32 %i.xu, ptr %i.xv, align 8
  %i.xw = load ptr, ptr %i.ma, align 8
  %i.xx = load ptr, ptr %i.xw, align 8            ; 2 uses
  %.not.i54.i.i.i = icmp eq ptr %i.xx, null
  br i1 %.not.i54.i.i.i, label %__drm_to_dev.exit55.i.i.i, label %bb.fu

bb.fu:                                            ; preds = %gen12_get_render_context_id.exit.i.i.i
  %i.xy = getelementptr i8, ptr %i.xx, i64 8
  %i.xz = load ptr, ptr %i.xy, align 8
  br label %__drm_to_dev.exit55.i.i.i

__drm_to_dev.exit55.i.i.i:                        ; preds = %bb.fu, %gen12_get_render_context_id.exit.i.i.i
  %i.ya = phi ptr [ %i.xz, %bb.fu ], [ null, %gen12_get_render_context_id.exit.i.i.i ]
  %i.yb = getelementptr i8, ptr %i.ma, i64 108
  %i.yc = load i32, ptr %i.yb, align 4
  call void (ptr, ptr, i32, ptr, ...) @__drm_dev_dbg(ptr noundef null, ptr noundef %i.ya, i32 noundef 1, ptr noundef nonnull @.str.66, i32 noundef %i.xu, i32 noundef %i.yc) #18
  br label %oa_get_render_ctx_id.exit.i.i

oa_get_render_ctx_id.exit.i.i:                    ; preds = %__drm_to_dev.exit55.i.i.i, %bb.dx
  %.0.i135.i.i = phi i32 [ %i.pw, %bb.dx ], [ %.1.i.i.i, %__drm_to_dev.exit55.i.i.i ] ; 2 uses
  %.not105.i.i = icmp eq i32 %.0.i135.i.i, 0
  br i1 %.not105.i.i, label %oa_get_render_ctx_id.exit._crit_edge.i.i, label %bb.fv

oa_get_render_ctx_id.exit._crit_edge.i.i:         ; preds = %oa_get_render_ctx_id.exit.i.i
  %.pre.i.i = load ptr, ptr %i.ma, align 8        ; 2 uses
  %.pre22.i.i = load ptr, ptr %i.nl, align 8
  %.pre.i28 = load ptr, ptr %.pre.i.i, align 8
  br label %bb.fx

bb.fv:                                            ; preds = %oa_get_render_ctx_id.exit.i.i, %oa_get_render_ctx_id.exit.thread.i.i
  %.0.i1353.i.i = phi i32 [ -19, %oa_get_render_ctx_id.exit.thread.i.i ], [ %.0.i135.i.i, %oa_get_render_ctx_id.exit.i.i ]
  %i.yd = load ptr, ptr %i.ma, align 8
  %i.ye = load ptr, ptr %i.yd, align 8            ; 2 uses
  %.not.i137.i.i = icmp eq ptr %i.ye, null
  br i1 %.not.i137.i.i, label %__drm_to_dev.exit138.i.i, label %bb.fw

bb.fw:                                            ; preds = %bb.fv
  %i.yf = getelementptr i8, ptr %i.ye, i64 8
  %i.yg = load ptr, ptr %i.yf, align 8
  br label %__drm_to_dev.exit138.i.i

__drm_to_dev.exit138.i.i:                         ; preds = %bb.fw, %bb.fv
  %i.yh = phi ptr [ %i.yg, %bb.fw ], [ null, %bb.fv ]
  call void (ptr, ptr, i32, ptr, ...) @__drm_dev_dbg(ptr noundef null, ptr noundef %i.yh, i32 noundef 1, ptr noundef nonnull @.str.56) #18
  br label %i915_oa_stream_init.exit.thread.i

bb.fx:                                            ; preds = %oa_get_render_ctx_id.exit._crit_edge.i.i, %bb.dn
  %i.yi = phi ptr [ %.pre.i28, %oa_get_render_ctx_id.exit._crit_edge.i.i ], [ %i.me, %bb.dn ] ; 6 uses
  %i.yj = phi ptr [ %.pre22.i.i, %oa_get_render_ctx_id.exit._crit_edge.i.i ], [ %i.mf, %bb.dn ]
  %i.yk = phi ptr [ %.pre.i.i, %oa_get_render_ctx_id.exit._crit_edge.i.i ], [ %i.c, %bb.dn ]
  %i.yl = getelementptr i8, ptr %i.yj, i64 8
  %i.ym = load ptr, ptr %i.yl, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #19
  store ptr null, ptr %i.a, align 8, !annotation !19
  %i.yn = getelementptr i8, ptr %i.yi, i64 3528
  %.val.i139.i.i = load ptr, ptr %i.yn, align 8
  %i.yo = getelementptr i8, ptr %i.yk, i64 232
  %i.yp = load volatile i64, ptr %i.yo, align 8
  %i.yq = call i64 @intel_gt_ns_to_clock_interval(ptr noundef %.val.i139.i.i, i64 noundef %i.yp) #18
  %i.yr = xor i64 %i.yq, -1                       ; 2 uses
  %i.ys = load ptr, ptr %i.nl, align 8
  %i.yt = getelementptr i8, ptr %i.ys, i64 72
  %i.yu = load i32, ptr %i.yt, align 8            ; 12 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #19
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %3, i8 0, i64 56, i1 false), !annotation !19
  %i.yv = getelementptr i8, ptr %i.yi, i64 1656   ; 7 uses
  %i.yw = load i8, ptr %i.yv, align 8
  %i.yx = zext i8 %i.yw to i32
  %i.yy = shl nuw nsw i32 %i.yx, 8
  %i.yz = getelementptr i8, ptr %i.yi, i64 1657   ; 5 uses
  %i.za = load i8, ptr %i.yz, align 1
  %i.zb = zext i8 %i.za to i32
  %i.zc = or disjoint i32 %i.yy, %i.zb
  %i.zd = icmp samesign ugt i32 %i.zc, 3126
  %i.ze = add i32 %i.yu, 956
  %.sroa.012.0.i.i.i = select i1 %i.zd, i32 %i.ze, i32 9244 ; 4 uses
  %i.zf = call ptr @i915_gem_object_create_internal(ptr noundef %i.yi, i64 noundef 8192) #18 ; 21 uses
  %i.zg = icmp ugt ptr %i.zf, inttoptr (i64 -4096 to ptr)
  br i1 %i.zg, label %bb.fy, label %bb.ga

bb.fy:                                            ; preds = %bb.fx
  %.not.i.i145.i.i = icmp eq ptr %i.yi, null
  br i1 %.not.i.i145.i.i, label %__drm_to_dev.exit.i146.i.i, label %bb.fz

bb.fz:                                            ; preds = %bb.fy
  %i.zh = getelementptr i8, ptr %i.yi, i64 8
  %i.zi = load ptr, ptr %i.zh, align 8
  br label %__drm_to_dev.exit.i146.i.i

__drm_to_dev.exit.i146.i.i:                       ; preds = %bb.fz, %bb.fy
  %8 = phi ptr [ %i.zi, %bb.fz ], [ null, %bb.fy ]
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %8, ptr noundef nonnull @.str.70) #23
  %9 = ptrtoint ptr %i.zf to i64
  %10 = trunc i64 %9 to i32
  br label %alloc_noa_wait.exit.i.i

bb.ga:                                            ; preds = %bb.fx
  call void @i915_gem_ww_ctx_init(ptr noundef nonnull %3, i1 noundef zeroext true) #18
  %i.zj = getelementptr inbounds nuw i8, ptr %3, i64 48
  %i.zk = getelementptr i8, ptr %i.zf, i64 248
  %i.zl = getelementptr i8, ptr %i.zf, i64 544    ; 3 uses
  %i.zm = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.zn = getelementptr inbounds nuw i8, ptr %3, i64 32 ; 2 uses
  %i.zo = getelementptr i8, ptr %i.zf, i64 552
  %i.zp = getelementptr i8, ptr %i.ym, i64 32
  %i.zq = getelementptr inbounds nuw i8, ptr %3, i64 40
  br label %bb.gb

bb.gb:                                            ; preds = %bb.gw, %bb.ga
  %i.zr = load i8, ptr %i.zj, align 8, !range !16, !noundef !17
  %i.zs = trunc nuw i8 %i.zr to i1
  %i.zt = load ptr, ptr %i.zk, align 8            ; 2 uses
  br i1 %i.zs, label %bb.gc, label %bb.gd

bb.gc:                                            ; preds = %bb.gb
  %i.zu = call i32 @ww_mutex_lock_interruptible(ptr noundef %i.zt, ptr noundef nonnull %3) #18
  br label %bb.ge

bb.gd:                                            ; preds = %bb.gb
  %i.zv = call i32 @ww_mutex_lock(ptr noundef %i.zt, ptr noundef nonnull %3) #18
  br label %bb.ge

bb.ge:                                            ; preds = %bb.gd, %bb.gc
  %.0.i.i.i140.i.i = phi i32 [ %i.zu, %bb.gc ], [ %i.zv, %bb.gd ] ; 4 uses
  %11 = icmp eq i32 %.0.i.i.i140.i.i, 0
  br i1 %11, label %bb.gf, label %12

bb.gf:                                            ; preds = %bb.ge
  %i.zw = call i32 asm sideeffect ".pushsection .smp_locks,\22a\22\0A.balign 4\0A.long 671f - .\0A.popsection\0A671:\0A\09lock xaddl $0, $1", "=r,=*m,0,*m,~{memory},~{cc},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i32) %i.zf, i32 1, ptr elementtype(i32) %i.zf) #19, !srcloc !43 ; 3 uses
  %.not.i.i.i.i.i.i.i.i.i.i.i = icmp eq i32 %i.zw, 0
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i, label %.sink.split.i.i.i.i.i.i.i.i.i.i.i, label %bb.gg, !prof !25

bb.gg:                                            ; preds = %bb.gf
  %i.zx = add i32 %i.zw, 1
  %i.zy = or i32 %i.zx, %i.zw
  %.not10.i.i.i.i.i.i.i.i.i.i.i = icmp sgt i32 %i.zy, -1
  br i1 %.not10.i.i.i.i.i.i.i.i.i.i.i, label %i915_gem_object_get.exit.i.i.i.i.i, label %.sink.split.i.i.i.i.i.i.i.i.i.i.i, !prof !12

.sink.split.i.i.i.i.i.i.i.i.i.i.i:                ; preds = %bb.gg, %bb.gf
  %.sink.i.i.i.i.i.i.i.i.i.i.i = phi i32 [ 2, %bb.gf ], [ 1, %bb.gg ]
  call void @refcount_warn_saturate(ptr noundef %i.zf, i32 noundef %.sink.i.i.i.i.i.i.i.i.i.i.i) #18
  br label %i915_gem_object_get.exit.i.i.i.i.i

i915_gem_object_get.exit.i.i.i.i.i:               ; preds = %.sink.split.i.i.i.i.i.i.i.i.i.i.i, %bb.gg
  %i.zz = load ptr, ptr %i.zn, align 8            ; 2 uses
  store ptr %i.zl, ptr %i.zn, align 8
  store ptr %i.zm, ptr %i.zl, align 8
  store ptr %i.zz, ptr %i.zo, align 8
  store volatile ptr %i.zl, ptr %i.zz, align 8
  br label %12

12:                                               ; preds = %i915_gem_object_get.exit.i.i.i.i.i, %bb.ge
  %13 = icmp eq i32 %.0.i.i.i140.i.i, -114
  %spec.store.select.i6.i.i.i.i = select i1 %13, i32 0, i32 %.0.i.i.i140.i.i
  switch i32 %spec.store.select.i6.i.i.i.i, label %.sink.split.i.i.i [
    i32 -35, label %bb.gh
    i32 0, label %bb.gj
  ]

bb.gh:                                            ; preds = %12
  %i.aaa = call i32 asm sideeffect ".pushsection .smp_locks,\22a\22\0A.balign 4\0A.long 671f - .\0A.popsection\0A671:\0A\09lock xaddl $0, $1", "=r,=*m,0,*m,~{memory},~{cc},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i32) %i.zf, i32 1, ptr elementtype(i32) %i.zf) #19, !srcloc !43 ; 3 uses
  %.not.i.i.i.i.i.i19.i7.i.i.i.i = icmp eq i32 %i.aaa, 0
  br i1 %.not.i.i.i.i.i.i19.i7.i.i.i.i, label %.sink.split.i.i.i.i.i.i21.i9.i.i.i.i, label %bb.gi, !prof !25

bb.gi:                                            ; preds = %bb.gh
  %i.aab = add i32 %i.aaa, 1
  %i.aac = or i32 %i.aab, %i.aaa
  %.not10.i.i.i.i.i.i20.i8.i.i.i.i = icmp sgt i32 %i.aac, -1
  br i1 %.not10.i.i.i.i.i.i20.i8.i.i.i.i, label %.thread176.i.i.i, label %.sink.split.i.i.i.i.i.i21.i9.i.i.i.i, !prof !12

.sink.split.i.i.i.i.i.i21.i9.i.i.i.i:             ; preds = %bb.gi, %bb.gh
  %.sink.i.i.i.i.i.i22.i10.i.i.i.i = phi i32 [ 2, %bb.gh ], [ 1, %bb.gi ]
  call void @refcount_warn_saturate(ptr noundef %i.zf, i32 noundef %.sink.i.i.i.i.i.i22.i10.i.i.i.i) #18
  br label %.thread176.i.i.i

.thread176.i.i.i:                                 ; preds = %.sink.split.i.i.i.i.i.i21.i9.i.i.i.i, %bb.gi
  store ptr %i.zf, ptr %i.zq, align 8
  br label %bb.gw

bb.gj:                                            ; preds = %12
  %i.aad = load ptr, ptr %i.zp, align 8
  %i.aae = call ptr @i915_vma_instance(ptr noundef %i.zf, ptr noundef %i.aad, ptr noundef null) #18 ; 4 uses
  store ptr %i.aae, ptr %i.a, align 8
  %i.aaf = icmp ugt ptr %i.aae, inttoptr (i64 -4096 to ptr)
  br i1 %i.aaf, label %bb.gk, label %bb.gl

bb.gk:                                            ; preds = %bb.gj
  %i.aag = ptrtoint ptr %i.aae to i64
  %i.aah = trunc i64 %i.aag to i32
  br label %bb.gv

bb.gl:                                            ; preds = %bb.gj
  %i.aai = call i32 @i915_vma_pin_ww(ptr noundef %i.aae, ptr noundef nonnull %3, i64 noundef 0, i64 noundef 0, i64 noundef 1056) #18 ; 2 uses
  %.not144.i.i.i = icmp eq i32 %i.aai, 0
  br i1 %.not144.i.i.i, label %bb.gm, label %bb.gv

bb.gm:                                            ; preds = %bb.gl
  %i.aaj = call ptr @i915_gem_object_pin_map(ptr noundef %i.zf, i32 noundef 0) #18 ; 69 uses
  %i.aak = icmp ugt ptr %i.aaj, inttoptr (i64 -4096 to ptr)
  br i1 %i.aak, label %bb.gn, label %save_restore_register.exit.i.i.i

bb.gn:                                            ; preds = %bb.gm
  %i.aal = ptrtoint ptr %i.aaj to i64
  %i.aam = trunc i64 %i.aal to i32
  call void @i915_vma_unpin_and_release(ptr noundef nonnull %i.a, i32 noundef 0) #18
  br label %bb.gv

save_restore_register.exit.i.i.i:                 ; preds = %bb.gm
  %i.aan = load ptr, ptr %i.a, align 8
  %i.aao = getelementptr i8, ptr %i.ma, i64 264   ; 23 uses
  store ptr %i.aan, ptr %i.aao, align 8
  %i.aap = add i32 %i.yu, 1536                    ; 3 uses
  %i.aaq = load ptr, ptr %i.ma, align 8
  %i.aar = load ptr, ptr %i.aaq, align 8
  %i.aas = getelementptr i8, ptr %i.aar, i64 1656
  %i.aat = load i8, ptr %i.aas, align 8
  %i.aau = icmp ugt i8 %i.aat, 7
  %spec.select.i.i142.i.i = select i1 %i.aau, i32 306184194, i32 306184193 ; 2 uses
  %i.aav = getelementptr i8, ptr %i.aaj, i64 4
  store i32 %spec.select.i.i142.i.i, ptr %i.aaj, align 4
  %i.aaw = getelementptr i8, ptr %i.aaj, i64 8
  store i32 %i.aap, ptr %i.aav, align 4
  %i.aax = load ptr, ptr %i.aao, align 8          ; 2 uses
  %i.aay = getelementptr i8, ptr %i.aax, i64 8
  %.val.i.i143.i.i = load i64, ptr %i.aay, align 8
  %i.aaz = getelementptr i8, ptr %i.aax, i64 248
  %.val18.i.i.i.i = load i32, ptr %i.aaz, align 8
  %i.aba = trunc i64 %.val.i.i143.i.i to i32
  %i.abb = add i32 %i.aba, 4096
  %i.abc = add i32 %i.abb, %.val18.i.i.i.i
  %i.abd = getelementptr i8, ptr %i.aaj, i64 12
  store i32 %i.abc, ptr %i.aaw, align 4
  %i.abe = getelementptr i8, ptr %i.aaj, i64 16
  store i32 0, ptr %i.abd, align 4
  %i.abf = getelementptr i8, ptr %i.aaj, i64 20
  store i32 %spec.select.i.i142.i.i, ptr %i.abe, align 4
  %i.abg = add i32 %i.yu, 1540                    ; 3 uses
  %i.abh = getelementptr i8, ptr %i.aaj, i64 24
  store i32 %i.abg, ptr %i.abf, align 4
  %i.abi = load ptr, ptr %i.aao, align 8          ; 2 uses
  %i.abj = getelementptr i8, ptr %i.abi, i64 8
  %.val.i.1.i.i.i = load i64, ptr %i.abj, align 8
  %i.abk = getelementptr i8, ptr %i.abi, i64 248
  %.val18.i.1.i.i.i = load i32, ptr %i.abk, align 8
  %i.abl = trunc i64 %.val.i.1.i.i.i to i32
  %i.abm = add i32 %i.abl, 4100
  %i.abn = add i32 %i.abm, %.val18.i.1.i.i.i
  %i.abo = getelementptr i8, ptr %i.aaj, i64 28
  store i32 %i.abn, ptr %i.abh, align 4
  %i.abp = getelementptr i8, ptr %i.aaj, i64 32
  store i32 0, ptr %i.abo, align 4
  %i.abq = add i32 %i.yu, 1544                    ; 3 uses
  %i.abr = load ptr, ptr %i.ma, align 8
  %i.abs = load ptr, ptr %i.abr, align 8
  %i.abt = getelementptr i8, ptr %i.abs, i64 1656
  %i.abu = load i8, ptr %i.abt, align 8
  %i.abv = icmp ugt i8 %i.abu, 7
  %spec.select.i.1.i.i.i = select i1 %i.abv, i32 306184194, i32 306184193 ; 2 uses
  %i.abw = getelementptr i8, ptr %i.aaj, i64 36
  store i32 %spec.select.i.1.i.i.i, ptr %i.abp, align 4
  %i.abx = getelementptr i8, ptr %i.aaj, i64 40
  store i32 %i.abq, ptr %i.abw, align 4
  %i.aby = load ptr, ptr %i.aao, align 8          ; 2 uses
  %i.abz = getelementptr i8, ptr %i.aby, i64 8
  %.val.i.1198.i.i.i = load i64, ptr %i.abz, align 8
  %i.aca = getelementptr i8, ptr %i.aby, i64 248
  %.val18.i.1199.i.i.i = load i32, ptr %i.aca, align 8
  %i.acb = trunc i64 %.val.i.1198.i.i.i to i32
  %i.acc = add i32 %i.acb, 4104
  %i.acd = add i32 %i.acc, %.val18.i.1199.i.i.i
  %i.ace = getelementptr i8, ptr %i.aaj, i64 44
  store i32 %i.acd, ptr %i.abx, align 4
  %i.acf = getelementptr i8, ptr %i.aaj, i64 48
  store i32 0, ptr %i.ace, align 4
  %i.acg = getelementptr i8, ptr %i.aaj, i64 52
  store i32 %spec.select.i.1.i.i.i, ptr %i.acf, align 4
  %i.ach = add i32 %i.yu, 1548                    ; 3 uses
  %i.aci = getelementptr i8, ptr %i.aaj, i64 56
  store i32 %i.ach, ptr %i.acg, align 4
  %i.acj = load ptr, ptr %i.aao, align 8          ; 2 uses
  %i.ack = getelementptr i8, ptr %i.acj, i64 8
  %.val.i.1.1.i.i.i = load i64, ptr %i.ack, align 8
  %i.acl = getelementptr i8, ptr %i.acj, i64 248
  %.val18.i.1.1.i.i.i = load i32, ptr %i.acl, align 8
  %i.acm = trunc i64 %.val.i.1.1.i.i.i to i32
  %i.acn = add i32 %i.acm, 4108
  %i.aco = add i32 %i.acn, %.val18.i.1.1.i.i.i
  %i.acp = getelementptr i8, ptr %i.aaj, i64 60
  store i32 %i.aco, ptr %i.aci, align 4
  %i.acq = getelementptr i8, ptr %i.aaj, i64 64
  store i32 0, ptr %i.acp, align 4
  %i.acr = add i32 %i.yu, 1552                    ; 2 uses
  %i.acs = load ptr, ptr %i.ma, align 8
  %i.act = load ptr, ptr %i.acs, align 8
  %i.acu = getelementptr i8, ptr %i.act, i64 1656
  %i.acv = load i8, ptr %i.acu, align 8
  %i.acw = icmp ugt i8 %i.acv, 7
  %spec.select.i.2.i.i.i = select i1 %i.acw, i32 306184194, i32 306184193 ; 2 uses
  %i.acx = getelementptr i8, ptr %i.aaj, i64 68
  store i32 %spec.select.i.2.i.i.i, ptr %i.acq, align 4
  %i.acy = getelementptr i8, ptr %i.aaj, i64 72
  store i32 %i.acr, ptr %i.acx, align 4
  %i.acz = load ptr, ptr %i.aao, align 8          ; 2 uses
  %i.ada = getelementptr i8, ptr %i.acz, i64 8
  %.val.i.2.i.i.i = load i64, ptr %i.ada, align 8
  %i.adb = getelementptr i8, ptr %i.acz, i64 248
  %.val18.i.2.i.i.i = load i32, ptr %i.adb, align 8
  %i.adc = trunc i64 %.val.i.2.i.i.i to i32
  %i.add = add i32 %i.adc, 4112
  %i.ade = add i32 %i.add, %.val18.i.2.i.i.i
  %i.adf = getelementptr i8, ptr %i.aaj, i64 76
  store i32 %i.ade, ptr %i.acy, align 4
  %i.adg = getelementptr i8, ptr %i.aaj, i64 80
  store i32 0, ptr %i.adf, align 4
  %i.adh = getelementptr i8, ptr %i.aaj, i64 84
  store i32 %spec.select.i.2.i.i.i, ptr %i.adg, align 4
  %i.adi = add i32 %i.yu, 1556                    ; 2 uses
  %i.adj = getelementptr i8, ptr %i.aaj, i64 88
  store i32 %i.adi, ptr %i.adh, align 4
  %i.adk = load ptr, ptr %i.aao, align 8          ; 2 uses
  %i.adl = getelementptr i8, ptr %i.adk, i64 8
  %.val.i.1.2.i.i.i = load i64, ptr %i.adl, align 8
  %i.adm = getelementptr i8, ptr %i.adk, i64 248
  %.val18.i.1.2.i.i.i = load i32, ptr %i.adm, align 8
  %i.adn = trunc i64 %.val.i.1.2.i.i.i to i32
  %i.ado = add i32 %i.adn, 4116
  %i.adp = add i32 %i.ado, %.val18.i.1.2.i.i.i
  %i.adq = getelementptr i8, ptr %i.aaj, i64 92
  store i32 %i.adp, ptr %i.adj, align 4
  %i.adr = getelementptr i8, ptr %i.aaj, i64 96
  store i32 0, ptr %i.adq, align 4
  %i.ads = add i32 %i.yu, 1560                    ; 4 uses
  %i.adt = load ptr, ptr %i.ma, align 8
  %i.adu = load ptr, ptr %i.adt, align 8
  %i.adv = getelementptr i8, ptr %i.adu, i64 1656
  %i.adw = load i8, ptr %i.adv, align 8
  %i.adx = icmp ugt i8 %i.adw, 7
  %spec.select.i.3.i.i.i = select i1 %i.adx, i32 306184194, i32 306184193 ; 2 uses
  %i.ady = getelementptr i8, ptr %i.aaj, i64 100
  store i32 %spec.select.i.3.i.i.i, ptr %i.adr, align 4
  %i.adz = getelementptr i8, ptr %i.aaj, i64 104
  store i32 %i.ads, ptr %i.ady, align 4
  %i.aea = load ptr, ptr %i.aao, align 8          ; 2 uses
  %i.aeb = getelementptr i8, ptr %i.aea, i64 8
  %.val.i.3.i.i.i = load i64, ptr %i.aeb, align 8
  %i.aec = getelementptr i8, ptr %i.aea, i64 248
  %.val18.i.3.i.i.i = load i32, ptr %i.aec, align 8
  %i.aed = trunc i64 %.val.i.3.i.i.i to i32
  %i.aee = add i32 %i.aed, 4120
  %i.aef = add i32 %i.aee, %.val18.i.3.i.i.i
  %i.aeg = getelementptr i8, ptr %i.aaj, i64 108
  store i32 %i.aef, ptr %i.adz, align 4
  %i.aeh = getelementptr i8, ptr %i.aaj, i64 112
  store i32 0, ptr %i.aeg, align 4
  %i.aei = getelementptr i8, ptr %i.aaj, i64 116
  store i32 %spec.select.i.3.i.i.i, ptr %i.aeh, align 4
  %i.aej = add i32 %i.yu, 1564                    ; 2 uses
  %i.aek = getelementptr i8, ptr %i.aaj, i64 120
  store i32 %i.aej, ptr %i.aei, align 4
  %i.ael = load ptr, ptr %i.aao, align 8          ; 2 uses
  %i.aem = getelementptr i8, ptr %i.ael, i64 8
  %.val.i.1.3.i.i.i = load i64, ptr %i.aem, align 8
  %i.aen = getelementptr i8, ptr %i.ael, i64 248
  %.val18.i.1.3.i.i.i = load i32, ptr %i.aen, align 8
  %i.aeo = trunc i64 %.val.i.1.3.i.i.i to i32
  %i.aep = add i32 %i.aeo, 4124
  %i.aeq = add i32 %i.aep, %.val18.i.1.3.i.i.i
  %i.aer = getelementptr i8, ptr %i.aaj, i64 124
  store i32 %i.aeq, ptr %i.aek, align 4
  %i.aes = getelementptr i8, ptr %i.aaj, i64 128
  store i32 0, ptr %i.aer, align 4
  %i.aet = add i32 %i.yu, 1568                    ; 3 uses
  %i.aeu = load ptr, ptr %i.ma, align 8
  %i.aev = load ptr, ptr %i.aeu, align 8
  %i.aew = getelementptr i8, ptr %i.aev, i64 1656
  %i.aex = load i8, ptr %i.aew, align 8
  %i.aey = icmp ugt i8 %i.aex, 7
  %spec.select.i.4.i.i.i = select i1 %i.aey, i32 306184194, i32 306184193 ; 2 uses
  %i.aez = getelementptr i8, ptr %i.aaj, i64 132
  store i32 %spec.select.i.4.i.i.i, ptr %i.aes, align 4
end_hunk_1
begin_hunk_2_@i915_perf_open_ioctl:bb.a
  store i32 0, ptr %i.akn, align 4
  %i.akp = getelementptr i8, ptr %.4.i.i.i, i64 20
  store i32 %spec.select.i159.i.i.i, ptr %i.ako, align 4
  %i.akq = getelementptr i8, ptr %.4.i.i.i, i64 24
  store i32 %i.abg, ptr %i.akp, align 4
  %i.akr = load ptr, ptr %i.aao, align 8          ; 2 uses
  %i.aks = getelementptr i8, ptr %i.akr, i64 8
  %.val.i162.1.i.i.i = load i64, ptr %i.aks, align 8
  %i.akt = getelementptr i8, ptr %i.akr, i64 248
  %.val18.i163.1.i.i.i = load i32, ptr %i.akt, align 8
  %i.aku = trunc i64 %.val.i162.1.i.i.i to i32
  %i.akv = add i32 %i.aku, 4100
  %i.akw = add i32 %i.akv, %.val18.i163.1.i.i.i
  %i.akx = getelementptr i8, ptr %.4.i.i.i, i64 28
  store i32 %i.akw, ptr %i.akq, align 4
  %i.aky = getelementptr i8, ptr %.4.i.i.i, i64 32
  store i32 0, ptr %i.akx, align 4
  %i.akz = load ptr, ptr %i.ma, align 8
  %i.ala = load ptr, ptr %i.akz, align 8
  %i.alb = getelementptr i8, ptr %i.ala, i64 1656
  %i.alc = load i8, ptr %i.alb, align 8
  %i.ald = icmp ugt i8 %i.alc, 7
  %spec.select.i159.1.i.i.i = select i1 %i.ald, i32 348127234, i32 348127233 ; 2 uses
  %i.ale = getelementptr i8, ptr %.4.i.i.i, i64 36
  store i32 %spec.select.i159.1.i.i.i, ptr %i.aky, align 4
  %i.alf = getelementptr i8, ptr %.4.i.i.i, i64 40
  store i32 %i.abq, ptr %i.ale, align 4
  %i.alg = load ptr, ptr %i.aao, align 8          ; 2 uses
  %i.alh = getelementptr i8, ptr %i.alg, i64 8
  %.val.i162.1200.i.i.i = load i64, ptr %i.alh, align 8
  %i.ali = getelementptr i8, ptr %i.alg, i64 248
  %.val18.i163.1201.i.i.i = load i32, ptr %i.ali, align 8
  %i.alj = trunc i64 %.val.i162.1200.i.i.i to i32
  %i.alk = add i32 %i.alj, 4104
  %i.all = add i32 %i.alk, %.val18.i163.1201.i.i.i
  %i.alm = getelementptr i8, ptr %.4.i.i.i, i64 44
  store i32 %i.all, ptr %i.alf, align 4
  %i.aln = getelementptr i8, ptr %.4.i.i.i, i64 48
  store i32 0, ptr %i.alm, align 4
  %i.alo = getelementptr i8, ptr %.4.i.i.i, i64 52
  store i32 %spec.select.i159.1.i.i.i, ptr %i.aln, align 4
  %i.alp = getelementptr i8, ptr %.4.i.i.i, i64 56
  store i32 %i.ach, ptr %i.alo, align 4
  %i.alq = load ptr, ptr %i.aao, align 8          ; 2 uses
  %i.alr = getelementptr i8, ptr %i.alq, i64 8
  %.val.i162.1.1.i.i.i = load i64, ptr %i.alr, align 8
  %i.als = getelementptr i8, ptr %i.alq, i64 248
  %.val18.i163.1.1.i.i.i = load i32, ptr %i.als, align 8
  %i.alt = trunc i64 %.val.i162.1.1.i.i.i to i32
  %i.alu = add i32 %i.alt, 4108
  %i.alv = add i32 %i.alu, %.val18.i163.1.1.i.i.i
  %i.alw = getelementptr i8, ptr %.4.i.i.i, i64 60
  store i32 %i.alv, ptr %i.alp, align 4
  %i.alx = getelementptr i8, ptr %.4.i.i.i, i64 64
  store i32 0, ptr %i.alw, align 4
  %i.aly = load ptr, ptr %i.ma, align 8
  %i.alz = load ptr, ptr %i.aly, align 8
  %i.ama = getelementptr i8, ptr %i.alz, i64 1656
  %i.amb = load i8, ptr %i.ama, align 8
  %i.amc = icmp ugt i8 %i.amb, 7
  %spec.select.i159.2.i.i.i = select i1 %i.amc, i32 348127234, i32 348127233 ; 2 uses
  %i.amd = getelementptr i8, ptr %.4.i.i.i, i64 68
  store i32 %spec.select.i159.2.i.i.i, ptr %i.alx, align 4
  %i.ame = getelementptr i8, ptr %.4.i.i.i, i64 72
  store i32 %i.acr, ptr %i.amd, align 4
  %i.amf = load ptr, ptr %i.aao, align 8          ; 2 uses
  %i.amg = getelementptr i8, ptr %i.amf, i64 8
  %.val.i162.2.i.i.i = load i64, ptr %i.amg, align 8
  %i.amh = getelementptr i8, ptr %i.amf, i64 248
  %.val18.i163.2.i.i.i = load i32, ptr %i.amh, align 8
  %i.ami = trunc i64 %.val.i162.2.i.i.i to i32
  %i.amj = add i32 %i.ami, 4112
  %i.amk = add i32 %i.amj, %.val18.i163.2.i.i.i
  %i.aml = getelementptr i8, ptr %.4.i.i.i, i64 76
  store i32 %i.amk, ptr %i.ame, align 4
  %i.amm = getelementptr i8, ptr %.4.i.i.i, i64 80
  store i32 0, ptr %i.aml, align 4
  %i.amn = getelementptr i8, ptr %.4.i.i.i, i64 84
  store i32 %spec.select.i159.2.i.i.i, ptr %i.amm, align 4
  %i.amo = getelementptr i8, ptr %.4.i.i.i, i64 88
  store i32 %i.adi, ptr %i.amn, align 4
  %i.amp = load ptr, ptr %i.aao, align 8          ; 2 uses
  %i.amq = getelementptr i8, ptr %i.amp, i64 8
  %.val.i162.1.2.i.i.i = load i64, ptr %i.amq, align 8
  %i.amr = getelementptr i8, ptr %i.amp, i64 248
  %.val18.i163.1.2.i.i.i = load i32, ptr %i.amr, align 8
  %i.ams = trunc i64 %.val.i162.1.2.i.i.i to i32
  %i.amt = add i32 %i.ams, 4116
  %i.amu = add i32 %i.amt, %.val18.i163.1.2.i.i.i
  %i.amv = getelementptr i8, ptr %.4.i.i.i, i64 92
  store i32 %i.amu, ptr %i.amo, align 4
  %i.amw = getelementptr i8, ptr %.4.i.i.i, i64 96
  store i32 0, ptr %i.amv, align 4
  %i.amx = load ptr, ptr %i.ma, align 8
  %i.amy = load ptr, ptr %i.amx, align 8
  %i.amz = getelementptr i8, ptr %i.amy, i64 1656
  %i.ana = load i8, ptr %i.amz, align 8
  %i.anb = icmp ugt i8 %i.ana, 7
  %spec.select.i159.3.i.i.i = select i1 %i.anb, i32 348127234, i32 348127233 ; 2 uses
  %i.anc = getelementptr i8, ptr %.4.i.i.i, i64 100
  store i32 %spec.select.i159.3.i.i.i, ptr %i.amw, align 4
  %i.and = getelementptr i8, ptr %.4.i.i.i, i64 104
  store i32 %i.ads, ptr %i.anc, align 4
  %i.ane = load ptr, ptr %i.aao, align 8          ; 2 uses
  %i.anf = getelementptr i8, ptr %i.ane, i64 8
  %.val.i162.3.i.i.i = load i64, ptr %i.anf, align 8
  %i.ang = getelementptr i8, ptr %i.ane, i64 248
  %.val18.i163.3.i.i.i = load i32, ptr %i.ang, align 8
  %i.anh = trunc i64 %.val.i162.3.i.i.i to i32
  %i.ani = add i32 %i.anh, 4120
  %i.anj = add i32 %i.ani, %.val18.i163.3.i.i.i
  %i.ank = getelementptr i8, ptr %.4.i.i.i, i64 108
  store i32 %i.anj, ptr %i.and, align 4
  %i.anl = getelementptr i8, ptr %.4.i.i.i, i64 112
  store i32 0, ptr %i.ank, align 4
  %i.anm = getelementptr i8, ptr %.4.i.i.i, i64 116
  store i32 %spec.select.i159.3.i.i.i, ptr %i.anl, align 4
  %i.ann = getelementptr i8, ptr %.4.i.i.i, i64 120
  store i32 %i.aej, ptr %i.anm, align 4
  %i.ano = load ptr, ptr %i.aao, align 8          ; 2 uses
  %i.anp = getelementptr i8, ptr %i.ano, i64 8
  %.val.i162.1.3.i.i.i = load i64, ptr %i.anp, align 8
  %i.anq = getelementptr i8, ptr %i.ano, i64 248
  %.val18.i163.1.3.i.i.i = load i32, ptr %i.anq, align 8
  %i.anr = trunc i64 %.val.i162.1.3.i.i.i to i32
  %i.ans = add i32 %i.anr, 4124
  %i.ant = add i32 %i.ans, %.val18.i163.1.3.i.i.i
  %i.anu = getelementptr i8, ptr %.4.i.i.i, i64 124
  store i32 %i.ant, ptr %i.ann, align 4
  %i.anv = getelementptr i8, ptr %.4.i.i.i, i64 128
  store i32 0, ptr %i.anu, align 4
  %i.anw = load ptr, ptr %i.ma, align 8
  %i.anx = load ptr, ptr %i.anw, align 8
  %i.any = getelementptr i8, ptr %i.anx, i64 1656
  %i.anz = load i8, ptr %i.any, align 8
  %i.aoa = icmp ugt i8 %i.anz, 7
  %spec.select.i159.4.i.i.i = select i1 %i.aoa, i32 348127234, i32 348127233 ; 2 uses
  %i.aob = getelementptr i8, ptr %.4.i.i.i, i64 132
  store i32 %spec.select.i159.4.i.i.i, ptr %i.anv, align 4
  %i.aoc = getelementptr i8, ptr %.4.i.i.i, i64 136
  store i32 %i.aet, ptr %i.aob, align 4
  %i.aod = load ptr, ptr %i.aao, align 8          ; 2 uses
  %i.aoe = getelementptr i8, ptr %i.aod, i64 8
  %.val.i162.4.i.i.i = load i64, ptr %i.aoe, align 8
  %i.aof = getelementptr i8, ptr %i.aod, i64 248
  %.val18.i163.4.i.i.i = load i32, ptr %i.aof, align 8
  %i.aog = trunc i64 %.val.i162.4.i.i.i to i32
  %i.aoh = add i32 %i.aog, 4128
  %i.aoi = add i32 %i.aoh, %.val18.i163.4.i.i.i
  %i.aoj = getelementptr i8, ptr %.4.i.i.i, i64 140
  store i32 %i.aoi, ptr %i.aoc, align 4
  %i.aok = getelementptr i8, ptr %.4.i.i.i, i64 144
  store i32 0, ptr %i.aoj, align 4
  %i.aol = getelementptr i8, ptr %.4.i.i.i, i64 148
  store i32 %spec.select.i159.4.i.i.i, ptr %i.aok, align 4
  %i.aom = getelementptr i8, ptr %.4.i.i.i, i64 152
  store i32 %i.afk, ptr %i.aol, align 4
  %i.aon = load ptr, ptr %i.aao, align 8          ; 2 uses
  %i.aoo = getelementptr i8, ptr %i.aon, i64 8
  %.val.i162.1.4.i.i.i = load i64, ptr %i.aoo, align 8
  %i.aop = getelementptr i8, ptr %i.aon, i64 248
  %.val18.i163.1.4.i.i.i = load i32, ptr %i.aop, align 8
  %i.aoq = trunc i64 %.val.i162.1.4.i.i.i to i32
  %i.aor = add i32 %i.aoq, 4132
  %i.aos = add i32 %i.aor, %.val18.i163.1.4.i.i.i
  %i.aot = getelementptr i8, ptr %.4.i.i.i, i64 156
  store i32 %i.aos, ptr %i.aom, align 4
  %i.aou = getelementptr i8, ptr %.4.i.i.i, i64 160
  store i32 0, ptr %i.aot, align 4
  %i.aov = load ptr, ptr %i.ma, align 8
  %i.aow = load ptr, ptr %i.aov, align 8
  %i.aox = getelementptr i8, ptr %i.aow, i64 1656
  %i.aoy = load i8, ptr %i.aox, align 8
  %i.aoz = icmp ugt i8 %i.aoy, 7
  %spec.select.i166.i.i.i = select i1 %i.aoz, i32 348127234, i32 348127233
  %i.apa = getelementptr i8, ptr %.4.i.i.i, i64 176
  %i.apb = getelementptr i8, ptr %.4.i.i.i, i64 164
  store i32 %spec.select.i166.i.i.i, ptr %i.aou, align 4
  %i.apc = getelementptr i8, ptr %.4.i.i.i, i64 168
  store i32 %.sroa.012.0.i.i.i, ptr %i.apb, align 4
  %i.apd = load ptr, ptr %i.aao, align 8          ; 2 uses
  %i.ape = getelementptr i8, ptr %i.apd, i64 8
  %.val.i169.i.i.i = load i64, ptr %i.ape, align 8
  %i.apf = getelementptr i8, ptr %i.apd, i64 248
  %.val18.i170.i.i.i = load i32, ptr %i.apf, align 8
  %i.apg = trunc i64 %.val.i169.i.i.i to i32
  %i.aph = add i32 %i.apg, 4160
  %i.api = add i32 %i.aph, %.val18.i170.i.i.i
  %i.apj = getelementptr i8, ptr %.4.i.i.i, i64 172
  store i32 %i.api, ptr %i.apc, align 4
  store i32 0, ptr %i.apj, align 4
  store i32 83886080, ptr %i.apa, align 4
  %i.apk = getelementptr i8, ptr %i.zf, i64 216
  %i.apl = load i64, ptr %i.apk, align 8
  call void @__i915_gem_object_flush_map(ptr noundef %i.zf, i64 noundef 0, i64 noundef %i.apl) #18
  call void @__i915_gem_object_release_map(ptr noundef %i.zf) #18
  call void @i915_gem_ww_ctx_fini(ptr noundef nonnull %3) #18
  br label %alloc_noa_wait.exit.thread.i.i.a

bb.gv:                                            ; preds = %bb.gn, %bb.gl, %bb.gk
  %.0136.i.i.i = phi i32 [ %i.aam, %bb.gn ], [ %i.aah, %bb.gk ], [ %i.aai, %bb.gl ] ; 3 uses
  %i.apm = icmp eq i32 %.0136.i.i.i, -35
  br i1 %i.apm, label %bb.gw, label %.thread.i.i.i.a

bb.gw:                                            ; preds = %bb.gv, %.thread176.i.i.i
  %i.apn = call i32 @i915_gem_ww_ctx_backoff(ptr noundef nonnull %3) #18 ; 2 uses
  %.not145.i.i.i = icmp eq i32 %i.apn, 0
  br i1 %.not145.i.i.i, label %bb.gb, label %.sink.split.i.i.i

.thread.i.i.i.a:                                  ; preds = %bb.gv
  call void @i915_gem_ww_ctx_fini(ptr noundef nonnull %3) #18
  %.not146.i.i.i = icmp eq i32 %.0136.i.i.i, 0
  br i1 %.not146.i.i.i, label %alloc_noa_wait.exit.thread.i.i.a, label %bb.gx

.sink.split.i.i.i:                                ; preds = %bb.gw, %12
  %.1137181.ph.i.i.i = phi i32 [ %.0.i.i.i140.i.i, %12 ], [ %i.apn, %bb.gw ]
  call void @i915_gem_ww_ctx_fini(ptr noundef nonnull %3) #18
  br label %bb.gx

bb.gx:                                            ; preds = %.sink.split.i.i.i, %.thread.i.i.i.a
  %.1137181.i.i.i = phi i32 [ %.0136.i.i.i, %.thread.i.i.i.a ], [ %.1137181.ph.i.i.i, %.sink.split.i.i.i ] ; 3 uses
  %i.apo = call i32 asm sideeffect ".pushsection .smp_locks,\22a\22\0A.balign 4\0A.long 671f - .\0A.popsection\0A671:\0A\09lock xaddl $0, $1", "=r,=*m,0,*m,~{memory},~{cc},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i32) %i.zf, i32 -1, ptr elementtype(i32) %i.zf) #19, !srcloc !43 ; 2 uses
  %i.app = icmp eq i32 %i.apo, 1
  br i1 %i.app, label %bb.ha, label %bb.gy

bb.gy:                                            ; preds = %bb.gx
  %i.apq = icmp slt i32 %i.apo, 1
  br i1 %i.apq, label %bb.gz, label %alloc_noa_wait.exit.i.i, !prof !25

bb.gz:                                            ; preds = %bb.gy
  call void @refcount_warn_saturate(ptr noundef %i.zf, i32 noundef 3) #18
  br label %alloc_noa_wait.exit.i.i

bb.ha:                                            ; preds = %bb.gx
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #19, !srcloc !44
  call void @drm_gem_object_free(ptr noundef %i.zf) #18, !callees !45, !inline_history !46
  br label %alloc_noa_wait.exit.i.i

alloc_noa_wait.exit.thread.i.i.a:                 ; preds = %.thread.i.i.i.a, %save_restore_register.exit165.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #19
  br label %bb.hd

alloc_noa_wait.exit.i.i:                          ; preds = %bb.ha, %bb.gz, %bb.gy, %__drm_to_dev.exit.i146.i.i
  %.0.i141.i.i = phi i32 [ %10, %__drm_to_dev.exit.i146.i.i ], [ %.1137181.i.i.i, %bb.ha ], [ %.1137181.i.i.i, %bb.gy ], [ %.1137181.i.i.i, %bb.gz ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #19
  %.not106.i.i = icmp eq i32 %.0.i141.i.i, 0
  br i1 %.not106.i.i, label %bb.hd, label %bb.hb

bb.hb:                                            ; preds = %alloc_noa_wait.exit.i.i
  %i.apr = load ptr, ptr %i.ma, align 8
  %i.aps = load ptr, ptr %i.apr, align 8          ; 2 uses
  %.not.i147.i.i = icmp eq ptr %i.aps, null
  br i1 %.not.i147.i.i, label %__drm_to_dev.exit148.i.i, label %bb.hc

bb.hc:                                            ; preds = %bb.hb
  %i.apt = getelementptr i8, ptr %i.aps, i64 8
  %i.apu = load ptr, ptr %i.apt, align 8
  br label %__drm_to_dev.exit148.i.i

__drm_to_dev.exit148.i.i:                         ; preds = %bb.hc, %bb.hb
  %i.apv = phi ptr [ %i.apu, %bb.hc ], [ null, %bb.hb ]
  call void (ptr, ptr, i32, ptr, ...) @__drm_dev_dbg(ptr noundef null, ptr noundef %i.apv, i32 noundef 1, ptr noundef nonnull @.str.57) #18
  br label %bb.ho

bb.hd:                                            ; preds = %alloc_noa_wait.exit.i.i, %alloc_noa_wait.exit.thread.i.i.a
  %i.apw = load i32, ptr %i.t, align 8
  %i.apx = call ptr @i915_perf_get_oa_config(ptr noundef %i.c, i32 noundef %i.apw) #20 ; 2 uses
  %i.apy = getelementptr i8, ptr %i.ma, i64 80    ; 2 uses
  store ptr %i.apx, ptr %i.apy, align 8
  %.not107.i.i = icmp eq ptr %i.apx, null
  br i1 %.not107.i.i, label %bb.he, label %bb.hg

bb.he:                                            ; preds = %bb.hd
  %i.apz = load ptr, ptr %i.ma, align 8
  %i.aqa = load ptr, ptr %i.apz, align 8          ; 2 uses
  %.not.i149.i.i = icmp eq ptr %i.aqa, null
  br i1 %.not.i149.i.i, label %__drm_to_dev.exit150.i.i, label %bb.hf

bb.hf:                                            ; preds = %bb.he
  %i.aqb = getelementptr i8, ptr %i.aqa, i64 8
  %i.aqc = load ptr, ptr %i.aqb, align 8
  br label %__drm_to_dev.exit150.i.i

__drm_to_dev.exit150.i.i:                         ; preds = %bb.hf, %bb.he
  %i.aqd = phi ptr [ %i.aqc, %bb.hf ], [ null, %bb.he ]
  %i.aqe = load i32, ptr %i.t, align 8
  call void (ptr, ptr, i32, ptr, ...) @__drm_dev_dbg(ptr noundef null, ptr noundef %i.aqd, i32 noundef 1, ptr noundef nonnull @.str.58, i32 noundef %i.aqe) #18
  br label %bb.hn

bb.hg:                                            ; preds = %bb.hd
  %i.aqf = load ptr, ptr %i.nl, align 8
  call fastcc void @intel_engine_pm_get(ptr noundef %i.aqf) #20, !srcloc !50
  %i.aqg = load ptr, ptr %i.nq, align 8
  call void @intel_uncore_forcewake_get(ptr noundef %i.aqg, i32 noundef 65535) #18
  %i.aqh = call fastcc i32 @alloc_oa_buffer(ptr noundef nonnull %i.ma) #20, !srcloc !51 ; 2 uses
  %.not108.i.i = icmp eq i32 %i.aqh, 0
  br i1 %.not108.i.i, label %bb.hh, label %bb.hm

bb.hh:                                            ; preds = %bb.hg
  %i.aqi = getelementptr i8, ptr %i.ma, i64 72    ; 3 uses
  store ptr @i915_oa_stream_ops, ptr %i.aqi, align 8
  %i.aqj = load ptr, ptr %i.nl, align 8
  %i.aqk = getelementptr i8, ptr %i.aqj, i64 8
  %i.aql = load ptr, ptr %i.aqk, align 8
  %i.aqm = getelementptr i8, ptr %i.aql, i64 5304
  %i.aqn = getelementptr inbounds nuw i8, ptr %7, i64 41
  %i.aqo = load i32, ptr %i.aqn, align 1
  store i32 %i.aqo, ptr %i.aqm, align 8
  store volatile ptr %i.ma, ptr %i.mk, align 8
  %i.aqp = call fastcc i32 @i915_perf_stream_enable_sync(ptr noundef nonnull %i.ma) #20, !srcloc !52 ; 2 uses
  %.not109.i.i = icmp eq i32 %i.aqp, 0
  %i.aqq = load ptr, ptr %i.ma, align 8
  %i.aqr = load ptr, ptr %i.aqq, align 8          ; 3 uses
  %.not.i153.i.i = icmp eq ptr %i.aqr, null       ; 2 uses
  br i1 %.not109.i.i, label %bb.hk, label %bb.hi

bb.hi:                                            ; preds = %bb.hh
  br i1 %.not.i153.i.i, label %__drm_to_dev.exit152.i.i, label %bb.hj

bb.hj:                                            ; preds = %bb.hi
  %i.aqs = getelementptr i8, ptr %i.aqr, i64 8
  %i.aqt = load ptr, ptr %i.aqs, align 8
  br label %__drm_to_dev.exit152.i.i

__drm_to_dev.exit152.i.i:                         ; preds = %bb.hj, %bb.hi
  %i.aqu = phi ptr [ %i.aqt, %bb.hj ], [ null, %bb.hi ]
  call void (ptr, ptr, i32, ptr, ...) @__drm_dev_dbg(ptr noundef null, ptr noundef %i.aqu, i32 noundef 1, ptr noundef nonnull @.str.59) #18
  store volatile ptr null, ptr %i.mk, align 8
  %i.aqv = getelementptr i8, ptr %0, i64 3456
  %i.aqw = load ptr, ptr %i.aqv, align 8
  call void %i.aqw(ptr noundef nonnull %i.ma) #18, !inline_history !53
  %i.aqx = getelementptr i8, ptr %i.ma, i64 232
  call void @i915_vma_unpin_and_release(ptr noundef %i.aqx, i32 noundef 1) #18
  %i.aqy = getelementptr i8, ptr %i.ma, i64 240
  store ptr null, ptr %i.aqy, align 8
  br label %bb.hm

bb.hk:                                            ; preds = %bb.hh
  br i1 %.not.i153.i.i, label %bb.hq, label %bb.hl

bb.hl:                                            ; preds = %bb.hk
  %i.aqz = getelementptr i8, ptr %i.aqr, i64 8
  %i.ara = load ptr, ptr %i.aqz, align 8
  br label %bb.hq

bb.hm:                                            ; preds = %__drm_to_dev.exit152.i.i, %bb.hg
  %.092.i.i = phi i32 [ %i.aqh, %bb.hg ], [ %i.aqp, %__drm_to_dev.exit152.i.i ]
  %i.arb = load ptr, ptr %i.nq, align 8
  call void @intel_uncore_forcewake_put(ptr noundef %i.arb, i32 noundef 65535) #18
  %i.arc = load ptr, ptr %i.nl, align 8
  call fastcc void @intel_engine_pm_put(ptr noundef %i.arc) #20, !srcloc !54
  call fastcc void @free_oa_configs(ptr noundef nonnull %i.ma) #20, !srcloc !55
  br label %bb.hn

bb.hn:                                            ; preds = %bb.hm, %__drm_to_dev.exit150.i.i
  %.1.i.i = phi i32 [ %.092.i.i, %bb.hm ], [ -22, %__drm_to_dev.exit150.i.i ]
  %i.ard = getelementptr i8, ptr %i.ma, i64 264
  call void @i915_vma_unpin_and_release(ptr noundef %i.ard, i32 noundef 0) #18
  br label %bb.ho

bb.ho:                                            ; preds = %bb.hn, %__drm_to_dev.exit148.i.i
  %.2.i.i = phi i32 [ %.0.i141.i.i, %__drm_to_dev.exit148.i.i ], [ %.1.i.i, %bb.hn ] ; 2 uses
  %i.are = load ptr, ptr %i.mb, align 8
  %.not110.i.i = icmp eq ptr %i.are, null
  br i1 %.not110.i.i, label %i915_oa_stream_init.exit.thread.i, label %bb.hp

bb.hp:                                            ; preds = %bb.ho
  call fastcc void @oa_put_render_ctx_id(ptr noundef nonnull %i.ma) #20, !srcloc !56
  br label %i915_oa_stream_init.exit.thread.i

bb.hq:                                            ; preds = %bb.hl, %bb.hk
  %i.arf = phi ptr [ %i.ara, %bb.hl ], [ null, %bb.hk ]
  %i.arg = load ptr, ptr %i.apy, align 8
  %i.arh = getelementptr i8, ptr %i.arg, i64 8
  call void (ptr, ptr, i32, ptr, ...) @__drm_dev_dbg(ptr noundef null, ptr noundef %i.arf, i32 noundef 1, ptr noundef nonnull @.str.60, ptr noundef %i.arh) #18
  %i.ari = getelementptr i8, ptr %i.ma, i64 112
  call void @hrtimer_setup(ptr noundef %i.ari, ptr noundef nonnull @oa_poll_check_timer_cb, i32 noundef 1, i32 noundef 1) #18
  %i.arj = getelementptr i8, ptr %i.ma, i64 192
  call void @__init_waitqueue_head(ptr noundef %i.arj, ptr noundef nonnull @.str.61, ptr noundef nonnull @i915_oa_stream_init.__key) #18
  %i.ark = getelementptr i8, ptr %i.ma, i64 252
  store i32 0, ptr %i.ark, align 4
  %i.arl = getelementptr i8, ptr %i.ma, i64 24
  call void @mutex_init_generic(ptr noundef %i.arl) #18
  %i.arm = load i32, ptr %i.oo, align 8
  %i.arn = load i32, ptr %7, align 8
  %.not87.i = icmp eq i32 %i.arm, %i.arn
  br i1 %.not87.i, label %.critedge.i29, label %bb.hr, !prof !12

bb.hr:                                            ; preds = %bb.hq
  call void asm sideeffect "972: nop\0A\09.pushsection .discard.annotate_insn, \22M\22, @progbits, 8; .long 972b - ., 3; .popsection", "i,~{dirflag},~{fpsr},~{flags}"(i32 972) #19, !srcloc !57
  call void asm sideeffect "1:\09 ud2 \0A.pushsection __bug_table,\22aw\22\0A\09912: .pushsection .discard.annotate_data, \22M\22, @progbits, 8; .long 912b - ., 1; .popsection\0A\092:\0A\09\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::format\0A\09.long ${1:c} - .\09# bug_entry::file\0A\09.word ${2:c}\09# bug_entry::line\0A\09.word ${3:c}\09# bug_entry::flags\0A\09.org 2b + ${4:c}\0A.popsection\0A.pushsection .discard.annotate_insn, \22M\22, @progbits, 8; .long 1b - ., 8; .popsection", "i,i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr nonnull @.str.44, ptr nonnull @.str.24, i32 3893, i32 2305, i64 16) #19, !srcloc !58
  call void asm sideeffect "973: nop\0A\09.pushsection .discard.annotate_insn, \22M\22, @progbits, 8; .long 973b - ., 4; .popsection", "i,~{dirflag},~{fpsr},~{flags}"(i32 973) #19, !srcloc !59
  br label %bb.hy

.critedge.i29:                                    ; preds = %bb.hq
  %i.aro = load i32, ptr %1, align 8              ; 2 uses
  %i.arp = shl i32 %i.aro, 19
  %spec.select92.i = and i32 %i.arp, 524288
  %i.arq = shl i32 %i.aro, 10
  %i.arr = and i32 %i.arq, 2048
  %.1.i = or disjoint i32 %spec.select92.i, %i.arr
  %i.ars = call i32 @anon_inode_getfd(ptr noundef nonnull @.str.49, ptr noundef nonnull @fops, ptr noundef nonnull %i.ma, i32 noundef %.1.i) #18 ; 3 uses
  %i.art = icmp slt i32 %i.ars, 0
  br i1 %i.art, label %bb.hy, label %bb.hs

bb.hs:                                            ; preds = %.critedge.i29
  %i.aru = load i32, ptr %1, align 8
  %i.arv = and i32 %i.aru, 4
  %.not90.i = icmp eq i32 %i.arv, 0
  br i1 %.not90.i, label %bb.ht, label %i915_perf_enable_locked.exit.i

bb.ht:                                            ; preds = %bb.hs
  %i.arw = getelementptr i8, ptr %i.ma, i64 64    ; 2 uses
  %i.arx = load i8, ptr %i.arw, align 8, !range !16, !noundef !17
  %i.ary = trunc nuw i8 %i.arx to i1
  br i1 %i.ary, label %i915_perf_enable_locked.exit.i, label %bb.hu

bb.hu:                                            ; preds = %bb.ht
  store i8 1, ptr %i.arw, align 8
  %i.arz = load ptr, ptr %i.aqi, align 8
  %i.asa = load ptr, ptr %i.arz, align 8          ; 2 uses
  %.not.i99.i = icmp eq ptr %i.asa, null
  br i1 %.not.i99.i, label %bb.hw, label %bb.hv

bb.hv:                                            ; preds = %bb.hu
  call void %i.asa(ptr noundef nonnull %i.ma) #18, !inline_history !60
  br label %bb.hw

bb.hw:                                            ; preds = %bb.hv, %bb.hu
  %i.asb = load i8, ptr %i.os, align 1, !range !16, !noundef !17
  %i.asc = trunc nuw i8 %i.asb to i1
  br i1 %i.asc, label %bb.hx, label %i915_perf_enable_locked.exit.i

bb.hx:                                            ; preds = %bb.hw
  %i.asd = getelementptr i8, ptr %i.ma, i64 96
  %i.ase = load ptr, ptr %i.asd, align 8
  %i.asf = getelementptr i8, ptr %i.ase, i64 137  ; 2 uses
  call void asm sideeffect ".pushsection .smp_locks,\22a\22\0A.balign 4\0A.long 671f - .\0A.popsection\0A671:\0A\09lock orb ${1:b},$0", "=*m,iq,*m,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i8) %i.asf, i32 1, ptr elementtype(i8) %i.asf) #19, !srcloc !61
  br label %i915_perf_enable_locked.exit.i

i915_perf_enable_locked.exit.i:                   ; preds = %bb.hx, %bb.hw, %bb.ht, %bb.hs
  %i.asg = load ptr, ptr %i.c, align 8
  call void @drm_dev_get(ptr noundef %i.asg) #18
  br label %i915_perf_open_ioctl_locked.exit

bb.hy:                                            ; preds = %.critedge.i29, %bb.hr
  %.176.i = phi i32 [ -19, %bb.hr ], [ %i.ars, %.critedge.i29 ] ; 2 uses
  %i.ash = load ptr, ptr %i.aqi, align 8
  %i.asi = getelementptr i8, ptr %i.ash, i64 40
  %i.asj = load ptr, ptr %i.asi, align 8          ; 2 uses
  %.not91.i = icmp eq ptr %i.asj, null
  br i1 %.not91.i, label %i915_oa_stream_init.exit.thread.i, label %bb.hz

bb.hz:                                            ; preds = %bb.hy
  call void %i.asj(ptr noundef nonnull %i.ma) #18, !inline_history !62
  br label %i915_oa_stream_init.exit.thread.i

i915_oa_stream_init.exit.thread.i:                ; preds = %bb.hz, %bb.hy, %bb.hp, %bb.ho, %__drm_to_dev.exit138.i.i, %dev_name.exit133.i.i, %__drm_to_dev.exit120.i.i, %__drm_to_dev.exit118.i.i, %__drm_to_dev.exit116.i.i, %__drm_to_dev.exit114.i.i, %__drm_to_dev.exit112.i.i, %__drm_to_dev.exit.i.i
  %.277.i = phi i32 [ %.176.i, %bb.hy ], [ %.176.i, %bb.hz ], [ %.2.i.i, %bb.ho ], [ %.2.i.i, %bb.hp ], [ -22, %__drm_to_dev.exit112.i.i ], [ -22, %__drm_to_dev.exit114.i.i ], [ -19, %__drm_to_dev.exit116.i.i ], [ -22, %__drm_to_dev.exit120.i.i ], [ -22, %dev_name.exit133.i.i ], [ %.0.i1353.i.i, %__drm_to_dev.exit138.i.i ], [ -22, %__drm_to_dev.exit.i.i ], [ -16, %__drm_to_dev.exit118.i.i ]
  call void @kfree(ptr noundef nonnull %i.ma) #18
  br label %bb.ia

bb.ia:                                            ; preds = %i915_oa_stream_init.exit.thread.i, %perfmon_capable.exit.thread.i, %__drm_to_dev.exit96.i
  %.3.i = phi i32 [ %.277.i, %i915_oa_stream_init.exit.thread.i ], [ -13, %__drm_to_dev.exit96.i ], [ -12, %perfmon_capable.exit.thread.i ] ; 4 uses
  br i1 %i.kh, label %bb.ib, label %i915_perf_open_ioctl_locked.exit

bb.ib:                                            ; preds = %bb.ia
  %i.ask = getelementptr i8, ptr %i.kj, i64 112   ; 4 uses
  %i.asl = call i32 asm sideeffect ".pushsection .smp_locks,\22a\22\0A.balign 4\0A.long 671f - .\0A.popsection\0A671:\0A\09lock xaddl $0, $1", "=r,=*m,0,*m,~{memory},~{cc},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i32) %i.ask, i32 -1, ptr elementtype(i32) %i.ask) #19, !srcloc !43 ; 2 uses
  %i.asm = icmp eq i32 %i.asl, 1
  br i1 %i.asm, label %bb.ie, label %bb.ic

bb.ic:                                            ; preds = %bb.ib
  %i.asn = icmp slt i32 %i.asl, 1
  br i1 %i.asn, label %bb.id, label %i915_perf_open_ioctl_locked.exit, !prof !25

bb.id:                                            ; preds = %bb.ic
  call void @refcount_warn_saturate(ptr noundef %i.ask, i32 noundef 3) #18
  br label %i915_perf_open_ioctl_locked.exit

bb.ie:                                            ; preds = %bb.ib
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #19, !srcloc !44
  call void @i915_gem_context_release(ptr noundef %i.ask) #18, !callees !45, !inline_history !46
  br label %i915_perf_open_ioctl_locked.exit

i915_perf_open_ioctl_locked.exit:                 ; preds = %bb.cb, %__drm_to_dev.exit94.i, %i915_perf_enable_locked.exit.i, %bb.ia, %bb.ic, %bb.id, %bb.ie
  %.0.i = phi i32 [ %i.ars, %i915_perf_enable_locked.exit.i ], [ %i.jw, %bb.cb ], [ %.3.i, %bb.ia ], [ -22, %__drm_to_dev.exit94.i ], [ %.3.i, %bb.ic ], [ %.3.i, %bb.id ], [ %.3.i, %bb.ie ]
  call void @mutex_unlock(ptr noundef %i.jh) #18
  br label %bb.if

bb.if:                                            ; preds = %read_properties_unlocked.exit.thread, %bb.a, %i915_perf_open_ioctl_locked.exit, %__drm_to_dev.exit
  %.0 = phi i32 [ -22, %__drm_to_dev.exit ], [ -524, %bb.a ], [ %.0.i, %i915_perf_open_ioctl_locked.exit ], [ %.2.i.ph, %read_properties_unlocked.exit.thread ]
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #19
  ret i32 %.0
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #4

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @__drm_dev_dbg(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @mutex_lock(ptr noundef) local_unnamed_addr #2

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #2

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define dso_local void @i915_perf_register(ptr nofree noundef captures(none) %0) local_unnamed_addr #0 align 16 prefalign(16) {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 3280
  %i.b = load ptr, ptr %i.a, align 8
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr i8, ptr %0, i64 3528
  %.val = load ptr, ptr %i.c, align 8
  %i.d = getelementptr i8, ptr %.val, i64 5280    ; 2 uses
  tail call void @mutex_lock(ptr noundef %i.d) #18
  %i.e = getelementptr i8, ptr %0, i64 72
  %i.f = load ptr, ptr %i.e, align 8
  %i.g = getelementptr i8, ptr %i.f, i64 8
  %i.h = load ptr, ptr %i.g, align 8
  %i.i = tail call ptr @kobject_create_and_add(ptr noundef nonnull @.str.1, ptr noundef %i.h) #18
  %i.j = getelementptr i8, ptr %0, i64 3288
  store ptr %i.i, ptr %i.j, align 8
  tail call void @mutex_unlock(ptr noundef %i.d) #18
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  ret void
}

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local ptr @kobject_create_and_add(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define dso_local void @i915_perf_unregister(ptr nofree noundef captures(none) %0) local_unnamed_addr #0 align 16 prefalign(16) {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 3288       ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8              ; 2 uses
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @kobject_put(ptr noundef nonnull %i.b) #18
  store ptr null, ptr %i.a, align 8
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  ret void
}

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @kobject_put(ptr noundef) local_unnamed_addr #2

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define dso_local i32 @i915_perf_add_config_ioctl(ptr noundef %0, ptr noundef %1, ptr nofree noundef readnone captures(none) %2) local_unnamed_addr #0 align 16 prefalign(16) {
bb.a:
  %i.a = alloca i32, align 4                      ; 10 uses
end_hunk_2
begin_hunk_3_@i915_perf_ioctl:bb.a
  tail call void @kfree(ptr noundef %i.bq) #18
  %i.br = getelementptr i8, ptr %.137.i.i, i64 208
  tail call void @kvfree_call_rcu(ptr noundef %i.br, ptr noundef nonnull %.137.i.i) #18
  br label %i915_perf_ioctl_locked.exit

i915_perf_ioctl_locked.exit:                      ; preds = %bb.a, %bb.b, %bb.e, %bb.f, %bb.g, %bb.j, %bb.k, %i915_perf_get_oa_config.exit.thread.i.i, %bb.r, %bb.s, %bb.t, %bb.u
  %.0.i = phi i64 [ 0, %bb.k ], [ -22, %bb.a ], [ 0, %bb.f ], [ 0, %bb.b ], [ 0, %bb.e ], [ 0, %bb.g ], [ 0, %bb.j ], [ -22, %i915_perf_get_oa_config.exit.thread.i.i ], [ %.12335.i.i, %bb.u ], [ %i.ag, %bb.r ], [ %.12335.i.i, %bb.s ], [ %.12335.i.i, %bb.t ]
  tail call void @mutex_unlock(ptr noundef %i.c) #18
  ret i64 %.0.i
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal noundef i32 @i915_perf_release(ptr nofree readnone captures(none) %0, ptr nofree noundef readonly captures(none) %1) #0 align 16 prefalign(16) {
bb.a:
  %i.a = getelementptr i8, ptr %1, i64 24
  %i.b = load ptr, ptr %i.a, align 8              ; 11 uses
  %i.c = load ptr, ptr %i.b, align 8
  %i.d = getelementptr i8, ptr %i.b, i64 16
  %i.e = load ptr, ptr %i.d, align 8
  %i.f = getelementptr i8, ptr %i.e, i64 8
  %i.g = load ptr, ptr %i.f, align 8
  %i.h = getelementptr i8, ptr %i.g, i64 5280     ; 2 uses
  tail call void @mutex_lock(ptr noundef %i.h) #18
  %i.i = getelementptr i8, ptr %i.b, i64 64       ; 2 uses
  %i.j = load i8, ptr %i.i, align 8, !range !16, !noundef !17
  %i.k = trunc nuw i8 %i.j to i1
  br i1 %i.k, label %bb.b, label %i915_perf_disable_locked.exit.i

bb.b:                                             ; preds = %bb.a
  store i8 0, ptr %i.i, align 8
  %i.l = getelementptr i8, ptr %i.b, i64 65
  %i.m = load i8, ptr %i.l, align 1, !range !16, !noundef !17
  %i.n = trunc nuw i8 %i.m to i1
  br i1 %i.n, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.o = getelementptr i8, ptr %i.b, i64 96
  %i.p = load ptr, ptr %i.o, align 8
  %i.q = getelementptr i8, ptr %i.p, i64 137      ; 2 uses
  tail call void asm sideeffect ".pushsection .smp_locks,\22a\22\0A.balign 4\0A.long 671f - .\0A.popsection\0A671:\0A\09lock andb ${1:b},$0", "=*m,iq,*m,~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i8) %i.q, i32 -2, ptr elementtype(i8) %i.q) #19, !srcloc !136
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.r = getelementptr i8, ptr %i.b, i64 72
  %i.s = load ptr, ptr %i.r, align 8
  %i.t = getelementptr i8, ptr %i.s, i64 8
  %i.u = load ptr, ptr %i.t, align 8              ; 2 uses
  %.not.i.i = icmp eq ptr %i.u, null
  br i1 %.not.i.i, label %i915_perf_disable_locked.exit.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  tail call void %i.u(ptr noundef %i.b) #18, !inline_history !140
  br label %i915_perf_disable_locked.exit.i

i915_perf_disable_locked.exit.i:                  ; preds = %bb.e, %bb.d, %bb.a
  %i.v = getelementptr i8, ptr %i.b, i64 72
  %i.w = load ptr, ptr %i.v, align 8
  %i.x = getelementptr i8, ptr %i.w, i64 40
  %i.y = load ptr, ptr %i.x, align 8              ; 2 uses
  %.not.i = icmp eq ptr %i.y, null
  br i1 %.not.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %i915_perf_disable_locked.exit.i
  tail call void %i.y(ptr noundef %i.b) #18, !inline_history !141
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %i915_perf_disable_locked.exit.i
  %i.z = getelementptr i8, ptr %i.b, i64 56
  %i.aa = load ptr, ptr %i.z, align 8             ; 2 uses
  %.not9.i = icmp eq ptr %i.aa, null
  br i1 %.not9.i, label %i915_perf_destroy_locked.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ab = getelementptr i8, ptr %i.aa, i64 112    ; 4 uses
  %i.ac = tail call i32 asm sideeffect ".pushsection .smp_locks,\22a\22\0A.balign 4\0A.long 671f - .\0A.popsection\0A671:\0A\09lock xaddl $0, $1", "=r,=*m,0,*m,~{memory},~{cc},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i32) %i.ab, i32 -1, ptr elementtype(i32) %i.ab) #19, !srcloc !43 ; 2 uses
  %i.ad = icmp eq i32 %i.ac, 1
  br i1 %i.ad, label %bb.k, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ae = icmp slt i32 %i.ac, 1
  br i1 %i.ae, label %bb.j, label %i915_perf_destroy_locked.exit, !prof !25

bb.j:                                             ; preds = %bb.i
  tail call void @refcount_warn_saturate(ptr noundef %i.ab, i32 noundef 3) #18
  br label %i915_perf_destroy_locked.exit

bb.k:                                             ; preds = %bb.h
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #19, !srcloc !44
  tail call void @i915_gem_context_release(ptr noundef %i.ab) #18, !callees !45, !inline_history !46
  br label %i915_perf_destroy_locked.exit

i915_perf_destroy_locked.exit:                    ; preds = %bb.g, %bb.i, %bb.j, %bb.k
  tail call void @kfree(ptr noundef %i.b) #18
  tail call void @mutex_unlock(ptr noundef %i.h) #18
  %i.af = load ptr, ptr %i.c, align 8
  tail call void @drm_dev_put(ptr noundef %i.af) #18
  ret i32 0
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal fastcc i32 @emit_oa_config(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) unnamed_addr #0 align 16 prefalign(16) {
bb.a:
  %4 = alloca %struct.i915_gem_ww_ctx, align 8    ; 15 uses
  %5 = alloca %struct.i915_gem_ww_ctx, align 8    ; 13 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #19
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %5, i8 0, i64 56, i1 false), !annotation !19
  %i.a = getelementptr i8, ptr %0, i64 88         ; 6 uses
  %.01725.i = load ptr, ptr %i.a, align 8         ; 2 uses
  %.not26.i = icmp eq ptr %.01725.i, null
  br i1 %.not26.i, label %._crit_edge.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.a
  %i.b = getelementptr i8, ptr %1, i64 8
  br label %bb.b

bb.b:                                             ; preds = %bb.d, %.lr.ph.i
  %.01727.i = phi ptr [ %.01725.i, %.lr.ph.i ], [ %.017.i, %bb.d ] ; 3 uses
  %i.c = getelementptr i8, ptr %.01727.i, i64 8
  %i.d = load ptr, ptr %i.c, align 8              ; 2 uses
  %i.e = icmp eq ptr %i.d, %1
  br i1 %i.e, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.f = getelementptr i8, ptr %i.d, i64 8
  %bcmp.i = tail call i32 @bcmp(ptr noundef dereferenceable(37) %i.f, ptr noundef dereferenceable(37) %i.b, i64 37)
  %i.g = icmp eq i32 %bcmp.i, 0
  br i1 %i.g, label %.loopexit.i, label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.017.i = load ptr, ptr %.01727.i, align 8      ; 2 uses
  %.not.i46 = icmp eq ptr %.017.i, null
  br i1 %.not.i46, label %._crit_edge.i, label %bb.b, !llvm.loop !142

._crit_edge.i:                                    ; preds = %bb.d, %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #19
  %i.h = load ptr, ptr getelementptr inbounds nuw (i8, ptr @kmalloc_caches, i64 40), align 8
  %i.i = tail call noalias align 8 dereferenceable_or_null(24) ptr @__kmalloc_cache_noprof(ptr noundef %i.h, i32 noundef 3520, i64 noundef 24) #22 ; 11 uses
  %.not.i.i = icmp eq ptr %i.i, null
  br i1 %.not.i.i, label %get_oa_vma.exit.thread, label %bb.e

get_oa_vma.exit.thread:                           ; preds = %._crit_edge.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #19
  br label %bb.ai

bb.e:                                             ; preds = %._crit_edge.i
  %i.j = getelementptr i8, ptr %1, i64 64         ; 2 uses
  %i.k = load i32, ptr %i.j, align 8              ; 3 uses
  %i.l = icmp sgt i32 %i.k, 0
  br i1 %i.l, label %bb.f, label %num_lri_dwords.exit.i.i

bb.f:                                             ; preds = %bb.e
  %i.m = add nuw i32 %i.k, 125
  %i.n = sdiv i32 %i.m, 126
  %i.o = shl nuw i32 %i.k, 1
  %i.p = add i32 %i.n, %i.o
  %i.q = sext i32 %i.p to i64
  br label %num_lri_dwords.exit.i.i

num_lri_dwords.exit.i.i:                          ; preds = %bb.f, %bb.e
  %.0.i.i.i = phi i64 [ %i.q, %bb.f ], [ 0, %bb.e ]
  %i.r = getelementptr i8, ptr %1, i64 80         ; 2 uses
  %i.s = load i32, ptr %i.r, align 8              ; 3 uses
  %i.t = icmp sgt i32 %i.s, 0
  br i1 %i.t, label %bb.g, label %num_lri_dwords.exit68.i.i

bb.g:                                             ; preds = %num_lri_dwords.exit.i.i
  %i.u = add nuw i32 %i.s, 125
  %i.v = sdiv i32 %i.u, 126
  %i.w = shl nuw i32 %i.s, 1
  %i.x = add i32 %i.v, %i.w
  %i.y = sext i32 %i.x to i64
  br label %num_lri_dwords.exit68.i.i

num_lri_dwords.exit68.i.i:                        ; preds = %bb.g, %num_lri_dwords.exit.i.i
  %.0.i67.i.i = phi i64 [ %i.y, %bb.g ], [ 0, %num_lri_dwords.exit.i.i ]
  %i.z = add nsw i64 %.0.i67.i.i, %.0.i.i.i
  %i.aa = getelementptr i8, ptr %1, i64 96        ; 2 uses
  %i.ab = load i32, ptr %i.aa, align 8            ; 3 uses
  %i.ac = icmp sgt i32 %i.ab, 0
  br i1 %i.ac, label %bb.h, label %num_lri_dwords.exit70.i.i

bb.h:                                             ; preds = %num_lri_dwords.exit68.i.i
  %i.ad = add nuw i32 %i.ab, 125
  %i.ae = sdiv i32 %i.ad, 126
  %i.af = shl nuw i32 %i.ab, 1
  %i.ag = add i32 %i.ae, %i.af
  %i.ah = sext i32 %i.ag to i64
  br label %num_lri_dwords.exit70.i.i

num_lri_dwords.exit70.i.i:                        ; preds = %bb.h, %num_lri_dwords.exit68.i.i
  %.0.i69.i.i = phi i64 [ %i.ah, %bb.h ], [ 0, %num_lri_dwords.exit68.i.i ]
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %4, i8 0, i64 56, i1 false), !annotation !19
  %i.ai = add nsw i64 %i.z, %.0.i69.i.i
  %i.aj = shl nsw i64 %i.ai, 2
  %i.ak = add nsw i64 %i.aj, 4104
  %i.al = and i64 %i.ak, -4096
  %i.am = load ptr, ptr %0, align 8
  %i.an = load ptr, ptr %i.am, align 8
  %i.ao = tail call ptr @i915_gem_object_create_shmem(ptr noundef %i.an, i64 noundef %i.al) #18 ; 21 uses
  %i.ap = icmp ugt ptr %i.ao, inttoptr (i64 -4096 to ptr)
  br i1 %i.ap, label %6, label %bb.i

6:                                                ; preds = %num_lri_dwords.exit70.i.i
  %7 = ptrtoint ptr %i.ao to i64
  %8 = trunc i64 %7 to i32
  br label %i915_gem_object_put.exit.i.i

bb.i:                                             ; preds = %num_lri_dwords.exit70.i.i
  call void @i915_gem_ww_ctx_init(ptr noundef nonnull %4, i1 noundef zeroext true) #18
  %i.aq = getelementptr inbounds nuw i8, ptr %4, i64 48
  %i.ar = getelementptr i8, ptr %i.ao, i64 248
  %i.as = getelementptr i8, ptr %i.ao, i64 544    ; 3 uses
  %i.at = getelementptr inbounds nuw i8, ptr %4, i64 24
  %i.au = getelementptr inbounds nuw i8, ptr %4, i64 32 ; 2 uses
  %i.av = getelementptr i8, ptr %i.ao, i64 552
  %i.aw = getelementptr i8, ptr %1, i64 56
  %i.ax = getelementptr i8, ptr %1, i64 72
  %i.ay = getelementptr i8, ptr %1, i64 88
  %i.az = getelementptr i8, ptr %0, i64 264
  %i.ba = getelementptr i8, ptr %i.ao, i64 216
  %i.bb = getelementptr i8, ptr %0, i64 16
  %i.bc = getelementptr i8, ptr %i.i, i64 16
  %i.bd = getelementptr inbounds nuw i8, ptr %4, i64 40
  br label %bb.j

bb.j:                                             ; preds = %bb.ab, %bb.i
  %i.be = load i8, ptr %i.aq, align 8, !range !16, !noundef !17
  %i.bf = trunc nuw i8 %i.be to i1
  %i.bg = load ptr, ptr %i.ar, align 8            ; 2 uses
  br i1 %i.bf, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.bh = call i32 @ww_mutex_lock_interruptible(ptr noundef %i.bg, ptr noundef nonnull %4) #18
  br label %bb.m

bb.l:                                             ; preds = %bb.j
  %i.bi = call i32 @ww_mutex_lock(ptr noundef %i.bg, ptr noundef nonnull %4) #18
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k
  %.0.i.i.i.i = phi i32 [ %i.bh, %bb.k ], [ %i.bi, %bb.l ] ; 4 uses
  %9 = icmp eq i32 %.0.i.i.i.i, 0
  br i1 %9, label %bb.n, label %10

bb.n:                                             ; preds = %bb.m
  %i.bj = call i32 asm sideeffect ".pushsection .smp_locks,\22a\22\0A.balign 4\0A.long 671f - .\0A.popsection\0A671:\0A\09lock xaddl $0, $1", "=r,=*m,0,*m,~{memory},~{cc},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i32) %i.ao, i32 1, ptr elementtype(i32) %i.ao) #19, !srcloc !43 ; 3 uses
  %.not.i.i.i.i.i.i.i.i.i.i = icmp eq i32 %i.bj, 0
  br i1 %.not.i.i.i.i.i.i.i.i.i.i, label %.sink.split.i.i.i.i.i.i.i.i.i.i, label %bb.o, !prof !25

bb.o:                                             ; preds = %bb.n
  %i.bk = add i32 %i.bj, 1
  %i.bl = or i32 %i.bk, %i.bj
  %.not10.i.i.i.i.i.i.i.i.i.i = icmp sgt i32 %i.bl, -1
  br i1 %.not10.i.i.i.i.i.i.i.i.i.i, label %i915_gem_object_get.exit.i.i.i.i, label %.sink.split.i.i.i.i.i.i.i.i.i.i, !prof !12

.sink.split.i.i.i.i.i.i.i.i.i.i:                  ; preds = %bb.o, %bb.n
  %.sink.i.i.i.i.i.i.i.i.i.i = phi i32 [ 2, %bb.n ], [ 1, %bb.o ]
  call void @refcount_warn_saturate(ptr noundef %i.ao, i32 noundef %.sink.i.i.i.i.i.i.i.i.i.i) #18
  br label %i915_gem_object_get.exit.i.i.i.i

i915_gem_object_get.exit.i.i.i.i:                 ; preds = %.sink.split.i.i.i.i.i.i.i.i.i.i, %bb.o
  %i.bm = load ptr, ptr %i.au, align 8            ; 2 uses
  store ptr %i.as, ptr %i.au, align 8
  store ptr %i.at, ptr %i.as, align 8
  store ptr %i.bm, ptr %i.av, align 8
  store volatile ptr %i.as, ptr %i.bm, align 8
  br label %10

10:                                               ; preds = %i915_gem_object_get.exit.i.i.i.i, %bb.m
  %11 = icmp eq i32 %.0.i.i.i.i, -114
  %spec.store.select.i6.i.i.i = select i1 %11, i32 0, i32 %.0.i.i.i.i
  switch i32 %spec.store.select.i6.i.i.i, label %.sink.split.i.i [
    i32 -35, label %bb.p
    i32 0, label %bb.r
  ]

bb.p:                                             ; preds = %10
  %i.bn = call i32 asm sideeffect ".pushsection .smp_locks,\22a\22\0A.balign 4\0A.long 671f - .\0A.popsection\0A671:\0A\09lock xaddl $0, $1", "=r,=*m,0,*m,~{memory},~{cc},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i32) %i.ao, i32 1, ptr elementtype(i32) %i.ao) #19, !srcloc !43 ; 3 uses
  %.not.i.i.i.i.i.i19.i7.i.i.i = icmp eq i32 %i.bn, 0
  br i1 %.not.i.i.i.i.i.i19.i7.i.i.i, label %.sink.split.i.i.i.i.i.i21.i9.i.i.i, label %bb.q, !prof !25

bb.q:                                             ; preds = %bb.p
  %i.bo = add i32 %i.bn, 1
  %i.bp = or i32 %i.bo, %i.bn
  %.not10.i.i.i.i.i.i20.i8.i.i.i = icmp sgt i32 %i.bp, -1
  br i1 %.not10.i.i.i.i.i.i20.i8.i.i.i, label %llist_add.exit.thread96.i.i, label %.sink.split.i.i.i.i.i.i21.i9.i.i.i, !prof !12

.sink.split.i.i.i.i.i.i21.i9.i.i.i:               ; preds = %bb.q, %bb.p
  %.sink.i.i.i.i.i.i22.i10.i.i.i = phi i32 [ 2, %bb.p ], [ 1, %bb.q ]
  call void @refcount_warn_saturate(ptr noundef %i.ao, i32 noundef %.sink.i.i.i.i.i.i22.i10.i.i.i) #18
  br label %llist_add.exit.thread96.i.i

llist_add.exit.thread96.i.i:                      ; preds = %.sink.split.i.i.i.i.i.i21.i9.i.i.i, %bb.q
  store ptr %i.ao, ptr %i.bd, align 8
  br label %bb.ab

bb.r:                                             ; preds = %10
  %i.bq = call ptr @i915_gem_object_pin_map(ptr noundef %i.ao, i32 noundef 0) #18 ; 4 uses
  %i.br = icmp ugt ptr %i.bq, inttoptr (i64 -4096 to ptr)
  br i1 %i.br, label %llist_add.exit.i.i, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.bs = load ptr, ptr %i.aw, align 8
  %i.bt = load i32, ptr %i.j, align 8             ; 3 uses
  %.not.i.i.i = icmp eq i32 %i.bt, 0
  br i1 %.not.i.i.i, label %write_cs_mi_lri.exit.i.i, label %.lr.ph.preheader.i.i.i

.lr.ph.preheader.i.i.i:                           ; preds = %bb.s
  %wide.trip.count.i.i.i = zext i32 %i.bt to i64
  br label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.u, %.lr.ph.preheader.i.i.i
  %indvars.iv.i.i.i = phi i64 [ 0, %.lr.ph.preheader.i.i.i ], [ %indvars.iv.next.i.i.i, %bb.u ] ; 3 uses
  %.022.i.i.i = phi ptr [ %i.bq, %.lr.ph.preheader.i.i.i ], [ %i.ci, %bb.u ] ; 3 uses
  %i.bu = trunc nuw i64 %indvars.iv.i.i.i to i32  ; 2 uses
  %i.bv = urem i32 %i.bu, 126
  %i.bw = icmp eq i32 %i.bv, 0
  br i1 %i.bw, label %bb.t, label %bb.u

bb.t:                                             ; preds = %.lr.ph.i.i.i
  %i.bx = sub i32 %i.bt, %i.bu
  %i.by = call i32 @llvm.umin.i32(i32 %i.bx, i32 126)
  %i.bz = shl nuw nsw i32 %i.by, 1
  %i.ca = add nsw i32 %i.bz, -1
  %i.cb = or i32 %i.ca, 285212672
  %i.cc = getelementptr i8, ptr %.022.i.i.i, i64 4
  store i32 %i.cb, ptr %.022.i.i.i, align 4
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %.lr.ph.i.i.i
  %.1.i.i.i = phi ptr [ %i.cc, %bb.t ], [ %.022.i.i.i, %.lr.ph.i.i.i ] ; 3 uses
  %i.cd = getelementptr [8 x i8], ptr %i.bs, i64 %indvars.iv.i.i.i ; 2 uses
  %i.ce = load i32, ptr %i.cd, align 4
  %i.cf = getelementptr i8, ptr %.1.i.i.i, i64 4
  store i32 %i.ce, ptr %.1.i.i.i, align 4
  %i.cg = getelementptr i8, ptr %i.cd, i64 4
  %i.ch = load i32, ptr %i.cg, align 4
  %i.ci = getelementptr i8, ptr %.1.i.i.i, i64 8  ; 2 uses
  store i32 %i.ch, ptr %i.cf, align 4
  %indvars.iv.next.i.i.i = add nuw nsw i64 %indvars.iv.i.i.i, 1 ; 2 uses
  %exitcond.not.i.i.i = icmp eq i64 %indvars.iv.next.i.i.i, %wide.trip.count.i.i.i
  br i1 %exitcond.not.i.i.i, label %write_cs_mi_lri.exit.i.i, label %.lr.ph.i.i.i, !llvm.loop !143

write_cs_mi_lri.exit.i.i:                         ; preds = %bb.u, %bb.s
  %.0.lcssa.i.i.i = phi ptr [ %i.bq, %bb.s ], [ %i.ci, %bb.u ] ; 2 uses
  %i.cj = load ptr, ptr %i.ax, align 8
  %i.ck = load i32, ptr %i.r, align 8             ; 3 uses
  %.not.i71.i.i = icmp eq i32 %i.ck, 0
  br i1 %.not.i71.i.i, label %write_cs_mi_lri.exit81.i.i, label %.lr.ph.preheader.i72.i.i

.lr.ph.preheader.i72.i.i:                         ; preds = %write_cs_mi_lri.exit.i.i
  %wide.trip.count.i73.i.i = zext i32 %i.ck to i64
  br label %.lr.ph.i74.i.i

.lr.ph.i74.i.i:                                   ; preds = %bb.w, %.lr.ph.preheader.i72.i.i
  %indvars.iv.i75.i.i = phi i64 [ 0, %.lr.ph.preheader.i72.i.i ], [ %indvars.iv.next.i78.i.i, %bb.w ] ; 3 uses
  %.022.i76.i.i = phi ptr [ %.0.lcssa.i.i.i, %.lr.ph.preheader.i72.i.i ], [ %i.cz, %bb.w ] ; 3 uses
  %i.cl = trunc nuw i64 %indvars.iv.i75.i.i to i32 ; 2 uses
  %i.cm = urem i32 %i.cl, 126
  %i.cn = icmp eq i32 %i.cm, 0
  br i1 %i.cn, label %bb.v, label %bb.w

bb.v:                                             ; preds = %.lr.ph.i74.i.i
  %i.co = sub i32 %i.ck, %i.cl
  %i.cp = call i32 @llvm.umin.i32(i32 %i.co, i32 126)
  %i.cq = shl nuw nsw i32 %i.cp, 1
  %i.cr = add nsw i32 %i.cq, -1
  %i.cs = or i32 %i.cr, 285212672
  %i.ct = getelementptr i8, ptr %.022.i76.i.i, i64 4
  store i32 %i.cs, ptr %.022.i76.i.i, align 4
  br label %bb.w

bb.w:                                             ; preds = %bb.v, %.lr.ph.i74.i.i
  %.1.i77.i.i = phi ptr [ %i.ct, %bb.v ], [ %.022.i76.i.i, %.lr.ph.i74.i.i ] ; 3 uses
  %i.cu = getelementptr [8 x i8], ptr %i.cj, i64 %indvars.iv.i75.i.i ; 2 uses
  %i.cv = load i32, ptr %i.cu, align 4
  %i.cw = getelementptr i8, ptr %.1.i77.i.i, i64 4
  store i32 %i.cv, ptr %.1.i77.i.i, align 4
  %i.cx = getelementptr i8, ptr %i.cu, i64 4
  %i.cy = load i32, ptr %i.cx, align 4
  %i.cz = getelementptr i8, ptr %.1.i77.i.i, i64 8 ; 2 uses
  store i32 %i.cy, ptr %i.cw, align 4
  %indvars.iv.next.i78.i.i = add nuw nsw i64 %indvars.iv.i75.i.i, 1 ; 2 uses
  %exitcond.not.i79.i.i = icmp eq i64 %indvars.iv.next.i78.i.i, %wide.trip.count.i73.i.i
  br i1 %exitcond.not.i79.i.i, label %write_cs_mi_lri.exit81.i.i, label %.lr.ph.i74.i.i, !llvm.loop !143

write_cs_mi_lri.exit81.i.i:                       ; preds = %bb.w, %write_cs_mi_lri.exit.i.i
  %.0.lcssa.i80.i.i = phi ptr [ %.0.lcssa.i.i.i, %write_cs_mi_lri.exit.i.i ], [ %i.cz, %bb.w ] ; 2 uses
  %i.da = load ptr, ptr %i.ay, align 8
  %i.db = load i32, ptr %i.aa, align 8            ; 3 uses
  %.not.i82.i.i = icmp eq i32 %i.db, 0
  br i1 %.not.i82.i.i, label %write_cs_mi_lri.exit92.i.i, label %.lr.ph.preheader.i83.i.i

.lr.ph.preheader.i83.i.i:                         ; preds = %write_cs_mi_lri.exit81.i.i
  %wide.trip.count.i84.i.i = zext i32 %i.db to i64
  br label %.lr.ph.i85.i.i

.lr.ph.i85.i.i:                                   ; preds = %bb.y, %.lr.ph.preheader.i83.i.i
  %indvars.iv.i86.i.i = phi i64 [ 0, %.lr.ph.preheader.i83.i.i ], [ %indvars.iv.next.i89.i.i, %bb.y ] ; 3 uses
  %.022.i87.i.i = phi ptr [ %.0.lcssa.i80.i.i, %.lr.ph.preheader.i83.i.i ], [ %i.dq, %bb.y ] ; 3 uses
  %i.dc = trunc nuw i64 %indvars.iv.i86.i.i to i32 ; 2 uses
  %i.dd = urem i32 %i.dc, 126
  %i.de = icmp eq i32 %i.dd, 0
  br i1 %i.de, label %bb.x, label %bb.y

bb.x:                                             ; preds = %.lr.ph.i85.i.i
  %i.df = sub i32 %i.db, %i.dc
  %i.dg = call i32 @llvm.umin.i32(i32 %i.df, i32 126)
  %i.dh = shl nuw nsw i32 %i.dg, 1
  %i.di = add nsw i32 %i.dh, -1
  %i.dj = or i32 %i.di, 285212672
  %i.dk = getelementptr i8, ptr %.022.i87.i.i, i64 4
  store i32 %i.dj, ptr %.022.i87.i.i, align 4
  br label %bb.y

bb.y:                                             ; preds = %bb.x, %.lr.ph.i85.i.i
  %.1.i88.i.i = phi ptr [ %i.dk, %bb.x ], [ %.022.i87.i.i, %.lr.ph.i85.i.i ] ; 3 uses
  %i.dl = getelementptr [8 x i8], ptr %i.da, i64 %indvars.iv.i86.i.i ; 2 uses
  %i.dm = load i32, ptr %i.dl, align 4
  %i.dn = getelementptr i8, ptr %.1.i88.i.i, i64 4
  store i32 %i.dm, ptr %.1.i88.i.i, align 4
  %i.do = getelementptr i8, ptr %i.dl, i64 4
  %i.dp = load i32, ptr %i.do, align 4
  %i.dq = getelementptr i8, ptr %.1.i88.i.i, i64 8 ; 2 uses
  store i32 %i.dp, ptr %i.dn, align 4
  %indvars.iv.next.i89.i.i = add nuw nsw i64 %indvars.iv.i86.i.i, 1 ; 2 uses
  %exitcond.not.i90.i.i = icmp eq i64 %indvars.iv.next.i89.i.i, %wide.trip.count.i84.i.i
  br i1 %exitcond.not.i90.i.i, label %write_cs_mi_lri.exit92.i.i, label %.lr.ph.i85.i.i, !llvm.loop !143

write_cs_mi_lri.exit92.i.i:                       ; preds = %bb.y, %write_cs_mi_lri.exit81.i.i
  %.0.lcssa.i91.i.i = phi ptr [ %.0.lcssa.i80.i.i, %write_cs_mi_lri.exit81.i.i ], [ %i.dq, %bb.y ] ; 3 uses
  %i.dr = load ptr, ptr %0, align 8
  %i.ds = load ptr, ptr %i.dr, align 8
  %i.dt = getelementptr i8, ptr %i.ds, i64 1656
  %i.du = load i8, ptr %i.dt, align 8
  %i.dv = icmp ult i8 %i.du, 8
  %i.dw = select i1 %i.dv, i32 411041792, i32 411041793
  %i.dx = getelementptr i8, ptr %.0.lcssa.i91.i.i, i64 4
  store i32 %i.dw, ptr %.0.lcssa.i91.i.i, align 4
  %i.dy = load ptr, ptr %i.az, align 8            ; 2 uses
  %i.dz = getelementptr i8, ptr %i.dy, i64 8
  %.val.i.i = load i64, ptr %i.dz, align 8
  %i.ea = getelementptr i8, ptr %i.dy, i64 248
  %.val66.i.i = load i32, ptr %i.ea, align 8
  %i.eb = trunc i64 %.val.i.i to i32
  %i.ec = add i32 %.val66.i.i, %i.eb
  %i.ed = getelementptr i8, ptr %.0.lcssa.i91.i.i, i64 8
  store i32 %i.ec, ptr %i.dx, align 4
  store i32 0, ptr %i.ed, align 4
  %i.ee = load i64, ptr %i.ba, align 8
  call void @__i915_gem_object_flush_map(ptr noundef %i.ao, i64 noundef 0, i64 noundef %i.ee) #18
  call void @__i915_gem_object_release_map(ptr noundef %i.ao) #18
  %i.ef = load ptr, ptr %i.bb, align 8
  %i.eg = getelementptr i8, ptr %i.ef, i64 8
  %i.eh = load ptr, ptr %i.eg, align 8
  %i.ei = getelementptr i8, ptr %i.eh, i64 32
  %i.ej = load ptr, ptr %i.ei, align 8
  %i.ek = call ptr @i915_vma_instance(ptr noundef %i.ao, ptr noundef %i.ej, ptr noundef null) #18 ; 3 uses
  store ptr %i.ek, ptr %i.bc, align 8
  %i.el = icmp ugt ptr %i.ek, inttoptr (i64 -4096 to ptr)
  br i1 %i.el, label %llist_add.exit.i.i, label %bb.z

bb.z:                                             ; preds = %write_cs_mi_lri.exit92.i.i
  %i.em = getelementptr i8, ptr %1, i64 200       ; 4 uses
  %i.en = load volatile i32, ptr %i.em, align 8   ; 2 uses
  %.old1.not.i.i.i.i.i.i.i = icmp eq i32 %i.en, 0
  br i1 %.old1.not.i.i.i.i.i.i.i, label %arch_atomic_try_cmpxchg.exit.thread.i.i.i.i.i.i.i, label %.preheader.i.i.i.i.i.i.i

.preheader.i.i.i.i.i.i.i:                         ; preds = %bb.z, %arch_atomic_try_cmpxchg.exit.i.i.i.i.i.i.i
  %.0.i.i.i.i.i.i.i = phi i32 [ %i.et, %arch_atomic_try_cmpxchg.exit.i.i.i.i.i.i.i ], [ %i.en, %bb.z ] ; 3 uses
  %i.eo = add i32 %.0.i.i.i.i.i.i.i, 1
  %i.ep = call { i8, i32 } asm sideeffect ".pushsection .smp_locks,\22a\22\0A.balign 4\0A.long 671f - .\0A.popsection\0A671:\0A\09lock cmpxchgl $3, $1", "={@ccz},=*m,={ax},r,*m,2,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i32) %i.em, i32 %i.eo, ptr elementtype(i32) %i.em, i32 %.0.i.i.i.i.i.i.i) #19, !srcloc !11 ; 2 uses
  %i.eq = extractvalue { i8, i32 } %i.ep, 0       ; 2 uses
  %i.er = icmp ult i8 %i.eq, 2
  call void @llvm.assume(i1 %i.er)
  %i.es = trunc nuw i8 %i.eq to i1
  br i1 %i.es, label %arch_atomic_try_cmpxchg.exit.thread.i.i.i.i.i.i.i, label %arch_atomic_try_cmpxchg.exit.i.i.i.i.i.i.i, !prof !12

arch_atomic_try_cmpxchg.exit.i.i.i.i.i.i.i:       ; preds = %.preheader.i.i.i.i.i.i.i
  %i.et = extractvalue { i8, i32 } %i.ep, 1       ; 2 uses
  %i.eu = icmp eq i32 %i.et, 0
  br i1 %i.eu, label %arch_atomic_try_cmpxchg.exit.thread.i.i.i.i.i.i.i, label %.preheader.i.i.i.i.i.i.i, !llvm.loop !13

arch_atomic_try_cmpxchg.exit.thread.i.i.i.i.i.i.i: ; preds = %arch_atomic_try_cmpxchg.exit.i.i.i.i.i.i.i, %.preheader.i.i.i.i.i.i.i, %bb.z
  %.2.i.i.i.i.i.i.i = phi i32 [ 0, %bb.z ], [ 0, %arch_atomic_try_cmpxchg.exit.i.i.i.i.i.i.i ], [ %.0.i.i.i.i.i.i.i, %.preheader.i.i.i.i.i.i.i ] ; 3 uses
  %i.ev = add i32 %.2.i.i.i.i.i.i.i, 1
  %i.ew = or i32 %i.ev, %.2.i.i.i.i.i.i.i
  %.not.i.i.i.i.i.i.i = icmp sgt i32 %i.ew, -1
  br i1 %.not.i.i.i.i.i.i.i, label %i915_oa_config_get.exit.i.i, label %bb.aa, !prof !12

bb.aa:                                            ; preds = %arch_atomic_try_cmpxchg.exit.thread.i.i.i.i.i.i.i
  call void @refcount_warn_saturate(ptr noundef %i.em, i32 noundef 0) #18
  br label %i915_oa_config_get.exit.i.i

i915_oa_config_get.exit.i.i:                      ; preds = %bb.aa, %arch_atomic_try_cmpxchg.exit.thread.i.i.i.i.i.i.i
  %.not3.i.i.i = icmp eq i32 %.2.i.i.i.i.i.i.i, 0
  %..i.i.i = select i1 %.not3.i.i.i, ptr null, ptr %1
  %i.ex = getelementptr i8, ptr %i.i, i64 8
  store ptr %..i.i.i, ptr %i.ex, align 8
  %i.ey = load volatile ptr, ptr %i.a, align 8    ; 2 uses
  store ptr %i.ey, ptr %i.i, align 8
  %i.ez = call { i8, ptr } asm sideeffect ".pushsection .smp_locks,\22a\22\0A.balign 4\0A.long 671f - .\0A.popsection\0A671:\0A\09lock cmpxchgq $3, $1", "={@ccz},=*m,={ax},r,*m,2,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i64) %i.a, ptr nonnull %i.i, ptr elementtype(i64) %i.a, ptr %i.ey) #19, !srcloc !144 ; 2 uses
  %i.fa = extractvalue { i8, ptr } %i.ez, 0       ; 2 uses
  %i.fb = icmp ult i8 %i.fa, 2
  call void @llvm.assume(i1 %i.fb)
  %i.fc = trunc nuw i8 %i.fa to i1
  br i1 %i.fc, label %llist_add.exit.thread.thread.i.i.a, label %.lr.ph.i.i.i.i, !prof !145

.lr.ph.i.i.i.i:                                   ; preds = %i915_oa_config_get.exit.i.i, %.lr.ph.i.i.i.i
  %i.fd = phi { i8, ptr } [ %i.ff, %.lr.ph.i.i.i.i ], [ %i.ez, %i915_oa_config_get.exit.i.i ]
  %i.fe = extractvalue { i8, ptr } %i.fd, 1       ; 2 uses
  store ptr %i.fe, ptr %i.i, align 8
  %i.ff = call { i8, ptr } asm sideeffect ".pushsection .smp_locks,\22a\22\0A.balign 4\0A.long 671f - .\0A.popsection\0A671:\0A\09lock cmpxchgq $3, $1", "={@ccz},=*m,={ax},r,*m,2,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i64) %i.a, ptr nonnull %i.i, ptr elementtype(i64) %i.a, ptr %i.fe) #19, !srcloc !144 ; 2 uses
  %i.fg = extractvalue { i8, ptr } %i.ff, 0       ; 2 uses
  %i.fh = icmp ult i8 %i.fg, 2
  call void @llvm.assume(i1 %i.fh)
  %i.fi = trunc nuw i8 %i.fg to i1
  br i1 %i.fi, label %llist_add.exit.thread.thread.i.i.a, label %.lr.ph.i.i.i.i, !prof !146, !llvm.loop !147

llist_add.exit.i.i:                               ; preds = %write_cs_mi_lri.exit92.i.i, %bb.r
  %.058.in.in.i.i = phi ptr [ %i.bq, %bb.r ], [ %i.ek, %write_cs_mi_lri.exit92.i.i ]
  %.058.in.i.i = ptrtoint ptr %.058.in.in.i.i to i64
  %.058.i.i = trunc i64 %.058.in.i.i to i32       ; 3 uses
  %i.fj = icmp eq i32 %.058.i.i, -35
  br i1 %i.fj, label %bb.ab, label %llist_add.exit.thread.i.i.a

bb.ab:                                            ; preds = %llist_add.exit.i.i, %llist_add.exit.thread96.i.i
  %i.fk = call i32 @i915_gem_ww_ctx_backoff(ptr noundef nonnull %4) #18 ; 2 uses
  %.not63.i.i = icmp eq i32 %i.fk, 0
  br i1 %.not63.i.i, label %bb.j, label %.sink.split.i.i

llist_add.exit.thread.thread.i.i.a:               ; preds = %.lr.ph.i.i.i.i, %i915_oa_config_get.exit.i.i
  call void @i915_gem_ww_ctx_fini(ptr noundef nonnull %4) #18
  br label %alloc_oa_config_buffer.exit.i

llist_add.exit.thread.i.i.a:                      ; preds = %llist_add.exit.i.i
  call void @i915_gem_ww_ctx_fini(ptr noundef nonnull %4) #18
  %.not64.i.i = icmp eq i32 %.058.i.i, 0
  br i1 %.not64.i.i, label %alloc_oa_config_buffer.exit.i, label %bb.ac

.sink.split.i.i:                                  ; preds = %bb.ab, %10
  %.1100.ph.i.i = phi i32 [ %.0.i.i.i.i, %10 ], [ %i.fk, %bb.ab ]
  call void @i915_gem_ww_ctx_fini(ptr noundef nonnull %4) #18
  br label %bb.ac

bb.ac:                                            ; preds = %.sink.split.i.i, %llist_add.exit.thread.i.i.a
  %.1100.i.i = phi i32 [ %.058.i.i, %llist_add.exit.thread.i.i.a ], [ %.1100.ph.i.i, %.sink.split.i.i ] ; 3 uses
  %i.fl = call i32 asm sideeffect ".pushsection .smp_locks,\22a\22\0A.balign 4\0A.long 671f - .\0A.popsection\0A671:\0A\09lock xaddl $0, $1", "=r,=*m,0,*m,~{memory},~{cc},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i32) %i.ao, i32 -1, ptr elementtype(i32) %i.ao) #19, !srcloc !43 ; 2 uses
  %i.fm = icmp eq i32 %i.fl, 1
  br i1 %i.fm, label %bb.af, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.fn = icmp slt i32 %i.fl, 1
  br i1 %i.fn, label %bb.ae, label %i915_gem_object_put.exit.i.i, !prof !25

bb.ae:                                            ; preds = %bb.ad
  call void @refcount_warn_saturate(ptr noundef %i.ao, i32 noundef 3) #18
  br label %i915_gem_object_put.exit.i.i

bb.af:                                            ; preds = %bb.ac
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #19, !srcloc !44
  call void @drm_gem_object_free(ptr noundef %i.ao) #18, !callees !45, !inline_history !46
  br label %i915_gem_object_put.exit.i.i

i915_gem_object_put.exit.i.i:                     ; preds = %bb.af, %bb.ae, %bb.ad, %6
  %.2.i.i = phi i32 [ %8, %6 ], [ %.1100.i.i, %bb.af ], [ %.1100.i.i, %bb.ad ], [ %.1100.i.i, %bb.ae ] ; 2 uses
  %.not65.i.i = icmp eq i32 %.2.i.i, 0
  br i1 %.not65.i.i, label %alloc_oa_config_buffer.exit.i, label %bb.ag

bb.ag:                                            ; preds = %i915_gem_object_put.exit.i.i
  call void @kfree(ptr noundef nonnull %i.i) #18
  %i.fo = sext i32 %.2.i.i to i64
  %i.fp = inttoptr i64 %i.fo to ptr
  br label %alloc_oa_config_buffer.exit.i

alloc_oa_config_buffer.exit.i:                    ; preds = %bb.ag, %i915_gem_object_put.exit.i.i, %llist_add.exit.thread.i.i.a, %llist_add.exit.thread.thread.i.i.a
  %.0.i.i = phi ptr [ %i.fp, %bb.ag ], [ %i.i, %i915_gem_object_put.exit.i.i ], [ %i.i, %llist_add.exit.thread.i.i.a ], [ %i.i, %llist_add.exit.thread.thread.i.i.a ] ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #19
  %i.fq = icmp ugt ptr %.0.i.i, inttoptr (i64 -4096 to ptr)
  br i1 %i.fq, label %get_oa_vma.exit, label %.loopexit.i

.loopexit.i:                                      ; preds = %bb.c, %alloc_oa_config_buffer.exit.i
  %.1.i = phi ptr [ %.0.i.i, %alloc_oa_config_buffer.exit.i ], [ %.01727.i, %bb.c ]
  %i.fr = getelementptr i8, ptr %.1.i, i64 16
  %i.fs = load ptr, ptr %i.fr, align 8            ; 3 uses
  %i.ft = getelementptr i8, ptr %i.fs, i64 184
  %i.fu = load ptr, ptr %i.ft, align 8            ; 3 uses
  %i.fv = call i32 asm sideeffect ".pushsection .smp_locks,\22a\22\0A.balign 4\0A.long 671f - .\0A.popsection\0A671:\0A\09lock xaddl $0, $1", "=r,=*m,0,*m,~{memory},~{cc},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i32) %i.fu, i32 1, ptr elementtype(i32) %i.fu) #19, !srcloc !43 ; 3 uses
  %.not.i.i.i.i.i.i.i.i = icmp eq i32 %i.fv, 0
  br i1 %.not.i.i.i.i.i.i.i.i, label %.sink.split.i.i.i.i.i.i.i.i, label %bb.ah, !prof !25

bb.ah:                                            ; preds = %.loopexit.i
  %i.fw = add i32 %i.fv, 1
  %i.fx = or i32 %i.fw, %i.fv
  %.not10.i.i.i.i.i.i.i.i = icmp sgt i32 %i.fx, -1
  br i1 %.not10.i.i.i.i.i.i.i.i, label %get_oa_vma.exit, label %.sink.split.i.i.i.i.i.i.i.i, !prof !12

.sink.split.i.i.i.i.i.i.i.i:                      ; preds = %bb.ah, %.loopexit.i
  %.sink.i.i.i.i.i.i.i.i = phi i32 [ 2, %.loopexit.i ], [ 1, %bb.ah ]
  call void @refcount_warn_saturate(ptr noundef %i.fu, i32 noundef %.sink.i.i.i.i.i.i.i.i) #18
  br label %get_oa_vma.exit

get_oa_vma.exit:                                  ; preds = %alloc_oa_config_buffer.exit.i, %bb.ah, %.sink.split.i.i.i.i.i.i.i.i
  %.0.i = phi ptr [ %.0.i.i, %alloc_oa_config_buffer.exit.i ], [ %i.fs, %.sink.split.i.i.i.i.i.i.i.i ], [ %i.fs, %bb.ah ] ; 8 uses
  %i.fy = icmp ugt ptr %.0.i, inttoptr (i64 -4096 to ptr)
  br i1 %i.fy, label %bb.ai, label %bb.aj

bb.ai:                                            ; preds = %get_oa_vma.exit.thread, %get_oa_vma.exit
  %.0.i55 = phi ptr [ inttoptr (i64 -12 to ptr), %get_oa_vma.exit.thread ], [ %.0.i, %get_oa_vma.exit ]
  %i.fz = ptrtoint ptr %.0.i55 to i64
  %i.ga = trunc i64 %i.fz to i32
  br label %i915_vma_put.exit

bb.aj:                                            ; preds = %get_oa_vma.exit
  call void @i915_gem_ww_ctx_init(ptr noundef nonnull %5, i1 noundef zeroext true) #18
  %i.gb = getelementptr i8, ptr %.0.i, i64 184    ; 2 uses
  %i.gc = getelementptr inbounds nuw i8, ptr %5, i64 48
  %i.gd = getelementptr inbounds nuw i8, ptr %5, i64 24
  %i.ge = getelementptr inbounds nuw i8, ptr %5, i64 32 ; 2 uses
  %i.gf = getelementptr i8, ptr %2, i64 16        ; 2 uses
  %.not.i = icmp eq ptr %3, null
  %i.gg = icmp ugt ptr %3, inttoptr (i64 -4096 to ptr)
  %spec.select.i = or i1 %.not.i, %i.gg
  %i.gh = getelementptr i8, ptr %.0.i, i64 8
  %i.gi = getelementptr i8, ptr %.0.i, i64 248
  %i.gj = getelementptr i8, ptr %.0.i, i64 268    ; 2 uses
  %i.gk = getelementptr inbounds nuw i8, ptr %5, i64 40
  br label %bb.ak

bb.ak:                                            ; preds = %bb.bd, %bb.aj
  %i.gl = load ptr, ptr %i.gb, align 8            ; 10 uses
  %i.gm = load i8, ptr %i.gc, align 8, !range !16, !noundef !17
  %i.gn = trunc nuw i8 %i.gm to i1
  %i.go = getelementptr i8, ptr %i.gl, i64 248
  %i.gp = load ptr, ptr %i.go, align 8            ; 2 uses
  br i1 %i.gn, label %bb.al, label %bb.am

bb.al:                                            ; preds = %bb.ak
  %i.gq = call i32 @ww_mutex_lock_interruptible(ptr noundef %i.gp, ptr noundef nonnull %5) #18
  br label %bb.an

bb.am:                                            ; preds = %bb.ak
  %i.gr = call i32 @ww_mutex_lock(ptr noundef %i.gp, ptr noundef nonnull %5) #18
  br label %bb.an

bb.an:                                            ; preds = %bb.am, %bb.al
  %.0.i.i48 = phi i32 [ %i.gq, %bb.al ], [ %i.gr, %bb.am ] ; 4 uses
  %12 = icmp eq i32 %.0.i.i48, 0
  br i1 %12, label %bb.ao, label %13

bb.ao:                                            ; preds = %bb.an
  %i.gs = call i32 asm sideeffect ".pushsection .smp_locks,\22a\22\0A.balign 4\0A.long 671f - .\0A.popsection\0A671:\0A\09lock xaddl $0, $1", "=r,=*m,0,*m,~{memory},~{cc},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i32) %i.gl, i32 1, ptr elementtype(i32) %i.gl) #19, !srcloc !43 ; 3 uses
  %.not.i.i.i.i.i.i.i.i49 = icmp eq i32 %i.gs, 0
  br i1 %.not.i.i.i.i.i.i.i.i49, label %.sink.split.i.i.i.i.i.i.i.i51, label %bb.ap, !prof !25

bb.ap:                                            ; preds = %bb.ao
  %i.gt = add i32 %i.gs, 1
  %i.gu = or i32 %i.gt, %i.gs
  %.not10.i.i.i.i.i.i.i.i50 = icmp sgt i32 %i.gu, -1
  br i1 %.not10.i.i.i.i.i.i.i.i50, label %i915_gem_object_get.exit.i.i, label %.sink.split.i.i.i.i.i.i.i.i51, !prof !12

.sink.split.i.i.i.i.i.i.i.i51:                    ; preds = %bb.ap, %bb.ao
  %.sink.i.i.i.i.i.i.i.i52 = phi i32 [ 2, %bb.ao ], [ 1, %bb.ap ]
  call void @refcount_warn_saturate(ptr noundef %i.gl, i32 noundef %.sink.i.i.i.i.i.i.i.i52) #18
  br label %i915_gem_object_get.exit.i.i

i915_gem_object_get.exit.i.i:                     ; preds = %.sink.split.i.i.i.i.i.i.i.i51, %bb.ap
  %i.gv = getelementptr i8, ptr %i.gl, i64 544    ; 3 uses
  %i.gw = load ptr, ptr %i.ge, align 8            ; 2 uses
  store ptr %i.gv, ptr %i.ge, align 8
  store ptr %i.gd, ptr %i.gv, align 8
  %i.gx = getelementptr i8, ptr %i.gl, i64 552
  store ptr %i.gw, ptr %i.gx, align 8
  store volatile ptr %i.gv, ptr %i.gw, align 8
  br label %13

13:                                               ; preds = %i915_gem_object_get.exit.i.i, %bb.an
  %14 = icmp eq i32 %.0.i.i48, -114
  %spec.store.select.i6.i = select i1 %14, i32 0, i32 %.0.i.i48
  switch i32 %spec.store.select.i6.i, label %.thread59 [
    i32 -35, label %bb.aq
    i32 0, label %bb.as
  ]

bb.aq:                                            ; preds = %13
  %i.gy = call i32 asm sideeffect ".pushsection .smp_locks,\22a\22\0A.balign 4\0A.long 671f - .\0A.popsection\0A671:\0A\09lock xaddl $0, $1", "=r,=*m,0,*m,~{memory},~{cc},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i32) %i.gl, i32 1, ptr elementtype(i32) %i.gl) #19, !srcloc !43 ; 3 uses
  %.not.i.i.i.i.i.i19.i7.i = icmp eq i32 %i.gy, 0
  br i1 %.not.i.i.i.i.i.i19.i7.i, label %.sink.split.i.i.i.i.i.i21.i9.i, label %bb.ar, !prof !25

bb.ar:                                            ; preds = %bb.aq
  %i.gz = add i32 %i.gy, 1
  %i.ha = or i32 %i.gz, %i.gy
  %.not10.i.i.i.i.i.i20.i8.i = icmp sgt i32 %i.ha, -1
  br i1 %.not10.i.i.i.i.i.i20.i8.i, label %.thread, label %.sink.split.i.i.i.i.i.i21.i9.i, !prof !12

.sink.split.i.i.i.i.i.i21.i9.i:                   ; preds = %bb.ar, %bb.aq
  %.sink.i.i.i.i.i.i22.i10.i = phi i32 [ 2, %bb.aq ], [ 1, %bb.ar ]
  call void @refcount_warn_saturate(ptr noundef %i.gl, i32 noundef %.sink.i.i.i.i.i.i22.i10.i) #18
  br label %.thread

.thread:                                          ; preds = %.sink.split.i.i.i.i.i.i21.i9.i, %bb.ar
  store ptr %i.gl, ptr %i.gk, align 8
  br label %bb.bd

bb.as:                                            ; preds = %13
  %i.hb = call i32 @i915_vma_pin_ww(ptr noundef %.0.i, ptr noundef nonnull %5, i64 noundef 0, i64 noundef 0, i64 noundef 1056) #18 ; 2 uses
  %.not39 = icmp eq i32 %i.hb, 0
  br i1 %.not39, label %bb.at, label %bb.bc

bb.at:                                            ; preds = %bb.as
  %i.hc = load ptr, ptr %i.gf, align 8
  %i.hd = getelementptr i8, ptr %i.hc, i64 352    ; 4 uses
  %i.he = call i32 @__SCT__might_resched() #18    ; 0 uses
  %i.hf = load volatile i32, ptr %i.hd, align 4   ; 2 uses
  %i.hg = icmp eq i32 %i.hf, 0
  br i1 %i.hg, label %raw_atomic_fetch_add_unless.exit.i.i, label %.lr.ph.i.i, !prof !34

.lr.ph.i.i:                                       ; preds = %bb.at, %raw_atomic_try_cmpxchg.exit.i.i
  %.047.i.i = phi i32 [ %i.hm, %raw_atomic_try_cmpxchg.exit.i.i ], [ %i.hf, %bb.at ] ; 2 uses
  %i.hh = add i32 %.047.i.i, 1
  %i.hi = call { i8, i32 } asm sideeffect ".pushsection .smp_locks,\22a\22\0A.balign 4\0A.long 671f - .\0A.popsection\0A671:\0A\09lock cmpxchgl $3, $1", "={@ccz},=*m,={ax},r,*m,2,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i32) %i.hd, i32 %i.hh, ptr elementtype(i32) %i.hd, i32 %.047.i.i) #19, !srcloc !11 ; 2 uses
  %i.hj = extractvalue { i8, i32 } %i.hi, 0       ; 2 uses
  %i.hk = icmp ult i8 %i.hj, 2
  call void @llvm.assume(i1 %i.hk)
  %i.hl = trunc nuw i8 %i.hj to i1
  br i1 %i.hl, label %intel_engine_pm_get.exit, label %raw_atomic_try_cmpxchg.exit.i.i, !prof !12

raw_atomic_try_cmpxchg.exit.i.i:                  ; preds = %.lr.ph.i.i
  %i.hm = extractvalue { i8, i32 } %i.hi, 1       ; 2 uses
  %i.hn = icmp eq i32 %i.hm, 0
  br i1 %i.hn, label %raw_atomic_fetch_add_unless.exit.i.i, label %.lr.ph.i.i, !prof !35

raw_atomic_fetch_add_unless.exit.i.i:             ; preds = %raw_atomic_try_cmpxchg.exit.i.i, %bb.at
  %i.ho = call i32 @__intel_wakeref_get_first(ptr noundef %i.hd) #18 ; 0 uses
  br label %intel_engine_pm_get.exit

intel_engine_pm_get.exit:                         ; preds = %.lr.ph.i.i, %raw_atomic_fetch_add_unless.exit.i.i
  %i.hp = call ptr @i915_request_create(ptr noundef %2) #18 ; 9 uses
  %i.hq = load ptr, ptr %i.gf, align 8
  %i.hr = getelementptr i8, ptr %i.hq, i64 352    ; 4 uses
  %i.hs = call i32 @__SCT__might_resched() #18    ; 0 uses
  %i.ht = load volatile i32, ptr %i.hr, align 4   ; 2 uses
  %i.hu = icmp eq i32 %i.ht, 1
  br i1 %i.hu, label %atomic_add_unless.exit.i.i.i, label %.lr.ph.i.i.i53, !prof !34

.lr.ph.i.i.i53:                                   ; preds = %intel_engine_pm_get.exit, %raw_atomic_try_cmpxchg.exit.i.i.i.i
  %.06.i.i.i = phi i32 [ %i.ia, %raw_atomic_try_cmpxchg.exit.i.i.i.i ], [ %i.ht, %intel_engine_pm_get.exit ] ; 2 uses
  %i.hv = add i32 %.06.i.i.i, -1
  %i.hw = call { i8, i32 } asm sideeffect ".pushsection .smp_locks,\22a\22\0A.balign 4\0A.long 671f - .\0A.popsection\0A671:\0A\09lock cmpxchgl $3, $1", "={@ccz},=*m,={ax},r,*m,2,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i32) %i.hr, i32 %i.hv, ptr elementtype(i32) %i.hr, i32 %.06.i.i.i) #19, !srcloc !11 ; 2 uses
  %i.hx = extractvalue { i8, i32 } %i.hw, 0       ; 2 uses
  %i.hy = icmp ult i8 %i.hx, 2
  call void @llvm.assume(i1 %i.hy)
  %i.hz = trunc nuw i8 %i.hx to i1
  br i1 %i.hz, label %intel_engine_pm_put.exit, label %raw_atomic_try_cmpxchg.exit.i.i.i.i, !prof !12

raw_atomic_try_cmpxchg.exit.i.i.i.i:              ; preds = %.lr.ph.i.i.i53
  %i.ia = extractvalue { i8, i32 } %i.hw, 1       ; 2 uses
  %i.ib = icmp eq i32 %i.ia, 1
  br i1 %i.ib, label %atomic_add_unless.exit.i.i.i, label %.lr.ph.i.i.i53, !prof !35

atomic_add_unless.exit.i.i.i:                     ; preds = %raw_atomic_try_cmpxchg.exit.i.i.i.i, %intel_engine_pm_get.exit
  call void @__intel_wakeref_put_last(ptr noundef %i.hr, i64 noundef 0) #18
  br label %intel_engine_pm_put.exit

intel_engine_pm_put.exit:                         ; preds = %.lr.ph.i.i.i53, %atomic_add_unless.exit.i.i.i
  %i.ic = icmp ugt ptr %i.hp, inttoptr (i64 -4096 to ptr)
  br i1 %i.ic, label %bb.au, label %bb.av

bb.au:                                            ; preds = %intel_engine_pm_put.exit
  %i.id = ptrtoint ptr %i.hp to i64
  %i.ie = trunc i64 %i.id to i32
  br label %bb.bb

bb.av:                                            ; preds = %intel_engine_pm_put.exit
  br i1 %spec.select.i, label %bb.ay, label %bb.aw

bb.aw:                                            ; preds = %bb.av
  %i.if = call i32 @i915_request_await_active(ptr noundef %i.hp, ptr noundef nonnull %3, i32 noundef 2) #18 ; 2 uses
  %.not40 = icmp eq i32 %i.if, 0
  br i1 %.not40, label %bb.ax, label %bb.ba

bb.ax:                                            ; preds = %bb.aw
  %i.ig = call i32 @i915_active_add_request(ptr noundef nonnull %3, ptr noundef %i.hp) #18 ; 2 uses
  %.not41 = icmp eq i32 %i.ig, 0
  br i1 %.not41, label %bb.ay, label %bb.ba

bb.ay:                                            ; preds = %bb.ax, %bb.av
  %i.ih = call i32 @_i915_vma_move_to_active(ptr noundef %.0.i, ptr noundef %i.hp, ptr noundef %i.hp, i32 noundef 0) #18 ; 2 uses
  %.not42 = icmp eq i32 %i.ih, 0
  br i1 %.not42, label %bb.az, label %bb.ba

bb.az:                                            ; preds = %bb.ay
  %i.ii = getelementptr i8, ptr %i.hp, i64 80
  %i.ij = load ptr, ptr %i.ii, align 8
  %i.ik = getelementptr i8, ptr %i.ij, i64 888
  %i.il = load ptr, ptr %i.ik, align 8
  %.val = load i64, ptr %i.gh, align 8
  %.val44 = load i32, ptr %i.gi, align 8
  %i.im = zext i32 %.val44 to i64
  %i.in = add i64 %.val, %i.im
  %i.io = call i32 %i.il(ptr noundef %i.hp, i64 noundef %i.in, i32 noundef 0, i32 noundef 1) #18
  br label %bb.ba

bb.ba:                                            ; preds = %bb.az, %bb.ay, %bb.ax, %bb.aw
  %.0 = phi i32 [ %i.ih, %bb.ay ], [ %i.io, %bb.az ], [ %i.if, %bb.aw ], [ %i.ig, %bb.ax ]
  call void @i915_request_add(ptr noundef %i.hp) #18
  br label %bb.bb

bb.bb:                                            ; preds = %bb.ba, %bb.au
  %.1 = phi i32 [ %i.ie, %bb.au ], [ %.0, %bb.ba ]
  call void asm sideeffect ".pushsection .smp_locks,\22a\22\0A.balign 4\0A.long 671f - .\0A.popsection\0A671:\0A\09lock decl $0", "=*m,*m,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i32) %i.gj, ptr elementtype(i32) %i.gj) #19, !srcloc !47
  br label %bb.bc

bb.bc:                                            ; preds = %bb.as, %bb.bb
  %.2 = phi i32 [ %.1, %bb.bb ], [ %i.hb, %bb.as ] ; 2 uses
  %i.ip = icmp eq i32 %.2, -35
  br i1 %i.ip, label %bb.bd, label %.thread59

bb.bd:                                            ; preds = %.thread, %bb.bc
  %i.iq = call i32 @i915_gem_ww_ctx_backoff(ptr noundef nonnull %5) #18 ; 2 uses
  %.not43 = icmp eq i32 %i.iq, 0
  br i1 %.not43, label %bb.ak, label %.thread59

.thread59:                                        ; preds = %13, %bb.bd, %bb.bc
  %.3 = phi i32 [ %i.iq, %bb.bd ], [ %.2, %bb.bc ], [ %.0.i.i48, %13 ] ; 3 uses
  call void @i915_gem_ww_ctx_fini(ptr noundef nonnull %5) #18
  %.val45 = load ptr, ptr %i.gb, align 8          ; 4 uses
  %i.ir = call i32 asm sideeffect ".pushsection .smp_locks,\22a\22\0A.balign 4\0A.long 671f - .\0A.popsection\0A671:\0A\09lock xaddl $0, $1", "=r,=*m,0,*m,~{memory},~{cc},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i32) %.val45, i32 -1, ptr elementtype(i32) %.val45) #19, !srcloc !43 ; 2 uses
  %i.is = icmp eq i32 %i.ir, 1
  br i1 %i.is, label %bb.bg, label %bb.be

bb.be:                                            ; preds = %.thread59
  %i.it = icmp slt i32 %i.ir, 1
  br i1 %i.it, label %bb.bf, label %i915_vma_put.exit, !prof !25

bb.bf:                                            ; preds = %bb.be
  call void @refcount_warn_saturate(ptr noundef %.val45, i32 noundef 3) #18
  br label %i915_vma_put.exit

bb.bg:                                            ; preds = %.thread59
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #19, !srcloc !44
  call void @drm_gem_object_free(ptr noundef %.val45) #18, !callees !45, !inline_history !46
  br label %i915_vma_put.exit

i915_vma_put.exit:                                ; preds = %bb.bg, %bb.bf, %bb.be, %bb.ai
  %.032 = phi i32 [ %i.ga, %bb.ai ], [ %.3, %bb.be ], [ %.3, %bb.bf ], [ %.3, %bb.bg ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #19
  ret i32 %.032
}

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i32 @i915_request_await_active(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i32 @i915_active_add_request(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i32 @_i915_vma_move_to_active(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @drm_dev_put(ptr noundef) local_unnamed_addr #2

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @i915_gem_context_release(ptr noundef) local_unnamed_addr #2

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local zeroext i1 @capable(i32 noundef) local_unnamed_addr #2

; Function Attrs: noredzone null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @__kmalloc_cache_noprof(ptr noundef, i32 noundef, i64 noundef) local_unnamed_addr #12

; Function Attrs: noredzone null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc_noprof(i64 noundef, i32 noundef) local_unnamed_addr #13

; Function Attrs: fn_ret_thunk_extern nofree noredzone nounwind null_pointer_is_valid sspstrong
define internal range(i64 -2147483648, 2147483648) i64 @show_dynamic_id(ptr nofree readnone captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef writeonly captures(none) %2) #14 align 16 prefalign(16) {
bb.a:
  %i.a = getelementptr i8, ptr %1, i64 -120
  %i.b = load i32, ptr %i.a, align 8
  %i.c = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %2, ptr noundef nonnull dereferenceable(1) @.str.79, i32 noundef %i.b) #18
  %i.d = sext i32 %i.c to i64
  ret i64 %i.d
}

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i32 @sysfs_create_group(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nofree noredzone nounwind null_pointer_is_valid
declare dso_local noundef i32 @sprintf(ptr noalias noundef writeonly captures(none), ptr noundef readonly captures(none), ...) local_unnamed_addr #15

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local zeroext i1 @i915_mmio_range_table_contains(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i32 @__intel_wait_for_register(ptr noundef, i32, i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal fastcc range(i32 -28, 1) i32 @append_oa_status(ptr noundef %0, i64 noundef %1, ptr nofree noundef captures(none) %2, i32 noundef range(i32 2, 4) %3) unnamed_addr #0 align 16 {
bb.a:
  %4 = alloca %struct.drm_i915_perf_record_header, align 8 ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #19
  store i64 2251799813685248, ptr %4, align 8, !annotation !19
  store i32 %3, ptr %4, align 8
  %i.a = getelementptr inbounds nuw i8, ptr %4, i64 6
  %i.b = load i64, ptr %2, align 8                ; 2 uses
  %i.c = sub i64 %1, %i.b
  %i.d = icmp ult i64 %i.c, 8
  br i1 %i.d, label %bb.c, label %copy_to_user.exit

copy_to_user.exit:                                ; preds = %bb.a
  %i.e = getelementptr i8, ptr %0, i64 %i.b
  %i.f = call i64 @_copy_to_user(ptr noundef %i.e, ptr noundef nonnull %4, i64 noundef 8) #18
  %.not = icmp eq i64 %i.f, 0
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %copy_to_user.exit
  %i.g = load i16, ptr %i.a, align 2
  %i.h = zext i16 %i.g to i64
  %i.i = load i64, ptr %2, align 8
  %i.j = add i64 %i.i, %i.h
  store i64 %i.j, ptr %2, align 8
  br label %bb.c

bb.c:                                             ; preds = %copy_to_user.exit, %bb.a, %bb.b
  %.0 = phi i32 [ 0, %bb.b ], [ -28, %bb.a ], [ -14, %copy_to_user.exit ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #19
  ret i32 %.0
}

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i64 @_copy_to_user(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal fastcc range(i32 -28, 1) i32 @append_oa_sample(ptr nofree noundef readonly captures(none) %0, ptr noundef %1, i64 noundef %2, ptr nofree noundef captures(none) %3, ptr noundef %4) unnamed_addr #0 align 16 prefalign(16) {
bb.a:
  %5 = alloca %struct.drm_i915_perf_record_header, align 8 ; 5 uses
  %i.a = getelementptr i8, ptr %0, i64 224
  %i.b = load ptr, ptr %i.a, align 8
  %i.c = getelementptr i8, ptr %i.b, i64 4
  %i.d = load i32, ptr %i.c, align 4              ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #19
  store i64 1, ptr %5, align 8, !annotation !19
  %i.e = getelementptr i8, ptr %0, i64 52
  %i.f = load i32, ptr %i.e, align 4              ; 2 uses
  %i.g = trunc i32 %i.f to i16
  %i.h = getelementptr inbounds nuw i8, ptr %5, i64 6 ; 2 uses
  store i16 %i.g, ptr %i.h, align 2
  %i.i = load i64, ptr %3, align 8                ; 2 uses
  %i.j = sub i64 %2, %i.i
  %.mask = and i32 %i.f, 65535
  %i.k = zext nneg i32 %.mask to i64
  %i.l = icmp ult i64 %i.j, %i.k
  br i1 %i.l, label %.critedge, label %copy_to_user.exit48

copy_to_user.exit48:                              ; preds = %bb.a
  %i.m = getelementptr i8, ptr %1, i64 %i.i       ; 2 uses
  %i.n = call i64 @_copy_to_user(ptr noundef %i.m, ptr noundef nonnull %5, i64 noundef 8) #18
  %.not = icmp eq i64 %i.n, 0
  br i1 %.not, label %bb.b, label %.critedge

bb.b:                                             ; preds = %copy_to_user.exit48
  %i.o = getelementptr i8, ptr %i.m, i64 8        ; 3 uses
  %i.p = getelementptr i8, ptr %0, i64 240        ; 2 uses
  %i.q = load ptr, ptr %i.p, align 8
  %i.r = getelementptr i8, ptr %i.q, i64 16777216
  %i.s = ptrtoint ptr %i.r to i64
  %i.t = ptrtoint ptr %4 to i64
  %i.u = sub i64 %i.s, %i.t                       ; 2 uses
  %i.v = trunc i64 %i.u to i32                    ; 2 uses
  %i.w = icmp sgt i32 %i.d, %i.v
  br i1 %i.w, label %bb.c, label %bb.e

bb.c:                                             ; preds = %bb.b
  %sext = shl i64 %i.u, 32
  %i.x = ashr exact i64 %sext, 32                 ; 3 uses
  %i.y = icmp ugt i64 %i.x, 2147483647
  br i1 %i.y, label %copy_to_user.exit42.thread, label %check_copy_size.exit.i39, !prof !25

copy_to_user.exit42.thread:                       ; preds = %bb.c
  call void asm sideeffect "294: nop\0A\09.pushsection .discard.annotate_insn, \22M\22, @progbits, 8; .long 294b - ., 3; .popsection", "i,~{dirflag},~{fpsr},~{flags}"(i32 294) #19, !srcloc !148
  call void asm sideeffect "1:\09 ud2 \0A.pushsection __bug_table,\22aw\22\0A\09912: .pushsection .discard.annotate_data, \22M\22, @progbits, 8; .long 912b - ., 1; .popsection\0A\092:\0A\09\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::format\0A\09.long ${1:c} - .\09# bug_entry::file\0A\09.word ${2:c}\09# bug_entry::line\0A\09.word ${3:c}\09# bug_entry::flags\0A\09.org 2b + ${4:c}\0A.popsection\0A.pushsection .discard.annotate_insn, \22M\22, @progbits, 8; .long 1b - ., 8; .popsection", "i,i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr nonnull @.str.44, ptr nonnull @.str.45, i32 57, i32 2307, i64 16) #19, !srcloc !149
  call void asm sideeffect "295: nop\0A\09.pushsection .discard.annotate_insn, \22M\22, @progbits, 8; .long 295b - ., 4; .popsection", "i,~{dirflag},~{fpsr},~{flags}"(i32 295) #19, !srcloc !150
  br label %.critedge

check_copy_size.exit.i39:                         ; preds = %bb.c
  %i.z = call i64 @_copy_to_user(ptr noundef %i.o, ptr noundef %4, i64 noundef range(i64 -2147483648, 2147483648) %i.x) #18
  %i.aa = icmp eq i64 %i.z, 0
  br i1 %i.aa, label %bb.d, label %.critedge

bb.d:                                             ; preds = %check_copy_size.exit.i39
  %i.ab = sub i32 %i.d, %i.v                      ; 2 uses
  %i.ac = icmp slt i32 %i.ab, 0
  br i1 %i.ac, label %copy_to_user.exit36.thread, label %check_copy_size.exit.i33, !prof !25

copy_to_user.exit36.thread:                       ; preds = %bb.d
  call void asm sideeffect "294: nop\0A\09.pushsection .discard.annotate_insn, \22M\22, @progbits, 8; .long 294b - ., 3; .popsection", "i,~{dirflag},~{fpsr},~{flags}"(i32 294) #19, !srcloc !148
  call void asm sideeffect "1:\09 ud2 \0A.pushsection __bug_table,\22aw\22\0A\09912: .pushsection .discard.annotate_data, \22M\22, @progbits, 8; .long 912b - ., 1; .popsection\0A\092:\0A\09\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::format\0A\09.long ${1:c} - .\09# bug_entry::file\0A\09.word ${2:c}\09# bug_entry::line\0A\09.word ${3:c}\09# bug_entry::flags\0A\09.org 2b + ${4:c}\0A.popsection\0A.pushsection .discard.annotate_insn, \22M\22, @progbits, 8; .long 1b - ., 8; .popsection", "i,i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr nonnull @.str.44, ptr nonnull @.str.45, i32 57, i32 2307, i64 16) #19, !srcloc !149
  call void asm sideeffect "295: nop\0A\09.pushsection .discard.annotate_insn, \22M\22, @progbits, 8; .long 295b - ., 4; .popsection", "i,~{dirflag},~{fpsr},~{flags}"(i32 295) #19, !srcloc !150
  br label %.critedge

check_copy_size.exit.i33:                         ; preds = %bb.d
  %i.ad = sext i32 %i.ab to i64
  %i.ae = load ptr, ptr %i.p, align 8
  %i.af = getelementptr i8, ptr %i.o, i64 %i.x
  %i.ag = call i64 @_copy_to_user(ptr noundef %i.af, ptr noundef %i.ae, i64 noundef range(i64 -2147483648, 2147483648) %i.ad) #18
  %i.ah = icmp eq i64 %i.ag, 0
  br i1 %i.ah, label %bb.f, label %.critedge

bb.e:                                             ; preds = %bb.b
  %i.ai = icmp slt i32 %i.d, 0
  br i1 %i.ai, label %copy_to_user.exit.thread, label %check_copy_size.exit.i, !prof !25

copy_to_user.exit.thread:                         ; preds = %bb.e
  call void asm sideeffect "294: nop\0A\09.pushsection .discard.annotate_insn, \22M\22, @progbits, 8; .long 294b - ., 3; .popsection", "i,~{dirflag},~{fpsr},~{flags}"(i32 294) #19, !srcloc !148
  call void asm sideeffect "1:\09 ud2 \0A.pushsection __bug_table,\22aw\22\0A\09912: .pushsection .discard.annotate_data, \22M\22, @progbits, 8; .long 912b - ., 1; .popsection\0A\092:\0A\09\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::format\0A\09.long ${1:c} - .\09# bug_entry::file\0A\09.word ${2:c}\09# bug_entry::line\0A\09.word ${3:c}\09# bug_entry::flags\0A\09.org 2b + ${4:c}\0A.popsection\0A.pushsection .discard.annotate_insn, \22M\22, @progbits, 8; .long 1b - ., 8; .popsection", "i,i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr nonnull @.str.44, ptr nonnull @.str.45, i32 57, i32 2307, i64 16) #19, !srcloc !149
  call void asm sideeffect "295: nop\0A\09.pushsection .discard.annotate_insn, \22M\22, @progbits, 8; .long 295b - ., 4; .popsection", "i,~{dirflag},~{fpsr},~{flags}"(i32 295) #19, !srcloc !150
  br label %.critedge

check_copy_size.exit.i:                           ; preds = %bb.e
  %i.aj = sext i32 %i.d to i64
  %i.ak = call i64 @_copy_to_user(ptr noundef %i.o, ptr noundef %4, i64 noundef range(i64 -2147483648, 2147483648) %i.aj) #18
  %i.al = icmp eq i64 %i.ak, 0
  br i1 %i.al, label %bb.f, label %.critedge

bb.f:                                             ; preds = %check_copy_size.exit.i, %check_copy_size.exit.i33
end_hunk_3
