Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/LLVMAttrs?download=true
inline.NumInlined: 32640
inline.NumDeleted: 14527
loop-unroll.NumCompletelyUnrolled: 7
loop-unroll.NumRuntimeUnrolled: 17
loop-unroll.NumUnrolled: 24
begin_hunk_0_@_ZN4mlir4LLVM16symbolizeDIFlagsEN4llvm9StringRefE:bb.a
  %i.fd = load i64, ptr %i.fc, align 1
  %i.fe = xor i64 %i.fd, 7305804402515076709
  %i.ff = or i64 %i.fb, %i.fe
  %i.fg = icmp ne i64 %i.ff, 0
  %i.fh = zext i1 %i.fg to i32
  %.not.i.i167 = icmp eq i32 %i.fh, 0
  br i1 %.not.i.i167, label %_ZN4llvm12StringSwitchISt8optionalIjES2_E4CaseENS_13StringLiteralES2_.exit304, label %_ZN4llvmneENS_9StringRefES0_.exit.i.i237

_ZN4llvmneENS_9StringRefES0_.exit.i.i174:         ; preds = %_ZN4llvmneENS_9StringRefES0_.exit.i.i129
  %i.fi = load i64, ptr %i.z, align 1
  %i.fj = xor i64 %i.fi, 8742459336501000261
  %i.fk = getelementptr i8, ptr %i.z, i64 5
  %i.fl = load i64, ptr %i.fk, align 1
  %i.fm = xor i64 %i.fl, 8317145080380609396
  %i.fn = or i64 %i.fj, %i.fm
  %i.fo = icmp ne i64 %i.fn, 0
  %i.fp = zext i1 %i.fo to i32
  %.not.i.i176 = icmp eq i32 %i.fp, 0
  br i1 %.not.i.i176, label %_ZN4llvm12StringSwitchISt8optionalIjES2_E4CaseENS_13StringLiteralES2_.exit304, label %.thread990

_ZN4llvmneENS_9StringRefES0_.exit.i.i183:         ; preds = %_ZN4llvmneENS_9StringRefES0_.exit.i.i120
  %i.fq = load i128, ptr %i.z, align 1
  %i.fr = xor i128 %i.fq, 132166700853978130783409985274157885779
  %i.fs = getelementptr i8, ptr %i.z, i64 16
  %i.ft = load i8, ptr %i.fs, align 1
  %i.fu = zext i8 %i.ft to i128
  %i.fv = xor i128 %i.fu, 101
  %i.fw = or i128 %i.fr, %i.fv
  %i.fx = icmp ne i128 %i.fw, 0
  %i.fy = zext i1 %i.fx to i32
  %.not.i.i185 = icmp eq i32 %i.fy, 0
  br i1 %.not.i.i185, label %_ZN4llvm12StringSwitchISt8optionalIjES2_E4CaseENS_13StringLiteralES2_.exit304, label %_ZN4llvmneENS_9StringRefES0_.exit.i.i210

_ZN4llvmneENS_9StringRefES0_.exit.i.i192:         ; preds = %bb.b
  %i.fz = load i128, ptr %i.z, align 1
  %i.ga = xor i128 %i.fz, 129539560743130024819537368857464042829
  %i.gb = getelementptr i8, ptr %i.z, i64 3
  %i.gc = load i128, ptr %i.gb, align 1
  %i.gd = xor i128 %i.gc, 134768303749487355236657208343292569972
  %i.ge = or i128 %i.ga, %i.gd
  %i.gf = icmp ne i128 %i.ge, 0
  %i.gg = zext i1 %i.gf to i32
  %.not.i.i194 = icmp eq i32 %i.gg, 0
  br i1 %.not.i.i194, label %_ZN4llvm12StringSwitchISt8optionalIjES2_E4CaseENS_13StringLiteralES2_.exit304, label %_ZN4llvmneENS_9StringRefES0_.exit.i.i246

_ZN4llvmneENS_9StringRefES0_.exit.i.i201:         ; preds = %bb.b
  %i.gh = load i128, ptr %i.z, align 1
  %i.gi = xor i128 %i.gh, 146721093445493597678872052729805695318
  %i.gj = getelementptr i8, ptr %i.z, i64 16
  %i.gk = load i16, ptr %i.gj, align 1
  %i.gl = zext i16 %i.gk to i128
  %i.gm = xor i128 %i.gl, 25955
  %i.gn = or i128 %i.gi, %i.gm
  %i.go = icmp ne i128 %i.gn, 0
  %i.gp = zext i1 %i.go to i32
  %.not.i.i203 = icmp eq i32 %i.gp, 0
  br i1 %.not.i.i203, label %_ZN4llvm12StringSwitchISt8optionalIjES2_E4CaseENS_13StringLiteralES2_.exit304, label %.thread990

_ZN4llvmneENS_9StringRefES0_.exit.i.i210:         ; preds = %_ZN4llvmneENS_9StringRefES0_.exit.i.i183
  %i.gq = load i128, ptr %i.z, align 1
  %i.gr = xor i128 %i.gq, 129544976147710332482775290009038909001
  %i.gs = getelementptr i8, ptr %i.z, i64 16
  %i.gt = load i8, ptr %i.gs, align 1
  %i.gu = zext i8 %i.gt to i128
  %i.gv = xor i128 %i.gu, 108
  %i.gw = or i128 %i.gr, %i.gv
  %i.gx = icmp ne i128 %i.gw, 0
  %i.gy = zext i1 %i.gx to i32
  %.not.i.i212 = icmp eq i32 %i.gy, 0
  br i1 %.not.i.i212, label %_ZN4llvm12StringSwitchISt8optionalIjES2_E4CaseENS_13StringLiteralES2_.exit304, label %_ZN4llvmneENS_9StringRefES0_.exit.i.i300

_ZN4llvmneENS_9StringRefES0_.exit.i.i219:         ; preds = %_ZN4llvmneENS_9StringRefES0_.exit.i.i102
  %i.gz = load i64, ptr %i.z, align 1
  %i.ha = icmp ne i64 %i.gz, 7236270204105550146
  %i.hb = zext i1 %i.ha to i32
  %.not.i.i221 = icmp eq i32 %i.hb, 0
  br i1 %.not.i.i221, label %_ZN4llvm12StringSwitchISt8optionalIjES2_E4CaseENS_13StringLiteralES2_.exit304, label %_ZN4llvmneENS_9StringRefES0_.exit.i.i228

_ZN4llvmneENS_9StringRefES0_.exit.i.i228:         ; preds = %_ZN4llvmneENS_9StringRefES0_.exit.i.i219
  %i.hc = load i64, ptr %i.z, align 1
  %i.hd = icmp ne i64 %i.hc, 7958552634293645134
  %i.he = zext i1 %i.hd to i32
  %.not.i.i230 = icmp eq i32 %i.he, 0
  br i1 %.not.i.i230, label %_ZN4llvm12StringSwitchISt8optionalIjES2_E4CaseENS_13StringLiteralES2_.exit304, label %.thread990

_ZN4llvmneENS_9StringRefES0_.exit.i.i237:         ; preds = %_ZN4llvmneENS_9StringRefES0_.exit.i.i165
  %i.hf = load i64, ptr %i.z, align 1
  %i.hg = xor i64 %i.hf, 8319099934610585940
  %i.hh = getelementptr i8, ptr %i.z, i64 7
  %i.hi = load i64, ptr %i.hh, align 1
  %i.hj = xor i64 %i.hi, 7310868735424283251
  %i.hk = or i64 %i.hg, %i.hj
  %i.hl = icmp ne i64 %i.hk, 0
  %i.hm = zext i1 %i.hl to i32
  %.not.i.i239 = icmp eq i32 %i.hm, 0
  br i1 %.not.i.i239, label %_ZN4llvm12StringSwitchISt8optionalIjES2_E4CaseENS_13StringLiteralES2_.exit304, label %.thread990

_ZN4llvmneENS_9StringRefES0_.exit.i.i246:         ; preds = %_ZN4llvmneENS_9StringRefES0_.exit.i.i192
  %i.hn = load i128, ptr %i.z, align 1
  %i.ho = xor i128 %i.hn, 134846006052149709327925130443749357908
  %i.hp = getelementptr i8, ptr %i.z, i64 3
  %i.hq = load i128, ptr %i.hp, align 1
  %i.hr = xor i128 %i.hq, 134768304065776142900813437147151421541
  %i.hs = or i128 %i.ho, %i.hr
  %i.ht = icmp ne i128 %i.hs, 0
  %i.hu = zext i1 %i.ht to i32
  %.not.i.i248 = icmp eq i32 %i.hu, 0
  br i1 %.not.i.i248, label %_ZN4llvm12StringSwitchISt8optionalIjES2_E4CaseENS_13StringLiteralES2_.exit304, label %.thread990

_ZN4llvmneENS_9StringRefES0_.exit.i.i255:         ; preds = %_ZN4llvmneENS_9StringRefES0_.exit.i.i39
  %i.hv = load i64, ptr %i.z, align 1
  %i.hw = xor i64 %i.hv, 8314045423957667397
  %i.hx = getelementptr i8, ptr %i.z, i64 8
  %i.hy = load i8, ptr %i.hx, align 1
  %i.hz = zext i8 %i.hy to i64
  %i.ia = xor i64 %i.hz, 115
  %i.ib = or i64 %i.hw, %i.ia
  %i.ic = icmp ne i64 %i.ib, 0
  %i.id = zext i1 %i.ic to i32
  %.not.i.i257 = icmp eq i32 %i.id, 0
  br i1 %.not.i.i257, label %_ZN4llvm12StringSwitchISt8optionalIjES2_E4CaseENS_13StringLiteralES2_.exit304, label %_ZN4llvmneENS_9StringRefES0_.exit.i.i282

_ZN4llvmneENS_9StringRefES0_.exit.i.i264:         ; preds = %bb.b
  %i.ie = load i32, ptr %i.z, align 1
  %i.if = xor i32 %i.ie, 1853188180
  %i.ig = getelementptr i8, ptr %i.z, i64 4
  %i.ih = load i8, ptr %i.ig, align 1
  %i.ii = zext i8 %i.ih to i32
  %i.ij = xor i32 %i.ii, 107
  %i.ik = or i32 %i.if, %i.ij
  %i.il = icmp ne i32 %i.ik, 0
  %i.im = zext i1 %i.il to i32
  %.not.i.i266 = icmp eq i32 %i.im, 0
  br i1 %.not.i.i266, label %_ZN4llvm12StringSwitchISt8optionalIjES2_E4CaseENS_13StringLiteralES2_.exit304, label %.thread990

_ZN4llvmneENS_9StringRefES0_.exit.i.i273:         ; preds = %_ZN4llvmneENS_9StringRefES0_.exit.i.i111
  %i.in = load i64, ptr %i.z, align 1
  %i.io = xor i64 %i.in, 7599377360998002510
  %i.ip = getelementptr i8, ptr %i.z, i64 8
  %i.iq = load i16, ptr %i.ip, align 1
  %i.ir = zext i16 %i.iq to i64
  %i.is = xor i64 %i.ir, 27745
  %i.it = or i64 %i.io, %i.is
  %i.iu = icmp ne i64 %i.it, 0
  %i.iv = zext i1 %i.iu to i32
  %.not.i.i275 = icmp eq i32 %i.iv, 0
  br i1 %.not.i.i275, label %_ZN4llvm12StringSwitchISt8optionalIjES2_E4CaseENS_13StringLiteralES2_.exit304, label %.thread990

_ZN4llvmneENS_9StringRefES0_.exit.i.i282:         ; preds = %_ZN4llvmneENS_9StringRefES0_.exit.i.i255
  %i.iw = load i64, ptr %i.z, align 1
  %i.ix = xor i64 %i.iw, 7019251919007213890
  %i.iy = getelementptr i8, ptr %i.z, i64 8
  %i.iz = load i8, ptr %i.iy, align 1
  %i.ja = zext i8 %i.iz to i64
  %i.jb = xor i64 %i.ja, 110
  %i.jc = or i64 %i.ix, %i.jb
  %i.jd = icmp ne i64 %i.jc, 0
  %i.je = zext i1 %i.jd to i32
  %.not.i.i284 = icmp eq i32 %i.je, 0
  br i1 %.not.i.i284, label %_ZN4llvm12StringSwitchISt8optionalIjES2_E4CaseENS_13StringLiteralES2_.exit304, label %.thread990

_ZN4llvmneENS_9StringRefES0_.exit.i.i291:         ; preds = %_ZN4llvmneENS_9StringRefES0_.exit.i.i147
  %i.jf = load i64, ptr %i.z, align 1
  %i.jg = xor i64 %i.jf, 7945868634049767756
  %i.jh = getelementptr i8, ptr %i.z, i64 8
  %i.ji = load i32, ptr %i.jh, align 1
  %i.jj = zext i32 %i.ji to i64
  %i.jk = xor i64 %i.jj, 1851877732
  %i.jl = or i64 %i.jg, %i.jk
  %i.jm = icmp ne i64 %i.jl, 0
  %i.jn = zext i1 %i.jm to i32
  %.not.i.i293 = icmp eq i32 %i.jn, 0
  br i1 %.not.i.i293, label %_ZN4llvm12StringSwitchISt8optionalIjES2_E4CaseENS_13StringLiteralES2_.exit304, label %.thread990

_ZN4llvmneENS_9StringRefES0_.exit.i.i300:         ; preds = %_ZN4llvmneENS_9StringRefES0_.exit.i.i210
  %i.jo = load i128, ptr %i.z, align 1
  %i.jp = xor i128 %i.jo, 134763011382210346985688854636079639617
  %i.jq = getelementptr i8, ptr %i.z, i64 16
  %i.jr = load i8, ptr %i.jq, align 1
  %i.js = zext i8 %i.jr to i128
  %i.jt = xor i128 %i.js, 100
  %i.ju = or i128 %i.jp, %i.jt
  %i.jv = icmp ne i128 %i.ju, 0
  %i.jw = zext i1 %i.jv to i32
  %.not.i.i302 = icmp eq i32 %i.jw, 0
  br i1 %.not.i.i302, label %_ZN4llvm12StringSwitchISt8optionalIjES2_E4CaseENS_13StringLiteralES2_.exit304, label %.thread990

.thread990:                                       ; preds = %bb.b, %_ZN4llvmneENS_9StringRefES0_.exit.i.i84, %_ZN4llvmneENS_9StringRefES0_.exit.i.i21, %_ZN4llvmneENS_9StringRefES0_.exit.i.i174, %_ZN4llvmneENS_9StringRefES0_.exit.i.i138, %_ZN4llvmneENS_9StringRefES0_.exit.i.i237, %_ZN4llvmneENS_9StringRefES0_.exit.i.i228, %_ZN4llvmneENS_9StringRefES0_.exit.i.i201, %_ZN4llvmneENS_9StringRefES0_.exit.i.i246, %_ZN4llvmneENS_9StringRefES0_.exit.i.i264, %_ZN4llvmneENS_9StringRefES0_.exit.i.i273, %_ZN4llvmneENS_9StringRefES0_.exit.i.i282, %_ZN4llvmneENS_9StringRefES0_.exit.i.i291, %_ZN4llvmneENS_9StringRefES0_.exit.i.i300
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #22
  br label %.thread1010

_ZN4llvm12StringSwitchISt8optionalIjES2_E4CaseENS_13StringLiteralES2_.exit304: ; preds = %_ZN4llvmneENS_9StringRefES0_.exit.i.i, %_ZN4llvmneENS_9StringRefES0_.exit.i.i21, %_ZN4llvmneENS_9StringRefES0_.exit.i.i30, %_ZN4llvmneENS_9StringRefES0_.exit.i.i39, %_ZN4llvmneENS_9StringRefES0_.exit.i.i48, %_ZN4llvmneENS_9StringRefES0_.exit.i.i57, %_ZN4llvmneENS_9StringRefES0_.exit.i.i66, %_ZN4llvmneENS_9StringRefES0_.exit.i.i75, %_ZN4llvmneENS_9StringRefES0_.exit.i.i84, %_ZN4llvmneENS_9StringRefES0_.exit.i.i93, %_ZN4llvmneENS_9StringRefES0_.exit.i.i102, %_ZN4llvmneENS_9StringRefES0_.exit.i.i111, %_ZN4llvmneENS_9StringRefES0_.exit.i.i120, %_ZN4llvmneENS_9StringRefES0_.exit.i.i129, %_ZN4llvmneENS_9StringRefES0_.exit.i.i138, %_ZN4llvmneENS_9StringRefES0_.exit.i.i147, %_ZN4llvmneENS_9StringRefES0_.exit.i.i156, %_ZN4llvmneENS_9StringRefES0_.exit.i.i165, %_ZN4llvmneENS_9StringRefES0_.exit.i.i174, %_ZN4llvmneENS_9StringRefES0_.exit.i.i183, %_ZN4llvmneENS_9StringRefES0_.exit.i.i192, %_ZN4llvmneENS_9StringRefES0_.exit.i.i201, %_ZN4llvmneENS_9StringRefES0_.exit.i.i210, %_ZN4llvmneENS_9StringRefES0_.exit.i.i219, %_ZN4llvmneENS_9StringRefES0_.exit.i.i228, %_ZN4llvmneENS_9StringRefES0_.exit.i.i237, %_ZN4llvmneENS_9StringRefES0_.exit.i.i246, %_ZN4llvmneENS_9StringRefES0_.exit.i.i255, %_ZN4llvmneENS_9StringRefES0_.exit.i.i264, %_ZN4llvmneENS_9StringRefES0_.exit.i.i273, %_ZN4llvmneENS_9StringRefES0_.exit.i.i282, %_ZN4llvmneENS_9StringRefES0_.exit.i.i291, %_ZN4llvmneENS_9StringRefES0_.exit.i.i300
  %.sroa.70.32 = phi i32 [ 134217728, %_ZN4llvmneENS_9StringRefES0_.exit.i.i282 ], [ 268435456, %_ZN4llvmneENS_9StringRefES0_.exit.i.i291 ], [ 33554432, %_ZN4llvmneENS_9StringRefES0_.exit.i.i264 ], [ 67108864, %_ZN4llvmneENS_9StringRefES0_.exit.i.i273 ], [ 8388608, %_ZN4llvmneENS_9StringRefES0_.exit.i.i246 ], [ 16777216, %_ZN4llvmneENS_9StringRefES0_.exit.i.i255 ], [ 1048576, %_ZN4llvmneENS_9StringRefES0_.exit.i.i228 ], [ 4194304, %_ZN4llvmneENS_9StringRefES0_.exit.i.i237 ], [ 262144, %_ZN4llvmneENS_9StringRefES0_.exit.i.i210 ], [ 524288, %_ZN4llvmneENS_9StringRefES0_.exit.i.i219 ], [ 65536, %_ZN4llvmneENS_9StringRefES0_.exit.i.i192 ], [ 65536, %_ZN4llvmneENS_9StringRefES0_.exit.i.i201 ], [ 32768, %_ZN4llvmneENS_9StringRefES0_.exit.i.i174 ], [ 65536, %_ZN4llvmneENS_9StringRefES0_.exit.i.i183 ], [ 8192, %_ZN4llvmneENS_9StringRefES0_.exit.i.i156 ], [ 16384, %_ZN4llvmneENS_9StringRefES0_.exit.i.i165 ], [ 2048, %_ZN4llvmneENS_9StringRefES0_.exit.i.i138 ], [ 4096, %_ZN4llvmneENS_9StringRefES0_.exit.i.i147 ], [ 512, %_ZN4llvmneENS_9StringRefES0_.exit.i.i120 ], [ 1024, %_ZN4llvmneENS_9StringRefES0_.exit.i.i129 ], [ 128, %_ZN4llvmneENS_9StringRefES0_.exit.i.i102 ], [ 256, %_ZN4llvmneENS_9StringRefES0_.exit.i.i111 ], [ 16, %_ZN4llvmneENS_9StringRefES0_.exit.i.i75 ], [ 32, %_ZN4llvmneENS_9StringRefES0_.exit.i.i84 ], [ 64, %_ZN4llvmneENS_9StringRefES0_.exit.i.i93 ], [ 4, %_ZN4llvmneENS_9StringRefES0_.exit.i.i57 ], [ 8, %_ZN4llvmneENS_9StringRefES0_.exit.i.i66 ], [ 2, %_ZN4llvmneENS_9StringRefES0_.exit.i.i39 ], [ 3, %_ZN4llvmneENS_9StringRefES0_.exit.i.i48 ], [ 2, %_ZN4llvmneENS_9StringRefES0_.exit.i.i21 ], [ 1, %_ZN4llvmneENS_9StringRefES0_.exit.i.i30 ], [ 1, %_ZN4llvmneENS_9StringRefES0_.exit.i.i ], [ 536870912, %_ZN4llvmneENS_9StringRefES0_.exit.i.i300 ]
  %i.jx = or i32 %.sroa.70.32, %.01308            ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #22
  %i.jy = getelementptr inbounds nuw i8, ptr %.0161307, i64 16 ; 2 uses
  %.not = icmp eq ptr %i.jy, %i.l
  br i1 %.not, label %.thread1010.loopexit, label %bb.b

