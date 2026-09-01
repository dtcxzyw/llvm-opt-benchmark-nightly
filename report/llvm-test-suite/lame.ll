Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm-test-suite/original/lame?download=true
inline.NumInlined: 4
inline.NumDeleted: 1
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumRuntimeUnrolled: 7
loop-unroll.NumUnrolled: 10
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.bit_stream_struc = type { ptr, i32, ptr, ptr, i32, i64, i32, i32 }
%struct.III_side_info_t = type { i32, i32, i32, [2 x [4 x i32]], [2 x %struct.anon] }
%struct.anon = type { [2 x %struct.gr_info_ss] }
%struct.gr_info_ss = type { %struct.gr_info }
%struct.gr_info = type { i32, i32, i32, i32, i32, i32, i32, i32, [3 x i32], [3 x i32], i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, [4 x i32] }
%struct.ID3TAGDATA = type { i32, i32, [31 x i8], [31 x i8], [31 x i8], [5 x i8], [31 x i8], [128 x i8], [1 x i8], i8 }
%struct.scalefac_struct = type { [23 x i32], [14 x i32] }
%struct.III_psy_ratio = type { %struct.III_psy_xmin, %struct.III_psy_xmin }
%struct.III_psy_xmin = type { [22 x double], [13 x [3 x double]] }
%struct.III_scalefac_t = type { [22 x i32], [13 x [3 x i32]] }

@bs = internal global %struct.bit_stream_struc zeroinitializer, align 8
@l3_side = internal global %struct.III_side_info_t zeroinitializer, align 8
@stderr = external local_unnamed_addr global ptr, align 8
@.str = private unnamed_addr constant [65 x i8] c"Warning: highpass filter disabled.  highpass frequency to small\0A\00", align 1
@id3tag = external global %struct.ID3TAGDATA, align 4
@sfBandIndex = external local_unnamed_addr global [6 x %struct.scalefac_struct], align 16
@scalefac_band = external local_unnamed_addr global %struct.scalefac_struct, align 4
@lame_print_config.mode_names = internal unnamed_addr constant [4 x ptr] [ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4], align 16
@.str.1 = private unnamed_addr constant [7 x i8] c"stereo\00", align 1
@.str.2 = private unnamed_addr constant [9 x i8] c"j-stereo\00", align 1
@.str.3 = private unnamed_addr constant [8 x i8] c"dual-ch\00", align 1
@.str.4 = private unnamed_addr constant [10 x i8] c"single-ch\00", align 1
@.str.5 = private unnamed_addr constant [68 x i8] c"Autoconverting from stereo to mono. Setting encoding to mono mode.\0A\00", align 1
@.str.6 = private unnamed_addr constant [40 x i8] c"Resampling:  input=%ikHz  output=%ikHz\0A\00", align 1
@.str.7 = private unnamed_addr constant [70 x i8] c"Using polyphase highpass filter, transition band: %.0f Hz -  %.0f Hz\0A\00", align 1
@.str.8 = private unnamed_addr constant [70 x i8] c"Using polyphase lowpass filter,  transition band:  %.0f Hz - %.0f Hz\0A\00", align 1
@.str.9 = private unnamed_addr constant [15 x i8] c"Analyzing %s \0A\00", align 1
@.str.10 = private unnamed_addr constant [19 x i8] c"Encoding %s to %s\0A\00", align 1
@.str.12 = private unnamed_addr constant [6 x i8] c"stdin\00", align 1
@.str.13 = private unnamed_addr constant [7 x i8] c"stdout\00", align 1
@.str.14 = private unnamed_addr constant [59 x i8] c"Encoding as %.1fkHz VBR(q=%i) %s MPEG%i LayerIII  qval=%i\0A\00", align 1
@.str.15 = private unnamed_addr constant [67 x i8] c"Encoding as %.1f kHz %d kbps %s MPEG%i LayerIII (%4.1fx)  qval=%i\0A\00", align 1
@lame_encode_frame.frameBits = internal unnamed_addr global i64 0, align 8
@lame_encode_frame.frac_SpF = internal unnamed_addr global double 0.000000e+00, align 8
@lame_encode_frame.slot_lag = internal unnamed_addr global double 0.000000e+00, align 8
@lame_encode_frame.sentBits = internal unnamed_addr global i64 0, align 8
@lame_encode_frame.ms_ratio = internal global [2 x double] zeroinitializer, align 16
@lame_encode_frame.ms_ener_ratio = internal global [2 x double] zeroinitializer, align 16
@.str.16 = private unnamed_addr constant [36 x i8] c"Sent %ld bits = %ld slots plus %ld\0A\00", align 1
@fill_buffer_resample.itime = internal unnamed_addr global [2 x double] zeroinitializer, align 16
@fill_buffer_resample.inbuf_old = internal unnamed_addr global [2 x [5 x i16]] zeroinitializer, align 16
@fill_buffer_resample.init = internal unnamed_addr global [2 x i32] zeroinitializer, align 4
@lame_encode_buffer.frame_buffered = internal unnamed_addr global i1 false, align 4
@mfbuf = internal global [2 x [3056 x i16]] zeroinitializer, align 16
@mf_samples_to_encode = internal unnamed_addr global i32 0, align 4
@mf_size = internal unnamed_addr global i32 0, align 4
@lame_encode_buffer_interleaved.frame_buffered = internal unnamed_addr global i1 false, align 4

