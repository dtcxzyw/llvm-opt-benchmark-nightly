Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/linux/original/intel_sseu_debugfs?download=true
inline.NumInlined: 26
inline.NumDeleted: 11
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.intel_gt_debugfs_file = type { ptr, ptr, ptr }
%struct.drm_printer = type { ptr, ptr, ptr, ptr, ptr, %struct.anon.43, i32 }
%struct.anon.43 = type { i32, i32 }

@.str = private unnamed_addr constant [18 x i8] c"SSEU Device Info\0A\00", align 1
@.str.1 = private unnamed_addr constant [20 x i8] c"SSEU Device Status\0A\00", align 1
@intel_sseu_debugfs_register.files = internal constant [2 x %struct.intel_gt_debugfs_file] [%struct.intel_gt_debugfs_file { ptr @.str.2, ptr @sseu_status_fops, ptr null }, %struct.intel_gt_debugfs_file { ptr @.str.3, ptr @sseu_topology_fops, ptr null }], align 16
@.str.2 = private unnamed_addr constant [12 x i8] c"sseu_status\00", align 1
@.str.3 = private unnamed_addr constant [14 x i8] c"sseu_topology\00", align 1
@.str.4 = private unnamed_addr constant [10 x i8] c"Available\00", align 1
@.str.5 = private unnamed_addr constant [8 x i8] c"Enabled\00", align 1
@.str.6 = private unnamed_addr constant [23 x i8] c"  %s Slice Mask: %04x\0A\00", align 1
@.str.7 = private unnamed_addr constant [22 x i8] c"  %s Slice Total: %u\0A\00", align 1
@.str.8 = private unnamed_addr constant [25 x i8] c"  %s Subslice Total: %u\0A\00", align 1
@.str.9 = private unnamed_addr constant [19 x i8] c"  %s EU Total: %u\0A\00", align 1
@.str.10 = private unnamed_addr constant [26 x i8] c"  %s EU Per Subslice: %u\0A\00", align 1
@.str.11 = private unnamed_addr constant [21 x i8] c"  Has Pooled EU: %s\0A\00", align 1
@.str.12 = private unnamed_addr constant [22 x i8] c"  Min EU in pool: %u\0A\00", align 1
@.str.13 = private unnamed_addr constant [30 x i8] c"  Has Slice Power Gating: %s\0A\00", align 1
@.str.14 = private unnamed_addr constant [33 x i8] c"  Has Subslice Power Gating: %s\0A\00", align 1
@.str.15 = private unnamed_addr constant [27 x i8] c"  Has EU Power Gating: %s\0A\00", align 1
@.str.16 = private unnamed_addr constant [4 x i8] c"yes\00", align 1
@.str.17 = private unnamed_addr constant [3 x i8] c"no\00", align 1
@kmalloc_caches = external dso_local local_unnamed_addr global [3 x [14 x ptr]], align 16
@sseu_status_fops = internal constant { ptr, i32, [4 x i8], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr } { ptr null, i32 0, [4 x i8] zeroinitializer, ptr @seq_lseek, ptr @seq_read, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @sseu_status_open, ptr null, ptr @single_release, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, align 8
@sseu_topology_fops = internal constant { ptr, i32, [4 x i8], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr } { ptr null, i32 0, [4 x i8] zeroinitializer, ptr @seq_lseek, ptr @seq_read, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @sseu_topology_open, ptr null, ptr @single_release, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, align 8

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define dso_local range(i32 -19, 1) i32 @intel_sseu_status(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 align 16 prefalign(16) {
bb.a:
  %i.a = alloca [8 x i32], align 16               ; 6 uses
  %i.b = alloca [16 x i32], align 16              ; 7 uses
  %.sroa.057 = alloca i64, align 8                ; 4 uses
  %i.c = alloca [3 x i32], align 4                ; 5 uses
  %i.d = alloca [6 x i32], align 16               ; 5 uses
  %.sroa.0 = alloca i64, align 8                  ; 4 uses
  %i.e = load ptr, ptr %1, align 8                ; 4 uses
  %i.f = getelementptr i8, ptr %i.e, i64 1656     ; 2 uses
  %i.g = load i8, ptr %i.f, align 8
  %i.h = icmp ult i8 %i.g, 8
  br i1 %i.h, label %bb.ag, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.i = tail call i32 @seq_write(ptr noundef %0, ptr noundef nonnull @.str, i64 noundef 17) #8 ; 0 uses
  %i.j = getelementptr i8, ptr %i.e, i64 1688
  %i.k = load i8, ptr %i.j, align 8, !range !11, !noundef !12
  %i.l = trunc nuw i8 %i.k to i1
  %i.m = getelementptr i8, ptr %1, i64 4952
  tail call fastcc void @i915_print_sseu_info(ptr noundef %0, i1 noundef zeroext true, i1 noundef zeroext %i.l, ptr noundef %i.m) #9, !srcloc !13
  %i.n = tail call i32 @seq_write(ptr noundef %0, ptr noundef nonnull @.str.1, i64 noundef 19) #8 ; 0 uses
  %i.o = load ptr, ptr getelementptr inbounds nuw (i8, ptr @kmalloc_caches, i64 16), align 16
  %i.p = tail call noalias noundef align 8 dereferenceable_or_null(176) ptr @__kmalloc_cache_noprof(ptr noundef %i.o, i32 noundef 3520, i64 noundef 176) #10 ; 21 uses
  %.not = icmp eq ptr %i.p, null
  br i1 %.not, label %bb.ag, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.q = getelementptr i8, ptr %1, i64 5120       ; 8 uses
  %i.r = load i8, ptr %i.q, align 8
  %i.s = getelementptr i8, ptr %1, i64 5121       ; 5 uses
  %i.t = load i8, ptr %i.s, align 1
  %i.u = getelementptr i8, ptr %1, i64 5122
  %i.v = load i8, ptr %i.u, align 2
  tail call void @intel_sseu_set_info(ptr noundef nonnull %i.p, i8 noundef zeroext %i.r, i8 noundef zeroext %i.t, i8 noundef zeroext %i.v) #8
  %i.w = getelementptr i8, ptr %i.e, i64 3176     ; 2 uses
  %i.x = tail call ptr @intel_runtime_pm_get(ptr noundef %i.w) #8
  %i.y = icmp eq ptr %i.x, null
  br i1 %i.y, label %i915_print_sseu_info.exit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.c
  %i.z = getelementptr i8, ptr %i.e, i64 1664
  %i.aa = getelementptr i8, ptr %i.p, i64 8       ; 8 uses
  %i.ab = getelementptr i8, ptr %i.p, i64 160     ; 11 uses
  %i.ac = getelementptr i8, ptr %i.p, i64 162     ; 10 uses
  %i.ad = getelementptr i8, ptr %1, i64 24        ; 4 uses
  %i.ae = getelementptr i8, ptr %1, i64 5114
  %i.af = getelementptr i8, ptr %1, i64 4960      ; 3 uses
  %i.ag = getelementptr i8, ptr %1, i64 5116
  %i.ah = getelementptr inbounds nuw i8, ptr %i.b, i64 4
  %i.ai = getelementptr i8, ptr %1, i64 5119
  %i.aj = load i32, ptr %i.z, align 8
  %i.ak = zext i32 %i.aj to i64                   ; 2 uses
  %i.al = and i64 %i.ak, 33554432
  %.not57 = icmp eq i64 %i.al, 0
  br i1 %.not57, label %bb.h, label %bb.d

bb.d:                                             ; preds = %.lr.ph
  %.val = load ptr, ptr %i.ad, align 8            ; 5 uses
  %i.am = getelementptr i8, ptr %.val, i64 144    ; 4 uses
  %i.an = load ptr, ptr %i.am, align 8
  %i.ao = tail call i32 %i.an(ptr noundef %.val, i32 42784, i1 noundef zeroext true) #8, !inline_history !14 ; 4 uses
  %i.ap = load ptr, ptr %i.am, align 8
  %i.aq = tail call i32 %i.ap(ptr noundef %.val, i32 42792, i1 noundef zeroext true) #8, !inline_history !14 ; 4 uses
  %i.ar = load ptr, ptr %i.am, align 8
  %i.as = tail call i32 %i.ar(ptr noundef %.val, i32 42788, i1 noundef zeroext true) #8, !inline_history !14
  %i.at = load ptr, ptr %i.am, align 8
  %i.au = tail call i32 %i.at(ptr noundef %.val, i32 42796, i1 noundef zeroext true) #8, !inline_history !14
  %i.av = and i32 %i.ao, 2
  %.not.i = icmp eq i32 %i.av, 0
  br i1 %.not.i, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  store i8 1, ptr %i.p, align 8
  %i.aw = load i8, ptr %i.aa, align 8
  %i.ax = or i8 %i.aw, 1
  store i8 %i.ax, ptr %i.aa, align 8
  %i.ay = lshr i32 %i.ao, 8
  %i.az = and i32 %i.ay, 2
  %i.ba = xor i32 %i.az, 2
  %i.bb = lshr i32 %i.ao, 16
  %i.bc = and i32 %i.bb, 2
  %i.bd = xor i32 %i.bc, 2
  %i.be = add nuw nsw i32 %i.ba, %i.bd
  %i.bf = lshr i32 %i.ao, 24
  %i.bg = and i32 %i.bf, 2
  %i.bh = xor i32 %i.bg, 2
  %i.bi = add nuw nsw i32 %i.be, %i.bh
  %i.bj = and i32 %i.as, 2
  %i.bk = xor i32 %i.bj, 2
  %i.bl = add nuw nsw i32 %i.bi, %i.bk            ; 2 uses
  %i.bm = load i16, ptr %i.ab, align 8
  %i.bn = trunc nuw nsw i32 %i.bl to i16
  %i.bo = add i16 %i.bm, %i.bn
  store i16 %i.bo, ptr %i.ab, align 8
  %i.bp = load i8, ptr %i.ac, align 2
  %i.bq = zext i8 %i.bp to i32
  %i.br = tail call i32 @llvm.umax.i32(i32 %i.bl, i32 %i.bq)
  %i.bs = trunc nuw i32 %i.br to i8
  store i8 %i.bs, ptr %i.ac, align 2
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.bt = and i32 %i.aq, 2
  %.not.1.i = icmp eq i32 %i.bt, 0
  br i1 %.not.1.i, label %bb.g, label %cherryview_sseu_device_status.exit

bb.g:                                             ; preds = %bb.f
  store i8 1, ptr %i.p, align 8
  %i.bu = load i8, ptr %i.aa, align 8
  %i.bv = or i8 %i.bu, 2
  store i8 %i.bv, ptr %i.aa, align 8
  %i.bw = lshr i32 %i.aq, 8
  %i.bx = and i32 %i.bw, 2
  %i.by = xor i32 %i.bx, 2
  %i.bz = lshr i32 %i.aq, 16
  %i.ca = and i32 %i.bz, 2
  %i.cb = xor i32 %i.ca, 2
  %i.cc = add nuw nsw i32 %i.by, %i.cb
  %i.cd = lshr i32 %i.aq, 24
  %i.ce = and i32 %i.cd, 2
  %i.cf = xor i32 %i.ce, 2
  %i.cg = add nuw nsw i32 %i.cc, %i.cf
  %i.ch = and i32 %i.au, 2
  %i.ci = xor i32 %i.ch, 2
  %i.cj = add nuw nsw i32 %i.cg, %i.ci            ; 2 uses
  %i.ck = load i16, ptr %i.ab, align 8
  %i.cl = trunc nuw nsw i32 %i.cj to i16
  %i.cm = add i16 %i.ck, %i.cl
  store i16 %i.cm, ptr %i.ab, align 8
  %i.cn = load i8, ptr %i.ac, align 2
  %i.co = zext i8 %i.cn to i32
  %i.cp = tail call i32 @llvm.umax.i32(i32 %i.cj, i32 %i.co)
  %i.cq = trunc nuw i32 %i.cp to i8
  store i8 %i.cq, ptr %i.ac, align 2
  br label %cherryview_sseu_device_status.exit

bb.h:                                             ; preds = %.lr.ph
  %i.cr = and i64 %i.ak, 16777216
  %.not58 = icmp eq i64 %i.cr, 0
  br i1 %.not58, label %bb.n, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.cs = load ptr, ptr %i.ad, align 8            ; 2 uses
  %i.ct = getelementptr i8, ptr %i.cs, i64 144
  %i.cu = load ptr, ptr %i.ct, align 8
  %i.cv = tail call i32 %i.cu(ptr noundef %i.cs, i32 1278052, i1 noundef zeroext true) #8, !inline_history !15 ; 2 uses
  %i.cw = trunc i32 %i.cv to i8
  %i.cx = and i8 %i.cw, 7                         ; 2 uses
  store i8 %i.cx, ptr %i.p, align 8
  %.not.i40 = icmp eq i8 %i.cx, 0
  br i1 %.not.i40, label %cherryview_sseu_device_status.exit, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.cy = load i8, ptr %i.ae, align 2
  store i8 %i.cy, ptr %i.ac, align 2
  %i.cz = and i32 %i.cv, 7
  %i.da = tail call i32 asm "bsrl $1,$0", "=r,r,0,~{dirflag},~{fpsr},~{flags}"(i32 range(i32 0, 256) %i.cz, i32 -1) #11, !srcloc !16
  %i.db = add i32 %i.da, 1
  %i.dc = sext i32 %i.db to i64
  br label %fls.exit38.i

fls.exit38.i:                                     ; preds = %bb.j, %bb.k
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %bb.k ], [ 0, %bb.j ] ; 4 uses
  %i.dd = icmp slt i64 %indvars.iv.i, %i.dc
  br i1 %i.dd, label %bb.k, label %bb.l

bb.k:                                             ; preds = %fls.exit38.i
  %i.de = getelementptr i8, ptr %i.af, i64 %indvars.iv.i
  %i.df = load i8, ptr %i.de, align 1
  %i.dg = getelementptr i8, ptr %i.aa, i64 %indvars.iv.i
  store i8 %i.df, ptr %i.dg, align 1
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1
  br label %fls.exit38.i, !llvm.loop !17

bb.l:                                             ; preds = %fls.exit38.i
  %i.dh = load i8, ptr %i.ac, align 2
  %i.di = zext i8 %i.dh to i32
  %i.dj = tail call i32 @intel_sseu_subslice_total(ptr noundef nonnull %i.p) #8
  %i.dk = mul i32 %i.dj, %i.di
  %i.dl = trunc i32 %i.dk to i16
  store i16 %i.dl, ptr %i.ab, align 8
  br label %fls.exit.i

fls.exit.i:                                       ; preds = %bb.l, %bb.m
  %indvars.iv40.i = phi i64 [ %indvars.iv.next41.i, %bb.m ], [ 0, %bb.l ] ; 3 uses
  %i.dm = load i8, ptr %i.p, align 8
  %i.dn = zext i8 %i.dm to i32
  %i.do = tail call i32 asm "bsrl $1,$0", "=r,r,0,~{dirflag},~{fpsr},~{flags}"(i32 range(i32 0, 256) %i.dn, i32 -1) #11, !srcloc !16
  %i.dp = add i32 %i.do, 1
  %i.dq = sext i32 %i.dp to i64
  %i.dr = icmp slt i64 %indvars.iv40.i, %i.dq
  br i1 %i.dr, label %bb.m, label %cherryview_sseu_device_status.exit

bb.m:                                             ; preds = %fls.exit.i
  %i.ds = getelementptr i8, ptr %i.ag, i64 %indvars.iv40.i
  %i.dt = load i8, ptr %i.ds, align 1
  %i.du = zext i8 %i.dt to i32
  %i.dv = tail call i64 @llvm.read_register.i64(metadata !0)
  %i.dw = tail call { i32, i64 } asm "# ALT: oldinstr\0A771:\0A\09call __sw_hweight32\0A772:\0A# ALT: padding\0A.skip -(((775f-774f)-(772b-771b)) > 0) * ((775f-774f)-(772b-771b)),0x90\0A773:\0A.pushsection .altinstructions, \22aM\22, @progbits, 14\0A .long 771b - .\0A .long 774f - .\0A .4byte ( 4*32+23)\0A .byte 773b-771b\0A .byte 775f-774f\0A.popsection\0A.pushsection .altinstr_replacement, \22ax\22\0A912: .pushsection .discard.annotate_data, \22M\22, @progbits, 8; .long 912b - ., 1; .popsection\0A# ALT: replacement\0A774:\0A\09popcntl $2, $0\0A775:\0A.popsection\0A", "={ax},={rsp},{di},{rsp},~{dirflag},~{fpsr},~{flags}"(i32 range(i32 0, 256) %i.du, i64 %i.dv) #11, !srcloc !19 ; 2 uses
  %i.dx = extractvalue { i32, i64 } %i.dw, 1
  tail call void @llvm.write_register.i64(metadata !0, i64 %i.dx)
  %.pre.i = load i16, ptr %i.ab, align 8
  %i.dy = extractvalue { i32, i64 } %i.dw, 0
  %i.dz = trunc i32 %i.dy to i16
  %i.ea = sub i16 %.pre.i, %i.dz
  store i16 %i.ea, ptr %i.ab, align 8
  %indvars.iv.next41.i = add nuw nsw i64 %indvars.iv40.i, 1
  br label %fls.exit.i, !llvm.loop !20

bb.n:                                             ; preds = %bb.h
  %i.eb = load i8, ptr %i.f, align 8              ; 2 uses
  %i.ec = icmp eq i8 %i.eb, 9
  br i1 %i.ec, label %bb.o, label %bb.z

bb.o:                                             ; preds = %bb.n
  %i.ed = load ptr, ptr %i.ad, align 8            ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #12
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #12
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0)
  store i64 93458488361045, ptr %.sroa.0, align 8
  %i.ee = load i8, ptr %i.q, align 8
  %.not125.i = icmp eq i8 %i.ee, 0
  br i1 %.not125.i, label %gen9_sseu_device_status.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.o
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.c, i8 0, i64 12, i1 false), !annotation !21
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) %i.d, i8 0, i64 24, i1 false), !annotation !21
  %i.ef = getelementptr i8, ptr %i.ed, i64 144    ; 3 uses
  br label %bb.p

