inline.NumInlined: 45
inline.NumDeleted: 17
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumUnrolled: 3
begin_hunk_0_@writeCCode:bb.a
  %i.do = extractelement <16 x i1> %i.ag, i64 13
  br i1 %i.do, label %pred.store.if129, label %pred.store.continue130

pred.store.if129:                                 ; preds = %pred.store.continue128
  %i.dp = getelementptr inbounds nuw i8, ptr %i.c, i64 %index
  %i.dq = getelementptr inbounds nuw i8, ptr %i.dp, i64 29
  store i8 95, ptr %i.dq, align 1
  br label %pred.store.continue130

pred.store.continue130:                           ; preds = %pred.store.if129, %pred.store.continue128
  %i.dr = extractelement <16 x i1> %i.ag, i64 14
  br i1 %i.dr, label %pred.store.if131, label %pred.store.continue132

pred.store.if131:                                 ; preds = %pred.store.continue130
  %i.ds = getelementptr inbounds nuw i8, ptr %i.c, i64 %index
  %i.dt = getelementptr inbounds nuw i8, ptr %i.ds, i64 30
  store i8 95, ptr %i.dt, align 2
  br label %pred.store.continue132

pred.store.continue132:                           ; preds = %pred.store.if131, %pred.store.continue130
  %i.du = extractelement <16 x i1> %i.ag, i64 15
  br i1 %i.du, label %pred.store.if133, label %pred.store.continue134

pred.store.if133:                                 ; preds = %pred.store.continue132
  %i.dv = getelementptr inbounds nuw i8, ptr %i.c, i64 %index
  %i.dw = getelementptr inbounds nuw i8, ptr %i.dv, i64 31
  store i8 95, ptr %i.dw, align 1
  br label %pred.store.continue134

pred.store.continue134:                           ; preds = %pred.store.if133, %pred.store.continue132
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %i.dx = icmp eq i64 %index.next, %n.vec
  br i1 %i.dx, label %middle.block, label %vector.body, !llvm.loop !15

middle.block:                                     ; preds = %pred.store.continue134
  %cmp.n = icmp eq i64 %i.aa, %n.vec
  br i1 %cmp.n, label %._crit_edge, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %n.mod.vf, 0
  br i1 %min.epilog.iters.check, label %.lr.ph.preheader, label %vec.epilog.ph, !prof !9

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec136 = and i64 %i.aa, -8                   ; 3 uses
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %pred.store.continue154, %vec.epilog.ph
  %index137 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next155, %pred.store.continue154 ] ; 9 uses
  %i.dy = getelementptr inbounds nuw i8, ptr %i.c, i64 %index137 ; 2 uses
  %wide.load138 = load <8 x i8>, ptr %i.dy, align 8
  %i.dz = add <8 x i8> %wide.load138, splat (i8 -45)
  %i.ea = icmp ult <8 x i8> %i.dz, splat (i8 2)   ; 8 uses
  %i.eb = extractelement <8 x i1> %i.ea, i64 0
  br i1 %i.eb, label %pred.store.if139, label %pred.store.continue140

pred.store.if139:                                 ; preds = %vec.epilog.vector.body
  store i8 95, ptr %i.dy, align 8
  br label %pred.store.continue140

pred.store.continue140:                           ; preds = %pred.store.if139, %vec.epilog.vector.body
  %i.ec = extractelement <8 x i1> %i.ea, i64 1
  br i1 %i.ec, label %pred.store.if141, label %pred.store.continue142

pred.store.if141:                                 ; preds = %pred.store.continue140
  %i.ed = getelementptr inbounds nuw i8, ptr %i.c, i64 %index137
  %i.ee = getelementptr inbounds nuw i8, ptr %i.ed, i64 1
  store i8 95, ptr %i.ee, align 1
  br label %pred.store.continue142

pred.store.continue142:                           ; preds = %pred.store.if141, %pred.store.continue140
  %i.ef = extractelement <8 x i1> %i.ea, i64 2
  br i1 %i.ef, label %pred.store.if143, label %pred.store.continue144