; Function Attrs: nounwind uwtable
define dso_local void @lame_init_params(ptr noundef initializes((168, 192), (200, 208), (216, 220)) %0) local_unnamed_addr #0 {
bb.a:
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) @bs, i8 0, i64 56, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(528) @l3_side, i8 0, i64 528, i1 false)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 168
  store i64 0, ptr %i.a, align 8, !tbaa !8
  tail call void @InitFormatBitStream() #17
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load i32, ptr %i.b, align 8, !tbaa !14
  %i.d = icmp eq i32 %i.c, 1
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 36 ; 2 uses
  br i1 %i.d, label %.thread435, label %bb.b

.thread435:                                       ; preds = %bb.a
  store i32 3, ptr %i.e, align 4, !tbaa !15
  br label %bb.c

bb.b:                                             ; preds = %bb.a
  %.pre = load i32, ptr %i.e, align 4, !tbaa !15
  %.pre.fr = freeze i32 %.pre
  %i.f = icmp ne i32 %.pre.fr, 3                  ; 2 uses
  %spec.select448 = select i1 %i.f, i32 2, i32 1
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %.thread435
  %i.g = phi i1 [ false, %.thread435 ], [ %i.f, %bb.b ] ; 3 uses
  %i.h = phi i32 [ 1, %.thread435 ], [ %spec.select448, %bb.b ] ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 204 ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 36 ; 4 uses
  store i32 %i.h, ptr %i.i, align 4
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 14 uses
  %i.l = load i32, ptr %i.k, align 8, !tbaa !16   ; 2 uses
  %i.m = icmp eq i32 %i.l, 0
  br i1 %i.m, label %bb.d, label %._crit_edge399

._crit_edge399:                                   ; preds = %bb.c
  %.phi.trans.insert400 = getelementptr inbounds nuw i8, ptr %0, i64 48
  %.pre401 = load i32, ptr %.phi.trans.insert400, align 8, !tbaa !17
  br label %bb.v

bb.d:                                             ; preds = %bb.c
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.o = load i32, ptr %i.n, align 4, !tbaa !18   ; 5 uses
  %i.p = icmp sgt i32 %i.o, 47999
  br i1 %i.p, label %bb.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.q = icmp sgt i32 %i.o, 44099
  br i1 %i.q, label %bb.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.r = icmp sgt i32 %i.o, 31999
  br i1 %i.r, label %bb.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.s = icmp sgt i32 %i.o, 23999
  br i1 %i.s, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %.inv = icmp slt i32 %i.o, 22050
  %. = select i1 %.inv, i32 16000, i32 22050
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g, %bb.f, %bb.e, %bb.d
  %.sink449 = phi i32 [ 48000, %bb.d ], [ 32000, %bb.f ], [ 24000, %bb.g ], [ %., %bb.h ], [ 44100, %bb.e ] ; 4 uses
  store i32 %.sink449, ptr %i.k, align 8, !tbaa !16
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.u = load i32, ptr %i.t, align 8, !tbaa !17   ; 10 uses
  %i.v = icmp sgt i32 %i.u, 0
  br i1 %i.v, label %bb.j, label %bb.v

