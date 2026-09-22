Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/shadowsocks-rs/original/ssmanager.ssmanager.75f5cfe302cf09d8-cgu.0?download=true
inline.NumInlined: 18859
inline.NumDeleted: 9054
loop-unroll.NumCompletelyUnrolled: 62
loop-unroll.NumRuntimeUnrolled: 53
loop-unroll.NumUnrolled: 118
begin_hunk_0_@_RNCNvNtCs8UFHSMUhzWe_19shadowsocks_service7manager3run0Csa7TLgTh0CeG_9ssmanager:bb.a
  store i8 %i.eb, ptr %.sroa.11142.24..sroa_idx, align 2
  store i64 %i.ed, ptr %i.el, align 8
  %i.er = getelementptr inbounds nuw i8, ptr %0, i64 4208
  store i64 %i.ef, ptr %i.er, align 8
  %i.es = getelementptr inbounds nuw i8, ptr %0, i64 2950
  %i.et = load i8, ptr %i.es, align 2, !range !93, !noundef !80
  store i8 %i.et, ptr %.sroa.4132.0..sroa_idx, align 8
  %i.eu = getelementptr inbounds nuw i8, ptr %0, i64 2696
  %.sroa.8155.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 4288
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(128) %.sroa.8155.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(128) %i.eu, i64 128, i1 false)
  %i.ev = getelementptr inbounds nuw i8, ptr %0, i64 2944
  %i.ew = load i8, ptr %i.ev, align 8, !range !93, !noundef !80
  %i.ex = getelementptr inbounds nuw i8, ptr %0, i64 4272
  %i.ey = load <2 x i64>, ptr %i.cl, align 8
  store <2 x i64> %i.ey, ptr %i.ex, align 8
  %.sroa.9156.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 4416
  store ptr %i.dl, ptr %.sroa.9156.0..sroa_idx, align 8
  %.sroa.10157.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 4424
  store i8 %i.ew, ptr %.sroa.10157.0..sroa_idx, align 8
  %.sroa.11158.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 4425
  store i8 0, ptr %.sroa.11158.0..sroa_idx, align 1
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.10163)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.516.i.sroa.4.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.as)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.53.i74.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.9.sroa.4.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bm)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.633.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.734.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bn)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bt)
  %i.ez = getelementptr inbounds nuw i8, ptr %i.as, i64 8
  %i.fa = getelementptr inbounds nuw i8, ptr %0, i64 4425
  br label %bb.v

bb.n:                                             ; preds = %bb.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cc)
  store ptr %i.dc, ptr %i.cc, align 8
  %i.fb = load atomic i64, ptr @_RNvCsJovr8ELaM0_3log20MAX_LOG_LEVEL_FILTER monotonic, align 8 ; 2 uses
  %i.fc = icmp ult i64 %i.fb, 6
  call void @llvm.assume(i1 %i.fc)
  %i.fd = icmp samesign ugt i64 %i.fb, 1
  br i1 %i.fd, label %bb.r, label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.r
  %.val.i = phi ptr [ %i.dc, %bb.n ], [ %.val.i.pre, %bb.r ] ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !30287)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bv), !noalias !30287
  %i.fe = ptrtoint ptr %.val.i to i64             ; 2 uses
  %i.ff = and i64 %i.fe, 3
  switch i64 %i.ff, label %default.unreachable [
    i64 2, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsa7TLgTh0CeG_9ssmanager.exit
    i64 3, label %bb.p
    i64 0, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsa7TLgTh0CeG_9ssmanager.exit
    i64 1, label %bb.q
  ], !prof !111

default.unreachable:                              ; preds = %_RNvMNtCsf3Ta7LF998c_4core6optionINtB2_6OptionINtNtB4_6result6ResultTNtNtNtB4_3net11socket_addr10SocketAddrNtNtNtCslxdWNweD0x2_11shadowsocks3net3udp9UdpSocketENtNtNtB4_2io5error5ErrorEE6expectCsa7TLgTh0CeG_9ssmanager.exit512.i.i.i, %bb.nf, %bb.mz, %bb.ms, %bb.mc, %bb.lw, %bb.lp, %_RNvMNtCsf3Ta7LF998c_4core6optionINtB2_6OptionINtNtB4_6result6ResultTNtNtNtB4_3net11socket_addr10SocketAddrNtNtNtCslxdWNweD0x2_11shadowsocks3net3udp9UdpSocketENtNtNtB4_2io5error5ErrorEE6expectCsa7TLgTh0CeG_9ssmanager.exit418.i.i.i, %bb.kz, %bb.kt, %bb.km, %bb.jw, %bb.jq, %bb.jj, %bb.iv, %bb.ip, %bb.ii, %bb.ht, %bb.hn, %bb.hg, %bb.fa, %bb.eo, %bb.el, %bb.dr, %bb.dk, %bb.bj, %bb.o
  unreachable

bb.p:                                             ; preds = %bb.o
  %i.fg = icmp ult ptr %.val.i, inttoptr (i64 188978561024 to ptr)
  %i.fh = and i64 %i.fe, 1095216660480
  %i.fi = icmp ne i64 %i.fh, 1095216660480
  call void @llvm.assume(i1 %i.fg)
  call void @llvm.assume(i1 %i.fi)
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsa7TLgTh0CeG_9ssmanager.exit

bb.q:                                             ; preds = %bb.o
  %i.fj = getelementptr i8, ptr %.val.i, i64 -1   ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.fj) ]
  %i.fk = getelementptr inbounds nuw i8, ptr %i.bv, i64 8 ; 2 uses
  store ptr %i.fj, ptr %i.fk, align 8, !alias.scope !30288, !noalias !30287
  store i8 3, ptr %i.bv, align 8, !alias.scope !30288, !noalias !30287
  call void @_RNvXsd_NtNtCsf3Ta7LF998c_4core2io5errorNtB5_11CustomOwnerNtNtNtB9_3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.fk) #46, !noalias !30287
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsa7TLgTh0CeG_9ssmanager.exit

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsa7TLgTh0CeG_9ssmanager.exit: ; preds = %bb.o, %bb.o, %bb.p, %bb.q
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bv), !noalias !30287
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cc)
  br label %bb.s

bb.r:                                             ; preds = %bb.n
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cb)
  store ptr %i.cd, ptr %i.cb, align 8
  %.sroa.4101.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.cb, i64 8
  store ptr @_RNvXsd_NtNtNtCsf3Ta7LF998c_4core3fmt3num3impyNtB9_7Display3fmt, ptr %.sroa.4101.0..sroa_idx, align 8
  %i.fl = getelementptr inbounds nuw i8, ptr %i.cb, i64 16
  store ptr %i.cc, ptr %i.fl, align 8
  %.sroa.4103.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.cb, i64 24
  store ptr @_RNvXs3_NtNtCsf3Ta7LF998c_4core2io5errorNtB5_5ErrorNtNtB9_3fmt7Display3fmt, ptr %.sroa.4103.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ca)
  store ptr @952, ptr %i.ca, align 8
  %i.fm = getelementptr inbounds nuw i8, ptr %i.ca, i64 8
  store i64 28, ptr %i.fm, align 8
  %i.fn = getelementptr inbounds nuw i8, ptr %i.ca, i64 16
  store ptr @952, ptr %i.fn, align 8
  %i.fo = getelementptr inbounds nuw i8, ptr %i.ca, i64 24
  store i64 28, ptr %i.fo, align 8
  %i.fp = getelementptr inbounds nuw i8, ptr %i.ca, i64 32
  store ptr @954, ptr %i.fp, align 8
  call fastcc void @_RINvNtCsJovr8ELaM0_3log13___private_api3loguNtB2_12GlobalLoggerECsa7TLgTh0CeG_9ssmanager(ptr noundef nonnull @953, ptr noundef nonnull %i.cb, i64 noundef 2, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(40) %i.ca) #46
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ca)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cb)
  %.val.i.pre = load ptr, ptr %i.cc, align 8, !alias.scope !30287
  br label %bb.o

bb.s:                                             ; preds = %bb.i, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsa7TLgTh0CeG_9ssmanager.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cd)
  br label %bb.j

bb.t:                                             ; preds = %bb.a
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %0, i64 4425
  %.pre = load i8, ptr %.phi.trans.insert, align 1, !range !107, !noalias !30289
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.10163)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.516.i.sroa.4.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.as)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.53.i74.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.9.sroa.4.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bm)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.633.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.734.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bn)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bt)
  %i.fq = getelementptr inbounds nuw i8, ptr %i.as, i64 8
  %i.fr = getelementptr inbounds nuw i8, ptr %0, i64 4425 ; 5 uses
  switch i8 %.pre, label %bb.u [
    i8 0, label %bb.v
    i8 1, label %bb.dh
    i8 3, label %bb.an
    i8 4, label %bb.cu
  ]

bb.u:                                             ; preds = %bb.v, %bb.t
  unreachable

bb.v:                                             ; preds = %.thread, %bb.t
  %i.fs = phi ptr [ %i.fa, %.thread ], [ %i.fr, %bb.t ] ; 5 uses
  %i.ft = phi ptr [ %i.ez, %.thread ], [ %i.fq, %bb.t ]
  %i.fu = getelementptr inbounds nuw i8, ptr %0, i64 4272
  %i.fv = getelementptr inbounds nuw i8, ptr %0, i64 4288
  %.sroa.0.0.copyload.i = load i64, ptr %i.fv, align 8, !noalias !30289 ; 4 uses
  %.sroa.10.0..sroa_idx.i47 = getelementptr inbounds nuw i8, ptr %0, i64 4296 ; 2 uses
  %i.fw = getelementptr inbounds nuw i8, ptr %0, i64 4424
  %i.fx = load i8, ptr %i.fw, align 8, !range !93, !noalias !30289, !noundef !80
  %i.fy = load i64, ptr %i.fu, align 8, !range !87, !noalias !30289, !noundef !80 ; 2 uses
  %i.fz = getelementptr inbounds nuw i8, ptr %0, i64 4280
  %i.ga = load i64, ptr %i.fz, align 8, !noalias !30289 ; 2 uses
  %i.gb = getelementptr inbounds nuw i8, ptr %0, i64 4416
  %i.gc = load ptr, ptr %i.gb, align 8, !noalias !30289, !nonnull !80, !align !86, !noundef !80 ; 39 uses
  %i.gd = icmp ne i64 %.sroa.0.0.copyload.i, -9223372036854775807
  call void @llvm.assume(i1 %i.gd)
  %i.ge = xor i64 %.sroa.0.0.copyload.i, -9223372036854775808
  %i.gf = icmp slt i64 %.sroa.0.0.copyload.i, 0
  %i.gg = select i1 %i.gf, i64 %i.ge, i64 1
  switch i64 %i.gg, label %bb.u [
    i64 0, label %bb.w
    i64 1, label %bb.x
    i64 2, label %bb.da
  ]

bb.w:                                             ; preds = %bb.v
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bu), !noalias !30289
  call void @_RNvNvNtCs5Xr050g3D4S_3std3env3var5inner(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %i.bu, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @939, i64 noundef 36) #46, !noalias !30289
  %i.gh = load i64, ptr %i.bu, align 8, !range !87, !noalias !30289, !noundef !80
  %i.gi = trunc nuw i64 %i.gh to i1
  br i1 %i.gi, label %bb.ab, label %bb.y

bb.x:                                             ; preds = %bb.v
  %.sroa.11.0..sroa_idx.i48 = getelementptr inbounds nuw i8, ptr %0, i64 4328
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.633.i, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.10.0..sroa_idx.i47, i64 32, i1 false), !noalias !30289
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(88) %.sroa.734.i, ptr noundef nonnull align 8 dereferenceable(88) %.sroa.11.0..sroa_idx.i48, i64 88, i1 false), !noalias !30289
  %i.gj = getelementptr inbounds nuw i8, ptr %0, i64 4432 ; 5 uses
  store i64 -1, ptr %i.gj, align 8, !noalias !30289
  %i.gk = trunc nuw i64 %i.fy to i1
  br i1 %i.gk, label %bb.ck, label %bb.cq

bb.y:                                             ; preds = %bb.w
  %i.gl = getelementptr inbounds nuw i8, ptr %i.bu, i64 8
  %.sroa.0.0.copyload1.i = load i64, ptr %i.gl, align 8, !noalias !30289 ; 2 uses
  %.sroa.42.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.bu, i64 16
  %.sroa.42.0.copyload.i = load ptr, ptr %.sroa.42.0..sroa_idx.i, align 8, !noalias !30289, !nonnull !80, !noundef !80 ; 6 uses
  %.sroa.8.0..sroa_idx.i49 = getelementptr inbounds nuw i8, ptr %i.bu, i64 24
  %.sroa.8.0.copyload.i = load i64, ptr %.sroa.8.0..sroa_idx.i49, align 8, !noalias !30289 ; 10 uses
  %.not.i.i = icmp eq i64 %.sroa.8.0.copyload.i, 0
  br i1 %.not.i.i, label %_RNvXs1y_NtCsgCecv3eZDcN_5alloc6stringNtB6_6StringINtNtCsf3Ta7LF998c_4core3cmp9PartialEqReE2eq.exit60.i, label %iter.check

iter.check:                                       ; preds = %bb.y
  %min.iters.check = icmp ult i64 %.sroa.8.0.copyload.i, 8
  br i1 %min.iters.check, label %.lr.ph.i.i.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check417 = icmp ult i64 %.sroa.8.0.copyload.i, 32
  br i1 %min.iters.check417, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.gm = and i64 %.sroa.8.0.copyload.i, 24
  %n.vec = and i64 %.sroa.8.0.copyload.i, -32     ; 4 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.gn = getelementptr inbounds nuw i8, ptr %.sroa.42.0.copyload.i, i64 %index ; 3 uses
  %i.go = getelementptr inbounds nuw i8, ptr %i.gn, i64 16 ; 2 uses
  %wide.load = load <16 x i8>, ptr %i.gn, align 1, !alias.scope !30290, !noalias !30289 ; 2 uses
  %wide.load418 = load <16 x i8>, ptr %i.go, align 1, !alias.scope !30290, !noalias !30289 ; 2 uses
  %i.gp = add <16 x i8> %wide.load, splat (i8 -65)
  %i.gq = add <16 x i8> %wide.load418, splat (i8 -65)
  %i.gr = icmp ult <16 x i8> %i.gp, splat (i8 26)
  %i.gs = icmp ult <16 x i8> %i.gq, splat (i8 26)
  %i.gt = select <16 x i1> %i.gr, <16 x i8> splat (i8 32), <16 x i8> zeroinitializer
  %i.gu = select <16 x i1> %i.gs, <16 x i8> splat (i8 32), <16 x i8> zeroinitializer
  %i.gv = or <16 x i8> %i.gt, %wide.load
  %i.gw = or <16 x i8> %i.gu, %wide.load418
  store <16 x i8> %i.gv, ptr %i.gn, align 1, !alias.scope !30290, !noalias !30289
  store <16 x i8> %i.gw, ptr %i.go, align 1, !alias.scope !30290, !noalias !30289
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %i.gx = icmp eq i64 %index.next, %n.vec
  br i1 %i.gx, label %middle.block, label %vector.body, !llvm.loop !29754

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %.sroa.8.0.copyload.i, %n.vec
  br i1 %cmp.n, label %_RNvMNtCsf3Ta7LF998c_4core3stre20make_ascii_lowercase.exit.i, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.gm, 0
  br i1 %min.epilog.iters.check, label %.lr.ph.i.i.preheader, label %vec.epilog.ph, !prof !202

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec419 = and i64 %.sroa.8.0.copyload.i, -8   ; 3 uses
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index420 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next422, %vec.epilog.vector.body ] ; 2 uses
  %i.gy = getelementptr inbounds nuw i8, ptr %.sroa.42.0.copyload.i, i64 %index420 ; 2 uses
  %wide.load421 = load <8 x i8>, ptr %i.gy, align 1, !alias.scope !30290, !noalias !30289 ; 2 uses
  %i.gz = add <8 x i8> %wide.load421, splat (i8 -65)
  %i.ha = icmp ult <8 x i8> %i.gz, splat (i8 26)
  %i.hb = select <8 x i1> %i.ha, <8 x i8> splat (i8 32), <8 x i8> zeroinitializer
  %i.hc = or <8 x i8> %i.hb, %wide.load421
  store <8 x i8> %i.hc, ptr %i.gy, align 1, !alias.scope !30290, !noalias !30289
  %index.next422 = add nuw i64 %index420, 8       ; 2 uses
  %i.hd = icmp eq i64 %index.next422, %n.vec419
  br i1 %i.hd, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !29755

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n423 = icmp eq i64 %.sroa.8.0.copyload.i, %n.vec419
  br i1 %cmp.n423, label %_RNvMNtCsf3Ta7LF998c_4core3stre20make_ascii_lowercase.exit.i, label %.lr.ph.i.i.preheader

.lr.ph.i.i.preheader:                             ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.sroa.0.05.i.i.ph = phi i64 [ 0, %iter.check ], [ %n.vec, %vec.epilog.iter.check ], [ %n.vec419, %vec.epilog.middle.block ]
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i.preheader, %.lr.ph.i.i
  %.sroa.0.05.i.i = phi i64 [ %i.hj, %.lr.ph.i.i ], [ %.sroa.0.05.i.i.ph, %.lr.ph.i.i.preheader ] ; 2 uses
  %i.he = getelementptr inbounds nuw i8, ptr %.sroa.42.0.copyload.i, i64 %.sroa.0.05.i.i ; 2 uses
  %i.hf = load i8, ptr %i.he, align 1, !alias.scope !30290, !noalias !30289, !noundef !80 ; 2 uses
  %i.hg = add i8 %i.hf, -65
  %i.hh = icmp ult i8 %i.hg, 26
  %i.hi = select i1 %i.hh, i8 32, i8 0
  %.sroa.03.0.i.i = or i8 %i.hi, %i.hf
  store i8 %.sroa.03.0.i.i, ptr %i.he, align 1, !alias.scope !30290, !noalias !30289
  %i.hj = add nuw i64 %.sroa.0.05.i.i, 1          ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %i.hj, %.sroa.8.0.copyload.i
  br i1 %exitcond.not.i.i, label %_RNvMNtCsf3Ta7LF998c_4core3stre20make_ascii_lowercase.exit.i, label %.lr.ph.i.i, !llvm.loop !29756

_RNvMNtCsf3Ta7LF998c_4core3stre20make_ascii_lowercase.exit.i: ; preds = %.lr.ph.i.i, %vec.epilog.middle.block, %middle.block
  switch i64 %.sroa.8.0.copyload.i, label %_RNvXs1y_NtCsgCecv3eZDcN_5alloc6stringNtB6_6StringINtNtCsf3Ta7LF998c_4core3cmp9PartialEqReE2eq.exit60.i [
    i64 1, label %_RNvXs1y_NtCsgCecv3eZDcN_5alloc6stringNtB6_6StringINtNtCsf3Ta7LF998c_4core3cmp9PartialEqReE2eq.exit.i
    i64 4, label %bb.z
  ]