.thread1010.loopexit:                             ; preds = %_ZN4llvm12StringSwitchISt8optionalIjES2_E4CaseENS_13StringLiteralES2_.exit304
  %i.jz = zext i32 %i.jx to i64
  %i.ka = or disjoint i64 %i.jz, 4294967296
  br label %.thread1010

.thread1010:                                      ; preds = %.thread1010.loopexit, %_ZN4llvmeqENS_9StringRefES0_.exit.thread713, %.thread990
  %.sroa.3.3 = phi i64 [ 0, %.thread990 ], [ 4294967296, %_ZN4llvmeqENS_9StringRefES0_.exit.thread713 ], [ %i.ka, %.thread1010.loopexit ]
  %i.kb = load ptr, ptr %4, align 8, !tbaa !128   ; 2 uses
  %i.kc = icmp eq ptr %i.kb, %i.f
  br i1 %i.kc, label %_ZN4llvm11SmallVectorINS_9StringRefELj2EED2Ev.exit, label %bb.c

bb.c:                                             ; preds = %.thread1010
  call void @free(ptr noundef %i.kb) #22
  br label %_ZN4llvm11SmallVectorINS_9StringRefELj2EED2Ev.exit

_ZN4llvm11SmallVectorINS_9StringRefELj2EED2Ev.exit: ; preds = %.thread1010, %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #22
  br label %_ZN4llvmeqENS_9StringRefES0_.exit.thread

_ZN4llvmeqENS_9StringRefES0_.exit.thread:         ; preds = %_ZN4llvmeqENS_9StringRefES0_.exit, %_ZN4llvm11SmallVectorINS_9StringRefELj2EED2Ev.exit
  %.sroa.3.4 = phi i64 [ %.sroa.3.3, %_ZN4llvm11SmallVectorINS_9StringRefELj2EED2Ev.exit ], [ 4294967296, %_ZN4llvmeqENS_9StringRefES0_.exit ]
  ret i64 %.sroa.3.4
}

