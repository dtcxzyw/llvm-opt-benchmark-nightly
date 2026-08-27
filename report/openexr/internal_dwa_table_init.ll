Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/openexr/original/internal_dwa_table_init?download=true
inline.NumInlined: 8
inline.NumDeleted: 6
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.__once_flag = type { i32 }

@dwa_tables_once = internal global %struct.__once_flag zeroinitializer, align 4
@exrcore_dwaToLinearTable = external local_unnamed_addr global ptr, align 8
@exrcore_dwaToNonLinearTable = external local_unnamed_addr global ptr, align 8

; Function Attrs: nounwind uwtable
define hidden void @exrcore_ensure_dwa_tables() local_unnamed_addr #0 {
bb.a:
  tail call void @call_once(ptr noundef nonnull @dwa_tables_once, ptr noundef nonnull @init_dwa_tables) #6
  ret void
}

declare void @call_once(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, argmem: write, inaccessiblemem: none, target_mem: none) uwtable
define internal void @init_dwa_tables() #2 {
bb.a:
  %i.a = load ptr, ptr @exrcore_dwaToNonLinearTable, align 8, !tbaa !8
  %i.b = load ptr, ptr @exrcore_dwaToLinearTable, align 8 ; 2 uses
  br label %bb.c

bb.b:                                             ; preds = %dwa_convertToNonLinear.exit
  ret void

bb.c:                                             ; preds = %bb.a, %dwa_convertToNonLinear.exit
  %indvars.iv = phi i64 [ 0, %bb.a ], [ %indvars.iv.next, %dwa_convertToNonLinear.exit ] ; 8 uses
  %i.c = icmp eq i64 %indvars.iv, 0
  %i.d = and i64 %indvars.iv, 31744
  %i.e = icmp eq i64 %i.d, 31744
  %or.cond.i = or i1 %i.c, %i.e
  br i1 %or.cond.i, label %dwa_convertToLinear.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %indvars.iv.tr = trunc i64 %indvars.iv to i32
  %i.f = shl i32 %indvars.iv.tr, 13
  %i.g = and i32 %i.f, 268427264                  ; 11 uses
  %indvars.iv.tr26 = trunc i64 %indvars.iv to i32
  %i.h = shl i32 %indvars.iv.tr26, 16
  %i.i = and i32 %i.h, -2147483648                ; 6 uses
  %i.j = icmp samesign ugt i32 %i.g, 8388607      ; 2 uses
  br i1 %i.j, label %bb.e, label %bb.h, !prof !11

bb.e:                                             ; preds = %bb.d
  %i.k = or disjoint i32 %i.g, %i.i               ; 2 uses
  %i.l = icmp samesign ult i32 %i.g, 260046848
  br i1 %i.l, label %bb.f, label %bb.g, !prof !11

bb.f:                                             ; preds = %bb.e
  %i.m = add nuw nsw i32 %i.k, 939524096
  br label %half_to_float.exit.i

bb.g:                                             ; preds = %bb.e
  %i.n = or i32 %i.k, 2139095040
  br label %half_to_float.exit.i

bb.h:                                             ; preds = %bb.d
  %.not.i.i.i = icmp eq i32 %i.g, 0
  br i1 %.not.i.i.i, label %half_to_float.exit.i, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.o = tail call range(i32 9, 33) i32 @llvm.ctlz.i32(i32 %i.g, i1 true)
  %i.p = add nsw i32 %i.o, -8                     ; 2 uses
  %i.q = shl i32 %i.g, %i.p
  %i.r = or i32 %i.i, %i.q
  %i.s = or i32 %i.r, 947912704
  %i.t = shl nuw nsw i32 %i.p, 23
  %i.u = sub nuw i32 %i.s, %i.t
  br label %half_to_float.exit.i