_RNvXs1y_NtCsgCecv3eZDcN_5alloc6stringNtB6_6StringINtNtCsf3Ta7LF998c_4core3cmp9PartialEqReE2eq.exit.i: ; preds = %_RNvMNtCsf3Ta7LF998c_4core3stre20make_ascii_lowercase.exit.i
  %lhsc.i = load i8, ptr %.sroa.42.0.copyload.i, align 1, !noalias !30289
  %i.hk = icmp eq i8 %lhsc.i, 49
  br label %_RNvXs1y_NtCsgCecv3eZDcN_5alloc6stringNtB6_6StringINtNtCsf3Ta7LF998c_4core3cmp9PartialEqReE2eq.exit60.i

bb.z:                                             ; preds = %_RNvMNtCsf3Ta7LF998c_4core3stre20make_ascii_lowercase.exit.i
  %i.hl = load i32, ptr %.sroa.42.0.copyload.i, align 1
  %i.hm = icmp ne i32 %i.hl, 1702195828
  %i.hn = zext i1 %i.hm to i32
  %i.ho = icmp eq i32 %i.hn, 0
  br label %_RNvXs1y_NtCsgCecv3eZDcN_5alloc6stringNtB6_6StringINtNtCsf3Ta7LF998c_4core3cmp9PartialEqReE2eq.exit60.i

_RNvXs1y_NtCsgCecv3eZDcN_5alloc6stringNtB6_6StringINtNtCsf3Ta7LF998c_4core3cmp9PartialEqReE2eq.exit60.i: ; preds = %bb.z, %_RNvXs1y_NtCsgCecv3eZDcN_5alloc6stringNtB6_6StringINtNtCsf3Ta7LF998c_4core3cmp9PartialEqReE2eq.exit.i, %_RNvMNtCsf3Ta7LF998c_4core3stre20make_ascii_lowercase.exit.i, %bb.y
  %.sroa.010.0.i = phi i1 [ %i.hk, %_RNvXs1y_NtCsgCecv3eZDcN_5alloc6stringNtB6_6StringINtNtCsf3Ta7LF998c_4core3cmp9PartialEqReE2eq.exit.i ], [ %i.ho, %bb.z ], [ false, %_RNvMNtCsf3Ta7LF998c_4core3stre20make_ascii_lowercase.exit.i ], [ false, %bb.y ]
  %i.hp = icmp eq i64 %.sroa.0.0.copyload1.i, 0
  br i1 %i.hp, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6result6ResultNtNtCsgCecv3eZDcN_5alloc6string6StringNtNtCs5Xr050g3D4S_3std3env8VarErrorEECsa7TLgTh0CeG_9ssmanager.exit.i, label %bb.aa

bb.aa:                                            ; preds = %_RNvXs1y_NtCsgCecv3eZDcN_5alloc6stringNtB6_6StringINtNtCsf3Ta7LF998c_4core3cmp9PartialEqReE2eq.exit60.i
  call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.42.0.copyload.i, i64 noundef %.sroa.0.0.copyload1.i, i64 noundef range(i64 1, -9223372036854775807) 1) #46, !noalias !30291
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6result6ResultNtNtCsgCecv3eZDcN_5alloc6string6StringNtNtCs5Xr050g3D4S_3std3env8VarErrorEECsa7TLgTh0CeG_9ssmanager.exit.i

bb.ab:                                            ; preds = %bb.w
  call void @llvm.experimental.noalias.scope.decl(metadata !30292)
  %i.hq = getelementptr inbounds nuw i8, ptr %i.bu, i64 8
  %.val.i.i = load i64, ptr %i.hq, align 8, !range !115, !alias.scope !30292, !noalias !30289, !noundef !80 ; 2 uses
  %i.hr = icmp sgt i64 %.val.i.i, 0
  br i1 %i.hr, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsgCecv3eZDcN_5alloc6string6StringECsa7TLgTh0CeG_9ssmanager.exit.sink.split.i.i, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6result6ResultNtNtCsgCecv3eZDcN_5alloc6string6StringNtNtCs5Xr050g3D4S_3std3env8VarErrorEECsa7TLgTh0CeG_9ssmanager.exit.thread.i

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsgCecv3eZDcN_5alloc6string6StringECsa7TLgTh0CeG_9ssmanager.exit.sink.split.i.i: ; preds = %bb.ab
  %i.hs = getelementptr inbounds nuw i8, ptr %i.bu, i64 16
  %.val1.i.i = load ptr, ptr %i.hs, align 8, !alias.scope !30292, !noalias !30289, !nonnull !80, !noundef !80
  call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i, i64 noundef %.val.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #46, !noalias !30293
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6result6ResultNtNtCsgCecv3eZDcN_5alloc6string6StringNtNtCs5Xr050g3D4S_3std3env8VarErrorEECsa7TLgTh0CeG_9ssmanager.exit.thread.i

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6result6ResultNtNtCsgCecv3eZDcN_5alloc6string6StringNtNtCs5Xr050g3D4S_3std3env8VarErrorEECsa7TLgTh0CeG_9ssmanager.exit.thread.i: ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsgCecv3eZDcN_5alloc6string6StringECsa7TLgTh0CeG_9ssmanager.exit.sink.split.i.i, %bb.ab
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bu), !noalias !30289
  br label %bb.ac

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6result6ResultNtNtCsgCecv3eZDcN_5alloc6string6StringNtNtCs5Xr050g3D4S_3std3env8VarErrorEECsa7TLgTh0CeG_9ssmanager.exit.i: ; preds = %bb.aa, %_RNvXs1y_NtCsgCecv3eZDcN_5alloc6stringNtB6_6StringINtNtCsf3Ta7LF998c_4core3cmp9PartialEqReE2eq.exit60.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bu), !noalias !30289
  br i1 %.sroa.010.0.i, label %bb.ci, label %bb.ac

bb.ac:                                            ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6result6ResultNtNtCsgCecv3eZDcN_5alloc6string6StringNtNtCs5Xr050g3D4S_3std3env8VarErrorEECsa7TLgTh0CeG_9ssmanager.exit.i, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6result6ResultNtNtCsgCecv3eZDcN_5alloc6string6StringNtNtCs5Xr050g3D4S_3std3env8VarErrorEECsa7TLgTh0CeG_9ssmanager.exit.thread.i
  %i.ht = getelementptr inbounds nuw i8, ptr %0, i64 4432 ; 5 uses
  store i64 -1, ptr %i.ht, align 8, !noalias !30289
  %i.hu = trunc nuw i64 %i.fy to i1
  br i1 %i.hu, label %bb.ad, label %bb.aj

bb.ad:                                            ; preds = %bb.ac
  call void @_RNvXs4_NtCs8AjStw0eGtC_16hickory_resolver6configNtB5_12ResolverOptsNtNtCsf3Ta7LF998c_4core7default7Default7default(ptr noalias nofree noundef nonnull sret([216 x i8]) align 8 captures(none) dereferenceable(216) %i.bt) #46, !noalias !30289
  %i.hv = getelementptr inbounds nuw i8, ptr %i.bt, i64 176
  store i64 %i.ga, ptr %i.hv, align 8, !noalias !30289
  call void @llvm.experimental.noalias.scope.decl(metadata !30294)
  %i.hw = load i64, ptr %i.ht, align 8, !range !115, !alias.scope !30294, !noalias !30289, !noundef !80
  %i.hx = icmp eq i64 %i.hw, -1
  br i1 %i.hx, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs8AjStw0eGtC_16hickory_resolver6config12ResolverOptsEECsa7TLgTh0CeG_9ssmanager.exit.i, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  call void @llvm.experimental.noalias.scope.decl(metadata !30295)
  %i.hy = getelementptr inbounds nuw i8, ptr %0, i64 4584 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !30296)
  call void @llvm.experimental.noalias.scope.decl(metadata !30297)
  %i.hz = load ptr, ptr %i.hy, align 8, !alias.scope !30298, !noalias !30289, !nonnull !80, !noundef !80
  %i.ia = atomicrmw sub ptr %i.hz, i64 1 release, align 8, !noalias !30299
  %i.ib = icmp eq i64 %i.ia, 1
  br i1 %i.ib, label %bb.af, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc4sync3ArcINtNtNtNtCs5Xr050g3D4S_3std11collections4hash3set7HashSettEEECsa7TLgTh0CeG_9ssmanager.exit.i.i.i

bb.af:                                            ; preds = %bb.ae
  fence acquire
  call void @_RNvMsn_NtCsgCecv3eZDcN_5alloc4syncINtB5_3ArcINtNtNtNtCs5Xr050g3D4S_3std11collections4hash3set7HashSettEE9drop_slowCs8AjStw0eGtC_16hickory_resolver(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.hy) #53, !noalias !30289
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc4sync3ArcINtNtNtNtCs5Xr050g3D4S_3std11collections4hash3set7HashSettEEECsa7TLgTh0CeG_9ssmanager.exit.i.i.i

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc4sync3ArcINtNtNtNtCs5Xr050g3D4S_3std11collections4hash3set7HashSettEEECsa7TLgTh0CeG_9ssmanager.exit.i.i.i: ; preds = %bb.af, %bb.ae
  %i.ic = getelementptr inbounds nuw i8, ptr %0, i64 4480
  call void @llvm.experimental.noalias.scope.decl(metadata !30300)
  %i.id = load i64, ptr %i.ic, align 8, !range !115, !alias.scope !30301, !noalias !30289, !noundef !80 ; 2 uses
  %i.ie = icmp sgt i64 %i.id, 0
  br i1 %i.ie, label %bb.ag, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs5Xr050g3D4S_3std4path7PathBufEECsa7TLgTh0CeG_9ssmanager.exit.i.i.i

bb.ag:                                            ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc4sync3ArcINtNtNtNtCs5Xr050g3D4S_3std11collections4hash3set7HashSettEEECsa7TLgTh0CeG_9ssmanager.exit.i.i.i
  %i.if = getelementptr inbounds nuw i8, ptr %0, i64 4488
  %.val1.i.i.i.i = load ptr, ptr %i.if, align 8, !alias.scope !30301, !noalias !30289, !nonnull !80, !noundef !80
  call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i.i.i, i64 noundef %i.id, i64 noundef range(i64 1, -9223372036854775807) 1) #46, !noalias !30302
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs5Xr050g3D4S_3std4path7PathBufEECsa7TLgTh0CeG_9ssmanager.exit.i.i.i

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs5Xr050g3D4S_3std4path7PathBufEECsa7TLgTh0CeG_9ssmanager.exit.i.i.i: ; preds = %bb.ag, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc4sync3ArcINtNtNtNtCs5Xr050g3D4S_3std11collections4hash3set7HashSettEEECsa7TLgTh0CeG_9ssmanager.exit.i.i.i
  call void @llvm.experimental.noalias.scope.decl(metadata !30303)
  %.val.i.i.i61.i = load i64, ptr %i.ht, align 8, !range !82, !alias.scope !30304, !noalias !30289, !noundef !80 ; 2 uses
  %i.ig = icmp eq i64 %.val.i.i.i61.i, 0
  br i1 %i.ig, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VecNtNtCsgF1LWsE3iOj_5ipnet5ipnet5IpNetEECsa7TLgTh0CeG_9ssmanager.exit.i.i.i, label %bb.ah

bb.ah:                                            ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs5Xr050g3D4S_3std4path7PathBufEECsa7TLgTh0CeG_9ssmanager.exit.i.i.i
  %i.ih = getelementptr inbounds nuw i8, ptr %0, i64 4440
  %.val1.i1.i.i.i = load ptr, ptr %i.ih, align 8, !alias.scope !30304, !noalias !30289, !nonnull !80, !noundef !80
  %i.ii = mul nuw i64 %.val.i.i.i61.i, 18
  call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i1.i.i.i, i64 noundef %i.ii, i64 noundef range(i64 1, -9223372036854775807) 1) #46, !noalias !30305
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VecNtNtCsgF1LWsE3iOj_5ipnet5ipnet5IpNetEECsa7TLgTh0CeG_9ssmanager.exit.i.i.i

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VecNtNtCsgF1LWsE3iOj_5ipnet5ipnet5IpNetEECsa7TLgTh0CeG_9ssmanager.exit.i.i.i: ; preds = %bb.ah, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs5Xr050g3D4S_3std4path7PathBufEECsa7TLgTh0CeG_9ssmanager.exit.i.i.i
  %i.ij = getelementptr inbounds nuw i8, ptr %0, i64 4456
  call void @llvm.experimental.noalias.scope.decl(metadata !30306)
  %.val.i2.i.i.i = load i64, ptr %i.ij, align 8, !range !82, !alias.scope !30307, !noalias !30289, !noundef !80 ; 2 uses
  %i.ik = icmp eq i64 %.val.i2.i.i.i, 0
  br i1 %i.ik, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs8AjStw0eGtC_16hickory_resolver6config12ResolverOptsEECsa7TLgTh0CeG_9ssmanager.exit.i, label %bb.ai

bb.ai:                                            ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VecNtNtCsgF1LWsE3iOj_5ipnet5ipnet5IpNetEECsa7TLgTh0CeG_9ssmanager.exit.i.i.i
  %i.il = getelementptr inbounds nuw i8, ptr %0, i64 4464
  %.val1.i3.i.i.i = load ptr, ptr %i.il, align 8, !alias.scope !30307, !noalias !30289, !nonnull !80, !noundef !80
  %i.im = mul nuw i64 %.val.i2.i.i.i, 18
  call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i3.i.i.i, i64 noundef %i.im, i64 noundef range(i64 1, -9223372036854775807) 1) #46, !noalias !30308
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs8AjStw0eGtC_16hickory_resolver6config12ResolverOptsEECsa7TLgTh0CeG_9ssmanager.exit.i

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs8AjStw0eGtC_16hickory_resolver6config12ResolverOptsEECsa7TLgTh0CeG_9ssmanager.exit.i: ; preds = %bb.ai, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VecNtNtCsgF1LWsE3iOj_5ipnet5ipnet5IpNetEECsa7TLgTh0CeG_9ssmanager.exit.i.i.i, %bb.ad
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(216) %i.ht, ptr noundef nonnull align 8 dereferenceable(216) %i.bt, i64 216, i1 false), !noalias !30289
  br label %bb.aj

bb.aj:                                            ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs8AjStw0eGtC_16hickory_resolver6config12ResolverOptsEECsa7TLgTh0CeG_9ssmanager.exit.i, %bb.ac
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.07.sroa.25.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.07.sroa.26.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bs)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(216) %i.bs, ptr noundef nonnull align 8 dereferenceable(216) %i.ht, i64 216, i1 false), !noalias !30289
  call void @llvm.experimental.noalias.scope.decl(metadata !30309)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bd), !noalias !30289
  %i.in = getelementptr inbounds nuw i8, ptr %i.gc, i64 48
  %i.io = load i32, ptr %i.in, align 8, !range !152, !alias.scope !30309, !noalias !30310, !noundef !80 ; 2 uses
  %i.ip = getelementptr inbounds nuw i8, ptr %i.gc, i64 52
  %i.iq = load i32, ptr %i.ip, align 4, !alias.scope !30309, !noalias !30310
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.53.i.i)
end_hunk_0
begin_hunk_1_@_RNCNvNtNtNtCs8UFHSMUhzWe_19shadowsocks_service3net8outbound5chain13negotiate_hop0Csa7TLgTh0CeG_9ssmanager:bb.a
_RNCINvMs4_NtCs7ewmRfXve8r_4http7requestNtB8_7Builder6methodNtNtBa_6method6MethodE0Csa7TLgTh0CeG_9ssmanager.exit.i.i.i: ; preds = %_RNvXs1_NtCsgCecv3eZDcN_5alloc5allocNtB5_6GlobalNtNtCsf3Ta7LF998c_4core5alloc9Allocator10deallocate.exit.i.i.i.i.i.i3.i.i.i, %bb.gc
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(87) %.sroa.5.sroa.0.i.i.sroa.0.sroa.5.i, ptr noundef nonnull align 1 dereferenceable(87) %.sroa.5.sroa.0.i.i.sroa.0.sroa.5.0..sroa.5.0..sroa_idx.i.i.sroa_idx.i, i64 87, i1 false), !noalias !31648
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %.sroa.5.sroa.0.i.i.sroa.6.i, ptr noundef nonnull align 1 dereferenceable(7) %.sroa.5.sroa.0.i.i.sroa.6.0..sroa.5.0..sroa_idx.i.i.sroa_idx.i, i64 7, i1 false), !noalias !31648
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %.sroa.5.sroa.6.i.i.i, i8 7, i64 7, i1 false), !noalias !31633
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.5.sroa.12.i.i.i, ptr noundef nonnull readonly align 8 dereferenceable(16) %.sroa.5.sroa.12.0..sroa.5.0..sroa_idx.sroa_idx.i.i.i, i64 16, i1 false), !noalias !31648
  br label %_RINvMs4_NtCs7ewmRfXve8r_4http7requestNtB6_7Builder6methodNtNtB8_6method6MethodECsa7TLgTh0CeG_9ssmanager.exit.i