declare void @_ZNK4llvm9StringRef5splitERNS_15SmallVectorImplIS0_EES0_ib(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef nonnull align 8 dereferenceable(16), ptr, i64, i32 noundef, i1 noundef zeroext) local_unnamed_addr #4

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local range(i64 0, 8589934592) i64 @_ZN4mlir4LLVM16symbolizeDIFlagsEj(i32 noundef %0) local_unnamed_addr #2 {
bb.a:
  %i.a = and i32 %0, -1071513600
  %.not = icmp eq i32 %i.a, 0
  %.sroa.3.0.insert.shift = select i1 %.not, i64 4294967296, i64 0
  %.sroa.0.0.insert.ext = zext i32 %0 to i64
  %.sroa.0.0.insert.insert = or disjoint i64 %.sroa.3.0.insert.shift, %.sroa.0.0.insert.ext
  ret i64 %.sroa.0.0.insert.insert
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local noundef zeroext i1 @_ZN4mlir4LLVM11DIFlagsAttr7classofENS_9AttributeE(ptr %0) local_unnamed_addr #0 align 2 {
bb.a:
  %1 = alloca %"class.mlir::Type", align 8        ; 4 uses
  %2 = alloca %"class.mlir::IntegerAttr", align 8 ; 4 uses
  %3 = alloca %"class.mlir::IntegerAttr", align 8 ; 4 uses
  %i.a = load ptr, ptr %0, align 8, !tbaa !115
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 144
  %.sroa.0.0.copyload.i.i.i.i.i = load ptr, ptr %i.b, align 8, !tbaa !117
  %i.c = icmp eq ptr %.sroa.0.0.copyload.i.i.i.i.i, @_ZN4mlir6detail14TypeIDResolverINS_11IntegerAttrEvE2idE
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #22
  br i1 %i.c, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  store ptr %0, ptr %2, align 8
  %i.d = call ptr @_ZNK4mlir11IntegerAttr7getTypeEv(ptr noundef nonnull align 8 dereferenceable(8) %2) #22
  store ptr %i.d, ptr %1, align 8
  %i.e = call noundef zeroext i1 @_ZNK4mlir4Type17isSignlessIntegerEj(ptr noundef nonnull align 8 dereferenceable(8) %1, i32 noundef 32) #22
  br i1 %i.e, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  store ptr %0, ptr %3, align 8
  %i.f = call noundef nonnull align 8 dereferenceable(12) ptr @_ZNK4mlir11IntegerAttr8getValueEv(ptr noundef nonnull align 8 dereferenceable(8) %3) #22 ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %i.h = load i32, ptr %i.g, align 8, !tbaa !119
  %i.i = icmp ult i32 %i.h, 65
  %i.j = load ptr, ptr %i.f, align 8
  %spec.select.i = select i1 %i.i, ptr %i.f, ptr %i.j
  %.0.i = load i64, ptr %spec.select.i, align 8, !tbaa !120
  %i.k = and i64 %.0.i, 3223453696
  %.not = icmp eq i64 %i.k, 0
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b, %bb.a
  %i.l = phi i1 [ false, %bb.b ], [ false, %bb.a ], [ %.not, %bb.c ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #22
  ret i1 %i.l
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local ptr @_ZN4mlir4LLVM11DIFlagsAttr3getEPNS_11MLIRContextENS0_7DIFlagsE(ptr noundef %0, i32 noundef %1) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = tail call ptr @_ZN4mlir11IntegerType3getEPNS_11MLIRContextEjNS0_19SignednessSemanticsE(ptr noundef %0, i32 noundef 32, i32 noundef 0) #22
  %i.b = zext i32 %1 to i64
  %i.c = tail call ptr @_ZN4mlir11IntegerAttr3getENS_4TypeEl(ptr %i.a, i64 noundef %i.b) #22
  ret ptr %i.c
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local noundef i32 @_ZNK4mlir4LLVM11DIFlagsAttr8getValueEv(ptr noundef nonnull align 8 dereferenceable(8) %0) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = tail call noundef nonnull align 8 dereferenceable(12) ptr @_ZNK4mlir11IntegerAttr8getValueEv(ptr noundef nonnull align 8 dereferenceable(8) %0) #22 ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.c = load i32, ptr %i.b, align 8, !tbaa !119
  %i.d = icmp ult i32 %i.c, 65
  %i.e = load ptr, ptr %i.a, align 8
  %spec.select.i = select i1 %i.d, ptr %i.a, ptr %i.e
  %.0.i = load i64, ptr %spec.select.i, align 8, !tbaa !120
  %i.f = trunc i64 %.0.i to i32
  ret i32 %i.f
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN4mlir4LLVM26stringifyDISubprogramFlagsB5cxx11ENS0_17DISubprogramFlagsE(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, i32 noundef %1) local_unnamed_addr #0 {
bb.a:
  %2 = alloca %"class.llvm::SmallVector", align 8 ; 26 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #22
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 5 uses
  store ptr %i.a, ptr %2, align 8, !tbaa !128
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 29 uses
  store i32 0, ptr %i.b, align 8, !tbaa !129
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 12 ; 9 uses
  store i32 2, ptr %i.c, align 4, !tbaa !130
  %i.d = and i32 %1, 1
  %.not = icmp eq i32 %i.d, 0
  br i1 %.not, label %bb.b, label %_ZN4llvm23SmallVectorTemplateBaseINS_9StringRefELb1EE9push_backES1_.exit

_ZN4llvm23SmallVectorTemplateBaseINS_9StringRefELb1EE9push_backES1_.exit: ; preds = %bb.a
  store ptr @.str.94, ptr %i.a, align 8
  %.sroa.3.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %2, i64 24
  store i64 7, ptr %.sroa.3.0..sroa_idx.i, align 8
  store i32 1, ptr %i.b, align 8, !tbaa !129
  br label %bb.b

bb.b:                                             ; preds = %_ZN4llvm23SmallVectorTemplateBaseINS_9StringRefELb1EE9push_backES1_.exit, %bb.a
  %i.e = phi i32 [ 1, %_ZN4llvm23SmallVectorTemplateBaseINS_9StringRefELb1EE9push_backES1_.exit ], [ 0, %bb.a ] ; 3 uses
  %i.f = and i32 %1, 2
  %.not12 = icmp eq i32 %i.f, 0
  br i1 %.not12, label %_ZN4llvm23SmallVectorTemplateBaseINS_9StringRefELb1EE9push_backES1_.exit24, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.g = zext nneg i32 %i.e to i64
  %i.h = getelementptr inbounds nuw [16 x i8], ptr %i.a, i64 %i.g ; 2 uses
  store ptr @.str.121, ptr %i.h, align 8
  %.sroa.3.0..sroa_idx.i23 = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  store i64 11, ptr %.sroa.3.0..sroa_idx.i23, align 8
  %i.i = add nuw nsw i32 %i.e, 1                  ; 2 uses
  store i32 %i.i, ptr %i.b, align 8, !tbaa !129
  br label %_ZN4llvm23SmallVectorTemplateBaseINS_9StringRefELb1EE9push_backES1_.exit24

_ZN4llvm23SmallVectorTemplateBaseINS_9StringRefELb1EE9push_backES1_.exit24: ; preds = %bb.c, %bb.b
  %i.j = phi i32 [ %i.i, %bb.c ], [ %i.e, %bb.b ] ; 4 uses
  %i.k = and i32 %1, 4
  %.not13 = icmp eq i32 %i.k, 0
  br i1 %.not13, label %_ZN4llvm23SmallVectorTemplateBaseINS_9StringRefELb1EE9push_backES1_.exit27, label %bb.d

bb.d:                                             ; preds = %_ZN4llvm23SmallVectorTemplateBaseINS_9StringRefELb1EE9push_backES1_.exit24
  %.not.i25 = icmp samesign ult i32 %i.j, 2
  br i1 %.not.i25, label %bb.f, label %bb.e, !prof !131

bb.e:                                             ; preds = %bb.d
  call void @_ZN4llvm23SmallVectorTemplateBaseINS_9StringRefELb1EE15growAndPushBackES1_(ptr noundef nonnull align 8 dereferenceable(16) %2, ptr nonnull @.str.122, i64 11)
  %.pre74.pre75.pre77.pre79.pre81.pre83.pre85.pre87.pre = load i32, ptr %i.b, align 8, !tbaa !129
  br label %_ZN4llvm23SmallVectorTemplateBaseINS_9StringRefELb1EE9push_backES1_.exit27

bb.f:                                             ; preds = %bb.d
  %i.l = zext nneg i32 %i.j to i64
  %i.m = getelementptr inbounds nuw [16 x i8], ptr %i.a, i64 %i.l ; 2 uses
  store ptr @.str.122, ptr %i.m, align 8
  %.sroa.3.0..sroa_idx.i26 = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  store i64 11, ptr %.sroa.3.0..sroa_idx.i26, align 8
  %i.n = add nuw nsw i32 %i.j, 1                  ; 2 uses
  store i32 %i.n, ptr %i.b, align 8, !tbaa !129
  br label %_ZN4llvm23SmallVectorTemplateBaseINS_9StringRefELb1EE9push_backES1_.exit27

_ZN4llvm23SmallVectorTemplateBaseINS_9StringRefELb1EE9push_backES1_.exit27: ; preds = %bb.f, %bb.e, %_ZN4llvm23SmallVectorTemplateBaseINS_9StringRefELb1EE9push_backES1_.exit24
  %.pre74.pre75.pre77.pre79.pre81.pre83.pre85.pre87 = phi i32 [ %i.n, %bb.f ], [ %.pre74.pre75.pre77.pre79.pre81.pre83.pre85.pre87.pre, %bb.e ], [ %i.j, %_ZN4llvm23SmallVectorTemplateBaseINS_9StringRefELb1EE9push_backES1_.exit24 ] ; 3 uses
  %i.o = and i32 %1, 8
  %.not14 = icmp eq i32 %i.o, 0
  br i1 %.not14, label %_ZN4llvm23SmallVectorTemplateBaseINS_9StringRefELb1EE9push_backES1_.exit30, label %bb.g

bb.g:                                             ; preds = %_ZN4llvm23SmallVectorTemplateBaseINS_9StringRefELb1EE9push_backES1_.exit27
  %i.p = load i32, ptr %i.c, align 4, !tbaa !130
  %.not.i28 = icmp ult i32 %.pre74.pre75.pre77.pre79.pre81.pre83.pre85.pre87, %i.p
  br i1 %.not.i28, label %bb.i, label %bb.h, !prof !131

bb.h:                                             ; preds = %bb.g
  call void @_ZN4llvm23SmallVectorTemplateBaseINS_9StringRefELb1EE15growAndPushBackES1_(ptr noundef nonnull align 8 dereferenceable(16) %2, ptr nonnull @.str.123, i64 10)
  %.pre74.pre75.pre77.pre79.pre81.pre83.pre85.pre = load i32, ptr %i.b, align 8, !tbaa !129
  br label %_ZN4llvm23SmallVectorTemplateBaseINS_9StringRefELb1EE9push_backES1_.exit30

bb.i:                                             ; preds = %bb.g
  %i.q = zext i32 %.pre74.pre75.pre77.pre79.pre81.pre83.pre85.pre87 to i64
  %i.r = load ptr, ptr %2, align 8, !tbaa !128
  %i.s = getelementptr inbounds nuw [16 x i8], ptr %i.r, i64 %i.q ; 2 uses
  store ptr @.str.123, ptr %i.s, align 1
  %.sroa.3.0..sroa_idx.i29 = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  store i64 10, ptr %.sroa.3.0..sroa_idx.i29, align 1
  %i.t = load i32, ptr %i.b, align 8, !tbaa !129
  %i.u = add i32 %i.t, 1                          ; 2 uses
  store i32 %i.u, ptr %i.b, align 8, !tbaa !129
  br label %_ZN4llvm23SmallVectorTemplateBaseINS_9StringRefELb1EE9push_backES1_.exit30

_ZN4llvm23SmallVectorTemplateBaseINS_9StringRefELb1EE9push_backES1_.exit30: ; preds = %bb.i, %bb.h, %_ZN4llvm23SmallVectorTemplateBaseINS_9StringRefELb1EE9push_backES1_.exit27
  %.pre74.pre75.pre77.pre79.pre81.pre83.pre85 = phi i32 [ %i.u, %bb.i ], [ %.pre74.pre75.pre77.pre79.pre81.pre83.pre85.pre, %bb.h ], [ %.pre74.pre75.pre77.pre79.pre81.pre83.pre85.pre87, %_ZN4llvm23SmallVectorTemplateBaseINS_9StringRefELb1EE9push_backES1_.exit27 ] ; 3 uses
  %i.v = and i32 %1, 16
  %.not15 = icmp eq i32 %i.v, 0
  br i1 %.not15, label %_ZN4llvm23SmallVectorTemplateBaseINS_9StringRefELb1EE9push_backES1_.exit33, label %bb.j

bb.j:                                             ; preds = %_ZN4llvm23SmallVectorTemplateBaseINS_9StringRefELb1EE9push_backES1_.exit30
  %i.w = load i32, ptr %i.c, align 4, !tbaa !130
end_hunk_0
begin_hunk_1_@_ZN4mlir4LLVM26symbolizeDISubprogramFlagsEN4llvm9StringRefE:bb.a
  store i64 %1, ptr %i.a, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #22
  %i.b = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  store ptr %i.b, ptr %4, align 8, !tbaa !128
  %i.c = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  store i32 0, ptr %i.c, align 8, !tbaa !129
  %i.d = getelementptr inbounds nuw i8, ptr %4, i64 12
  store i32 2, ptr %i.d, align 4, !tbaa !130
  call void @_ZNK4llvm9StringRef5splitERNS_15SmallVectorImplIS0_EES0_ib(ptr noundef nonnull align 8 dereferenceable(16) %3, ptr noundef nonnull align 8 dereferenceable(16) %4, ptr nonnull @.str.119, i64 1, i32 noundef -1, i1 noundef zeroext true) #22
  %i.e = load ptr, ptr %4, align 8, !tbaa !128    ; 2 uses
  %i.f = load i32, ptr %i.c, align 8, !tbaa !129  ; 2 uses
  %i.g = zext i32 %i.f to i64
  %.idx = shl nuw nsw i64 %i.g, 4
  %i.h = getelementptr inbounds nuw i8, ptr %i.e, i64 %.idx
  %.not374 = icmp eq i32 %i.f, 0
  br i1 %.not374, label %.thread335, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %_ZN4llvm12StringSwitchISt8optionalIjES2_E4CaseENS_13StringLiteralES2_.exit104
  %.0376 = phi i32 [ 0, %.lr.ph ], [ %i.dg, %_ZN4llvm12StringSwitchISt8optionalIjES2_E4CaseENS_13StringLiteralES2_.exit104 ]
  %.014375 = phi ptr [ %i.e, %.lr.ph ], [ %i.dh, %_ZN4llvm12StringSwitchISt8optionalIjES2_E4CaseENS_13StringLiteralES2_.exit104 ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #22
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %5, ptr noundef nonnull align 8 dereferenceable(16) %.014375, i64 16, i1 false), !tbaa.struct !134
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #22
  %i.k = load i64, ptr %i.i, align 8, !tbaa !136
  %i.l = call noundef i64 @_ZNK4llvm9StringRef17find_first_not_ofES0_m(ptr noundef nonnull align 8 dereferenceable(16) %5, ptr nonnull @.str.120, i64 6, i64 noundef 0) #22
  %.sroa.speculated.i.i = call i64 @llvm.umin.i64(i64 %i.l, i64 %i.k)
  %i.m = load i64, ptr %i.i, align 8, !tbaa !136  ; 2 uses
  %.sroa.speculated4.i.i.i.i = call i64 @llvm.umin.i64(i64 %i.m, i64 %.sroa.speculated.i.i) ; 2 uses
  %i.n = load ptr, ptr %5, align 8, !tbaa !137
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 %.sroa.speculated4.i.i.i.i
  %i.p = sub i64 %i.m, %.sroa.speculated4.i.i.i.i ; 2 uses
  store ptr %i.o, ptr %2, align 8
  store i64 %i.p, ptr %i.j, align 8
  %i.q = call noundef i64 @_ZNK4llvm9StringRef16find_last_not_ofES0_m(ptr noundef nonnull align 8 dereferenceable(16) %2, ptr nonnull @.str.120, i64 6, i64 noundef -1) #22
  %i.r = add i64 %i.q, 1
  %i.s = call i64 @llvm.usub.sat.i64(i64 %i.p, i64 %i.r)
  %i.t = load i64, ptr %i.j, align 8, !tbaa !136  ; 2 uses
  %i.u = sub i64 %i.t, %i.s
  %i.v = load ptr, ptr %2, align 8, !tbaa !137    ; 21 uses
  %.sroa.speculated.i.i.i.i = call i64 @llvm.umin.i64(i64 %i.t, i64 %i.u)
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #22
  switch i64 %.sroa.speculated.i.i.i.i, label %_ZN4llvm12StringSwitchISt8optionalIjES2_E4CaseENS_13StringLiteralES2_.exit95.thread315 [
    i64 7, label %_ZN4llvmneENS_9StringRefES0_.exit.i.i
    i64 11, label %_ZN4llvmneENS_9StringRefES0_.exit.i.i19
    i64 10, label %_ZN4llvmneENS_9StringRefES0_.exit.i.i37
    i64 9, label %_ZN4llvmneENS_9StringRefES0_.exit.i.i46
    i64 4, label %_ZN4llvmneENS_9StringRefES0_.exit.i.i55
    i64 14, label %_ZN4llvmneENS_9StringRefES0_.exit.i.i82
  ]

_ZN4llvmneENS_9StringRefES0_.exit.i.i:            ; preds = %bb.b
  %i.w = load i32, ptr %i.v, align 1
  %i.x = xor i32 %i.w, 1953655126
  %i.y = getelementptr i8, ptr %i.v, i64 3
  %i.z = load i32, ptr %i.y, align 1
  %i.aa = xor i32 %i.z, 1818326388
  %i.ab = or i32 %i.x, %i.aa
  %i.ac = icmp ne i32 %i.ab, 0
  %i.ad = zext i1 %i.ac to i32
  %.not.i.i = icmp eq i32 %i.ad, 0
  br i1 %.not.i.i, label %_ZN4llvm12StringSwitchISt8optionalIjES2_E4CaseENS_13StringLiteralES2_.exit104, label %_ZN4llvmneENS_9StringRefES0_.exit.i.i91

_ZN4llvmneENS_9StringRefES0_.exit.i.i19:          ; preds = %bb.b
  %i.ae = load i64, ptr %i.v, align 1
  %i.af = xor i64 %i.ae, 8390884875534759248
  %i.ag = getelementptr i8, ptr %i.v, i64 3
  %i.ah = load i64, ptr %i.ag, align 1
  %i.ai = xor i64 %i.ah, 7809652371833312869
  %i.aj = or i64 %i.af, %i.ai
  %i.ak = icmp ne i64 %i.aj, 0
  %i.al = zext i1 %i.ak to i32
  %.not.i.i21 = icmp eq i32 %i.al, 0
  br i1 %.not.i.i21, label %_ZN4llvm12StringSwitchISt8optionalIjES2_E4CaseENS_13StringLiteralES2_.exit104, label %_ZN4llvmneENS_9StringRefES0_.exit.i.i28

_ZN4llvmneENS_9StringRefES0_.exit.i.i28:          ; preds = %_ZN4llvmneENS_9StringRefES0_.exit.i.i19
  %i.am = load i64, ptr %i.v, align 1
  %i.an = xor i64 %i.am, 6156232040105865036
  %i.ao = getelementptr i8, ptr %i.v, i64 3
  %i.ap = load i64, ptr %i.ao, align 1
  %i.aq = xor i64 %i.ap, 8388357094173338721
  %i.ar = or i64 %i.an, %i.aq
  %i.as = icmp ne i64 %i.ar, 0
  %i.at = zext i1 %i.as to i32
  %.not.i.i30 = icmp eq i32 %i.at, 0
  br i1 %.not.i.i30, label %_ZN4llvm12StringSwitchISt8optionalIjES2_E4CaseENS_13StringLiteralES2_.exit104, label %_ZN4llvm12StringSwitchISt8optionalIjES2_E4CaseENS_13StringLiteralES2_.exit95.thread315

_ZN4llvmneENS_9StringRefES0_.exit.i.i37:          ; preds = %bb.b
  %i.au = load i64, ptr %i.v, align 1
  %i.av = xor i64 %i.au, 7598814394216506692
  %i.aw = getelementptr i8, ptr %i.v, i64 8
  %i.ax = load i16, ptr %i.aw, align 1
  %i.ay = zext i16 %i.ax to i64
  %i.az = xor i64 %i.ay, 28271
  %i.ba = or i64 %i.av, %i.az
  %i.bb = icmp ne i64 %i.ba, 0
  %i.bc = zext i1 %i.bb to i32
  %.not.i.i39 = icmp eq i32 %i.bc, 0
  br i1 %.not.i.i39, label %_ZN4llvm12StringSwitchISt8optionalIjES2_E4CaseENS_13StringLiteralES2_.exit104, label %_ZN4llvmneENS_9StringRefES0_.exit.i.i100

_ZN4llvmneENS_9StringRefES0_.exit.i.i46:          ; preds = %bb.b
  %i.bd = load i64, ptr %i.v, align 1
  %i.be = xor i64 %i.bd, 7312272863631011919
  %i.bf = getelementptr i8, ptr %i.v, i64 8
  %i.bg = load i8, ptr %i.bf, align 1
  %i.bh = zext i8 %i.bg to i64
  %i.bi = xor i64 %i.bh, 100
  %i.bj = or i64 %i.be, %i.bi
  %i.bk = icmp ne i64 %i.bj, 0
  %i.bl = zext i1 %i.bk to i32
  %.not.i.i48 = icmp eq i32 %i.bl, 0
  br i1 %.not.i.i48, label %_ZN4llvm12StringSwitchISt8optionalIjES2_E4CaseENS_13StringLiteralES2_.exit104, label %_ZN4llvmneENS_9StringRefES0_.exit.i.i64

_ZN4llvmneENS_9StringRefES0_.exit.i.i55:          ; preds = %bb.b
  %i.bm = load i32, ptr %i.v, align 1
  %i.bn = icmp ne i32 %i.bm, 1701999952
  %i.bo = zext i1 %i.bn to i32
  %.not.i.i57 = icmp eq i32 %i.bo, 0
  br i1 %.not.i.i57, label %_ZN4llvm12StringSwitchISt8optionalIjES2_E4CaseENS_13StringLiteralES2_.exit104, label %_ZN4llvm12StringSwitchISt8optionalIjES2_E4CaseENS_13StringLiteralES2_.exit95.thread315

_ZN4llvmneENS_9StringRefES0_.exit.i.i64:          ; preds = %_ZN4llvmneENS_9StringRefES0_.exit.i.i46
  %i.bp = load i64, ptr %i.v, align 1
  %i.bq = xor i64 %i.bp, 7022359100883561541
  %i.br = getelementptr i8, ptr %i.v, i64 8
  %i.bs = load i8, ptr %i.br, align 1
  %i.bt = zext i8 %i.bs to i64
  %i.bu = xor i64 %i.bt, 108
  %i.bv = or i64 %i.bq, %i.bu
  %i.bw = icmp ne i64 %i.bv, 0
  %i.bx = zext i1 %i.bw to i32
  %.not.i.i66 = icmp eq i32 %i.bx, 0
  br i1 %.not.i.i66, label %_ZN4llvm12StringSwitchISt8optionalIjES2_E4CaseENS_13StringLiteralES2_.exit104, label %_ZN4llvmneENS_9StringRefES0_.exit.i.i73

_ZN4llvmneENS_9StringRefES0_.exit.i.i73:          ; preds = %_ZN4llvmneENS_9StringRefES0_.exit.i.i64
  %i.by = load i64, ptr %i.v, align 1
  %i.bz = xor i64 %i.by, 8532477904463029586
  %i.ca = getelementptr i8, ptr %i.v, i64 8
  %i.cb = load i8, ptr %i.ca, align 1
  %i.cc = zext i8 %i.cb to i64
  %i.cd = xor i64 %i.cc, 101
  %i.ce = or i64 %i.bz, %i.cd
  %i.cf = icmp ne i64 %i.ce, 0
  %i.cg = zext i1 %i.cf to i32
  %.not.i.i75 = icmp eq i32 %i.cg, 0
  br i1 %.not.i.i75, label %_ZN4llvm12StringSwitchISt8optionalIjES2_E4CaseENS_13StringLiteralES2_.exit104, label %_ZN4llvm12StringSwitchISt8optionalIjES2_E4CaseENS_13StringLiteralES2_.exit95.thread315

_ZN4llvmneENS_9StringRefES0_.exit.i.i82:          ; preds = %bb.b
  %i.ch = load i64, ptr %i.v, align 1
  %i.ci = xor i64 %i.ch, 8098164081160708429
  %i.cj = getelementptr i8, ptr %i.v, i64 6
  %i.ck = load i64, ptr %i.cj, align 1
  %i.cl = xor i64 %i.ck, 7881706611452047458
  %i.cm = or i64 %i.ci, %i.cl
  %i.cn = icmp ne i64 %i.cm, 0
  %i.co = zext i1 %i.cn to i32
  %.not.i.i84 = icmp eq i32 %i.co, 0
  br i1 %.not.i.i84, label %_ZN4llvm12StringSwitchISt8optionalIjES2_E4CaseENS_13StringLiteralES2_.exit104, label %_ZN4llvm12StringSwitchISt8optionalIjES2_E4CaseENS_13StringLiteralES2_.exit95.thread315

_ZN4llvmneENS_9StringRefES0_.exit.i.i91:          ; preds = %_ZN4llvmneENS_9StringRefES0_.exit.i.i
  %i.cp = load i32, ptr %i.v, align 1
  %i.cq = xor i32 %i.cp, 1701602628
  %i.cr = getelementptr i8, ptr %i.v, i64 3
  %i.cs = load i32, ptr %i.cr, align 1
  %i.ct = xor i32 %i.cs, 1684370533
  %i.cu = or i32 %i.cq, %i.ct
  %i.cv = icmp ne i32 %i.cu, 0
  %i.cw = zext i1 %i.cv to i32
  %.not.i.i93 = icmp eq i32 %i.cw, 0
  br i1 %.not.i.i93, label %_ZN4llvm12StringSwitchISt8optionalIjES2_E4CaseENS_13StringLiteralES2_.exit104, label %_ZN4llvm12StringSwitchISt8optionalIjES2_E4CaseENS_13StringLiteralES2_.exit95.thread315

_ZN4llvmneENS_9StringRefES0_.exit.i.i100:         ; preds = %_ZN4llvmneENS_9StringRefES0_.exit.i.i37
  %i.cx = load i64, ptr %i.v, align 1
  %i.cy = xor i64 %i.cx, 7310020887085474383
  %i.cz = getelementptr i8, ptr %i.v, i64 8
  %i.da = load i16, ptr %i.cz, align 1
  %i.db = zext i16 %i.da to i64
  %i.dc = xor i64 %i.db, 29795
  %i.dd = or i64 %i.cy, %i.dc
  %i.de = icmp ne i64 %i.dd, 0
  %i.df = zext i1 %i.de to i32
  %.not.i.i102 = icmp eq i32 %i.df, 0
  br i1 %.not.i.i102, label %_ZN4llvm12StringSwitchISt8optionalIjES2_E4CaseENS_13StringLiteralES2_.exit104, label %_ZN4llvm12StringSwitchISt8optionalIjES2_E4CaseENS_13StringLiteralES2_.exit95.thread315

_ZN4llvm12StringSwitchISt8optionalIjES2_E4CaseENS_13StringLiteralES2_.exit95.thread315: ; preds = %bb.b, %_ZN4llvmneENS_9StringRefES0_.exit.i.i28, %_ZN4llvmneENS_9StringRefES0_.exit.i.i82, %_ZN4llvmneENS_9StringRefES0_.exit.i.i55, %_ZN4llvmneENS_9StringRefES0_.exit.i.i73, %_ZN4llvmneENS_9StringRefES0_.exit.i.i91, %_ZN4llvmneENS_9StringRefES0_.exit.i.i100
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #22
  br label %.thread335

_ZN4llvm12StringSwitchISt8optionalIjES2_E4CaseENS_13StringLiteralES2_.exit104: ; preds = %_ZN4llvmneENS_9StringRefES0_.exit.i.i, %_ZN4llvmneENS_9StringRefES0_.exit.i.i19, %_ZN4llvmneENS_9StringRefES0_.exit.i.i28, %_ZN4llvmneENS_9StringRefES0_.exit.i.i37, %_ZN4llvmneENS_9StringRefES0_.exit.i.i46, %_ZN4llvmneENS_9StringRefES0_.exit.i.i55, %_ZN4llvmneENS_9StringRefES0_.exit.i.i64, %_ZN4llvmneENS_9StringRefES0_.exit.i.i73, %_ZN4llvmneENS_9StringRefES0_.exit.i.i82, %_ZN4llvmneENS_9StringRefES0_.exit.i.i91, %_ZN4llvmneENS_9StringRefES0_.exit.i.i100
  %.sroa.26.10 = phi i32 [ 512, %_ZN4llvmneENS_9StringRefES0_.exit.i.i91 ], [ 128, %_ZN4llvmneENS_9StringRefES0_.exit.i.i73 ], [ 256, %_ZN4llvmneENS_9StringRefES0_.exit.i.i82 ], [ 64, %_ZN4llvmneENS_9StringRefES0_.exit.i.i64 ], [ 16, %_ZN4llvmneENS_9StringRefES0_.exit.i.i46 ], [ 32, %_ZN4llvmneENS_9StringRefES0_.exit.i.i55 ], [ 4, %_ZN4llvmneENS_9StringRefES0_.exit.i.i28 ], [ 8, %_ZN4llvmneENS_9StringRefES0_.exit.i.i37 ], [ 2, %_ZN4llvmneENS_9StringRefES0_.exit.i.i19 ], [ 1, %_ZN4llvmneENS_9StringRefES0_.exit.i.i ], [ 2048, %_ZN4llvmneENS_9StringRefES0_.exit.i.i100 ]
  %i.dg = or i32 %.sroa.26.10, %.0376             ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #22
  %i.dh = getelementptr inbounds nuw i8, ptr %.014375, i64 16 ; 2 uses
  %.not = icmp eq ptr %i.dh, %i.h
  br i1 %.not, label %.thread335.loopexit, label %bb.b

.thread335.loopexit:                              ; preds = %_ZN4llvm12StringSwitchISt8optionalIjES2_E4CaseENS_13StringLiteralES2_.exit104
  %i.di = zext i32 %i.dg to i64
  %i.dj = or disjoint i64 %i.di, 4294967296
  br label %.thread335

.thread335:                                       ; preds = %.thread335.loopexit, %bb.a, %_ZN4llvm12StringSwitchISt8optionalIjES2_E4CaseENS_13StringLiteralES2_.exit95.thread315
  %.sroa.2241.3 = phi i64 [ 0, %_ZN4llvm12StringSwitchISt8optionalIjES2_E4CaseENS_13StringLiteralES2_.exit95.thread315 ], [ 4294967296, %bb.a ], [ %i.dj, %.thread335.loopexit ]
  %i.dk = load ptr, ptr %4, align 8, !tbaa !128   ; 2 uses
  %i.dl = icmp eq ptr %i.dk, %i.b
  br i1 %i.dl, label %_ZN4llvm11SmallVectorINS_9StringRefELj2EED2Ev.exit, label %bb.c

bb.c:                                             ; preds = %.thread335
  call void @free(ptr noundef %i.dk) #22
  br label %_ZN4llvm11SmallVectorINS_9StringRefELj2EED2Ev.exit

_ZN4llvm11SmallVectorINS_9StringRefELj2EED2Ev.exit: ; preds = %.thread335, %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #22
  ret i64 %.sroa.2241.3
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local range(i64 0, 8589934592) i64 @_ZN4mlir4LLVM26symbolizeDISubprogramFlagsEj(i32 noundef %0) local_unnamed_addr #2 {
bb.a:
  %i.a = and i32 %0, -3072
  %.not = icmp eq i32 %i.a, 0
  %.sroa.2.0.insert.shift = select i1 %.not, i64 4294967296, i64 0
  %.sroa.0.0.insert.ext = zext i32 %0 to i64
  %.sroa.0.0.insert.insert = or disjoint i64 %.sroa.2.0.insert.shift, %.sroa.0.0.insert.ext
  ret i64 %.sroa.0.0.insert.insert
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local noundef zeroext i1 @_ZN4mlir4LLVM21DISubprogramFlagsAttr7classofENS_9AttributeE(ptr %0) local_unnamed_addr #0 align 2 {
bb.a:
  %1 = alloca %"class.mlir::Type", align 8        ; 4 uses
  %2 = alloca %"class.mlir::IntegerAttr", align 8 ; 4 uses
  %3 = alloca %"class.mlir::IntegerAttr", align 8 ; 4 uses
  %i.a = load ptr, ptr %0, align 8, !tbaa !115
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 144
  %.sroa.0.0.copyload.i.i.i.i.i = load ptr, ptr %i.b, align 8, !tbaa !117
  %i.c = icmp eq ptr %.sroa.0.0.copyload.i.i.i.i.i, @_ZN4mlir6detail14TypeIDResolverINS_11IntegerAttrEvE2idE
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #22
  br i1 %i.c, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  store ptr %0, ptr %2, align 8
  %i.d = call ptr @_ZNK4mlir11IntegerAttr7getTypeEv(ptr noundef nonnull align 8 dereferenceable(8) %2) #22
  store ptr %i.d, ptr %1, align 8
  %i.e = call noundef zeroext i1 @_ZNK4mlir4Type17isSignlessIntegerEj(ptr noundef nonnull align 8 dereferenceable(8) %1, i32 noundef 32) #22
  br i1 %i.e, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  store ptr %0, ptr %3, align 8
  %i.f = call noundef nonnull align 8 dereferenceable(12) ptr @_ZNK4mlir11IntegerAttr8getValueEv(ptr noundef nonnull align 8 dereferenceable(8) %3) #22 ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %i.h = load i32, ptr %i.g, align 8, !tbaa !119
  %i.i = icmp ult i32 %i.h, 65
  %i.j = load ptr, ptr %i.f, align 8
  %spec.select.i = select i1 %i.i, ptr %i.f, ptr %i.j
  %.0.i = load i64, ptr %spec.select.i, align 8, !tbaa !120
  %i.k = and i64 %.0.i, 4294964224
  %.not = icmp eq i64 %i.k, 0
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b, %bb.a
  %i.l = phi i1 [ false, %bb.b ], [ false, %bb.a ], [ %.not, %bb.c ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #22
  ret i1 %i.l
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local ptr @_ZN4mlir4LLVM21DISubprogramFlagsAttr3getEPNS_11MLIRContextENS0_17DISubprogramFlagsE(ptr noundef %0, i32 noundef %1) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = tail call ptr @_ZN4mlir11IntegerType3getEPNS_11MLIRContextEjNS0_19SignednessSemanticsE(ptr noundef %0, i32 noundef 32, i32 noundef 0) #22
  %i.b = zext i32 %1 to i64
  %i.c = tail call ptr @_ZN4mlir11IntegerAttr3getENS_4TypeEl(ptr %i.a, i64 noundef %i.b) #22
  ret ptr %i.c
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local noundef i32 @_ZNK4mlir4LLVM21DISubprogramFlagsAttr8getValueEv(ptr noundef nonnull align 8 dereferenceable(8) %0) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = tail call noundef nonnull align 8 dereferenceable(12) ptr @_ZNK4mlir11IntegerAttr8getValueEv(ptr noundef nonnull align 8 dereferenceable(8) %0) #22 ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.c = load i32, ptr %i.b, align 8, !tbaa !119
  %i.d = icmp ult i32 %i.c, 65
  %i.e = load ptr, ptr %i.a, align 8
  %spec.select.i = select i1 %i.d, ptr %i.a, ptr %i.e
  %.0.i = load i64, ptr %spec.select.i, align 8, !tbaa !120
  %i.f = trunc i64 %.0.i to i32
  ret i32 %i.f
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local { ptr, i64 } @_ZN4mlir4LLVM25stringifyDenormalModeKindENS0_16DenormalModeKindE(i64 noundef %0) local_unnamed_addr #2 {
bb.a:
  %i.a = icmp ult i64 %0, 5
  br i1 %i.a, label %switch.lookup, label %bb.b

switch.lookup:                                    ; preds = %bb.a
  %switch.gep = getelementptr inbounds nuw i8, ptr @switch.table._ZNK4mlir4LLVM17DenormalFPEnvAttr5printERNS_10AsmPrinterE.291, i64 %0
  %switch.load = load i8, ptr %switch.gep, align 1
  %switch.ext = zext i8 %switch.load to i64
  %switch.gep1 = getelementptr inbounds nuw [8 x i8], ptr @switch.table._ZNK4mlir4LLVM17DenormalFPEnvAttr5printERNS_10AsmPrinterE.292, i64 %0
  %switch.load2 = load ptr, ptr %switch.gep1, align 8
  br label %bb.b

bb.b:                                             ; preds = %bb.a, %switch.lookup
  %.sroa.7.0 = phi i64 [ %switch.ext, %switch.lookup ], [ 0, %bb.a ]
  %.sroa.0.0 = phi ptr [ %switch.load2, %switch.lookup ], [ @.str.2, %bb.a ]
  %.fca.0.insert = insertvalue { ptr, i64 } poison, ptr %.sroa.0.0, 0
  %.fca.1.insert = insertvalue { ptr, i64 } %.fca.0.insert, i64 %.sroa.7.0, 1
  ret { ptr, i64 } %.fca.1.insert
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local { i64, i8 } @_ZN4mlir4LLVM25symbolizeDenormalModeKindEN4llvm9StringRefE(ptr nofree readonly captures(none) %0, i64 %1) local_unnamed_addr #3 {
bb.a:
  switch i64 %1, label %_ZN4llvm12StringSwitchISt8optionalIN4mlir4LLVM16DenormalModeKindEES5_E4CaseENS_13StringLiteralES5_.exit45 [
    i64 4, label %_ZN4llvmneENS_9StringRefES0_.exit.i.i
    i64 12, label %_ZN4llvmneENS_9StringRefES0_.exit.i.i10
    i64 7, label %_ZN4llvmneENS_9StringRefES0_.exit.i.i30
  ]

_ZN4llvmneENS_9StringRefES0_.exit.i.i:            ; preds = %bb.a
  %i.a = load i32, ptr %0, align 1
  %i.b = icmp ne i32 %i.a, 1701143913
  %i.c = zext i1 %i.b to i32
  %.not.i.i = icmp eq i32 %i.c, 0
  br i1 %.not.i.i, label %_ZN4llvm12StringSwitchISt8optionalIN4mlir4LLVM16DenormalModeKindEES5_E4CaseENS_13StringLiteralES5_.exit45, label %_ZN4llvm12StringSwitchISt8optionalIN4mlir4LLVM16DenormalModeKindEES5_E4CaseENS_13StringLiteralES5_.exit25.thread94.thread

_ZN4llvmneENS_9StringRefES0_.exit.i.i10:          ; preds = %bb.a
  %i.d = load i64, ptr %0, align 1
  %i.e = xor i64 %i.d, 7311156825135870576
  %i.f = getelementptr i8, ptr %0, i64 8
  %i.g = load i32, ptr %i.f, align 1
  %i.h = zext i32 %i.g to i64
  %i.i = xor i64 %i.h, 1852270963
  %i.j = or i64 %i.e, %i.i
  %i.k = icmp ne i64 %i.j, 0
  %i.l = zext i1 %i.k to i32
  %.not.i.i12 = icmp eq i32 %i.l, 0
  br i1 %.not.i.i12, label %_ZN4llvm12StringSwitchISt8optionalIN4mlir4LLVM16DenormalModeKindEES5_E4CaseENS_13StringLiteralES5_.exit45, label %_ZN4llvmneENS_9StringRefES0_.exit.i.i20

_ZN4llvmneENS_9StringRefES0_.exit.i.i20:          ; preds = %_ZN4llvmneENS_9StringRefES0_.exit.i.i10
  %i.m = load i64, ptr %0, align 1
  %i.n = xor i64 %i.m, 7311146993788874608
  %i.o = getelementptr i8, ptr %0, i64 8
  %i.p = load i32, ptr %i.o, align 1
  %i.q = zext i32 %i.p to i64
  %i.r = xor i64 %i.q, 1869768058
  %i.s = or i64 %i.n, %i.r
  %i.t = icmp ne i64 %i.s, 0
  %i.u = zext i1 %i.t to i32
  %.not.i.i22 = icmp eq i32 %i.u, 0
  br i1 %.not.i.i22, label %_ZN4llvm12StringSwitchISt8optionalIN4mlir4LLVM16DenormalModeKindEES5_E4CaseENS_13StringLiteralES5_.exit45, label %_ZN4llvm12StringSwitchISt8optionalIN4mlir4LLVM16DenormalModeKindEES5_E4CaseENS_13StringLiteralES5_.exit25.thread94.thread

_ZN4llvmneENS_9StringRefES0_.exit.i.i30:          ; preds = %bb.a
  %i.v = load i32, ptr %0, align 1
  %i.w = xor i32 %i.v, 1634629988
  %i.x = getelementptr i8, ptr %0, i64 3
  %i.y = load i32, ptr %i.x, align 1
  %i.z = xor i32 %i.y, 1667853665
  %i.aa = or i32 %i.w, %i.z
  %i.ab = icmp ne i32 %i.aa, 0
  %i.ac = zext i1 %i.ab to i32
  %.not.i.i32 = icmp eq i32 %i.ac, 0
  br i1 %.not.i.i32, label %_ZN4llvm12StringSwitchISt8optionalIN4mlir4LLVM16DenormalModeKindEES5_E4CaseENS_13StringLiteralES5_.exit45, label %_ZN4llvmneENS_9StringRefES0_.exit.i.i40

_ZN4llvm12StringSwitchISt8optionalIN4mlir4LLVM16DenormalModeKindEES5_E4CaseENS_13StringLiteralES5_.exit25.thread94.thread: ; preds = %_ZN4llvmneENS_9StringRefES0_.exit.i.i, %_ZN4llvmneENS_9StringRefES0_.exit.i.i20
  br label %_ZN4llvm12StringSwitchISt8optionalIN4mlir4LLVM16DenormalModeKindEES5_E4CaseENS_13StringLiteralES5_.exit45

_ZN4llvmneENS_9StringRefES0_.exit.i.i40:          ; preds = %_ZN4llvmneENS_9StringRefES0_.exit.i.i30
  %i.ad = load i32, ptr %0, align 1
  %i.ae = xor i32 %i.ad, 1635151465
  %i.af = getelementptr i8, ptr %0, i64 3
  %i.ag = load i32, ptr %i.af, align 1
  %i.ah = xor i32 %i.ag, 1684630625
  %i.ai = or i32 %i.ae, %i.ah
  %i.aj = icmp ne i32 %i.ai, 0
  %i.ak = zext i1 %i.aj to i32
  %.not.i.i42 = icmp eq i32 %i.ak, 0              ; 2 uses
  %spec.select = select i1 %.not.i.i42, i64 4, i64 0
  %i.al = zext i1 %.not.i.i42 to i8
  br label %_ZN4llvm12StringSwitchISt8optionalIN4mlir4LLVM16DenormalModeKindEES5_E4CaseENS_13StringLiteralES5_.exit45

_ZN4llvm12StringSwitchISt8optionalIN4mlir4LLVM16DenormalModeKindEES5_E4CaseENS_13StringLiteralES5_.exit45: ; preds = %bb.a, %_ZN4llvmneENS_9StringRefES0_.exit.i.i40, %_ZN4llvm12StringSwitchISt8optionalIN4mlir4LLVM16DenormalModeKindEES5_E4CaseENS_13StringLiteralES5_.exit25.thread94.thread, %_ZN4llvmneENS_9StringRefES0_.exit.i.i30, %_ZN4llvmneENS_9StringRefES0_.exit.i.i20, %_ZN4llvmneENS_9StringRefES0_.exit.i.i10, %_ZN4llvmneENS_9StringRefES0_.exit.i.i
  %.sroa.14.4 = phi i64 [ 3, %_ZN4llvmneENS_9StringRefES0_.exit.i.i30 ], [ 0, %_ZN4llvm12StringSwitchISt8optionalIN4mlir4LLVM16DenormalModeKindEES5_E4CaseENS_13StringLiteralES5_.exit25.thread94.thread ], [ %spec.select, %_ZN4llvmneENS_9StringRefES0_.exit.i.i40 ], [ 2, %_ZN4llvmneENS_9StringRefES0_.exit.i.i20 ], [ 1, %_ZN4llvmneENS_9StringRefES0_.exit.i.i10 ], [ 0, %_ZN4llvmneENS_9StringRefES0_.exit.i.i ], [ 0, %bb.a ]
  %.sroa.2674.4 = phi i8 [ 1, %_ZN4llvmneENS_9StringRefES0_.exit.i.i30 ], [ 0, %_ZN4llvm12StringSwitchISt8optionalIN4mlir4LLVM16DenormalModeKindEES5_E4CaseENS_13StringLiteralES5_.exit25.thread94.thread ], [ %i.al, %_ZN4llvmneENS_9StringRefES0_.exit.i.i40 ], [ 1, %_ZN4llvmneENS_9StringRefES0_.exit.i.i20 ], [ 1, %_ZN4llvmneENS_9StringRefES0_.exit.i.i10 ], [ 1, %_ZN4llvmneENS_9StringRefES0_.exit.i.i ], [ 0, %bb.a ]
  %.fca.0.insert.i = insertvalue { i64, i8 } poison, i64 %.sroa.14.4, 0
  %.fca.1.insert.i = insertvalue { i64, i8 } %.fca.0.insert.i, i8 %.sroa.2674.4, 1
  ret { i64, i8 } %.fca.1.insert.i
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local noundef zeroext i1 @_ZN4mlir4LLVM20DenormalModeKindAttr7classofENS_9AttributeE(ptr %0) local_unnamed_addr #0 align 2 {
bb.a:
  %1 = alloca %"class.mlir::Type", align 8        ; 4 uses
end_hunk_1
begin_hunk_2_@_ZN4mlir4LLVM22stringifyFastmathFlagsB5cxx11ENS0_13FastmathFlagsE:bb.a
  br i1 %.not.i36, label %bb.t, label %bb.s, !prof !131

bb.s:                                             ; preds = %bb.r
  call void @_ZN4llvm23SmallVectorTemplateBaseINS_9StringRefELb1EE15growAndPushBackES1_(ptr noundef nonnull align 8 dereferenceable(16) %2, ptr nonnull @.str.163, i64 7)
  %.pre = load i32, ptr %i.f, align 8, !tbaa !129, !noalias !1275
  br label %_ZN4llvm23SmallVectorTemplateBaseINS_9StringRefELb1EE9push_backES1_.exit38

bb.t:                                             ; preds = %bb.r
  %i.at = zext i32 %.pre56 to i64
  %i.au = load ptr, ptr %2, align 8, !tbaa !128
  %i.av = getelementptr inbounds nuw [16 x i8], ptr %i.au, i64 %i.at ; 2 uses
  store ptr @.str.163, ptr %i.av, align 1
  %.sroa.3.0..sroa_idx.i37 = getelementptr inbounds nuw i8, ptr %i.av, i64 8
  store i64 7, ptr %.sroa.3.0..sroa_idx.i37, align 1
  %i.aw = load i32, ptr %i.f, align 8, !tbaa !129
  %i.ax = add i32 %i.aw, 1                        ; 2 uses
  store i32 %i.ax, ptr %i.f, align 8, !tbaa !129
  br label %_ZN4llvm23SmallVectorTemplateBaseINS_9StringRefELb1EE9push_backES1_.exit38

_ZN4llvm23SmallVectorTemplateBaseINS_9StringRefELb1EE9push_backES1_.exit38: ; preds = %_ZN4llvm23SmallVectorTemplateBaseINS_9StringRefELb1EE9push_backES1_.exit35.thread, %bb.t, %bb.s, %_ZN4llvm23SmallVectorTemplateBaseINS_9StringRefELb1EE9push_backES1_.exit35
  %i.ay = phi i32 [ %i.ax, %bb.t ], [ %.pre, %bb.s ], [ %.pre56, %_ZN4llvm23SmallVectorTemplateBaseINS_9StringRefELb1EE9push_backES1_.exit35 ], [ 1, %_ZN4llvm23SmallVectorTemplateBaseINS_9StringRefELb1EE9push_backES1_.exit35.thread ]
  %i.az = load ptr, ptr %2, align 8, !tbaa !128, !noalias !1275 ; 2 uses
  %i.ba = zext i32 %i.ay to i64
  %i.bb = getelementptr inbounds nuw [16 x i8], ptr %i.az, i64 %i.ba
  call void @_ZN4llvm6detail9join_implIPNS_9StringRefEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEET_SA_S2_St20forward_iterator_tag(ptr dead_on_unwind writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef %i.az, ptr noundef %i.bb, ptr nonnull @.str.164, i64 2)
  %i.bc = load ptr, ptr %2, align 8, !tbaa !128   ; 2 uses
  %i.bd = icmp eq ptr %i.bc, %i.e
  br i1 %i.bd, label %_ZN4llvm11SmallVectorINS_9StringRefELj2EED2Ev.exit, label %bb.u

bb.u:                                             ; preds = %_ZN4llvm23SmallVectorTemplateBaseINS_9StringRefELb1EE9push_backES1_.exit38
  call void @free(ptr noundef %i.bc) #22
  br label %_ZN4llvm11SmallVectorINS_9StringRefELj2EED2Ev.exit

_ZN4llvm11SmallVectorINS_9StringRefELj2EED2Ev.exit: ; preds = %_ZN4llvm23SmallVectorTemplateBaseINS_9StringRefELb1EE9push_backES1_.exit38, %bb.u
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #22
  br label %bb.v

bb.v:                                             ; preds = %_ZN4llvm11SmallVectorINS_9StringRefELj2EED2Ev.exit, %._crit_edge.i.i
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local range(i64 0, 8589934592) i64 @_ZN4mlir4LLVM22symbolizeFastmathFlagsEN4llvm9StringRefE(ptr %0, i64 %1) local_unnamed_addr #0 {
bb.a:
  %2 = alloca %"class.llvm::StringRef", align 8   ; 6 uses
  %3 = alloca %"class.llvm::StringRef", align 8   ; 3 uses
  %4 = alloca %"class.llvm::SmallVector", align 8 ; 9 uses
  %5 = alloca %"class.llvm::StringRef", align 8   ; 7 uses
  store ptr %0, ptr %3, align 8
  %i.a = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i64 %1, ptr %i.a, align 8
  %.not.i = icmp eq i64 %1, 4
  br i1 %.not.i, label %_ZN4llvmeqENS_9StringRefES0_.exit, label %_ZN4llvmeqENS_9StringRefES0_.exit.thread188

_ZN4llvmeqENS_9StringRefES0_.exit:                ; preds = %bb.a
  %i.b = load i32, ptr %0, align 1
  %i.c = icmp ne i32 %i.b, 1701736302
  %i.d = zext i1 %i.c to i32
  %i.e = icmp eq i32 %i.d, 0
  br i1 %i.e, label %_ZN4llvmeqENS_9StringRefES0_.exit.thread, label %_ZN4llvmeqENS_9StringRefES0_.exit.thread188

_ZN4llvmeqENS_9StringRefES0_.exit.thread188:      ; preds = %bb.a, %_ZN4llvmeqENS_9StringRefES0_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #22
  %i.f = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  store ptr %i.f, ptr %4, align 8, !tbaa !128
  %i.g = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  store i32 0, ptr %i.g, align 8, !tbaa !129
  %i.h = getelementptr inbounds nuw i8, ptr %4, i64 12
  store i32 2, ptr %i.h, align 4, !tbaa !130
  call void @_ZNK4llvm9StringRef5splitERNS_15SmallVectorImplIS0_EES0_ib(ptr noundef nonnull align 8 dereferenceable(16) %3, ptr noundef nonnull align 8 dereferenceable(16) %4, ptr nonnull @.str.165, i64 1, i32 noundef -1, i1 noundef zeroext true) #22
  %i.i = load ptr, ptr %4, align 8, !tbaa !128    ; 2 uses
  %i.j = load i32, ptr %i.g, align 8, !tbaa !129  ; 2 uses
  %i.k = zext i32 %i.j to i64
  %.idx = shl nuw nsw i64 %i.k, 4
  %i.l = getelementptr inbounds nuw i8, ptr %i.i, i64 %.idx
  %.not270 = icmp eq i32 %i.j, 0
  br i1 %.not270, label %.thread266, label %.lr.ph

.lr.ph:                                           ; preds = %_ZN4llvmeqENS_9StringRefES0_.exit.thread188
  %i.m = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %_ZN4llvm12StringSwitchISt8optionalIjES2_E4CaseENS_13StringLiteralES2_.exit79
  %.0272 = phi i32 [ 0, %.lr.ph ], [ %i.bp, %_ZN4llvm12StringSwitchISt8optionalIjES2_E4CaseENS_13StringLiteralES2_.exit79 ]
  %.016271 = phi ptr [ %i.i, %.lr.ph ], [ %i.bq, %_ZN4llvm12StringSwitchISt8optionalIjES2_E4CaseENS_13StringLiteralES2_.exit79 ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #22
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %5, ptr noundef nonnull align 8 dereferenceable(16) %.016271, i64 16, i1 false), !tbaa.struct !134
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #22
  %i.o = load i64, ptr %i.m, align 8, !tbaa !136
  %i.p = call noundef i64 @_ZNK4llvm9StringRef17find_first_not_ofES0_m(ptr noundef nonnull align 8 dereferenceable(16) %5, ptr nonnull @.str.120, i64 6, i64 noundef 0) #22
  %.sroa.speculated.i.i = call i64 @llvm.umin.i64(i64 %i.p, i64 %i.o)
  %i.q = load i64, ptr %i.m, align 8, !tbaa !136  ; 2 uses
  %.sroa.speculated4.i.i.i.i = call i64 @llvm.umin.i64(i64 %i.q, i64 %.sroa.speculated.i.i) ; 2 uses
  %i.r = load ptr, ptr %5, align 8, !tbaa !137
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 %.sroa.speculated4.i.i.i.i
  %i.t = sub i64 %i.q, %.sroa.speculated4.i.i.i.i ; 2 uses
  store ptr %i.s, ptr %2, align 8
  store i64 %i.t, ptr %i.n, align 8
  %i.u = call noundef i64 @_ZNK4llvm9StringRef16find_last_not_ofES0_m(ptr noundef nonnull align 8 dereferenceable(16) %2, ptr nonnull @.str.120, i64 6, i64 noundef -1) #22
  %i.v = add i64 %i.u, 1
  %i.w = call i64 @llvm.usub.sat.i64(i64 %i.t, i64 %i.v)
  %i.x = load i64, ptr %i.n, align 8, !tbaa !136  ; 2 uses
  %i.y = sub i64 %i.x, %i.w
  %i.z = load ptr, ptr %2, align 8, !tbaa !137    ; 11 uses
  %.sroa.speculated.i.i.i.i = call i64 @llvm.umin.i64(i64 %i.x, i64 %i.y)
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #22
  switch i64 %.sroa.speculated.i.i.i.i, label %.thread240 [
    i64 4, label %_ZN4llvmneENS_9StringRefES0_.exit.i.i
    i64 3, label %_ZN4llvmneENS_9StringRefES0_.exit.i.i30
    i64 8, label %_ZN4llvmneENS_9StringRefES0_.exit.i.i48
    i64 7, label %_ZN4llvmneENS_9StringRefES0_.exit.i.i66
  ]

_ZN4llvmneENS_9StringRefES0_.exit.i.i:            ; preds = %bb.b
  %i.aa = load i32, ptr %i.z, align 1
  %i.ab = icmp ne i32 %i.aa, 1851879022
  %i.ac = zext i1 %i.ab to i32
  %.not.i.i = icmp eq i32 %i.ac, 0
  br i1 %.not.i.i, label %_ZN4llvm12StringSwitchISt8optionalIjES2_E4CaseENS_13StringLiteralES2_.exit79, label %_ZN4llvmneENS_9StringRefES0_.exit.i.i21

_ZN4llvmneENS_9StringRefES0_.exit.i.i21:          ; preds = %_ZN4llvmneENS_9StringRefES0_.exit.i.i
  %i.ad = load i32, ptr %i.z, align 1
  %i.ae = icmp ne i32 %i.ad, 1718511982
  %i.af = zext i1 %i.ae to i32
  %.not.i.i23 = icmp eq i32 %i.af, 0
  br i1 %.not.i.i23, label %_ZN4llvm12StringSwitchISt8optionalIjES2_E4CaseENS_13StringLiteralES2_.exit79, label %_ZN4llvmneENS_9StringRefES0_.exit.i.i39

_ZN4llvmneENS_9StringRefES0_.exit.i.i30:          ; preds = %bb.b
  %i.ag = load i16, ptr %i.z, align 1
  %i.ah = xor i16 %i.ag, 29550
  %i.ai = getelementptr i8, ptr %i.z, i64 2
  %i.aj = load i8, ptr %i.ai, align 1
  %i.ak = zext i8 %i.aj to i16
  %i.al = xor i16 %i.ak, 122
  %i.am = or i16 %i.ah, %i.al
  %i.an = icmp ne i16 %i.am, 0
  %i.ao = zext i1 %i.an to i32
  %.not.i.i32 = icmp eq i32 %i.ao, 0
  br i1 %.not.i.i32, label %_ZN4llvm12StringSwitchISt8optionalIjES2_E4CaseENS_13StringLiteralES2_.exit79, label %_ZN4llvmneENS_9StringRefES0_.exit.i.i57

_ZN4llvmneENS_9StringRefES0_.exit.i.i39:          ; preds = %_ZN4llvmneENS_9StringRefES0_.exit.i.i21
  %i.ap = load i32, ptr %i.z, align 1
  %i.aq = icmp ne i32 %i.ap, 1885565537
  %i.ar = zext i1 %i.aq to i32
  %.not.i.i41 = icmp eq i32 %i.ar, 0
  br i1 %.not.i.i41, label %_ZN4llvm12StringSwitchISt8optionalIjES2_E4CaseENS_13StringLiteralES2_.exit79, label %_ZN4llvmneENS_9StringRefES0_.exit.i.i75

_ZN4llvmneENS_9StringRefES0_.exit.i.i48:          ; preds = %bb.b
  %i.as = load i64, ptr %i.z, align 1
  %i.at = icmp ne i64 %i.as, 8386654075301556067
  %i.au = zext i1 %i.at to i32
  %.not.i.i50 = icmp eq i32 %i.au, 0
  br i1 %.not.i.i50, label %_ZN4llvm12StringSwitchISt8optionalIjES2_E4CaseENS_13StringLiteralES2_.exit79, label %.thread240

_ZN4llvmneENS_9StringRefES0_.exit.i.i57:          ; preds = %_ZN4llvmneENS_9StringRefES0_.exit.i.i30
  %i.av = load i16, ptr %i.z, align 1
  %i.aw = xor i16 %i.av, 26209
  %i.ax = getelementptr i8, ptr %i.z, i64 2
  %i.ay = load i8, ptr %i.ax, align 1
  %i.az = zext i8 %i.ay to i16
  %i.ba = xor i16 %i.az, 110
  %i.bb = or i16 %i.aw, %i.ba
  %i.bc = icmp ne i16 %i.bb, 0
  %i.bd = zext i1 %i.bc to i32
  %.not.i.i59 = icmp eq i32 %i.bd, 0
  br i1 %.not.i.i59, label %_ZN4llvm12StringSwitchISt8optionalIjES2_E4CaseENS_13StringLiteralES2_.exit79, label %.thread240

_ZN4llvmneENS_9StringRefES0_.exit.i.i66:          ; preds = %bb.b
  %i.be = load i32, ptr %i.z, align 1
  %i.bf = xor i32 %i.be, 1935762802
  %i.bg = getelementptr i8, ptr %i.z, i64 3
  %i.bh = load i32, ptr %i.bg, align 1
  %i.bi = xor i32 %i.bh, 1668248435
  %i.bj = or i32 %i.bf, %i.bi
  %i.bk = icmp ne i32 %i.bj, 0
  %i.bl = zext i1 %i.bk to i32
  %.not.i.i68 = icmp eq i32 %i.bl, 0
  br i1 %.not.i.i68, label %_ZN4llvm12StringSwitchISt8optionalIjES2_E4CaseENS_13StringLiteralES2_.exit79, label %.thread240

_ZN4llvmneENS_9StringRefES0_.exit.i.i75:          ; preds = %_ZN4llvmneENS_9StringRefES0_.exit.i.i39
  %i.bm = load i32, ptr %i.z, align 1
  %i.bn = icmp ne i32 %i.bm, 1953718630
  %i.bo = zext i1 %i.bn to i32
  %.not.i.i77 = icmp eq i32 %i.bo, 0
  br i1 %.not.i.i77, label %_ZN4llvm12StringSwitchISt8optionalIjES2_E4CaseENS_13StringLiteralES2_.exit79, label %.thread240

.thread240:                                       ; preds = %bb.b, %_ZN4llvmneENS_9StringRefES0_.exit.i.i57, %_ZN4llvmneENS_9StringRefES0_.exit.i.i66, %_ZN4llvmneENS_9StringRefES0_.exit.i.i75, %_ZN4llvmneENS_9StringRefES0_.exit.i.i48
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #22
  br label %.thread266

_ZN4llvm12StringSwitchISt8optionalIjES2_E4CaseENS_13StringLiteralES2_.exit79: ; preds = %_ZN4llvmneENS_9StringRefES0_.exit.i.i, %_ZN4llvmneENS_9StringRefES0_.exit.i.i21, %_ZN4llvmneENS_9StringRefES0_.exit.i.i30, %_ZN4llvmneENS_9StringRefES0_.exit.i.i39, %_ZN4llvmneENS_9StringRefES0_.exit.i.i48, %_ZN4llvmneENS_9StringRefES0_.exit.i.i57, %_ZN4llvmneENS_9StringRefES0_.exit.i.i66, %_ZN4llvmneENS_9StringRefES0_.exit.i.i75
  %.sroa.20.7 = phi i32 [ 32, %_ZN4llvmneENS_9StringRefES0_.exit.i.i57 ], [ 64, %_ZN4llvmneENS_9StringRefES0_.exit.i.i66 ], [ 8, %_ZN4llvmneENS_9StringRefES0_.exit.i.i39 ], [ 16, %_ZN4llvmneENS_9StringRefES0_.exit.i.i48 ], [ 2, %_ZN4llvmneENS_9StringRefES0_.exit.i.i21 ], [ 4, %_ZN4llvmneENS_9StringRefES0_.exit.i.i30 ], [ 1, %_ZN4llvmneENS_9StringRefES0_.exit.i.i ], [ 127, %_ZN4llvmneENS_9StringRefES0_.exit.i.i75 ]
  %i.bp = or i32 %.sroa.20.7, %.0272              ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #22
  %i.bq = getelementptr inbounds nuw i8, ptr %.016271, i64 16 ; 2 uses
  %.not = icmp eq ptr %i.bq, %i.l
  br i1 %.not, label %.thread266.loopexit, label %bb.b

.thread266.loopexit:                              ; preds = %_ZN4llvm12StringSwitchISt8optionalIjES2_E4CaseENS_13StringLiteralES2_.exit79
  %i.br = zext i32 %i.bp to i64
  %i.bs = or disjoint i64 %i.br, 4294967296
  br label %.thread266

.thread266:                                       ; preds = %.thread266.loopexit, %_ZN4llvmeqENS_9StringRefES0_.exit.thread188, %.thread240
  %.sroa.3.3 = phi i64 [ 0, %.thread240 ], [ 4294967296, %_ZN4llvmeqENS_9StringRefES0_.exit.thread188 ], [ %i.bs, %.thread266.loopexit ]
  %i.bt = load ptr, ptr %4, align 8, !tbaa !128   ; 2 uses
  %i.bu = icmp eq ptr %i.bt, %i.f
  br i1 %i.bu, label %_ZN4llvm11SmallVectorINS_9StringRefELj2EED2Ev.exit, label %bb.c

bb.c:                                             ; preds = %.thread266
  call void @free(ptr noundef %i.bt) #22
  br label %_ZN4llvm11SmallVectorINS_9StringRefELj2EED2Ev.exit

_ZN4llvm11SmallVectorINS_9StringRefELj2EED2Ev.exit: ; preds = %.thread266, %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #22
  br label %_ZN4llvmeqENS_9StringRefES0_.exit.thread

_ZN4llvmeqENS_9StringRefES0_.exit.thread:         ; preds = %_ZN4llvmeqENS_9StringRefES0_.exit, %_ZN4llvm11SmallVectorINS_9StringRefELj2EED2Ev.exit
  %.sroa.3.4 = phi i64 [ %.sroa.3.3, %_ZN4llvm11SmallVectorINS_9StringRefELj2EED2Ev.exit ], [ 4294967296, %_ZN4llvmeqENS_9StringRefES0_.exit ]
  ret i64 %.sroa.3.4
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local range(i64 0, 8589934592) i64 @_ZN4mlir4LLVM22symbolizeFastmathFlagsEj(i32 noundef %0) local_unnamed_addr #2 {
bb.a:
  %i.a = icmp ult i32 %0, 128
  %.sroa.3.0.insert.shift = select i1 %i.a, i64 4294967296, i64 0
  %.sroa.0.0.insert.ext = zext i32 %0 to i64
  %.sroa.0.0.insert.insert = or disjoint i64 %.sroa.3.0.insert.shift, %.sroa.0.0.insert.ext
  ret i64 %.sroa.0.0.insert.insert
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local { ptr, i64 } @_ZN4mlir4LLVM16framePointerKind25stringifyFramePointerKindENS1_16FramePointerKindE(i64 noundef %0) local_unnamed_addr #2 {
bb.a:
  %i.a = icmp ult i64 %0, 5
  br i1 %i.a, label %switch.lookup, label %bb.b

switch.lookup:                                    ; preds = %bb.a
  %switch.gep = getelementptr inbounds nuw i8, ptr @switch.table._ZN4mlir4LLVM16framePointerKind25stringifyFramePointerKindENS1_16FramePointerKindE, i64 %0
  %switch.load = load i8, ptr %switch.gep, align 1
  %switch.ext = zext i8 %switch.load to i64
  %switch.gep1 = getelementptr inbounds nuw [8 x i8], ptr @switch.table._ZN4mlir4LLVM16framePointerKind25stringifyFramePointerKindENS1_16FramePointerKindE.260, i64 %0
  %switch.load2 = load ptr, ptr %switch.gep1, align 8
  br label %bb.b

bb.b:                                             ; preds = %bb.a, %switch.lookup
  %.sroa.7.0 = phi i64 [ %switch.ext, %switch.lookup ], [ 0, %bb.a ]
  %.sroa.0.0 = phi ptr [ %switch.load2, %switch.lookup ], [ @.str.2, %bb.a ]
  %.fca.0.insert = insertvalue { ptr, i64 } poison, ptr %.sroa.0.0, 0
  %.fca.1.insert = insertvalue { ptr, i64 } %.fca.0.insert, i64 %.sroa.7.0, 1
  ret { ptr, i64 } %.fca.1.insert
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local { i64, i8 } @_ZN4mlir4LLVM16framePointerKind25symbolizeFramePointerKindEN4llvm9StringRefE(ptr nofree readonly captures(none) %0, i64 %1) local_unnamed_addr #3 {
bb.a:
  switch i64 %1, label %_ZN4llvm12StringSwitchISt8optionalIN4mlir4LLVM16framePointerKind16FramePointerKindEES6_E4CaseENS_13StringLiteralES6_.exit45 [
    i64 4, label %_ZN4llvmneENS_9StringRefES0_.exit.i.i
    i64 8, label %_ZN4llvmneENS_9StringRefES0_.exit.i.i10
    i64 3, label %_ZN4llvmneENS_9StringRefES0_.exit.i.i20
    i64 19, label %_ZN4llvmneENS_9StringRefES0_.exit.i.i40
  ]

_ZN4llvmneENS_9StringRefES0_.exit.i.i:            ; preds = %bb.a
  %i.a = load i32, ptr %0, align 1
  %i.b = icmp ne i32 %i.a, 1701736302
  %i.c = zext i1 %i.b to i32
  %.not.i.i = icmp eq i32 %i.c, 0
  br label %_ZN4llvm12StringSwitchISt8optionalIN4mlir4LLVM16framePointerKind16FramePointerKindEES6_E4CaseENS_13StringLiteralES6_.exit45

_ZN4llvmneENS_9StringRefES0_.exit.i.i10:          ; preds = %bb.a
  %i.d = load i64, ptr %0, align 1
  %i.e = icmp ne i64 %i.d, 7377289179902668654
  %i.f = zext i1 %i.e to i32
  %.not.i.i12 = icmp eq i32 %i.f, 0
  br i1 %.not.i.i12, label %_ZN4llvm12StringSwitchISt8optionalIN4mlir4LLVM16framePointerKind16FramePointerKindEES6_E4CaseENS_13StringLiteralES6_.exit45, label %_ZN4llvmneENS_9StringRefES0_.exit.i.i30

_ZN4llvmneENS_9StringRefES0_.exit.i.i20:          ; preds = %bb.a
  %i.g = load i16, ptr %0, align 1
  %i.h = xor i16 %i.g, 27745
  %i.i = getelementptr i8, ptr %0, i64 2
  %i.j = load i8, ptr %i.i, align 1
  %i.k = zext i8 %i.j to i16
  %i.l = xor i16 %i.k, 108
  %i.m = or i16 %i.h, %i.l
  %i.n = icmp ne i16 %i.m, 0
  %i.o = zext i1 %i.n to i32
  %.not.i.i22 = icmp eq i32 %i.o, 0
  br i1 %.not.i.i22, label %_ZN4llvm12StringSwitchISt8optionalIN4mlir4LLVM16framePointerKind16FramePointerKindEES6_E4CaseENS_13StringLiteralES6_.exit45, label %.thread100

_ZN4llvmneENS_9StringRefES0_.exit.i.i30:          ; preds = %_ZN4llvmneENS_9StringRefES0_.exit.i.i10
  %i.p = load i64, ptr %0, align 1
  %i.q = icmp ne i64 %i.p, 7234318610140980594
  %i.r = zext i1 %i.q to i32
  %.not.i.i32 = icmp eq i32 %i.r, 0
  br i1 %.not.i.i32, label %_ZN4llvm12StringSwitchISt8optionalIN4mlir4LLVM16framePointerKind16FramePointerKindEES6_E4CaseENS_13StringLiteralES6_.exit45, label %.thread100

.thread100:                                       ; preds = %_ZN4llvmneENS_9StringRefES0_.exit.i.i30, %_ZN4llvmneENS_9StringRefES0_.exit.i.i20
  br label %_ZN4llvm12StringSwitchISt8optionalIN4mlir4LLVM16framePointerKind16FramePointerKindEES6_E4CaseENS_13StringLiteralES6_.exit45

_ZN4llvmneENS_9StringRefES0_.exit.i.i40:          ; preds = %bb.a
  %i.s = load i128, ptr %0, align 1
  %i.t = xor i128 %i.s, 134851199282450040291144464591378870126
  %i.u = getelementptr i8, ptr %0, i64 3
  %i.v = load i128, ptr %i.u, align 1
  %i.w = xor i128 %i.v, 134867038836036259879725234599619816493
  %i.x = or i128 %i.t, %i.w
  %i.y = icmp ne i128 %i.x, 0
  %i.z = zext i1 %i.y to i32
  %.not.i.i42 = icmp eq i32 %i.z, 0               ; 2 uses
  %spec.select118 = select i1 %.not.i.i42, i64 4, i64 0
  br label %_ZN4llvm12StringSwitchISt8optionalIN4mlir4LLVM16framePointerKind16FramePointerKindEES6_E4CaseENS_13StringLiteralES6_.exit45

_ZN4llvm12StringSwitchISt8optionalIN4mlir4LLVM16framePointerKind16FramePointerKindEES6_E4CaseENS_13StringLiteralES6_.exit45: ; preds = %bb.a, %_ZN4llvmneENS_9StringRefES0_.exit.i.i40, %_ZN4llvmneENS_9StringRefES0_.exit.i.i, %_ZN4llvmneENS_9StringRefES0_.exit.i.i30, %_ZN4llvmneENS_9StringRefES0_.exit.i.i20, %_ZN4llvmneENS_9StringRefES0_.exit.i.i10, %.thread100
  %.sroa.14.4 = phi i64 [ 0, %bb.a ], [ 3, %_ZN4llvmneENS_9StringRefES0_.exit.i.i30 ], [ %spec.select118, %_ZN4llvmneENS_9StringRefES0_.exit.i.i40 ], [ 0, %.thread100 ], [ 2, %_ZN4llvmneENS_9StringRefES0_.exit.i.i20 ], [ 1, %_ZN4llvmneENS_9StringRefES0_.exit.i.i10 ], [ 0, %_ZN4llvmneENS_9StringRefES0_.exit.i.i ]
  %.sroa.2674.4.shrunk = phi i1 [ false, %bb.a ], [ true, %_ZN4llvmneENS_9StringRefES0_.exit.i.i30 ], [ %.not.i.i42, %_ZN4llvmneENS_9StringRefES0_.exit.i.i40 ], [ false, %.thread100 ], [ true, %_ZN4llvmneENS_9StringRefES0_.exit.i.i20 ], [ true, %_ZN4llvmneENS_9StringRefES0_.exit.i.i10 ], [ %.not.i.i, %_ZN4llvmneENS_9StringRefES0_.exit.i.i ]
  %.sroa.32.0.i = zext i1 %.sroa.2674.4.shrunk to i8
  %.fca.0.insert.i = insertvalue { i64, i8 } poison, i64 %.sroa.14.4, 0
  %.fca.1.insert.i = insertvalue { i64, i8 } %.fca.0.insert.i, i8 %.sroa.32.0.i, 1
  ret { i64, i8 } %.fca.1.insert.i
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local { i64, i8 } @_ZN4mlir4LLVM16framePointerKind25symbolizeFramePointerKindEm(i64 noundef %0) local_unnamed_addr #2 {
bb.a:
  %i.a = icmp ult i64 %0, 5
  %.5 = zext i1 %i.a to i8
  %.fca.0.insert = insertvalue { i64, i8 } poison, i64 %0, 0
  %.fca.1.insert = insertvalue { i64, i8 } %.fca.0.insert, i8 %.5, 1
  ret { i64, i8 } %.fca.1.insert
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local noundef zeroext i1 @_ZN4mlir4LLVM16framePointerKind20FramePointerKindAttr7classofENS_9AttributeE(ptr %0) local_unnamed_addr #0 align 2 {
bb.a:
  %1 = alloca %"class.mlir::Type", align 8        ; 4 uses
  %2 = alloca %"class.mlir::IntegerAttr", align 8 ; 4 uses
  %3 = alloca %"class.mlir::IntegerAttr", align 8 ; 4 uses
  %4 = alloca %"class.llvm::APInt", align 8       ; 6 uses
  %5 = alloca %"class.mlir::IntegerAttr", align 8 ; 6 uses
  %6 = alloca %"class.llvm::APInt", align 8       ; 6 uses
  %7 = alloca %"class.mlir::IntegerAttr", align 8 ; 7 uses
  %8 = alloca %"class.llvm::APInt", align 8       ; 6 uses
  %9 = alloca %"class.mlir::IntegerAttr", align 8 ; 8 uses
  %10 = alloca %"class.llvm::APInt", align 8      ; 6 uses
  %11 = alloca %"class.mlir::IntegerAttr", align 8 ; 9 uses
  %12 = alloca %"class.llvm::APInt", align 8      ; 5 uses
  %i.a = load ptr, ptr %0, align 8, !tbaa !115
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 144
  %.sroa.0.0.copyload.i.i.i.i.i = load ptr, ptr %i.b, align 8, !tbaa !117
  %i.c = icmp eq ptr %.sroa.0.0.copyload.i.i.i.i.i, @_ZN4mlir6detail14TypeIDResolverINS_11IntegerAttrEvE2idE
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #22
  br i1 %i.c, label %bb.b, label %.critedge25

bb.b:                                             ; preds = %bb.a
  store ptr %0, ptr %2, align 8
  %i.d = call ptr @_ZNK4mlir11IntegerAttr7getTypeEv(ptr noundef nonnull align 8 dereferenceable(8) %2) #22
  store ptr %i.d, ptr %1, align 8
  %i.e = call noundef zeroext i1 @_ZNK4mlir4Type17isSignlessIntegerEj(ptr noundef nonnull align 8 dereferenceable(8) %1, i32 noundef 64) #22
  br i1 %i.e, label %bb.c, label %.critedge25

bb.c:                                             ; preds = %bb.b
  store ptr %0, ptr %3, align 8
  %i.f = call noundef nonnull align 8 dereferenceable(12) ptr @_ZNK4mlir11IntegerAttr8getValueEv(ptr noundef nonnull align 8 dereferenceable(8) %3) #22 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #22
  %i.g = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  store i32 64, ptr %i.g, align 8, !tbaa !119
  store i64 0, ptr %4, align 8, !tbaa !120
  %i.h = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %i.i = load i32, ptr %i.h, align 8, !tbaa !119
  %i.j = icmp ult i32 %i.i, 65
  br i1 %i.j, label %.split, label %_ZNK4llvm5APInt2eqERKS0_.exit

.split:                                           ; preds = %bb.c
  %i.k = load i64, ptr %i.f, align 8, !tbaa !120
  %i.l = icmp eq i64 %i.k, 0
  br i1 %i.l, label %.thread107, label %bb.d

_ZNK4llvm5APInt2eqERKS0_.exit:                    ; preds = %bb.c
  %i.m = call noundef zeroext i1 @_ZNK4llvm5APInt13equalSlowCaseERKS0_(ptr noundef nonnull align 8 dereferenceable(12) %i.f, ptr noundef nonnull align 8 dereferenceable(12) %4) #23
  br i1 %i.m, label %.thread107, label %bb.d

bb.d:                                             ; preds = %.split, %_ZNK4llvm5APInt2eqERKS0_.exit
  store ptr %0, ptr %5, align 8
  %i.n = call noundef nonnull align 8 dereferenceable(12) ptr @_ZNK4mlir11IntegerAttr8getValueEv(ptr noundef nonnull align 8 dereferenceable(8) %5) #22 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #22
  %i.o = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 2 uses
  store i32 64, ptr %i.o, align 8, !tbaa !119
  store i64 1, ptr %6, align 8, !tbaa !120
  %i.p = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  %i.q = load i32, ptr %i.p, align 8, !tbaa !119
  %i.r = icmp ult i32 %i.q, 65
  br i1 %i.r, label %.split46, label %_ZNK4llvm5APInt2eqERKS0_.exit32
end_hunk_2
begin_hunk_3_@_ZN4mlir4LLVM23stringifyGEPNoWrapFlagsB5cxx11ENS0_14GEPNoWrapFlagsE:bb.a
_ZN4llvm23SmallVectorTemplateBaseINS_9StringRefELb1EE9push_backES1_.exit12: ; preds = %bb.d, %bb.c
  %i.p = phi i32 [ %i.o, %bb.d ], [ %i.k, %bb.c ] ; 4 uses
  %i.q = and i32 %.0, 2
  %.not8 = icmp eq i32 %i.q, 0
  br i1 %.not8, label %_ZN4llvm23SmallVectorTemplateBaseINS_9StringRefELb1EE9push_backES1_.exit15, label %bb.e

bb.e:                                             ; preds = %_ZN4llvm23SmallVectorTemplateBaseINS_9StringRefELb1EE9push_backES1_.exit12
  %.not.i13 = icmp samesign ult i32 %i.p, 2
  br i1 %.not.i13, label %bb.g, label %bb.f, !prof !131

bb.f:                                             ; preds = %bb.e
  call void @_ZN4llvm23SmallVectorTemplateBaseINS_9StringRefELb1EE15growAndPushBackES1_(ptr noundef nonnull align 8 dereferenceable(16) %2, ptr nonnull @.str.172, i64 4)
  %.pre28.pre = load i32, ptr %i.f, align 8, !tbaa !129
  br label %_ZN4llvm23SmallVectorTemplateBaseINS_9StringRefELb1EE9push_backES1_.exit15

bb.g:                                             ; preds = %bb.e
  %i.r = zext nneg i32 %i.p to i64
  %i.s = getelementptr inbounds nuw [16 x i8], ptr %i.e, i64 %i.r ; 2 uses
  store ptr @.str.172, ptr %i.s, align 8
  %.sroa.3.0..sroa_idx.i14 = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  store i64 4, ptr %.sroa.3.0..sroa_idx.i14, align 8
  %i.t = add nuw nsw i32 %i.p, 1                  ; 2 uses
  store i32 %i.t, ptr %i.f, align 8, !tbaa !129
  br label %_ZN4llvm23SmallVectorTemplateBaseINS_9StringRefELb1EE9push_backES1_.exit15

_ZN4llvm23SmallVectorTemplateBaseINS_9StringRefELb1EE9push_backES1_.exit15: ; preds = %bb.g, %bb.f, %_ZN4llvm23SmallVectorTemplateBaseINS_9StringRefELb1EE9push_backES1_.exit12
  %.pre28 = phi i32 [ %i.t, %bb.g ], [ %.pre28.pre, %bb.f ], [ %i.p, %_ZN4llvm23SmallVectorTemplateBaseINS_9StringRefELb1EE9push_backES1_.exit12 ] ; 3 uses
  %i.u = and i32 %.0, 4
  %.not9 = icmp eq i32 %i.u, 0
  br i1 %.not9, label %_ZN4llvm23SmallVectorTemplateBaseINS_9StringRefELb1EE9push_backES1_.exit18, label %bb.h

bb.h:                                             ; preds = %_ZN4llvm23SmallVectorTemplateBaseINS_9StringRefELb1EE9push_backES1_.exit15
  %i.v = load i32, ptr %i.g, align 4, !tbaa !130
  %.not.i16 = icmp ult i32 %.pre28, %i.v
  br i1 %.not.i16, label %bb.j, label %bb.i, !prof !131

bb.i:                                             ; preds = %bb.h
  call void @_ZN4llvm23SmallVectorTemplateBaseINS_9StringRefELb1EE15growAndPushBackES1_(ptr noundef nonnull align 8 dereferenceable(16) %2, ptr nonnull @.str.173, i64 3)
  %.pre = load i32, ptr %i.f, align 8, !tbaa !129, !noalias !1278
  br label %_ZN4llvm23SmallVectorTemplateBaseINS_9StringRefELb1EE9push_backES1_.exit18

bb.j:                                             ; preds = %bb.h
  %i.w = zext i32 %.pre28 to i64
  %i.x = load ptr, ptr %2, align 8, !tbaa !128
  %i.y = getelementptr inbounds nuw [16 x i8], ptr %i.x, i64 %i.w ; 2 uses
  store ptr @.str.173, ptr %i.y, align 1
  %.sroa.3.0..sroa_idx.i17 = getelementptr inbounds nuw i8, ptr %i.y, i64 8
  store i64 3, ptr %.sroa.3.0..sroa_idx.i17, align 1
  %i.z = load i32, ptr %i.f, align 8, !tbaa !129
  %i.aa = add i32 %i.z, 1                         ; 2 uses
  store i32 %i.aa, ptr %i.f, align 8, !tbaa !129
  br label %_ZN4llvm23SmallVectorTemplateBaseINS_9StringRefELb1EE9push_backES1_.exit18

_ZN4llvm23SmallVectorTemplateBaseINS_9StringRefELb1EE9push_backES1_.exit18: ; preds = %bb.j, %bb.i, %_ZN4llvm23SmallVectorTemplateBaseINS_9StringRefELb1EE9push_backES1_.exit15
  %i.ab = phi i32 [ %i.aa, %bb.j ], [ %.pre, %bb.i ], [ %.pre28, %_ZN4llvm23SmallVectorTemplateBaseINS_9StringRefELb1EE9push_backES1_.exit15 ]
  %i.ac = load ptr, ptr %2, align 8, !tbaa !128, !noalias !1278 ; 2 uses
  %i.ad = zext i32 %i.ab to i64
  %i.ae = getelementptr inbounds nuw [16 x i8], ptr %i.ac, i64 %i.ad
  call void @_ZN4llvm6detail9join_implIPNS_9StringRefEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEET_SA_S2_St20forward_iterator_tag(ptr dead_on_unwind writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef %i.ac, ptr noundef %i.ae, ptr nonnull @.str.119, i64 1)
  %i.af = load ptr, ptr %2, align 8, !tbaa !128   ; 2 uses
  %i.ag = icmp eq ptr %i.af, %i.e
  br i1 %i.ag, label %_ZN4llvm11SmallVectorINS_9StringRefELj2EED2Ev.exit, label %bb.k

bb.k:                                             ; preds = %_ZN4llvm23SmallVectorTemplateBaseINS_9StringRefELb1EE9push_backES1_.exit18
  call void @free(ptr noundef %i.af) #22
  br label %_ZN4llvm11SmallVectorINS_9StringRefELj2EED2Ev.exit

_ZN4llvm11SmallVectorINS_9StringRefELj2EED2Ev.exit: ; preds = %_ZN4llvm23SmallVectorTemplateBaseINS_9StringRefELb1EE9push_backES1_.exit18, %bb.k
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #22
  br label %bb.l

bb.l:                                             ; preds = %_ZN4llvm11SmallVectorINS_9StringRefELj2EED2Ev.exit, %._crit_edge.i.i
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local range(i64 0, 8589934592) i64 @_ZN4mlir4LLVM23symbolizeGEPNoWrapFlagsEN4llvm9StringRefE(ptr %0, i64 %1) local_unnamed_addr #0 {
bb.a:
  %2 = alloca %"class.llvm::StringRef", align 8   ; 6 uses
  %3 = alloca %"class.llvm::StringRef", align 8   ; 3 uses
  %4 = alloca %"class.llvm::SmallVector", align 8 ; 9 uses
  %5 = alloca %"class.llvm::StringRef", align 8   ; 7 uses
  store ptr %0, ptr %3, align 8
  %i.a = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i64 %1, ptr %i.a, align 8
  %.not.i = icmp eq i64 %1, 4
  br i1 %.not.i, label %_ZN4llvmeqENS_9StringRefES0_.exit, label %_ZN4llvmeqENS_9StringRefES0_.exit.thread104

_ZN4llvmeqENS_9StringRefES0_.exit:                ; preds = %bb.a
  %i.b = load i32, ptr %0, align 1
  %i.c = icmp ne i32 %i.b, 1701736302
  %i.d = zext i1 %i.c to i32
  %i.e = icmp eq i32 %i.d, 0
  br i1 %i.e, label %_ZN4llvmeqENS_9StringRefES0_.exit.thread, label %_ZN4llvmeqENS_9StringRefES0_.exit.thread104

_ZN4llvmeqENS_9StringRefES0_.exit.thread104:      ; preds = %bb.a, %_ZN4llvmeqENS_9StringRefES0_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #22
  %i.f = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  store ptr %i.f, ptr %4, align 8, !tbaa !128
  %i.g = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  store i32 0, ptr %i.g, align 8, !tbaa !129
  %i.h = getelementptr inbounds nuw i8, ptr %4, i64 12
  store i32 2, ptr %i.h, align 4, !tbaa !130
  call void @_ZNK4llvm9StringRef5splitERNS_15SmallVectorImplIS0_EES0_ib(ptr noundef nonnull align 8 dereferenceable(16) %3, ptr noundef nonnull align 8 dereferenceable(16) %4, ptr nonnull @.str.119, i64 1, i32 noundef -1, i1 noundef zeroext true) #22
  %i.i = load ptr, ptr %4, align 8, !tbaa !128    ; 2 uses
  %i.j = load i32, ptr %i.g, align 8, !tbaa !129  ; 2 uses
  %i.k = zext i32 %i.j to i64
  %.idx = shl nuw nsw i64 %i.k, 4
  %i.l = getelementptr inbounds nuw i8, ptr %i.i, i64 %.idx
  %.not146 = icmp eq i32 %i.j, 0
  br i1 %.not146, label %.thread137, label %.lr.ph

.lr.ph:                                           ; preds = %_ZN4llvmeqENS_9StringRefES0_.exit.thread104
  %i.m = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %_ZN4llvm12StringSwitchISt8optionalIjES2_E4CaseENS_13StringLiteralES2_.exit43
  %.0148 = phi i32 [ 0, %.lr.ph ], [ %i.ax, %_ZN4llvm12StringSwitchISt8optionalIjES2_E4CaseENS_13StringLiteralES2_.exit43 ]
  %.016147 = phi ptr [ %i.i, %.lr.ph ], [ %i.ay, %_ZN4llvm12StringSwitchISt8optionalIjES2_E4CaseENS_13StringLiteralES2_.exit43 ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #22
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %5, ptr noundef nonnull align 8 dereferenceable(16) %.016147, i64 16, i1 false), !tbaa.struct !134
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #22
  %i.o = load i64, ptr %i.m, align 8, !tbaa !136
  %i.p = call noundef i64 @_ZNK4llvm9StringRef17find_first_not_ofES0_m(ptr noundef nonnull align 8 dereferenceable(16) %5, ptr nonnull @.str.120, i64 6, i64 noundef 0) #22
  %.sroa.speculated.i.i = call i64 @llvm.umin.i64(i64 %i.p, i64 %i.o)
  %i.q = load i64, ptr %i.m, align 8, !tbaa !136  ; 2 uses
  %.sroa.speculated4.i.i.i.i = call i64 @llvm.umin.i64(i64 %i.q, i64 %.sroa.speculated.i.i) ; 2 uses
  %i.r = load ptr, ptr %5, align 8, !tbaa !137
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 %.sroa.speculated4.i.i.i.i
  %i.t = sub i64 %i.q, %.sroa.speculated4.i.i.i.i ; 2 uses
  store ptr %i.s, ptr %2, align 8
  store i64 %i.t, ptr %i.n, align 8
  %i.u = call noundef i64 @_ZNK4llvm9StringRef16find_last_not_ofES0_m(ptr noundef nonnull align 8 dereferenceable(16) %2, ptr nonnull @.str.120, i64 6, i64 noundef -1) #22
  %i.v = add i64 %i.u, 1
  %i.w = call i64 @llvm.usub.sat.i64(i64 %i.t, i64 %i.v)
  %i.x = load i64, ptr %i.n, align 8, !tbaa !136  ; 2 uses
  %i.y = sub i64 %i.x, %i.w
  %i.z = load ptr, ptr %2, align 8, !tbaa !137    ; 6 uses
  %.sroa.speculated.i.i.i.i = call i64 @llvm.umin.i64(i64 %i.x, i64 %i.y)
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #22
  switch i64 %.sroa.speculated.i.i.i.i, label %_ZN4llvm12StringSwitchISt8optionalIjES2_E4CaseENS_13StringLiteralES2_.exit34.thread117 [
    i64 13, label %_ZN4llvmneENS_9StringRefES0_.exit.i.i
    i64 4, label %_ZN4llvmneENS_9StringRefES0_.exit.i.i21
    i64 3, label %_ZN4llvmneENS_9StringRefES0_.exit.i.i30
    i64 8, label %_ZN4llvmneENS_9StringRefES0_.exit.i.i39
  ]

_ZN4llvmneENS_9StringRefES0_.exit.i.i:            ; preds = %bb.b
  %i.aa = load i64, ptr %i.z, align 1
  %i.ab = xor i64 %i.aa, 8314892262691729001
  %i.ac = getelementptr i8, ptr %i.z, i64 5
  %i.ad = load i64, ptr %i.ac, align 1
  %i.ae = xor i64 %i.ad, 7449354445591372910
  %i.af = or i64 %i.ab, %i.ae
  %i.ag = icmp ne i64 %i.af, 0
  %i.ah = zext i1 %i.ag to i32
  %.not.i.i = icmp eq i32 %i.ah, 0
  br i1 %.not.i.i, label %_ZN4llvm12StringSwitchISt8optionalIjES2_E4CaseENS_13StringLiteralES2_.exit43, label %_ZN4llvm12StringSwitchISt8optionalIjES2_E4CaseENS_13StringLiteralES2_.exit34.thread117

_ZN4llvmneENS_9StringRefES0_.exit.i.i21:          ; preds = %bb.b
  %i.ai = load i32, ptr %i.z, align 1
  %i.aj = icmp ne i32 %i.ai, 2004055406
  %i.ak = zext i1 %i.aj to i32
  %.not.i.i23 = icmp eq i32 %i.ak, 0
  br i1 %.not.i.i23, label %_ZN4llvm12StringSwitchISt8optionalIjES2_E4CaseENS_13StringLiteralES2_.exit43, label %_ZN4llvm12StringSwitchISt8optionalIjES2_E4CaseENS_13StringLiteralES2_.exit34.thread117

_ZN4llvmneENS_9StringRefES0_.exit.i.i30:          ; preds = %bb.b
  %i.al = load i16, ptr %i.z, align 1
  %i.am = xor i16 %i.al, 30062
  %i.an = getelementptr i8, ptr %i.z, i64 2
  %i.ao = load i8, ptr %i.an, align 1
  %i.ap = zext i8 %i.ao to i16
  %i.aq = xor i16 %i.ap, 119
  %i.ar = or i16 %i.am, %i.aq
  %i.as = icmp ne i16 %i.ar, 0
  %i.at = zext i1 %i.as to i32
  %.not.i.i32 = icmp eq i32 %i.at, 0
  br i1 %.not.i.i32, label %_ZN4llvm12StringSwitchISt8optionalIjES2_E4CaseENS_13StringLiteralES2_.exit43, label %_ZN4llvm12StringSwitchISt8optionalIjES2_E4CaseENS_13StringLiteralES2_.exit34.thread117

_ZN4llvmneENS_9StringRefES0_.exit.i.i39:          ; preds = %bb.b
  %i.au = load i64, ptr %i.z, align 1
  %i.av = icmp ne i64 %i.au, 8314892262691729001
  %i.aw = zext i1 %i.av to i32
  %.not.i.i41 = icmp eq i32 %i.aw, 0
  br i1 %.not.i.i41, label %_ZN4llvm12StringSwitchISt8optionalIjES2_E4CaseENS_13StringLiteralES2_.exit43, label %_ZN4llvm12StringSwitchISt8optionalIjES2_E4CaseENS_13StringLiteralES2_.exit34.thread117

_ZN4llvm12StringSwitchISt8optionalIjES2_E4CaseENS_13StringLiteralES2_.exit34.thread117: ; preds = %bb.b, %_ZN4llvmneENS_9StringRefES0_.exit.i.i21, %_ZN4llvmneENS_9StringRefES0_.exit.i.i, %_ZN4llvmneENS_9StringRefES0_.exit.i.i30, %_ZN4llvmneENS_9StringRefES0_.exit.i.i39
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #22
  br label %.thread137

_ZN4llvm12StringSwitchISt8optionalIjES2_E4CaseENS_13StringLiteralES2_.exit43: ; preds = %_ZN4llvmneENS_9StringRefES0_.exit.i.i, %_ZN4llvmneENS_9StringRefES0_.exit.i.i21, %_ZN4llvmneENS_9StringRefES0_.exit.i.i30, %_ZN4llvmneENS_9StringRefES0_.exit.i.i39
  %.sroa.12.3 = phi i32 [ 4, %_ZN4llvmneENS_9StringRefES0_.exit.i.i30 ], [ 2, %_ZN4llvmneENS_9StringRefES0_.exit.i.i21 ], [ 1, %_ZN4llvmneENS_9StringRefES0_.exit.i.i ], [ 3, %_ZN4llvmneENS_9StringRefES0_.exit.i.i39 ]
  %i.ax = or i32 %.sroa.12.3, %.0148              ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #22
  %i.ay = getelementptr inbounds nuw i8, ptr %.016147, i64 16 ; 2 uses
  %.not = icmp eq ptr %i.ay, %i.l
  br i1 %.not, label %.thread137.loopexit, label %bb.b

.thread137.loopexit:                              ; preds = %_ZN4llvm12StringSwitchISt8optionalIjES2_E4CaseENS_13StringLiteralES2_.exit43
  %i.az = zext i32 %i.ax to i64
  %i.ba = or disjoint i64 %i.az, 4294967296
  br label %.thread137

.thread137:                                       ; preds = %.thread137.loopexit, %_ZN4llvmeqENS_9StringRefES0_.exit.thread104, %_ZN4llvm12StringSwitchISt8optionalIjES2_E4CaseENS_13StringLiteralES2_.exit34.thread117
  %.sroa.3.3 = phi i64 [ 0, %_ZN4llvm12StringSwitchISt8optionalIjES2_E4CaseENS_13StringLiteralES2_.exit34.thread117 ], [ 4294967296, %_ZN4llvmeqENS_9StringRefES0_.exit.thread104 ], [ %i.ba, %.thread137.loopexit ]
  %i.bb = load ptr, ptr %4, align 8, !tbaa !128   ; 2 uses
  %i.bc = icmp eq ptr %i.bb, %i.f
  br i1 %i.bc, label %_ZN4llvm11SmallVectorINS_9StringRefELj2EED2Ev.exit, label %bb.c

bb.c:                                             ; preds = %.thread137
  call void @free(ptr noundef %i.bb) #22
  br label %_ZN4llvm11SmallVectorINS_9StringRefELj2EED2Ev.exit

_ZN4llvm11SmallVectorINS_9StringRefELj2EED2Ev.exit: ; preds = %.thread137, %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #22
  br label %_ZN4llvmeqENS_9StringRefES0_.exit.thread

_ZN4llvmeqENS_9StringRefES0_.exit.thread:         ; preds = %_ZN4llvmeqENS_9StringRefES0_.exit, %_ZN4llvm11SmallVectorINS_9StringRefELj2EED2Ev.exit
  %.sroa.3.4 = phi i64 [ %.sroa.3.3, %_ZN4llvm11SmallVectorINS_9StringRefELj2EED2Ev.exit ], [ 4294967296, %_ZN4llvmeqENS_9StringRefES0_.exit ]
  ret i64 %.sroa.3.4
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local range(i64 0, 8589934592) i64 @_ZN4mlir4LLVM23symbolizeGEPNoWrapFlagsEj(i32 noundef %0) local_unnamed_addr #2 {
bb.a:
  %i.a = icmp ult i32 %0, 8
  %.sroa.3.0.insert.shift = select i1 %i.a, i64 4294967296, i64 0
  %.sroa.0.0.insert.ext = zext i32 %0 to i64
  %.sroa.0.0.insert.insert = or disjoint i64 %.sroa.3.0.insert.shift, %.sroa.0.0.insert.ext
  ret i64 %.sroa.0.0.insert.insert
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local { ptr, i64 } @_ZN4mlir4LLVM22stringifyICmpPredicateENS0_13ICmpPredicateE(i64 noundef %0) local_unnamed_addr #2 {
bb.a:
  %i.a = icmp ult i64 %0, 10
  br i1 %i.a, label %switch.lookup, label %bb.b

switch.lookup:                                    ; preds = %bb.a
  %switch.gep = getelementptr inbounds nuw i8, ptr @switch.table._ZN4mlir4LLVM22stringifyICmpPredicateENS0_13ICmpPredicateE, i64 %0
  %switch.load = load i8, ptr %switch.gep, align 1
  %switch.ext = zext i8 %switch.load to i64
  %switch.gep1 = getelementptr inbounds nuw [8 x i8], ptr @switch.table._ZN4mlir4LLVM22stringifyICmpPredicateENS0_13ICmpPredicateE.261, i64 %0
  %switch.load2 = load ptr, ptr %switch.gep1, align 8
  br label %bb.b

bb.b:                                             ; preds = %bb.a, %switch.lookup
  %.sroa.12.0 = phi i64 [ %switch.ext, %switch.lookup ], [ 0, %bb.a ]
  %.sroa.0.0 = phi ptr [ %switch.load2, %switch.lookup ], [ @.str.2, %bb.a ]
  %.fca.0.insert = insertvalue { ptr, i64 } poison, ptr %.sroa.0.0, 0
  %.fca.1.insert = insertvalue { ptr, i64 } %.fca.0.insert, i64 %.sroa.12.0, 1
  ret { ptr, i64 } %.fca.1.insert
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local { i64, i8 } @_ZN4mlir4LLVM22symbolizeICmpPredicateEN4llvm9StringRefE(ptr nofree readonly captures(none) %0, i64 %1) local_unnamed_addr #3 {
bb.a:
  switch i64 %1, label %_ZN4llvm12StringSwitchISt8optionalIN4mlir4LLVM13ICmpPredicateEES5_E4CaseENS_13StringLiteralES5_.exit95.thread242 [
    i64 2, label %_ZN4llvmneENS_9StringRefES0_.exit.i.i
    i64 3, label %_ZN4llvmneENS_9StringRefES0_.exit.i.i20
  ]

_ZN4llvmneENS_9StringRefES0_.exit.i.i:            ; preds = %bb.a
  %i.a = load i16, ptr %0, align 1
  %i.b = icmp ne i16 %i.a, 29029
  %i.c = zext i1 %i.b to i32
  %.not.i.i = icmp eq i32 %i.c, 0
  br i1 %.not.i.i, label %_ZN4llvm12StringSwitchISt8optionalIN4mlir4LLVM13ICmpPredicateEES5_E4CaseENS_13StringLiteralES5_.exit95.thread242, label %_ZN4llvmneENS_9StringRefES0_.exit.i.i10

_ZN4llvmneENS_9StringRefES0_.exit.i.i10:          ; preds = %_ZN4llvmneENS_9StringRefES0_.exit.i.i
  %i.d = load i16, ptr %0, align 1
  %i.e = icmp ne i16 %i.d, 25966
  %i.f = zext i1 %i.e to i32
  %.not.i.i12 = icmp eq i32 %i.f, 0               ; 2 uses
  %spec.select = zext i1 %.not.i.i12 to i64
  br label %_ZN4llvm12StringSwitchISt8optionalIN4mlir4LLVM13ICmpPredicateEES5_E4CaseENS_13StringLiteralES5_.exit95.thread242

_ZN4llvmneENS_9StringRefES0_.exit.i.i20:          ; preds = %bb.a
  %i.g = load i16, ptr %0, align 1
  %i.h = xor i16 %i.g, 27763
  %i.i = getelementptr i8, ptr %0, i64 2
  %i.j = load i8, ptr %i.i, align 1
  %i.k = zext i8 %i.j to i16
  %i.l = xor i16 %i.k, 116
  %i.m = or i16 %i.h, %i.l
  %i.n = icmp ne i16 %i.m, 0
  %i.o = zext i1 %i.n to i32
  %.not.i.i22 = icmp eq i32 %i.o, 0
  br i1 %.not.i.i22, label %_ZN4llvm12StringSwitchISt8optionalIN4mlir4LLVM13ICmpPredicateEES5_E4CaseENS_13StringLiteralES5_.exit95.thread242, label %_ZN4llvmneENS_9StringRefES0_.exit.i.i30

_ZN4llvmneENS_9StringRefES0_.exit.i.i30:          ; preds = %_ZN4llvmneENS_9StringRefES0_.exit.i.i20
  %i.p = load i16, ptr %0, align 1
  %i.q = xor i16 %i.p, 27763
  %i.r = getelementptr i8, ptr %0, i64 2
  %i.s = load i8, ptr %i.r, align 1
  %i.t = zext i8 %i.s to i16
  %i.u = xor i16 %i.t, 101
  %i.v = or i16 %i.q, %i.u
  %i.w = icmp ne i16 %i.v, 0
  %i.x = zext i1 %i.w to i32
  %.not.i.i32 = icmp eq i32 %i.x, 0
  br i1 %.not.i.i32, label %_ZN4llvm12StringSwitchISt8optionalIN4mlir4LLVM13ICmpPredicateEES5_E4CaseENS_13StringLiteralES5_.exit95.thread242, label %_ZN4llvmneENS_9StringRefES0_.exit.i.i40

_ZN4llvmneENS_9StringRefES0_.exit.i.i40:          ; preds = %_ZN4llvmneENS_9StringRefES0_.exit.i.i30
  %i.y = load i16, ptr %0, align 1
  %i.z = xor i16 %i.y, 26483
  %i.aa = getelementptr i8, ptr %0, i64 2
  %i.ab = load i8, ptr %i.aa, align 1
  %i.ac = zext i8 %i.ab to i16
  %i.ad = xor i16 %i.ac, 116
  %i.ae = or i16 %i.z, %i.ad
  %i.af = icmp ne i16 %i.ae, 0
  %i.ag = zext i1 %i.af to i32
  %.not.i.i42 = icmp eq i32 %i.ag, 0
  br i1 %.not.i.i42, label %_ZN4llvm12StringSwitchISt8optionalIN4mlir4LLVM13ICmpPredicateEES5_E4CaseENS_13StringLiteralES5_.exit95.thread242, label %_ZN4llvmneENS_9StringRefES0_.exit.i.i50

_ZN4llvmneENS_9StringRefES0_.exit.i.i50:          ; preds = %_ZN4llvmneENS_9StringRefES0_.exit.i.i40
  %i.ah = load i16, ptr %0, align 1
  %i.ai = xor i16 %i.ah, 26483
  %i.aj = getelementptr i8, ptr %0, i64 2
  %i.ak = load i8, ptr %i.aj, align 1
  %i.al = zext i8 %i.ak to i16
  %i.am = xor i16 %i.al, 101
  %i.an = or i16 %i.ai, %i.am
  %i.ao = icmp ne i16 %i.an, 0
  %i.ap = zext i1 %i.ao to i32
  %.not.i.i52 = icmp eq i32 %i.ap, 0
  br i1 %.not.i.i52, label %_ZN4llvm12StringSwitchISt8optionalIN4mlir4LLVM13ICmpPredicateEES5_E4CaseENS_13StringLiteralES5_.exit95.thread242, label %_ZN4llvmneENS_9StringRefES0_.exit.i.i60

_ZN4llvmneENS_9StringRefES0_.exit.i.i60:          ; preds = %_ZN4llvmneENS_9StringRefES0_.exit.i.i50
  %i.aq = load i16, ptr %0, align 1
  %i.ar = xor i16 %i.aq, 27765
  %i.as = getelementptr i8, ptr %0, i64 2
  %i.at = load i8, ptr %i.as, align 1
  %i.au = zext i8 %i.at to i16
  %i.av = xor i16 %i.au, 116
  %i.aw = or i16 %i.ar, %i.av
  %i.ax = icmp ne i16 %i.aw, 0
  %i.ay = zext i1 %i.ax to i32
  %.not.i.i62 = icmp eq i32 %i.ay, 0
  br i1 %.not.i.i62, label %_ZN4llvm12StringSwitchISt8optionalIN4mlir4LLVM13ICmpPredicateEES5_E4CaseENS_13StringLiteralES5_.exit95.thread242, label %_ZN4llvmneENS_9StringRefES0_.exit.i.i70

_ZN4llvmneENS_9StringRefES0_.exit.i.i70:          ; preds = %_ZN4llvmneENS_9StringRefES0_.exit.i.i60
  %i.az = load i16, ptr %0, align 1
  %i.ba = xor i16 %i.az, 27765
  %i.bb = getelementptr i8, ptr %0, i64 2
  %i.bc = load i8, ptr %i.bb, align 1
  %i.bd = zext i8 %i.bc to i16
  %i.be = xor i16 %i.bd, 101
  %i.bf = or i16 %i.ba, %i.be
  %i.bg = icmp ne i16 %i.bf, 0
  %i.bh = zext i1 %i.bg to i32
  %.not.i.i72 = icmp eq i32 %i.bh, 0
  br i1 %.not.i.i72, label %_ZN4llvm12StringSwitchISt8optionalIN4mlir4LLVM13ICmpPredicateEES5_E4CaseENS_13StringLiteralES5_.exit95.thread242, label %_ZN4llvmneENS_9StringRefES0_.exit.i.i80

_ZN4llvmneENS_9StringRefES0_.exit.i.i80:          ; preds = %_ZN4llvmneENS_9StringRefES0_.exit.i.i70
  %i.bi = load i16, ptr %0, align 1
  %i.bj = xor i16 %i.bi, 26485
  %i.bk = getelementptr i8, ptr %0, i64 2
  %i.bl = load i8, ptr %i.bk, align 1
  %i.bm = zext i8 %i.bl to i16
  %i.bn = xor i16 %i.bm, 116
  %i.bo = or i16 %i.bj, %i.bn
  %i.bp = icmp ne i16 %i.bo, 0
  %i.bq = zext i1 %i.bp to i32
  %.not.i.i82 = icmp eq i32 %i.bq, 0
  br i1 %.not.i.i82, label %_ZN4llvm12StringSwitchISt8optionalIN4mlir4LLVM13ICmpPredicateEES5_E4CaseENS_13StringLiteralES5_.exit95.thread242, label %_ZN4llvm12StringSwitchISt8optionalIN4mlir4LLVM13ICmpPredicateEES5_E4CaseENS_13StringLiteralES5_.exit95

_ZN4llvm12StringSwitchISt8optionalIN4mlir4LLVM13ICmpPredicateEES5_E4CaseENS_13StringLiteralES5_.exit95: ; preds = %_ZN4llvmneENS_9StringRefES0_.exit.i.i80
  %i.br = load i16, ptr %0, align 1
  %i.bs = xor i16 %i.br, 26485
  %i.bt = getelementptr i8, ptr %0, i64 2
  %i.bu = load i8, ptr %i.bt, align 1
  %i.bv = zext i8 %i.bu to i16
  %i.bw = xor i16 %i.bv, 101
  %i.bx = or i16 %i.bs, %i.bw
  %i.by = icmp ne i16 %i.bx, 0
  %i.bz = zext i1 %i.by to i32
  %.not.i.i92 = icmp eq i32 %i.bz, 0              ; 2 uses
  %spec.select234 = select i1 %.not.i.i92, i64 9, i64 0
  br label %_ZN4llvm12StringSwitchISt8optionalIN4mlir4LLVM13ICmpPredicateEES5_E4CaseENS_13StringLiteralES5_.exit95.thread242

_ZN4llvm12StringSwitchISt8optionalIN4mlir4LLVM13ICmpPredicateEES5_E4CaseENS_13StringLiteralES5_.exit95.thread242: ; preds = %_ZN4llvm12StringSwitchISt8optionalIN4mlir4LLVM13ICmpPredicateEES5_E4CaseENS_13StringLiteralES5_.exit95, %_ZN4llvmneENS_9StringRefES0_.exit.i.i10, %_ZN4llvmneENS_9StringRefES0_.exit.i.i, %_ZN4llvmneENS_9StringRefES0_.exit.i.i20, %_ZN4llvmneENS_9StringRefES0_.exit.i.i40, %_ZN4llvmneENS_9StringRefES0_.exit.i.i30, %_ZN4llvmneENS_9StringRefES0_.exit.i.i60, %_ZN4llvmneENS_9StringRefES0_.exit.i.i50, %_ZN4llvmneENS_9StringRefES0_.exit.i.i70, %_ZN4llvmneENS_9StringRefES0_.exit.i.i80, %bb.a
  %.sroa.46154.9.shrunk240 = phi i1 [ true, %_ZN4llvmneENS_9StringRefES0_.exit.i.i ], [ true, %_ZN4llvmneENS_9StringRefES0_.exit.i.i20 ], [ %.not.i.i12, %_ZN4llvmneENS_9StringRefES0_.exit.i.i10 ], [ false, %bb.a ], [ %.not.i.i92, %_ZN4llvm12StringSwitchISt8optionalIN4mlir4LLVM13ICmpPredicateEES5_E4CaseENS_13StringLiteralES5_.exit95 ], [ true, %_ZN4llvmneENS_9StringRefES0_.exit.i.i80 ], [ true, %_ZN4llvmneENS_9StringRefES0_.exit.i.i70 ], [ true, %_ZN4llvmneENS_9StringRefES0_.exit.i.i50 ], [ true, %_ZN4llvmneENS_9StringRefES0_.exit.i.i60 ], [ true, %_ZN4llvmneENS_9StringRefES0_.exit.i.i30 ], [ true, %_ZN4llvmneENS_9StringRefES0_.exit.i.i40 ]
  %i.ca = phi i64 [ 0, %_ZN4llvmneENS_9StringRefES0_.exit.i.i ], [ 2, %_ZN4llvmneENS_9StringRefES0_.exit.i.i20 ], [ %spec.select, %_ZN4llvmneENS_9StringRefES0_.exit.i.i10 ], [ undef, %bb.a ], [ %spec.select234, %_ZN4llvm12StringSwitchISt8optionalIN4mlir4LLVM13ICmpPredicateEES5_E4CaseENS_13StringLiteralES5_.exit95 ], [ 8, %_ZN4llvmneENS_9StringRefES0_.exit.i.i80 ], [ 7, %_ZN4llvmneENS_9StringRefES0_.exit.i.i70 ], [ 5, %_ZN4llvmneENS_9StringRefES0_.exit.i.i50 ], [ 6, %_ZN4llvmneENS_9StringRefES0_.exit.i.i60 ], [ 3, %_ZN4llvmneENS_9StringRefES0_.exit.i.i30 ], [ 4, %_ZN4llvmneENS_9StringRefES0_.exit.i.i40 ]
  %.sroa.32.0.i = zext i1 %.sroa.46154.9.shrunk240 to i8
  %.fca.0.insert.i = insertvalue { i64, i8 } poison, i64 %i.ca, 0
  %.fca.1.insert.i = insertvalue { i64, i8 } %.fca.0.insert.i, i8 %.sroa.32.0.i, 1
  ret { i64, i8 } %.fca.1.insert.i
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local { i64, i8 } @_ZN4mlir4LLVM22symbolizeICmpPredicateEm(i64 noundef %0) local_unnamed_addr #2 {
bb.a:
  %i.a = icmp ult i64 %0, 10
  %.10 = zext i1 %i.a to i8
  %.fca.0.insert = insertvalue { i64, i8 } poison, i64 %0, 0
  %.fca.1.insert = insertvalue { i64, i8 } %.fca.0.insert, i8 %.10, 1
  ret { i64, i8 } %.fca.1.insert
}
end_hunk_3
begin_hunk_4_@_ZN4mlir4LLVM17ICmpPredicateAttr3getEPNS_11MLIRContextENS0_13ICmpPredicateE:bb.a
bb.a:
  %i.a = tail call ptr @_ZN4mlir11IntegerType3getEPNS_11MLIRContextEjNS0_19SignednessSemanticsE(ptr noundef %0, i32 noundef 64, i32 noundef 0) #22
  %i.b = tail call ptr @_ZN4mlir11IntegerAttr3getENS_4TypeEl(ptr %i.a, i64 noundef %1) #22
  ret ptr %i.b
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local noundef i64 @_ZNK4mlir4LLVM17ICmpPredicateAttr8getValueEv(ptr noundef nonnull align 8 dereferenceable(8) %0) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = tail call noundef nonnull align 8 dereferenceable(12) ptr @_ZNK4mlir11IntegerAttr8getValueEv(ptr noundef nonnull align 8 dereferenceable(8) %0) #22 ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.c = load i32, ptr %i.b, align 8, !tbaa !119
  %i.d = icmp ult i32 %i.c, 65
  %i.e = load ptr, ptr %i.a, align 8
  %spec.select.i = select i1 %i.d, ptr %i.a, ptr %i.e
  %.0.i = load i64, ptr %spec.select.i, align 8, !tbaa !120
  ret i64 %.0.i
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN4mlir4LLVM29stringifyIntegerOverflowFlagsB5cxx11ENS0_20IntegerOverflowFlagsE(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, i32 noundef %1) local_unnamed_addr #0 {
bb.a:
  %2 = alloca %"class.llvm::SmallVector", align 8 ; 8 uses
  %i.a = icmp eq i32 %1, 0
  br i1 %i.a, label %._crit_edge.i.i, label %bb.b

._crit_edge.i.i:                                  ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  store ptr %i.b, ptr %0, align 8, !tbaa !123
  store i32 1701736302, ptr %i.b, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 4, ptr %i.c, align 8, !tbaa !126
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 20
  store i8 0, ptr %i.d, align 4, !tbaa !120
  br label %bb.f

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #22
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 6 uses
  store ptr %i.e, ptr %2, align 8, !tbaa !128
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 3 uses
  store i32 0, ptr %i.f, align 8, !tbaa !129
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 12
  store i32 2, ptr %i.g, align 4, !tbaa !130
  %i.h = and i32 %1, 1
  %.not = icmp eq i32 %i.h, 0
  br i1 %.not, label %bb.c, label %_ZN4llvm23SmallVectorTemplateBaseINS_9StringRefELb1EE9push_backES1_.exit

_ZN4llvm23SmallVectorTemplateBaseINS_9StringRefELb1EE9push_backES1_.exit: ; preds = %bb.b
  store ptr @.str.180, ptr %i.e, align 8
  %.sroa.3.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %2, i64 24
  store i64 3, ptr %.sroa.3.0..sroa_idx.i, align 8
  store i32 1, ptr %i.f, align 8, !tbaa !129
  br label %bb.c

bb.c:                                             ; preds = %_ZN4llvm23SmallVectorTemplateBaseINS_9StringRefELb1EE9push_backES1_.exit, %bb.b
  %i.i = phi i32 [ 1, %_ZN4llvm23SmallVectorTemplateBaseINS_9StringRefELb1EE9push_backES1_.exit ], [ 0, %bb.b ] ; 3 uses
  %i.j = and i32 %1, 2
  %.not4 = icmp eq i32 %i.j, 0
  br i1 %.not4, label %_ZN4llvm23SmallVectorTemplateBaseINS_9StringRefELb1EE9push_backES1_.exit7, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.k = zext nneg i32 %i.i to i64
  %i.l = getelementptr inbounds nuw [16 x i8], ptr %i.e, i64 %i.k ; 2 uses
  store ptr @.str.173, ptr %i.l, align 8
  %.sroa.3.0..sroa_idx.i6 = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  store i64 3, ptr %.sroa.3.0..sroa_idx.i6, align 8
  %i.m = add nuw nsw i32 %i.i, 1                  ; 2 uses
  store i32 %i.m, ptr %i.f, align 8, !tbaa !129
  br label %_ZN4llvm23SmallVectorTemplateBaseINS_9StringRefELb1EE9push_backES1_.exit7

_ZN4llvm23SmallVectorTemplateBaseINS_9StringRefELb1EE9push_backES1_.exit7: ; preds = %bb.d, %bb.c
  %i.n = phi i32 [ %i.m, %bb.d ], [ %i.i, %bb.c ]
  %i.o = zext nneg i32 %i.n to i64
  %i.p = getelementptr inbounds nuw [16 x i8], ptr %i.e, i64 %i.o
  call void @_ZN4llvm6detail9join_implIPNS_9StringRefEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEET_SA_S2_St20forward_iterator_tag(ptr dead_on_unwind writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef nonnull %i.e, ptr noundef nonnull %i.p, ptr nonnull @.str.164, i64 2)
  %i.q = load ptr, ptr %2, align 8, !tbaa !128    ; 2 uses
  %i.r = icmp eq ptr %i.q, %i.e
  br i1 %i.r, label %_ZN4llvm11SmallVectorINS_9StringRefELj2EED2Ev.exit, label %bb.e

bb.e:                                             ; preds = %_ZN4llvm23SmallVectorTemplateBaseINS_9StringRefELb1EE9push_backES1_.exit7
  call void @free(ptr noundef %i.q) #22
  br label %_ZN4llvm11SmallVectorINS_9StringRefELj2EED2Ev.exit

_ZN4llvm11SmallVectorINS_9StringRefELj2EED2Ev.exit: ; preds = %_ZN4llvm23SmallVectorTemplateBaseINS_9StringRefELb1EE9push_backES1_.exit7, %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #22
  br label %bb.f

bb.f:                                             ; preds = %_ZN4llvm11SmallVectorINS_9StringRefELj2EED2Ev.exit, %._crit_edge.i.i
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local range(i64 0, 8589934592) i64 @_ZN4mlir4LLVM29symbolizeIntegerOverflowFlagsEN4llvm9StringRefE(ptr %0, i64 %1) local_unnamed_addr #0 {
bb.a:
  %2 = alloca %"class.llvm::StringRef", align 8   ; 6 uses
  %3 = alloca %"class.llvm::StringRef", align 8   ; 3 uses
  %4 = alloca %"class.llvm::SmallVector", align 8 ; 9 uses
  %5 = alloca %"class.llvm::StringRef", align 8   ; 7 uses
  store ptr %0, ptr %3, align 8
  %i.a = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i64 %1, ptr %i.a, align 8
  %.not.i = icmp eq i64 %1, 4
  br i1 %.not.i, label %_ZN4llvmeqENS_9StringRefES0_.exit, label %_ZN4llvmeqENS_9StringRefES0_.exit.thread63

_ZN4llvmeqENS_9StringRefES0_.exit:                ; preds = %bb.a
  %i.b = load i32, ptr %0, align 1
  %i.c = icmp ne i32 %i.b, 1701736302
  %i.d = zext i1 %i.c to i32
  %i.e = icmp eq i32 %i.d, 0
  br i1 %i.e, label %_ZN4llvmeqENS_9StringRefES0_.exit.thread, label %_ZN4llvmeqENS_9StringRefES0_.exit.thread63

_ZN4llvmeqENS_9StringRefES0_.exit.thread63:       ; preds = %bb.a, %_ZN4llvmeqENS_9StringRefES0_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #22
  %i.f = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  store ptr %i.f, ptr %4, align 8, !tbaa !128
  %i.g = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  store i32 0, ptr %i.g, align 8, !tbaa !129
  %i.h = getelementptr inbounds nuw i8, ptr %4, i64 12
  store i32 2, ptr %i.h, align 4, !tbaa !130
  call void @_ZNK4llvm9StringRef5splitERNS_15SmallVectorImplIS0_EES0_ib(ptr noundef nonnull align 8 dereferenceable(16) %3, ptr noundef nonnull align 8 dereferenceable(16) %4, ptr nonnull @.str.165, i64 1, i32 noundef -1, i1 noundef zeroext true) #22
  %i.i = load ptr, ptr %4, align 8, !tbaa !128    ; 2 uses
  %i.j = load i32, ptr %i.g, align 8, !tbaa !129  ; 2 uses
  %i.k = zext i32 %i.j to i64
  %.idx = shl nuw nsw i64 %i.k, 4
  %i.l = getelementptr inbounds nuw i8, ptr %i.i, i64 %.idx
  %.not82 = icmp eq i32 %i.j, 0
  br i1 %.not82, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %_ZN4llvmeqENS_9StringRefES0_.exit.thread63
  %i.m = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %_ZN4llvm12StringSwitchISt8optionalIjES2_E4CaseENS_13StringLiteralES2_.exit25
  %.084 = phi i32 [ 0, %.lr.ph ], [ %i.as, %_ZN4llvm12StringSwitchISt8optionalIjES2_E4CaseENS_13StringLiteralES2_.exit25 ]
  %.01683 = phi ptr [ %i.i, %.lr.ph ], [ %i.at, %_ZN4llvm12StringSwitchISt8optionalIjES2_E4CaseENS_13StringLiteralES2_.exit25 ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #22
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %5, ptr noundef nonnull align 8 dereferenceable(16) %.01683, i64 16, i1 false), !tbaa.struct !134
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #22
  %i.o = load i64, ptr %i.m, align 8, !tbaa !136
  %i.p = call noundef i64 @_ZNK4llvm9StringRef17find_first_not_ofES0_m(ptr noundef nonnull align 8 dereferenceable(16) %5, ptr nonnull @.str.120, i64 6, i64 noundef 0) #22
  %.sroa.speculated.i.i = call i64 @llvm.umin.i64(i64 %i.p, i64 %i.o)
  %i.q = load i64, ptr %i.m, align 8, !tbaa !136  ; 2 uses
  %.sroa.speculated4.i.i.i.i = call i64 @llvm.umin.i64(i64 %i.q, i64 %.sroa.speculated.i.i) ; 2 uses
  %i.r = load ptr, ptr %5, align 8, !tbaa !137
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 %.sroa.speculated4.i.i.i.i
  %i.t = sub i64 %i.q, %.sroa.speculated4.i.i.i.i ; 2 uses
  store ptr %i.s, ptr %2, align 8
  store i64 %i.t, ptr %i.n, align 8
  %i.u = call noundef i64 @_ZNK4llvm9StringRef16find_last_not_ofES0_m(ptr noundef nonnull align 8 dereferenceable(16) %2, ptr nonnull @.str.120, i64 6, i64 noundef -1) #22
  %i.v = add i64 %i.u, 1
  %i.w = call i64 @llvm.usub.sat.i64(i64 %i.t, i64 %i.v)
  %i.x = load i64, ptr %i.n, align 8, !tbaa !136  ; 2 uses
  %i.y = sub i64 %i.x, %i.w
  %i.z = load ptr, ptr %2, align 8, !tbaa !137    ; 4 uses
  %.sroa.speculated.i.i.i.i = call i64 @llvm.umin.i64(i64 %i.x, i64 %i.y)
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #22
  %.not.i.i.i.i = icmp eq i64 %.sroa.speculated.i.i.i.i, 3
  br i1 %.not.i.i.i.i, label %_ZN4llvmneENS_9StringRefES0_.exit.i.i, label %_ZN4llvm12StringSwitchISt8optionalIjES2_E4CaseENS_13StringLiteralES2_.exit25.thread

_ZN4llvmneENS_9StringRefES0_.exit.i.i:            ; preds = %bb.b
  %i.aa = load i16, ptr %i.z, align 1
  %i.ab = xor i16 %i.aa, 29550
  %i.ac = getelementptr i8, ptr %i.z, i64 2
  %i.ad = load i8, ptr %i.ac, align 1
  %i.ae = zext i8 %i.ad to i16
  %i.af = xor i16 %i.ae, 119
  %i.ag = or i16 %i.ab, %i.af
  %i.ah = icmp ne i16 %i.ag, 0
  %i.ai = zext i1 %i.ah to i32
  %.not.i.i = icmp eq i32 %i.ai, 0
  br i1 %.not.i.i, label %_ZN4llvm12StringSwitchISt8optionalIjES2_E4CaseENS_13StringLiteralES2_.exit25, label %_ZN4llvmneENS_9StringRefES0_.exit.i.i21

_ZN4llvmneENS_9StringRefES0_.exit.i.i21:          ; preds = %_ZN4llvmneENS_9StringRefES0_.exit.i.i
  %i.aj = load i16, ptr %i.z, align 1
  %i.ak = xor i16 %i.aj, 30062
  %i.al = getelementptr i8, ptr %i.z, i64 2
  %i.am = load i8, ptr %i.al, align 1
  %i.an = zext i8 %i.am to i16
  %i.ao = xor i16 %i.an, 119
  %i.ap = or i16 %i.ak, %i.ao
  %i.aq = icmp ne i16 %i.ap, 0
  %i.ar = zext i1 %i.aq to i32
  %.not.i.i23 = icmp eq i32 %i.ar, 0
  br i1 %.not.i.i23, label %_ZN4llvm12StringSwitchISt8optionalIjES2_E4CaseENS_13StringLiteralES2_.exit25, label %_ZN4llvm12StringSwitchISt8optionalIjES2_E4CaseENS_13StringLiteralES2_.exit25.thread

_ZN4llvm12StringSwitchISt8optionalIjES2_E4CaseENS_13StringLiteralES2_.exit25: ; preds = %_ZN4llvmneENS_9StringRefES0_.exit.i.i, %_ZN4llvmneENS_9StringRefES0_.exit.i.i21
  %.sroa.8.1 = phi i32 [ 1, %_ZN4llvmneENS_9StringRefES0_.exit.i.i ], [ 2, %_ZN4llvmneENS_9StringRefES0_.exit.i.i21 ]
  %i.as = or i32 %.sroa.8.1, %.084                ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #22
  %i.at = getelementptr inbounds nuw i8, ptr %.01683, i64 16 ; 2 uses
  %.not = icmp eq ptr %i.at, %i.l
  br i1 %.not, label %.loopexit.loopexit, label %bb.b

_ZN4llvm12StringSwitchISt8optionalIjES2_E4CaseENS_13StringLiteralES2_.exit25.thread: ; preds = %bb.b, %_ZN4llvmneENS_9StringRefES0_.exit.i.i21
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #22
  br label %.loopexit

.loopexit.loopexit:                               ; preds = %_ZN4llvm12StringSwitchISt8optionalIjES2_E4CaseENS_13StringLiteralES2_.exit25
  %i.au = zext i32 %i.as to i64
  %i.av = or disjoint i64 %i.au, 4294967296
  br label %.loopexit

.loopexit:                                        ; preds = %.loopexit.loopexit, %_ZN4llvmeqENS_9StringRefES0_.exit.thread63, %_ZN4llvm12StringSwitchISt8optionalIjES2_E4CaseENS_13StringLiteralES2_.exit25.thread
  %.sroa.3.3 = phi i64 [ 0, %_ZN4llvm12StringSwitchISt8optionalIjES2_E4CaseENS_13StringLiteralES2_.exit25.thread ], [ 4294967296, %_ZN4llvmeqENS_9StringRefES0_.exit.thread63 ], [ %i.av, %.loopexit.loopexit ]
  %i.aw = load ptr, ptr %4, align 8, !tbaa !128   ; 2 uses
  %i.ax = icmp eq ptr %i.aw, %i.f
  br i1 %i.ax, label %_ZN4llvm11SmallVectorINS_9StringRefELj2EED2Ev.exit, label %bb.c

bb.c:                                             ; preds = %.loopexit
  call void @free(ptr noundef %i.aw) #22
  br label %_ZN4llvm11SmallVectorINS_9StringRefELj2EED2Ev.exit

_ZN4llvm11SmallVectorINS_9StringRefELj2EED2Ev.exit: ; preds = %.loopexit, %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #22
  br label %_ZN4llvmeqENS_9StringRefES0_.exit.thread

_ZN4llvmeqENS_9StringRefES0_.exit.thread:         ; preds = %_ZN4llvmeqENS_9StringRefES0_.exit, %_ZN4llvm11SmallVectorINS_9StringRefELj2EED2Ev.exit
  %.sroa.3.4 = phi i64 [ %.sroa.3.3, %_ZN4llvm11SmallVectorINS_9StringRefELj2EED2Ev.exit ], [ 4294967296, %_ZN4llvmeqENS_9StringRefES0_.exit ]
  ret i64 %.sroa.3.4
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local range(i64 0, 8589934592) i64 @_ZN4mlir4LLVM29symbolizeIntegerOverflowFlagsEj(i32 noundef %0) local_unnamed_addr #2 {
bb.a:
  %i.a = icmp ult i32 %0, 4
  %.sroa.3.0.insert.shift = select i1 %i.a, i64 4294967296, i64 0
  %.sroa.0.0.insert.ext = zext i32 %0 to i64
  %.sroa.0.0.insert.insert = or disjoint i64 %.sroa.3.0.insert.shift, %.sroa.0.0.insert.ext
  ret i64 %.sroa.0.0.insert.insert
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local { ptr, i64 } @_ZN4mlir4LLVM23stringifyDIEmissionKindENS0_14DIEmissionKindE(i64 noundef %0) local_unnamed_addr #2 {
bb.a:
  %i.a = icmp ult i64 %0, 4
  br i1 %i.a, label %switch.lookup, label %bb.b

switch.lookup:                                    ; preds = %bb.a
  %switch.gep = getelementptr inbounds nuw i8, ptr @switch.table._ZN4mlir4LLVM23stringifyDIEmissionKindENS0_14DIEmissionKindE, i64 %0
  %switch.load = load i8, ptr %switch.gep, align 1
  %switch.ext = zext i8 %switch.load to i64
  %switch.gep1 = getelementptr inbounds nuw [8 x i8], ptr @switch.table._ZN4mlir4LLVM23stringifyDIEmissionKindENS0_14DIEmissionKindE.262, i64 %0
  %switch.load2 = load ptr, ptr %switch.gep1, align 8
  br label %bb.b

bb.b:                                             ; preds = %bb.a, %switch.lookup
  %.sroa.6.0 = phi i64 [ %switch.ext, %switch.lookup ], [ 0, %bb.a ]
  %.sroa.0.0 = phi ptr [ %switch.load2, %switch.lookup ], [ @.str.2, %bb.a ]
  %.fca.0.insert = insertvalue { ptr, i64 } poison, ptr %.sroa.0.0, 0
  %.fca.1.insert = insertvalue { ptr, i64 } %.fca.0.insert, i64 %.sroa.6.0, 1
  ret { ptr, i64 } %.fca.1.insert
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local { i64, i8 } @_ZN4mlir4LLVM23symbolizeDIEmissionKindEN4llvm9StringRefE(ptr nofree readonly captures(none) %0, i64 %1) local_unnamed_addr #3 {
bb.a:
  switch i64 %1, label %_ZN4llvm12StringSwitchISt8optionalIN4mlir4LLVM14DIEmissionKindEES5_E4CaseENS_13StringLiteralES5_.exit35 [
    i64 4, label %_ZN4llvmneENS_9StringRefES0_.exit.i.i
    i64 14, label %_ZN4llvmneENS_9StringRefES0_.exit.i.i20
    i64 19, label %_ZN4llvmneENS_9StringRefES0_.exit.i.i30
  ]

_ZN4llvmneENS_9StringRefES0_.exit.i.i:            ; preds = %bb.a
  %i.a = load i32, ptr %0, align 1
  %i.b = icmp ne i32 %i.a, 1701736270
  %i.c = zext i1 %i.b to i32
  %.not.i.i = icmp eq i32 %i.c, 0
  br i1 %.not.i.i, label %_ZN4llvm12StringSwitchISt8optionalIN4mlir4LLVM14DIEmissionKindEES5_E4CaseENS_13StringLiteralES5_.exit35, label %_ZN4llvmneENS_9StringRefES0_.exit.i.i10

_ZN4llvmneENS_9StringRefES0_.exit.i.i10:          ; preds = %_ZN4llvmneENS_9StringRefES0_.exit.i.i
  %i.d = load i32, ptr %0, align 1
  %i.e = icmp ne i32 %i.d, 1819047238
  %i.f = zext i1 %i.e to i32
  %.not.i.i12 = icmp eq i32 %i.f, 0
  br i1 %.not.i.i12, label %_ZN4llvm12StringSwitchISt8optionalIN4mlir4LLVM14DIEmissionKindEES5_E4CaseENS_13StringLiteralES5_.exit35, label %.thread76

_ZN4llvmneENS_9StringRefES0_.exit.i.i20:          ; preds = %bb.a
  %i.g = load i64, ptr %0, align 1
  %i.h = xor i64 %i.g, 7809911718920743244
  %i.i = getelementptr i8, ptr %0, i64 6
  %i.j = load i64, ptr %i.i, align 1
  %i.k = xor i64 %i.j, 8749489463591529570
  %i.l = or i64 %i.h, %i.k
  %i.m = icmp ne i64 %i.l, 0
  %i.n = zext i1 %i.m to i32
  %.not.i.i22 = icmp eq i32 %i.n, 0
  br i1 %.not.i.i22, label %_ZN4llvm12StringSwitchISt8optionalIN4mlir4LLVM14DIEmissionKindEES5_E4CaseENS_13StringLiteralES5_.exit35, label %.thread76

.thread76:                                        ; preds = %_ZN4llvmneENS_9StringRefES0_.exit.i.i20, %_ZN4llvmneENS_9StringRefES0_.exit.i.i10
  br label %_ZN4llvm12StringSwitchISt8optionalIN4mlir4LLVM14DIEmissionKindEES5_E4CaseENS_13StringLiteralES5_.exit35

_ZN4llvmneENS_9StringRefES0_.exit.i.i30:          ; preds = %bb.a
  %i.o = load i128, ptr %0, align 1
  %i.p = xor i128 %i.o, 105608183710669635450550100094502462788
  %i.q = getelementptr i8, ptr %0, i64 3
  %i.r = load i128, ptr %i.q, align 1
  %i.s = xor i128 %i.r, 161399592910491259137646777265885046645
  %i.t = or i128 %i.p, %i.s
  %i.u = icmp ne i128 %i.t, 0
  %i.v = zext i1 %i.u to i32
  %.not.i.i32 = icmp eq i32 %i.v, 0               ; 2 uses
  %spec.select = select i1 %.not.i.i32, i64 3, i64 0
  %i.w = zext i1 %.not.i.i32 to i8
  br label %_ZN4llvm12StringSwitchISt8optionalIN4mlir4LLVM14DIEmissionKindEES5_E4CaseENS_13StringLiteralES5_.exit35

_ZN4llvm12StringSwitchISt8optionalIN4mlir4LLVM14DIEmissionKindEES5_E4CaseENS_13StringLiteralES5_.exit35: ; preds = %_ZN4llvmneENS_9StringRefES0_.exit.i.i30, %bb.a, %_ZN4llvmneENS_9StringRefES0_.exit.i.i20, %_ZN4llvmneENS_9StringRefES0_.exit.i.i10, %_ZN4llvmneENS_9StringRefES0_.exit.i.i, %.thread76
  %.sroa.12.3 = phi i64 [ 0, %bb.a ], [ 2, %_ZN4llvmneENS_9StringRefES0_.exit.i.i20 ], [ %spec.select, %_ZN4llvmneENS_9StringRefES0_.exit.i.i30 ], [ 0, %.thread76 ], [ 1, %_ZN4llvmneENS_9StringRefES0_.exit.i.i10 ], [ 0, %_ZN4llvmneENS_9StringRefES0_.exit.i.i ]
  %.sroa.2258.3 = phi i8 [ 0, %bb.a ], [ 1, %_ZN4llvmneENS_9StringRefES0_.exit.i.i20 ], [ %i.w, %_ZN4llvmneENS_9StringRefES0_.exit.i.i30 ], [ 0, %.thread76 ], [ 1, %_ZN4llvmneENS_9StringRefES0_.exit.i.i10 ], [ 1, %_ZN4llvmneENS_9StringRefES0_.exit.i.i ]
  %.fca.0.insert.i = insertvalue { i64, i8 } poison, i64 %.sroa.12.3, 0
  %.fca.1.insert.i = insertvalue { i64, i8 } %.fca.0.insert.i, i8 %.sroa.2258.3, 1
  ret { i64, i8 } %.fca.1.insert.i
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local { i64, i8 } @_ZN4mlir4LLVM23symbolizeDIEmissionKindEm(i64 noundef %0) local_unnamed_addr #2 {
bb.a:
  %i.a = icmp ult i64 %0, 4
  %.4 = zext i1 %i.a to i8
  %.fca.0.insert = insertvalue { i64, i8 } poison, i64 %0, 0
  %.fca.1.insert = insertvalue { i64, i8 } %.fca.0.insert, i8 %.4, 1
  ret { i64, i8 } %.fca.1.insert
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local noundef zeroext i1 @_ZN4mlir4LLVM18DIEmissionKindAttr7classofENS_9AttributeE(ptr %0) local_unnamed_addr #0 align 2 {
bb.a:
  %1 = alloca %"class.mlir::Type", align 8        ; 4 uses
  %2 = alloca %"class.mlir::IntegerAttr", align 8 ; 4 uses
  %3 = alloca %"class.mlir::IntegerAttr", align 8 ; 4 uses
  %4 = alloca %"class.llvm::APInt", align 8       ; 6 uses
  %5 = alloca %"class.mlir::IntegerAttr", align 8 ; 6 uses
  %6 = alloca %"class.llvm::APInt", align 8       ; 6 uses
  %7 = alloca %"class.mlir::IntegerAttr", align 8 ; 7 uses
  %8 = alloca %"class.llvm::APInt", align 8       ; 6 uses
  %9 = alloca %"class.mlir::IntegerAttr", align 8 ; 8 uses
  %10 = alloca %"class.llvm::APInt", align 8      ; 5 uses
  %i.a = load ptr, ptr %0, align 8, !tbaa !115
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 144
  %.sroa.0.0.copyload.i.i.i.i.i = load ptr, ptr %i.b, align 8, !tbaa !117
  %i.c = icmp eq ptr %.sroa.0.0.copyload.i.i.i.i.i, @_ZN4mlir6detail14TypeIDResolverINS_11IntegerAttrEvE2idE
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #22
  br i1 %i.c, label %bb.b, label %.critedge19

bb.b:                                             ; preds = %bb.a
  store ptr %0, ptr %2, align 8
  %i.d = call ptr @_ZNK4mlir11IntegerAttr7getTypeEv(ptr noundef nonnull align 8 dereferenceable(8) %2) #22
  store ptr %i.d, ptr %1, align 8
  %i.e = call noundef zeroext i1 @_ZNK4mlir4Type17isSignlessIntegerEj(ptr noundef nonnull align 8 dereferenceable(8) %1, i32 noundef 64) #22
  br i1 %i.e, label %bb.c, label %.critedge19

bb.c:                                             ; preds = %bb.b
  store ptr %0, ptr %3, align 8
  %i.f = call noundef nonnull align 8 dereferenceable(12) ptr @_ZNK4mlir11IntegerAttr8getValueEv(ptr noundef nonnull align 8 dereferenceable(8) %3) #22 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #22
  %i.g = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  store i32 64, ptr %i.g, align 8, !tbaa !119
  store i64 0, ptr %4, align 8, !tbaa !120
  %i.h = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %i.i = load i32, ptr %i.h, align 8, !tbaa !119
  %i.j = icmp ult i32 %i.i, 65
  br i1 %i.j, label %.split, label %_ZNK4llvm5APInt2eqERKS0_.exit

.split:                                           ; preds = %bb.c
  %i.k = load i64, ptr %i.f, align 8, !tbaa !120
  %i.l = icmp eq i64 %i.k, 0
  br i1 %i.l, label %.thread75, label %bb.d

_ZNK4llvm5APInt2eqERKS0_.exit:                    ; preds = %bb.c
  %i.m = call noundef zeroext i1 @_ZNK4llvm5APInt13equalSlowCaseERKS0_(ptr noundef nonnull align 8 dereferenceable(12) %i.f, ptr noundef nonnull align 8 dereferenceable(12) %4) #23
  br i1 %i.m, label %.thread75, label %bb.d

bb.d:                                             ; preds = %.split, %_ZNK4llvm5APInt2eqERKS0_.exit
  store ptr %0, ptr %5, align 8
  %i.n = call noundef nonnull align 8 dereferenceable(12) ptr @_ZNK4mlir11IntegerAttr8getValueEv(ptr noundef nonnull align 8 dereferenceable(8) %5) #22 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #22
  %i.o = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 2 uses
  store i32 64, ptr %i.o, align 8, !tbaa !119
  store i64 1, ptr %6, align 8, !tbaa !120
  %i.p = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  %i.q = load i32, ptr %i.p, align 8, !tbaa !119
  %i.r = icmp ult i32 %i.q, 65
  br i1 %i.r, label %.split36, label %_ZNK4llvm5APInt2eqERKS0_.exit26

.split36:                                         ; preds = %bb.d
  %i.s = load i64, ptr %i.n, align 8, !tbaa !120
  %i.t = icmp eq i64 %i.s, 1
  br i1 %i.t, label %.thread74, label %bb.e

_ZNK4llvm5APInt2eqERKS0_.exit26:                  ; preds = %bb.d
  %i.u = call noundef zeroext i1 @_ZNK4llvm5APInt13equalSlowCaseERKS0_(ptr noundef nonnull align 8 dereferenceable(12) %i.n, ptr noundef nonnull align 8 dereferenceable(12) %6) #23
  br i1 %i.u, label %.thread74, label %bb.e

bb.e:                                             ; preds = %.split36, %_ZNK4llvm5APInt2eqERKS0_.exit26
  store ptr %0, ptr %7, align 8
end_hunk_4
