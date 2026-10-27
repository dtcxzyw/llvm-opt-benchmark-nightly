Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/tev/original/hasselblad_model?download=true
inline.NumInlined: 5
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumUnrolled: 3
begin_hunk_0_@_ZN6LibRaw15parseHassyModelEv:bb.a
  %i.nw = load i16, ptr %i.c, align 8, !tbaa !79
  %i.nx = icmp eq i16 %i.nw, 5456
  br i1 %i.nx, label %bb.in, label %.thread316

bb.if:                                            ; preds = %bb.ib
  %i.ny = load i16, ptr %i.c, align 8, !tbaa !79
  %i.nz = icmp eq i16 %i.ny, 5586
  br i1 %i.nz, label %bb.in, label %.thread316

bb.ig:                                            ; preds = %bb.ib
  %i.oa = load i16, ptr %i.c, align 8, !tbaa !79
  %i.ob = icmp eq i16 %i.oa, 6240
  br i1 %i.ob, label %bb.in, label %.thread316

bb.ih:                                            ; preds = %bb.ib
  %i.oc = load i16, ptr %i.c, align 8, !tbaa !79
  %i.od = icmp eq i16 %i.oc, 6304
  br i1 %i.od, label %bb.in, label %.thread316

bb.ii:                                            ; preds = %bb.ib
  %i.oe = load i16, ptr %i.c, align 8, !tbaa !79
  %i.of = icmp eq i16 %i.oe, 6304
  br i1 %i.of, label %bb.in, label %.thread316

bb.ij:                                            ; preds = %bb.ib
  %i.og = load i16, ptr %i.c, align 8, !tbaa !79
  %i.oh = icmp eq i16 %i.og, 6732
  br i1 %i.oh, label %bb.in, label %.thread316

bb.ik:                                            ; preds = %bb.ib
  %i.oi = load i16, ptr %i.c, align 8, !tbaa !79
  %i.oj = icmp eq i16 %i.oi, 7752
  br i1 %i.oj, label %bb.in, label %.thread316

bb.il:                                            ; preds = %bb.ib
  %i.ok = load i16, ptr %i.c, align 8, !tbaa !79
  %i.ol = icmp eq i16 %i.ok, 8816
  br i1 %i.ol, label %bb.in, label %.thread316

bb.im:                                            ; preds = %bb.ib
  %i.om = load i16, ptr %i.c, align 8, !tbaa !79
  %i.on = icmp eq i16 %i.om, 8842
  br i1 %i.on, label %bb.in, label %.thread316

bb.in:                                            ; preds = %bb.ia, %bb.ia, %.thread293, %bb.im, %bb.il, %bb.ik, %bb.ij, %bb.ii, %bb.ih, %bb.ig, %bb.if, %bb.ie, %bb.id, %bb.ic
  %i.oo = getelementptr inbounds nuw i8, ptr %0, i64 2564
  store i32 1, ptr %i.oo, align 4, !tbaa !89
  br label %.thread316

.thread316:                                       ; preds = %bb.ia, %bb.ib, %bb.ic, %bb.id, %bb.ie, %bb.if, %bb.ig, %bb.ih, %bb.ii, %bb.ij, %bb.ik, %bb.il, %bb.in, %bb.im
  %i.op = load i8, ptr %i.j, align 4, !tbaa !12
  %i.oq = icmp ne i8 %i.op, 0
  %i.or = icmp ne i32 %.178, 0
  %or.cond5 = and i1 %i.or, %i.oq
  br i1 %or.cond5, label %bb.io, label %_ZL14limited_strcatPcPKcm.exit

bb.io:                                            ; preds = %.thread316
  %i.os = getelementptr inbounds nuw i8, ptr %0, i64 2416 ; 2 uses
  %i.ot = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.j) #11
  %i.ou = call i64 @strlen(ptr noundef nonnull readonly dereferenceable(1) %i.os) #11
  %i.ov = add i64 %i.ou, %i.ot
  %i.ow = icmp ult i64 %i.ov, 64
  br i1 %i.ow, label %bb.ip, label %_ZL14limited_strcatPcPKcm.exit

bb.ip:                                            ; preds = %bb.io
  %i.ox = call ptr @strcat(ptr noundef nonnull dereferenceable(1) %i.j, ptr noundef nonnull readonly dereferenceable(1) %i.os) #12 ; 0 uses
  br label %_ZL14limited_strcatPcPKcm.exit

_ZL14limited_strcatPcPKcm.exit:                   ; preds = %bb.ip, %bb.io, %.thread316
  %i.oy = getelementptr inbounds nuw i8, ptr %0, i64 2416 ; 3 uses
  %i.oz = load i8, ptr %i.oy, align 8, !tbaa !12
  %i.pa = icmp eq i8 %i.oz, 45
  br i1 %i.pa, label %bb.iq, label %bb.ir

bb.iq:                                            ; preds = %_ZL14limited_strcatPcPKcm.exit
  %i.pb = getelementptr inbounds nuw i8, ptr %0, i64 2417
  %i.pc = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.oy) #11
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.oy, ptr nonnull align 1 %i.pb, i64 %i.pc, i1 false)
  br label %bb.ir

