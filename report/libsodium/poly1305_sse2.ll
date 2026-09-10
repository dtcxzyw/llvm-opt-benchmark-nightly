Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/libsodium/original/poly1305_sse2?download=true
inline.NumInlined: 4
inline.NumDeleted: 3
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 3
begin_hunk_0_@poly1305_blocks:bb.a
  %i.oi = add nuw nsw <2 x i64> %i.og, %i.nv
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %.loopexit
  %.3737 = phi <2 x i64> [ %i.oi, %bb.o ], [ %.2736, %.loopexit ] ; 3 uses
  %.3733 = phi <2 x i64> [ %i.oh, %bb.o ], [ %.2732, %.loopexit ] ; 3 uses
  %.3729 = phi <2 x i64> [ %i.oc, %bb.o ], [ %.2728, %.loopexit ] ; 3 uses
  %.3725 = phi <2 x i64> [ %i.of, %bb.o ], [ %.2724, %.loopexit ] ; 3 uses
  %.3 = phi <2 x i64> [ %i.od, %bb.o ], [ %.2721, %.loopexit ] ; 3 uses
  %.not756 = icmp eq ptr %.2, null
  br i1 %.not756, label %bb.r, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.oj = bitcast <2 x i64> %.3 to <4 x i32>
  %i.ok = shufflevector <4 x i32> %i.oj, <4 x i32> poison, <4 x i32> <i32 0, i32 2, i32 poison, i32 poison>
  %i.ol = bitcast <4 x i32> %i.ok to <2 x i64>
  %i.om = bitcast <2 x i64> %.3725 to <4 x i32>
  %i.on = shufflevector <4 x i32> %i.om, <4 x i32> poison, <4 x i32> <i32 0, i32 2, i32 poison, i32 poison>
  %i.oo = bitcast <4 x i32> %i.on to <2 x i64>
  %i.op = bitcast <2 x i64> %.3729 to <4 x i32>
  %i.oq = shufflevector <4 x i32> %i.op, <4 x i32> poison, <4 x i32> <i32 0, i32 2, i32 poison, i32 poison>
  %i.or = bitcast <4 x i32> %i.oq to <2 x i64>
  %i.os = bitcast <2 x i64> %.3733 to <4 x i32>
  %i.ot = shufflevector <4 x i32> %i.os, <4 x i32> poison, <4 x i32> <i32 0, i32 2, i32 poison, i32 poison>
  %i.ou = bitcast <4 x i32> %i.ot to <2 x i64>
  %i.ov = bitcast <2 x i64> %.3737 to <4 x i32>
  %i.ow = shufflevector <4 x i32> %i.ov, <4 x i32> poison, <4 x i32> <i32 0, i32 2, i32 poison, i32 poison>
  %i.ox = bitcast <4 x i32> %i.ow to <2 x i64>
  %i.oy = shufflevector <2 x i64> %i.ol, <2 x i64> %i.oo, <2 x i32> <i32 0, i32 2>
  %i.oz = shufflevector <2 x i64> %i.or, <2 x i64> %i.ou, <2 x i32> <i32 0, i32 2>
  store <2 x i64> %i.oy, ptr %0, align 8
  %i.pa = getelementptr i8, ptr %0, i64 16
  store <2 x i64> %i.oz, ptr %i.pa, align 8
  %i.pb = getelementptr i8, ptr %0, i64 32
  %i.pc = extractelement <2 x i64> %i.ox, i64 0
  store i64 %i.pc, ptr %i.pb, align 8
  br label %bb.s

