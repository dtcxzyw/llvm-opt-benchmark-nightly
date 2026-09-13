Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ffmpeg/original/tx?download=true
inline.NumInlined: 21
inline.NumDeleted: 5
loop-unroll.NumCompletelyUnrolled: 4
loop-unroll.NumRuntimeUnrolled: 9
loop-unroll.NumUnrolled: 13
begin_hunk_0_@ff_tx_gen_pfa_input_map:bb.a

.loopexit85.preheader:                            ; preds = %.lr.ph98.split.split
  %i.ex = zext nneg i32 %i.a to i64
  %i.ey = zext nneg i32 %i.g to i64
  %i.ez = zext nneg i32 %i.m to i64               ; 2 uses
  %xtraiter245 = and i64 %i.ez, 1
  %i.fa = icmp eq i32 %i.m, 1
  %unroll_iter248 = and i64 %i.ez, 2147483646
  %lcmp.mod246.not = icmp eq i64 %xtraiter245, 0
  %lcmp.mod247 = trunc i32 %i.m to i1
  br label %.loopexit85

._crit_edge99:                                    ; preds = %..loopexit_crit_edge.us115.us, %..loopexit85_crit_edge.us107.us.us125, %..loopexit_crit_edge.us115, %..loopexit_crit_edge, %.loopexit.us, %.lr.ph98.split.split, %.lr.ph98.split.split.us.split, %.preheader86
  %.not77 = icmp eq ptr %1, null
  br i1 %.not77, label %bb.f, label %bb.e

.loopexit85:                                      ; preds = %.loopexit85.preheader, %..loopexit_crit_edge
  %indvars.iv163 = phi i64 [ 0, %.loopexit85.preheader ], [ %indvars.iv.next164, %..loopexit_crit_edge ] ; 2 uses
  %indvars.iv.next164 = add nuw nsw i64 %indvars.iv163, %i.ex ; 5 uses
  %invariant.gep211 = getelementptr [4 x i8], ptr %i.e, i64 %indvars.iv163 ; 3 uses
  br i1 %i.fa, label %.epil.preheader244, label %.loopexit85.new

.loopexit85.new:                                  ; preds = %.loopexit85, %.loopexit85.new
  %indvars.iv158 = phi i64 [ %indvars.iv.next159.1, %.loopexit85.new ], [ 1, %.loopexit85 ] ; 4 uses
  %niter249 = phi i64 [ %niter249.next.1, %.loopexit85.new ], [ 0, %.loopexit85 ]
  %i.fb = sub nsw i64 %indvars.iv.next164, %indvars.iv158
  %sext203 = shl i64 %i.fb, 32
  %i.fc = ashr exact i64 %sext203, 30
  %i.fd = getelementptr inbounds i8, ptr %i.e, i64 %i.fc ; 2 uses
  %i.fe = load i32, ptr %i.fd, align 4, !tbaa !22
  %gep212 = getelementptr [4 x i8], ptr %invariant.gep211, i64 %indvars.iv158 ; 2 uses
  %i.ff = load i32, ptr %gep212, align 4, !tbaa !22
  store i32 %i.ff, ptr %i.fd, align 4, !tbaa !22
  store i32 %i.fe, ptr %gep212, align 4, !tbaa !22
  %indvars.iv.next159 = add nuw nsw i64 %indvars.iv158, 1 ; 2 uses
  %i.fg = sub nsw i64 %indvars.iv.next164, %indvars.iv.next159
  %sext203.1 = shl i64 %i.fg, 32
  %i.fh = ashr exact i64 %sext203.1, 30
  %i.fi = getelementptr inbounds i8, ptr %i.e, i64 %i.fh ; 2 uses
  %i.fj = load i32, ptr %i.fi, align 4, !tbaa !22
  %gep212.1 = getelementptr [4 x i8], ptr %invariant.gep211, i64 %indvars.iv.next159 ; 2 uses
  %i.fk = load i32, ptr %gep212.1, align 4, !tbaa !22
  store i32 %i.fk, ptr %i.fi, align 4, !tbaa !22
  store i32 %i.fj, ptr %gep212.1, align 4, !tbaa !22
  %indvars.iv.next159.1 = add nuw nsw i64 %indvars.iv158, 2 ; 2 uses
  %niter249.next.1 = add nuw i64 %niter249, 2     ; 2 uses
  %niter249.ncmp.1 = icmp eq i64 %niter249.next.1, %unroll_iter248
  br i1 %niter249.ncmp.1, label %..loopexit_crit_edge.unr-lcssa, label %.loopexit85.new, !llvm.loop !51