pred.store.if143:                                 ; preds = %pred.store.continue142
  %i.eg = getelementptr inbounds nuw i8, ptr %i.c, i64 %index137
  %i.eh = getelementptr inbounds nuw i8, ptr %i.eg, i64 2
  store i8 95, ptr %i.eh, align 2
  br label %pred.store.continue144

pred.store.continue144:                           ; preds = %pred.store.if143, %pred.store.continue142
  %i.ei = extractelement <8 x i1> %i.ea, i64 3
  br i1 %i.ei, label %pred.store.if145, label %pred.store.continue146

pred.store.if145:                                 ; preds = %pred.store.continue144
  %i.ej = getelementptr inbounds nuw i8, ptr %i.c, i64 %index137
  %i.ek = getelementptr inbounds nuw i8, ptr %i.ej, i64 3
  store i8 95, ptr %i.ek, align 1
  br label %pred.store.continue146

pred.store.continue146:                           ; preds = %pred.store.if145, %pred.store.continue144
  %i.el = extractelement <8 x i1> %i.ea, i64 4
  br i1 %i.el, label %pred.store.if147, label %pred.store.continue148

pred.store.if147:                                 ; preds = %pred.store.continue146
  %i.em = getelementptr inbounds nuw i8, ptr %i.c, i64 %index137
  %i.en = getelementptr inbounds nuw i8, ptr %i.em, i64 4
  store i8 95, ptr %i.en, align 4
  br label %pred.store.continue148

pred.store.continue148:                           ; preds = %pred.store.if147, %pred.store.continue146
  %i.eo = extractelement <8 x i1> %i.ea, i64 5
  br i1 %i.eo, label %pred.store.if149, label %pred.store.continue150

pred.store.if149:                                 ; preds = %pred.store.continue148
  %i.ep = getelementptr inbounds nuw i8, ptr %i.c, i64 %index137
  %i.eq = getelementptr inbounds nuw i8, ptr %i.ep, i64 5
  store i8 95, ptr %i.eq, align 1
  br label %pred.store.continue150

pred.store.continue150:                           ; preds = %pred.store.if149, %pred.store.continue148
  %i.er = extractelement <8 x i1> %i.ea, i64 6
  br i1 %i.er, label %pred.store.if151, label %pred.store.continue152

pred.store.if151:                                 ; preds = %pred.store.continue150
  %i.es = getelementptr inbounds nuw i8, ptr %i.c, i64 %index137
  %i.et = getelementptr inbounds nuw i8, ptr %i.es, i64 6
  store i8 95, ptr %i.et, align 2
  br label %pred.store.continue152

pred.store.continue152:                           ; preds = %pred.store.if151, %pred.store.continue150
  %i.eu = extractelement <8 x i1> %i.ea, i64 7
  br i1 %i.eu, label %pred.store.if153, label %pred.store.continue154

pred.store.if153:                                 ; preds = %pred.store.continue152
  %i.ev = getelementptr inbounds nuw i8, ptr %i.c, i64 %index137
  %i.ew = getelementptr inbounds nuw i8, ptr %i.ev, i64 7
  store i8 95, ptr %i.ew, align 1
  br label %pred.store.continue154

pred.store.continue154:                           ; preds = %pred.store.if153, %pred.store.continue152
  %index.next155 = add nuw i64 %index137, 8       ; 2 uses
  %i.ex = icmp eq i64 %index.next155, %n.vec136
  br i1 %i.ex, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !16

vec.epilog.middle.block:                          ; preds = %pred.store.continue154
  %cmp.n156 = icmp eq i64 %i.aa, %n.vec136
  br i1 %cmp.n156, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.03854.ph = phi i64 [ 0, %iter.check ], [ %n.vec, %vec.epilog.iter.check ], [ %n.vec136, %vec.epilog.middle.block ]
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.r
  %.03854 = phi i64 [ %i.fa, %bb.r ], [ %.03854.ph, %.lr.ph.preheader ] ; 2 uses
  %i.ey = getelementptr inbounds nuw i8, ptr %i.c, i64 %.03854 ; 2 uses
  %i.ez = load i8, ptr %i.ey, align 1
  %.off = add i8 %i.ez, -45
  %switch = icmp ult i8 %.off, 2
  br i1 %switch, label %bb.q, label %bb.r