bb.j:                                             ; preds = %bb.i
  %i.w = shl nuw nsw i32 %.sink449, 4
  %i.x = zext i1 %i.g to i32
  %i.y = shl nuw nsw i32 %i.w, %i.x
  %i.z = uitofp nneg i32 %i.y to double
  %i.aa = uitofp nneg i32 %i.u to double          ; 2 uses
  %i.ab = fmul nnan double %i.aa, 1.000000e+03
  %i.ac = fdiv double %i.z, %i.ab
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.ae = load i32, ptr %i.ad, align 8, !tbaa !19
  %i.af = icmp eq i32 %i.ae, 0
  %i.ag = fcmp ogt double %i.ac, f0x402A000010000000
  %or.cond = select i1 %i.af, i1 %i.ag, i1 false
  br i1 %or.cond, label %bb.k, label %bb.v

bb.k:                                             ; preds = %bb.j
  %i.ah = fmul nnan double %i.aa, 1.000000e+04
  %i.ai = shl nuw nsw i32 %i.h, 4
  %i.aj = uitofp nneg i32 %i.ai to double
  %i.ak = fdiv double %i.ah, %i.aj
  %i.al = fptosi double %i.ak to i32              ; 5 uses
  %i.am = icmp slt i32 %i.al, 16001
  br i1 %i.am, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  store i32 16000, ptr %i.k, align 8, !tbaa !16
  br label %bb.v

bb.m:                                             ; preds = %bb.k
  %i.an = icmp samesign ult i32 %i.al, 22051
  br i1 %i.an, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  store i32 22050, ptr %i.k, align 8, !tbaa !16
  br label %bb.v

bb.o:                                             ; preds = %bb.m
  %i.ao = icmp samesign ult i32 %i.al, 24001
  br i1 %i.ao, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  store i32 24000, ptr %i.k, align 8, !tbaa !16
  br label %bb.v

bb.q:                                             ; preds = %bb.o
  %i.ap = icmp samesign ult i32 %i.al, 32001
  br i1 %i.ap, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  store i32 32000, ptr %i.k, align 8, !tbaa !16
  br label %bb.v

bb.s:                                             ; preds = %bb.q
  %i.aq = icmp samesign ult i32 %i.al, 44101
  br i1 %i.aq, label %bb.t, label %bb.u

bb.t:                                             ; preds = %bb.s
  store i32 44100, ptr %i.k, align 8, !tbaa !16
  br label %bb.v

bb.u:                                             ; preds = %bb.s
  store i32 48000, ptr %i.k, align 8, !tbaa !16
  br label %bb.v

bb.v:                                             ; preds = %._crit_edge399, %bb.i, %bb.l, %bb.p, %bb.t, %bb.u, %bb.r, %bb.n, %bb.j
  %i.ar = phi i32 [ %i.u, %bb.i ], [ %i.u, %bb.l ], [ %i.u, %bb.p ], [ %i.u, %bb.t ], [ %i.u, %bb.u ], [ %i.u, %bb.r ], [ %i.u, %bb.n ], [ %i.u, %bb.j ], [ %.pre401, %._crit_edge399 ] ; 2 uses
  %i.as = phi i32 [ %.sink449, %bb.i ], [ 16000, %bb.l ], [ 24000, %bb.p ], [ 44100, %bb.t ], [ 48000, %bb.u ], [ 32000, %bb.r ], [ 22050, %bb.n ], [ %.sink449, %bb.j ], [ %i.l, %._crit_edge399 ] ; 5 uses
  %i.at = icmp sgt i32 %i.as, 24000               ; 2 uses
  %i.au = select i1 %i.at, i32 2, i32 1
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 200
  store i32 %i.au, ptr %i.av, align 8, !tbaa !20
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 184
  store i32 800, ptr %i.aw, align 8, !tbaa !21
  %i.ax = zext i1 %i.at to i32
  %i.ay = shl nuw nsw i32 576, %i.ax              ; 2 uses
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 188
  store i32 %i.ay, ptr %i.az, align 4, !tbaa !22
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.bb = icmp eq i32 %i.ar, 0
  br i1 %i.bb, label %bb.w, label %bb.x