bb.p:                                             ; preds = %bb.p, %.lr.ph.i
  %indvars.iv.i41 = phi i64 [ 0, %.lr.ph.i ], [ %indvars.iv.next.i42, %bb.p ] ; 4 uses
  %i.eg = load ptr, ptr %i.ef, align 8
  %indvars.iv.tr.i = trunc nuw nsw i64 %indvars.iv.i41 to i32
  %i.eh = shl nuw nsw i32 %indvars.iv.tr.i, 2
  %i.ei = add nuw nsw i32 %i.eh, 32844
  %i.ej = tail call i32 %i.eg(ptr noundef %i.ed, i32 %i.ei, i1 noundef zeroext true) #8, !inline_history !22
  %i.ek = getelementptr [4 x i8], ptr %i.c, i64 %indvars.iv.i41
  store i32 %i.ej, ptr %i.ek, align 4
  %i.el = shl nuw nsw i64 %indvars.iv.i41, 3      ; 2 uses
  %i.em = load ptr, ptr %i.ef, align 8
  %i.en = trunc nuw nsw i64 %i.el to i32          ; 2 uses
  %i.eo = add nuw nsw i32 %i.en, 32860
  %i.ep = tail call i32 %i.em(ptr noundef %i.ed, i32 %i.eo, i1 noundef zeroext true) #8, !inline_history !22
  %i.eq = getelementptr i8, ptr %i.d, i64 %i.el   ; 2 uses
  store i32 %i.ep, ptr %i.eq, align 8
  %i.er = load ptr, ptr %i.ef, align 8
  %i.es = add nuw nsw i32 %i.en, 32864
  %i.et = tail call i32 %i.er(ptr noundef %i.ed, i32 %i.es, i1 noundef zeroext true) #8, !inline_history !22
  %i.eu = getelementptr i8, ptr %i.eq, i64 4
  store i32 %i.et, ptr %i.eu, align 4
  %indvars.iv.next.i42 = add nuw nsw i64 %indvars.iv.i41, 1 ; 2 uses
  %i.ev = load i8, ptr %i.q, align 8              ; 3 uses
  %i.ew = zext i8 %i.ev to i64
  %i.ex = icmp samesign ult i64 %indvars.iv.next.i42, %i.ew
  br i1 %i.ex, label %bb.p, label %._crit_edge.i, !llvm.loop !23