..loopexit_crit_edge.unr-lcssa:                   ; preds = %.loopexit85.new
  br i1 %lcmp.mod246.not, label %..loopexit_crit_edge, label %.epil.preheader244

.epil.preheader244:                               ; preds = %..loopexit_crit_edge.unr-lcssa, %.loopexit85
  %indvars.iv158.epil.init = phi i64 [ 1, %.loopexit85 ], [ %indvars.iv.next159.1, %..loopexit_crit_edge.unr-lcssa ] ; 2 uses
  tail call void @llvm.assume(i1 %lcmp.mod247)
  %i.fl = sub nsw i64 %indvars.iv.next164, %indvars.iv158.epil.init
  %sext203.epil = shl i64 %i.fl, 32
  %i.fm = ashr exact i64 %sext203.epil, 30
  %i.fn = getelementptr inbounds i8, ptr %i.e, i64 %i.fm ; 2 uses
  %i.fo = load i32, ptr %i.fn, align 4, !tbaa !22
  %gep212.epil = getelementptr [4 x i8], ptr %invariant.gep211, i64 %indvars.iv158.epil.init ; 2 uses
  %i.fp = load i32, ptr %gep212.epil, align 4, !tbaa !22
  store i32 %i.fp, ptr %i.fn, align 4, !tbaa !22
  store i32 %i.fo, ptr %gep212.epil, align 4, !tbaa !22
  br label %..loopexit_crit_edge

..loopexit_crit_edge:                             ; preds = %..loopexit_crit_edge.unr-lcssa, %.epil.preheader244
  %i.fq = icmp samesign ult i64 %indvars.iv.next164, %i.ey
  br i1 %i.fq, label %.loopexit85, label %._crit_edge99, !llvm.loop !48

bb.e:                                             ; preds = %._crit_edge99
  %i.fr = load i32, ptr %1, align 4, !tbaa !21
  br label %bb.f

bb.f:                                             ; preds = %._crit_edge99, %bb.e
  %i.fs = phi i32 [ %i.fr, %bb.e ], [ 1, %._crit_edge99 ]
  %i.ft = getelementptr inbounds nuw i8, ptr %0, i64 136
  store i32 %i.fs, ptr %i.ft, align 8, !tbaa !24
  br label %bb.g

bb.g:                                             ; preds = %bb.a, %bb.f
  %.0 = phi i32 [ 0, %bb.f ], [ -12, %bb.a ]
  ret i32 %.0
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

declare noalias ptr @av_malloc(i64 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: nounwind uwtable
define range(i32 -22, 1) i32 @ff_tx_gen_compound_mapping(ptr nofree noundef writeonly captures(none) %0, ptr nofree noundef readonly captures(address_is_null) %1, i32 noundef %2, i32 noundef %3, i32 noundef %4) local_unnamed_addr #0 {
bb.a:
  %i.a = mul nuw nsw i32 %4, %3                   ; 6 uses
  %i.b = sext i32 %3 to i64                       ; 4 uses
  %i.c = sext i32 %4 to i64
  %i.d = tail call i64 @av_gcd(i64 noundef %i.b, i64 noundef %i.c) #15
  %.not = icmp eq i64 %i.d, 1
  br i1 %.not, label %bb.b, label %bb.k

bb.b:                                             ; preds = %bb.a
  %i.e = srem i32 %4, %3
  %i.f = icmp sgt i32 %3, 1
  br i1 %i.f, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.b, %bb.c
  %.011.i106119 = phi i32 [ %i.j, %bb.c ], [ 1, %bb.b ] ; 4 uses
  %i.g = mul nsw i32 %.011.i106119, %i.e
  %i.h = srem i32 %i.g, %3
  %i.i = icmp eq i32 %i.h, 1
  br i1 %i.i, label %mulinv.exit108, label %bb.c

bb.c:                                             ; preds = %.lr.ph
  %i.j = add nuw nsw i32 %.011.i106119, 1         ; 2 uses
  %exitcond.not = icmp eq i32 %i.j, %3
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !52

._crit_edge:                                      ; preds = %bb.c, %bb.b
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef null, i32 noundef 0, ptr noundef nonnull @.str, ptr noundef nonnull @.str.14, ptr noundef nonnull @.str.2, i32 noundef 40) #14
  tail call void @abort() #16
  unreachable