bb.r:                                             ; preds = %bb.p
  %i.pd = shufflevector <2 x i64> %.3, <2 x i64> poison, <2 x i32> <i32 1, i32 poison>
  %i.pe = add <2 x i64> %.3, %i.pd
  %i.pf = shufflevector <2 x i64> %.3725, <2 x i64> poison, <2 x i32> <i32 1, i32 poison>
  %i.pg = add <2 x i64> %.3725, %i.pf
  %i.ph = shufflevector <2 x i64> %.3729, <2 x i64> poison, <2 x i32> <i32 1, i32 poison>
  %i.pi = add <2 x i64> %.3729, %i.ph
  %i.pj = shufflevector <2 x i64> %.3733, <2 x i64> poison, <2 x i32> <i32 1, i32 poison>
  %i.pk = add <2 x i64> %.3733, %i.pj
  %i.pl = shufflevector <2 x i64> %.3737, <2 x i64> poison, <2 x i32> <i32 1, i32 poison>
  %i.pm = add <2 x i64> %.3737, %i.pl
  %i.pn = bitcast <2 x i64> %i.pe to <4 x i32>
  %i.po = extractelement <4 x i32> %i.pn, i64 0   ; 2 uses
  %i.pp = lshr i32 %i.po, 26
  %i.pq = and i32 %i.po, 67108863
  %i.pr = bitcast <2 x i64> %i.pg to <4 x i32>
  %i.ps = extractelement <4 x i32> %i.pr, i64 0
  %i.pt = add i32 %i.pp, %i.ps                    ; 2 uses
  %i.pu = lshr i32 %i.pt, 26
  %i.pv = and i32 %i.pt, 67108863
  %i.pw = bitcast <2 x i64> %i.pi to <4 x i32>
  %i.px = extractelement <4 x i32> %i.pw, i64 0
  %i.py = add i32 %i.pu, %i.px                    ; 2 uses
  %i.pz = lshr i32 %i.py, 26
  %i.qa = and i32 %i.py, 67108863
  %i.qb = bitcast <2 x i64> %i.pk to <4 x i32>
  %i.qc = extractelement <4 x i32> %i.qb, i64 0
  %i.qd = add i32 %i.pz, %i.qc                    ; 2 uses
  %i.qe = lshr i32 %i.qd, 26
  %i.qf = and i32 %i.qd, 67108863
  %i.qg = bitcast <2 x i64> %i.pm to <4 x i32>
  %i.qh = extractelement <4 x i32> %i.qg, i64 0
  %i.qi = add i32 %i.qe, %i.qh
  %i.qj = zext nneg i32 %i.pq to i64
  %i.qk = zext nneg i32 %i.pv to i64              ; 2 uses
  %i.ql = shl nuw nsw i64 %i.qk, 26
  %.masked = and i64 %i.ql, 17592118935552
  %i.qm = or disjoint i64 %.masked, %i.qj
  %i.qn = lshr i64 %i.qk, 18
  %i.qo = zext nneg i32 %i.qa to i64
  %i.qp = shl nuw nsw i64 %i.qo, 8
  %i.qq = or disjoint i64 %i.qp, %i.qn
  %i.qr = zext nneg i32 %i.qf to i64              ; 2 uses
  %i.qs = shl nuw nsw i64 %i.qr, 34
  %.masked757 = and i64 %i.qs, 17575006175232
  %i.qt = or disjoint i64 %i.qq, %.masked757
  %i.qu = lshr i64 %i.qr, 10
  %i.qv = zext i32 %i.qi to i64                   ; 2 uses
  %i.qw = shl nuw nsw i64 %i.qv, 16
  %i.qx = lshr i64 %i.qv, 26
  %.masked758 = and i64 %i.qw, 4398046445568
  %i.qy = or disjoint i64 %.masked758, %i.qu
  %i.qz = mul nuw nsw i64 %i.qx, 5
  %i.ra = add nuw nsw i64 %i.qz, %i.qm            ; 2 uses
  %i.rb = lshr i64 %i.ra, 44
  %i.rc = and i64 %i.ra, 17592186044415
  %i.rd = add nuw nsw i64 %i.qt, %i.rb            ; 2 uses
  %i.re = lshr i64 %i.rd, 44
  %i.rf = and i64 %i.rd, 17592186044415
  %i.rg = add nuw nsw i64 %i.re, %i.qy            ; 3 uses
  %i.rh = lshr i64 %i.rg, 42
  %i.ri = and i64 %i.rg, 4398046511103
  %i.rj = mul nuw nsw i64 %i.rh, 5
  %i.rk = add nuw nsw i64 %i.rj, %i.rc            ; 2 uses
  %i.rl = lshr i64 %i.rk, 44
  %i.rm = and i64 %i.rk, 17592186044415           ; 2 uses
  %i.rn = add nuw nsw i64 %i.rl, %i.rf            ; 2 uses
  %i.ro = add nuw nsw i64 %i.rm, 5                ; 2 uses
  %i.rp = lshr i64 %i.ro, 44
  %i.rq = add nuw nsw i64 %i.rp, %i.rn            ; 2 uses
  %i.rr = lshr i64 %i.rq, 44
  %i.rs = or i64 %i.rg, -4398046511104
  %i.rt = add nsw i64 %i.rs, %i.rr                ; 2 uses
  %i.ru = load volatile i64, ptr @optblocker_u64, align 8
  %i.rv = lshr i64 %i.rt, 63
  %i.rw = lshr i64 %i.ru, 2
  %i.rx = xor i64 %i.rw, %i.rv                    ; 2 uses
  %i.ry = add nsw i64 %i.rx, -1                   ; 2 uses
  %i.rz = sub nsw i64 0, %i.rx                    ; 3 uses
  %i.sa = and i64 %i.rm, %i.rz
  %i.sb = and i64 %i.ry, 17592186044415           ; 2 uses
  %i.sc = and i64 %i.sb, %i.ro
  %i.sd = or i64 %i.sa, %i.sc
  %i.se = and i64 %i.rn, %i.rz
  %i.sf = and i64 %i.sb, %i.rq
  %i.sg = or i64 %i.se, %i.sf
  %i.sh = and i64 %i.ri, %i.rz
  %i.si = and i64 %i.ry, %i.rt
  %i.sj = or i64 %i.si, %i.sh
  store i64 %i.sd, ptr %0, align 8
  %i.sk = getelementptr i8, ptr %0, i64 8
  store i64 %i.sg, ptr %i.sk, align 8
  %i.sl = getelementptr i8, ptr %0, i64 16
  store i64 %i.sj, ptr %i.sl, align 8
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %bb.q
  ret void
}