bb.ir:                                            ; preds = %bb.iq, %_ZL14limited_strcatPcPKcm.exit
  %i.pd = getelementptr inbounds nuw i8, ptr %0, i64 532
  %i.pe = load i32, ptr %i.pd, align 4, !tbaa !81
  %.not197 = icmp eq i32 %i.pe, 0
  br i1 %.not197, label %bb.iu, label %bb.is

bb.is:                                            ; preds = %bb.ir
  %i.pf = load i32, ptr %i.ez, align 8, !tbaa !86
  %i.pg = icmp eq i32 %i.pf, 13
  br i1 %i.pg, label %bb.it, label %bb.iu

bb.it:                                            ; preds = %bb.is
  %i.ph = getelementptr inbounds nuw i8, ptr %0, i64 2560
  %i.pi = load i32, ptr %i.ph, align 8, !tbaa !87
  %i.pj = icmp eq i32 %i.pi, 4
  br i1 %i.pj, label %.thread326, label %bb.iu

bb.iu:                                            ; preds = %bb.it, %bb.is, %bb.ir
  %i.pk = load i32, ptr %i.aa, align 8, !tbaa !80 ; 4 uses
  %i.pl = icmp ult i32 %i.pk, 7
  br i1 %i.pl, label %switch.lookup, label %_ZN6LibRaw21HassyRawFormat_idx2HREj.exit

switch.lookup:                                    ; preds = %bb.iu
  %i.pm = zext nneg i32 %i.pk to i64
  %switch.gep = getelementptr inbounds nuw i8, ptr @switch.table._ZN6LibRaw15parseHassyModelEv, i64 %i.pm
  %switch.load = load i8, ptr %switch.gep, align 1
  %switch.ext = zext i8 %switch.load to i32
  %i.pn = zext nneg i32 %i.pk to i64
  %switch.gep470 = getelementptr inbounds nuw [8 x i8], ptr @switch.table._ZN6LibRaw15parseHassyModelEv.1, i64 %i.pn
  %switch.load471 = load ptr, ptr %switch.gep470, align 8
  br label %.thread326

.thread326:                                       ; preds = %switch.lookup, %bb.it
  %.4320 = phi i32 [ %switch.ext, %switch.lookup ], [ 5, %bb.it ]
  %.lcssa.i = phi ptr [ %switch.load471, %switch.lookup ], [ getelementptr inbounds nuw (i8, ptr @_ZL14HassyRawFormat, i64 80), %bb.it ]
  %i.po = getelementptr inbounds nuw i8, ptr %.lcssa.i, i64 8
  %i.pp = load ptr, ptr %i.po, align 8, !tbaa !11
  br label %_ZN6LibRaw21HassyRawFormat_idx2HREj.exit

_ZN6LibRaw21HassyRawFormat_idx2HREj.exit:         ; preds = %bb.iu, %.thread326
  %.4321 = phi i32 [ %.4320, %.thread326 ], [ %i.pk, %bb.iu ]
  %i.pq = phi ptr [ %i.pp, %.thread326 ], [ null, %bb.iu ] ; 2 uses
  %i.pr = add i32 %.4321, -1
  %or.cond7 = icmp ult i32 %i.pr, 2
  br i1 %or.cond7, label %bb.iv, label %_ZL14limited_strcatPcPKcm.exit209

bb.iv:                                            ; preds = %_ZN6LibRaw21HassyRawFormat_idx2HREj.exit
  %i.ps = getelementptr inbounds nuw i8, ptr %0, i64 460 ; 2 uses
  %i.pt = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.ps) #11
  %i.pu = call i64 @strlen(ptr noundef nonnull readonly dereferenceable(1) %i.pq) #11
  %i.pv = add i64 %i.pu, %i.pt
  %i.pw = icmp ult i64 %i.pv, 64
  br i1 %i.pw, label %bb.iw, label %_ZL14limited_strcatPcPKcm.exit209

bb.iw:                                            ; preds = %bb.iv
  %i.px = call ptr @strcat(ptr noundef nonnull dereferenceable(1) %i.ps, ptr noundef nonnull readonly dereferenceable(1) %i.pq) #12 ; 0 uses
  br label %_ZL14limited_strcatPcPKcm.exit209

_ZL14limited_strcatPcPKcm.exit209:                ; preds = %bb.iw, %bb.iv, %_ZN6LibRaw21HassyRawFormat_idx2HREj.exit
  %i.py = load i8, ptr %i.ci, align 8, !tbaa !12
  switch i8 %i.py, label %sub_0397 [
    i8 72, label %bb.ix
    i8 65, label %bb.iy
    i8 88, label %bb.jb
  ]

bb.ix:                                            ; preds = %_ZL14limited_strcatPcPKcm.exit209
  %i.pz = getelementptr inbounds nuw i8, ptr %0, i64 2569
  %i.qa = load i8, ptr %i.pz, align 1, !tbaa !12
  %.not198 = icmp eq i8 %i.qa, 97
  br i1 %.not198, label %sub_0397, label %bb.iz