_RINvMs4_NtCs7ewmRfXve8r_4http7requestNtB6_7Builder6methodNtNtB8_6method6MethodECsa7TLgTh0CeG_9ssmanager.exit.i: ; preds = %_RNCINvMs4_NtCs7ewmRfXve8r_4http7requestNtB8_7Builder6methodNtNtBa_6method6MethodE0Csa7TLgTh0CeG_9ssmanager.exit.i.i.i, %bb.gb
  %.sroa.5.sroa.10.0.i.i.i = phi i64 [ 0, %_RNCINvMs4_NtCs7ewmRfXve8r_4http7requestNtB8_7Builder6methodNtNtBa_6method6MethodE0Csa7TLgTh0CeG_9ssmanager.exit.i.i.i ], [ %.sroa.5.sroa.10.0.copyload.i.i.i, %bb.gb ] ; 3 uses
  %.sroa.5.sroa.8.0.i.i.i = phi ptr [ null, %_RNCINvMs4_NtCs7ewmRfXve8r_4http7requestNtB8_7Builder6methodNtNtBa_6method6MethodE0Csa7TLgTh0CeG_9ssmanager.exit.i.i.i ], [ %.sroa.5.sroa.8.0.copyload.i.i.i, %bb.gb ] ; 3 uses
  %.sroa.5.sroa.4.0.i.i.i = phi i8 [ 7, %_RNCINvMs4_NtCs7ewmRfXve8r_4http7requestNtB8_7Builder6methodNtNtBa_6method6MethodE0Csa7TLgTh0CeG_9ssmanager.exit.i.i.i ], [ %.sroa.5.sroa.4.0.copyload.i.i.i, %bb.gb ] ; 3 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(87) %.sroa.4163.sroa.5.i, ptr noundef nonnull align 1 dereferenceable(87) %.sroa.5.sroa.0.i.i.sroa.0.sroa.5.i, i64 87, i1 false), !noalias !31650
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.5.sroa.6.i.i16.i)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %.sroa.5.sroa.6.i.i16.i, ptr noundef nonnull align 1 dereferenceable(7) %.sroa.5.sroa.0.i.i.sroa.6.i, i64 7, i1 false), !noalias !31633
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %.sroa.22.i, ptr noundef nonnull align 1 dereferenceable(7) %.sroa.5.sroa.6.i.i.i, i64 7, i1 false), !noalias !31650
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.25.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.5.sroa.12.i.i.i, i64 16, i1 false), !noalias !31650
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.5.sroa.0.i.i.sroa.0.sroa.5.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.5.sroa.0.i.i.sroa.6.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.5.sroa.6.i.i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.5.sroa.12.i.i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bh), !noalias !31633
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.5.sroa.0.i.i15.sroa.5.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.5.sroa.28.i.i.sroa.5.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.5.sroa.28.i.i.sroa.11.i)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(87) %.sroa.5.sroa.0.i.i15.sroa.5.i, ptr noundef nonnull align 1 dereferenceable(87) %.sroa.4163.sroa.5.i, i64 87, i1 false), !noalias !31651
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %.sroa.5.sroa.28.i.i.sroa.5.i, ptr noundef nonnull align 1 dereferenceable(7) %.sroa.22.i, i64 7, i1 false), !noalias !31651
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.5.sroa.28.i.i.sroa.11.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.25.i, i64 16, i1 false), !noalias !31651
  br i1 %i.afw, label %bb.gd, label %bb.gf

bb.gd:                                            ; preds = %_RINvMs4_NtCs7ewmRfXve8r_4http7requestNtB6_7Builder6methodNtNtB8_6method6MethodECsa7TLgTh0CeG_9ssmanager.exit.i
  %switch.i.i.i.i.i.i.i = icmp samesign ult i8 %i.afq, 2
  br i1 %switch.i.i.i.i.i.i.i, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNCINvMs4_NtCs7ewmRfXve8r_4http7requestNtBK_7Builder3uriNtNtBM_3uri3UriE0ECsa7TLgTh0CeG_9ssmanager.exit.i.i.i, label %bb.ge

bb.ge:                                            ; preds = %bb.gd
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.7137.0.copyload.i) ]
  call void @llvm.experimental.noalias.scope.decl(metadata !31652)
  call void @llvm.experimental.noalias.scope.decl(metadata !31653)
  call void @llvm.experimental.noalias.scope.decl(metadata !31654)
  %i.afy = getelementptr inbounds nuw i8, ptr %.sroa.7137.0.copyload.i, i64 24
  %i.afz = load ptr, ptr %i.afy, align 8, !alias.scope !31655, !noalias !31656, !noundef !80
  %i.aga = load ptr, ptr %.sroa.7137.0.copyload.i, align 8, !alias.scope !31655, !noalias !31656, !nonnull !80, !align !86, !noundef !80
  %i.agb = getelementptr inbounds nuw i8, ptr %i.aga, i64 32
  %i.agc = load ptr, ptr %i.agb, align 8, !noalias !31657, !nonnull !80, !noundef !80
  %i.agd = getelementptr inbounds nuw i8, ptr %.sroa.7137.0.copyload.i, i64 8
  %i.age = load ptr, ptr %i.agd, align 8, !alias.scope !31655, !noalias !31656, !noundef !80
  %i.agf = getelementptr inbounds nuw i8, ptr %.sroa.7137.0.copyload.i, i64 16
  %i.agg = load i64, ptr %i.agf, align 8, !alias.scope !31655, !noalias !31656, !noundef !80
  call void %i.agc(ptr noundef %i.afz, ptr noundef %i.age, i64 noundef %i.agg) #46, !noalias !31657, !inline_history !31076
  call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.7137.0.copyload.i, i64 noundef 32, i64 noundef 8) #46, !noalias !31656
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNCINvMs4_NtCs7ewmRfXve8r_4http7requestNtBK_7Builder3uriNtNtBM_3uri3UriE0ECsa7TLgTh0CeG_9ssmanager.exit.i.i.i

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNCINvMs4_NtCs7ewmRfXve8r_4http7requestNtBK_7Builder3uriNtNtBM_3uri3UriE0ECsa7TLgTh0CeG_9ssmanager.exit.i.i.i: ; preds = %bb.ge, %bb.gd
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.10.sroa.0.0.copyload.i) ]
  %i.agh = getelementptr inbounds nuw i8, ptr %.sroa.10.sroa.0.0.copyload.i, i64 32
  %i.agi = load ptr, ptr %i.agh, align 8, !noalias !31658, !nonnull !80, !noundef !80
  call void %i.agi(ptr noundef %.sroa.10.sroa.6.0.copyload.i, ptr noundef %.sroa.10.sroa.4.0.copyload.i, i64 noundef %.sroa.10.sroa.5.0.copyload.i) #46, !noalias !31658, !inline_history !31085
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.10.sroa.7.0.copyload.i) ]
  %i.agj = getelementptr inbounds nuw i8, ptr %.sroa.10.sroa.7.0.copyload.i, i64 32
  %i.agk = load ptr, ptr %i.agj, align 8, !noalias !31659, !nonnull !80, !noundef !80
  call void %i.agk(ptr noundef %.sroa.10.sroa.10.0.copyload.i, ptr noundef %.sroa.10.sroa.8.0.copyload.i, i64 noundef %.sroa.10.sroa.9.0.copyload.i) #46, !noalias !31659, !inline_history !31094
  br label %_RINvMs4_NtCs7ewmRfXve8r_4http7requestNtB6_7Builder3uriNtNtB8_3uri3UriECsa7TLgTh0CeG_9ssmanager.exit.i

bb.gf:                                            ; preds = %_RINvMs4_NtCs7ewmRfXve8r_4http7requestNtB6_7Builder6methodNtNtB8_6method6MethodECsa7TLgTh0CeG_9ssmanager.exit.i
  %switch.i.i.i.i2.i.i.i = icmp samesign ult i8 %.sroa.5.sroa.0.i.i.sroa.5.0.copyload.i, 2
  br i1 %switch.i.i.i.i2.i.i.i, label %_RNCINvMs4_NtCs7ewmRfXve8r_4http7requestNtB8_7Builder3uriNtNtBa_3uri3UriE0Csa7TLgTh0CeG_9ssmanager.exit.i.i.i, label %bb.gg

bb.gg:                                            ; preds = %bb.gf
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.5.sroa.0.i.i.sroa.7.0.copyload.i) ]
  call void @llvm.experimental.noalias.scope.decl(metadata !31660)
  call void @llvm.experimental.noalias.scope.decl(metadata !31661)
  call void @llvm.experimental.noalias.scope.decl(metadata !31662)
  %i.agl = getelementptr inbounds nuw i8, ptr %.sroa.5.sroa.0.i.i.sroa.7.0.copyload.i, i64 24
  %i.agm = load ptr, ptr %i.agl, align 8, !alias.scope !31663, !noalias !31664, !noundef !80
  %i.agn = load ptr, ptr %.sroa.5.sroa.0.i.i.sroa.7.0.copyload.i, align 8, !alias.scope !31663, !noalias !31664, !nonnull !80, !align !86, !noundef !80
  %i.ago = getelementptr inbounds nuw i8, ptr %i.agn, i64 32
  %i.agp = load ptr, ptr %i.ago, align 8, !noalias !31665, !nonnull !80, !noundef !80
  %i.agq = getelementptr inbounds nuw i8, ptr %.sroa.5.sroa.0.i.i.sroa.7.0.copyload.i, i64 8
  %i.agr = load ptr, ptr %i.agq, align 8, !alias.scope !31663, !noalias !31664, !noundef !80
  %i.ags = getelementptr inbounds nuw i8, ptr %.sroa.5.sroa.0.i.i.sroa.7.0.copyload.i, i64 16
  %i.agt = load i64, ptr %i.ags, align 8, !alias.scope !31663, !noalias !31664, !noundef !80
  call void %i.agp(ptr noundef %i.agm, ptr noundef %i.agr, i64 noundef %i.agt) #46, !noalias !31665, !inline_history !31107
  call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.5.sroa.0.i.i.sroa.7.0.copyload.i, i64 noundef 32, i64 noundef 8) #46, !noalias !31664
  br label %_RNCINvMs4_NtCs7ewmRfXve8r_4http7requestNtB8_7Builder3uriNtNtBa_3uri3UriE0Csa7TLgTh0CeG_9ssmanager.exit.i.i.i

_RNCINvMs4_NtCs7ewmRfXve8r_4http7requestNtB8_7Builder3uriNtNtBa_3uri3UriE0Csa7TLgTh0CeG_9ssmanager.exit.i.i.i: ; preds = %bb.gg, %bb.gf
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.5.sroa.0.i.i.sroa.8.0.copyload.i) ]
  %i.agu = getelementptr inbounds nuw i8, ptr %.sroa.5.sroa.0.i.i.sroa.8.0.copyload.i, i64 32
  %i.agv = load ptr, ptr %i.agu, align 8, !noalias !31666, !nonnull !80, !noundef !80
  call void %i.agv(ptr noundef %.sroa.5.sroa.0.i.i.sroa.11.0.copyload.i, ptr noundef %.sroa.5.sroa.0.i.i.sroa.9.0.copyload.i, i64 noundef %.sroa.5.sroa.0.i.i.sroa.10.0.copyload.i) #46, !noalias !31666, !inline_history !31116
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.5.sroa.0.i.i.sroa.12.0.copyload.i) ]
  %i.agw = getelementptr inbounds nuw i8, ptr %.sroa.5.sroa.0.i.i.sroa.12.0.copyload.i, i64 32
  %i.agx = load ptr, ptr %i.agw, align 8, !noalias !31667, !nonnull !80, !noundef !80
  call void %i.agx(ptr noundef %.sroa.5.sroa.0.i.i.sroa.15.0.copyload.i, ptr noundef %.sroa.5.sroa.0.i.i.sroa.13.0.copyload.i, i64 noundef %.sroa.5.sroa.0.i.i.sroa.14.0.copyload.i) #46, !noalias !31667, !inline_history !31125
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(87) %.sroa.5.sroa.0.i.i15.sroa.5.i, ptr noundef nonnull align 1 dereferenceable(87) %.sroa.4163.sroa.5.i, i64 87, i1 false), !noalias !31651
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %.sroa.5.sroa.6.i.i16.i, ptr noundef nonnull align 1 dereferenceable(7) %.sroa.2.i, i64 7, i1 false), !noalias !31668
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %.sroa.5.sroa.28.i.i.sroa.5.i, ptr noundef nonnull align 1 dereferenceable(7) %.sroa.22.i, i64 7, i1 false), !noalias !31651
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.5.sroa.28.i.i.sroa.11.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.25.i, i64 16, i1 false), !noalias !31651
  br label %_RINvMs4_NtCs7ewmRfXve8r_4http7requestNtB6_7Builder3uriNtNtB8_3uri3UriECsa7TLgTh0CeG_9ssmanager.exit.i

_RINvMs4_NtCs7ewmRfXve8r_4http7requestNtB6_7Builder3uriNtNtB8_3uri3UriECsa7TLgTh0CeG_9ssmanager.exit.i: ; preds = %_RNCINvMs4_NtCs7ewmRfXve8r_4http7requestNtB8_7Builder3uriNtNtBa_3uri3UriE0Csa7TLgTh0CeG_9ssmanager.exit.i.i.i, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNCINvMs4_NtCs7ewmRfXve8r_4http7requestNtBK_7Builder3uriNtNtBM_3uri3UriE0ECsa7TLgTh0CeG_9ssmanager.exit.i.i.i
  %.sroa.5.sroa.26.0.i.i.i = phi i64 [ %.sroa.5.sroa.0.i.i.sroa.16.0.copyload.i, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNCINvMs4_NtCs7ewmRfXve8r_4http7requestNtBK_7Builder3uriNtNtBM_3uri3UriE0ECsa7TLgTh0CeG_9ssmanager.exit.i.i.i ], [ %.sroa.10.sroa.11.0.copyload.i, %_RNCINvMs4_NtCs7ewmRfXve8r_4http7requestNtB8_7Builder3uriNtNtBa_3uri3UriE0Csa7TLgTh0CeG_9ssmanager.exit.i.i.i ] ; 3 uses
  %.sroa.5.sroa.24.0.i.i.i = phi ptr [ %.sroa.5.sroa.0.i.i.sroa.15.0.copyload.i, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNCINvMs4_NtCs7ewmRfXve8r_4http7requestNtBK_7Builder3uriNtNtBM_3uri3UriE0ECsa7TLgTh0CeG_9ssmanager.exit.i.i.i ], [ %.sroa.10.sroa.10.0.copyload.i, %_RNCINvMs4_NtCs7ewmRfXve8r_4http7requestNtB8_7Builder3uriNtNtBa_3uri3UriE0Csa7TLgTh0CeG_9ssmanager.exit.i.i.i ] ; 3 uses
  %.sroa.5.sroa.22.0.i.i.i = phi i64 [ %.sroa.5.sroa.0.i.i.sroa.14.0.copyload.i, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNCINvMs4_NtCs7ewmRfXve8r_4http7requestNtBK_7Builder3uriNtNtBM_3uri3UriE0ECsa7TLgTh0CeG_9ssmanager.exit.i.i.i ], [ %.sroa.10.sroa.9.0.copyload.i, %_RNCINvMs4_NtCs7ewmRfXve8r_4http7requestNtB8_7Builder3uriNtNtBa_3uri3UriE0Csa7TLgTh0CeG_9ssmanager.exit.i.i.i ] ; 3 uses
  %.sroa.5.sroa.20.0.i.i.i = phi ptr [ %.sroa.5.sroa.0.i.i.sroa.13.0.copyload.i, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNCINvMs4_NtCs7ewmRfXve8r_4http7requestNtBK_7Builder3uriNtNtBM_3uri3UriE0ECsa7TLgTh0CeG_9ssmanager.exit.i.i.i ], [ %.sroa.10.sroa.8.0.copyload.i, %_RNCINvMs4_NtCs7ewmRfXve8r_4http7requestNtB8_7Builder3uriNtNtBa_3uri3UriE0Csa7TLgTh0CeG_9ssmanager.exit.i.i.i ] ; 3 uses
  %.sroa.5.sroa.18.0.i.i.i = phi ptr [ %.sroa.5.sroa.0.i.i.sroa.12.0.copyload.i, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNCINvMs4_NtCs7ewmRfXve8r_4http7requestNtBK_7Builder3uriNtNtBM_3uri3UriE0ECsa7TLgTh0CeG_9ssmanager.exit.i.i.i ], [ %.sroa.10.sroa.7.0.copyload.i, %_RNCINvMs4_NtCs7ewmRfXve8r_4http7requestNtB8_7Builder3uriNtNtBa_3uri3UriE0Csa7TLgTh0CeG_9ssmanager.exit.i.i.i ] ; 3 uses
  %.sroa.5.sroa.16.0.i.i.i = phi ptr [ %.sroa.5.sroa.0.i.i.sroa.11.0.copyload.i, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNCINvMs4_NtCs7ewmRfXve8r_4http7requestNtBK_7Builder3uriNtNtBM_3uri3UriE0ECsa7TLgTh0CeG_9ssmanager.exit.i.i.i ], [ %.sroa.10.sroa.6.0.copyload.i, %_RNCINvMs4_NtCs7ewmRfXve8r_4http7requestNtB8_7Builder3uriNtNtBa_3uri3UriE0Csa7TLgTh0CeG_9ssmanager.exit.i.i.i ] ; 3 uses
  %.sroa.5.sroa.14.0.i.i.i = phi i64 [ %.sroa.5.sroa.0.i.i.sroa.10.0.copyload.i, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNCINvMs4_NtCs7ewmRfXve8r_4http7requestNtBK_7Builder3uriNtNtBM_3uri3UriE0ECsa7TLgTh0CeG_9ssmanager.exit.i.i.i ], [ %.sroa.10.sroa.5.0.copyload.i, %_RNCINvMs4_NtCs7ewmRfXve8r_4http7requestNtB8_7Builder3uriNtNtBa_3uri3UriE0Csa7TLgTh0CeG_9ssmanager.exit.i.i.i ] ; 3 uses
  %.sroa.5.sroa.12.0.i.i.i = phi ptr [ %.sroa.5.sroa.0.i.i.sroa.9.0.copyload.i, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNCINvMs4_NtCs7ewmRfXve8r_4http7requestNtBK_7Builder3uriNtNtBM_3uri3UriE0ECsa7TLgTh0CeG_9ssmanager.exit.i.i.i ], [ %.sroa.10.sroa.4.0.copyload.i, %_RNCINvMs4_NtCs7ewmRfXve8r_4http7requestNtB8_7Builder3uriNtNtBa_3uri3UriE0Csa7TLgTh0CeG_9ssmanager.exit.i.i.i ] ; 3 uses
  %.sroa.5.sroa.10.0.i.i27.i = phi ptr [ %.sroa.5.sroa.0.i.i.sroa.8.0.copyload.i, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNCINvMs4_NtCs7ewmRfXve8r_4http7requestNtBK_7Builder3uriNtNtBM_3uri3UriE0ECsa7TLgTh0CeG_9ssmanager.exit.i.i.i ], [ %.sroa.10.sroa.0.0.copyload.i, %_RNCINvMs4_NtCs7ewmRfXve8r_4http7requestNtB8_7Builder3uriNtNtBa_3uri3UriE0Csa7TLgTh0CeG_9ssmanager.exit.i.i.i ] ; 3 uses
  %.sroa.5.sroa.8.0.i.i28.i = phi ptr [ %.sroa.5.sroa.0.i.i.sroa.7.0.copyload.i, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNCINvMs4_NtCs7ewmRfXve8r_4http7requestNtBK_7Builder3uriNtNtBM_3uri3UriE0ECsa7TLgTh0CeG_9ssmanager.exit.i.i.i ], [ %.sroa.7137.0.copyload.i, %_RNCINvMs4_NtCs7ewmRfXve8r_4http7requestNtB8_7Builder3uriNtNtBa_3uri3UriE0Csa7TLgTh0CeG_9ssmanager.exit.i.i.i ] ; 3 uses
  %.sroa.5.sroa.4.0.i.i29.i = phi i8 [ %.sroa.5.sroa.0.i.i.sroa.5.0.copyload.i, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNCINvMs4_NtCs7ewmRfXve8r_4http7requestNtBK_7Builder3uriNtNtBM_3uri3UriE0ECsa7TLgTh0CeG_9ssmanager.exit.i.i.i ], [ %i.afq, %_RNCINvMs4_NtCs7ewmRfXve8r_4http7requestNtB8_7Builder3uriNtNtBa_3uri3UriE0Csa7TLgTh0CeG_9ssmanager.exit.i.i.i ] ; 3 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(87) %.sroa.6144.i, ptr noundef nonnull align 1 dereferenceable(87) %.sroa.5.sroa.0.i.i15.sroa.5.i, i64 87, i1 false), !noalias !31669
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %.sroa.9.i, ptr noundef nonnull align 1 dereferenceable(7) %.sroa.5.sroa.6.i.i16.i, i64 7, i1 false), !noalias !31669
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %.sroa.20.sroa.5.i, ptr noundef nonnull align 1 dereferenceable(7) %.sroa.5.sroa.28.i.i.sroa.5.i, i64 7, i1 false), !noalias !31669
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.20.sroa.8.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.5.sroa.28.i.i.sroa.11.i, i64 16, i1 false), !noalias !31669
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.5.sroa.0.i.i15.sroa.5.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.5.sroa.6.i.i16.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.5.sroa.28.i.i.sroa.5.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.5.sroa.28.i.i.sroa.11.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.4163.sroa.5.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.22.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.25.i)
  call void @llvm.experimental.noalias.scope.decl(metadata !31670)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.9.i.i.sroa.0.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.9.i.i.sroa.6.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.9.i.i.sroa.18.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.9.i.i.sroa.21.i)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(87) %.sroa.9.i.i.sroa.0.i, ptr noundef nonnull align 1 dereferenceable(87) %.sroa.6144.i, i64 87, i1 false), !noalias !31671
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %.sroa.9.i.i.sroa.6.i, ptr noundef nonnull align 1 dereferenceable(7) %.sroa.9.i, i64 7, i1 false), !noalias !31671
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %.sroa.9.i.i.sroa.18.i, ptr noundef nonnull align 1 dereferenceable(7) %.sroa.20.sroa.5.i, i64 7, i1 false), !noalias !31671
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %.sroa.9.i.i.sroa.21.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.20.sroa.8.i, i64 16, i1 false), !noalias !31671
  br i1 %i.afw, label %_RINvMs4_NtCs7ewmRfXve8r_4http7requestNtB6_7Builder6headerNtNtNtB8_6header4name10HeaderNameRNtNtCsgCecv3eZDcN_5alloc6string6StringECsa7TLgTh0CeG_9ssmanager.exit.i, label %bb.gh