half_to_float.exit.i:                             ; preds = %bb.i, %bb.h, %bb.g, %bb.f
  %.sroa.0.0.i.i.i = phi i32 [ %i.m, %bb.f ], [ %i.n, %bb.g ], [ %i.u, %bb.i ], [ %i.i, %bb.h ]
  %i.v = bitcast i32 %.sroa.0.0.i.i.i to float    ; 2 uses
  %i.w = fcmp olt float %i.v, 0.000000e+00
  %i.x = tail call float @llvm.fabs.f32(float %i.v) ; 3 uses
  %i.y = fcmp ugt float %i.x, 1.000000e+00        ; 2 uses
  %i.z = fadd float %i.x, -1.000000e+00
  %.013.i = select i1 %i.y, float f0x41106674, float %i.x
  %.012.i = select i1 %i.y, float %i.z, float 2.200000e+00
  %i.aa = tail call float @powf(float noundef %.013.i, float noundef %.012.i) #6 ; 3 uses
  %i.ab = fneg float %i.aa
  %i.ac = select i1 %i.w, float %i.ab, float %i.aa
  %i.ad = bitcast float %i.ac to i32
  %i.ae = tail call float @llvm.fabs.f32(float %i.aa)
  %i.af = bitcast float %i.ae to i32              ; 10 uses
  %i.ag = lshr i32 %i.ad, 16                      ; 3 uses
  %i.ah = trunc nuw i32 %i.ag to i16
  %i.ai = and i16 %i.ah, -32768                   ; 3 uses
  %i.aj = icmp samesign ugt i32 %i.af, 947912703
  br i1 %i.aj, label %bb.j, label %bb.p

bb.j:                                             ; preds = %half_to_float.exit.i
  %i.ak = icmp samesign ugt i32 %i.af, 2139095039
  br i1 %i.ak, label %bb.k, label %bb.m, !prof !12

bb.k:                                             ; preds = %bb.j
  %i.al = or disjoint i16 %i.ai, 31744            ; 2 uses
  %i.am = icmp eq i32 %i.af, 2139095040
  br i1 %i.am, label %bb.t, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.an = lshr i32 %i.af, 13
  %i.ao = and i32 %i.an, 1023                     ; 2 uses
  %i.ap = icmp eq i32 %i.ao, 0
  %i.aq = zext i1 %i.ap to i16
  %i.ar = trunc nuw nsw i32 %i.ao to i16
  %i.as = or i16 %i.aq, %i.ar
  %i.at = or disjoint i16 %i.as, %i.al
  br label %bb.t

bb.m:                                             ; preds = %bb.j
  %i.au = icmp samesign ugt i32 %i.af, 1199566847
  br i1 %i.au, label %bb.n, label %bb.o, !prof !12

bb.n:                                             ; preds = %bb.m
  %i.av = or disjoint i16 %i.ai, 31744
  br label %bb.t

bb.o:                                             ; preds = %bb.m
  %i.aw = add nuw nsw i32 %i.af, 134221823
  %i.ax = lshr i32 %i.af, 13
  %i.ay = and i32 %i.ax, 1
  %i.az = add nuw nsw i32 %i.aw, %i.ay
  %i.ba = lshr i32 %i.az, 13
  %i.bb = and i32 %i.ag, 32768
  %i.bc = or i32 %i.ba, %i.bb
  %i.bd = trunc i32 %i.bc to i16
  br label %bb.t

bb.p:                                             ; preds = %half_to_float.exit.i
  %i.be = icmp samesign ult i32 %i.af, 855638017
  br i1 %i.be, label %bb.t, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.bf = lshr i32 %i.af, 23                      ; 2 uses
  %i.bg = sub nuw nsw i32 126, %i.bf
  %i.bh = and i32 %i.af, 8388607
  %i.bi = or disjoint i32 %i.bh, 8388608          ; 2 uses
  %i.bj = add nsw i32 %i.bf, -94
  %i.bk = shl i32 %i.bi, %i.bj                    ; 2 uses
  %i.bl = lshr i32 %i.bi, %i.bg                   ; 2 uses
  %i.bm = and i32 %i.ag, 32768
  %i.bn = or i32 %i.bl, %i.bm
  %i.bo = trunc nuw i32 %i.bn to i16              ; 2 uses
  %i.bp = icmp ugt i32 %i.bk, -2147483648
  br i1 %i.bp, label %bb.s, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.bq = icmp ne i32 %i.bk, -2147483648
  %i.br = and i32 %i.bl, 1
  %.not.i.i17.i = icmp eq i32 %i.br, 0
  %or.cond.i.i.i = select i1 %i.bq, i1 true, i1 %.not.i.i17.i
  br i1 %or.cond.i.i.i, label %bb.t, label %bb.s

bb.s:                                             ; preds = %bb.r, %bb.q
  %i.bs = add nuw i16 %i.bo, 1
  br label %bb.t

dwa_convertToLinear.exit:                         ; preds = %bb.c
  %i.bt = getelementptr inbounds nuw [2 x i8], ptr %i.b, i64 %indvars.iv
  store i16 0, ptr %i.bt, align 2, !tbaa !13
  br label %dwa_convertToNonLinear.exit

