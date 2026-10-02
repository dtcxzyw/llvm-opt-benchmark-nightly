Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/gimli-rs/original/gimli-3e7b4f451eed5746.gimli.d2cf5f70e100ae54-cgu.03?download=true
inline.NumInlined: 8
inline.NumDeleted: 8
begin_hunk_0_@_RNvXNtCsi68uqYEhoRA_5gimli4readNtB2_5ErrorNtNtCskKLDkoKarTP_4core3fmt7Display3fmt:bb.a
  %i.pa = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.pb = load ptr, ptr %i.pa, align 8, !nonnull !5, !align !6, !noundef !5
  %i.pc = getelementptr inbounds nuw i8, ptr %i.pb, i64 24
  %i.pd = load ptr, ptr %i.pc, align 8, !invariant.load !5, !nonnull !5
  %i.pe = tail call noundef zeroext i1 %i.pd(ptr noundef nonnull %i.oz, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @38, i64 noundef 30) #4
  br label %bb.aj

bb.bj:                                            ; preds = %bb.a
  %i.pf = load ptr, ptr %1, align 8, !nonnull !5, !noundef !5
  %i.pg = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.ph = load ptr, ptr %i.pg, align 8, !nonnull !5, !align !6, !noundef !5
  %i.pi = getelementptr inbounds nuw i8, ptr %i.ph, i64 24
  %i.pj = load ptr, ptr %i.pi, align 8, !invariant.load !5, !nonnull !5
  %i.pk = tail call noundef zeroext i1 %i.pj(ptr noundef nonnull %i.pf, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @39, i64 noundef 39) #4
  br label %bb.aj

bb.bk:                                            ; preds = %bb.a
  %i.pl = load ptr, ptr %1, align 8, !nonnull !5, !noundef !5
  %i.pm = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.pn = load ptr, ptr %i.pm, align 8, !nonnull !5, !align !6, !noundef !5
  %i.po = getelementptr inbounds nuw i8, ptr %i.pn, i64 24
  %i.pp = load ptr, ptr %i.po, align 8, !invariant.load !5, !nonnull !5
  %i.pq = tail call noundef zeroext i1 %i.pp(ptr noundef nonnull %i.pl, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @40, i64 noundef 24) #4
  br label %bb.aj

bb.bl:                                            ; preds = %bb.a
  %i.pr = load ptr, ptr %1, align 8, !nonnull !5, !noundef !5
  %i.ps = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.pt = load ptr, ptr %i.ps, align 8, !nonnull !5, !align !6, !noundef !5
  %i.pu = getelementptr inbounds nuw i8, ptr %i.pt, i64 24
  %i.pv = load ptr, ptr %i.pu, align 8, !invariant.load !5, !nonnull !5
  %i.pw = tail call noundef zeroext i1 %i.pv(ptr noundef nonnull %i.pr, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @41, i64 noundef 20) #4
  br label %bb.aj

bb.bm:                                            ; preds = %bb.a
  %i.px = load ptr, ptr %1, align 8, !nonnull !5, !noundef !5
  %i.py = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.pz = load ptr, ptr %i.py, align 8, !nonnull !5, !align !6, !noundef !5
  %i.qa = getelementptr inbounds nuw i8, ptr %i.pz, i64 24
  %i.qb = load ptr, ptr %i.qa, align 8, !invariant.load !5, !nonnull !5
  %i.qc = tail call noundef zeroext i1 %i.qb(ptr noundef nonnull %i.px, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @46, i64 noundef 16) #4
  br label %bb.aj

bb.bn:                                            ; preds = %bb.a
  %i.qd = load ptr, ptr %1, align 8, !nonnull !5, !noundef !5
  %i.qe = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.qf = load ptr, ptr %i.qe, align 8, !nonnull !5, !align !6, !noundef !5
  %i.qg = getelementptr inbounds nuw i8, ptr %i.qf, i64 24
  %i.qh = load ptr, ptr %i.qg, align 8, !invariant.load !5, !nonnull !5
  %i.qi = tail call noundef zeroext i1 %i.qh(ptr noundef nonnull %i.qd, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @47, i64 noundef 42) #4
  br label %bb.aj