._crit_edge.i:                                    ; preds = %bb.p
  %i.ey = icmp eq i8 %i.ev, 0
  br i1 %i.ey, label %gen9_sseu_device_status.exit, label %.lr.ph123.i

.lr.ph123.i:                                      ; preds = %._crit_edge.i, %.loopexit.i
  %i.ez = phi i8 [ %i.hg, %.loopexit.i ], [ %i.ev, %._crit_edge.i ] ; 2 uses
  %indvars.iv132.i = phi i64 [ %indvars.iv.next133.i, %.loopexit.i ], [ 0, %._crit_edge.i ] ; 7 uses
  %i.fa = getelementptr [4 x i8], ptr %i.c, i64 %indvars.iv132.i
  %i.fb = load i32, ptr %i.fa, align 4            ; 2 uses
  %i.fc = and i32 %i.fb, 1
  %i.fd = icmp eq i32 %i.fc, 0
  br i1 %i.fd, label %.loopexit.i, label %bb.q

bb.q:                                             ; preds = %.lr.ph123.i
  %i.fe = shl nuw i64 1, %indvars.iv132.i
  %i.ff = load i8, ptr %i.p, align 8
  %i.fg = trunc i64 %i.fe to i8
  %i.fh = or i8 %i.ff, %i.fg
  store i8 %i.fh, ptr %i.p, align 8
  %i.fi = load ptr, ptr %1, align 8               ; 2 uses
  %i.fj = getelementptr i8, ptr %i.fi, i64 1656
  %i.fk = load i8, ptr %i.fj, align 8
  %i.fl = icmp eq i8 %i.fk, 9
  br i1 %i.fl, label %bb.r, label %bb.t