bb.iy:                                            ; preds = %_ZL14limited_strcatPcPKcm.exit209
  %i.qb = getelementptr inbounds nuw i8, ptr %0, i64 2569
  %i.qc = load i8, ptr %i.qb, align 1, !tbaa !12
  %i.qd = sext i8 %i.qc to i32
  %isdigittmp = add nsw i32 %i.qd, -48
  %isdigit = icmp ult i32 %isdigittmp, 10
  br i1 %isdigit, label %bb.iz, label %sub_0397

bb.iz:                                            ; preds = %bb.iy, %bb.ix
  %i.qe = getelementptr inbounds nuw i8, ptr %0, i64 1352
  store i16 11, ptr %i.qe, align 8, !tbaa !84
  %i.qf = getelementptr inbounds nuw i8, ptr %0, i64 1354
  store i16 14, ptr %i.qf, align 2, !tbaa !85
  %i.qg = getelementptr inbounds nuw i8, ptr %0, i64 788
  %i.qh = load i8, ptr %i.qg, align 4, !tbaa !12
  %i.qi = icmp eq i8 %i.qh, 72
  br i1 %i.qi, label %bb.ja, label %.thread331.tail.thread

bb.ja:                                            ; preds = %bb.iz
  call void @_ZN6LibRaw18process_Hassy_LensEi(ptr noundef nonnull align 8 dereferenceable(768512) %0, i32 noundef 14)
  br label %.thread331.tail.thread

bb.jb:                                            ; preds = %_ZL14limited_strcatPcPKcm.exit209
  %i.qj = getelementptr inbounds nuw i8, ptr %0, i64 2569
  %i.qk = load i8, ptr %i.qj, align 1, !tbaa !12
  %i.ql = sext i8 %i.qk to i32
  %isdigittmp199 = add nsw i32 %i.ql, -48
  %isdigit200 = icmp ult i32 %isdigittmp199, 10
  br i1 %isdigit200, label %bb.jc, label %sub_0397

sub_0397:                                         ; preds = %bb.jb, %bb.iy, %bb.ix, %_ZL14limited_strcatPcPKcm.exit209
  %i.qm = load i8, ptr %i.o, align 8
  %.not420 = icmp eq i8 %i.qm, 57
  br i1 %.not420, label %sub_1398, label %.thread331.tail.thread

sub_1398:                                         ; preds = %sub_0397
  %i.qn = getelementptr inbounds nuw i8, ptr %0, i64 2489
  %i.qo = load i8, ptr %i.qn, align 1
  %.not421 = icmp eq i8 %i.qo, 48
  br i1 %.not421, label %.thread331.tail, label %.thread331.tail.thread

.thread331.tail:                                  ; preds = %sub_1398
  %i.qp = getelementptr inbounds nuw i8, ptr %0, i64 2490
  %i.qq = load i8, ptr %i.qp, align 2
  %i.qr = icmp eq i8 %i.qq, 55
  br i1 %i.qr, label %bb.jc, label %.thread331.tail.thread

bb.jc:                                            ; preds = %.thread331.tail, %bb.jb
  %i.qs = getelementptr inbounds nuw i8, ptr %0, i64 1200 ; 3 uses
  %i.qt = getelementptr inbounds nuw i8, ptr %0, i64 1352
  store i16 9, ptr %i.qt, align 8, !tbaa !84
  %i.qu = getelementptr inbounds nuw i8, ptr %0, i64 1354
  store i16 16, ptr %i.qu, align 2, !tbaa !85
  %i.qv = getelementptr inbounds nuw i8, ptr %0, i64 788
  %i.qw = load i8, ptr %i.qv, align 4, !tbaa !12
  switch i8 %i.qw, label %.thread331.tail.thread [
    i8 72, label %bb.jd
    i8 88, label %bb.je
    i8 0, label %bb.jf
  ]

bb.jd:                                            ; preds = %bb.jc
  call void @_ZN6LibRaw18process_Hassy_LensEi(ptr noundef nonnull align 8 dereferenceable(768512) %0, i32 noundef 14)
  %i.qx = getelementptr inbounds nuw i8, ptr %0, i64 1664
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(3) %i.qx, ptr noundef nonnull align 1 dereferenceable(3) @.str.75, i64 3, i1 false) #12
  br label %.thread331.tail.thread

bb.je:                                            ; preds = %bb.jc
  call void @_ZN6LibRaw18process_Hassy_LensEi(ptr noundef nonnull align 8 dereferenceable(768512) %0, i32 noundef 16)
  br label %.thread331.tail.thread

bb.jf:                                            ; preds = %bb.jc
  %i.qy = getelementptr inbounds nuw i8, ptr %0, i64 192696
  %i.qz = load float, ptr %i.qy, align 8, !tbaa !90
  %i.ra = fcmp ogt float %i.qz, 1.000000e+00
  br i1 %i.ra, label %bb.jg, label %.thread331.tail.thread

bb.jg:                                            ; preds = %bb.jf
  %i.rb = getelementptr inbounds nuw i8, ptr %0, i64 192700
  %i.rc = load float, ptr %i.rb, align 4, !tbaa !91 ; 2 uses
  %i.rd = fcmp ogt float %i.rc, 1.000000e+01
  br i1 %i.rd, label %bb.jh, label %.thread331.tail.thread