bb.bo:                                            ; preds = %bb.a
  %i.qj = load ptr, ptr %1, align 8, !nonnull !5, !noundef !5
  %i.qk = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.ql = load ptr, ptr %i.qk, align 8, !nonnull !5, !align !6, !noundef !5
  %i.qm = getelementptr inbounds nuw i8, ptr %i.ql, i64 24
  %i.qn = load ptr, ptr %i.qm, align 8, !invariant.load !5, !nonnull !5
  %i.qo = tail call noundef zeroext i1 %i.qn(ptr noundef nonnull %i.qj, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @48, i64 noundef 41) #4
  br label %bb.aj

bb.bp:                                            ; preds = %bb.a
  %i.qp = load ptr, ptr %1, align 8, !nonnull !5, !noundef !5
  %i.qq = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.qr = load ptr, ptr %i.qq, align 8, !nonnull !5, !align !6, !noundef !5
  %i.qs = getelementptr inbounds nuw i8, ptr %i.qr, i64 24
  %i.qt = load ptr, ptr %i.qs, align 8, !invariant.load !5, !nonnull !5
  %i.qu = tail call noundef zeroext i1 %i.qt(ptr noundef nonnull %i.qp, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @49, i64 noundef 26) #4
  br label %bb.aj

bb.bq:                                            ; preds = %bb.a
  %i.qv = load ptr, ptr %1, align 8, !nonnull !5, !noundef !5
  %i.qw = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.qx = load ptr, ptr %i.qw, align 8, !nonnull !5, !align !6, !noundef !5
  %i.qy = getelementptr inbounds nuw i8, ptr %i.qx, i64 24
  %i.qz = load ptr, ptr %i.qy, align 8, !invariant.load !5, !nonnull !5
  %i.ra = tail call noundef zeroext i1 %i.qz(ptr noundef nonnull %i.qv, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @50, i64 noundef 15) #4
  br label %bb.aj

bb.br:                                            ; preds = %bb.a
  %i.rb = load ptr, ptr %1, align 8, !nonnull !5, !noundef !5
  %i.rc = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.rd = load ptr, ptr %i.rc, align 8, !nonnull !5, !align !6, !noundef !5
  %i.re = getelementptr inbounds nuw i8, ptr %i.rd, i64 24
  %i.rf = load ptr, ptr %i.re, align 8, !invariant.load !5, !nonnull !5
  %i.rg = tail call noundef zeroext i1 %i.rf(ptr noundef nonnull %i.rb, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @54, i64 noundef 24) #4
  br label %bb.aj

bb.bs:                                            ; preds = %bb.a
  %i.rh = load ptr, ptr %1, align 8, !nonnull !5, !noundef !5
  %i.ri = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.rj = load ptr, ptr %i.ri, align 8, !nonnull !5, !align !6, !noundef !5
  %i.rk = getelementptr inbounds nuw i8, ptr %i.rj, i64 24
  %i.rl = load ptr, ptr %i.rk, align 8, !invariant.load !5, !nonnull !5
  %i.rm = tail call noundef zeroext i1 %i.rl(ptr noundef nonnull %i.rh, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @56, i64 noundef 28) #4
  br label %bb.aj

bb.bt:                                            ; preds = %bb.a
  %i.rn = load ptr, ptr %1, align 8, !nonnull !5, !noundef !5
  %i.ro = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.rp = load ptr, ptr %i.ro, align 8, !nonnull !5, !align !6, !noundef !5
  %i.rq = getelementptr inbounds nuw i8, ptr %i.rp, i64 24
  %i.rr = load ptr, ptr %i.rq, align 8, !invariant.load !5, !nonnull !5
  %i.rs = tail call noundef zeroext i1 %i.rr(ptr noundef nonnull %i.rn, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @58, i64 noundef 27) #4
  br label %bb.aj

bb.bu:                                            ; preds = %bb.a
  %i.rt = load ptr, ptr %1, align 8, !nonnull !5, !noundef !5
  %i.ru = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.rv = load ptr, ptr %i.ru, align 8, !nonnull !5, !align !6, !noundef !5
  %i.rw = getelementptr inbounds nuw i8, ptr %i.rv, i64 24
  %i.rx = load ptr, ptr %i.rw, align 8, !invariant.load !5, !nonnull !5
  %i.ry = tail call noundef zeroext i1 %i.rx(ptr noundef nonnull %i.rt, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @59, i64 noundef 18) #4
  br label %bb.aj

