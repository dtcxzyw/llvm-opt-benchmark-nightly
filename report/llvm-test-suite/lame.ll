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
  store i64 0, ptr %i.a, align 8, !tbaa !13
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
  %i.o = load i32, ptr %i.n, align 4, !tbaa !62   ; 5 uses
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
  %i.ae = load i32, ptr %i.ad, align 8, !tbaa !18
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
  %1 = icmp slt i32 %i.al, 16001
  br i1 %1, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  store i32 16000, ptr %i.k, align 8, !tbaa !16
  br label %bb.v

bb.m:                                             ; preds = %bb.k
  %i.am = icmp samesign ult i32 %i.al, 22051
  br i1 %i.am, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  store i32 22050, ptr %i.k, align 8, !tbaa !16
  br label %bb.v

bb.o:                                             ; preds = %bb.m
  %i.an = icmp samesign ult i32 %i.al, 24001
  br i1 %i.an, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  store i32 24000, ptr %i.k, align 8, !tbaa !16
  br label %bb.v

bb.q:                                             ; preds = %bb.o
  %i.ao = icmp samesign ult i32 %i.al, 32001
  br i1 %i.ao, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  store i32 32000, ptr %i.k, align 8, !tbaa !16
  br label %bb.v

bb.s:                                             ; preds = %bb.q
  %i.ap = icmp samesign ult i32 %i.al, 44101
  br i1 %i.ap, label %bb.t, label %bb.u

bb.t:                                             ; preds = %bb.s
  store i32 44100, ptr %i.k, align 8, !tbaa !16
  br label %bb.v

bb.u:                                             ; preds = %bb.s
  store i32 48000, ptr %i.k, align 8, !tbaa !16
  br label %bb.v

bb.v:                                             ; preds = %._crit_edge399, %bb.i, %bb.l, %bb.p, %bb.t, %bb.u, %bb.r, %bb.n, %bb.j
  %i.aq = phi i32 [ %i.u, %bb.i ], [ %i.u, %bb.l ], [ %i.u, %bb.p ], [ %i.u, %bb.t ], [ %i.u, %bb.u ], [ %i.u, %bb.r ], [ %i.u, %bb.n ], [ %i.u, %bb.j ], [ %.pre401, %._crit_edge399 ] ; 2 uses
  %i.ar = phi i32 [ %.sink449, %bb.i ], [ 16000, %bb.l ], [ 24000, %bb.p ], [ 44100, %bb.t ], [ 48000, %bb.u ], [ 32000, %bb.r ], [ 22050, %bb.n ], [ %.sink449, %bb.j ], [ %i.l, %._crit_edge399 ] ; 4 uses
  %i.as = icmp sgt i32 %i.ar, 24000               ; 3 uses
  %i.at = select i1 %i.as, i32 2, i32 1
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 200
  store i32 %i.at, ptr %i.au, align 8, !tbaa !19
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 184
  store i32 800, ptr %i.av, align 8, !tbaa !63
  %i.aw = zext i1 %i.as to i32
  %i.ax = shl nuw nsw i32 576, %i.aw              ; 2 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 188
  store i32 %i.ax, ptr %i.ay, align 4, !tbaa !20
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.ba = icmp eq i32 %i.aq, 0
  br i1 %i.ba, label %bb.w, label %bb.x

bb.w:                                             ; preds = %bb.v
  %spec.store.select349 = select i1 %i.as, i32 128, i32 64 ; 2 uses
  store i32 %spec.store.select349, ptr %i.az, align 8
  br label %bb.x

bb.x:                                             ; preds = %bb.w, %bb.v
  %i.bb = phi i32 [ %spec.store.select349, %bb.w ], [ %i.aq, %bb.v ] ; 2 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 216 ; 2 uses
  store float 1.000000e+00, ptr %i.bc, align 8, !tbaa !21
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.be = load i32, ptr %i.bd, align 4, !tbaa !62 ; 2 uses
  %.not = icmp eq i32 %i.ar, %i.be
  br i1 %.not, label %bb.z, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.bf = sitofp i32 %i.be to float
  %i.bg = sitofp i32 %i.ar to float
  %i.bh = fdiv float %i.bf, %i.bg                 ; 2 uses
  store float %i.bh, ptr %i.bc, align 8, !tbaa !21
  br label %bb.z

bb.z:                                             ; preds = %bb.y, %bb.x
  %i.bi = phi float [ %i.bh, %bb.y ], [ 1.000000e+00, %bb.x ]
  %i.bj = getelementptr inbounds nuw i8, ptr %0, i64 176
  %i.bk = load i64, ptr %0, align 8, !tbaa !22
  %i.bl = uitofp i64 %i.bk to float
  %i.bm = uitofp nneg i32 %i.ax to float
  %i.bn = fmul float %i.bi, %i.bm
  %i.bo = fdiv float %i.bl, %i.bn
  %i.bp = fadd float %i.bo, 2.000000e+00
  %i.bq = fptosi float %i.bp to i64
  store i64 %i.bq, ptr %i.bj, align 8, !tbaa !23
  %i.br = icmp sgt i32 %i.bb, 319
  %i.bs = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 2 uses
  br i1 %i.br, label %bb.aa, label %._crit_edge402

._crit_edge402:                                   ; preds = %bb.z
  %.pre404 = load i32, ptr %i.bs, align 8, !tbaa !18
  %i.bt = icmp ne i32 %.pre404, 0
  br label %bb.ab

bb.aa:                                            ; preds = %bb.z
  store i32 0, ptr %i.bs, align 8, !tbaa !18
  br label %bb.ab