; Function Attrs: noinline nounwind ssp uwtable
define internal fastcc void @poly1305_finish_ext(ptr noundef %0, ptr nofree noundef readonly captures(none) %1, i64 noundef %2, ptr noundef %3) unnamed_addr #6 {
bb.a:
  %i.a = alloca [32 x i8], align 16               ; 8 uses
  %.not = icmp eq i64 %2, 0
  br i1 %.not, label %bb.n, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #12
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %i.a, i8 0, i64 32, i1 false)
  %i.b = and i64 %2, 16
  %.not.i = icmp eq i64 %i.b, 0
  br i1 %.not.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.c = load <2 x i64>, ptr %1, align 1
  store <2 x i64> %i.c, ptr %i.a, align 16
  %i.d = getelementptr i8, ptr %1, i64 16
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.022.i = phi ptr [ %i.d, %bb.c ], [ %1, %bb.b ] ; 3 uses
  %.neg = phi i64 [ 16, %bb.c ], [ 32, %bb.b ]
  %i.f = phi i64 [ 16, %bb.c ], [ 0, %bb.b ]      ; 2 uses
  %.0.i = phi ptr [ %i.e, %bb.c ], [ %i.a, %bb.b ] ; 3 uses
  %i.g = and i64 %2, 8
  %.not26.i = icmp eq i64 %i.g, 0
  br i1 %.not26.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.h = call ptr @__memcpy_chk(ptr noundef nonnull %.0.i, ptr noundef nonnull %.022.i, i64 noundef 8, i64 noundef %.neg) #12, !alias.scope !20 ; 0 uses
  %i.i = getelementptr i8, ptr %.022.i, i64 8
  %i.j = or disjoint i64 %i.f, 8
  %i.k = getelementptr i8, ptr %.0.i, i64 8
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %.123.i = phi ptr [ %i.i, %bb.e ], [ %.022.i, %bb.d ] ; 3 uses
  %i.l = phi i64 [ %i.j, %bb.e ], [ %i.f, %bb.d ] ; 3 uses
  %.1.i = phi ptr [ %i.k, %bb.e ], [ %.0.i, %bb.d ] ; 3 uses
  %i.m = and i64 %2, 4
  %.not27.i = icmp eq i64 %i.m, 0
  br i1 %.not27.i, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.n = sub nuw nsw i64 32, %i.l
  %i.o = call ptr @__memcpy_chk(ptr noundef nonnull %.1.i, ptr noundef nonnull %.123.i, i64 noundef 4, i64 noundef %i.n) #12, !alias.scope !21 ; 0 uses
  %i.p = getelementptr i8, ptr %.123.i, i64 4
  %i.q = add nuw nsw i64 %i.l, 4
  %i.r = getelementptr i8, ptr %.1.i, i64 4
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %.224.i = phi ptr [ %i.p, %bb.g ], [ %.123.i, %bb.f ] ; 3 uses
  %i.s = phi i64 [ %i.q, %bb.g ], [ %i.l, %bb.f ]
  %.2.i = phi ptr [ %i.r, %bb.g ], [ %.1.i, %bb.f ] ; 3 uses
  %i.t = and i64 %2, 2
  %.not28.i = icmp eq i64 %i.t, 0
  br i1 %.not28.i, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %4 = call i64 @llvm.usub.sat.i64(i64 32, i64 %i.s)
  %i.u = call ptr @__memcpy_chk(ptr noundef nonnull %.2.i, ptr noundef nonnull %.224.i, i64 noundef 2, i64 noundef %4) #12, !alias.scope !22 ; 0 uses
  %i.v = getelementptr i8, ptr %.224.i, i64 2
  %i.w = getelementptr i8, ptr %.2.i, i64 2
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %.325.i = phi ptr [ %i.v, %bb.i ], [ %.224.i, %bb.h ]
  %.3.i = phi ptr [ %i.w, %bb.i ], [ %.2.i, %bb.h ]
  %i.x = and i64 %2, 1
  %.not29.i = icmp eq i64 %i.x, 0
  br i1 %.not29.i, label %poly1305_block_copy31.exit, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.y = load i8, ptr %.325.i, align 1
  store i8 %i.y, ptr %.3.i, align 1
  br label %poly1305_block_copy31.exit