bb.r:                                             ; preds = %bb.q
  %i.fm = getelementptr i8, ptr %i.fi, i64 1664
  %i.fn = load i32, ptr %i.fm, align 8
  %i.fo = and i32 %i.fn, 671088640
  %or.cond.not.i = icmp eq i32 %i.fo, 0
  br i1 %or.cond.not.i, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r
  %i.fp = getelementptr i8, ptr %i.af, i64 %indvars.iv132.i
  %i.fq = load i8, ptr %i.fp, align 1
  %i.fr = getelementptr i8, ptr %i.aa, i64 %indvars.iv132.i
  store i8 %i.fq, ptr %i.fr, align 1
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %bb.r, %bb.q
  %i.fs = load i8, ptr %i.s, align 1              ; 2 uses
  %.not127.i = icmp eq i8 %i.fs, 0
  br i1 %.not127.i, label %.loopexit.i, label %.lr.ph119.i

.lr.ph119.i:                                      ; preds = %bb.t
  %i.ft = getelementptr i8, ptr %i.aa, i64 %indvars.iv132.i ; 2 uses
  %indvars.iv132.tr.i = trunc nuw nsw i64 %indvars.iv132.i to i32
  %i.fu = shl nuw nsw i32 %indvars.iv132.tr.i, 1
  br label %bb.u

bb.u:                                             ; preds = %bb.y, %.lr.ph119.i
  %i.fv = phi i8 [ %i.fs, %.lr.ph119.i ], [ %i.hd, %bb.y ]
  %indvars.iv129.i = phi i64 [ 0, %.lr.ph119.i ], [ %indvars.iv.next130.i, %bb.y ] ; 5 uses
  %i.fw = load ptr, ptr %1, align 8
  %i.fx = getelementptr i8, ptr %i.fw, i64 1664
  %i.fy = load i32, ptr %i.fx, align 4
  %i.fz = and i32 %i.fy, 671088640
  %or.cond115.not.i = icmp eq i32 %i.fz, 0
  br i1 %or.cond115.not.i, label %bb.x, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.ga = shl nuw nsw i64 %indvars.iv129.i, 1
  %i.gb = shl nuw i64 4, %i.ga
  %i.gc = trunc i64 %i.gb to i32
  %i.gd = and i32 %i.fb, %i.gc
  %.not.i43 = icmp eq i32 %i.gd, 0
  br i1 %.not.i43, label %bb.y, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.ge = shl nuw i64 1, %indvars.iv129.i
  %i.gf = load i8, ptr %i.ft, align 1
  %i.gg = trunc i64 %i.ge to i8
  %i.gh = or i8 %i.gf, %i.gg
  store i8 %i.gh, ptr %i.ft, align 1
  br label %bb.x