bb.w:                                             ; preds = %bb.v
  %not. = icmp slt i32 %i.as, 24001
  %spec.store.select349 = select i1 %not., i32 64, i32 128 ; 2 uses
  store i32 %spec.store.select349, ptr %i.ba, align 8
  br label %bb.x

bb.x:                                             ; preds = %bb.w, %bb.v
  %i.bc = phi i32 [ %spec.store.select349, %bb.w ], [ %i.ar, %bb.v ] ; 2 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 216 ; 2 uses
  store float 1.000000e+00, ptr %i.bd, align 8, !tbaa !23
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.bf = load i32, ptr %i.be, align 4, !tbaa !18 ; 2 uses
  %.not = icmp eq i32 %i.as, %i.bf
  br i1 %.not, label %bb.z, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.bg = sitofp i32 %i.bf to float
  %i.bh = sitofp i32 %i.as to float
  %i.bi = fdiv float %i.bg, %i.bh                 ; 2 uses
  store float %i.bi, ptr %i.bd, align 8, !tbaa !23
  br label %bb.z

bb.z:                                             ; preds = %bb.y, %bb.x
  %i.bj = phi float [ %i.bi, %bb.y ], [ 1.000000e+00, %bb.x ]
  %i.bk = getelementptr inbounds nuw i8, ptr %0, i64 176
  %i.bl = load i64, ptr %0, align 8, !tbaa !24
  %i.bm = uitofp i64 %i.bl to float
  %i.bn = uitofp nneg i32 %i.ay to float
  %i.bo = fmul float %i.bj, %i.bn
  %i.bp = fdiv float %i.bm, %i.bo
  %i.bq = fadd float %i.bp, 2.000000e+00
  %i.br = fptosi float %i.bq to i64
  store i64 %i.br, ptr %i.bk, align 8, !tbaa !25
  %i.bs = icmp sgt i32 %i.bc, 319
  %i.bt = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 2 uses
  br i1 %i.bs, label %bb.aa, label %._crit_edge402

._crit_edge402:                                   ; preds = %bb.z
  %.pre404 = load i32, ptr %i.bt, align 8, !tbaa !19
  %i.bu = icmp ne i32 %.pre404, 0
  br label %bb.ab

bb.aa:                                            ; preds = %bb.z
  store i32 0, ptr %i.bt, align 8, !tbaa !19
  br label %bb.ab

bb.ab:                                            ; preds = %._crit_edge402, %bb.aa
  %i.bv = phi i1 [ %i.bu, %._crit_edge402 ], [ false, %bb.aa ]
  %i.bw = shl nsw i32 %i.as, 4
  %i.bx = zext i1 %i.g to i32
  %i.by = shl i32 %i.bw, %i.bx
  %i.bz = sitofp i32 %i.by to double
  %i.ca = sitofp i32 %i.bc to double
  %i.cb = fmul nnan double %i.ca, 1.000000e+03
  %i.cc = fdiv double %i.bz, %i.cb                ; 2 uses
  %i.cd = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 2 uses
  %i.ce = fcmp ogt double %i.cc, f0x4026000010000000
  %or.cond3 = select i1 %i.bv, i1 %i.ce, i1 false
  br i1 %or.cond3, label %bb.ac, label %bb.ad

bb.ac:                                            ; preds = %bb.ab
  %i.cf = getelementptr inbounds nuw i8, ptr %0, i64 92
  %i.cg = load i32, ptr %i.cf, align 4, !tbaa !26
  %i.ch = sitofp i32 %i.cg to double
  %i.ci = fadd double %i.ch, 4.400000e+00
  br label %bb.ad