poly1305_block_copy31.exit:                       ; preds = %bb.j, %bb.k
  %.not31 = icmp eq i64 %2, 16
  br i1 %.not31, label %bb.m, label %bb.l

bb.l:                                             ; preds = %poly1305_block_copy31.exit
  %i.z = getelementptr i8, ptr %i.a, i64 %2
  store i8 1, ptr %i.z, align 1
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %poly1305_block_copy31.exit
  %i.aa = icmp ugt i64 %2, 15
  %i.ab = select i1 %i.aa, i64 4, i64 8
  %i.ac = getelementptr i8, ptr %0, i64 120       ; 2 uses
  %i.ad = load i64, ptr %i.ac, align 8
  %i.ae = or i64 %i.ad, %i.ab
  store i64 %i.ae, ptr %i.ac, align 8
  call fastcc void @poly1305_blocks(ptr noundef %0, ptr noundef nonnull %i.a, i64 noundef 32)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #12
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.a
  %i.af = getelementptr i8, ptr %0, i64 120       ; 2 uses
  %i.ag = load i64, ptr %i.af, align 8            ; 2 uses
  %i.ah = and i64 %i.ag, 1
  %.not32 = icmp eq i64 %i.ah, 0
  br i1 %.not32, label %bb.p, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.ai = add i64 %2, -17
  %or.cond = icmp ult i64 %i.ai, -16
  %storemerge.v = select i1 %or.cond, i64 16, i64 32
  %storemerge = or i64 %i.ag, %storemerge.v
  store i64 %storemerge, ptr %i.af, align 8
  call fastcc void @poly1305_blocks(ptr noundef nonnull %0, ptr noundef null, i64 noundef 32)
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.n
  %i.aj = load i64, ptr %0, align 8
  %i.ak = getelementptr i8, ptr %0, i64 8
  %i.al = load i64, ptr %i.ak, align 8            ; 2 uses
  %i.am = getelementptr i8, ptr %0, i64 16
  %i.an = load i64, ptr %i.am, align 8
  %i.ao = shl i64 %i.al, 44
  %i.ap = or i64 %i.ao, %i.aj
  %i.aq = lshr i64 %i.al, 20
  %i.ar = shl i64 %i.an, 24
  %i.as = or i64 %i.ar, %i.aq
  %i.at = getelementptr i8, ptr %0, i64 104
  %i.au = load i64, ptr %i.at, align 8
  %i.av = getelementptr i8, ptr %0, i64 112
  %i.aw = load i64, ptr %i.av, align 8
  %i.ax = call { i64, i64 } asm sideeffect "addq $2, $0 ;\0Aadcq $3, $1 ;\0A", "=r,=r,r,r,0,1,~{flags},~{cc},~{dirflag},~{fpsr},~{flags}"(i64 %i.au, i64 %i.aw, i64 %i.ap, i64 %i.as) #12, !srcloc !23 ; 2 uses
  %i.ay = extractvalue { i64, i64 } %i.ax, 0
  %i.az = extractvalue { i64, i64 } %i.ax, 1
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(128) %0, i8 0, i64 128, i1 false)
  store i64 %i.ay, ptr %3, align 1
  %i.ba = getelementptr i8, ptr %3, i64 8
  store i64 %i.az, ptr %i.ba, align 1
  call void @sodium_memzero(ptr noundef nonnull %0, i64 noundef 168) #12
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #3