bb.x:                                             ; preds = %bb.u, %bb.w
  %2 = shl nuw nsw i64 %indvars.iv129.i, 2
  %i.gi = and i64 %2, 4
  %.sroa.0.0..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.0, i64 %i.gi
  %i.gj = load i32, ptr %.sroa.0.0..sroa_idx, align 4
  %i.gk = trunc nuw nsw i64 %indvars.iv129.i to i32
  %i.gl = lshr i32 %i.gk, 1
  %i.gm = add nuw i32 %i.gl, %i.fu
  %i.gn = sext i32 %i.gm to i64
  %i.go = getelementptr [4 x i8], ptr %i.d, i64 %i.gn
  %i.gp = load i32, ptr %i.go, align 4
  %i.gq = and i32 %i.gj, %i.gp
  %i.gr = tail call i64 @llvm.read_register.i64(metadata !0)
  %i.gs = tail call { i32, i64 } asm "# ALT: oldinstr\0A771:\0A\09call __sw_hweight32\0A772:\0A# ALT: padding\0A.skip -(((775f-774f)-(772b-771b)) > 0) * ((775f-774f)-(772b-771b)),0x90\0A773:\0A.pushsection .altinstructions, \22aM\22, @progbits, 14\0A .long 771b - .\0A .long 774f - .\0A .4byte ( 4*32+23)\0A .byte 773b-771b\0A .byte 775f-774f\0A.popsection\0A.pushsection .altinstr_replacement, \22ax\22\0A912: .pushsection .discard.annotate_data, \22M\22, @progbits, 8; .long 912b - ., 1; .popsection\0A# ALT: replacement\0A774:\0A\09popcntl $2, $0\0A775:\0A.popsection\0A", "={ax},={rsp},{di},{rsp},~{dirflag},~{fpsr},~{flags}"(i32 %i.gq, i64 %i.gr) #11, !srcloc !19 ; 2 uses
  %i.gt = extractvalue { i32, i64 } %i.gs, 1
  tail call void @llvm.write_register.i64(metadata !0, i64 %i.gt)
  %.pre.i44.pre = load i8, ptr %i.s, align 1
  %i.gu = extractvalue { i32, i64 } %i.gs, 0
  %i.gv = shl i32 %i.gu, 1                        ; 2 uses
  %i.gw = load i16, ptr %i.ab, align 8
  %i.gx = trunc i32 %i.gv to i16
  %i.gy = add i16 %i.gw, %i.gx
  store i16 %i.gy, ptr %i.ab, align 8
  %i.gz = load i8, ptr %i.ac, align 2
  %i.ha = zext i8 %i.gz to i32
  %i.hb = tail call i32 @llvm.umax.i32(i32 %i.gv, i32 %i.ha)
  %i.hc = trunc i32 %i.hb to i8
  store i8 %i.hc, ptr %i.ac, align 2
  br label %bb.y

bb.y:                                             ; preds = %bb.x, %bb.v
  %i.hd = phi i8 [ %i.fv, %bb.v ], [ %.pre.i44.pre, %bb.x ] ; 2 uses
  %indvars.iv.next130.i = add nuw nsw i64 %indvars.iv129.i, 1 ; 2 uses
  %i.he = zext i8 %i.hd to i64
  %i.hf = icmp samesign ult i64 %indvars.iv.next130.i, %i.he
  br i1 %i.hf, label %bb.u, label %.loopexit.i.loopexit, !llvm.loop !24

.loopexit.i.loopexit:                             ; preds = %bb.y
  %.pre67 = load i8, ptr %i.q, align 8
  br label %.loopexit.i

.loopexit.i:                                      ; preds = %.loopexit.i.loopexit, %bb.t, %.lr.ph123.i
  %i.hg = phi i8 [ %.pre67, %.loopexit.i.loopexit ], [ %i.ez, %bb.t ], [ %i.ez, %.lr.ph123.i ] ; 2 uses
  %indvars.iv.next133.i = add nuw nsw i64 %indvars.iv132.i, 1 ; 2 uses
  %i.hh = zext i8 %i.hg to i64
  %i.hi = icmp samesign ult i64 %indvars.iv.next133.i, %i.hh
  br i1 %i.hi, label %.lr.ph123.i, label %gen9_sseu_device_status.exit, !llvm.loop !25

gen9_sseu_device_status.exit:                     ; preds = %.loopexit.i, %bb.o, %._crit_edge.i
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #12
  br label %cherryview_sseu_device_status.exit

bb.z:                                             ; preds = %bb.n
  %i.hj = icmp ugt i8 %i.eb, 10
  br i1 %i.hj, label %bb.aa, label %cherryview_sseu_device_status.exit

bb.aa:                                            ; preds = %bb.z
  %i.hk = load ptr, ptr %i.ad, align 8            ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #12
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #12
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.057)
  store i64 93458488361045, ptr %.sroa.057, align 8
  %i.hl = load i8, ptr %i.q, align 8
  %.not187.i = icmp eq i8 %i.hl, 0
  br i1 %.not187.i, label %gen11_sseu_device_status.exit, label %.lr.ph.i46

.lr.ph.i46:                                       ; preds = %bb.aa
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %i.a, i8 0, i64 32, i1 false), !annotation !21
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(64) %i.b, i8 0, i64 64, i1 false), !annotation !21
  %i.hm = getelementptr i8, ptr %i.hk, i64 144    ; 6 uses
  %i.hn = load ptr, ptr %i.hm, align 8
  %i.ho = tail call i32 %i.hn(ptr noundef %i.hk, i32 32844, i1 noundef zeroext true) #8, !inline_history !26
  %i.hp = and i32 %i.ho, 127
  store i32 %i.hp, ptr %i.a, align 16
  %i.hq = load ptr, ptr %i.hm, align 8
  %i.hr = tail call i32 %i.hq(ptr noundef %i.hk, i32 32860, i1 noundef zeroext true) #8, !inline_history !26
  store i32 %i.hr, ptr %i.b, align 16
  %i.hs = load ptr, ptr %i.hm, align 8
  %i.ht = tail call i32 %i.hs(ptr noundef %i.hk, i32 32864, i1 noundef zeroext true) #8, !inline_history !26
  store i32 %i.ht, ptr %i.ah, align 4
  %i.hu = load i8, ptr %i.q, align 8              ; 2 uses
  %i.hv = icmp ugt i8 %i.hu, 1
  br i1 %i.hv, label %.peel.next.i, label %._crit_edge.i47

.peel.next.i:                                     ; preds = %.lr.ph.i46, %.peel.next.i
  %indvars.iv.i52 = phi i64 [ %indvars.iv.next.i54, %.peel.next.i ], [ 1, %.lr.ph.i46 ] ; 4 uses
  %.lhs.trunc.i = trunc nuw i64 %indvars.iv.i52 to i8 ; 2 uses
  %i.hw = udiv i8 %.lhs.trunc.i, 3
  %.zext.i = zext nneg i8 %i.hw to i32            ; 2 uses
  %i.hx = mul nuw nsw i32 %.zext.i, 52
  %i.hy = add nuw nsw i32 %i.hx, 32844
  %i.hz = urem i8 %.lhs.trunc.i, 3
  %.zext177.i = zext nneg i8 %i.hz to i32         ; 2 uses
  %i.ia = shl nuw nsw i32 %.zext177.i, 2
  %i.ib = add nuw nsw i32 %i.hy, %i.ia
  %i.ic = load ptr, ptr %i.hm, align 8
  %i.id = tail call i32 %i.ic(ptr noundef %i.hk, i32 %i.ib, i1 noundef zeroext true) #8, !inline_history !26
  %i.ie = and i32 %i.id, 31
  %i.if = getelementptr [4 x i8], ptr %i.a, i64 %indvars.iv.i52
  store i32 %i.ie, ptr %i.if, align 4
  %i.ig = mul nuw nsw i32 %.zext.i, 48
  %i.ih = shl nuw nsw i32 %.zext177.i, 3
  %i.ii = add nuw nsw i32 %i.ih, %i.ig            ; 2 uses
  %i.ij = add nuw nsw i32 %i.ii, 32860
  %i.ik = load ptr, ptr %i.hm, align 8
  %i.il = tail call i32 %i.ik(ptr noundef %i.hk, i32 %i.ij, i1 noundef zeroext true) #8, !inline_history !26
  %.idx.i53 = shl nuw nsw i64 %indvars.iv.i52, 3
  %i.im = getelementptr i8, ptr %i.b, i64 %.idx.i53 ; 2 uses
  store i32 %i.il, ptr %i.im, align 8
  %i.in = add nuw nsw i32 %i.ii, 32864
  %i.io = load ptr, ptr %i.hm, align 8
  %i.ip = tail call i32 %i.io(ptr noundef %i.hk, i32 %i.in, i1 noundef zeroext true) #8, !inline_history !26
  %i.iq = getelementptr i8, ptr %i.im, i64 4
  store i32 %i.ip, ptr %i.iq, align 4
  %indvars.iv.next.i54 = add nuw nsw i64 %indvars.iv.i52, 1 ; 2 uses
  %i.ir = load i8, ptr %i.q, align 8              ; 2 uses
  %i.is = zext i8 %i.ir to i64
  %i.it = icmp samesign ult i64 %indvars.iv.next.i54, %i.is
  br i1 %i.it, label %.peel.next.i, label %._crit_edge.i47, !llvm.loop !27