bb.jh:                                            ; preds = %bb.jg
  %i.re = fptoui float %i.rc to i64               ; 3 uses
  store i64 %i.re, ptr %i.qs, align 8, !tbaa !73
  %i.rf = icmp eq i64 %i.re, 35
  %i.rg = getelementptr inbounds nuw i8, ptr %0, i64 1420 ; 2 uses
  br i1 %i.rf, label %bb.ji, label %bb.jj

bb.ji:                                            ; preds = %bb.jh
  store i16 2, ptr %i.rg, align 4, !tbaa !74
  store i64 1600350750, ptr %i.qs, align 8, !tbaa !73
  br label %.thread331.tail.thread

bb.jj:                                            ; preds = %bb.jh
  store i16 1, ptr %i.rg, align 4, !tbaa !74
  %reass.mul = mul i64 %i.re, 10010
  %i.rh = add i64 %reass.mul, 1600000000
  store i64 %i.rh, ptr %i.qs, align 8, !tbaa !73
  br label %.thread331.tail.thread

.thread331.tail.thread:                           ; preds = %sub_1398, %sub_0397, %bb.jc, %.thread331.tail, %bb.je, %bb.ji, %bb.jj, %bb.jg, %bb.jf, %bb.jd, %bb.iz, %bb.ja
  %i.ri = getelementptr inbounds nuw i8, ptr %0, i64 460 ; 2 uses
  %i.rj = load i8, ptr %i.ri, align 4, !tbaa !12
  %.not203 = icmp eq i8 %i.rj, 0
  br i1 %.not203, label %bb.jm, label %bb.jk

bb.jk:                                            ; preds = %.thread331.tail.thread
  %i.rk = getelementptr inbounds nuw i8, ptr %0, i64 384228 ; 2 uses
  %i.rl = load i32, ptr %i.rk, align 4, !tbaa !92
  %.not204 = icmp eq i32 %i.rl, 0
  br i1 %.not204, label %bb.jl, label %bb.jm

bb.jl:                                            ; preds = %bb.jk
  %i.rm = getelementptr inbounds nuw i8, ptr %0, i64 524
  %i.rn = load i32, ptr %i.rm, align 4, !tbaa !93
  %i.ro = load ptr, ptr %0, align 8, !tbaa !95
  %i.rp = getelementptr inbounds nuw i8, ptr %i.ro, i64 72
  %i.rq = load ptr, ptr %i.rp, align 8
  %i.rr = call noundef i32 %i.rq(ptr noundef nonnull align 8 dereferenceable(768512) %0, i32 noundef %i.rn, ptr noundef nonnull %i.ri, i32 noundef 0)
  store i32 %i.rr, ptr %i.rk, align 4, !tbaa !92
  br label %bb.jm

bb.jm:                                            ; preds = %bb.jl, %bb.jk, %.thread331.tail.thread
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #12
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i64 @strlen(ptr noundef captures(none)) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr writeonly captures(none), ptr readonly captures(none), i64, i1 immarg) #1

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare noundef ptr @strrchr(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare ptr @strcpy(ptr noalias noundef returned writeonly, ptr noalias noundef readonly captures(none)) local_unnamed_addr #5

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i32 @strncmp(ptr noundef captures(none), ptr noundef captures(none), i64 noundef) local_unnamed_addr #3

declare noundef ptr @_ZN6LibRaw10strcasestrEPcPKc(ptr noundef, ptr noundef) local_unnamed_addr #6

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare ptr @strncpy(ptr noalias noundef returned writeonly, ptr noalias noundef readonly captures(none), i64 noundef) local_unnamed_addr #5

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(read)
declare i32 @strncasecmp(ptr noundef captures(none), ptr noundef captures(none), i64 noundef) local_unnamed_addr #7

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @_ZL14limited_strcatPcPKcm(ptr noundef nonnull %0, ptr nofree noundef readonly captures(none) %1, i64 noundef range(i64 8, 65) %2) unnamed_addr #8 {
bb.a:
  %i.a = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %0) #11
  %i.b = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %1) #11
  %i.c = add i64 %i.b, %i.a
  %i.d = icmp ult i64 %i.c, %2
  br i1 %i.d, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.e = tail call ptr @strcat(ptr noundef nonnull dereferenceable(1) %0, ptr noundef nonnull dereferenceable(1) %1) #12 ; 0 uses
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  ret void
}