bb.bv:                                            ; preds = %bb.a
  %i.rz = load ptr, ptr %1, align 8, !nonnull !5, !noundef !5
  %i.sa = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.sb = load ptr, ptr %i.sa, align 8, !nonnull !5, !align !6, !noundef !5
  %i.sc = getelementptr inbounds nuw i8, ptr %i.sb, i64 24
  %i.sd = load ptr, ptr %i.sc, align 8, !invariant.load !5, !nonnull !5
  %i.se = tail call noundef zeroext i1 %i.sd(ptr noundef nonnull %i.rz, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @62, i64 noundef 16) #4
  br label %bb.aj

bb.bw:                                            ; preds = %bb.a
  %i.sf = load ptr, ptr %1, align 8, !nonnull !5, !noundef !5
  %i.sg = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.sh = load ptr, ptr %i.sg, align 8, !nonnull !5, !align !6, !noundef !5
  %i.si = getelementptr inbounds nuw i8, ptr %i.sh, i64 24
  %i.sj = load ptr, ptr %i.si, align 8, !invariant.load !5, !nonnull !5
  %i.sk = tail call noundef zeroext i1 %i.sj(ptr noundef nonnull %i.sf, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @63, i64 noundef 30) #4
  br label %bb.aj

bb.bx:                                            ; preds = %bb.a
  %i.sl = load ptr, ptr %1, align 8, !nonnull !5, !noundef !5
  %i.sm = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.sn = load ptr, ptr %i.sm, align 8, !nonnull !5, !align !6, !noundef !5
  %i.so = getelementptr inbounds nuw i8, ptr %i.sn, i64 24
  %i.sp = load ptr, ptr %i.so, align 8, !invariant.load !5, !nonnull !5
  %i.sq = tail call noundef zeroext i1 %i.sp(ptr noundef nonnull %i.sl, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @65, i64 noundef 30) #4
  br label %bb.aj

bb.by:                                            ; preds = %bb.a
  %i.sr = load ptr, ptr %1, align 8, !nonnull !5, !noundef !5
  %i.ss = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.st = load ptr, ptr %i.ss, align 8, !nonnull !5, !align !6, !noundef !5
  %i.su = getelementptr inbounds nuw i8, ptr %i.st, i64 24
  %i.sv = load ptr, ptr %i.su, align 8, !invariant.load !5, !nonnull !5
  %i.sw = tail call noundef zeroext i1 %i.sv(ptr noundef nonnull %i.sr, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @66, i64 noundef 33) #4
  br label %bb.aj

bb.bz:                                            ; preds = %bb.a
  %i.sx = load ptr, ptr %1, align 8, !nonnull !5, !noundef !5
  %i.sy = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.sz = load ptr, ptr %i.sy, align 8, !nonnull !5, !align !6, !noundef !5
  %i.ta = getelementptr inbounds nuw i8, ptr %i.sz, i64 24
  %i.tb = load ptr, ptr %i.ta, align 8, !invariant.load !5, !nonnull !5
  %i.tc = tail call noundef zeroext i1 %i.tb(ptr noundef nonnull %i.sx, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @67, i64 noundef 55) #4
  br label %bb.aj

bb.ca:                                            ; preds = %bb.a
  %i.td = load ptr, ptr %1, align 8, !nonnull !5, !noundef !5
  %i.te = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.tf = load ptr, ptr %i.te, align 8, !nonnull !5, !align !6, !noundef !5
  %i.tg = getelementptr inbounds nuw i8, ptr %i.tf, i64 24
  %i.th = load ptr, ptr %i.tg, align 8, !invariant.load !5, !nonnull !5
  %i.ti = tail call noundef zeroext i1 %i.th(ptr noundef nonnull %i.td, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @75, i64 noundef 39) #4
  br label %bb.aj
}