._crit_edge.i47:                                  ; preds = %.peel.next.i, %.lr.ph.i46
  %i.iu = phi i8 [ %i.hu, %.lr.ph.i46 ], [ %i.ir, %.peel.next.i ] ; 2 uses
  %i.iv = icmp eq i8 %i.iu, 0
  br i1 %i.iv, label %gen11_sseu_device_status.exit, label %.lr.ph185.i

.lr.ph185.i:                                      ; preds = %._crit_edge.i47, %.loopexit.i50
  %i.iw = phi i8 [ %i.kp, %.loopexit.i50 ], [ %i.iu, %._crit_edge.i47 ] ; 2 uses
  %indvars.iv195.i = phi i64 [ %indvars.iv.next196.i, %.loopexit.i50 ], [ 0, %._crit_edge.i47 ] ; 6 uses
  %i.ix = getelementptr [4 x i8], ptr %i.a, i64 %indvars.iv195.i
  %i.iy = load i32, ptr %i.ix, align 4            ; 2 uses
  %i.iz = and i32 %i.iy, 1
  %i.ja = icmp eq i32 %i.iz, 0
  br i1 %i.ja, label %.loopexit.i50, label %bb.ab

bb.ab:                                            ; preds = %.lr.ph185.i
  %i.jb = shl nuw i64 1, %indvars.iv195.i
  %i.jc = load i8, ptr %i.p, align 8
  %i.jd = trunc i64 %i.jb to i8
  %i.je = or i8 %i.jc, %i.jd
  store i8 %i.je, ptr %i.p, align 8
  %i.jf = getelementptr i8, ptr %i.af, i64 %indvars.iv195.i
  %i.jg = load i8, ptr %i.jf, align 1
  %i.jh = getelementptr i8, ptr %i.aa, i64 %indvars.iv195.i
  store i8 %i.jg, ptr %i.jh, align 1
  %i.ji = load i8, ptr %i.s, align 1              ; 2 uses
  %.not189.i = icmp eq i8 %i.ji, 0
  br i1 %.not189.i, label %.loopexit.i50, label %.lr.ph181.i

.lr.ph181.i:                                      ; preds = %bb.ab
  %indvars.iv195.tr.i = trunc nuw nsw i64 %indvars.iv195.i to i32
  %i.jj = shl nuw nsw i32 %indvars.iv195.tr.i, 1
  br label %bb.ac

bb.ac:                                            ; preds = %bb.af, %.lr.ph181.i
  %i.jk = phi i8 [ %i.ji, %.lr.ph181.i ], [ %i.km, %bb.af ]
  %indvars.iv192.i = phi i64 [ 0, %.lr.ph181.i ], [ %indvars.iv.next193.i, %bb.af ] ; 4 uses
  %i.jl = load i8, ptr %i.ai, align 1
  %i.jm = and i8 %i.jl, 2
  %.not.i48 = icmp eq i8 %i.jm, 0
  br i1 %.not.i48, label %bb.ae, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.jn = shl nuw nsw i64 %indvars.iv192.i, 1
  %i.jo = shl nuw i64 4, %i.jn
  %i.jp = trunc i64 %i.jo to i32
  %i.jq = and i32 %i.iy, %i.jp
  %.not148.i = icmp eq i32 %i.jq, 0
  br i1 %.not148.i, label %bb.af, label %bb.ae

bb.ae:                                            ; preds = %bb.ac, %bb.ad
  %3 = shl nuw nsw i64 %indvars.iv192.i, 2
  %i.jr = and i64 %3, 4
  %.sroa.057.0..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.057, i64 %i.jr
  %i.js = load i32, ptr %.sroa.057.0..sroa_idx, align 4
  %i.jt = trunc nuw nsw i64 %indvars.iv192.i to i32
  %i.ju = lshr i32 %i.jt, 1
  %i.jv = add nuw i32 %i.ju, %i.jj
  %i.jw = sext i32 %i.jv to i64
  %i.jx = getelementptr [4 x i8], ptr %i.b, i64 %i.jw
  %i.jy = load i32, ptr %i.jx, align 4
  %i.jz = and i32 %i.js, %i.jy
  %i.ka = tail call i64 @llvm.read_register.i64(metadata !0)
  %i.kb = tail call { i32, i64 } asm "# ALT: oldinstr\0A771:\0A\09call __sw_hweight32\0A772:\0A# ALT: padding\0A.skip -(((775f-774f)-(772b-771b)) > 0) * ((775f-774f)-(772b-771b)),0x90\0A773:\0A.pushsection .altinstructions, \22aM\22, @progbits, 14\0A .long 771b - .\0A .long 774f - .\0A .4byte ( 4*32+23)\0A .byte 773b-771b\0A .byte 775f-774f\0A.popsection\0A.pushsection .altinstr_replacement, \22ax\22\0A912: .pushsection .discard.annotate_data, \22M\22, @progbits, 8; .long 912b - ., 1; .popsection\0A# ALT: replacement\0A774:\0A\09popcntl $2, $0\0A775:\0A.popsection\0A", "={ax},={rsp},{di},{rsp},~{dirflag},~{fpsr},~{flags}"(i32 %i.jz, i64 %i.ka) #11, !srcloc !19 ; 2 uses
  %i.kc = extractvalue { i32, i64 } %i.kb, 1
  tail call void @llvm.write_register.i64(metadata !0, i64 %i.kc)
  %.pre.i49.pre = load i8, ptr %i.s, align 1
  %i.kd = extractvalue { i32, i64 } %i.kb, 0
  %i.ke = shl i32 %i.kd, 1                        ; 2 uses
  %i.kf = load i16, ptr %i.ab, align 8
  %i.kg = trunc i32 %i.ke to i16
  %i.kh = add i16 %i.kf, %i.kg
  store i16 %i.kh, ptr %i.ab, align 8
  %i.ki = load i8, ptr %i.ac, align 2
  %i.kj = zext i8 %i.ki to i32
  %i.kk = tail call i32 @llvm.umax.i32(i32 %i.ke, i32 %i.kj)
  %i.kl = trunc i32 %i.kk to i8
  store i8 %i.kl, ptr %i.ac, align 2
  br label %bb.af