bb.ab:                                            ; preds = %._crit_edge402, %bb.aa
  %i.bu = phi i1 [ %i.bt, %._crit_edge402 ], [ false, %bb.aa ]
  %i.bv = shl nsw i32 %i.ar, 4
  %i.bw = zext i1 %i.g to i32
  %i.bx = shl i32 %i.bv, %i.bw
  %i.by = sitofp i32 %i.bx to double
  %i.bz = sitofp i32 %i.bb to double
  %i.ca = fmul nnan double %i.bz, 1.000000e+03
  %i.cb = fdiv double %i.by, %i.ca                ; 2 uses
  %i.cc = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 2 uses
  %i.cd = fcmp ogt double %i.cb, f0x4026000010000000
  %or.cond3 = select i1 %i.bu, i1 %i.cd, i1 false
  br i1 %or.cond3, label %bb.ac, label %bb.ad

bb.ac:                                            ; preds = %bb.ab
  %i.ce = getelementptr inbounds nuw i8, ptr %0, i64 92
  %i.cf = load i32, ptr %i.ce, align 4, !tbaa !24
  %i.cg = sitofp i32 %i.cf to double
  %i.ch = fadd double %i.cg, 4.400000e+00
  br label %bb.ad

bb.ad:                                            ; preds = %bb.ac, %bb.ab
  %.0314.in = phi double [ %i.ch, %bb.ac ], [ %i.cb, %bb.ab ] ; 2 uses
  %.0314 = fptrunc double %.0314.in to float
  %i.ci = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.cj = load i32, ptr %i.ci, align 8, !tbaa !64
  %.not343 = icmp eq i32 %i.cj, 0
  %i.ck = fcmp olt double %.0314.in, f0x4021FFFFF0000000
  %i.cl = and i1 %.not343, %i.g
  %or.cond450 = select i1 %i.cl, i1 %i.ck, i1 false
  br i1 %or.cond450, label %bb.ae, label %bb.af

bb.ae:                                            ; preds = %bb.ad
  store i32 0, ptr %i.j, align 4, !tbaa !15
  br label %bb.af

bb.af:                                            ; preds = %bb.ae, %bb.ad
  %i.cm = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 2 uses
  %i.cn = load i32, ptr %i.cm, align 8, !tbaa !65
  %i.co = icmp eq i32 %i.cn, 0
  br i1 %i.co, label %bb.ag, label %bb.ai

bb.ag:                                            ; preds = %bb.af
  %i.cp = fpext float %.0314 to double
  %i.cq = fmul double %i.cp, 6.250000e-02
  %i.cr = tail call double @log(double noundef %i.cq) #17, !tbaa !7
  %i.cs = tail call double @llvm.fmuladd.f64(double %i.cr, double -1.800000e+01, double 1.450000e+01)
  %i.ct = tail call double @llvm.floor.f64(double %i.cs)
  %i.cu = fadd double %i.ct, 1.000000e+00
  %i.cv = fptosi double %i.cu to i32              ; 2 uses
  %i.cw = icmp slt i32 %i.cv, 31
  br i1 %i.cw, label %bb.ah, label %bb.ai

bb.ah:                                            ; preds = %bb.ag
  %i.cx = sitofp i32 %i.cv to double
  %i.cy = fdiv double %i.cx, 3.100000e+01
  %i.cz = fptrunc double %i.cy to float           ; 2 uses
  %i.da = getelementptr inbounds nuw i8, ptr %0, i64 232
  store float %i.cz, ptr %i.da, align 8, !tbaa !25
  %i.db = getelementptr inbounds nuw i8, ptr %0, i64 236
  store float %i.cz, ptr %i.db, align 4, !tbaa !26
  br label %bb.ai

bb.ai:                                            ; preds = %bb.ag, %bb.ah, %bb.af
  %i.dc = getelementptr inbounds nuw i8, ptr %0, i64 108
  %i.dd = load i32, ptr %i.dc, align 4, !tbaa !66 ; 3 uses
  %i.de = icmp sgt i32 %i.dd, 0
  br i1 %i.de, label %bb.aj, label %bb.am

bb.aj:                                            ; preds = %bb.ai
  %i.df = shl nuw i32 %i.dd, 1
  %i.dg = uitofp i32 %i.df to double
  %i.dh = load i32, ptr %i.k, align 8, !tbaa !16
  %i.di = sitofp i32 %i.dh to double              ; 2 uses
  %i.dj = fdiv double %i.dg, %i.di
  %i.dk = fptrunc double %i.dj to float           ; 3 uses
  %i.dl = getelementptr inbounds nuw i8, ptr %0, i64 240
  %i.dm = getelementptr inbounds nuw i8, ptr %0, i64 116
  %i.dn = load i32, ptr %i.dm, align 4, !tbaa !67 ; 2 uses
  %i.do = icmp sgt i32 %i.dn, -1
  br i1 %i.do, label %bb.ak, label %bb.al

bb.ak:                                            ; preds = %bb.aj
  %i.dp = add nuw nsw i32 %i.dn, %i.dd
  %i.dq = shl nuw i32 %i.dp, 1
  %i.dr = uitofp i32 %i.dq to double
  %i.ds = fdiv double %i.dr, %i.di
  %i.dt = fptrunc double %i.ds to float
  br label %bb.al

bb.al:                                            ; preds = %bb.aj, %bb.ak
  %.sink = phi float [ %i.dt, %bb.ak ], [ %i.dk, %bb.aj ] ; 2 uses
  %i.du = getelementptr inbounds nuw i8, ptr %0, i64 244
  %i.dv = fcmp ogt float %i.dk, 1.000000e+00
  %i.dw = select i1 %i.dv, float 1.000000e+00, float %i.dk
  store float %i.dw, ptr %i.dl, align 8, !tbaa !27
end_hunk_0