; Function Attrs: nonlazybind uwtable
define void @_RNvXs0_NtCsi68uqYEhoRA_5gimli4readNtB5_5ErrorINtNtCskKLDkoKarTP_4core7convert4FromNtNtNtBM_2io5error5ErrorE4from(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([16 x i8]) align 8 captures(none) dereferenceable(16) initializes((0, 1)) %0, ptr noundef nonnull %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 4 uses
  store i8 0, ptr %0, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.b = ptrtoint ptr %1 to i64                   ; 2 uses
  %i.c = and i64 %i.b, 3
  switch i64 %i.c, label %default.unreachable [
    i64 2, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsi68uqYEhoRA_5gimli.exit
    i64 3, label %bb.b
    i64 0, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsi68uqYEhoRA_5gimli.exit
    i64 1, label %bb.c
  ], !prof !9

default.unreachable:                              ; preds = %bb.a
  unreachable

bb.b:                                             ; preds = %bb.a
  %i.d = icmp ult ptr %1, inttoptr (i64 188978561024 to ptr)
  %i.e = and i64 %i.b, 1095216660480
  %i.f = icmp ne i64 %i.e, 1095216660480
  tail call void @llvm.assume(i1 %i.d)
  tail call void @llvm.assume(i1 %i.f)
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsi68uqYEhoRA_5gimli.exit

bb.c:                                             ; preds = %bb.a
  %i.g = getelementptr i8, ptr %1, i64 -1         ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.g) ]
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  store ptr %i.g, ptr %i.h, align 8, !alias.scope !13
  store i8 3, ptr %i.a, align 8, !alias.scope !13
  call void @_RNvXsd_NtNtCskKLDkoKarTP_4core2io5errorNtB5_11CustomOwnerNtNtNtB9_3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.h)
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsi68uqYEhoRA_5gimli.exit

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsi68uqYEhoRA_5gimli.exit: ; preds = %bb.a, %bb.a, %bb.b, %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret void
}

; Function Attrs: nonlazybind uwtable
declare void @_RNvXsd_NtNtCskKLDkoKarTP_4core2io5errorNtB5_11CustomOwnerNtNtNtB9_3ops4drop4Drop4drop(ptr noalias nofree noundef align 8 dereferenceable(8)) unnamed_addr #0

; Function Attrs: nounwind nonlazybind uwtable
declare noundef range(i32 0, 10) i32 @rust_eh_personality(i32 noundef, i32 noundef, i64 noundef, ptr noundef, ptr noundef) unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #3

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvNtCskKLDkoKarTP_4core3fmt5write(ptr noundef nonnull, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(48), ptr noundef nonnull, ptr noundef nonnull) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvXse_NtNtCskKLDkoKarTP_4core3fmt3numhNtB7_8LowerHex3fmt(ptr noalias nofree noundef readonly captures(address, read_provenance) dereferenceable(1), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvXsm_NtNtCskKLDkoKarTP_4core3fmt3numtNtB7_8LowerHex3fmt(ptr noalias nofree noundef readonly align 2 captures(address, read_provenance) dereferenceable(2), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvXsd_NtNtNtCskKLDkoKarTP_4core3fmt3num3impyNtB9_7Display3fmt(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvXsu_NtNtCskKLDkoKarTP_4core3fmt3nummNtB7_8LowerHex3fmt(ptr noalias nofree noundef readonly align 4 captures(address, read_provenance) dereferenceable(4), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvXNtNtNtCskKLDkoKarTP_4core3fmt3num3imphNtB6_7Display3fmt(ptr noalias nofree noundef readonly captures(address, read_provenance) dereferenceable(1), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvXsC_NtNtCskKLDkoKarTP_4core3fmt3numyNtB7_8LowerHex3fmt(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvXs8_NtNtNtCskKLDkoKarTP_4core3fmt3num3impmNtB9_7Display3fmt(ptr noalias nofree noundef readonly align 4 captures(address, read_provenance) dereferenceable(4), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

attributes #0 = { nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #1 = { nounwind nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #3 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #4 = { inlinehint }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 2, !"RtLibUseGOT", i32 1}
!2 = !{i32 7, !"uwtable", i32 2}
!3 = !{!"rustc version 1.100.0-nightly (bff8e12ff 2026-08-26)"}
!4 = !{i8 0, i8 77}
!5 = !{}
!6 = !{i64 8}
!9 = !{!"branch_weights", i32 1, i32 2000, i32 2000, i32 2000, i32 2000}
!11 = distinct !{!11, i1 false, !"_RINvNtNtNtCskKLDkoKarTP_4core2io5error4repr11decode_reprNtB4_11CustomOwnerNCNvXs1_B2_NtB2_4ReprNtNtNtB8_3ops4drop4Drop4drop0ECsi68uqYEhoRA_5gimli"}
!12 = distinct !{!12, !11, !"_RINvNtNtNtCskKLDkoKarTP_4core2io5error4repr11decode_reprNtB4_11CustomOwnerNCNvXs1_B2_NtB2_4ReprNtNtNtB8_3ops4drop4Drop4drop0ECsi68uqYEhoRA_5gimli: argument 0"}
!13 = !{!12}
end_hunk_0