mulinv.exit108:                                   ; preds = %.lr.ph
  %i.k = srem i32 %3, %4
  %i.l = icmp sgt i32 %4, 1
  br i1 %i.l, label %.lr.ph121, label %._crit_edge122

.lr.ph121:                                        ; preds = %mulinv.exit108, %bb.d
  %.011.i120 = phi i32 [ %i.p, %bb.d ], [ 1, %mulinv.exit108 ] ; 4 uses
  %i.m = mul nuw nsw i32 %.011.i120, %i.k
  %i.n = urem i32 %i.m, %4
  %i.o = icmp eq i32 %i.n, 1
  br i1 %i.o, label %mulinv.exit, label %bb.d

bb.d:                                             ; preds = %.lr.ph121
  %i.p = add nuw nsw i32 %.011.i120, 1            ; 2 uses
  %exitcond142.not = icmp eq i32 %i.p, %4
  br i1 %exitcond142.not, label %._crit_edge122, label %.lr.ph121, !llvm.loop !52

._crit_edge122:                                   ; preds = %bb.d, %mulinv.exit108
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef null, i32 noundef 0, ptr noundef nonnull @.str, ptr noundef nonnull @.str.14, ptr noundef nonnull @.str.2, i32 noundef 40) #14
  tail call void @abort() #16
  unreachable

mulinv.exit:                                      ; preds = %.lr.ph121
  %i.q = shl nuw nsw i32 %i.a, 1
  %i.r = zext nneg i32 %i.q to i64
  %i.s = shl nuw nsw i64 %i.r, 2
  %i.t = tail call noalias ptr @av_malloc(i64 noundef %i.s) #14 ; 6 uses
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.t, ptr %i.u, align 8, !tbaa !18
  %.not103 = icmp eq ptr %i.t, null
  br i1 %.not103, label %bb.k, label %bb.e

bb.e:                                             ; preds = %mulinv.exit
  %i.v = zext nneg i32 %i.a to i64
  %i.w = getelementptr inbounds nuw [4 x i8], ptr %i.t, i64 %i.v ; 2 uses
  %.not104 = icmp eq ptr %1, null                 ; 2 uses
  br i1 %.not104, label %.preheader112.preheader, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.x = load i32, ptr %1, align 4, !tbaa !21
  %i.y = icmp eq i32 %i.x, 2
  br i1 %i.y, label %.preheader114, label %.preheader112.preheader

.preheader114:                                    ; preds = %bb.f, %._crit_edge125
  %.096126 = phi i32 [ %i.ab, %._crit_edge125 ], [ 0, %bb.f ] ; 3 uses
  %i.z = mul nuw nsw i32 %.096126, %3             ; 3 uses
  %i.aa = mul nuw nsw i32 %i.z, %.011.i120
  br label %bb.g

._crit_edge125:                                   ; preds = %bb.g
  %i.ab = add nuw nsw i32 %.096126, 1             ; 2 uses
  %exitcond144.not = icmp eq i32 %i.ab, %4
  br i1 %exitcond144.not, label %.loopexit113, label %.preheader114, !llvm.loop !53