; Function Attrs: nounwind
declare i64 @__isoc23_strtol(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #9

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare ptr @strcat(ptr noalias noundef returned, ptr noalias noundef readonly captures(none)) local_unnamed_addr #5

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #10

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i16 @llvm.fshl.i16(i16, i16, i16) #10

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #10

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nocallback nofree nounwind willreturn memory(read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #11 = { nounwind willreturn memory(read) }
attributes #12 = { nounwind }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}
!llvm.errno.tbaa = !{!7}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{!"Ubuntu clang version 24.0.0 (++20260816081927+7cb5d896117c-1~exp1~20260816201937.1790)"}
!3 = !{!"Simple C++ TBAA"}
!4 = !{!"omnipotent char", !3, i64 0}
!5 = !{!"int", !4, i64 0}
!6 = !{!"__libc_errno", !5, i64 0}
!7 = !{!6, !5, i64 0}
!8 = !{!"any pointer", !4, i64 0}
!9 = !{!"p1 omnipotent char", !8, i64 0}
!10 = !{!"_ZTS3$_0", !5, i64 0, !9, i64 8}
!11 = !{!10, !9, i64 8}
!12 = !{!4, !4, i64 0}
!13 = !{!"p1 short", !8, i64 0}
!14 = !{!"short", !4, i64 0}
!15 = !{!"double", !4, i64 0}
!16 = !{!"_ZTS20libraw_image_sizes_t", !14, i64 0, !14, i64 2, !14, i64 4, !14, i64 6, !14, i64 8, !14, i64 10, !14, i64 12, !14, i64 14, !5, i64 16, !15, i64 24, !5, i64 32, !4, i64 36, !14, i64 164, !4, i64 166}
!17 = !{!"_ZTS16libraw_iparams_t", !4, i64 0, !4, i64 4, !4, i64 68, !4, i64 132, !4, i64 196, !4, i64 260, !5, i64 324, !5, i64 328, !5, i64 332, !5, i64 336, !5, i64 340, !5, i64 344, !4, i64 348, !4, i64 384, !4, i64 420, !5, i64 428, !9, i64 432}
!18 = !{!"float", !4, i64 0}
!19 = !{!"_ZTS18libraw_nikonlens_t", !18, i64 0, !4, i64 4, !4, i64 5, !4, i64 6, !4, i64 7}
!20 = !{!"_ZTS16libraw_dnglens_t", !18, i64 0, !18, i64 4, !18, i64 8, !18, i64 12}
!21 = !{!"long long", !4, i64 0}
!22 = !{!"_ZTS24libraw_makernotes_lens_t", !21, i64 0, !4, i64 8, !14, i64 136, !14, i64 138, !21, i64 144, !14, i64 152, !14, i64 154, !4, i64 156, !14, i64 220, !4, i64 222, !4, i64 238, !18, i64 256, !18, i64 260, !18, i64 264, !18, i64 268, !18, i64 272, !18, i64 276, !18, i64 280, !18, i64 284, !18, i64 288, !18, i64 292, !18, i64 296, !18, i64 300, !18, i64 304, !18, i64 308, !18, i64 312, !21, i64 320, !4, i64 328, !21, i64 456, !4, i64 464, !21, i64 592, !4, i64 600, !14, i64 728, !18, i64 732}
!23 = !{!"_ZTS17libraw_lensinfo_t", !18, i64 0, !18, i64 4, !18, i64 8, !18, i64 12, !18, i64 16, !4, i64 20, !4, i64 148, !4, i64 276, !4, i64 404, !14, i64 532, !19, i64 536, !20, i64 544, !22, i64 560}
!24 = !{!"_ZTS13libraw_area_t", !14, i64 0, !14, i64 2, !14, i64 4, !14, i64 6}
!25 = !{!"_ZTS25libraw_canon_makernotes_t", !5, i64 0, !5, i64 4, !5, i64 8, !5, i64 12, !4, i64 16, !5, i64 32, !4, i64 36, !14, i64 52, !14, i64 54, !4, i64 56, !14, i64 58, !14, i64 60, !14, i64 62, !14, i64 64, !14, i64 66, !14, i64 68, !14, i64 70, !14, i64 72, !14, i64 74, !14, i64 76, !14, i64 78, !14, i64 80, !14, i64 82, !5, i64 84, !18, i64 88, !14, i64 92, !14, i64 94, !14, i64 96, !14, i64 98, !5, i64 100, !14, i64 104, !5, i64 108, !5, i64 112, !14, i64 116, !5, i64 120, !24, i64 124, !24, i64 132, !24, i64 140, !24, i64 148, !24, i64 156, !4, i64 164}
!26 = !{!"_ZTS30libraw_sensor_highspeed_crop_t", !14, i64 0, !14, i64 2, !14, i64 4, !14, i64 6}
!27 = !{!"_ZTS25libraw_nikon_makernotes_t", !15, i64 0, !14, i64 8, !14, i64 10, !4, i64 12, !4, i64 19, !4, i64 20, !4, i64 21, !4, i64 34, !4, i64 54, !4, i64 58, !4, i64 62, !4, i64 66, !4, i64 67, !4, i64 68, !4, i64 69, !4, i64 70, !4, i64 71, !4, i64 73, !4, i64 74, !4, i64 75, !4, i64 76, !4, i64 77, !4, i64 78, !4, i64 82, !4, i64 86, !14, i64 88, !5, i64 92, !5, i64 96, !5, i64 100, !5, i64 104, !4, i64 112, !4, i64 144, !4, i64 145, !4, i64 146, !5, i64 148, !5, i64 152, !5, i64 156, !4, i64 160, !4, i64 162, !14, i64 170, !26, i64 172, !14, i64 180, !14, i64 182, !14, i64 184, !5, i64 188, !4, i64 192, !4, i64 212, !5, i64 232, !4, i64 236, !5, i64 248, !9, i64 256, !14, i64 264, !14, i64 266, !4, i64 268, !14, i64 270, !15, i64 272, !15, i64 280, !15, i64 288}
!28 = !{!"_ZTS30libraw_hasselblad_makernotes_t", !5, i64 0, !15, i64 8, !4, i64 16, !4, i64 24, !4, i64 88, !5, i64 152, !5, i64 156, !5, i64 160, !5, i64 164, !4, i64 168, !4, i64 200, !5, i64 264, !4, i64 268, !4, i64 276, !4, i64 288}
!29 = !{!"_ZTS18libraw_fuji_info_t", !18, i64 0, !14, i64 4, !14, i64 6, !14, i64 8, !14, i64 10, !14, i64 12, !14, i64 14, !14, i64 16, !14, i64 18, !4, i64 20, !4, i64 53, !18, i64 88, !14, i64 92, !14, i64 94, !4, i64 96, !14, i64 100, !5, i64 104, !5, i64 108, !14, i64 112, !4, i64 114, !14, i64 120, !14, i64 122, !14, i64 124, !14, i64 126, !14, i64 128, !5, i64 132, !14, i64 136, !4, i64 138, !4, i64 151, !4, i64 156, !5, i64 164, !14, i64 168, !5, i64 172, !14, i64 176, !4, i64 178, !4, i64 196, !5, i64 324, !5, i64 328, !5, i64 332, !4, i64 336, !5, i64 344}
!30 = !{!"_ZTS27libraw_olympus_makernotes_t", !4, i64 0, !14, i64 6, !5, i64 8, !5, i64 12, !5, i64 16, !5, i64 20, !5, i64 24, !5, i64 28, !5, i64 32, !5, i64 36, !5, i64 40, !5, i64 44, !5, i64 48, !5, i64 52, !5, i64 56, !5, i64 60, !4, i64 64, !4, i64 72, !14, i64 82, !4, i64 84, !14, i64 88, !14, i64 90, !4, i64 92, !4, i64 352, !14, i64 392, !4, i64 394, !4, i64 396, !4, i64 404, !14, i64 416, !14, i64 418, !14, i64 420, !14, i64 422, !15, i64 424, !4, i64 432, !4, i64 440, !4, i64 448, !5, i64 452, !14, i64 456, !14, i64 458}
!31 = !{!"_ZTS18libraw_sony_info_t", !14, i64 0, !4, i64 2, !4, i64 3, !5, i64 4, !4, i64 8, !5, i64 12, !4, i64 16, !4, i64 17, !14, i64 18, !4, i64 20, !4, i64 24, !4, i64 25, !14, i64 26, !4, i64 28, !4, i64 38, !4, i64 39, !4, i64 40, !14, i64 48, !4, i64 50, !4, i64 51, !4, i64 52, !14, i64 54, !5, i64 56, !14, i64 60, !4, i64 62, !14, i64 66, !14, i64 68, !14, i64 70, !14, i64 72, !14, i64 74, !14, i64 76, !14, i64 78, !5, i64 80, !18, i64 84, !14, i64 88, !5, i64 92, !5, i64 96, !14, i64 100, !4, i64 102, !5, i64 124, !14, i64 128, !5, i64 132, !4, i64 136, !4, i64 137, !14, i64 138, !14, i64 140, !14, i64 142, !14, i64 144, !14, i64 146, !14, i64 148, !14, i64 150, !14, i64 152, !14, i64 154, !5, i64 156, !14, i64 160, !4, i64 162, !18, i64 180}
!32 = !{!"_ZTS25libraw_kodak_makernotes_t", !14, i64 0, !14, i64 2, !14, i64 4, !14, i64 6, !14, i64 8, !14, i64 10, !4, i64 12, !4, i64 48, !4, i64 84, !4, i64 120, !4, i64 156, !4, i64 192, !14, i64 228, !14, i64 230, !14, i64 232, !14, i64 234, !18, i64 236, !18, i64 240}
!33 = !{!"_ZTS29libraw_panasonic_makernotes_t", !14, i64 0, !14, i64 2, !4, i64 4, !5, i64 36, !18, i64 40, !4, i64 44, !14, i64 56, !14, i64 58, !5, i64 60, !5, i64 64}
!34 = !{!"_ZTS26libraw_pentax_makernotes_t", !4, i64 0, !4, i64 4, !4, i64 8, !14, i64 12, !5, i64 16, !5, i64 20, !14, i64 24, !4, i64 26, !14, i64 30, !4, i64 32, !4, i64 33, !14, i64 34}
!35 = !{!"_ZTS22libraw_p1_makernotes_t", !4, i64 0, !4, i64 64, !4, i64 128, !4, i64 384}
!36 = !{!"_ZTS25libraw_ricoh_makernotes_t", !14, i64 0, !4, i64 4, !4, i64 12, !14, i64 20, !5, i64 24, !5, i64 28, !5, i64 32, !5, i64 36, !14, i64 40, !14, i64 42, !14, i64 44, !14, i64 46, !14, i64 48, !14, i64 50, !15, i64 56, !15, i64 64}
!37 = !{!"_ZTS27libraw_samsung_makernotes_t", !4, i64 0, !4, i64 16, !4, i64 32, !4, i64 40, !15, i64 88, !5, i64 96, !4, i64 100}
!38 = !{!"_ZTS24libraw_metadata_common_t", !18, i64 0, !18, i64 4, !18, i64 8, !18, i64 12, !18, i64 16, !18, i64 20, !18, i64 24, !18, i64 28, !18, i64 32, !18, i64 36, !18, i64 40, !18, i64 44, !18, i64 48, !18, i64 52, !18, i64 56, !18, i64 60, !14, i64 64, !4, i64 66, !18, i64 196, !4, i64 200, !5, i64 296}
!39 = !{!"_ZTS19libraw_makernotes_t", !25, i64 0, !27, i64 168, !28, i64 464, !29, i64 848, !30, i64 1200, !31, i64 1664, !32, i64 1848, !33, i64 2092, !34, i64 2160, !35, i64 2196, !36, i64 2648, !37, i64 2720, !38, i64 2856}
!40 = !{!"_ZTS21libraw_shootinginfo_t", !14, i64 0, !14, i64 2, !14, i64 4, !14, i64 6, !14, i64 8, !14, i64 10, !14, i64 12, !4, i64 14, !4, i64 78}
!41 = !{!"_ZTS22libraw_output_params_t", !4, i64 0, !4, i64 16, !4, i64 32, !4, i64 64, !4, i64 112, !18, i64 128, !18, i64 132, !5, i64 136, !5, i64 140, !5, i64 144, !5, i64 148, !5, i64 152, !5, i64 156, !5, i64 160, !9, i64 168, !9, i64 176, !9, i64 184, !9, i64 192, !5, i64 200, !5, i64 204, !5, i64 208, !5, i64 212, !5, i64 216, !5, i64 220, !4, i64 224, !5, i64 240, !5, i64 244, !18, i64 248, !18, i64 252, !5, i64 256, !5, i64 260, !5, i64 264, !5, i64 268, !5, i64 272, !5, i64 276, !5, i64 280, !5, i64 284, !18, i64 288, !18, i64 292, !5, i64 296, !5, i64 300}
!42 = !{!"any p2 pointer", !8, i64 0}
!43 = !{!"p2 omnipotent char", !42, i64 0}
!44 = !{!"_ZTS26libraw_raw_unpack_params_t", !5, i64 0, !5, i64 4, !5, i64 8, !5, i64 12, !5, i64 16, !5, i64 20, !5, i64 24, !18, i64 28, !4, i64 32, !43, i64 40}
!45 = !{!"_ZTS5ph1_t", !5, i64 0, !5, i64 4, !5, i64 8, !5, i64 12, !5, i64 16, !5, i64 20, !5, i64 24, !5, i64 28, !18, i64 32}
!46 = !{!"_ZTS19libraw_dng_levels_t", !5, i64 0, !4, i64 4, !5, i64 16420, !4, i64 16424, !18, i64 32840, !4, i64 32844, !4, i64 32860, !4, i64 32868, !5, i64 32884, !4, i64 32888, !4, i64 32904, !18, i64 32920, !18, i64 32924, !4, i64 32928}
!47 = !{!"_ZTS18libraw_colordata_t", !4, i64 0, !4, i64 131072, !5, i64 147488, !5, i64 147492, !5, i64 147496, !4, i64 147500, !18, i64 147516, !18, i64 147520, !4, i64 147524, !4, i64 147652, !4, i64 147668, !4, i64 147684, !4, i64 147732, !4, i64 147780, !4, i64 147828, !45, i64 147876, !18, i64 147912, !18, i64 147916, !4, i64 147920, !4, i64 147984, !4, i64 148048, !4, i64 148112, !4, i64 148176, !4, i64 148193, !8, i64 148264, !5, i64 148272, !4, i64 148276, !4, i64 148308, !46, i64 148648, !4, i64 181624, !4, i64 185720, !5, i64 187000, !4, i64 187004, !5, i64 187076, !5, i64 187080}
!48 = !{!"long", !4, i64 0}
!49 = !{!"_ZTS17libraw_gps_info_t", !4, i64 0, !4, i64 12, !4, i64 24, !18, i64 36, !4, i64 40, !4, i64 41, !4, i64 42, !4, i64 43, !4, i64 44}
!50 = !{!"_ZTS17libraw_imgother_t", !18, i64 0, !18, i64 4, !18, i64 8, !18, i64 12, !48, i64 16, !5, i64 24, !4, i64 28, !49, i64 156, !4, i64 204, !4, i64 716, !4, i64 780}
!51 = !{!"_ZTS24LibRaw_thumbnail_formats", !4, i64 0}
!52 = !{!"_ZTS18libraw_thumbnail_t", !51, i64 0, !14, i64 4, !14, i64 6, !5, i64 8, !5, i64 12, !9, i64 16}
!53 = !{!"_ZTS23libraw_thumbnail_list_t", !5, i64 0, !4, i64 8}
!54 = !{!"p1 float", !8, i64 0}
!55 = !{!"_ZTS31libraw_internal_output_params_t", !5, i64 0, !5, i64 4, !5, i64 8, !14, i64 12, !14, i64 14}
!56 = !{!"_ZTS16libraw_rawdata_t", !8, i64 0, !13, i64 8, !13, i64 16, !13, i64 24, !54, i64 32, !54, i64 40, !54, i64 48, !13, i64 56, !13, i64 64, !17, i64 72, !16, i64 512, !55, i64 696, !47, i64 712}
!57 = !{!"_ZTS13libraw_data_t", !13, i64 0, !16, i64 8, !17, i64 192, !23, i64 632, !39, i64 1928, !40, i64 5088, !41, i64 5232, !44, i64 5536, !5, i64 5584, !5, i64 5588, !47, i64 5592, !50, i64 192680, !52, i64 193480, !53, i64 193504, !56, i64 193768, !8, i64 381568}
!58 = !{!"p1 _ZTS10LibRaw_TLS", !8, i64 0}
!59 = !{!"p1 _ZTS26LibRaw_abstract_datastream", !8, i64 0}
!60 = !{!"p1 _ZTS8_IO_FILE", !8, i64 0}
!61 = !{!"_ZTS15internal_data_t", !59, i64 0, !60, i64 8, !5, i64 16, !9, i64 24, !21, i64 32, !21, i64 40, !4, i64 48}
!62 = !{!"p1 int", !8, i64 0}
!63 = !{!"_ZTS13output_data_t", !62, i64 0, !62, i64 8}
!64 = !{!"_ZTS15identify_data_t", !5, i64 0, !21, i64 8, !21, i64 16, !5, i64 24, !5, i64 28, !5, i64 32}
!65 = !{!"_ZTS33LibRaw_internal_thumbnail_formats", !4, i64 0}
!66 = !{!"_ZTS12pana8_tags_t", !4, i64 0, !4, i64 24, !14, i64 36, !4, i64 38, !4, i64 46, !4, i64 80, !4, i64 114, !14, i64 148, !14, i64 150, !4, i64 152, !4, i64 192, !4, i64 204, !4, i64 224, !4, i64 234}
!67 = !{!"_ZTS15unpacker_data_t", !14, i64 0, !4, i64 2, !4, i64 10, !5, i64 16, !21, i64 24, !21, i64 32, !21, i64 40, !21, i64 48, !21, i64 56, !21, i64 64, !21, i64 72, !5, i64 80, !5, i64 84, !5, i64 88, !5, i64 92, !65, i64 96, !5, i64 100, !5, i64 104, !5, i64 108, !5, i64 112, !5, i64 116, !5, i64 120, !5, i64 124, !5, i64 128, !5, i64 132, !5, i64 136, !5, i64 140, !21, i64 144, !5, i64 152, !5, i64 156, !5, i64 160, !5, i64 164, !5, i64 168, !5, i64 172, !5, i64 176, !5, i64 180, !5, i64 184, !66, i64 192, !4, i64 440, !5, i64 2488, !5, i64 2492, !14, i64 2496, !14, i64 2498, !5, i64 2500, !5, i64 2504, !5, i64 2508, !5, i64 2512, !5, i64 2516, !5, i64 2520, !5, i64 2524, !4, i64 2528, !14, i64 2608}
!68 = !{!"_ZTS22libraw_internal_data_t", !61, i64 0, !55, i64 64, !63, i64 80, !64, i64 96, !67, i64 136}
!69 = !{!"p1 _ZTS6decode", !8, i64 0}
!70 = !{!"_ZTS13libraw_memmgr", !42, i64 0, !5, i64 8}
!71 = !{!"_ZTS18libraw_callbacks_t", !8, i64 0, !8, i64 8, !8, i64 16, !8, i64 24, !8, i64 32, !8, i64 40, !8, i64 48, !8, i64 56, !8, i64 64, !8, i64 72, !8, i64 80, !8, i64 88, !8, i64 96, !8, i64 104, !8, i64 112, !8, i64 120, !8, i64 128, !8, i64 136, !8, i64 144}
!72 = !{!"_ZTS6LibRaw", !57, i64 8, !58, i64 381584, !68, i64 381592, !4, i64 384344, !69, i64 433496, !69, i64 433504, !4, i64 433512, !70, i64 768232, !71, i64 768248, !4, i64 768400, !4, i64 768416, !4, i64 768432, !8, i64 768448, !8, i64 768456, !8, i64 768464, !48, i64 768472, !8, i64 768480, !8, i64 768488, !8, i64 768496, !8, i64 768504}
!73 = !{!72, !21, i64 1200}
!74 = !{!72, !14, i64 1420}
!75 = distinct !{null}
!76 = !{!72, !14, i64 1336}
!77 = !{!72, !14, i64 1338}
!78 = !{!72, !14, i64 18}
!79 = !{!72, !14, i64 16}
!80 = !{!72, !5, i64 2664}
!81 = !{!72, !5, i64 532}
!82 = !{!5, !5, i64 0}
!83 = !{!15, !15, i64 0}
!84 = !{!72, !14, i64 1352}
!85 = !{!72, !14, i64 1354}
!86 = !{!72, !5, i64 2552}
!87 = !{!72, !5, i64 2560}
!88 = !{!72, !5, i64 2556}
!89 = !{!72, !5, i64 2564}
!90 = !{!72, !18, i64 192696}
!91 = !{!72, !18, i64 192700}
!92 = !{!72, !5, i64 384228}
!93 = !{!72, !5, i64 524}
!94 = !{!"vtable pointer", !3, i64 0}
!95 = !{!94, !94, i64 0}
end_hunk_0