bb.ad:                                            ; preds = %bb.ac, %bb.ab
  %.0314.in = phi double [ %i.ci, %bb.ac ], [ %i.cc, %bb.ab ] ; 2 uses
  %.0314 = fptrunc double %.0314.in to float
  %i.cj = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.ck = load i32, ptr %i.cj, align 8, !tbaa !27
  %.not343 = icmp eq i32 %i.ck, 0
  %i.cl = fcmp olt double %.0314.in, f0x4021FFFFF0000000
  %i.cm = and i1 %.not343, %i.g
  %or.cond450 = select i1 %i.cm, i1 %i.cl, i1 false
  br i1 %or.cond450, label %bb.ae, label %bb.af

bb.ae:                                            ; preds = %bb.ad
  store i32 0, ptr %i.j, align 4, !tbaa !15
  br label %bb.af

bb.af:                                            ; preds = %bb.ae, %bb.ad
  %i.cn = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 2 uses
  %i.co = load i32, ptr %i.cn, align 8, !tbaa !28
  %i.cp = icmp eq i32 %i.co, 0
  br i1 %i.cp, label %bb.ag, label %bb.ai

bb.ag:                                            ; preds = %bb.af
  %i.cq = fpext float %.0314 to double
  %i.cr = fmul double %i.cq, 6.250000e-02
  %i.cs = tail call double @log(double noundef %i.cr) #17, !tbaa !4
  %i.ct = tail call double @llvm.fmuladd.f64(double %i.cs, double -1.800000e+01, double 1.450000e+01)
  %i.cu = tail call double @llvm.floor.f64(double %i.ct)
  %i.cv = fadd double %i.cu, 1.000000e+00
  %i.cw = fptosi double %i.cv to i32              ; 2 uses
  %i.cx = icmp slt i32 %i.cw, 31
  br i1 %i.cx, label %bb.ah, label %bb.ai

bb.ah:                                            ; preds = %bb.ag
  %i.cy = sitofp i32 %i.cw to double
  %i.cz = fdiv double %i.cy, 3.100000e+01
  %i.da = fptrunc double %i.cz to float           ; 2 uses
  %i.db = getelementptr inbounds nuw i8, ptr %0, i64 232
  store float %i.da, ptr %i.db, align 8, !tbaa !29
  %i.dc = getelementptr inbounds nuw i8, ptr %0, i64 236
  store float %i.da, ptr %i.dc, align 4, !tbaa !30
  br label %bb.ai

bb.ai:                                            ; preds = %bb.ag, %bb.ah, %bb.af
  %i.dd = getelementptr inbounds nuw i8, ptr %0, i64 108
  %i.de = load i32, ptr %i.dd, align 4, !tbaa !31 ; 3 uses
  %i.df = icmp sgt i32 %i.de, 0
  br i1 %i.df, label %bb.aj, label %bb.am

bb.aj:                                            ; preds = %bb.ai
  %i.dg = shl nuw i32 %i.de, 1
  %i.dh = uitofp i32 %i.dg to double
  %i.di = load i32, ptr %i.k, align 8, !tbaa !16
  %i.dj = sitofp i32 %i.di to double              ; 2 uses
  %i.dk = fdiv double %i.dh, %i.dj
  %i.dl = fptrunc double %i.dk to float           ; 3 uses
  %i.dm = getelementptr inbounds nuw i8, ptr %0, i64 240
  %i.dn = getelementptr inbounds nuw i8, ptr %0, i64 116
  %i.do = load i32, ptr %i.dn, align 4, !tbaa !32 ; 2 uses
  %i.dp = icmp sgt i32 %i.do, -1
  br i1 %i.dp, label %bb.ak, label %bb.al

bb.ak:                                            ; preds = %bb.aj
  %i.dq = add nuw nsw i32 %i.do, %i.de
  %i.dr = shl nuw i32 %i.dq, 1
  %i.ds = uitofp i32 %i.dr to double
  %i.dt = fdiv double %i.ds, %i.dj
  %i.du = fptrunc double %i.dt to float
  br label %bb.al

