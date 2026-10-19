Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/opencv/original/blend?download=true
inline.NumInlined: 69
inline.NumDeleted: 41
begin_hunk_0_@__clang_call_terminate:bb.a
  tail call void @_ZSt9terminatev() #16
  unreachable
}

declare ptr @__cxa_begin_catch(ptr) local_unnamed_addr

; Function Attrs: cold nofree noreturn
declare void @_ZSt9terminatev() local_unnamed_addr #7

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPvm(ptr noundef, i64 noundef) local_unnamed_addr #8

; Function Attrs: noreturn
declare void @_ZSt19__throw_logic_errorPKc(ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i64 @strlen(ptr noundef captures(none)) local_unnamed_addr #9

declare noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef nonnull align 8 dereferenceable(8), i64 noundef) local_unnamed_addr #2

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN2cv18BlendLinearInvokerIhED0Ev(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #5 comdat align 2 {
bb.a:
  tail call void @_ZN2cv16ParallelLoopBodyD2Ev(ptr noundef nonnull align 8 dead_on_return(48) dereferenceable(48) %0) #13
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 48) #15
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZNK2cv18BlendLinearInvokerIhEclERKNS_5RangeE(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 4 dereferenceable(8) %1) unnamed_addr #10 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !18   ; 2 uses
  %i.c = load i32, ptr %i.b, align 8, !tbaa !42
  %i.d = lshr i32 %i.c, 5
  %i.e = and i32 %i.d, 127
  %i.f = add nuw nsw i32 %i.e, 1                  ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 12
  %i.h = load i32, ptr %i.g, align 4, !tbaa !43
  %i.i = mul i32 %i.f, %i.h                       ; 2 uses
  %i.j = load i32, ptr %1, align 4, !tbaa !30     ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 4 ; 2 uses
  %i.l = load i32, ptr %i.k, align 4, !tbaa !31
  %i.m = icmp slt i32 %i.j, %i.l
  br i1 %i.m, label %.lr.ph35, label %._crit_edge36.split

.lr.ph35:                                         ; preds = %bb.a
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.r = icmp sgt i32 %i.i, 0
  br i1 %i.r, label %.lr.ph.preheader, label %._crit_edge36.split

.lr.ph.preheader:                                 ; preds = %.lr.ph35
  %i.s = sext i32 %i.j to i64
  %wide.trip.count = zext nneg i32 %i.i to i64
  br label %.lr.ph

._crit_edge36.split:                              ; preds = %._crit_edge, %.lr.ph35, %bb.a
  ret void