bb.g:                                             ; preds = %.preheader114, %bb.g
  %.095123 = phi i32 [ 0, %.preheader114 ], [ %i.ao, %bb.g ] ; 3 uses
  %i.ac = add nuw nsw i32 %.095123, %i.z
  %i.ad = mul nuw nsw i32 %.095123, %4            ; 3 uses
  %i.ae = add nuw nsw i32 %i.ad, %i.z
  %i.af = urem i32 %i.ae, %i.a
  %i.ag = zext nneg i32 %i.af to i64
  %i.ah = getelementptr inbounds nuw [4 x i8], ptr %i.t, i64 %i.ag
  store i32 %i.ac, ptr %i.ah, align 4, !tbaa !22
  %i.ai = add nuw nsw i32 %i.ad, %.096126
  %i.aj = mul nuw nsw i32 %i.ad, %.011.i106119
  %i.ak = add nuw nsw i32 %i.aj, %i.aa
  %i.al = urem i32 %i.ak, %i.a
  %i.am = zext nneg i32 %i.al to i64
  %i.an = getelementptr inbounds nuw [4 x i8], ptr %i.w, i64 %i.am
  store i32 %i.ai, ptr %i.an, align 4, !tbaa !22
  %i.ao = add nuw nsw i32 %.095123, 1             ; 2 uses
  %exitcond143.not = icmp eq i32 %i.ao, %3
  br i1 %exitcond143.not, label %._crit_edge125, label %bb.g, !llvm.loop !54

.preheader112.preheader:                          ; preds = %bb.e, %bb.f
  %i.ap = zext nneg i32 %4 to i64
  %i.aq = zext nneg i32 %.011.i106119 to i64
  %i.ar = zext nneg i32 %3 to i64
  %i.as = zext nneg i32 %.011.i120 to i64
  %wide.trip.count151 = zext nneg i32 %4 to i64
  %wide.trip.count = zext nneg i32 %3 to i64
  br label %.preheader112

.preheader112:                                    ; preds = %.preheader112.preheader, %._crit_edge129
  %indvars.iv147 = phi i64 [ 0, %.preheader112.preheader ], [ %indvars.iv.next148, %._crit_edge129 ] ; 3 uses
  %i.at = mul nuw nsw i64 %indvars.iv147, %i.ar   ; 3 uses
  %i.au = mul nuw nsw i64 %i.at, %i.as
  %invariant.gep = getelementptr inbounds nuw [4 x i8], ptr %i.t, i64 %i.at
  br label %bb.h

._crit_edge129:                                   ; preds = %bb.h
  %indvars.iv.next148 = add nuw nsw i64 %indvars.iv147, 1 ; 2 uses
  %exitcond152.not = icmp eq i64 %indvars.iv.next148, %wide.trip.count151
  br i1 %exitcond152.not, label %.loopexit113, label %.preheader112, !llvm.loop !55

bb.h:                                             ; preds = %.preheader112, %bb.h
  %indvars.iv = phi i64 [ 0, %.preheader112 ], [ %indvars.iv.next, %bb.h ] ; 3 uses
  %i.av = mul nuw nsw i64 %indvars.iv, %i.ap      ; 3 uses
  %i.aw = add nuw nsw i64 %i.av, %i.at
  %i.ax = trunc nuw i64 %i.aw to i32
  %i.ay = urem i32 %i.ax, %i.a
  %gep = getelementptr inbounds nuw [4 x i8], ptr %invariant.gep, i64 %indvars.iv
  store i32 %i.ay, ptr %gep, align 4, !tbaa !22
  %i.az = add nuw nsw i64 %i.av, %indvars.iv147
  %i.ba = mul nuw nsw i64 %i.av, %i.aq
  %i.bb = add nuw nsw i64 %i.ba, %i.au
  %i.bc = trunc nuw i64 %i.bb to i32
  %i.bd = urem i32 %i.bc, %i.a
  %i.be = zext nneg i32 %i.bd to i64
  %i.bf = getelementptr inbounds nuw [4 x i8], ptr %i.w, i64 %i.be
  %i.bg = trunc nuw i64 %i.az to i32
  store i32 %i.bg, ptr %i.bf, align 4, !tbaa !22
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond146.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond146.not, label %._crit_edge129, label %bb.h, !llvm.loop !56