bb.gh:                                            ; preds = %_RINvMs4_NtCs7ewmRfXve8r_4http7requestNtB6_7Builder3uriNtNtB8_3uri3UriECsa7TLgTh0CeG_9ssmanager.exit.i
  %.sroa.526.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.ap, i64 9 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ap), !noalias !31672
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(87) %.sroa.526.0..sroa_idx.i.i.i, ptr noundef nonnull align 1 dereferenceable(87) %.sroa.6144.i, i64 87, i1 false), !noalias !31671
  %.sroa.8145.9..sroa.526.0..sroa_idx.i.i.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ap, i64 96 ; 2 uses
  store i8 %.sroa.5.sroa.4.0.i.i29.i, ptr %.sroa.8145.9..sroa.526.0..sroa_idx.i.i.sroa_idx.i, align 8, !noalias !31671
  %.sroa.9.9..sroa.526.0..sroa_idx.i.i.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ap, i64 97 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %.sroa.9.9..sroa.526.0..sroa_idx.i.i.sroa_idx.i, ptr noundef nonnull align 1 dereferenceable(7) %.sroa.9.i, i64 7, i1 false), !noalias !31671
  %.sroa.10.9..sroa.526.0..sroa_idx.i.i.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ap, i64 104 ; 2 uses
  store ptr %.sroa.5.sroa.8.0.i.i28.i, ptr %.sroa.10.9..sroa.526.0..sroa_idx.i.i.sroa_idx.i, align 8, !noalias !31671
  %.sroa.11148.9..sroa.526.0..sroa_idx.i.i.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ap, i64 112 ; 2 uses
  store ptr %.sroa.5.sroa.10.0.i.i27.i, ptr %.sroa.11148.9..sroa.526.0..sroa_idx.i.i.sroa_idx.i, align 8, !noalias !31671
  %.sroa.12150.9..sroa.526.0..sroa_idx.i.i.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ap, i64 120 ; 2 uses
  store ptr %.sroa.5.sroa.12.0.i.i.i, ptr %.sroa.12150.9..sroa.526.0..sroa_idx.i.i.sroa_idx.i, align 8, !noalias !31671
  %.sroa.13152.9..sroa.526.0..sroa_idx.i.i.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ap, i64 128 ; 2 uses
  store i64 %.sroa.5.sroa.14.0.i.i.i, ptr %.sroa.13152.9..sroa.526.0..sroa_idx.i.i.sroa_idx.i, align 8, !noalias !31671
  %.sroa.14154.9..sroa.526.0..sroa_idx.i.i.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ap, i64 136 ; 2 uses
  store ptr %.sroa.5.sroa.16.0.i.i.i, ptr %.sroa.14154.9..sroa.526.0..sroa_idx.i.i.sroa_idx.i, align 8, !noalias !31671
  %.sroa.15156.9..sroa.526.0..sroa_idx.i.i.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ap, i64 144 ; 2 uses
  store ptr %.sroa.5.sroa.18.0.i.i.i, ptr %.sroa.15156.9..sroa.526.0..sroa_idx.i.i.sroa_idx.i, align 8, !noalias !31671
  %.sroa.16.9..sroa.526.0..sroa_idx.i.i.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ap, i64 152 ; 2 uses
  store ptr %.sroa.5.sroa.20.0.i.i.i, ptr %.sroa.16.9..sroa.526.0..sroa_idx.i.i.sroa_idx.i, align 8, !noalias !31671
  %.sroa.17.9..sroa.526.0..sroa_idx.i.i.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ap, i64 160 ; 2 uses
  store i64 %.sroa.5.sroa.22.0.i.i.i, ptr %.sroa.17.9..sroa.526.0..sroa_idx.i.i.sroa_idx.i, align 8, !noalias !31671
  %.sroa.18.9..sroa.526.0..sroa_idx.i.i.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ap, i64 168 ; 2 uses
  store ptr %.sroa.5.sroa.24.0.i.i.i, ptr %.sroa.18.9..sroa.526.0..sroa_idx.i.i.sroa_idx.i, align 8, !noalias !31671
  %.sroa.19.9..sroa.526.0..sroa_idx.i.i.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ap, i64 176 ; 2 uses
  store i64 %.sroa.5.sroa.26.0.i.i.i, ptr %.sroa.19.9..sroa.526.0..sroa_idx.i.i.sroa_idx.i, align 8, !noalias !31671
  %.sroa.20.9..sroa.526.0..sroa_idx.i.i.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ap, i64 184 ; 2 uses
  store i8 %.sroa.5.sroa.4.0.i.i.i, ptr %.sroa.20.9..sroa.526.0..sroa_idx.i.i.sroa_idx.i, align 8, !noalias !31671
  %.sroa.20.sroa.5.0..sroa.20.9..sroa.526.0..sroa_idx.i.i.sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ap, i64 185 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %.sroa.20.sroa.5.0..sroa.20.9..sroa.526.0..sroa_idx.i.i.sroa_idx.sroa_idx.i, ptr noundef nonnull align 1 dereferenceable(7) %.sroa.20.sroa.5.i, i64 7, i1 false), !noalias !31671
  %.sroa.20.sroa.6.0..sroa.20.9..sroa.526.0..sroa_idx.i.i.sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ap, i64 192 ; 2 uses
  store ptr %.sroa.5.sroa.8.0.i.i.i, ptr %.sroa.20.sroa.6.0..sroa.20.9..sroa.526.0..sroa_idx.i.i.sroa_idx.sroa_idx.i, align 8, !noalias !31671
  %.sroa.20.sroa.7.0..sroa.20.9..sroa.526.0..sroa_idx.i.i.sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ap, i64 200 ; 2 uses
  store i64 %.sroa.5.sroa.10.0.i.i.i, ptr %.sroa.20.sroa.7.0..sroa.20.9..sroa.526.0..sroa_idx.i.i.sroa_idx.sroa_idx.i, align 8, !noalias !31671
  %.sroa.20.sroa.8.0..sroa.20.9..sroa.526.0..sroa_idx.i.i.sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ap, i64 208 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.20.sroa.8.0..sroa.20.9..sroa.526.0..sroa_idx.i.i.sroa_idx.sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.20.sroa.8.i, i64 16, i1 false), !noalias !31671
  store i64 %.sroa.0.0.copyload.i.i.i, ptr %i.ap, align 8, !noalias !31672
  %.sroa.425.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.ap, i64 8 ; 2 uses
  store i8 %.sroa.5.sroa.0.i.i.sroa.0.sroa.0.0.copyload.i, ptr %.sroa.425.0..sroa_idx.i.i.i, align 8, !noalias !31672
  call void @llvm.experimental.noalias.scope.decl(metadata !31673)
  call void @llvm.experimental.noalias.scope.decl(metadata !31674)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.am), !noalias !31672
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ao), !noalias !31672
  %i.agy = getelementptr inbounds nuw i8, ptr %i.am, i64 2
  %i.agz = getelementptr inbounds nuw i8, ptr %i.am, i64 33
  %.val.i.i.i.i16 = load ptr, ptr %i.afo, align 8, !alias.scope !31670, !noalias !31675, !nonnull !80, !noundef !80 ; 7 uses
  %.val35.i.i.i.i = load i64, ptr %i.afp, align 8, !alias.scope !31670, !noalias !31675, !noundef !80 ; 10 uses
  %i.aha = getelementptr inbounds nuw i8, ptr %.val.i.i.i.i16, i64 %.val35.i.i.i.i
  %i.ahb = icmp samesign eq i64 %.val35.i.i.i.i, 0
  br i1 %i.ahb, label %bb.gk, label %iter.check

iter.check:                                       ; preds = %bb.gh
  %min.iters.check = icmp ult i64 %.val35.i.i.i.i, 8
  br i1 %min.iters.check, label %.lr.ph.i.i.i.i.i.i.i.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check434 = icmp ult i64 %.val35.i.i.i.i, 32
  br i1 %min.iters.check434, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.ahc = and i64 %.val35.i.i.i.i, 24
  %n.vec = and i64 %.val35.i.i.i.i, -32           ; 4 uses
  %i.ahd = getelementptr i8, ptr %.val.i.i.i.i16, i64 %n.vec
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.phi = phi <16 x i1> [ zeroinitializer, %vector.ph ], [ %i.aho, %vector.body ]
  %vec.phi435 = phi <16 x i1> [ zeroinitializer, %vector.ph ], [ %i.ahq, %vector.body ]
  %next.gep = getelementptr i8, ptr %.val.i.i.i.i16, i64 %index ; 2 uses
  %i.ahe = getelementptr i8, ptr %next.gep, i64 16
  %wide.load = load <16 x i8>, ptr %next.gep, align 1, !alias.scope !31676, !noalias !31677 ; 3 uses
  %wide.load436 = load <16 x i8>, ptr %i.ahe, align 1, !alias.scope !31676, !noalias !31677 ; 3 uses
  %i.ahf = icmp ult <16 x i8> %wide.load, splat (i8 32)
  %i.ahg = icmp ult <16 x i8> %wide.load436, splat (i8 32)
  %i.ahh = icmp eq <16 x i8> %wide.load, splat (i8 127)
  %i.ahi = icmp eq <16 x i8> %wide.load436, splat (i8 127)
  %i.ahj = or <16 x i1> %i.ahf, %i.ahh
  %i.ahk = or <16 x i1> %i.ahg, %i.ahi
  %i.ahl = icmp ne <16 x i8> %wide.load, splat (i8 9)
  %i.ahm = icmp ne <16 x i8> %wide.load436, splat (i8 9)
  %i.ahn = and <16 x i1> %i.ahj, %i.ahl
  %i.aho = or <16 x i1> %vec.phi, %i.ahn          ; 2 uses
  %i.ahp = and <16 x i1> %i.ahk, %i.ahm
  %i.ahq = or <16 x i1> %vec.phi435, %i.ahp       ; 2 uses
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %i.ahr = icmp eq i64 %index.next, %n.vec
  br i1 %i.ahr, label %middle.block, label %vector.body, !llvm.loop !31146

middle.block:                                     ; preds = %vector.body
  %bin.rdx = or <16 x i1> %i.ahq, %i.aho
  %i.ahs = bitcast <16 x i1> %bin.rdx to i16
  %i.aht = icmp ne i16 %i.ahs, 0                  ; 3 uses
  %cmp.n = icmp eq i64 %.val35.i.i.i.i, %n.vec
  br i1 %cmp.n, label %._crit_edge.i.i.i.i.i.i.i, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.ahc, 0
  br i1 %min.epilog.iters.check, label %.lr.ph.i.i.i.i.i.i.i.preheader, label %vec.epilog.ph, !prof !202

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %bc.merge.rdx = phi i1 [ %i.aht, %vec.epilog.iter.check ], [ false, %vector.main.loop.iter.check ]
  %n.vec437 = and i64 %.val35.i.i.i.i, -8         ; 3 uses
  %i.ahu = getelementptr i8, ptr %.val.i.i.i.i16, i64 %n.vec437
  %i.ahv = insertelement <8 x i1> <i1 poison, i1 false, i1 false, i1 false, i1 false, i1 false, i1 false, i1 false>, i1 %bc.merge.rdx, i64 0
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index438 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next442, %vec.epilog.vector.body ] ; 2 uses
  %vec.phi439 = phi <8 x i1> [ %i.ahv, %vec.epilog.ph ], [ %i.aib, %vec.epilog.vector.body ]
  %next.gep440 = getelementptr i8, ptr %.val.i.i.i.i16, i64 %index438
  %wide.load441 = load <8 x i8>, ptr %next.gep440, align 1, !alias.scope !31676, !noalias !31677 ; 3 uses
  %i.ahw = icmp ult <8 x i8> %wide.load441, splat (i8 32)
  %i.ahx = icmp eq <8 x i8> %wide.load441, splat (i8 127)
  %i.ahy = or <8 x i1> %i.ahw, %i.ahx
  %i.ahz = icmp ne <8 x i8> %wide.load441, splat (i8 9)
  %i.aia = and <8 x i1> %i.ahy, %i.ahz
  %i.aib = or <8 x i1> %vec.phi439, %i.aia        ; 2 uses
  %index.next442 = add nuw i64 %index438, 8       ; 2 uses
  %i.aic = icmp eq i64 %index.next442, %n.vec437
  br i1 %i.aic, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !31147

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %i.aid = bitcast <8 x i1> %i.aib to i8
  %i.aie = icmp ne i8 %i.aid, 0                   ; 2 uses
  %cmp.n443 = icmp eq i64 %.val35.i.i.i.i, %n.vec437
  br i1 %cmp.n443, label %._crit_edge.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.i.i.preheader:                   ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.sroa.0.08.i.i.i.i.i.i.i.ph = phi i1 [ false, %iter.check ], [ %i.aht, %vec.epilog.iter.check ], [ %i.aie, %vec.epilog.middle.block ]
  %.sroa.02.07.i.i.i.i.i.i.i.ph = phi ptr [ %.val.i.i.i.i16, %iter.check ], [ %i.ahd, %vec.epilog.iter.check ], [ %i.ahu, %vec.epilog.middle.block ]
  br label %.lr.ph.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i:                             ; preds = %.lr.ph.i.i.i.i.i.i.i.preheader, %bb.gj
  %.sroa.0.08.i.i.i.i.i.i.i = phi i1 [ %.sroa.04.0.i.i.i.i.i.i.i, %bb.gj ], [ %.sroa.0.08.i.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.i.preheader ] ; 2 uses
  %.sroa.02.07.i.i.i.i.i.i.i = phi ptr [ %i.aif, %bb.gj ], [ %.sroa.02.07.i.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.i.preheader ] ; 2 uses
  %i.aif = getelementptr inbounds nuw i8, ptr %.sroa.02.07.i.i.i.i.i.i.i, i64 1 ; 2 uses
  %i.aig = load i8, ptr %.sroa.02.07.i.i.i.i.i.i.i, align 1, !alias.scope !31676, !noalias !31677, !noundef !80 ; 3 uses
  %i.aih = icmp ult i8 %i.aig, 32
  %i.aii = icmp eq i8 %i.aig, 127
  %or.cond.i.i.i.i.i.i.i = or i1 %i.aih, %i.aii
  br i1 %or.cond.i.i.i.i.i.i.i, label %bb.gi, label %bb.gj

._crit_edge.i.i.i.i.i.i.i:                        ; preds = %bb.gj, %vec.epilog.middle.block, %middle.block
  %.sroa.04.0.i.i.i.i.i.i.i.lcssa = phi i1 [ %i.aie, %vec.epilog.middle.block ], [ %i.aht, %middle.block ], [ %.sroa.04.0.i.i.i.i.i.i.i, %bb.gj ]
  br i1 %.sroa.04.0.i.i.i.i.i.i.i.lcssa, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtCs7ewmRfXve8r_4http6header4name10HeaderNameECsa7TLgTh0CeG_9ssmanager.exit.i.i.i.i, label %bb.gk

bb.gi:                                            ; preds = %.lr.ph.i.i.i.i.i.i.i
  %i.aij = icmp ne i8 %i.aig, 9
  %i.aik = or i1 %.sroa.0.08.i.i.i.i.i.i.i, %i.aij
  br label %bb.gj

bb.gj:                                            ; preds = %bb.gi, %.lr.ph.i.i.i.i.i.i.i
  %.sroa.04.0.i.i.i.i.i.i.i = phi i1 [ %i.aik, %bb.gi ], [ %.sroa.0.08.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i ] ; 2 uses
  %i.ail = icmp eq ptr %i.aif, %i.aha
  br i1 %i.ail, label %._crit_edge.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i, !llvm.loop !31148