.lr.ph:                                           ; preds = %.lr.ph.preheader, %._crit_edge
  %indvars.iv38 = phi i64 [ %i.s, %.lr.ph.preheader ], [ %indvars.iv.next39, %._crit_edge ] ; 6 uses
  %i.t = load ptr, ptr %i.n, align 8, !tbaa !20   ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 24
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !44
  %i.w = getelementptr inbounds nuw i8, ptr %i.t, i64 128
  %i.x = load i64, ptr %i.w, align 8, !tbaa !41
  %i.y = mul i64 %i.x, %indvars.iv38
  %i.z = getelementptr inbounds nuw i8, ptr %i.v, i64 %i.y
  %i.aa = load ptr, ptr %i.o, align 8, !tbaa !21  ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 24
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !44
  %i.ad = getelementptr inbounds nuw i8, ptr %i.aa, i64 128
  %i.ae = load i64, ptr %i.ad, align 8, !tbaa !41
  %i.af = mul i64 %i.ae, %indvars.iv38
  %i.ag = getelementptr inbounds nuw i8, ptr %i.ac, i64 %i.af
  %i.ah = load ptr, ptr %i.a, align 8, !tbaa !18  ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 24
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !44
  %i.ak = getelementptr inbounds nuw i8, ptr %i.ah, i64 128
  %i.al = load i64, ptr %i.ak, align 8, !tbaa !41
  %i.am = mul i64 %i.al, %indvars.iv38
  %i.an = getelementptr inbounds nuw i8, ptr %i.aj, i64 %i.am
  %i.ao = load ptr, ptr %i.p, align 8, !tbaa !19  ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 24
  %i.aq = load ptr, ptr %i.ap, align 8, !tbaa !44
  %i.ar = getelementptr inbounds nuw i8, ptr %i.ao, i64 128
  %i.as = load i64, ptr %i.ar, align 8, !tbaa !41
  %i.at = mul i64 %i.as, %indvars.iv38
  %i.au = getelementptr inbounds nuw i8, ptr %i.aq, i64 %i.at
  %i.av = load ptr, ptr %i.q, align 8, !tbaa !22  ; 2 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %i.av, i64 24
  %i.ax = load ptr, ptr %i.aw, align 8, !tbaa !44
  %i.ay = getelementptr inbounds nuw i8, ptr %i.av, i64 128
  %i.az = load i64, ptr %i.ay, align 8, !tbaa !41
  %i.ba = mul i64 %i.az, %indvars.iv38
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ax, i64 %i.ba
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.b
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.b ] ; 5 uses
  %i.bc = trunc nuw nsw i64 %indvars.iv to i32
  %i.bd = udiv i32 %i.bc, %i.f
  %i.be = zext nneg i32 %i.bd to i64              ; 2 uses
  %i.bf = getelementptr inbounds nuw [4 x i8], ptr %i.z, i64 %i.be
  %i.bg = load float, ptr %i.bf, align 4, !tbaa !46 ; 2 uses
  %i.bh = getelementptr inbounds nuw [4 x i8], ptr %i.ag, i64 %i.be
  %i.bi = load float, ptr %i.bh, align 4, !tbaa !46 ; 2 uses
  %i.bj = fadd float %i.bg, %i.bi
  %i.bk = fadd float %i.bj, f0x3727C5AC
  %i.bl = getelementptr inbounds nuw i8, ptr %i.an, i64 %indvars.iv
  %i.bm = load i8, ptr %i.bl, align 1, !tbaa !14
  %i.bn = uitofp i8 %i.bm to float
  %i.bo = getelementptr inbounds nuw i8, ptr %i.au, i64 %indvars.iv
  %i.bp = load i8, ptr %i.bo, align 1, !tbaa !14
  %i.bq = uitofp i8 %i.bp to float
  %i.br = fmul float %i.bi, %i.bq
  %i.bs = tail call float @llvm.fmuladd.f32(float %i.bn, float %i.bg, float %i.br)
  %i.bt = fdiv float %i.bs, %i.bk
  %i.bu = insertelement <4 x float> poison, float %i.bt, i64 0
  %i.bv = tail call noundef i32 @llvm.x86.sse.cvtss2si(<4 x float> %i.bu)
  %i.bw = tail call i32 @llvm.smax.i32(i32 %i.bv, i32 0)
  %i.bx = tail call i32 @llvm.umin.i32(i32 %i.bw, i32 255)
  %i.by = trunc nuw i32 %i.bx to i8
  %i.bz = getelementptr inbounds nuw i8, ptr %i.bb, i64 %indvars.iv
  store i8 %i.by, ptr %i.bz, align 1, !tbaa !14
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %bb.b, !llvm.loop !71

._crit_edge:                                      ; preds = %bb.b
  %indvars.iv.next39 = add nsw i64 %indvars.iv38, 1 ; 2 uses
  %i.ca = load i32, ptr %i.k, align 4, !tbaa !31
  %i.cb = sext i32 %i.ca to i64
  %i.cc = icmp slt i64 %indvars.iv.next39, %i.cb
  br i1 %i.cc, label %.lr.ph, label %._crit_edge36.split, !llvm.loop !72
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fmuladd.f32(float, float, float) #11

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare i32 @llvm.x86.sse.cvtss2si(<4 x float>) #12

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN2cv18BlendLinearInvokerIfED0Ev(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #5 comdat align 2 {
bb.a:
  tail call void @_ZN2cv16ParallelLoopBodyD2Ev(ptr noundef nonnull align 8 dead_on_return(48) dereferenceable(48) %0) #13
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 48) #15
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZNK2cv18BlendLinearInvokerIfEclERKNS_5RangeE(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 4 dereferenceable(8) %1) unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !33   ; 4 uses
  %i.c = load i32, ptr %i.b, align 8, !tbaa !42
  %i.d = lshr i32 %i.c, 5                         ; 2 uses
  %i.e = and i32 %i.d, 127
  %i.f = add nuw nsw i32 %i.e, 1                  ; 6 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 12
  %i.h = load i32, ptr %i.g, align 4, !tbaa !43
  %i.i = mul i32 %i.f, %i.h                       ; 3 uses
  %i.j = load i32, ptr %1, align 4, !tbaa !30     ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.l = load i32, ptr %i.k, align 4, !tbaa !31   ; 2 uses
  %i.m = icmp slt i32 %i.j, %i.l
  br i1 %i.m, label %.lr.ph35, label %._crit_edge36.split