.loopexit113:                                     ; preds = %._crit_edge125, %._crit_edge129
  %.not105.not = icmp eq i32 %2, 0
  br i1 %.not105.not, label %.loopexit, label %.lr.ph136

.lr.ph136:                                        ; preds = %.loopexit113
  %i.bh = add nsw i32 %3, -1
  %i.bi = lshr i32 %i.bh, 1                       ; 4 uses
  %.not172 = icmp eq i32 %i.bi, 0
  br i1 %.not172, label %.loopexit, label %.lr.ph133.preheader

.lr.ph133.preheader:                              ; preds = %.lr.ph136
  %i.bj = zext nneg i32 %3 to i64
  %wide.trip.count162 = zext nneg i32 %4 to i64
  %wide.trip.count156 = zext nneg i32 %i.bi to i64 ; 2 uses
  %xtraiter = and i64 %wide.trip.count156, 1
  %i.bk = icmp eq i32 %i.bi, 1
  %unroll_iter = and i64 %wide.trip.count156, 2147483646
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  %lcmp.mod182 = trunc i32 %i.bi to i1
  br label %.lr.ph133

.lr.ph133:                                        ; preds = %.lr.ph133.preheader, %._crit_edge134
  %indvars.iv158 = phi i64 [ 0, %.lr.ph133.preheader ], [ %indvars.iv.next159, %._crit_edge134 ] ; 2 uses
  %i.bl = mul nuw nsw i64 %indvars.iv158, %i.bj
  %i.bm = getelementptr [4 x i8], ptr %i.t, i64 %i.bl
  %i.bn = getelementptr i8, ptr %i.bm, i64 4      ; 6 uses
  br i1 %i.bk, label %.epil.preheader, label %.lr.ph133.new

._crit_edge134.unr-lcssa:                         ; preds = %.lr.ph133.new
  br i1 %lcmp.mod.not, label %._crit_edge134, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge134.unr-lcssa, %.lr.ph133
  %indvars.iv153.epil.init = phi i64 [ 0, %.lr.ph133 ], [ %indvars.iv.next154.1, %._crit_edge134.unr-lcssa ] ; 2 uses
  tail call void @llvm.assume(i1 %lcmp.mod182)
  %i.bo = sub nsw i64 %i.b, %indvars.iv153.epil.init
  %i.bp = getelementptr [4 x i8], ptr %i.bn, i64 %i.bo
  %i.bq = getelementptr i8, ptr %i.bp, i64 -8     ; 2 uses
  %i.br = load i32, ptr %i.bq, align 4, !tbaa !22
  %i.bs = getelementptr inbounds nuw [4 x i8], ptr %i.bn, i64 %indvars.iv153.epil.init ; 2 uses
  %i.bt = load i32, ptr %i.bs, align 4, !tbaa !22
  store i32 %i.bt, ptr %i.bq, align 4, !tbaa !22
  store i32 %i.br, ptr %i.bs, align 4, !tbaa !22
  br label %._crit_edge134

._crit_edge134:                                   ; preds = %._crit_edge134.unr-lcssa, %.epil.preheader
  %indvars.iv.next159 = add nuw nsw i64 %indvars.iv158, 1 ; 2 uses
  %exitcond163.not = icmp eq i64 %indvars.iv.next159, %wide.trip.count162
  br i1 %exitcond163.not, label %.loopexit, label %.lr.ph133, !llvm.loop !57