bb.al:                                            ; preds = %bb.aj, %bb.ak
  %.sink = phi float [ %i.du, %bb.ak ], [ %i.dl, %bb.aj ] ; 2 uses
  %i.dv = getelementptr inbounds nuw i8, ptr %0, i64 244
  %i.dw = fcmp ogt float %i.dl, 1.000000e+00
  %i.dx = select i1 %i.dw, float 1.000000e+00, float %i.dl
  store float %i.dx, ptr %i.dm, align 8, !tbaa !33
  %i.dy = fcmp ogt float %.sink, 1.000000e+00
  %i.dz = select i1 %i.dy, float 1.000000e+00, float %.sink
  store float %i.dz, ptr %i.dv, align 4, !tbaa !34
  br label %bb.am

bb.am:                                            ; preds = %bb.al, %bb.ai
  %i.ea = load i32, ptr %i.cn, align 8, !tbaa !28 ; 3 uses
  %i.eb = icmp sgt i32 %i.ea, 0
  br i1 %i.eb, label %bb.an, label %bb.aq

bb.an:                                            ; preds = %bb.am
  %i.ec = shl nuw i32 %i.ea, 1
  %i.ed = uitofp i32 %i.ec to double
  %i.ee = load i32, ptr %i.k, align 8, !tbaa !16
  %i.ef = sitofp i32 %i.ee to double              ; 2 uses
  %i.eg = fdiv double %i.ed, %i.ef
  %i.eh = fptrunc double %i.eg to float           ; 3 uses
  %i.ei = getelementptr inbounds nuw i8, ptr %0, i64 236
  %i.ej = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.ek = load i32, ptr %i.ej, align 8, !tbaa !35 ; 2 uses
  %i.el = icmp sgt i32 %i.ek, -1
  br i1 %i.el, label %bb.ao, label %bb.ap

bb.ao:                                            ; preds = %bb.an
  %i.em = sub nsw i32 %i.ea, %i.ek
  %i.en = sitofp i32 %i.em to double
  %i.eo = fmul nnan double %i.en, 2.000000e+00
  %i.ep = fdiv double %i.eo, %i.ef                ; 2 uses
  %i.eq = fptrunc double %i.ep to float
  %i.er = fcmp olt double %i.ep, f0xB690000000000000
  %spec.store.select350 = select i1 %i.er, float 0.000000e+00, float %i.eq
  br label %bb.ap

bb.ap:                                            ; preds = %bb.an, %bb.ao
  %.sink398 = phi float [ %spec.store.select350, %bb.ao ], [ %i.eh, %bb.an ] ; 2 uses
  %i.es = getelementptr inbounds nuw i8, ptr %0, i64 232
  %i.et = fcmp ogt float %.sink398, 1.000000e+00
  %i.eu = select i1 %i.et, float 1.000000e+00, float %.sink398
  store float %i.eu, ptr %i.es, align 8, !tbaa !29
  %i.ev = fcmp ogt float %i.eh, 1.000000e+00
  %i.ew = select i1 %i.ev, float 1.000000e+00, float %i.eh
  store float %i.ew, ptr %i.ei, align 4, !tbaa !30
  br label %bb.aq

bb.aq:                                            ; preds = %bb.ap, %bb.am
  %i.ex = getelementptr inbounds nuw i8, ptr %0, i64 256 ; 7 uses
  %i.ey = load i32, ptr %i.ex, align 8, !tbaa !36
  %i.ez = icmp eq i32 %i.ey, 0
  br i1 %i.ez, label %bb.ar, label %bb.be

bb.ar:                                            ; preds = %bb.aq
  %i.fa = getelementptr inbounds nuw i8, ptr %0, i64 232 ; 2 uses
  %i.fb = load float, ptr %i.fa, align 8, !tbaa !29 ; 3 uses
  %i.fc = fcmp ogt float %i.fb, 0.000000e+00
  br i1 %i.fc, label %.preheader383, label %bb.ax

.preheader383:                                    ; preds = %bb.ar
  %i.fd = getelementptr inbounds nuw i8, ptr %0, i64 236
  %i.fe = load float, ptr %i.fd, align 4, !tbaa !30 ; 2 uses
  %i.ff = fpext float %i.fe to double             ; 2 uses
  %i.fg = fpext float %i.fb to double             ; 2 uses
end_hunk_0