.lr.ph35:                                         ; preds = %bb.a
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !35   ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 24
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !44   ; 3 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.o, i64 128
  %i.s = load i64, ptr %i.r, align 8, !tbaa !41   ; 4 uses
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !36   ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 24
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !44   ; 3 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.u, i64 128
  %i.y = load i64, ptr %i.x, align 8, !tbaa !41   ; 4 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !44  ; 3 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %i.b, i64 128
  %i.ac = load i64, ptr %i.ab, align 8, !tbaa !41 ; 4 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !34 ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 24
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !44 ; 3 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ae, i64 128
  %i.ai = load i64, ptr %i.ah, align 8, !tbaa !41 ; 4 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !37 ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 24
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !44 ; 3 uses
  %i.an = getelementptr inbounds nuw i8, ptr %i.ak, i64 128
  %i.ao = load i64, ptr %i.an, align 8, !tbaa !41 ; 4 uses
  %i.ap = icmp sgt i32 %i.i, 0
  br i1 %i.ap, label %.lr.ph.preheader, label %._crit_edge36.split

.lr.ph.preheader:                                 ; preds = %.lr.ph35
  %i.aq = sext i32 %i.j to i64                    ; 6 uses
  %wide.trip.count41 = sext i32 %i.l to i64       ; 2 uses
  %wide.trip.count = zext nneg i32 %i.i to i64    ; 5 uses
  %i.ar = mul i64 %i.ao, %i.aq
  %scevgep = getelementptr i8, ptr %i.am, i64 %i.ar ; 4 uses
  %i.as = add nsw i64 %wide.trip.count41, -1      ; 5 uses
  %i.at = mul i64 %i.ao, %i.as
  %i.au = shl nuw nsw i64 %wide.trip.count, 2     ; 3 uses
  %i.av = getelementptr i8, ptr %i.am, i64 %i.at
  %scevgep45 = getelementptr i8, ptr %i.av, i64 %i.au ; 4 uses
  %i.aw = mul i64 %i.ac, %i.aq
  %scevgep46 = getelementptr i8, ptr %i.aa, i64 %i.aw
  %i.ax = mul i64 %i.ac, %i.as
  %i.ay = getelementptr i8, ptr %i.aa, i64 %i.ax
  %scevgep47 = getelementptr i8, ptr %i.ay, i64 %i.au
  %i.az = mul i64 %i.ai, %i.aq
  %scevgep48 = getelementptr i8, ptr %i.ag, i64 %i.az
  %i.ba = mul i64 %i.ai, %i.as
  %i.bb = getelementptr i8, ptr %i.ag, i64 %i.ba
  %scevgep49 = getelementptr i8, ptr %i.bb, i64 %i.au
  %i.bc = mul i64 %i.s, %i.aq
  %scevgep50 = getelementptr i8, ptr %i.q, i64 %i.bc
  %i.bd = mul i64 %i.s, %i.as
  %i.be = add nsw i64 %wide.trip.count, -1
  %i.bf = and i32 %i.d, 127
  %narrow = add nuw nsw i32 %i.bf, 1
  %i.bg = zext nneg i32 %narrow to i64
  %i.bh = udiv i64 %i.be, %i.bg
  %i.bi = shl nuw nsw i64 %i.bh, 2                ; 2 uses
  %i.bj = getelementptr i8, ptr %i.q, i64 %i.bd
  %i.bk = getelementptr i8, ptr %i.bj, i64 %i.bi
  %scevgep51 = getelementptr i8, ptr %i.bk, i64 4
  %i.bl = mul i64 %i.y, %i.aq
  %scevgep52 = getelementptr i8, ptr %i.w, i64 %i.bl
  %i.bm = mul i64 %i.y, %i.as
  %i.bn = getelementptr i8, ptr %i.w, i64 %i.bm
  %i.bo = getelementptr i8, ptr %i.bn, i64 %i.bi
  %scevgep53 = getelementptr i8, ptr %i.bo, i64 4
  %min.iters.check = icmp ult i32 %i.i, 8
  %bound0 = icmp ult ptr %scevgep, %scevgep47
  %bound1 = icmp ult ptr %scevgep46, %scevgep45
  %found.conflict = and i1 %bound0, %bound1
  %i.bp = or i64 %i.ac, %i.ao
  %i.bq = icmp slt i64 %i.bp, 0
  %i.br = or i1 %found.conflict, %i.bq
  %bound055 = icmp ult ptr %scevgep, %scevgep49
  %bound156 = icmp ult ptr %scevgep48, %scevgep45
  %found.conflict57 = and i1 %bound055, %bound156
  %i.bs = icmp slt i64 %i.ai, 0
  %i.bt = or i1 %found.conflict57, %i.bs
  %conflict.rdx = or i1 %i.br, %i.bt
  %bound060 = icmp ult ptr %scevgep, %scevgep51
  %bound161 = icmp ult ptr %scevgep50, %scevgep45
  %found.conflict62 = and i1 %bound060, %bound161
  %i.bu = icmp slt i64 %i.s, 0
  %i.bv = or i1 %found.conflict62, %i.bu
  %conflict.rdx65 = or i1 %conflict.rdx, %i.bv
  %bound066 = icmp ult ptr %scevgep, %scevgep53
  %bound167 = icmp ult ptr %scevgep52, %scevgep45
  %found.conflict68 = and i1 %bound066, %bound167
  %i.bw = icmp slt i64 %i.y, 0
  %i.bx = or i1 %found.conflict68, %i.bw
  %conflict.rdx71 = or i1 %conflict.rdx65, %i.bx
  %n.vec = and i64 %wide.trip.count, 2147483644   ; 3 uses
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count
  br label %.lr.ph