bb.af:                                            ; preds = %bb.ae, %bb.ad
  %i.km = phi i8 [ %i.jk, %bb.ad ], [ %.pre.i49.pre, %bb.ae ] ; 2 uses
  %indvars.iv.next193.i = add nuw nsw i64 %indvars.iv192.i, 1 ; 2 uses
  %i.kn = zext i8 %i.km to i64
  %i.ko = icmp samesign ult i64 %indvars.iv.next193.i, %i.kn
  br i1 %i.ko, label %bb.ac, label %.loopexit.i50.loopexit, !llvm.loop !29

.loopexit.i50.loopexit:                           ; preds = %bb.af
  %.pre = load i8, ptr %i.q, align 8
  br label %.loopexit.i50

.loopexit.i50:                                    ; preds = %.loopexit.i50.loopexit, %bb.ab, %.lr.ph185.i
  %i.kp = phi i8 [ %.pre, %.loopexit.i50.loopexit ], [ %i.iw, %bb.ab ], [ %i.iw, %.lr.ph185.i ] ; 2 uses
  %indvars.iv.next196.i = add nuw nsw i64 %indvars.iv195.i, 1 ; 2 uses
  %i.kq = zext i8 %i.kp to i64
  %i.kr = icmp samesign ult i64 %indvars.iv.next196.i, %i.kq
  br i1 %i.kr, label %.lr.ph185.i, label %gen11_sseu_device_status.exit, !llvm.loop !30

gen11_sseu_device_status.exit:                    ; preds = %.loopexit.i50, %bb.aa, %._crit_edge.i47
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.057)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #12
  br label %cherryview_sseu_device_status.exit

cherryview_sseu_device_status.exit:               ; preds = %fls.exit.i, %bb.i, %bb.g, %bb.f, %gen9_sseu_device_status.exit, %gen11_sseu_device_status.exit, %bb.z
  tail call void @intel_runtime_pm_put_unchecked(ptr noundef %i.w) #8
  br label %i915_print_sseu_info.exit

i915_print_sseu_info.exit:                        ; preds = %cherryview_sseu_device_status.exit, %bb.c
  %i.ks = load i8, ptr %i.p, align 8
  %i.kt = zext i8 %i.ks to i32
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.6, ptr noundef nonnull @.str.5, i32 noundef %i.kt) #8
  %i.ku = load i8, ptr %i.p, align 8
  %i.kv = zext i8 %i.ku to i32
  %i.kw = tail call i64 @llvm.read_register.i64(metadata !0)
  %i.kx = tail call { i32, i64 } asm "# ALT: oldinstr\0A771:\0A\09call __sw_hweight32\0A772:\0A# ALT: padding\0A.skip -(((775f-774f)-(772b-771b)) > 0) * ((775f-774f)-(772b-771b)),0x90\0A773:\0A.pushsection .altinstructions, \22aM\22, @progbits, 14\0A .long 771b - .\0A .long 774f - .\0A .4byte ( 4*32+23)\0A .byte 773b-771b\0A .byte 775f-774f\0A.popsection\0A.pushsection .altinstr_replacement, \22ax\22\0A912: .pushsection .discard.annotate_data, \22M\22, @progbits, 8; .long 912b - ., 1; .popsection\0A# ALT: replacement\0A774:\0A\09popcntl $2, $0\0A775:\0A.popsection\0A", "={ax},={rsp},{di},{rsp},~{dirflag},~{fpsr},~{flags}"(i32 range(i32 0, 256) %i.kv, i64 %i.kw) #11, !srcloc !19 ; 2 uses
  %i.ky = extractvalue { i32, i64 } %i.kx, 1
  tail call void @llvm.write_register.i64(metadata !0, i64 %i.ky)
  %i.kz = extractvalue { i32, i64 } %i.kx, 0
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.7, ptr noundef nonnull @.str.5, i32 noundef %i.kz) #8
  %i.la = tail call i32 @intel_sseu_subslice_total(ptr noundef nonnull %i.p) #8
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.8, ptr noundef nonnull @.str.5, i32 noundef %i.la) #8
  tail call void @intel_sseu_print_ss_info(ptr noundef nonnull @.str.5, ptr noundef nonnull %i.p, ptr noundef %0) #8
  %i.lb = getelementptr i8, ptr %i.p, i64 160
  %i.lc = load i16, ptr %i.lb, align 8
  %i.ld = zext i16 %i.lc to i32
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.9, ptr noundef nonnull @.str.5, i32 noundef %i.ld) #8
  %i.le = getelementptr i8, ptr %i.p, i64 162
  %i.lf = load i8, ptr %i.le, align 2
  %i.lg = zext i8 %i.lf to i32
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.10, ptr noundef nonnull @.str.5, i32 noundef %i.lg) #8
  tail call void @kfree(ptr noundef nonnull %i.p) #8
  br label %bb.ag