bb.t:                                             ; preds = %bb.k, %bb.l, %bb.n, %bb.o, %bb.p, %bb.r, %bb.s
  %.0.i.ph = phi i16 [ %i.bo, %bb.r ], [ %i.bs, %bb.s ], [ %i.al, %bb.k ], [ %i.bd, %bb.o ], [ %i.av, %bb.n ], [ %i.at, %bb.l ], [ %i.ai, %bb.p ]
  %i.bu = getelementptr inbounds nuw [2 x i8], ptr %i.b, i64 %indvars.iv
  store i16 %.0.i.ph, ptr %i.bu, align 2, !tbaa !13
  br i1 %i.j, label %bb.u, label %bb.x, !prof !11

bb.u:                                             ; preds = %bb.t
  %i.bv = or disjoint i32 %i.g, %i.i              ; 2 uses
  %i.bw = icmp samesign ult i32 %i.g, 260046848
  br i1 %i.bw, label %bb.v, label %bb.w, !prof !11

bb.v:                                             ; preds = %bb.u
  %i.bx = add nuw nsw i32 %i.bv, 939524096
  br label %half_to_float.exit.i9

bb.w:                                             ; preds = %bb.u
  %i.by = or i32 %i.bv, 2139095040
  br label %half_to_float.exit.i9

bb.x:                                             ; preds = %bb.t
  %.not.i.i.i8 = icmp eq i32 %i.g, 0
  br i1 %.not.i.i.i8, label %half_to_float.exit.i9, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.bz = tail call range(i32 9, 33) i32 @llvm.ctlz.i32(i32 %i.g, i1 true)
  %i.ca = add nsw i32 %i.bz, -8                   ; 2 uses
  %i.cb = shl i32 %i.g, %i.ca
  %i.cc = or i32 %i.i, %i.cb
  %i.cd = or i32 %i.cc, 947912704
  %i.ce = shl nuw nsw i32 %i.ca, 23
  %i.cf = sub nuw i32 %i.cd, %i.ce
  br label %half_to_float.exit.i9

half_to_float.exit.i9:                            ; preds = %bb.y, %bb.x, %bb.w, %bb.v
  %.sroa.0.0.i.i.i10 = phi i32 [ %i.bx, %bb.v ], [ %i.by, %bb.w ], [ %i.cf, %bb.y ], [ %i.i, %bb.x ]
  %i.cg = bitcast i32 %.sroa.0.0.i.i.i10 to float ; 2 uses
  %i.ch = fcmp olt float %i.cg, 0.000000e+00
  %i.ci = tail call float @llvm.fabs.f32(float %i.cg) ; 3 uses
  %i.cj = fcmp ugt float %i.ci, 1.000000e+00
  br i1 %i.cj, label %bb.aa, label %bb.z

bb.z:                                             ; preds = %half_to_float.exit.i9
  %i.ck = tail call float @powf(float noundef %i.ci, float noundef f0x3EE8BA2E) #6
  br label %bb.ab

bb.aa:                                            ; preds = %half_to_float.exit.i9
  %i.cl = tail call float @llvm.log.f32(float %i.ci)
  %i.cm = fdiv float %i.cl, 2.200000e+00
  %i.cn = fadd float %i.cm, 1.000000e+00
  br label %bb.ab

bb.ab:                                            ; preds = %bb.aa, %bb.z
  %.0.i11 = phi float [ %i.ck, %bb.z ], [ %i.cn, %bb.aa ] ; 3 uses
  %i.co = fneg float %.0.i11
  %i.cp = select i1 %i.ch, float %i.co, float %.0.i11
  %i.cq = bitcast float %i.cp to i32
  %i.cr = tail call float @llvm.fabs.f32(float %.0.i11)
  %i.cs = bitcast float %i.cr to i32              ; 10 uses
  %i.ct = lshr i32 %i.cq, 16                      ; 3 uses
  %i.cu = trunc nuw i32 %i.ct to i16
  %i.cv = and i16 %i.cu, -32768                   ; 3 uses
  %i.cw = icmp samesign ugt i32 %i.cs, 947912703
  br i1 %i.cw, label %bb.ac, label %bb.ai

bb.ac:                                            ; preds = %bb.ab
  %i.cx = icmp samesign ugt i32 %i.cs, 2139095039
  br i1 %i.cx, label %bb.ad, label %bb.af, !prof !12

bb.ad:                                            ; preds = %bb.ac
  %i.cy = or disjoint i16 %i.cv, 31744            ; 2 uses
  %i.cz = icmp eq i32 %i.cs, 2139095040
  br i1 %i.cz, label %dwa_convertToNonLinear.exit, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.da = lshr i32 %i.cs, 13
  %i.db = and i32 %i.da, 1023                     ; 2 uses
end_hunk_0