.lr.ph133.new:                                    ; preds = %.lr.ph133, %.lr.ph133.new
  %indvars.iv153 = phi i64 [ %indvars.iv.next154.1, %.lr.ph133.new ], [ 0, %.lr.ph133 ] ; 4 uses
  %niter = phi i64 [ %niter.next.1, %.lr.ph133.new ], [ 0, %.lr.ph133 ]
  %i.bu = sub nsw i64 %i.b, %indvars.iv153
  %i.bv = getelementptr [4 x i8], ptr %i.bn, i64 %i.bu
  %i.bw = getelementptr i8, ptr %i.bv, i64 -8     ; 2 uses
  %i.bx = load i32, ptr %i.bw, align 4, !tbaa !22
  %i.by = getelementptr inbounds nuw [4 x i8], ptr %i.bn, i64 %indvars.iv153 ; 2 uses
  %i.bz = load i32, ptr %i.by, align 4, !tbaa !22
  store i32 %i.bz, ptr %i.bw, align 4, !tbaa !22
  store i32 %i.bx, ptr %i.by, align 4, !tbaa !22
  %indvars.iv.next154 = or disjoint i64 %indvars.iv153, 1 ; 2 uses
  %i.ca = sub nsw i64 %i.b, %indvars.iv.next154
  %i.cb = getelementptr [4 x i8], ptr %i.bn, i64 %i.ca
  %i.cc = getelementptr i8, ptr %i.cb, i64 -8     ; 2 uses
  %i.cd = load i32, ptr %i.cc, align 4, !tbaa !22
  %i.ce = getelementptr inbounds nuw [4 x i8], ptr %i.bn, i64 %indvars.iv.next154 ; 2 uses
  %i.cf = load i32, ptr %i.ce, align 4, !tbaa !22
  store i32 %i.cf, ptr %i.cc, align 4, !tbaa !22
  store i32 %i.cd, ptr %i.ce, align 4, !tbaa !22
  %indvars.iv.next154.1 = add nuw nsw i64 %indvars.iv153, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge134.unr-lcssa, label %.lr.ph133.new, !llvm.loop !58

.loopexit:                                        ; preds = %._crit_edge134, %.lr.ph136, %.loopexit113
  br i1 %.not104, label %bb.j, label %bb.i

bb.i:                                             ; preds = %.loopexit
  %i.cg = load i32, ptr %1, align 4, !tbaa !21
  br label %bb.j

bb.j:                                             ; preds = %.loopexit, %bb.i
  %i.ch = phi i32 [ %i.cg, %bb.i ], [ 1, %.loopexit ]
  %i.ci = getelementptr inbounds nuw i8, ptr %0, i64 136
  store i32 %i.ch, ptr %i.ci, align 8, !tbaa !24
  br label %bb.k

bb.k:                                             ; preds = %mulinv.exit, %bb.a, %bb.j
  %.0 = phi i32 [ -22, %bb.a ], [ 0, %bb.j ], [ -12, %mulinv.exit ]
  ret i32 %.0
}