._crit_edge36.split:                              ; preds = %._crit_edge, %.lr.ph35, %bb.a
  ret void

.lr.ph:                                           ; preds = %.lr.ph.preheader, %._crit_edge
  %indvars.iv38 = phi i64 [ %i.aq, %.lr.ph.preheader ], [ %indvars.iv.next39, %._crit_edge ] ; 6 uses
  %i.by = mul i64 %i.s, %indvars.iv38
  %i.bz = getelementptr inbounds nuw i8, ptr %i.q, i64 %i.by ; 5 uses
  %i.ca = mul i64 %i.y, %indvars.iv38
  %i.cb = getelementptr inbounds nuw i8, ptr %i.w, i64 %i.ca ; 5 uses
  %i.cc = mul i64 %i.ac, %indvars.iv38
  %i.cd = getelementptr inbounds nuw i8, ptr %i.aa, i64 %i.cc ; 2 uses
  %i.ce = mul i64 %i.ai, %indvars.iv38
  %i.cf = getelementptr inbounds nuw i8, ptr %i.ag, i64 %i.ce ; 2 uses
  %i.cg = mul i64 %i.ao, %indvars.iv38
  %i.ch = getelementptr inbounds nuw i8, ptr %i.am, i64 %i.cg ; 2 uses
  %brmerge = select i1 %min.iters.check, i1 true, i1 %conflict.rdx71
  br i1 %brmerge, label %scalar.ph.preheader, label %vector.body