bb.gk:                                            ; preds = %._crit_edge.i.i.i.i.i.i.i, %bb.gh
  call void @_RNvMNtCsknai52m1gBp_5bytes5bytesNtB2_5Bytes15copy_from_slice(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(address) dereferenceable(40) %i.am, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.val.i.i.i.i16, i64 noundef range(i64 0, -9223372036854775808) %.val35.i.i.i.i) #46, !noalias !31678
  %.sroa.029.0.copyload.i.i.i.i = load i8, ptr %i.am, align 8, !noalias !31679
  %.sroa.4.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.am, i64 1
  %.sroa.4.0.copyload.i.i.i.i = load i8, ptr %.sroa.4.0..sroa_idx.i.i.i.i, align 1, !noalias !31679
  store i8 %.sroa.029.0.copyload.i.i.i.i, ptr %i.ao, align 8, !noalias !31679
  %.sroa.7.0..sroa_idx7.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.ao, i64 1
  store i8 %.sroa.4.0.copyload.i.i.i.i, ptr %.sroa.7.0..sroa_idx7.i.i.i.i, align 1, !noalias !31679
  %.sroa.9.0..sroa_idx9.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.ao, i64 2
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(30) %.sroa.9.0..sroa_idx9.i.i.i.i, ptr noundef nonnull align 2 dereferenceable(30) %i.agy, i64 30, i1 false), !noalias !31679
  %.sroa.910.0..sroa_idx11.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.ao, i64 32
  store i8 0, ptr %.sroa.910.0..sroa_idx11.i.i.i.i, align 8, !noalias !31679
  %.sroa.10.0..sroa_idx13.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.ao, i64 33
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %.sroa.10.0..sroa_idx13.i.i.i.i, ptr noundef nonnull align 1 dereferenceable(7) %i.agz, i64 7, i1 false), !noalias !31679
  call void @llvm.lifetime.start.p0(ptr nonnull %i.an), !noalias !31679
  store ptr null, ptr %i.an, align 8, !noalias !31679
  %.sroa.6.0..sroa_idx38.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.an, i64 8
  store ptr inttoptr (i64 38 to ptr), ptr %.sroa.6.0..sroa_idx38.i.i.i.i, align 8, !noalias !31679
  %.sroa.7.0..sroa_idx40.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.an, i64 16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.7.0..sroa_idx40.i.i.i.i, i8 0, i64 16, i1 false), !noalias !31633
  %i.aim = call fastcc noundef i8 @_RINvMs0_NtNtCs7ewmRfXve8r_4http6header3mapNtB6_9HeaderMap11try_append2NtNtB8_4name10HeaderNameECsa7TLgTh0CeG_9ssmanager(ptr noalias nofree noundef nonnull align 8 dereferenceable(224) %i.ap, ptr noalias nofree noundef align 8 captures(address) dereferenceable(32) %i.an, ptr noalias nofree noundef align 8 captures(address) dereferenceable(40) %i.ao) #54, !noalias !31680
  call void @llvm.lifetime.end.p0(ptr nonnull %i.an), !noalias !31679
  %i.ain = icmp eq i8 %i.aim, 2
  br i1 %i.ain, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtCs7ewmRfXve8r_4http6header4name10HeaderNameECsa7TLgTh0CeG_9ssmanager.exit.i.i.i.i, label %bb.gl

bb.gl:                                            ; preds = %bb.gk
  %.sroa.0.0.copyload3.i.i.i = load i64, ptr %i.ap, align 8, !alias.scope !31681, !noalias !31682
  %.sroa.7.0.copyload9.i.i.i = load i8, ptr %.sroa.425.0..sroa_idx.i.i.i, align 8, !alias.scope !31681, !noalias !31682
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(87) %.sroa.9.i.i.sroa.0.i, ptr noundef nonnull align 1 dereferenceable(87) %.sroa.526.0..sroa_idx.i.i.i, i64 87, i1 false), !alias.scope !31681, !noalias !31682
  %.sroa.9.i.i.sroa.5.0.copyload.i = load i8, ptr %.sroa.8145.9..sroa.526.0..sroa_idx.i.i.sroa_idx.i, align 8, !alias.scope !31681, !noalias !31682
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %.sroa.9.i.i.sroa.6.i, ptr noundef nonnull align 1 dereferenceable(7) %.sroa.9.9..sroa.526.0..sroa_idx.i.i.sroa_idx.i, i64 7, i1 false), !alias.scope !31681, !noalias !31682
  %.sroa.9.i.i.sroa.7.0.copyload.i = load ptr, ptr %.sroa.10.9..sroa.526.0..sroa_idx.i.i.sroa_idx.i, align 8, !alias.scope !31681, !noalias !31682
  %.sroa.9.i.i.sroa.8.0.copyload.i = load ptr, ptr %.sroa.11148.9..sroa.526.0..sroa_idx.i.i.sroa_idx.i, align 8, !alias.scope !31681, !noalias !31682
  %.sroa.9.i.i.sroa.9.0.copyload.i = load ptr, ptr %.sroa.12150.9..sroa.526.0..sroa_idx.i.i.sroa_idx.i, align 8, !alias.scope !31681, !noalias !31682
  %.sroa.9.i.i.sroa.10.0.copyload.i = load i64, ptr %.sroa.13152.9..sroa.526.0..sroa_idx.i.i.sroa_idx.i, align 8, !alias.scope !31681, !noalias !31682
  %.sroa.9.i.i.sroa.11.0.copyload.i = load ptr, ptr %.sroa.14154.9..sroa.526.0..sroa_idx.i.i.sroa_idx.i, align 8, !alias.scope !31681, !noalias !31682
  %.sroa.9.i.i.sroa.12.0.copyload.i = load ptr, ptr %.sroa.15156.9..sroa.526.0..sroa_idx.i.i.sroa_idx.i, align 8, !alias.scope !31681, !noalias !31682
  %.sroa.9.i.i.sroa.13.0.copyload.i = load ptr, ptr %.sroa.16.9..sroa.526.0..sroa_idx.i.i.sroa_idx.i, align 8, !alias.scope !31681, !noalias !31682
  %.sroa.9.i.i.sroa.14.0.copyload.i = load i64, ptr %.sroa.17.9..sroa.526.0..sroa_idx.i.i.sroa_idx.i, align 8, !alias.scope !31681, !noalias !31682
  %.sroa.9.i.i.sroa.15.0.copyload.i = load ptr, ptr %.sroa.18.9..sroa.526.0..sroa_idx.i.i.sroa_idx.i, align 8, !alias.scope !31681, !noalias !31682
  %.sroa.9.i.i.sroa.16.0.copyload.i = load i64, ptr %.sroa.19.9..sroa.526.0..sroa_idx.i.i.sroa_idx.i, align 8, !alias.scope !31681, !noalias !31682
  %.sroa.9.i.i.sroa.17.0.copyload.i = load i8, ptr %.sroa.20.9..sroa.526.0..sroa_idx.i.i.sroa_idx.i, align 8, !alias.scope !31681, !noalias !31682
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %.sroa.9.i.i.sroa.18.i, ptr noundef nonnull align 1 dereferenceable(7) %.sroa.20.sroa.5.0..sroa.20.9..sroa.526.0..sroa_idx.i.i.sroa_idx.sroa_idx.i, i64 7, i1 false), !alias.scope !31681, !noalias !31682
  %.sroa.9.i.i.sroa.19.0.copyload.i = load ptr, ptr %.sroa.20.sroa.6.0..sroa.20.9..sroa.526.0..sroa_idx.i.i.sroa_idx.sroa_idx.i, align 8, !alias.scope !31681, !noalias !31682
  %.sroa.9.i.i.sroa.20.0.copyload.i = load i64, ptr %.sroa.20.sroa.7.0..sroa.20.9..sroa.526.0..sroa_idx.i.i.sroa_idx.sroa_idx.i, align 8, !alias.scope !31681, !noalias !31682
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %.sroa.9.i.i.sroa.21.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.20.sroa.8.0..sroa.20.9..sroa.526.0..sroa_idx.i.i.sroa_idx.sroa_idx.i, i64 16, i1 false), !alias.scope !31681, !noalias !31682
  br label %_RNCINvMs4_NtCs7ewmRfXve8r_4http7requestNtB8_7Builder6headerNtNtNtBa_6header4name10HeaderNameRNtNtCsgCecv3eZDcN_5alloc6string6StringE0Csa7TLgTh0CeG_9ssmanager.exit.i.i.i

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtCs7ewmRfXve8r_4http6header4name10HeaderNameECsa7TLgTh0CeG_9ssmanager.exit.i.i.i.i: ; preds = %bb.gk, %._crit_edge.i.i.i.i.i.i.i
  %.sroa.7.1.i.i.i = phi i8 [ 6, %bb.gk ], [ 5, %._crit_edge.i.i.i.i.i.i.i ]
  call fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCs7ewmRfXve8r_4http7request5PartsECsa7TLgTh0CeG_9ssmanager(ptr noalias nofree noundef nonnull align 8 dereferenceable(224) %i.ap) #46, !noalias !31680
  br label %_RNCINvMs4_NtCs7ewmRfXve8r_4http7requestNtB8_7Builder6headerNtNtNtBa_6header4name10HeaderNameRNtNtCsgCecv3eZDcN_5alloc6string6StringE0Csa7TLgTh0CeG_9ssmanager.exit.i.i.i

_RNCINvMs4_NtCs7ewmRfXve8r_4http7requestNtB8_7Builder6headerNtNtNtBa_6header4name10HeaderNameRNtNtCsgCecv3eZDcN_5alloc6string6StringE0Csa7TLgTh0CeG_9ssmanager.exit.i.i.i: ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtCs7ewmRfXve8r_4http6header4name10HeaderNameECsa7TLgTh0CeG_9ssmanager.exit.i.i.i.i, %bb.gl
  %.sroa.9.i.i.sroa.5.0.i = phi i8 [ %.sroa.5.sroa.4.0.i.i29.i, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtCs7ewmRfXve8r_4http6header4name10HeaderNameECsa7TLgTh0CeG_9ssmanager.exit.i.i.i.i ], [ %.sroa.9.i.i.sroa.5.0.copyload.i, %bb.gl ]
  %.sroa.9.i.i.sroa.7.0.i = phi ptr [ %.sroa.5.sroa.8.0.i.i28.i, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtCs7ewmRfXve8r_4http6header4name10HeaderNameECsa7TLgTh0CeG_9ssmanager.exit.i.i.i.i ], [ %.sroa.9.i.i.sroa.7.0.copyload.i, %bb.gl ]
  %.sroa.9.i.i.sroa.8.0.i = phi ptr [ %.sroa.5.sroa.10.0.i.i27.i, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtCs7ewmRfXve8r_4http6header4name10HeaderNameECsa7TLgTh0CeG_9ssmanager.exit.i.i.i.i ], [ %.sroa.9.i.i.sroa.8.0.copyload.i, %bb.gl ]
  %.sroa.9.i.i.sroa.9.0.i = phi ptr [ %.sroa.5.sroa.12.0.i.i.i, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtCs7ewmRfXve8r_4http6header4name10HeaderNameECsa7TLgTh0CeG_9ssmanager.exit.i.i.i.i ], [ %.sroa.9.i.i.sroa.9.0.copyload.i, %bb.gl ]
  %.sroa.9.i.i.sroa.10.0.i = phi i64 [ %.sroa.5.sroa.14.0.i.i.i, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtCs7ewmRfXve8r_4http6header4name10HeaderNameECsa7TLgTh0CeG_9ssmanager.exit.i.i.i.i ], [ %.sroa.9.i.i.sroa.10.0.copyload.i, %bb.gl ]
  %.sroa.9.i.i.sroa.11.0.i = phi ptr [ %.sroa.5.sroa.16.0.i.i.i, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtCs7ewmRfXve8r_4http6header4name10HeaderNameECsa7TLgTh0CeG_9ssmanager.exit.i.i.i.i ], [ %.sroa.9.i.i.sroa.11.0.copyload.i, %bb.gl ]
  %.sroa.9.i.i.sroa.12.0.i = phi ptr [ %.sroa.5.sroa.18.0.i.i.i, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtCs7ewmRfXve8r_4http6header4name10HeaderNameECsa7TLgTh0CeG_9ssmanager.exit.i.i.i.i ], [ %.sroa.9.i.i.sroa.12.0.copyload.i, %bb.gl ]
  %.sroa.9.i.i.sroa.13.0.i = phi ptr [ %.sroa.5.sroa.20.0.i.i.i, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtCs7ewmRfXve8r_4http6header4name10HeaderNameECsa7TLgTh0CeG_9ssmanager.exit.i.i.i.i ], [ %.sroa.9.i.i.sroa.13.0.copyload.i, %bb.gl ]
  %.sroa.9.i.i.sroa.14.0.i = phi i64 [ %.sroa.5.sroa.22.0.i.i.i, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtCs7ewmRfXve8r_4http6header4name10HeaderNameECsa7TLgTh0CeG_9ssmanager.exit.i.i.i.i ], [ %.sroa.9.i.i.sroa.14.0.copyload.i, %bb.gl ]
  %.sroa.9.i.i.sroa.15.0.i = phi ptr [ %.sroa.5.sroa.24.0.i.i.i, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtCs7ewmRfXve8r_4http6header4name10HeaderNameECsa7TLgTh0CeG_9ssmanager.exit.i.i.i.i ], [ %.sroa.9.i.i.sroa.15.0.copyload.i, %bb.gl ]
  %.sroa.9.i.i.sroa.16.0.i = phi i64 [ %.sroa.5.sroa.26.0.i.i.i, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtCs7ewmRfXve8r_4http6header4name10HeaderNameECsa7TLgTh0CeG_9ssmanager.exit.i.i.i.i ], [ %.sroa.9.i.i.sroa.16.0.copyload.i, %bb.gl ]
  %.sroa.9.i.i.sroa.17.0.i = phi i8 [ %.sroa.5.sroa.4.0.i.i.i, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtCs7ewmRfXve8r_4http6header4name10HeaderNameECsa7TLgTh0CeG_9ssmanager.exit.i.i.i.i ], [ %.sroa.9.i.i.sroa.17.0.copyload.i, %bb.gl ]
  %.sroa.9.i.i.sroa.19.0.i = phi ptr [ %.sroa.5.sroa.8.0.i.i.i, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtCs7ewmRfXve8r_4http6header4name10HeaderNameECsa7TLgTh0CeG_9ssmanager.exit.i.i.i.i ], [ %.sroa.9.i.i.sroa.19.0.copyload.i, %bb.gl ]
  %.sroa.9.i.i.sroa.20.0.i = phi i64 [ %.sroa.5.sroa.10.0.i.i.i, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtCs7ewmRfXve8r_4http6header4name10HeaderNameECsa7TLgTh0CeG_9ssmanager.exit.i.i.i.i ], [ %.sroa.9.i.i.sroa.20.0.copyload.i, %bb.gl ]
  %.sroa.7.2.i.i.i = phi i8 [ %.sroa.7.1.i.i.i, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtCs7ewmRfXve8r_4http6header4name10HeaderNameECsa7TLgTh0CeG_9ssmanager.exit.i.i.i.i ], [ %.sroa.7.0.copyload9.i.i.i, %bb.gl ]
  %.sroa.0.2.i.i.i = phi i64 [ -1, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtCs7ewmRfXve8r_4http6header4name10HeaderNameECsa7TLgTh0CeG_9ssmanager.exit.i.i.i.i ], [ %.sroa.0.0.copyload3.i.i.i, %bb.gl ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.am), !noalias !31672
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ao), !noalias !31672
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ap), !noalias !31672
  br label %_RINvMs4_NtCs7ewmRfXve8r_4http7requestNtB6_7Builder6headerNtNtNtB8_6header4name10HeaderNameRNtNtCsgCecv3eZDcN_5alloc6string6StringECsa7TLgTh0CeG_9ssmanager.exit.i