; Function Attrs: nocallback nofree nosync nounwind memory(argmem: readwrite)
declare ptr @__memcpy_chk(ptr noalias noundef writeonly, ptr noalias noundef readonly captures(none), i64 noundef, i64 noundef) local_unnamed_addr #7

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #8

declare void @sodium_memzero(ptr noundef, i64 noundef) local_unnamed_addr #9

declare i32 @crypto_verify_16(ptr noundef, ptr noundef) local_unnamed_addr #9

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x i64> @llvm.fshl.v2i64(<2 x i64>, <2 x i64>, <2 x i64>) #10

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.usub.sat.i64(i64, i64) #10

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #10

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.fshl.i64(i64, i64, i64) #10

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #11

attributes #0 = { nounwind ssp uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nofree norecurse nosync nounwind ssp memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nofree norecurse nosync nounwind ssp memory(readwrite, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #4 = { nofree noinline norecurse nosync nounwind ssp memory(argmem: readwrite) uwtable "min-legal-vector-width"="128" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nofree noinline norecurse nosync nounwind ssp memory(readwrite, target_mem: none) uwtable "min-legal-vector-width"="128" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { noinline nounwind ssp uwtable "min-legal-vector-width"="128" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nocallback nofree nosync nounwind memory(argmem: readwrite) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #9 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #11 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #12 = { nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"PIE Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 2}
!3 = !{!"Ubuntu clang version 24.0.0 (++20260903081701+7ece48b9e5bb-1~exp1~20260903201841.1826)"}
!4 = !{!"llvm.loop.mustprogress"}
!5 = distinct !{!5, !4}
!6 = distinct !{!6, !9}
!7 = distinct !{!7, !4}
!8 = distinct !{!8, !9}
!9 = !{!"llvm.loop.unroll.disable"}
!10 = distinct !{!10, !4}
!11 = distinct !{!11, !"memcpy.inline"}
!12 = distinct !{!12, !11, !"memcpy.inline: argument 1"}
!13 = distinct !{!13, !11, !"memcpy.inline: argument 0"}
!14 = distinct !{!14, !"memcpy.inline"}
!15 = distinct !{!15, !14, !"memcpy.inline: argument 1"}
!16 = distinct !{!16, !14, !"memcpy.inline: argument 0"}
!17 = distinct !{!17, !"memcpy.inline"}
!18 = distinct !{!18, !17, !"memcpy.inline: argument 1"}
!19 = distinct !{!19, !17, !"memcpy.inline: argument 0"}
!20 = !{!13, !12}
!21 = !{!16, !15}
!22 = !{!19, !18}
!23 = !{i64 27982, i64 28009}
end_hunk_0