; Function Attrs: mustprogress nofree nosync nounwind willreturn memory(none)
declare i64 @av_gcd(i64 noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define range(i32 -12, 1) i32 @ff_tx_gen_ptwo_revtab(ptr nofree noundef captures(none) initializes((8, 16)) %0, ptr nofree noundef readonly captures(address_is_null) %1) local_unnamed_addr #0 {
bb.a:
  %i.a = load i32, ptr %0, align 8, !tbaa !17     ; 5 uses
  %i.b = sext i32 %i.a to i64
  %i.c = shl nsw i64 %i.b, 2
  %i.d = tail call noalias ptr @av_malloc(i64 noundef %i.c) #14 ; 4 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.d, ptr %i.e, align 8, !tbaa !18
  %.not = icmp eq ptr %i.d, null
  br i1 %.not, label %bb.h, label %bb.b

bb.b:                                             ; preds = %bb.a
  %.not29 = icmp eq ptr %1, null                  ; 2 uses
  br i1 %.not29, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = load i32, ptr %1, align 4, !tbaa !21
  %i.g = icmp eq i32 %i.f, 2
  br i1 %i.g, label %.preheader, label %bb.e

.preheader:                                       ; preds = %bb.c
  %i.h = load i32, ptr %0, align 8, !tbaa !17     ; 2 uses
  %i.i = icmp sgt i32 %i.h, 0
  br i1 %i.i, label %.lr.ph, label %.loopexit.thread

.lr.ph:                                           ; preds = %.preheader
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.k = load i32, ptr %i.j, align 4, !tbaa !19
  %i.l = add nsw i32 %i.a, -1
  br label %bb.d

bb.d:                                             ; preds = %.lr.ph, %bb.d
  %.02631 = phi i32 [ 0, %.lr.ph ], [ %i.r, %bb.d ] ; 3 uses
  %i.m = tail call fastcc i32 @split_radix_permutation(i32 noundef %.02631, i32 noundef %i.a, i32 noundef %i.k)
  %i.n = sub nsw i32 0, %i.m
  %i.o = and i32 %i.l, %i.n
  %i.p = sext i32 %i.o to i64
  %i.q = getelementptr inbounds [4 x i8], ptr %i.d, i64 %i.p
  store i32 %.02631, ptr %i.q, align 4, !tbaa !22
  %i.r = add nuw nsw i32 %.02631, 1               ; 2 uses
  %exitcond.not = icmp eq i32 %i.r, %i.h
  br i1 %exitcond.not, label %.loopexit.thread, label %bb.d, !llvm.loop !59

bb.e:                                             ; preds = %bb.c, %bb.b
  %i.s = load i32, ptr %0, align 8, !tbaa !17     ; 2 uses
  %i.t = icmp sgt i32 %i.s, 0
  br i1 %i.t, label %.lr.ph33, label %.loopexit

.lr.ph33:                                         ; preds = %bb.e
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.v = load i32, ptr %i.u, align 4, !tbaa !19
  %i.w = add nsw i32 %i.a, -1
  %wide.trip.count = zext nneg i32 %i.s to i64
  br label %bb.f

bb.f:                                             ; preds = %.lr.ph33, %bb.f
  %indvars.iv = phi i64 [ 0, %.lr.ph33 ], [ %indvars.iv.next, %bb.f ] ; 3 uses
  %i.x = trunc nuw nsw i64 %indvars.iv to i32
  %i.y = tail call fastcc i32 @split_radix_permutation(i32 noundef %i.x, i32 noundef %i.a, i32 noundef %i.v)
  %i.z = sub nsw i32 0, %i.y
  %i.aa = and i32 %i.w, %i.z
  %i.ab = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %indvars.iv
  store i32 %i.aa, ptr %i.ab, align 4, !tbaa !22
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond36.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond36.not, label %.loopexit, label %bb.f, !llvm.loop !60

.loopexit:                                        ; preds = %bb.f, %bb.e
  br i1 %.not29, label %bb.g, label %.loopexit.thread

.loopexit.thread:                                 ; preds = %bb.d, %.preheader, %.loopexit
  %i.ac = load i32, ptr %1, align 4, !tbaa !21
  br label %bb.g

bb.g:                                             ; preds = %.loopexit, %.loopexit.thread
  %i.ad = phi i32 [ %i.ac, %.loopexit.thread ], [ 1, %.loopexit ]
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 136
  store i32 %i.ad, ptr %i.ae, align 8, !tbaa !24
  br label %bb.h

bb.h:                                             ; preds = %bb.a, %bb.g
  %.027 = phi i32 [ 0, %bb.g ], [ -12, %bb.a ]
  ret i32 %.027
}

; Function Attrs: inlinehint nofree nosync nounwind memory(none) uwtable
define internal fastcc i32 @split_radix_permutation(i32 noundef %0, i32 noundef %1, i32 noundef %2) unnamed_addr #4 {
bb.a:
  %i.a = ashr i32 %1, 1                           ; 4 uses
  %i.b = icmp slt i32 %i.a, 2
  br i1 %i.b, label %common.ret, label %bb.b

common.ret:                                       ; preds = %bb.a
  %i.c = and i32 %0, 1
  br label %common.ret19

bb.b:                                             ; preds = %bb.a
  %i.d = and i32 %i.a, %0
  %.not = icmp eq i32 %i.d, 0
  br i1 %.not, label %bb.c, label %bb.d

common.ret19:                                     ; preds = %bb.d, %bb.c, %common.ret
end_hunk_0