_RINvMs4_NtCs7ewmRfXve8r_4http7requestNtB6_7Builder6headerNtNtNtB8_6header4name10HeaderNameRNtNtCsgCecv3eZDcN_5alloc6string6StringECsa7TLgTh0CeG_9ssmanager.exit.i: ; preds = %_RNCINvMs4_NtCs7ewmRfXve8r_4http7requestNtB8_7Builder6headerNtNtNtBa_6header4name10HeaderNameRNtNtCsgCecv3eZDcN_5alloc6string6StringE0Csa7TLgTh0CeG_9ssmanager.exit.i.i.i, %_RINvMs4_NtCs7ewmRfXve8r_4http7requestNtB6_7Builder3uriNtNtB8_3uri3UriECsa7TLgTh0CeG_9ssmanager.exit.i
  %.sroa.9.i.i.sroa.5.1.i = phi i8 [ %.sroa.9.i.i.sroa.5.0.i, %_RNCINvMs4_NtCs7ewmRfXve8r_4http7requestNtB8_7Builder6headerNtNtNtBa_6header4name10HeaderNameRNtNtCsgCecv3eZDcN_5alloc6string6StringE0Csa7TLgTh0CeG_9ssmanager.exit.i.i.i ], [ %.sroa.5.sroa.4.0.i.i29.i, %_RINvMs4_NtCs7ewmRfXve8r_4http7requestNtB6_7Builder3uriNtNtB8_3uri3UriECsa7TLgTh0CeG_9ssmanager.exit.i ]
  %.sroa.9.i.i.sroa.7.1.i = phi ptr [ %.sroa.9.i.i.sroa.7.0.i, %_RNCINvMs4_NtCs7ewmRfXve8r_4http7requestNtB8_7Builder6headerNtNtNtBa_6header4name10HeaderNameRNtNtCsgCecv3eZDcN_5alloc6string6StringE0Csa7TLgTh0CeG_9ssmanager.exit.i.i.i ], [ %.sroa.5.sroa.8.0.i.i28.i, %_RINvMs4_NtCs7ewmRfXve8r_4http7requestNtB6_7Builder3uriNtNtB8_3uri3UriECsa7TLgTh0CeG_9ssmanager.exit.i ]
  %.sroa.9.i.i.sroa.8.1.i = phi ptr [ %.sroa.9.i.i.sroa.8.0.i, %_RNCINvMs4_NtCs7ewmRfXve8r_4http7requestNtB8_7Builder6headerNtNtNtBa_6header4name10HeaderNameRNtNtCsgCecv3eZDcN_5alloc6string6StringE0Csa7TLgTh0CeG_9ssmanager.exit.i.i.i ], [ %.sroa.5.sroa.10.0.i.i27.i, %_RINvMs4_NtCs7ewmRfXve8r_4http7requestNtB6_7Builder3uriNtNtB8_3uri3UriECsa7TLgTh0CeG_9ssmanager.exit.i ]
  %.sroa.9.i.i.sroa.9.1.i = phi ptr [ %.sroa.9.i.i.sroa.9.0.i, %_RNCINvMs4_NtCs7ewmRfXve8r_4http7requestNtB8_7Builder6headerNtNtNtBa_6header4name10HeaderNameRNtNtCsgCecv3eZDcN_5alloc6string6StringE0Csa7TLgTh0CeG_9ssmanager.exit.i.i.i ], [ %.sroa.5.sroa.12.0.i.i.i, %_RINvMs4_NtCs7ewmRfXve8r_4http7requestNtB6_7Builder3uriNtNtB8_3uri3UriECsa7TLgTh0CeG_9ssmanager.exit.i ]
  %.sroa.9.i.i.sroa.10.1.i = phi i64 [ %.sroa.9.i.i.sroa.10.0.i, %_RNCINvMs4_NtCs7ewmRfXve8r_4http7requestNtB8_7Builder6headerNtNtNtBa_6header4name10HeaderNameRNtNtCsgCecv3eZDcN_5alloc6string6StringE0Csa7TLgTh0CeG_9ssmanager.exit.i.i.i ], [ %.sroa.5.sroa.14.0.i.i.i, %_RINvMs4_NtCs7ewmRfXve8r_4http7requestNtB6_7Builder3uriNtNtB8_3uri3UriECsa7TLgTh0CeG_9ssmanager.exit.i ]
  %.sroa.9.i.i.sroa.11.1.i = phi ptr [ %.sroa.9.i.i.sroa.11.0.i, %_RNCINvMs4_NtCs7ewmRfXve8r_4http7requestNtB8_7Builder6headerNtNtNtBa_6header4name10HeaderNameRNtNtCsgCecv3eZDcN_5alloc6string6StringE0Csa7TLgTh0CeG_9ssmanager.exit.i.i.i ], [ %.sroa.5.sroa.16.0.i.i.i, %_RINvMs4_NtCs7ewmRfXve8r_4http7requestNtB6_7Builder3uriNtNtB8_3uri3UriECsa7TLgTh0CeG_9ssmanager.exit.i ]
  %.sroa.9.i.i.sroa.12.1.i = phi ptr [ %.sroa.9.i.i.sroa.12.0.i, %_RNCINvMs4_NtCs7ewmRfXve8r_4http7requestNtB8_7Builder6headerNtNtNtBa_6header4name10HeaderNameRNtNtCsgCecv3eZDcN_5alloc6string6StringE0Csa7TLgTh0CeG_9ssmanager.exit.i.i.i ], [ %.sroa.5.sroa.18.0.i.i.i, %_RINvMs4_NtCs7ewmRfXve8r_4http7requestNtB6_7Builder3uriNtNtB8_3uri3UriECsa7TLgTh0CeG_9ssmanager.exit.i ]
  %.sroa.9.i.i.sroa.13.1.i = phi ptr [ %.sroa.9.i.i.sroa.13.0.i, %_RNCINvMs4_NtCs7ewmRfXve8r_4http7requestNtB8_7Builder6headerNtNtNtBa_6header4name10HeaderNameRNtNtCsgCecv3eZDcN_5alloc6string6StringE0Csa7TLgTh0CeG_9ssmanager.exit.i.i.i ], [ %.sroa.5.sroa.20.0.i.i.i, %_RINvMs4_NtCs7ewmRfXve8r_4http7requestNtB6_7Builder3uriNtNtB8_3uri3UriECsa7TLgTh0CeG_9ssmanager.exit.i ]
  %.sroa.9.i.i.sroa.14.1.i = phi i64 [ %.sroa.9.i.i.sroa.14.0.i, %_RNCINvMs4_NtCs7ewmRfXve8r_4http7requestNtB8_7Builder6headerNtNtNtBa_6header4name10HeaderNameRNtNtCsgCecv3eZDcN_5alloc6string6StringE0Csa7TLgTh0CeG_9ssmanager.exit.i.i.i ], [ %.sroa.5.sroa.22.0.i.i.i, %_RINvMs4_NtCs7ewmRfXve8r_4http7requestNtB6_7Builder3uriNtNtB8_3uri3UriECsa7TLgTh0CeG_9ssmanager.exit.i ]
  %.sroa.9.i.i.sroa.15.1.i = phi ptr [ %.sroa.9.i.i.sroa.15.0.i, %_RNCINvMs4_NtCs7ewmRfXve8r_4http7requestNtB8_7Builder6headerNtNtNtBa_6header4name10HeaderNameRNtNtCsgCecv3eZDcN_5alloc6string6StringE0Csa7TLgTh0CeG_9ssmanager.exit.i.i.i ], [ %.sroa.5.sroa.24.0.i.i.i, %_RINvMs4_NtCs7ewmRfXve8r_4http7requestNtB6_7Builder3uriNtNtB8_3uri3UriECsa7TLgTh0CeG_9ssmanager.exit.i ]
  %.sroa.9.i.i.sroa.16.1.i = phi i64 [ %.sroa.9.i.i.sroa.16.0.i, %_RNCINvMs4_NtCs7ewmRfXve8r_4http7requestNtB8_7Builder6headerNtNtNtBa_6header4name10HeaderNameRNtNtCsgCecv3eZDcN_5alloc6string6StringE0Csa7TLgTh0CeG_9ssmanager.exit.i.i.i ], [ %.sroa.5.sroa.26.0.i.i.i, %_RINvMs4_NtCs7ewmRfXve8r_4http7requestNtB6_7Builder3uriNtNtB8_3uri3UriECsa7TLgTh0CeG_9ssmanager.exit.i ]
  %.sroa.9.i.i.sroa.17.1.i = phi i8 [ %.sroa.9.i.i.sroa.17.0.i, %_RNCINvMs4_NtCs7ewmRfXve8r_4http7requestNtB8_7Builder6headerNtNtNtBa_6header4name10HeaderNameRNtNtCsgCecv3eZDcN_5alloc6string6StringE0Csa7TLgTh0CeG_9ssmanager.exit.i.i.i ], [ %.sroa.5.sroa.4.0.i.i.i, %_RINvMs4_NtCs7ewmRfXve8r_4http7requestNtB6_7Builder3uriNtNtB8_3uri3UriECsa7TLgTh0CeG_9ssmanager.exit.i ]
  %.sroa.9.i.i.sroa.19.1.i = phi ptr [ %.sroa.9.i.i.sroa.19.0.i, %_RNCINvMs4_NtCs7ewmRfXve8r_4http7requestNtB8_7Builder6headerNtNtNtBa_6header4name10HeaderNameRNtNtCsgCecv3eZDcN_5alloc6string6StringE0Csa7TLgTh0CeG_9ssmanager.exit.i.i.i ], [ %.sroa.5.sroa.8.0.i.i.i, %_RINvMs4_NtCs7ewmRfXve8r_4http7requestNtB6_7Builder3uriNtNtB8_3uri3UriECsa7TLgTh0CeG_9ssmanager.exit.i ]
  %.sroa.9.i.i.sroa.20.1.i = phi i64 [ %.sroa.9.i.i.sroa.20.0.i, %_RNCINvMs4_NtCs7ewmRfXve8r_4http7requestNtB8_7Builder6headerNtNtNtBa_6header4name10HeaderNameRNtNtCsgCecv3eZDcN_5alloc6string6StringE0Csa7TLgTh0CeG_9ssmanager.exit.i.i.i ], [ %.sroa.5.sroa.10.0.i.i.i, %_RINvMs4_NtCs7ewmRfXve8r_4http7requestNtB6_7Builder3uriNtNtB8_3uri3UriECsa7TLgTh0CeG_9ssmanager.exit.i ]
  %.sroa.7.0.i.i.i = phi i8 [ %.sroa.7.2.i.i.i, %_RNCINvMs4_NtCs7ewmRfXve8r_4http7requestNtB8_7Builder6headerNtNtNtBa_6header4name10HeaderNameRNtNtCsgCecv3eZDcN_5alloc6string6StringE0Csa7TLgTh0CeG_9ssmanager.exit.i.i.i ], [ %.sroa.5.sroa.0.i.i.sroa.0.sroa.0.0.copyload.i, %_RINvMs4_NtCs7ewmRfXve8r_4http7requestNtB6_7Builder3uriNtNtB8_3uri3UriECsa7TLgTh0CeG_9ssmanager.exit.i ] ; 4 uses
  %.sroa.0.0.i.i.i = phi i64 [ %.sroa.0.2.i.i.i, %_RNCINvMs4_NtCs7ewmRfXve8r_4http7requestNtB8_7Builder6headerNtNtNtBa_6header4name10HeaderNameRNtNtCsgCecv3eZDcN_5alloc6string6StringE0Csa7TLgTh0CeG_9ssmanager.exit.i.i.i ], [ -1, %_RINvMs4_NtCs7ewmRfXve8r_4http7requestNtB6_7Builder3uriNtNtB8_3uri3UriECsa7TLgTh0CeG_9ssmanager.exit.i ] ; 5 uses
  store i64 %.sroa.0.0.i.i.i, ptr %i.ay, align 8, !noalias !31633
  %.sroa.7.0..sroa_idx6.i.i.i = getelementptr inbounds nuw i8, ptr %i.ay, i64 8 ; 2 uses
  store i8 %.sroa.7.0.i.i.i, ptr %.sroa.7.0..sroa_idx6.i.i.i, align 8, !noalias !31633
  %.sroa.9.0..sroa_idx11.i.i.i = getelementptr inbounds nuw i8, ptr %i.ay, i64 9 ; 5 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(87) %.sroa.9.0..sroa_idx11.i.i.i, ptr noundef nonnull align 1 dereferenceable(87) %.sroa.9.i.i.sroa.0.i, i64 87, i1 false), !noalias !31633
  %.sroa.9.i.i.sroa.5.0..sroa.9.0..sroa_idx11.i.i.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ay, i64 96
  store i8 %.sroa.9.i.i.sroa.5.1.i, ptr %.sroa.9.i.i.sroa.5.0..sroa.9.0..sroa_idx11.i.i.sroa_idx.i, align 8, !noalias !31633
  %.sroa.9.i.i.sroa.6.0..sroa.9.0..sroa_idx11.i.i.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ay, i64 97
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %.sroa.9.i.i.sroa.6.0..sroa.9.0..sroa_idx11.i.i.sroa_idx.i, ptr noundef nonnull align 1 dereferenceable(7) %.sroa.9.i.i.sroa.6.i, i64 7, i1 false), !noalias !31633
  %.sroa.9.i.i.sroa.7.0..sroa.9.0..sroa_idx11.i.i.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ay, i64 104
  store ptr %.sroa.9.i.i.sroa.7.1.i, ptr %.sroa.9.i.i.sroa.7.0..sroa.9.0..sroa_idx11.i.i.sroa_idx.i, align 8, !noalias !31633
  %.sroa.9.i.i.sroa.8.0..sroa.9.0..sroa_idx11.i.i.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ay, i64 112
  store ptr %.sroa.9.i.i.sroa.8.1.i, ptr %.sroa.9.i.i.sroa.8.0..sroa.9.0..sroa_idx11.i.i.sroa_idx.i, align 8, !noalias !31633
  %.sroa.9.i.i.sroa.9.0..sroa.9.0..sroa_idx11.i.i.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ay, i64 120
  store ptr %.sroa.9.i.i.sroa.9.1.i, ptr %.sroa.9.i.i.sroa.9.0..sroa.9.0..sroa_idx11.i.i.sroa_idx.i, align 8, !noalias !31633
  %.sroa.9.i.i.sroa.10.0..sroa.9.0..sroa_idx11.i.i.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ay, i64 128
end_hunk_1
begin_hunk_2_@_RNCNvNtNtNtCs8UFHSMUhzWe_19shadowsocks_service3net8outbound5chain13negotiate_hop0Csa7TLgTh0CeG_9ssmanager:bb.a
  %.sroa.9.i.i.sroa.19.0..sroa.9.0..sroa_idx11.i.i.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ay, i64 192
  store ptr %.sroa.9.i.i.sroa.19.1.i, ptr %.sroa.9.i.i.sroa.19.0..sroa.9.0..sroa_idx11.i.i.sroa_idx.i, align 8, !noalias !31633
  %.sroa.9.i.i.sroa.20.0..sroa.9.0..sroa_idx11.i.i.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ay, i64 200
  store i64 %.sroa.9.i.i.sroa.20.1.i, ptr %.sroa.9.i.i.sroa.20.0..sroa.9.0..sroa_idx11.i.i.sroa_idx.i, align 8, !noalias !31633
  %.sroa.9.i.i.sroa.21.0..sroa.9.0..sroa_idx11.i.i.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ay, i64 208
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.9.i.i.sroa.21.0..sroa.9.0..sroa_idx11.i.i.sroa_idx.i, ptr noundef nonnull align 1 dereferenceable(16) %.sroa.9.i.i.sroa.21.i, i64 16, i1 false), !noalias !31633
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.9.i.i.sroa.0.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.9.i.i.sroa.6.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.9.i.i.sroa.18.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.9.i.i.sroa.21.i)
  store i8 1, ptr %i.afg, align 1, !noalias !31633
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6144.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.9.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.20.sroa.5.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.20.sroa.8.i)
  %i.aio = load i64, ptr %i.afm, align 8, !range !115, !noalias !31635, !noundef !80
  %.not.i = icmp eq i64 %i.aio, -1
  br i1 %.not.i, label %bb.gz, label %_RNvNtCsgCecv3eZDcN_5alloc3fmt6format.exit.i

_RNvNtCsgCecv3eZDcN_5alloc3fmt6format.exit.i:     ; preds = %_RINvMs4_NtCs7ewmRfXve8r_4http7requestNtB6_7Builder6headerNtNtNtB8_6header4name10HeaderNameRNtNtCsgCecv3eZDcN_5alloc6string6StringECsa7TLgTh0CeG_9ssmanager.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bg), !noalias !31633
  store ptr %i.afm, ptr %i.bg, align 8, !noalias !31633
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bf), !noalias !31633
  %i.aip = getelementptr inbounds nuw i8, ptr %i.afm, i64 24
  store ptr %i.aip, ptr %i.bf, align 8, !noalias !31633
  call void @llvm.lifetime.start.p0(ptr nonnull %i.be), !noalias !31633
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bd), !noalias !31633
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bc), !noalias !31633
  store ptr %i.bg, ptr %i.bc, align 8, !noalias !31633
  %.sroa.4187.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.bc, i64 8
  store ptr @_RNvXs1i_NtCsf3Ta7LF998c_4core3fmtRNtNtCsgCecv3eZDcN_5alloc6string6StringNtB6_7Display3fmtCsa7TLgTh0CeG_9ssmanager, ptr %.sroa.4187.0..sroa_idx.i, align 8, !noalias !31633
  %i.aiq = getelementptr inbounds nuw i8, ptr %i.bc, i64 16
  store ptr %i.bf, ptr %i.aiq, align 8, !noalias !31633
  %.sroa.4189.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.bc, i64 24
  store ptr @_RNvXs1i_NtCsf3Ta7LF998c_4core3fmtRNtNtCsgCecv3eZDcN_5alloc6string6StringNtB6_7Display3fmtCsa7TLgTh0CeG_9ssmanager, ptr %.sroa.4189.0..sroa_idx.i, align 8, !noalias !31633
  call void @_RNvNvNtCsgCecv3eZDcN_5alloc3fmt6format12format_inner(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.bd, ptr noundef nonnull @412, ptr noundef nonnull %i.bc) #46, !noalias !31683
  %.sroa.0184.0.copyload.pr.i = load i64, ptr %i.bd, align 8, !alias.scope !31684, !noalias !31633 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bc), !noalias !31633
  %.sroa.4185.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.bd, i64 8
  %.sroa.4185.0.copyload.i = load ptr, ptr %.sroa.4185.0..sroa_idx.i, align 8, !alias.scope !31684, !noalias !31633, !nonnull !80, !noundef !80 ; 2 uses
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.bd, i64 16
  %.sroa.5.0.copyload.i = load i64, ptr %.sroa.5.0..sroa_idx.i, align 8, !alias.scope !31684, !noalias !31633 ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bd), !noalias !31633
  call void @llvm.experimental.noalias.scope.decl(metadata !31685)
  call void @llvm.experimental.noalias.scope.decl(metadata !31686)
  %i.air = udiv i64 %.sroa.5.0.copyload.i, 3
  %i.ais = shl nuw i64 %i.air, 2                  ; 2 uses
  %i.ait = urem i64 %.sroa.5.0.copyload.i, 3
  %.not.i.i.i.i17 = icmp eq i64 %i.ait, 0
  %i.aiu = add nuw i64 %i.ais, 4
  %.sroa.7.0.i.i.i.i = select i1 %.not.i.i.i.i17, i64 %i.ais, i64 %i.aiu ; 15 uses
  %.not.i.i.i.i.i18 = icmp slt i64 %.sroa.7.0.i.i.i.i, 0
  br i1 %.not.i.i.i.i.i18, label %bb.gp, label %bb.gm, !prof !177

bb.gm:                                            ; preds = %_RNvNtCsgCecv3eZDcN_5alloc3fmt6format.exit.i
  %i.aiv = icmp eq i64 %.sroa.7.0.i.i.i.i, 0
  br i1 %i.aiv, label %_RINvXs1_NtNtCsgCecv3eZDcN_5alloc3vec14spec_from_elemhNtB6_12SpecFromElem9from_elemNtNtBa_5alloc6GlobalECsa7TLgTh0CeG_9ssmanager.exit.i.i.i, label %bb.gn

bb.gn:                                            ; preds = %bb.gm
  call void @_RNvCsh0WfaQiVYm0_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #46, !noalias !31687
  %i.aiw = call noundef ptr @_RNvCsh0WfaQiVYm0_7___rustc19___rust_alloc_zeroed(i64 noundef range(i64 1, -9223372036854775808) %.sroa.7.0.i.i.i.i, i64 noundef range(i64 1, 17) 1) #46, !noalias !31687 ; 2 uses
  %i.aix = icmp eq ptr %i.aiw, null
  br i1 %i.aix, label %bb.gp, label %bb.go

bb.go:                                            ; preds = %bb.gn
  %i.aiy = ptrtoint ptr %i.aiw to i64
  br label %_RINvXs1_NtNtCsgCecv3eZDcN_5alloc3vec14spec_from_elemhNtB6_12SpecFromElem9from_elemNtNtBa_5alloc6GlobalECsa7TLgTh0CeG_9ssmanager.exit.i.i.i

bb.gp:                                            ; preds = %bb.gn, %_RNvNtCsgCecv3eZDcN_5alloc3fmt6format.exit.i
  %.sroa.4.0.ph.i.i.i.i22 = phi i64 [ 1, %bb.gn ], [ 0, %_RNvNtCsgCecv3eZDcN_5alloc3fmt6format.exit.i ]
  call void @_RNvNtCsgCecv3eZDcN_5alloc7raw_vec12handle_error(i64 noundef %.sroa.4.0.ph.i.i.i.i22, i64 %.sroa.7.0.i.i.i.i) #55, !noalias !31688
  unreachable