bb.q:                                             ; preds = %.lr.ph
  store i8 95, ptr %i.ey, align 1
  br label %bb.r

bb.r:                                             ; preds = %.lr.ph, %bb.q
  %i.fa = add nuw i64 %.03854, 1                  ; 2 uses
  %exitcond.not = icmp eq i64 %i.fa, %i.aa
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !17

._crit_edge:                                      ; preds = %bb.r, %middle.block, %vec.epilog.middle.block, %bb.p
  %i.fb = call i32 @T_FileStream_size(ptr noundef nonnull %i.d) #16
  %i.fc = sext i32 %i.fb to i64
  %i.fd = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) %i.b, i64 noundef 4096, ptr noundef nonnull @.str.28, i64 noundef %i.fc, ptr noundef nonnull %i.c) #16
  %i.fe = icmp ugt i32 %i.fd, 4095
  br i1 %i.fe, label %bb.s, label %bb.t

bb.s:                                             ; preds = %._crit_edge
  %i.ff = load ptr, ptr @stderr, align 8
  %i.fg = call i64 @fwrite(ptr nonnull @.str.22, i64 47, i64 1, ptr %i.ff) #14 ; 0 uses
  call void @exit(i32 noundef 1) #17
  unreachable

bb.t:                                             ; preds = %._crit_edge
  %i.fh = call i32 @T_FileStream_writeLine(ptr noundef nonnull %i.v, ptr noundef nonnull %i.b) #16 ; 0 uses
  %i.fi = call i32 @T_FileStream_read(ptr noundef nonnull %i.d, ptr noundef nonnull %i.b, i32 noundef 4096) #16 ; 2 uses
  %i.fj = icmp eq i32 %i.fi, 0
  br i1 %i.fj, label %._crit_edge58, label %.preheader

.loopexit:                                        ; preds = %_ZL6write8P11_FileStreamhj.exit
  %i.fk = call i32 @T_FileStream_read(ptr noundef nonnull %i.d, ptr noundef nonnull %i.b, i32 noundef 4096) #16 ; 2 uses
  %i.fl = icmp eq i32 %i.fk, 0
  br i1 %i.fl, label %._crit_edge58, label %.preheader, !llvm.loop !18

.preheader:                                       ; preds = %bb.t, %.loopexit
  %.in = phi i32 [ %i.fk, %.loopexit ], [ %i.fi, %bb.t ]
  %.057 = phi i32 [ %.020.i, %.loopexit ], [ -1, %bb.t ]
  %i.fm = sext i32 %.in to i64
  br label %bb.u

bb.u:                                             ; preds = %.preheader, %_ZL6write8P11_FileStreamhj.exit
  %.156 = phi i32 [ %.057, %.preheader ], [ %.020.i, %_ZL6write8P11_FileStreamhj.exit ] ; 3 uses
  %.13955 = phi i64 [ 0, %.preheader ], [ %i.gi, %_ZL6write8P11_FileStreamhj.exit ] ; 2 uses
  %i.fn = getelementptr inbounds nuw i8, ptr %i.b, i64 %.13955
  %i.fo = load i8, ptr %i.fn, align 1             ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #16
  %i.fp = icmp ugt i8 %i.fo, 99
  br i1 %i.fp, label %.thread.i, label %bb.v

.thread.i:                                        ; preds = %bb.u
  %7 = icmp ugt i8 %i.fo, -57
  %8 = select i1 %7, i8 50, i8 49
  store i8 %8, ptr %i.a, align 1
  %i.fq = urem i8 %i.fo, 100
  br label %bb.w

bb.v:                                             ; preds = %bb.u
  %i.fr = icmp samesign ugt i8 %i.fo, 9
  br i1 %i.fr, label %bb.w, label %bb.x