vector.body:                                      ; preds = %.lr.ph, %vector.body
  %index = phi i64 [ %index.next, %vector.body ], [ 0, %.lr.ph ] ; 5 uses
  %i.ci = trunc i64 %index to i32                 ; 4 uses
  %i.cj = or disjoint i32 %i.ci, 1
  %i.ck = or disjoint i32 %i.ci, 2
  %i.cl = or disjoint i32 %i.ci, 3
  %i.cm = udiv i32 %i.ci, %i.f
  %i.cn = udiv i32 %i.cj, %i.f
  %i.co = udiv i32 %i.ck, %i.f
  %i.cp = udiv i32 %i.cl, %i.f
  %i.cq = zext nneg i32 %i.cm to i64              ; 2 uses
  %i.cr = zext nneg i32 %i.cn to i64              ; 2 uses
  %i.cs = zext nneg i32 %i.co to i64              ; 2 uses
  %i.ct = zext nneg i32 %i.cp to i64              ; 2 uses
  %i.cu = getelementptr inbounds nuw [4 x i8], ptr %i.bz, i64 %i.cq
  %i.cv = getelementptr inbounds nuw [4 x i8], ptr %i.bz, i64 %i.cr
  %i.cw = getelementptr inbounds nuw [4 x i8], ptr %i.bz, i64 %i.cs
  %i.cx = getelementptr inbounds nuw [4 x i8], ptr %i.bz, i64 %i.ct
  %i.cy = load float, ptr %i.cu, align 4, !tbaa !46, !alias.scope !82
  %i.cz = load float, ptr %i.cv, align 4, !tbaa !46, !alias.scope !82
  %i.da = load float, ptr %i.cw, align 4, !tbaa !46, !alias.scope !82
  %i.db = load float, ptr %i.cx, align 4, !tbaa !46, !alias.scope !82
  %i.dc = insertelement <4 x float> poison, float %i.cy, i64 0
  %i.dd = insertelement <4 x float> %i.dc, float %i.cz, i64 1
  %i.de = insertelement <4 x float> %i.dd, float %i.da, i64 2
  %i.df = insertelement <4 x float> %i.de, float %i.db, i64 3 ; 2 uses
  %i.dg = getelementptr inbounds nuw [4 x i8], ptr %i.cb, i64 %i.cq
  %i.dh = getelementptr inbounds nuw [4 x i8], ptr %i.cb, i64 %i.cr
  %i.di = getelementptr inbounds nuw [4 x i8], ptr %i.cb, i64 %i.cs
  %i.dj = getelementptr inbounds nuw [4 x i8], ptr %i.cb, i64 %i.ct
  %i.dk = load float, ptr %i.dg, align 4, !tbaa !46, !alias.scope !83
  %i.dl = load float, ptr %i.dh, align 4, !tbaa !46, !alias.scope !83
  %i.dm = load float, ptr %i.di, align 4, !tbaa !46, !alias.scope !83
  %i.dn = load float, ptr %i.dj, align 4, !tbaa !46, !alias.scope !83
  %i.do = insertelement <4 x float> poison, float %i.dk, i64 0
  %i.dp = insertelement <4 x float> %i.do, float %i.dl, i64 1
  %i.dq = insertelement <4 x float> %i.dp, float %i.dm, i64 2
  %i.dr = insertelement <4 x float> %i.dq, float %i.dn, i64 3 ; 2 uses
  %i.ds = fadd <4 x float> %i.df, %i.dr
  %i.dt = fadd <4 x float> %i.ds, splat (float f0x3727C5AC)
  %i.du = getelementptr inbounds nuw [4 x i8], ptr %i.cd, i64 %index
  %wide.load = load <4 x float>, ptr %i.du, align 4, !tbaa !46, !alias.scope !84
  %i.dv = getelementptr inbounds nuw [4 x i8], ptr %i.cf, i64 %index
  %wide.load72 = load <4 x float>, ptr %i.dv, align 4, !tbaa !46, !alias.scope !85
  %i.dw = fmul <4 x float> %i.dr, %wide.load72
  %i.dx = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %wide.load, <4 x float> %i.df, <4 x float> %i.dw)
  %i.dy = fdiv <4 x float> %i.dx, %i.dt
  %i.dz = getelementptr inbounds nuw [4 x i8], ptr %i.ch, i64 %index
  store <4 x float> %i.dy, ptr %i.dz, align 4, !tbaa !46, !alias.scope !86, !noalias !87
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.ea = icmp eq i64 %index.next, %n.vec
  br i1 %i.ea, label %middle.block, label %vector.body, !llvm.loop !79

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %._crit_edge, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.lr.ph, %middle.block
  %indvars.iv.ph = phi i64 [ %n.vec, %middle.block ], [ 0, %.lr.ph ]
  br label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %scalar.ph ], [ %indvars.iv.ph, %scalar.ph.preheader ] ; 5 uses
  %i.eb = trunc nuw nsw i64 %indvars.iv to i32
  %i.ec = udiv i32 %i.eb, %i.f
  %i.ed = zext nneg i32 %i.ec to i64              ; 2 uses
  %i.ee = getelementptr inbounds nuw [4 x i8], ptr %i.bz, i64 %i.ed
  %i.ef = load float, ptr %i.ee, align 4, !tbaa !46 ; 2 uses
  %i.eg = getelementptr inbounds nuw [4 x i8], ptr %i.cb, i64 %i.ed
  %i.eh = load float, ptr %i.eg, align 4, !tbaa !46 ; 2 uses
  %i.ei = fadd float %i.ef, %i.eh
  %i.ej = fadd float %i.ei, f0x3727C5AC
  %i.ek = getelementptr inbounds nuw [4 x i8], ptr %i.cd, i64 %indvars.iv
  %i.el = load float, ptr %i.ek, align 4, !tbaa !46
  %i.em = getelementptr inbounds nuw [4 x i8], ptr %i.cf, i64 %indvars.iv
  %i.en = load float, ptr %i.em, align 4, !tbaa !46
  %i.eo = fmul float %i.eh, %i.en
  %i.ep = tail call float @llvm.fmuladd.f32(float %i.el, float %i.ef, float %i.eo)
  %i.eq = fdiv float %i.ep, %i.ej
  %i.er = getelementptr inbounds nuw [4 x i8], ptr %i.ch, i64 %indvars.iv
  store float %i.eq, ptr %i.er, align 4, !tbaa !46
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %scalar.ph, !llvm.loop !80