_RINvXs1_NtNtCsgCecv3eZDcN_5alloc3vec14spec_from_elemhNtB6_12SpecFromElem9from_elemNtNtBa_5alloc6GlobalECsa7TLgTh0CeG_9ssmanager.exit.i.i.i: ; preds = %bb.go, %bb.gm
  %.sroa.10.0.i.i.i.i19 = phi i64 [ %i.aiy, %bb.go ], [ 1, %bb.gm ] ; 2 uses
  %i.aiz = inttoptr i64 %.sroa.10.0.i.i.i.i19 to ptr ; 4 uses
  %i.aja = call noundef i64 @_RNvXs_NtNtCs8xUA7ZdjTE9_6base646engine15general_purposeNtB4_14GeneralPurposeNtB6_6Engine15internal_encode(ptr noalias nofree noundef readonly captures(address, read_provenance) dereferenceable(324) @413, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.sroa.4185.0.copyload.i, i64 noundef range(i64 0, -9223372036854775808) %.sroa.5.0.copyload.i, ptr noalias nofree noundef nonnull %i.aiz, i64 noundef range(i64 0, -9223372036854775808) %.sroa.7.0.i.i.i.i) #46, !noalias !31689 ; 6 uses
  %i.ajb = icmp ugt i64 %i.aja, %.sroa.7.0.i.i.i.i
  br i1 %i.ajb, label %bb.gr, label %bb.gq, !prof !92

bb.gq:                                            ; preds = %_RINvXs1_NtNtCsgCecv3eZDcN_5alloc3vec14spec_from_elemhNtB6_12SpecFromElem9from_elemNtNtBa_5alloc6GlobalECsa7TLgTh0CeG_9ssmanager.exit.i.i.i
  %i.ajc = sub nuw nsw i64 %.sroa.7.0.i.i.i.i, %i.aja ; 4 uses
  %i.ajd = getelementptr inbounds nuw i8, ptr %i.aiz, i64 %i.aja ; 3 uses
  %i.aje = sub nsw i64 0, %i.aja
  %i.ajf = and i64 %i.aje, 3                      ; 3 uses
  %.not.i2.i.i.i = icmp eq i64 %i.ajf, 0
  br i1 %.not.i2.i.i.i, label %_RINvNtCs8xUA7ZdjTE9_6base646encode19encode_with_paddingNtNtNtB4_6engine15general_purpose14GeneralPurposeECsa7TLgTh0CeG_9ssmanager.exit.i.i.i, label %.lr.ph.i.i.i.i

bb.gr:                                            ; preds = %_RINvXs1_NtNtCsgCecv3eZDcN_5alloc3vec14spec_from_elemhNtB6_12SpecFromElem9from_elemNtNtBa_5alloc6GlobalECsa7TLgTh0CeG_9ssmanager.exit.i.i.i
  call void @_RNvNtNtCsf3Ta7LF998c_4core5slice5index16slice_index_fail(i64 noundef %i.aja, i64 noundef range(i64 0, -9223372036854775808) %.sroa.7.0.i.i.i.i, i64 noundef range(i64 0, -9223372036854775808) %.sroa.7.0.i.i.i.i, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @306) #56, !noalias !31689
  unreachable

.lr.ph.i.i.i.i:                                   ; preds = %bb.gq
  %exitcond.not.i.i.i.i = icmp eq i64 %.sroa.7.0.i.i.i.i, %i.aja
  br i1 %exitcond.not.i.i.i.i, label %bb.gv, label %bb.gs

bb.gs:                                            ; preds = %.lr.ph.i.i.i.i
  store i8 61, ptr %i.ajd, align 1, !alias.scope !31690, !noalias !31691
  %exitcond4.not.i.i.i.i = icmp eq i64 %i.ajf, 1
  br i1 %exitcond4.not.i.i.i.i, label %_RINvNtCs8xUA7ZdjTE9_6base646encode19encode_with_paddingNtNtNtB4_6engine15general_purpose14GeneralPurposeECsa7TLgTh0CeG_9ssmanager.exit.i.i.i, label %.lr.ph.i.i.i.i.1

.lr.ph.i.i.i.i.1:                                 ; preds = %bb.gs
  %exitcond.not.i.i.i.i.1 = icmp eq i64 %i.ajc, 1
  br i1 %exitcond.not.i.i.i.i.1, label %bb.gv, label %bb.gt

bb.gt:                                            ; preds = %.lr.ph.i.i.i.i.1
  %i.ajg = getelementptr inbounds nuw i8, ptr %i.ajd, i64 1
  store i8 61, ptr %i.ajg, align 1, !alias.scope !31690, !noalias !31691
  %exitcond4.not.i.i.i.i.1 = icmp eq i64 %i.ajf, 2
  br i1 %exitcond4.not.i.i.i.i.1, label %_RINvNtCs8xUA7ZdjTE9_6base646encode19encode_with_paddingNtNtNtB4_6engine15general_purpose14GeneralPurposeECsa7TLgTh0CeG_9ssmanager.exit.i.i.i, label %.lr.ph.i.i.i.i.2

.lr.ph.i.i.i.i.2:                                 ; preds = %bb.gt
  %exitcond.not.i.i.i.i.2 = icmp eq i64 %i.ajc, 2
  br i1 %exitcond.not.i.i.i.i.2, label %bb.gv, label %bb.gu

bb.gu:                                            ; preds = %.lr.ph.i.i.i.i.2
  %i.ajh = getelementptr inbounds nuw i8, ptr %i.ajd, i64 2
  store i8 61, ptr %i.ajh, align 1, !alias.scope !31690, !noalias !31691
  br label %_RINvNtCs8xUA7ZdjTE9_6base646encode19encode_with_paddingNtNtNtB4_6engine15general_purpose14GeneralPurposeECsa7TLgTh0CeG_9ssmanager.exit.i.i.i

bb.gv:                                            ; preds = %.lr.ph.i.i.i.i.2, %.lr.ph.i.i.i.i.1, %.lr.ph.i.i.i.i
  call void @_RNvNtCsf3Ta7LF998c_4core9panicking18panic_bounds_check(i64 noundef %i.ajc, i64 noundef %i.ajc, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @305) #56, !noalias !31689
  unreachable

_RINvNtCs8xUA7ZdjTE9_6base646encode19encode_with_paddingNtNtNtB4_6engine15general_purpose14GeneralPurposeECsa7TLgTh0CeG_9ssmanager.exit.i.i.i: ; preds = %bb.gs, %bb.gt, %bb.gu, %bb.gq
  call void @llvm.lifetime.start.p0(ptr nonnull %i.al), !noalias !31692
  call void @_RNvNtNtCsf3Ta7LF998c_4core3str8converts9from_utf8(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.al, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.aiz, i64 noundef %.sroa.7.0.i.i.i.i) #46, !noalias !31693
  %i.aji = load i64, ptr %i.al, align 8, !range !87, !noalias !31692, !noundef !80
  %i.ajj = trunc nuw i64 %i.aji to i1
  br i1 %i.ajj, label %_RNvMNtCsgCecv3eZDcN_5alloc6stringNtB2_6String9from_utf8.exit.i.i.i, label %_RINvNvNtNtCs8xUA7ZdjTE9_6base646engine6Engine6encode5innerNtNtB6_15general_purpose14GeneralPurposeECsa7TLgTh0CeG_9ssmanager.exit.i.i

_RNvMNtCsgCecv3eZDcN_5alloc6stringNtB2_6String9from_utf8.exit.i.i.i: ; preds = %_RINvNtCs8xUA7ZdjTE9_6base646encode19encode_with_paddingNtNtNtB4_6engine15general_purpose14GeneralPurposeECsa7TLgTh0CeG_9ssmanager.exit.i.i.i
  %i.ajk = getelementptr inbounds nuw i8, ptr %i.al, i64 8
  %.sroa.821.24.copyload.i.i.i = load i64, ptr %i.ajk, align 8, !noalias !31692
  %.sroa.1022.24..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.al, i64 16
  %.sroa.1022.24.copyload.i.i.i = load i64, ptr %.sroa.1022.24..sroa_idx.i.i.i, align 8, !noalias !31692
  call void @llvm.lifetime.end.p0(ptr nonnull %i.al), !noalias !31692
  call void @llvm.experimental.noalias.scope.decl(metadata !31694)
  call void @llvm.experimental.noalias.scope.decl(metadata !31695)
  %i.ajl = inttoptr i64 %.sroa.7.0.i.i.i.i to ptr
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ak), !noalias !31696
  store i64 %.sroa.7.0.i.i.i.i, ptr %i.ak, align 8, !noalias !31697
  %.sroa.6.0..sroa_idx10.i.i.i = getelementptr inbounds nuw i8, ptr %i.ak, i64 8
  store i64 %.sroa.10.0.i.i.i.i19, ptr %.sroa.6.0..sroa_idx10.i.i.i, align 8, !noalias !31697
  %.sroa.812.0..sroa_idx13.i.i.i = getelementptr inbounds nuw i8, ptr %i.ak, i64 16
  store ptr %i.ajl, ptr %.sroa.812.0..sroa_idx13.i.i.i, align 8, !noalias !31697
  %.sroa.9.0..sroa_idx15.i.i.i = getelementptr inbounds nuw i8, ptr %i.ak, i64 24
  store i64 %.sroa.821.24.copyload.i.i.i, ptr %.sroa.9.0..sroa_idx15.i.i.i, align 8, !noalias !31697
  %.sroa.10.0..sroa_idx17.i.i.i = getelementptr inbounds nuw i8, ptr %i.ak, i64 32
  store i64 %.sroa.1022.24.copyload.i.i.i, ptr %.sroa.10.0..sroa_idx17.i.i.i, align 8, !noalias !31697
  call void @_RNvNtCsf3Ta7LF998c_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @380, i64 noundef 12, ptr noundef nonnull %i.ak, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @1065, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @381) #56, !noalias !31698
  unreachable

_RINvNvNtNtCs8xUA7ZdjTE9_6base646engine6Engine6encode5innerNtNtB6_15general_purpose14GeneralPurposeECsa7TLgTh0CeG_9ssmanager.exit.i.i: ; preds = %_RINvNtCs8xUA7ZdjTE9_6base646encode19encode_with_paddingNtNtNtB4_6engine15general_purpose14GeneralPurposeECsa7TLgTh0CeG_9ssmanager.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.al), !noalias !31692
  store i64 %.sroa.7.0.i.i.i.i, ptr %i.be, align 8, !alias.scope !31699, !noalias !31700
  %.sroa.812.8..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.be, i64 8 ; 3 uses
  store ptr %i.aiz, ptr %.sroa.812.8..sroa_idx.i.i.i, align 8, !alias.scope !31699, !noalias !31700
  %.sroa.9.8..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.be, i64 16
  store i64 %.sroa.7.0.i.i.i.i, ptr %.sroa.9.8..sroa_idx.i.i.i, align 8, !alias.scope !31699, !noalias !31700
  %i.ajm = icmp eq i64 %.sroa.0184.0.copyload.pr.i, 0
  br i1 %i.ajm, label %_RINvYNtNtNtCs8xUA7ZdjTE9_6base646engine15general_purpose14GeneralPurposeNtB7_6Engine6encodeNtNtCsgCecv3eZDcN_5alloc6string6StringECsa7TLgTh0CeG_9ssmanager.exit.i, label %bb.gw

bb.gw:                                            ; preds = %_RINvNvNtNtCs8xUA7ZdjTE9_6base646engine6Engine6encode5innerNtNtB6_15general_purpose14GeneralPurposeECsa7TLgTh0CeG_9ssmanager.exit.i.i
  call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.4185.0.copyload.i, i64 noundef %.sroa.0184.0.copyload.pr.i, i64 noundef range(i64 1, -9223372036854775807) 1) #46, !noalias !31701
  br label %_RINvYNtNtNtCs8xUA7ZdjTE9_6base646engine15general_purpose14GeneralPurposeNtB7_6Engine6encodeNtNtCsgCecv3eZDcN_5alloc6string6StringECsa7TLgTh0CeG_9ssmanager.exit.i

_RINvYNtNtNtCs8xUA7ZdjTE9_6base646engine15general_purpose14GeneralPurposeNtB7_6Engine6encodeNtNtCsgCecv3eZDcN_5alloc6string6StringECsa7TLgTh0CeG_9ssmanager.exit.i: ; preds = %bb.gw, %_RINvNvNtNtCs8xUA7ZdjTE9_6base646engine6Engine6encode5innerNtNtB6_15general_purpose14GeneralPurposeECsa7TLgTh0CeG_9ssmanager.exit.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bb), !noalias !31633
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ba), !noalias !31633
  call void @llvm.lifetime.start.p0(ptr nonnull %i.az), !noalias !31633
  store ptr %i.be, ptr %i.az, align 8, !noalias !31633
  %.sroa.4207.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.az, i64 8
  store ptr @_RNvXsq_NtCsgCecv3eZDcN_5alloc6stringNtB5_6StringNtNtCsf3Ta7LF998c_4core3fmt7Display3fmt, ptr %.sroa.4207.0..sroa_idx.i, align 8, !noalias !31633
  call void @_RNvNvNtCsgCecv3eZDcN_5alloc3fmt6format12format_inner(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.ba, ptr noundef nonnull @414, ptr noundef nonnull %i.az) #46, !noalias !31702
  %.sroa.0203.0.copyload.pr.i = load i64, ptr %i.ba, align 8, !alias.scope !31703, !noalias !31633 ; 4 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.az), !noalias !31633
  %.sroa.6204.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ba, i64 8
  %.sroa.6204.0.copyload.i = load ptr, ptr %.sroa.6204.0..sroa_idx.i, align 8, !alias.scope !31703, !noalias !31633, !nonnull !80, !noundef !80 ; 9 uses
  %.sroa.9205.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ba, i64 16
  %.sroa.9205.0.copyload.i = load i64, ptr %.sroa.9205.0..sroa_idx.i, align 8, !alias.scope !31703, !noalias !31633 ; 10 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ba), !noalias !31633
  %i.ajn = getelementptr inbounds nuw i8, ptr %.sroa.6204.0.copyload.i, i64 %.sroa.9205.0.copyload.i
  %i.ajo = icmp samesign eq i64 %.sroa.9205.0.copyload.i, 0
  br i1 %i.ajo, label %bb.hd, label %iter.check464

iter.check464:                                    ; preds = %_RINvYNtNtNtCs8xUA7ZdjTE9_6base646engine15general_purpose14GeneralPurposeNtB7_6Engine6encodeNtNtCsgCecv3eZDcN_5alloc6string6StringECsa7TLgTh0CeG_9ssmanager.exit.i
  %min.iters.check446 = icmp ult i64 %.sroa.9205.0.copyload.i, 8
  br i1 %min.iters.check446, label %.lr.ph.i.i.i.preheader, label %vector.main.loop.iter.check447

vector.main.loop.iter.check447:                   ; preds = %iter.check464
  %min.iters.check448 = icmp ult i64 %.sroa.9205.0.copyload.i, 32
  br i1 %min.iters.check448, label %vec.epilog.ph468, label %vector.ph449

vector.ph449:                                     ; preds = %vector.main.loop.iter.check447
  %i.ajp = and i64 %.sroa.9205.0.copyload.i, 24
  %n.vec450 = and i64 %.sroa.9205.0.copyload.i, -32 ; 4 uses
  %i.ajq = getelementptr i8, ptr %.sroa.6204.0.copyload.i, i64 %n.vec450
  br label %vector.body451

vector.body451:                                   ; preds = %vector.body451, %vector.ph449
  %index452 = phi i64 [ 0, %vector.ph449 ], [ %index.next458, %vector.body451 ] ; 2 uses
  %vec.phi453 = phi <16 x i1> [ zeroinitializer, %vector.ph449 ], [ %i.akb, %vector.body451 ]
  %vec.phi454 = phi <16 x i1> [ zeroinitializer, %vector.ph449 ], [ %i.akd, %vector.body451 ]
  %next.gep455 = getelementptr i8, ptr %.sroa.6204.0.copyload.i, i64 %index452 ; 2 uses
  %i.ajr = getelementptr i8, ptr %next.gep455, i64 16
  %wide.load456 = load <16 x i8>, ptr %next.gep455, align 1, !alias.scope !31704, !noalias !31705 ; 3 uses
  %wide.load457 = load <16 x i8>, ptr %i.ajr, align 1, !alias.scope !31704, !noalias !31705 ; 3 uses
  %i.ajs = icmp ult <16 x i8> %wide.load456, splat (i8 32)
  %i.ajt = icmp ult <16 x i8> %wide.load457, splat (i8 32)
  %i.aju = icmp eq <16 x i8> %wide.load456, splat (i8 127)
  %i.ajv = icmp eq <16 x i8> %wide.load457, splat (i8 127)
  %i.ajw = or <16 x i1> %i.ajs, %i.aju
  %i.ajx = or <16 x i1> %i.ajt, %i.ajv
  %i.ajy = icmp ne <16 x i8> %wide.load456, splat (i8 9)
  %i.ajz = icmp ne <16 x i8> %wide.load457, splat (i8 9)
  %i.aka = and <16 x i1> %i.ajw, %i.ajy
  %i.akb = or <16 x i1> %vec.phi453, %i.aka       ; 2 uses
  %i.akc = and <16 x i1> %i.ajx, %i.ajz
  %i.akd = or <16 x i1> %vec.phi454, %i.akc       ; 2 uses
  %index.next458 = add nuw i64 %index452, 32      ; 2 uses
  %i.ake = icmp eq i64 %index.next458, %n.vec450
  br i1 %i.ake, label %middle.block459, label %vector.body451, !llvm.loop !31188

middle.block459:                                  ; preds = %vector.body451
  %bin.rdx460 = or <16 x i1> %i.akd, %i.akb
  %i.akf = bitcast <16 x i1> %bin.rdx460 to i16
  %i.akg = icmp ne i16 %i.akf, 0                  ; 3 uses
  %cmp.n461 = icmp eq i64 %.sroa.9205.0.copyload.i, %n.vec450
  br i1 %cmp.n461, label %._crit_edge.i.i.i20, label %vec.epilog.iter.check466

vec.epilog.iter.check466:                         ; preds = %middle.block459
  %min.epilog.iters.check467 = icmp eq i64 %i.ajp, 0
  br i1 %min.epilog.iters.check467, label %.lr.ph.i.i.i.preheader, label %vec.epilog.ph468, !prof !202