bb.ag:                                            ; preds = %bb.b, %bb.a, %i915_print_sseu_info.exit
  %.0 = phi i32 [ -19, %bb.a ], [ 0, %i915_print_sseu_info.exit ], [ -12, %bb.b ]
  ret i32 %.0
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal fastcc void @i915_print_sseu_info(ptr noundef %0, i1 noundef zeroext %1, i1 noundef zeroext %2, ptr noundef %3) unnamed_addr #0 align 16 prefalign(16) {
bb.a:
  %i.a = select i1 %1, ptr @.str.4, ptr @.str.5   ; 6 uses
  %i.b = load i8, ptr %3, align 8
  %i.c = zext i8 %i.b to i32
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.6, ptr noundef nonnull %i.a, i32 noundef %i.c) #8
  %i.d = load i8, ptr %3, align 8
  %i.e = zext i8 %i.d to i32
  %i.f = tail call i64 @llvm.read_register.i64(metadata !0)
  %i.g = tail call { i32, i64 } asm "# ALT: oldinstr\0A771:\0A\09call __sw_hweight32\0A772:\0A# ALT: padding\0A.skip -(((775f-774f)-(772b-771b)) > 0) * ((775f-774f)-(772b-771b)),0x90\0A773:\0A.pushsection .altinstructions, \22aM\22, @progbits, 14\0A .long 771b - .\0A .long 774f - .\0A .4byte ( 4*32+23)\0A .byte 773b-771b\0A .byte 775f-774f\0A.popsection\0A.pushsection .altinstr_replacement, \22ax\22\0A912: .pushsection .discard.annotate_data, \22M\22, @progbits, 8; .long 912b - ., 1; .popsection\0A# ALT: replacement\0A774:\0A\09popcntl $2, $0\0A775:\0A.popsection\0A", "={ax},={rsp},{di},{rsp},~{dirflag},~{fpsr},~{flags}"(i32 range(i32 0, 256) %i.e, i64 %i.f) #11, !srcloc !19 ; 2 uses
  %i.h = extractvalue { i32, i64 } %i.g, 1
  tail call void @llvm.write_register.i64(metadata !0, i64 %i.h)
  %i.i = extractvalue { i32, i64 } %i.g, 0
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.7, ptr noundef nonnull %i.a, i32 noundef %i.i) #8
  %i.j = tail call i32 @intel_sseu_subslice_total(ptr noundef %3) #8
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.8, ptr noundef nonnull %i.a, i32 noundef %i.j) #8
  tail call void @intel_sseu_print_ss_info(ptr noundef nonnull %i.a, ptr noundef %3, ptr noundef %0) #8
  %i.k = getelementptr i8, ptr %3, i64 160
  %i.l = load i16, ptr %i.k, align 8
  %i.m = zext i16 %i.l to i32
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.9, ptr noundef nonnull %i.a, i32 noundef %i.m) #8
  %i.n = getelementptr i8, ptr %3, i64 162
  %i.o = load i8, ptr %i.n, align 2
  %i.p = zext i8 %i.o to i32
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.10, ptr noundef nonnull %i.a, i32 noundef %i.p) #8
  br i1 %1, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  %i.q = select i1 %2, ptr @.str.16, ptr @.str.17
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.11, ptr noundef nonnull %i.q) #8
  br i1 %2, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.r = getelementptr i8, ptr %3, i64 163
  %i.s = load i8, ptr %i.r, align 1
  %i.t = zext i8 %i.s to i32
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.12, i32 noundef %i.t) #8
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.u = getelementptr i8, ptr %3, i64 167        ; 3 uses
  %i.v = load i8, ptr %i.u, align 1
  %i.w = trunc i8 %i.v to i1
  %i.x = select i1 %i.w, ptr @.str.16, ptr @.str.17
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.13, ptr noundef nonnull %i.x) #8
  %i.y = load i8, ptr %i.u, align 1
  %i.z = and i8 %i.y, 2
  %.not = icmp eq i8 %i.z, 0
  %i.aa = select i1 %.not, ptr @.str.17, ptr @.str.16
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.14, ptr noundef nonnull %i.aa) #8
  %i.ab = load i8, ptr %i.u, align 1
  %i.ac = and i8 %i.ab, 4
  %.not44 = icmp eq i8 %i.ac, 0
  %i.ad = select i1 %.not44, ptr @.str.17, ptr @.str.16
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.15, ptr noundef nonnull %i.ad) #8
  br label %bb.e

bb.e:                                             ; preds = %bb.a, %bb.d
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @intel_sseu_set_info(ptr noundef, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local ptr @intel_runtime_pm_get(ptr noundef) local_unnamed_addr #2

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define dso_local void @intel_sseu_debugfs_register(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 align 16 prefalign(16) {
bb.a:
  tail call void @intel_gt_debugfs_register_files(ptr noundef %1, ptr noundef nonnull @intel_sseu_debugfs_register.files, i64 noundef 2, ptr noundef %0) #8
  ret void
}

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @intel_gt_debugfs_register_files(ptr noundef, ptr noundef, i64 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i32 @seq_write(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @seq_printf(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i32 @intel_sseu_subslice_total(ptr noundef) local_unnamed_addr #2

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @intel_sseu_print_ss_info(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(read)
declare i64 @llvm.read_register.i64(metadata) #3

; Function Attrs: nocallback nounwind
declare void @llvm.write_register.i64(metadata, i64) #4

; Function Attrs: noredzone null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @__kmalloc_cache_noprof(ptr noundef, i32 noundef, i64 noundef) local_unnamed_addr #5

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #6

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @intel_runtime_pm_put_unchecked(ptr noundef) local_unnamed_addr #2

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i64 @seq_lseek(ptr noundef, i64 noundef, i32 noundef) #2

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i64 @seq_read(ptr noundef, ptr noundef, i64 noundef, ptr noundef) #2

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @sseu_status_open(ptr nofree noundef readonly captures(none) %0, ptr noundef %1) #0 align 16 prefalign(16) {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 536
  %i.b = load ptr, ptr %i.a, align 8
  %i.c = tail call i32 @single_open(ptr noundef %1, ptr noundef nonnull @sseu_status_show, ptr noundef %i.b) #8
  ret i32 %i.c
}

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i32 @single_release(ptr noundef, ptr noundef) #2

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i32 @single_open(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal range(i32 -19, 1) i32 @sseu_status_show(ptr noundef %0, ptr nofree readnone captures(none) %1) #0 align 16 prefalign(16) {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 104
  %i.b = load ptr, ptr %i.a, align 8
  %i.c = tail call i32 @intel_sseu_status(ptr noundef %0, ptr noundef %i.b) #9
  ret i32 %i.c
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @sseu_topology_open(ptr nofree noundef readonly captures(none) %0, ptr noundef %1) #0 align 16 prefalign(16) {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 536
  %i.b = load ptr, ptr %i.a, align 8
  %i.c = tail call i32 @single_open(ptr noundef %1, ptr noundef nonnull @sseu_topology_show, ptr noundef %i.b) #8
  ret i32 %i.c
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal noundef i32 @sseu_topology_show(ptr noundef %0, ptr nofree readnone captures(none) %1) #0 align 16 prefalign(16) {
bb.a:
  %2 = alloca %struct.drm_printer, align 8        ; 7 uses
  %i.a = getelementptr i8, ptr %0, i64 104
  %i.b = load ptr, ptr %i.a, align 8              ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #12
  store ptr @__drm_printfn_seq_file, ptr %2, align 8, !alias.scope !31
end_hunk_0