._crit_edge:                                      ; preds = %scalar.ph, %middle.block
  %indvars.iv.next39 = add nsw i64 %indvars.iv38, 1 ; 2 uses
  %exitcond42.not = icmp eq i64 %indvars.iv.next39, %wide.trip.count41
  br i1 %exitcond42.not, label %._crit_edge36.split, label %.lr.ph, !llvm.loop !81
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #11

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umin.i32(i32, i32) #11

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x float> @llvm.fmuladd.v4f32(<4 x float>, <4 x float>, <4 x float>) #11

attributes #0 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+sse3,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+sse3,+x87" "tune-cpu"="generic" }
attributes #3 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+sse3,+x87" "tune-cpu"="generic" }
attributes #4 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+sse3,+x87" "tune-cpu"="generic" }
attributes #5 = { inlinehint mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+sse3,+x87" "tune-cpu"="generic" }
attributes #6 = { noinline noreturn nounwind uwtable "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+sse3,+x87" "tune-cpu"="generic" }
attributes #7 = { cold nofree noreturn }
attributes #8 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+sse3,+x87" "tune-cpu"="generic" }
attributes #9 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+sse3,+x87" "tune-cpu"="generic" }
attributes #10 = { mustprogress uwtable "min-legal-vector-width"="128" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+sse3,+x87" "tune-cpu"="generic" }
attributes #11 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #12 = { nocallback nofree nosync nounwind willreturn memory(none) }
attributes #13 = { nounwind }
attributes #14 = { noreturn }
attributes #15 = { builtin nounwind }
attributes #16 = { noreturn nounwind }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}
!llvm.errno.tbaa = !{!7}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{!"Ubuntu clang version 24.0.0 (++20260807082003+f3bd40ce6ba5-1~exp1~20260807082012.1771)"}
!3 = !{!"Simple C++ TBAA"}
!4 = !{!"omnipotent char", !3, i64 0}
!5 = !{!"int", !4, i64 0}
!6 = !{!"__libc_errno", !5, i64 0}
!7 = !{!6, !5, i64 0}
!8 = !{!"any pointer", !4, i64 0}
!9 = !{!"p1 omnipotent char", !8, i64 0}
!10 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_Alloc_hiderE", !9, i64 0}
!11 = !{!"long", !4, i64 0}
!12 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE", !10, i64 0, !11, i64 8, !4, i64 16}
!13 = !{!12, !9, i64 0}
!14 = !{!4, !4, i64 0}
!15 = !{!"_ZTSN2cv16ParallelLoopBodyE"}
!16 = !{!"p1 _ZTSN2cv3MatE", !8, i64 0}
!17 = !{!"_ZTSN2cv18BlendLinearInvokerIhEE", !15, i64 0, !16, i64 8, !16, i64 16, !16, i64 24, !16, i64 32, !16, i64 40}
!18 = !{!17, !16, i64 8}
!19 = !{!17, !16, i64 16}
!20 = !{!17, !16, i64 24}
!21 = !{!17, !16, i64 32}
!22 = !{!17, !16, i64 40}
!23 = !{!"p1 _ZTSN2cv12MatAllocatorE", !8, i64 0}
!24 = !{!"p1 _ZTSN2cv8UMatDataE", !8, i64 0}
!25 = !{!"_ZTSN2cv10DataLayoutE", !4, i64 0}
!26 = !{!"_ZTSN2cv8MatShapeE", !5, i64 0, !25, i64 4, !5, i64 8, !4, i64 12}
!27 = !{!"_ZTSN2cv7MatStepE", !4, i64 0}
!28 = !{!"_ZTSN2cv3MatE", !5, i64 0, !5, i64 4, !5, i64 8, !5, i64 12, !5, i64 16, !9, i64 24, !9, i64 32, !9, i64 40, !9, i64 48, !23, i64 56, !24, i64 64, !26, i64 72, !27, i64 128}
!29 = !{!"_ZTSN2cv5RangeE", !5, i64 0, !5, i64 4}
!30 = !{!29, !5, i64 0}
!31 = !{!29, !5, i64 4}
!32 = !{!"_ZTSN2cv18BlendLinearInvokerIfEE", !15, i64 0, !16, i64 8, !16, i64 16, !16, i64 24, !16, i64 32, !16, i64 40}
!33 = !{!32, !16, i64 8}
!34 = !{!32, !16, i64 16}
!35 = !{!32, !16, i64 24}
!36 = !{!32, !16, i64 32}
!37 = !{!32, !16, i64 40}
!38 = !{!"p1 _ZTSN2cv5utils5trace7details6Region4ImplE", !8, i64 0}
!39 = !{!"_ZTSN2cv5utils5trace7details6RegionE", !38, i64 0, !5, i64 8}
!40 = !{!39, !5, i64 8}
!41 = !{!11, !11, i64 0}
!42 = !{!28, !5, i64 0}
!43 = !{!28, !5, i64 12}
!44 = !{!28, !9, i64 24}
!45 = !{!"float", !4, i64 0}
!46 = !{!45, !45, i64 0}
!47 = !{!"llvm.loop.mustprogress"}
!48 = distinct !{!48, i1 true, !"_ZNK2cv11_InputArray6getMatEi"}
!49 = distinct !{!49, !48, !"_ZNK2cv11_InputArray6getMatEi: argument 0"}
!50 = distinct !{!50, i1 true, !"_ZNK2cv11_InputArray6getMatEi"}
!51 = distinct !{!51, !50, !"_ZNK2cv11_InputArray6getMatEi: argument 0"}
!52 = distinct !{!52, i1 true, !"_ZNK2cv11_InputArray6getMatEi"}
!53 = distinct !{!53, !52, !"_ZNK2cv11_InputArray6getMatEi: argument 0"}
!54 = distinct !{!54, i1 true, !"_ZNK2cv11_InputArray6getMatEi"}
end_hunk_0