vec.epilog.ph468:                                 ; preds = %vector.main.loop.iter.check447, %vec.epilog.iter.check466
  %vec.epilog.resume.val462 = phi i64 [ %n.vec450, %vec.epilog.iter.check466 ], [ 0, %vector.main.loop.iter.check447 ]
  %bc.merge.rdx463 = phi i1 [ %i.akg, %vec.epilog.iter.check466 ], [ false, %vector.main.loop.iter.check447 ]
  %n.vec469 = and i64 %.sroa.9205.0.copyload.i, -8 ; 3 uses
  %i.akh = getelementptr i8, ptr %.sroa.6204.0.copyload.i, i64 %n.vec469
  %i.aki = insertelement <8 x i1> <i1 poison, i1 false, i1 false, i1 false, i1 false, i1 false, i1 false, i1 false>, i1 %bc.merge.rdx463, i64 0
  br label %vec.epilog.vector.body470

vec.epilog.vector.body470:                        ; preds = %vec.epilog.vector.body470, %vec.epilog.ph468
  %index471 = phi i64 [ %vec.epilog.resume.val462, %vec.epilog.ph468 ], [ %index.next475, %vec.epilog.vector.body470 ] ; 2 uses
  %vec.phi472 = phi <8 x i1> [ %i.aki, %vec.epilog.ph468 ], [ %i.ako, %vec.epilog.vector.body470 ]
  %next.gep473 = getelementptr i8, ptr %.sroa.6204.0.copyload.i, i64 %index471
  %wide.load474 = load <8 x i8>, ptr %next.gep473, align 1, !alias.scope !31704, !noalias !31705 ; 3 uses
  %i.akj = icmp ult <8 x i8> %wide.load474, splat (i8 32)
  %i.akk = icmp eq <8 x i8> %wide.load474, splat (i8 127)
  %i.akl = or <8 x i1> %i.akj, %i.akk
  %i.akm = icmp ne <8 x i8> %wide.load474, splat (i8 9)
  %i.akn = and <8 x i1> %i.akl, %i.akm
  %i.ako = or <8 x i1> %vec.phi472, %i.akn        ; 2 uses
  %index.next475 = add nuw i64 %index471, 8       ; 2 uses
  %i.akp = icmp eq i64 %index.next475, %n.vec469
  br i1 %i.akp, label %vec.epilog.middle.block476, label %vec.epilog.vector.body470, !llvm.loop !31189

vec.epilog.middle.block476:                       ; preds = %vec.epilog.vector.body470
  %i.akq = bitcast <8 x i1> %i.ako to i8
  %i.akr = icmp ne i8 %i.akq, 0                   ; 2 uses
  %cmp.n477 = icmp eq i64 %.sroa.9205.0.copyload.i, %n.vec469
  br i1 %cmp.n477, label %._crit_edge.i.i.i20, label %.lr.ph.i.i.i.preheader

.lr.ph.i.i.i.preheader:                           ; preds = %iter.check464, %vec.epilog.iter.check466, %vec.epilog.middle.block476
  %.sroa.0.08.i.i.i.ph = phi i1 [ false, %iter.check464 ], [ %i.akg, %vec.epilog.iter.check466 ], [ %i.akr, %vec.epilog.middle.block476 ]
  %.sroa.02.07.i.i.i.ph = phi ptr [ %.sroa.6204.0.copyload.i, %iter.check464 ], [ %i.ajq, %vec.epilog.iter.check466 ], [ %i.akh, %vec.epilog.middle.block476 ]
  br label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.lr.ph.i.i.i.preheader, %bb.gy
  %.sroa.0.08.i.i.i = phi i1 [ %.sroa.04.0.i.i.i, %bb.gy ], [ %.sroa.0.08.i.i.i.ph, %.lr.ph.i.i.i.preheader ] ; 2 uses
  %.sroa.02.07.i.i.i = phi ptr [ %i.aks, %bb.gy ], [ %.sroa.02.07.i.i.i.ph, %.lr.ph.i.i.i.preheader ] ; 2 uses
  %i.aks = getelementptr inbounds nuw i8, ptr %.sroa.02.07.i.i.i, i64 1 ; 2 uses
  %i.akt = load i8, ptr %.sroa.02.07.i.i.i, align 1, !alias.scope !31704, !noalias !31705, !noundef !80 ; 3 uses
  %i.aku = icmp ult i8 %i.akt, 32
  %i.akv = icmp eq i8 %i.akt, 127
  %or.cond.i.i.i = or i1 %i.aku, %i.akv
  br i1 %or.cond.i.i.i, label %bb.gx, label %bb.gy

._crit_edge.i.i.i20:                              ; preds = %bb.gy, %vec.epilog.middle.block476, %middle.block459
  %.sroa.04.0.i.i.i.lcssa = phi i1 [ %i.akr, %vec.epilog.middle.block476 ], [ %i.akg, %middle.block459 ], [ %.sroa.04.0.i.i.i, %bb.gy ]
  br i1 %.sroa.04.0.i.i.i.lcssa, label %bb.ha, label %bb.hd

bb.gx:                                            ; preds = %.lr.ph.i.i.i
  %i.akw = icmp ne i8 %i.akt, 9
  %i.akx = or i1 %.sroa.0.08.i.i.i, %i.akw
  br label %bb.gy

bb.gy:                                            ; preds = %bb.gx, %.lr.ph.i.i.i
  %.sroa.04.0.i.i.i = phi i1 [ %i.akx, %bb.gx ], [ %.sroa.0.08.i.i.i, %.lr.ph.i.i.i ] ; 2 uses
  %i.aky = icmp eq ptr %i.aks, %i.ajn
  br i1 %i.aky, label %._crit_edge.i.i.i20, label %.lr.ph.i.i.i, !llvm.loop !31190

bb.gz:                                            ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsgCecv3eZDcN_5alloc6string6StringECsa7TLgTh0CeG_9ssmanager.exit66.i, %_RINvMs4_NtCs7ewmRfXve8r_4http7requestNtB6_7Builder6headerNtNtNtB8_6header4name10HeaderNameRNtNtCsgCecv3eZDcN_5alloc6string6StringECsa7TLgTh0CeG_9ssmanager.exit.i
  %.sroa.7.0.i.i249.i = phi i8 [ %.sroa.7.0.i.i60.i, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsgCecv3eZDcN_5alloc6string6StringECsa7TLgTh0CeG_9ssmanager.exit66.i ], [ %.sroa.7.0.i.i.i, %_RINvMs4_NtCs7ewmRfXve8r_4http7requestNtB6_7Builder6headerNtNtNtB8_6header4name10HeaderNameRNtNtCsgCecv3eZDcN_5alloc6string6StringECsa7TLgTh0CeG_9ssmanager.exit.i ] ; 2 uses
  %.sroa.0.0.i.i248.i = phi i64 [ %.sroa.0.0.i.i61.i, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsgCecv3eZDcN_5alloc6string6StringECsa7TLgTh0CeG_9ssmanager.exit66.i ], [ %.sroa.0.0.i.i.i, %_RINvMs4_NtCs7ewmRfXve8r_4http7requestNtB6_7Builder6headerNtNtNtB8_6header4name10HeaderNameRNtNtCsgCecv3eZDcN_5alloc6string6StringECsa7TLgTh0CeG_9ssmanager.exit.i ] ; 3 uses
  store i8 0, ptr %i.afg, align 1, !noalias !31633
  %.sroa.5237.0.copyload.i = load i8, ptr %.sroa.9.0..sroa_idx11.i.i.i, align 1, !noalias !31633 ; 2 uses
  %i.akz = icmp eq i64 %.sroa.0.0.i.i248.i, -1
  br i1 %i.akz, label %bb.hm, label %.thread.i21

bb.ha:                                            ; preds = %._crit_edge.i.i.i20
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aj), !noalias !31706
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ai), !noalias !31706
  store ptr %i.a, ptr %i.ai, align 8, !noalias !31706
  %.sroa.42.0..sroa_idx.i.i43.i = getelementptr inbounds nuw i8, ptr %i.ai, i64 8
  store ptr @_RNvXsa_NtNtCs7ewmRfXve8r_4http6header5valueNtB5_18InvalidHeaderValueNtNtCsf3Ta7LF998c_4core3fmt7Display3fmt, ptr %.sroa.42.0..sroa_idx.i.i43.i, align 8, !noalias !31706
  call void @_RNvNvNtCsgCecv3eZDcN_5alloc3fmt6format12format_inner(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.aj, ptr noundef nonnull @548, ptr noundef nonnull %i.ai) #46, !noalias !31707
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ai), !noalias !31706
  %i.ala = call noundef nonnull ptr @_RINvMNtNtCsgCecv3eZDcN_5alloc2io5errorNtNtNtCsf3Ta7LF998c_4core2io5error5Error3newNtNtB7_6string6StringECs5cGWJDriNjd_6notify(i8 noundef 42, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.aj) #53, !noalias !31708
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aj), !noalias !31706
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bb), !noalias !31633
  %i.alb = icmp eq i64 %.sroa.0203.0.copyload.pr.i, 0
  br i1 %i.alb, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsgCecv3eZDcN_5alloc6string6StringECsa7TLgTh0CeG_9ssmanager.exit.i, label %bb.hb

bb.hb:                                            ; preds = %bb.ha
  call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.6204.0.copyload.i, i64 noundef %.sroa.0203.0.copyload.pr.i, i64 noundef range(i64 1, -9223372036854775807) 1) #46, !noalias !31709
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsgCecv3eZDcN_5alloc6string6StringECsa7TLgTh0CeG_9ssmanager.exit.i

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsgCecv3eZDcN_5alloc6string6StringECsa7TLgTh0CeG_9ssmanager.exit.i: ; preds = %bb.hb, %bb.ha
  call void @llvm.experimental.noalias.scope.decl(metadata !31710)
  call void @llvm.experimental.noalias.scope.decl(metadata !31711)
  %.val.i.i45.i = load i64, ptr %i.be, align 8, !range !82, !alias.scope !31712, !noalias !31633, !noundef !80 ; 2 uses
  %i.alc = icmp eq i64 %.val.i.i45.i, 0
  br i1 %i.alc, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsgCecv3eZDcN_5alloc6string6StringECsa7TLgTh0CeG_9ssmanager.exit47.i, label %bb.hc

bb.hc:                                            ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsgCecv3eZDcN_5alloc6string6StringECsa7TLgTh0CeG_9ssmanager.exit.i
  %.val1.i.i46.i = load ptr, ptr %.sroa.812.8..sroa_idx.i.i.i, align 8, !alias.scope !31712, !noalias !31633, !nonnull !80, !noundef !80
  call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i46.i, i64 noundef %.val.i.i45.i, i64 noundef range(i64 1, -9223372036854775807) 1) #46, !noalias !31713
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsgCecv3eZDcN_5alloc6string6StringECsa7TLgTh0CeG_9ssmanager.exit47.i

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsgCecv3eZDcN_5alloc6string6StringECsa7TLgTh0CeG_9ssmanager.exit47.i: ; preds = %bb.hc, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsgCecv3eZDcN_5alloc6string6StringECsa7TLgTh0CeG_9ssmanager.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.be), !noalias !31633
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bf), !noalias !31633
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bg), !noalias !31633
  br label %bb.if

bb.hd:                                            ; preds = %._crit_edge.i.i.i20, %_RINvYNtNtNtCs8xUA7ZdjTE9_6base646engine15general_purpose14GeneralPurposeNtB7_6Engine6encodeNtNtCsgCecv3eZDcN_5alloc6string6StringECsa7TLgTh0CeG_9ssmanager.exit.i
  call void @_RNvMNtCsknai52m1gBp_5bytes5bytesNtB2_5Bytes15copy_from_slice(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(address) dereferenceable(40) %i.bb, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.sroa.6204.0.copyload.i, i64 noundef %.sroa.9205.0.copyload.i) #46, !noalias !31635
  call void @llvm.experimental.noalias.scope.decl(metadata !31714)
  call void @llvm.experimental.noalias.scope.decl(metadata !31715)
  %.sroa.0199.0.copyload.i = load ptr, ptr %i.bb, align 8, !alias.scope !31716, !noalias !31633 ; 4 uses
  %.sroa.6200.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.bb, i64 8
  %.sroa.6200.sroa.0.0.copyload.i = load ptr, ptr %.sroa.6200.0..sroa_idx.i, align 8, !alias.scope !31716, !noalias !31633 ; 3 uses
  %.sroa.6200.sroa.4.0..sroa.6200.0..sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.bb, i64 16
  %.sroa.6200.sroa.4.0.copyload.i = load i64, ptr %.sroa.6200.sroa.4.0..sroa.6200.0..sroa_idx.sroa_idx.i, align 8, !alias.scope !31716, !noalias !31633 ; 3 uses
  %.sroa.6200.sroa.5.0..sroa.6200.0..sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.bb, i64 24
  %.sroa.6200.sroa.5.0.copyload.i = load ptr, ptr %.sroa.6200.sroa.5.0..sroa.6200.0..sroa_idx.sroa_idx.i, align 8, !alias.scope !31716, !noalias !31633 ; 3 uses
  %.sroa.10202.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.bb, i64 33
  %.sroa.10202.sroa.0.0.copyload.i = load i56, ptr %.sroa.10202.0..sroa_idx.i, align 1, !alias.scope !31716, !noalias !31633
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bb), !noalias !31633
  %i.ald = icmp eq i64 %.sroa.0203.0.copyload.pr.i, 0
  br i1 %i.ald, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsgCecv3eZDcN_5alloc6string6StringECsa7TLgTh0CeG_9ssmanager.exit50.i, label %bb.he

bb.he:                                            ; preds = %bb.hd
  call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.6204.0.copyload.i, i64 noundef %.sroa.0203.0.copyload.pr.i, i64 noundef range(i64 1, -9223372036854775807) 1) #46, !noalias !31717
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsgCecv3eZDcN_5alloc6string6StringECsa7TLgTh0CeG_9ssmanager.exit50.i

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsgCecv3eZDcN_5alloc6string6StringECsa7TLgTh0CeG_9ssmanager.exit50.i: ; preds = %bb.he, %bb.hd
  store i8 0, ptr %i.afg, align 1, !noalias !31633
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.9.i.i51.i)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(215) %.sroa.9.i.i51.i, ptr noundef nonnull align 1 dereferenceable(215) %.sroa.9.0..sroa_idx11.i.i.i, i64 215, i1 false), !noalias !31633
  %i.ale = icmp eq i64 %.sroa.0.0.i.i.i, -1
  br i1 %i.ale, label %bb.hf, label %bb.hg

bb.hf:                                            ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsgCecv3eZDcN_5alloc6string6StringECsa7TLgTh0CeG_9ssmanager.exit50.i
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0199.0.copyload.i) ]
  %i.alf = getelementptr inbounds nuw i8, ptr %.sroa.0199.0.copyload.i, i64 32
  %i.alg = load ptr, ptr %i.alf, align 8, !noalias !31718, !nonnull !80, !noundef !80
  call void %i.alg(ptr noundef %.sroa.6200.sroa.5.0.copyload.i, ptr noundef %.sroa.6200.sroa.0.0.copyload.i, i64 noundef %.sroa.6200.sroa.4.0.copyload.i) #46, !noalias !31718, !inline_history !31224
  br label %_RINvMs4_NtCs7ewmRfXve8r_4http7requestNtB6_7Builder6headerReNtNtNtB8_6header5value11HeaderValueECsa7TLgTh0CeG_9ssmanager.exit.i

bb.hg:                                            ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsgCecv3eZDcN_5alloc6string6StringECsa7TLgTh0CeG_9ssmanager.exit50.i
  %.sroa.8213.32.insert.ext.i = zext i56 %.sroa.10202.sroa.0.0.copyload.i to i64
  %.sroa.8213.32.insert.shift.i = shl nuw i64 %.sroa.8213.32.insert.ext.i, 8
  %.sroa.527.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.ad, i64 9 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ad), !noalias !31719
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(215) %.sroa.527.0..sroa_idx.i.i.i, ptr noundef nonnull align 1 dereferenceable(215) %.sroa.9.0..sroa_idx11.i.i.i, i64 215, i1 false), !noalias !31633
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ae), !noalias !31719
  store ptr @415, ptr %i.ae, align 8, !noalias !31720
  %.sroa.4.0..sroa_idx.i56.i = getelementptr inbounds nuw i8, ptr %i.ae, i64 8
  store i64 19, ptr %.sroa.4.0..sroa_idx.i56.i, align 8, !noalias !31720
  %.sroa.4.0..sroa_idx14.i.i.i = getelementptr inbounds nuw i8, ptr %i.ae, i64 16 ; 2 uses
  store ptr %.sroa.0199.0.copyload.i, ptr %.sroa.4.0..sroa_idx14.i.i.i, align 8, !noalias !31719
  %.sroa.5.0..sroa_idx16.i.i.i = getelementptr inbounds nuw i8, ptr %i.ae, i64 24
  store ptr %.sroa.6200.sroa.0.0.copyload.i, ptr %.sroa.5.0..sroa_idx16.i.i.i, align 8, !noalias !31719
  %.sroa.6.0..sroa_idx18.i.i.i = getelementptr inbounds nuw i8, ptr %i.ae, i64 32
  store i64 %.sroa.6200.sroa.4.0.copyload.i, ptr %.sroa.6.0..sroa_idx18.i.i.i, align 8, !noalias !31719
  %.sroa.720.0..sroa_idx21.i.i.i = getelementptr inbounds nuw i8, ptr %i.ae, i64 40
  store ptr %.sroa.6200.sroa.5.0.copyload.i, ptr %.sroa.720.0..sroa_idx21.i.i.i, align 8, !noalias !31719
  %.sroa.8.0..sroa_idx23.i.i.i = getelementptr inbounds nuw i8, ptr %i.ae, i64 48
  store i64 %.sroa.8213.32.insert.shift.i, ptr %.sroa.8.0..sroa_idx23.i.i.i, align 8, !noalias !31719
  store i64 %.sroa.0.0.i.i.i, ptr %i.ad, align 8, !noalias !31719
  %.sroa.426.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.ad, i64 8 ; 2 uses
  store i8 %.sroa.7.0.i.i.i, ptr %.sroa.426.0..sroa_idx.i.i.i, align 8, !noalias !31719
  call void @llvm.experimental.noalias.scope.decl(metadata !31721)
  call void @llvm.experimental.noalias.scope.decl(metadata !31722)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ac), !noalias !31719
  call void @_RNvMs_NtNtCs7ewmRfXve8r_4http6header4nameNtB4_10HeaderName10from_bytes(ptr noalias nofree noundef nonnull sret([40 x i8]) align 8 captures(none) dereferenceable(40) %i.ac, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @415, i64 noundef 19) #46, !noalias !31723
  %i.alh = load i64, ptr %i.ac, align 8, !range !87, !noalias !31724, !noundef !80
  %i.ali = trunc nuw i64 %i.alh to i1
end_hunk_2