bb.w:                                             ; preds = %bb.v, %.thread.i
  %.029.i = phi i32 [ 1, %.thread.i ], [ 0, %bb.v ] ; 2 uses
  %.02128.i = phi i8 [ %i.fq, %.thread.i ], [ %i.fo, %bb.v ] ; 2 uses
  %i.fs = udiv i8 %.02128.i, 10
  %i.ft = or disjoint i8 %i.fs, 48
  %i.fu = add nuw nsw i32 %.029.i, 1
  %i.fv = zext nneg i32 %.029.i to i64
  %i.fw = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.fv
  store i8 %i.ft, ptr %i.fw, align 1
  %i.fx = urem i8 %.02128.i, 10
  %i.fy = zext nneg i32 %i.fu to i64
  br label %bb.x

bb.x:                                             ; preds = %bb.w, %bb.v
  %.122.i = phi i8 [ %i.fx, %bb.w ], [ %i.fo, %bb.v ]
  %.1.i = phi i64 [ %i.fy, %bb.w ], [ 0, %bb.v ]
  %i.fz = or disjoint i8 %.122.i, 48
  %i.ga = getelementptr inbounds nuw i8, ptr %i.a, i64 %.1.i ; 2 uses
  store i8 %i.fz, ptr %i.ga, align 1
  %i.gb = getelementptr inbounds nuw i8, ptr %i.ga, i64 1
  store i8 0, ptr %i.gb, align 1
  %i.gc = icmp eq i32 %.156, -1
  br i1 %i.gc, label %_ZL6write8P11_FileStreamhj.exit, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.gd = icmp ult i32 %.156, 16
  br i1 %i.gd, label %bb.z, label %bb.aa

bb.z:                                             ; preds = %bb.y
  %i.ge = call i32 @T_FileStream_writeLine(ptr noundef nonnull %i.v, ptr noundef nonnull @.str.64) #16 ; 0 uses
  %i.gf = add nuw nsw i32 %.156, 1
  br label %_ZL6write8P11_FileStreamhj.exit

bb.aa:                                            ; preds = %bb.y
  %i.gg = call i32 @T_FileStream_writeLine(ptr noundef nonnull %i.v, ptr noundef nonnull @.str.65) #16 ; 0 uses
  br label %_ZL6write8P11_FileStreamhj.exit

_ZL6write8P11_FileStreamhj.exit:                  ; preds = %bb.x, %bb.z, %bb.aa
  %.020.i = phi i32 [ 1, %bb.aa ], [ %i.gf, %bb.z ], [ 1, %bb.x ] ; 2 uses
  %i.gh = call i32 @T_FileStream_writeLine(ptr noundef nonnull %i.v, ptr noundef nonnull %i.a) #16 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #16
  %i.gi = add nuw i64 %.13955, 1                  ; 2 uses
  %exitcond60.not = icmp eq i64 %i.gi, %i.fm
  br i1 %exitcond60.not, label %.loopexit, label %bb.u, !llvm.loop !19

._crit_edge58:                                    ; preds = %.loopexit, %bb.t
  %i.gj = call i32 @T_FileStream_writeLine(ptr noundef nonnull %i.v, ptr noundef nonnull @.str.29) #16 ; 0 uses
  %i.gk = call i32 @T_FileStream_error(ptr noundef nonnull %i.d) #16
  %.not52 = icmp eq i32 %i.gk, 0
  br i1 %.not52, label %bb.ac, label %bb.ab

bb.ab:                                            ; preds = %._crit_edge58
  %i.gl = load ptr, ptr @stderr, align 8
  %i.gm = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.gl, ptr noundef nonnull @.str.24, ptr noundef %0) #15 ; 0 uses
  call void @exit(i32 noundef 4) #17
  unreachable

bb.ac:                                            ; preds = %._crit_edge58
  %i.gn = call i32 @T_FileStream_error(ptr noundef nonnull %i.v) #16
  %.not53 = icmp eq i32 %i.gn, 0
  br i1 %.not53, label %bb.ae, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.go = load ptr, ptr @stderr, align 8
  %i.gp = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.go, ptr noundef nonnull @.str.25, ptr noundef %0) #15 ; 0 uses
  call void @exit(i32 noundef 4) #17
  unreachable

bb.ae:                                            ; preds = %bb.ac
  call void @T_FileStream_close(ptr noundef nonnull %i.v) #16
  call void @T_FileStream_close(ptr noundef nonnull %i.d) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #16
  ret void
}

declare i32 @T_FileStream_size(ptr noundef) local_unnamed_addr #7

declare ptr @findBasename(ptr noundef) local_unnamed_addr #7

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare noundef ptr @strrchr(ptr noundef, i32 noundef) local_unnamed_addr #2

declare void @_ZN6icu_7811StringPieceC1EPKc(ptr noundef nonnull align 8 dereferenceable(12), ptr noundef) unnamed_addr #7

declare noundef nonnull align 8 dereferenceable(60) ptr @_ZN6icu_7810CharString27ensureEndsWithFileSeparatorER10UErrorCode(ptr noundef nonnull align 8 dereferenceable(60), ptr noundef nonnull align 4 dereferenceable(4)) local_unnamed_addr #7

declare noundef nonnull align 8 dereferenceable(60) ptr @_ZN6icu_7810CharString6appendEPKciR10UErrorCode(ptr noundef nonnull align 8 dereferenceable(60), ptr noundef, i32 noundef, ptr noundef nonnull align 4 dereferenceable(4)) local_unnamed_addr #7

declare noundef nonnull align 8 dereferenceable(60) ptr @_ZN6icu_7810CharString6appendEcR10UErrorCode(ptr noundef nonnull align 8 dereferenceable(60), i8 noundef signext, ptr noundef nonnull align 4 dereferenceable(4)) local_unnamed_addr #7

declare noundef nonnull align 8 dereferenceable(60) ptr @_ZN6icu_7810CharString8truncateEi(ptr noundef nonnull align 8 dereferenceable(60), i32 noundef) local_unnamed_addr #7

declare noundef i32 @_ZNK6icu_7810CharString7extractEPciR10UErrorCode(ptr noundef nonnull align 8 dereferenceable(60), ptr noundef, i32 noundef, ptr noundef nonnull align 4 dereferenceable(4)) local_unnamed_addr #7

; Function Attrs: nounwind
declare void @_ZN6icu_789ErrorCodeD1Ev(ptr noundef nonnull align 8 dereferenceable(12)) unnamed_addr #11

declare void @uprv_free_78(ptr noundef) local_unnamed_addr #7

; Function Attrs: nofree nounwind
declare noundef i64 @fwrite(ptr noundef readonly captures(none), i64 noundef, i64 noundef, ptr noundef captures(none)) local_unnamed_addr #12

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, argmem: read, inaccessiblemem: none, target_mem: none) uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { cold mustprogress nofree nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nofree nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nofree noreturn nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #11 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { nofree nounwind }
attributes #13 = { nounwind willreturn memory(read) }
attributes #14 = { cold }
attributes #15 = { cold nounwind }
attributes #16 = { nounwind }
attributes #17 = { cold noreturn nounwind }
attributes #18 = { noreturn nounwind }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"PIE Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 2}
!3 = !{i32 7, !"frame-pointer", i32 2}
!4 = !{!"Ubuntu clang version 23.0.0 (++20260326081736+e69c7312f31b-1~exp1~20260326081905.1542)"}
!5 = distinct !{!5, !6, !7, !8}
!6 = !{!"llvm.loop.mustprogress"}
!7 = !{!"llvm.loop.isvectorized", i32 1}
!8 = !{!"llvm.loop.unroll.runtime.disable"}
!9 = !{!"branch_weights", i32 8, i32 24}
!10 = distinct !{!10, !6, !7, !8}
!11 = distinct !{!11, !6, !8, !7}
!12 = distinct !{!12, !6}
!13 = distinct !{!13, !6}
!14 = distinct !{!14, !6}
!15 = distinct !{!15, !6, !7, !8}
!16 = distinct !{!16, !6, !7, !8}
!17 = distinct !{!17, !6, !8, !7}
!18 = distinct !{!18, !6}
!19 = distinct !{!19, !6}
end_hunk_0
