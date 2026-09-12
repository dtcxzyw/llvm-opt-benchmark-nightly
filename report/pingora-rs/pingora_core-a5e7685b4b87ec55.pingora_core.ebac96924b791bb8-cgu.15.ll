Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/pingora-rs/original/pingora_core-a5e7685b4b87ec55.pingora_core.ebac96924b791bb8-cgu.15?download=true
inline.NumInlined: 991
inline.NumDeleted: 375
loop-unroll.NumCompletelyUnrolled: 8
loop-unroll.NumRuntimeUnrolled: 3
loop-unroll.NumUnrolled: 15
begin_hunk_0_@_RINvNtNtNtCsiRgJJXJ4lb7_6brotli3enc19backward_references2hq11UpdateNodesNtNtCsc389t4z7aPt_12alloc_stdlib9std_alloc13StandardAllocECskeugdADtBsi_12pingora_core:bb.a
  br label %_RNvNtNtCsiRgJJXJ4lb7_6brotli3enc7command17GetCopyLengthCode.exit105

bb.ak:                                            ; preds = %bb.ai
  %i.fh = icmp ult i64 %.sroa.032.0248, 2118
  br i1 %i.fh, label %bb.am, label %_RNvNtNtCsiRgJJXJ4lb7_6brotli3enc7command18CombineLengthCodes.exit.thread

bb.al:                                            ; preds = %bb.ai
  %i.fi = add nsw i64 %.sroa.042.1246, -5         ; 2 uses
  %i.fj = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.fi, i1 false)
  %i.fk = trunc nuw nsw i64 %i.fj to i32
  %i.fl = xor i32 %i.fk, 63
  %i.fm = add nsw i32 %i.fl, -1                   ; 2 uses
  %i.fn = shl nuw nsw i32 %i.fm, 1
  %i.fo = zext nneg i32 %i.fn to i64
  %i.fp = zext nneg i32 %i.fm to i64
  %i.fq = lshr i64 %i.fi, %i.fp
  %i.fr = add nuw nsw i64 %i.fq, %i.fo
  %i.fs = trunc nuw nsw i64 %i.fr to i16
  %i.ft = add nuw nsw i16 %i.fs, 4
  br label %_RNvNtNtCsiRgJJXJ4lb7_6brotli3enc7command17GetCopyLengthCode.exit105

bb.am:                                            ; preds = %bb.ak
  %i.fu = add nsw i64 %.sroa.042.1246, -69
  %i.fv = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.fu, i1 false)
  %i.fw = trunc nuw nsw i64 %i.fv to i16
  %i.fx = xor i16 %i.fw, 63
  %i.fy = add nuw nsw i16 %i.fx, 12
  br label %_RNvNtNtCsiRgJJXJ4lb7_6brotli3enc7command17GetCopyLengthCode.exit105

_RNvNtNtCsiRgJJXJ4lb7_6brotli3enc7command17GetCopyLengthCode.exit105: ; preds = %bb.aj, %bb.al, %bb.am
  %.sroa.0.0.i104 = phi i16 [ %i.fg, %bb.aj ], [ %i.ft, %bb.al ], [ %i.fy, %bb.am ] ; 7 uses
  %i.fz = and i16 %.sroa.0.0.i104, 7
  %i.ga = or disjoint i16 %i.fz, %i.di            ; 2 uses
  %i.gb = icmp ult i16 %.sroa.0.0.i104, 16
  %or.cond5.i = and i1 %or.cond.i, %i.gb
  br i1 %or.cond5.i, label %.thread, label %_RNvNtNtCsiRgJJXJ4lb7_6brotli3enc7command18CombineLengthCodes.exit

.thread:                                          ; preds = %_RNvNtNtCsiRgJJXJ4lb7_6brotli3enc7command17GetCopyLengthCode.exit105
  %i.gc = shl nuw nsw i16 %.sroa.0.0.i104, 3
  %i.gd = and i16 %i.gc, 64
  %spec.select.i = or disjoint i16 %i.ga, %i.gd
  %i.ge = zext nneg i16 %.sroa.0.0.i104 to i64
  %i.gf = zext nneg i16 %spec.select.i to i64
  br label %bb.ao

_RNvNtNtCsiRgJJXJ4lb7_6brotli3enc7command18CombineLengthCodes.exit: ; preds = %_RNvNtNtCsiRgJJXJ4lb7_6brotli3enc7command17GetCopyLengthCode.exit105
  %i.gg = zext i16 %.sroa.0.0.i104 to i64         ; 2 uses
  %i.gh = icmp ult i16 %.sroa.0.0.i104, 24
  br i1 %i.gh, label %_RNvNtNtCsiRgJJXJ4lb7_6brotli3enc7command18CombineLengthCodes.exit.thread, label %bb.an

.loopexit:                                        ; preds = %bb.au, %bb.af, %bb.v, %bb.y, %bb.w
  %.sroa.042.2 = phi i64 [ %.sroa.042.0252, %bb.v ], [ %.sroa.042.0252, %bb.w ], [ %.sroa.042.0252, %bb.y ], [ %.sroa.042.0252, %bb.af ], [ %.sroa.032.0248, %bb.au ] ; 2 uses
  %.sroa.0.3 = phi i64 [ %.sroa.0.1255, %bb.v ], [ %.sroa.0.1255, %bb.w ], [ %.sroa.0.1255, %bb.y ], [ %.sroa.0.1255, %bb.af ], [ %.sroa.0.4, %bb.au ] ; 2 uses
  %i.gi = add nuw nsw i64 %.sroa.014.0253, 1
  %i.gj = icmp samesign ult i64 %.sroa.014.0253, 15
  %i.gk = icmp ult i64 %.sroa.042.2, %i.c
  %or.cond3 = and i1 %i.gj, %i.gk
  br i1 %or.cond3, label %bb.s, label %._crit_edge

_RNvNtNtCsiRgJJXJ4lb7_6brotli3enc7command18CombineLengthCodes.exit.thread: ; preds = %bb.ak, %_RNvNtNtCsiRgJJXJ4lb7_6brotli3enc7command18CombineLengthCodes.exit
  %i.gl = phi i64 [ %i.gg, %_RNvNtNtCsiRgJJXJ4lb7_6brotli3enc7command18CombineLengthCodes.exit ], [ 23, %bb.ak ]
  %.sroa.0.0.i104380382 = phi i16 [ %.sroa.0.0.i104, %_RNvNtNtCsiRgJJXJ4lb7_6brotli3enc7command18CombineLengthCodes.exit ], [ 23, %bb.ak ]
  %i.gm = phi i16 [ %i.ga, %_RNvNtNtCsiRgJJXJ4lb7_6brotli3enc7command18CombineLengthCodes.exit ], [ %i.dm, %bb.ak ]
  %i.gn = lshr i16 %.sroa.0.0.i104380382, 3
  %narrow4.i108 = add nuw nsw i16 %i.gn, %narrow.i107
  %i.go = zext nneg i16 %narrow4.i108 to i32      ; 2 uses
  %i.gp = shl nuw nsw i32 %i.go, 6
  %i.gq = add nuw nsw i32 %i.gp, 64
  %i.gr = shl nuw nsw i32 %i.go, 1
  %i.gs = and i32 %i.gr, 30
  %i.gt = lshr i32 5377344, %i.gs
  %i.gu = and i32 %i.gt, 192
  %i.gv = add nuw nsw i32 %i.gq, %i.gu
  %i.gw = trunc i32 %i.gv to i16                  ; 3 uses
  %i.gx = icmp ult i16 %i.gw, 128
  %.101 = select i1 %i.gx, float %i.dg, float %i.ey
  %i.gy = or disjoint i16 %i.gm, %i.gw
  %i.gz = zext i16 %i.gy to i64                   ; 2 uses
  %i.ha = icmp ult i16 %i.gw, 704
  br i1 %i.ha, label %bb.ao, label %bb.ap

bb.an:                                            ; preds = %_RNvNtNtCsiRgJJXJ4lb7_6brotli3enc7command18CombineLengthCodes.exit
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking18panic_bounds_check(i64 noundef %i.gg, i64 noundef 24, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @128) #29
  unreachable

bb.ao:                                            ; preds = %.thread, %_RNvNtNtCsiRgJJXJ4lb7_6brotli3enc7command18CombineLengthCodes.exit.thread
  %i.hb = phi i64 [ %i.gf, %.thread ], [ %i.gz, %_RNvNtNtCsiRgJJXJ4lb7_6brotli3enc7command18CombineLengthCodes.exit.thread ]
  %.101135138 = phi float [ %i.dg, %.thread ], [ %.101, %_RNvNtNtCsiRgJJXJ4lb7_6brotli3enc7command18CombineLengthCodes.exit.thread ]
  %i.hc = phi i64 [ %i.ge, %.thread ], [ %i.gl, %_RNvNtNtCsiRgJJXJ4lb7_6brotli3enc7command18CombineLengthCodes.exit.thread ]
  %i.hd = getelementptr inbounds nuw [4 x i8], ptr @_RNvNtNtCsiRgJJXJ4lb7_6brotli3enc9constants10kCopyExtra, i64 %i.hc
  %i.he = load i32, ptr %i.hd, align 4, !noundef !4
  %i.hf = uitofp i32 %i.he to float
  %i.hg = fadd float %.101135138, %i.hf
  %i.hh = getelementptr inbounds nuw [4 x i8], ptr %i.ay, i64 %i.hb
  %i.hi = load float, ptr %i.hh, align 4, !noundef !4
  %i.hj = fadd float %i.hi, %i.hg                 ; 2 uses
  %i.hk = add i64 %.sroa.032.0248, %2             ; 3 uses
  %i.hl = icmp ult i64 %i.hk, %16
  br i1 %i.hl, label %bb.aq, label %bb.ar

bb.ap:                                            ; preds = %_RNvNtNtCsiRgJJXJ4lb7_6brotli3enc7command18CombineLengthCodes.exit.thread
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking18panic_bounds_check(i64 noundef %i.gz, i64 noundef 704, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @129) #29
  unreachable

bb.aq:                                            ; preds = %bb.ao
  %i.hm = getelementptr inbounds nuw [20 x i8], ptr %15, i64 %i.hk ; 7 uses
  %i.hn = load i32, ptr %i.hm, align 4, !range !11, !noundef !4
  %i.ho = icmp eq i32 %i.hn, 0
  br i1 %i.ho, label %bb.as, label %bb.at

bb.ar:                                            ; preds = %bb.ao
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking18panic_bounds_check(i64 noundef %i.hk, i64 noundef %16, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @130) #29
  unreachable

bb.as:                                            ; preds = %bb.aq
  %i.hp = getelementptr inbounds nuw i8, ptr %i.hm, i64 4
  %i.hq = load float, ptr %i.hp, align 4, !noundef !4
  br label %bb.at

bb.at:                                            ; preds = %bb.aq, %bb.as
  %.sroa.041.0 = phi float [ %i.hq, %bb.as ], [ 0.000000e+00, %bb.aq ]
  %i.hr = fcmp olt float %i.hj, %.sroa.041.0
  br i1 %i.hr, label %bb.av, label %bb.au

bb.au:                                            ; preds = %bb.at, %bb.av
  %.sroa.0.4 = phi i64 [ %..i127, %bb.av ], [ %.sroa.0.2247, %bb.at ] ; 2 uses
  %.sroa.032.0 = add i64 %.sroa.032.0248, 1       ; 2 uses
  %.not98 = icmp ugt i64 %.sroa.032.0, %i.eu
  br i1 %.not98, label %.loopexit, label %bb.ah

bb.av:                                            ; preds = %bb.at
  %i.hs = getelementptr inbounds nuw i8, ptr %i.hm, i64 8
  %i.ht = trunc i64 %.sroa.032.0248 to i32
  %i.hu = or i32 %i.ht, 301989888
  store i32 %i.hu, ptr %i.hs, align 4
  %i.hv = getelementptr inbounds nuw i8, ptr %i.hm, i64 12
  store i32 %i.eb, ptr %i.hv, align 4
  %i.hw = getelementptr inbounds nuw i8, ptr %i.hm, i64 16
  store i32 %i.fc, ptr %i.hw, align 4
  store i32 0, ptr %i.hm, align 4
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.hm, i64 4
  store float %i.hj, ptr %.sroa.4.0..sroa_idx, align 4
  %..i127 = tail call noundef i64 @llvm.umax.i64(i64 %.sroa.032.0248, i64 %.sroa.0.2247)
  br label %bb.au

bb.aw:                                            ; preds = %.lr.ph271, %._crit_edge265
  %.sroa.0.5270 = phi i64 [ %.sroa.0.1.lcssa, %.lr.ph271 ], [ %.sroa.0.7.lcssa, %._crit_edge265 ] ; 2 uses
  %.sroa.014.1269 = phi i64 [ 0, %.lr.ph271 ], [ %i.jm, %._crit_edge265 ] ; 3 uses
  %.sroa.048.0268 = phi i64 [ %.sroa.02.0.i.lcssa, %.lr.ph271 ], [ %.sroa.048.2.lcssa, %._crit_edge265 ] ; 2 uses
  %exitcond338.not = icmp eq i64 %.sroa.014.1269, %12
  br i1 %exitcond338.not, label %bb.az, label %bb.ax

.loopexit139:                                     ; preds = %._crit_edge265, %._crit_edge
  %.sroa.0.6 = phi i64 [ %.sroa.0.1.lcssa, %._crit_edge ], [ %.sroa.0.7.lcssa, %._crit_edge265 ] ; 2 uses
  %i.hx = add nuw nsw i64 %.sroa.09.0273, 1
  %i.hy = icmp samesign ult i64 %.sroa.09.0273, 4
  %i.hz = select i1 %i.f, i1 %i.hy, i1 false
  br i1 %i.hz, label %bb.i, label %bb.j

bb.ax:                                            ; preds = %bb.aw
  %i.ia = getelementptr inbounds nuw [8 x i8], ptr %11, i64 %.sroa.014.1269
  %i.ib = load i64, ptr %i.ia, align 8, !noundef !4 ; 4 uses
  %i.ic = trunc i64 %i.ib to i32
  %i.id = and i64 %i.ib, 4294967295               ; 3 uses
  %i.ie = icmp ugt i64 %i.id, %..i125             ; 2 uses
  %i.if = add nuw nsw i64 %i.id, 15               ; 2 uses
  %i.ig = icmp samesign ult i64 %i.if, %i.bc
  br i1 %i.ig, label %_RNvNtNtCsiRgJJXJ4lb7_6brotli3enc7command24PrefixEncodeCopyDistance.exit, label %bb.ay

bb.ay:                                            ; preds = %bb.ax
  %.reass = add i64 %i.id, %invariant.op          ; 3 uses
  %i.ih = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %.reass, i1 false)
  %i.ii = xor i64 %i.ih, 63
  %i.ij = add nuw nsw i64 %i.ii, 4294967295       ; 2 uses
  %i.ik = and i64 %i.ij, 4294967295
  %i.il = and i64 %.reass, %i.bm
  %i.im = and i64 %i.ij, 63
  %i.in = lshr i64 %.reass, %i.im
  %i.io = sub nsw i64 %i.ik, %i.bf                ; 2 uses
  %i.ip = shl nsw i64 %i.io, 10
  %i.iq = shl nsw i64 %i.io, 1
  %i.ir = or i64 %i.in, 65534
  %i.is = add i64 %i.iq, %i.ir
  %i.it = shl i64 %i.is, %i.bn
  %i.iu = add nuw nsw i64 %i.il, %i.bc
  %i.iv = add i64 %i.iu, %i.it
  %i.iw = or i64 %i.iv, %i.ip
  br label %_RNvNtNtCsiRgJJXJ4lb7_6brotli3enc7command24PrefixEncodeCopyDistance.exit

_RNvNtNtCsiRgJJXJ4lb7_6brotli3enc7command24PrefixEncodeCopyDistance.exit: ; preds = %bb.ax, %bb.ay
  %.sink.in.i = phi i64 [ %i.iw, %bb.ay ], [ %i.if, %bb.ax ] ; 2 uses
  %i.ix = and i64 %.sink.in.i, 1023               ; 3 uses
  %i.iy = icmp ugt i64 %.val122, %i.ix
  br i1 %i.iy, label %bb.ba, label %bb.bb

bb.az:                                            ; preds = %bb.aw
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking18panic_bounds_check(i64 noundef %12, i64 noundef %12, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @133) #29
  unreachable

bb.ba:                                            ; preds = %_RNvNtNtCsiRgJJXJ4lb7_6brotli3enc7command24PrefixEncodeCopyDistance.exit
  %17 = lshr i64 %.sink.in.i, 10
  %18 = trunc i64 %17 to i32
  %i.iz = and i32 %18, 63
  %i.ja = uitofp nneg i32 %i.iz to float
  %i.jb = fadd float %i.dg, %i.ja
  %i.jc = getelementptr inbounds nuw [4 x i8], ptr %.val121, i64 %i.ix
  %i.jd = load float, ptr %i.jc, align 4, !noundef !4
  %i.je = fadd float %i.jb, %i.jd
  %i.jf = lshr i64 %i.ib, 37                      ; 7 uses
  %i.jg = icmp ult i64 %.sroa.048.0268, %i.jf
  %i.jh = icmp samesign ugt i64 %i.jf, %.100
  %or.cond = select i1 %i.ie, i1 true, i1 %i.jh
  %or.cond102 = select i1 %i.jg, i1 %or.cond, i1 false
  %.sroa.048.1 = select i1 %or.cond102, i64 %i.jf, i64 %.sroa.048.0268 ; 3 uses
  %.not99260 = icmp ugt i64 %.sroa.048.1, %i.jf
  br i1 %.not99260, label %._crit_edge265, label %.lr.ph264

.lr.ph264:                                        ; preds = %bb.ba
  %i.ji = lshr i64 %i.ib, 32
  %i.jj = and i64 %i.ji, 31                       ; 2 uses
  %i.jk = icmp eq i64 %i.jj, 0
  %spec.store.select = select i1 %i.jk, i64 %i.jf, i64 %i.jj
  %i.jl = add nuw nsw i64 %i.jf, 1
  br label %bb.bc

bb.bb:                                            ; preds = %_RNvNtNtCsiRgJJXJ4lb7_6brotli3enc7command24PrefixEncodeCopyDistance.exit
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking18panic_bounds_check(i64 noundef %i.ix, i64 noundef %.val122, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @127) #29
  unreachable

._crit_edge265:                                   ; preds = %bb.bo, %bb.ba
  %.sroa.048.2.lcssa = phi i64 [ %.sroa.048.1, %bb.ba ], [ %i.jl, %bb.bo ]
  %.sroa.0.7.lcssa = phi i64 [ %.sroa.0.5270, %bb.ba ], [ %.sroa.0.8, %bb.bo ] ; 2 uses
  %i.jm = add nuw nsw i64 %.sroa.014.1269, 1      ; 2 uses
  %exitcond339.not = icmp eq i64 %i.jm, %10
  br i1 %exitcond339.not, label %.loopexit139, label %bb.aw

bb.bc:                                            ; preds = %.lr.ph264, %bb.bo
  %.sroa.0.7262 = phi i64 [ %.sroa.0.5270, %.lr.ph264 ], [ %.sroa.0.8, %bb.bo ] ; 3 uses
  %.sroa.048.2261 = phi i64 [ %.sroa.048.1, %.lr.ph264 ], [ %i.lp, %bb.bo ] ; 7 uses
  %.sroa.055.0 = select i1 %i.ie, i64 %spec.store.select, i64 %.sroa.048.2261 ; 7 uses
  %i.jn = icmp ult i64 %.sroa.055.0, 10
  br i1 %i.jn, label %_RNvNtNtCsiRgJJXJ4lb7_6brotli3enc7command17GetCopyLengthCode.exit, label %bb.bd

bb.bd:                                            ; preds = %bb.bc
  %i.jo = icmp ult i64 %.sroa.055.0, 134
  br i1 %i.jo, label %bb.bf, label %bb.be

bb.be:                                            ; preds = %bb.bd
  %i.jp = icmp ult i64 %.sroa.055.0, 2118
  br i1 %i.jp, label %bb.bg, label %_RNvNtNtCsiRgJJXJ4lb7_6brotli3enc7command17GetCopyLengthCode.exit.thread

bb.bf:                                            ; preds = %bb.bd
  %i.jq = add nsw i64 %.sroa.055.0, -6            ; 2 uses
  %i.jr = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.jq, i1 false)
  %i.js = trunc nuw nsw i64 %i.jr to i32
  %i.jt = xor i32 %i.js, 63
  %i.ju = add nsw i32 %i.jt, -1                   ; 2 uses
  %i.jv = shl nuw nsw i32 %i.ju, 1
  %i.jw = zext nneg i32 %i.jv to i64
  %i.jx = zext nneg i32 %i.ju to i64
  %i.jy = lshr i64 %i.jq, %i.jx
  %i.jz = add nuw nsw i64 %i.jy, %i.jw
  br label %_RNvNtNtCsiRgJJXJ4lb7_6brotli3enc7command17GetCopyLengthCode.exit

bb.bg:                                            ; preds = %bb.be
  %i.ka = add nsw i64 %.sroa.055.0, -70
  %i.kb = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.ka, i1 false)
  %i.kc = trunc nuw nsw i64 %i.kb to i16
  %i.kd = xor i16 %i.kc, 63
  %i.ke = add nuw nsw i16 %i.kd, 12
  br label %_RNvNtNtCsiRgJJXJ4lb7_6brotli3enc7command17GetCopyLengthCode.exit.thread

_RNvNtNtCsiRgJJXJ4lb7_6brotli3enc7command17GetCopyLengthCode.exit.thread: ; preds = %bb.bg, %bb.be
  %.sroa.0.0.i.ph = phi i16 [ 23, %bb.be ], [ %i.ke, %bb.bg ] ; 2 uses
  %i.kf = zext nneg i16 %.sroa.0.0.i.ph to i64
  br label %bb.bh

_RNvNtNtCsiRgJJXJ4lb7_6brotli3enc7command17GetCopyLengthCode.exit: ; preds = %bb.bc, %bb.bf
  %.sroa.055.0.sink = phi i64 [ %i.jz, %bb.bf ], [ %.sroa.055.0, %bb.bc ]
  %.sink434 = phi i16 [ 4, %bb.bf ], [ -2, %bb.bc ]
  %i.kg = trunc nuw nsw i64 %.sroa.055.0.sink to i16
  %i.kh = add nsw i16 %.sink434, %i.kg            ; 3 uses
  %i.ki = zext i16 %i.kh to i64                   ; 2 uses
  %i.kj = icmp ult i16 %i.kh, 24
  br i1 %i.kj, label %bb.bh, label %bb.bi

bb.bh:                                            ; preds = %_RNvNtNtCsiRgJJXJ4lb7_6brotli3enc7command17GetCopyLengthCode.exit.thread, %_RNvNtNtCsiRgJJXJ4lb7_6brotli3enc7command17GetCopyLengthCode.exit
  %i.kk = phi i64 [ %i.kf, %_RNvNtNtCsiRgJJXJ4lb7_6brotli3enc7command17GetCopyLengthCode.exit.thread ], [ %i.ki, %_RNvNtNtCsiRgJJXJ4lb7_6brotli3enc7command17GetCopyLengthCode.exit ]
  %.sroa.0.0.i384 = phi i16 [ %.sroa.0.0.i.ph, %_RNvNtNtCsiRgJJXJ4lb7_6brotli3enc7command17GetCopyLengthCode.exit.thread ], [ %i.kh, %_RNvNtNtCsiRgJJXJ4lb7_6brotli3enc7command17GetCopyLengthCode.exit ] ; 2 uses
  %i.kl = and i16 %.sroa.0.0.i384, 7
  %i.km = or disjoint i16 %i.kl, %i.dp
  %i.kn = lshr i16 %.sroa.0.0.i384, 3
  %narrow4.i = add nuw nsw i16 %i.kn, %narrow.i
  %i.ko = zext nneg i16 %narrow4.i to i32         ; 2 uses
  %i.kp = shl nuw nsw i32 %i.ko, 6
  %i.kq = add nuw nsw i32 %i.kp, 64
  %i.kr = shl nuw nsw i32 %i.ko, 1
  %i.ks = and i32 %i.kr, 30
  %i.kt = lshr i32 5377344, %i.ks
  %i.ku = and i32 %i.kt, 192
  %i.kv = add nuw nsw i32 %i.kq, %i.ku
  %i.kw = trunc i32 %i.kv to i16                  ; 2 uses
  %i.kx = or disjoint i16 %i.km, %i.kw
  %i.ky = zext i16 %i.kx to i64                   ; 2 uses
  %i.kz = icmp ult i16 %i.kw, 704
  br i1 %i.kz, label %bb.bj, label %bb.bk

bb.bi:                                            ; preds = %_RNvNtNtCsiRgJJXJ4lb7_6brotli3enc7command17GetCopyLengthCode.exit
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking18panic_bounds_check(i64 noundef %i.ki, i64 noundef 24, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @128) #29
  unreachable

bb.bj:                                            ; preds = %bb.bh
  %i.la = getelementptr inbounds nuw [4 x i8], ptr @_RNvNtNtCsiRgJJXJ4lb7_6brotli3enc9constants10kCopyExtra, i64 %i.kk
  %i.lb = load i32, ptr %i.la, align 4, !noundef !4
  %i.lc = uitofp i32 %i.lb to float
  %i.ld = fadd float %i.je, %i.lc
  %i.le = getelementptr inbounds nuw [4 x i8], ptr %i.ay, i64 %i.ky
  %i.lf = load float, ptr %i.le, align 4, !noundef !4
  %i.lg = fadd float %i.lf, %i.ld                 ; 2 uses
  %i.lh = add i64 %.sroa.048.2261, %2             ; 3 uses
  %i.li = icmp ult i64 %i.lh, %16
  br i1 %i.li, label %bb.bl, label %bb.bm

bb.bk:                                            ; preds = %bb.bh
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking18panic_bounds_check(i64 noundef %i.ky, i64 noundef 704, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @129) #29
  unreachable

bb.bl:                                            ; preds = %bb.bj
  %i.lj = getelementptr inbounds nuw [20 x i8], ptr %15, i64 %i.lh ; 5 uses
  %i.lk = load i32, ptr %i.lj, align 4, !range !11, !noundef !4
  %i.ll = icmp eq i32 %i.lk, 0
  br i1 %i.ll, label %bb.bn, label %bb.bo

bb.bm:                                            ; preds = %bb.bj
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking18panic_bounds_check(i64 noundef %i.lh, i64 noundef %16, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @134) #29
  unreachable

bb.bn:                                            ; preds = %bb.bl
  %i.lm = getelementptr inbounds nuw i8, ptr %i.lj, i64 4 ; 2 uses
  %i.ln = load float, ptr %i.lm, align 4, !noundef !4
  %i.lo = fcmp olt float %i.lg, %i.ln
  br i1 %i.lo, label %bb.bp, label %bb.bo

bb.bo:                                            ; preds = %bb.bn, %bb.bp, %bb.bl
  %.sroa.0.8 = phi i64 [ %..i128, %bb.bp ], [ %.sroa.0.7262, %bb.bn ], [ %.sroa.0.7262, %bb.bl ] ; 2 uses
  %i.lp = add i64 %.sroa.048.2261, 1
  %exitcond.not = icmp eq i64 %.sroa.048.2261, %i.jf
  br i1 %exitcond.not, label %._crit_edge265, label %bb.bc

bb.bp:                                            ; preds = %bb.bn
  %i.lq = add nuw nsw i64 %.sroa.048.2261, 9
  %i.lr = sub i64 %i.lq, %.sroa.055.0
  %i.ls = shl nsw i64 %i.lr, 25
  %i.lt = or i64 %i.ls, %.sroa.048.2261
  %i.lu = getelementptr inbounds nuw i8, ptr %i.lj, i64 8
  %i.lv = trunc i64 %i.lt to i32
  store i32 %i.lv, ptr %i.lu, align 4
  %i.lw = getelementptr inbounds nuw i8, ptr %i.lj, i64 12
  store i32 %i.ic, ptr %i.lw, align 4
  %i.lx = getelementptr inbounds nuw i8, ptr %i.lj, i64 16
  store i32 %i.dr, ptr %i.lx, align 4
  store float %i.lg, ptr %i.lm, align 4
  %..i128 = tail call noundef i64 @llvm.umax.i64(i64 %.sroa.048.2261, i64 %.sroa.0.7262)
  br label %bb.bo
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtNtNtCsiRgJJXJ4lb7_6brotli3enc19backward_references2hq12EvaluateNodeNtNtCsc389t4z7aPt_12alloc_stdlib9std_alloc13StandardAllocECskeugdADtBsi_12pingora_core(i64 noundef %0, i64 noundef %1, i64 noundef range(i64 -15, 9223372036854775793) %2, ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) %3, i64 noundef range(i64 0, 2305843009213693952) %4, ptr nofree readonly captures(none) %.16.val, i64 %.24.val, ptr noalias nofree noundef nonnull align 8 dereferenceable(264) %5, ptr noalias nofree noundef nonnull align 4 captures(address, read_provenance) %6, i64 noundef range(i64 1, 461168601842738791) %7) unnamed_addr #0 {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 8 uses
  %i.b = icmp ult i64 %1, %7
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw [20 x i8], ptr %6, i64 %1 ; 7 uses
  %i.d = load i32, ptr %i.c, align 4, !range !11, !noundef !4
  %i.e = icmp eq i32 %i.d, 0
  br i1 %i.e, label %bb.d, label %bb.e

bb.c:                                             ; preds = %bb.a
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking18panic_bounds_check(i64 noundef %1, i64 noundef %7, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @135) #29
  unreachable

bb.d:                                             ; preds = %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %i.c, i64 4
  %i.g = load float, ptr %i.f, align 4, !noundef !4
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.b
  %.sroa.0.0 = phi float [ %i.g, %bb.d ], [ 0.000000e+00, %bb.b ] ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !781)
  %i.h = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.i = load i32, ptr %i.h, align 4, !alias.scope !781, !noundef !4
  %i.j = and i32 %i.i, 33554431                   ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %i.l = load i32, ptr %i.k, align 4, !alias.scope !781, !noundef !4 ; 2 uses
  %i.m = and i32 %i.l, 134217727
  %i.n = getelementptr inbounds nuw i8, ptr %i.c, i64 12
  %i.o = load i32, ptr %i.n, align 4, !alias.scope !781, !noundef !4 ; 2 uses
  %i.p = icmp eq i64 %1, 0
  br i1 %i.p, label %_RNvNtNtNtCsiRgJJXJ4lb7_6brotli3enc19backward_references2hq23ComputeDistanceShortcut.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
end_hunk_0
begin_hunk_1_@_RNvMs1_NtNtCs2awuzAz5vY4_5tokio4sync9broadcastINtB5_6SenderNtNtCskeugdADtBsi_12pingora_core6server14ExecutionPhaseE4sendBZ_:bb.a
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsG258MDvU3F_3std4sync6poison5mutex10MutexGuardINtNtNtCs2awuzAz5vY4_5tokio4sync9broadcast4SlotNtNtCskeugdADtBsi_12pingora_core6server14ExecutionPhaseEEEB2k_.exit unwind label %.thread26

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsG258MDvU3F_3std4sync6poison5mutex10MutexGuardINtNtNtCs2awuzAz5vY4_5tokio4sync9broadcast4SlotNtNtCskeugdADtBsi_12pingora_core6server14ExecutionPhaseEEEB2k_.exit: ; preds = %_RNvMNtNtCsG258MDvU3F_3std4sync6poisonNtB2_4Flag4done.exit.i.i12, %bb.o
  %i.aw = trunc nuw i8 %i.h to i1
  call fastcc void @_RNvMs4_NtNtCs2awuzAz5vY4_5tokio4sync9broadcastINtB5_6SharedNtNtCskeugdADtBsi_12pingora_core6server14ExecutionPhaseE9notify_rxBZ_(ptr noundef nonnull align 8 %i.ad, ptr noundef nonnull align 8 %i.f, i1 noundef zeroext %i.aw)
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.j, ptr %i.ax, align 8
  store i8 0, ptr %0, align 8
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsG258MDvU3F_3std4sync6poison5mutex10MutexGuardNtNtNtCs2awuzAz5vY4_5tokio4sync9broadcast4TailEECskeugdADtBsi_12pingora_core.exit

bb.p:                                             ; preds = %bb.q
  %i.ay = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #28
  unreachable

bb.q:                                             ; preds = %.thread26, %.thread
  %.pn25 = phi { ptr, i32 } [ %i.ag, %.thread ], [ %lpad.thr_comm, %.thread26 ]
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsG258MDvU3F_3std4sync6poison5mutex10MutexGuardNtNtNtCs2awuzAz5vY4_5tokio4sync9broadcast4TailEECskeugdADtBsi_12pingora_core(ptr nonnull %i.f, i8 %i.h) #30
          to label %bb.r unwind label %bb.p

bb.r:                                             ; preds = %bb.q
  resume { ptr, i32 } %.pn25
}

; Function Attrs: nonlazybind uwtable
define hidden { ptr, i64 } @_RNvMs1_NtNtCs2awuzAz5vY4_5tokio4sync9broadcastINtB5_6SenderNtNtCskeugdADtBsi_12pingora_core6server14ExecutionPhaseE9subscribeBZ_(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 5 uses
  %i.b = alloca [8 x i8], align 8                 ; 6 uses
  %i.c = load ptr, ptr %0, align 8, !nonnull !4, !noundef !4 ; 3 uses
  %i.d = atomicrmw add ptr %i.c, i64 1 monotonic, align 8
  %i.e = icmp slt i64 %i.d, 0
  br i1 %i.e, label %bb.r, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store ptr %i.c, ptr %i.b, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.f = getelementptr inbounds nuw i8, ptr %i.c, i64 40
  invoke void @_RNvMs5_NtNtNtCsG258MDvU3F_3std4sync6poison5mutexINtB5_5MutexNtNtNtCs2awuzAz5vY4_5tokio4sync9broadcast4TailE4lockCskeugdADtBsi_12pingora_core(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.a, ptr noundef nonnull align 8 %i.f)
          to label %bb.f unwind label %bb.e

bb.c:                                             ; preds = %bb.p, %bb.h, %bb.e
  %.pn.i = phi { ptr, i32 } [ %lpad.thr_comm.i, %bb.p ], [ %lpad.thr_comm.split-lp.i, %bb.h ], [ %i.j, %bb.e ]
  call void @llvm.experimental.noalias.scope.decl(metadata !993)
  call void @llvm.experimental.noalias.scope.decl(metadata !994)
  %i.g = load ptr, ptr %i.b, align 8, !alias.scope !995, !nonnull !4, !noundef !4
  %i.h = atomicrmw sub ptr %i.g, i64 1 release, align 8, !noalias !995
  %i.i = icmp eq i64 %i.h, 1
  br i1 %i.i, label %bb.d, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcINtNtNtCs2awuzAz5vY4_5tokio4sync9broadcast6SharedNtNtCskeugdADtBsi_12pingora_core6server14ExecutionPhaseEEEB20_.exit.i

bb.d:                                             ; preds = %bb.c
  fence acquire
  invoke void @_RNvMsn_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcINtNtNtCs2awuzAz5vY4_5tokio4sync9broadcast6SharedNtNtCskeugdADtBsi_12pingora_core6server14ExecutionPhaseEE9drop_slowB1x_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.b) #33
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcINtNtNtCs2awuzAz5vY4_5tokio4sync9broadcast6SharedNtNtCskeugdADtBsi_12pingora_core6server14ExecutionPhaseEEEB20_.exit.i unwind label %bb.q

bb.e:                                             ; preds = %bb.b
  %i.j = landingpad { ptr, i32 }
          cleanup
  br label %bb.c

bb.f:                                             ; preds = %bb.b
  %i.k = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.l = load ptr, ptr %i.k, align 8, !nonnull !4, !align !7 ; 7 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.n = load i8, ptr %i.m, align 8, !range !18   ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.o = getelementptr inbounds nuw i8, ptr %i.l, i64 16 ; 2 uses
  %i.p = load i64, ptr %i.o, align 8, !noundef !4 ; 2 uses
  switch i64 %i.p, label %bb.j [
    i64 4611686018427387903, label %bb.g
    i64 0, label %.thread17.i
    i64 -1, label %bb.o
  ], !prof !996

bb.g:                                             ; preds = %bb.f
  invoke void @_RNvNtCskKLDkoKarTP_4core9panicking9panic_fmt(ptr noundef nonnull @6, ptr noundef nonnull inttoptr (i64 27 to ptr), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @8) #32
          to label %bb.i unwind label %bb.p

bb.h:                                             ; preds = %bb.n, %bb.l
  %lpad.thr_comm.split-lp.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.c

bb.i:                                             ; preds = %bb.o, %bb.g
  unreachable

.thread17.i:                                      ; preds = %bb.f
  %i.q = getelementptr inbounds nuw i8, ptr %i.l, i64 40
  store i8 0, ptr %i.q, align 8
  br label %bb.j

bb.j:                                             ; preds = %.thread17.i, %bb.f
  %i.r = add nuw i64 %i.p, 1
  store i64 %i.r, ptr %i.o, align 8
  %i.s = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  %i.t = load i64, ptr %i.s, align 8, !noundef !4
  %i.u = getelementptr inbounds nuw i8, ptr %i.l, i64 4
  %i.v = trunc nuw i8 %i.n to i1
  br i1 %i.v, label %_RNvMNtNtCsG258MDvU3F_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.w = load atomic i64, ptr @_RNvNtNtCsG258MDvU3F_3std9panicking11panic_count18GLOBAL_PANIC_COUNT monotonic, align 8
  %i.x = and i64 %i.w, 9223372036854775807
  %i.y = icmp eq i64 %i.x, 0
  br i1 %i.y, label %_RNvMNtNtCsG258MDvU3F_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i, label %bb.l, !prof !19

bb.l:                                             ; preds = %bb.k
  %i.z = invoke noundef zeroext i1 @_RNvNtNtCsG258MDvU3F_3std9panicking11panic_count17is_zero_slow_path() #33
          to label %.noexc8.i unwind label %bb.h

.noexc8.i:                                        ; preds = %bb.l
  br i1 %i.z, label %_RNvMNtNtCsG258MDvU3F_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i, label %bb.m

bb.m:                                             ; preds = %.noexc8.i
  store atomic i8 1, ptr %i.u monotonic, align 4
  br label %_RNvMNtNtCsG258MDvU3F_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i

_RNvMNtNtCsG258MDvU3F_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i: ; preds = %bb.m, %.noexc8.i, %bb.k, %bb.j
  %i.aa = atomicrmw xchg ptr %i.l, i32 0 release, align 4
  %i.ab = icmp eq i32 %i.aa, 2
  br i1 %i.ab, label %bb.n, label %_RINvNtNtCs2awuzAz5vY4_5tokio4sync9broadcast12new_receiverNtNtCskeugdADtBsi_12pingora_core6server14ExecutionPhaseEBX_.exit, !prof !6

bb.n:                                             ; preds = %_RNvMNtNtCsG258MDvU3F_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i
  invoke void @_RNvMNtNtNtNtCsG258MDvU3F_3std3sys4sync5mutex5futexNtB2_5Mutex4wake(ptr noundef nonnull align 4 %i.l)
          to label %_RINvNtNtCs2awuzAz5vY4_5tokio4sync9broadcast12new_receiverNtNtCskeugdADtBsi_12pingora_core6server14ExecutionPhaseEBX_.exit unwind label %bb.h

bb.o:                                             ; preds = %bb.f
  invoke void @_RNvNtCskKLDkoKarTP_4core6option13expect_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @9, i64 noundef 8, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @10) #32
          to label %bb.i unwind label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.g
  %lpad.thr_comm.i = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsG258MDvU3F_3std4sync6poison5mutex10MutexGuardNtNtNtCs2awuzAz5vY4_5tokio4sync9broadcast4TailEECskeugdADtBsi_12pingora_core(ptr nonnull %i.l, i8 %i.n) #30
          to label %bb.c unwind label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.d
  %i.ac = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #28
  unreachable

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcINtNtNtCs2awuzAz5vY4_5tokio4sync9broadcast6SharedNtNtCskeugdADtBsi_12pingora_core6server14ExecutionPhaseEEEB20_.exit.i: ; preds = %bb.d, %bb.c
  resume { ptr, i32 } %.pn.i

_RINvNtNtCs2awuzAz5vY4_5tokio4sync9broadcast12new_receiverNtNtCskeugdADtBsi_12pingora_core6server14ExecutionPhaseEBX_.exit: ; preds = %_RNvMNtNtCsG258MDvU3F_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i, %bb.n
  %i.ad = load ptr, ptr %i.b, align 8, !nonnull !4, !noundef !4
  %i.ae = insertvalue { ptr, i64 } poison, ptr %i.ad, 0
  %i.af = insertvalue { ptr, i64 } %i.ae, i64 %i.t, 1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  ret { ptr, i64 } %i.af

bb.r:                                             ; preds = %bb.a
  tail call void @llvm.trap()
  unreachable
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMs1_NtNtCsiRgJJXJ4lb7_6brotli3enc9interfaceINtB5_24PredictionModeContextMapNtNtB7_10input_pair17InputReferenceMutE27set_literal_prediction_modeCskeugdADtBsi_12pingora_core(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(48) %0, i8 noundef %1) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %.val1 = load i64, ptr %i.a, align 8, !noundef !4
  %.not = icmp eq i64 %.val1, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.val = load ptr, ptr %i.b, align 8, !nonnull !4, !noundef !4
  store i8 %1, ptr %.val, align 1
  ret void

bb.c:                                             ; preds = %bb.a
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking18panic_bounds_check(i64 noundef 0, i64 noundef 0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @193) #29
  unreachable
}

; Function Attrs: nonlazybind uwtable
define hidden noundef range(i64 0, -6917529027641081856) i64 @_RNvMs2_NtNtCsiRgJJXJ4lb7_6brotli3enc9interfaceINtB5_24PredictionModeContextMapNtNtB7_10input_pair17InputReferenceMutE17context_map_speedCskeugdADtBsi_12pingora_core(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(48) %0) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.val = load ptr, ptr %i.a, align 8, !nonnull !4, !noundef !4 ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 32
  %.val11 = load i64, ptr %i.b, align 8, !noundef !4 ; 5 uses
  %i.c = icmp ugt i64 %.val11, 8200
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %.val, i64 8200
  %i.e = load i8, ptr %i.d, align 1, !noundef !4  ; 3 uses
  %.not.i = icmp eq i64 %.val11, 8201
  br i1 %.not.i, label %bb.e, label %bb.d

bb.c:                                             ; preds = %bb.a
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking18panic_bounds_check(i64 noundef 8200, i64 noundef %.val11, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @194) #29
  unreachable

bb.d:                                             ; preds = %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %.val, i64 8201
  %i.g = load i8, ptr %i.f, align 1, !noundef !4
  %i.h = icmp ugt i64 %.val11, 8202
  br i1 %i.h, label %bb.f, label %bb.g

bb.e:                                             ; preds = %bb.b
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking18panic_bounds_check(i64 noundef 8201, i64 noundef 8201, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @195) #29
  unreachable

bb.f:                                             ; preds = %bb.d
  %.not1.i = icmp eq i64 %.val11, 8203
  br i1 %.not1.i, label %bb.h, label %_RNvMs2_NtNtCsiRgJJXJ4lb7_6brotli3enc9interfaceINtB5_24PredictionModeContextMapNtNtB7_10input_pair17InputReferenceMutE20context_map_speed_f8CskeugdADtBsi_12pingora_core.exit

bb.g:                                             ; preds = %bb.d
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking18panic_bounds_check(i64 noundef 8202, i64 noundef 8202, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @196) #29
  unreachable

bb.h:                                             ; preds = %bb.f
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking18panic_bounds_check(i64 noundef 8203, i64 noundef 8203, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @197) #29
  unreachable

_RNvMs2_NtNtCsiRgJJXJ4lb7_6brotli3enc9interfaceINtB5_24PredictionModeContextMapNtNtB7_10input_pair17InputReferenceMutE20context_map_speed_f8CskeugdADtBsi_12pingora_core.exit: ; preds = %bb.f
  %i.i = getelementptr inbounds nuw i8, ptr %.val, i64 8202
  %i.j = load i8, ptr %i.i, align 1, !noundef !4
  %i.k = getelementptr inbounds nuw i8, ptr %.val, i64 8203
  %i.l = load i8, ptr %i.k, align 1, !noundef !4  ; 3 uses
  %.sroa.4.0.insert.ext.i = zext i8 %i.l to i32   ; 2 uses
  %.sroa.4.0.insert.shift.i = shl nuw i32 %.sroa.4.0.insert.ext.i, 24
  %.sroa.3.0.insert.ext.i = zext i8 %i.g to i32
  %.sroa.3.0.insert.shift.i = shl nuw nsw i32 %.sroa.3.0.insert.ext.i, 16
  %.sroa.2.0.insert.ext.i = zext i8 %i.j to i32
  %.sroa.2.0.insert.shift.i = shl nuw nsw i32 %.sroa.2.0.insert.ext.i, 8
  %1 = or disjoint i32 %.sroa.3.0.insert.shift.i, %.sroa.2.0.insert.shift.i
  %.sroa.0.0.insert.insert.i = or disjoint i32 %1, %.sroa.4.0.insert.shift.i ; 2 uses
  %.sroa.48.0.extract.shift = lshr exact i32 %.sroa.0.0.insert.insert.i, 8 ; 2 uses
  %.sroa.48.0.extract.trunc = trunc i32 %.sroa.48.0.extract.shift to i8 ; 2 uses
  %.sroa.59.0.extract.shift = lshr i32 %.sroa.0.0.insert.insert.i, 16 ; 2 uses
  %.sroa.59.0.extract.trunc = trunc i32 %.sroa.59.0.extract.shift to i8 ; 2 uses
  %i.m = icmp ult i8 %i.e, 8
  br i1 %i.m, label %bb.j, label %bb.i

bb.i:                                             ; preds = %_RNvMs2_NtNtCsiRgJJXJ4lb7_6brotli3enc9interfaceINtB5_24PredictionModeContextMapNtNtB7_10input_pair17InputReferenceMutE20context_map_speed_f8CskeugdADtBsi_12pingora_core.exit
  %i.n = lshr i8 %i.e, 3
  %i.o = add nuw nsw i8 %i.n, 15
  %i.p = and i8 %i.e, 7
  %i.q = zext nneg i8 %i.p to i16
  %i.r = and i8 %i.o, 15
  %i.s = zext nneg i8 %i.r to i16                 ; 2 uses
  %i.t = shl i16 %i.q, %i.s
  %i.u = shl nuw i16 1, %i.s
  %i.v = lshr i16 %i.t, 3
  %i.w = or i16 %i.v, %i.u
  %i.x = zext i16 %i.w to i64
  br label %bb.j

bb.j:                                             ; preds = %_RNvMs2_NtNtCsiRgJJXJ4lb7_6brotli3enc9interfaceINtB5_24PredictionModeContextMapNtNtB7_10input_pair17InputReferenceMutE20context_map_speed_f8CskeugdADtBsi_12pingora_core.exit, %bb.i
  %.sroa.03.0 = phi i64 [ %i.x, %bb.i ], [ 0, %_RNvMs2_NtNtCsiRgJJXJ4lb7_6brotli3enc9interfaceINtB5_24PredictionModeContextMapNtNtB7_10input_pair17InputReferenceMutE20context_map_speed_f8CskeugdADtBsi_12pingora_core.exit ] ; 2 uses
  %i.y = icmp ult i8 %.sroa.48.0.extract.trunc, 8
  br i1 %i.y, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.z = lshr i8 %.sroa.48.0.extract.trunc, 3
  %i.aa = add nuw nsw i8 %i.z, 15
  %2 = trunc i32 %.sroa.48.0.extract.shift to i16
  %3 = and i16 %2, 7
  %i.ab = and i8 %i.aa, 15
  %i.ac = zext nneg i8 %i.ab to i16               ; 2 uses
  %i.ad = shl i16 %3, %i.ac
  %i.ae = shl nuw i16 1, %i.ac
  %i.af = lshr i16 %i.ad, 3
  %i.ag = or i16 %i.af, %i.ae
  %i.ah = zext i16 %i.ag to i64
  %i.ai = shl nuw nsw i64 %i.ah, 16
  %i.aj = or disjoint i64 %i.ai, %.sroa.03.0
  br label %bb.l

bb.l:                                             ; preds = %bb.j, %bb.k
  %.sroa.04.0 = phi i64 [ %i.aj, %bb.k ], [ %.sroa.03.0, %bb.j ]
  %i.ak = icmp ult i8 %.sroa.59.0.extract.trunc, 8
  br i1 %i.ak, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.al = lshr i8 %.sroa.59.0.extract.trunc, 3
  %i.am = add nuw nsw i8 %i.al, 15
  %4 = trunc nuw i32 %.sroa.59.0.extract.shift to i16
  %5 = and i16 %4, 7
  %i.an = and i8 %i.am, 15
  %i.ao = zext nneg i8 %i.an to i16               ; 2 uses
  %i.ap = shl i16 %5, %i.ao
  %i.aq = shl nuw i16 1, %i.ao
  %i.ar = lshr i16 %i.ap, 3
  %i.as = or i16 %i.ar, %i.aq
  %i.at = zext i16 %i.as to i64
  %i.au = shl nuw nsw i64 %i.at, 32
  br label %bb.n

bb.n:                                             ; preds = %bb.l, %bb.m
  %.sroa.05.0 = phi i64 [ %i.au, %bb.m ], [ 0, %bb.l ] ; 2 uses
  %i.av = icmp ult i8 %i.l, 8
  br i1 %i.av, label %bb.p, label %bb.o

bb.o:                                             ; preds = %bb.n
  %sum.shift = lshr i32 %.sroa.4.0.insert.ext.i, 3
  %6 = trunc nuw nsw i32 %sum.shift to i16
  %7 = add nuw nsw i16 %6, 15
  %i.aw = and i8 %i.l, 7
  %i.ax = zext nneg i8 %i.aw to i16
  %8 = and i16 %7, 15                             ; 2 uses
  %i.ay = shl i16 %i.ax, %8
  %i.az = shl nuw i16 1, %8
  %i.ba = lshr i16 %i.ay, 3
  %i.bb = or i16 %i.ba, %i.az
  %i.bc = zext i16 %i.bb to i64
  %i.bd = shl nuw i64 %i.bc, 48
  %i.be = or i64 %.sroa.05.0, %i.bd
  br label %bb.p

bb.p:                                             ; preds = %bb.n, %bb.o
  %.sroa.06.0 = phi i64 [ %i.be, %bb.o ], [ %.sroa.05.0, %bb.n ]
  %.sroa.0.0.insert.insert = or i64 %.sroa.04.0, %.sroa.06.0
  ret i64 %.sroa.0.0.insert.insert
}

; Function Attrs: nonlazybind uwtable
define hidden noundef range(i64 0, -6917529027641081856) i64 @_RNvMs2_NtNtCsiRgJJXJ4lb7_6brotli3enc9interfaceINtB5_24PredictionModeContextMapNtNtB7_10input_pair17InputReferenceMutE20stride_context_speedCskeugdADtBsi_12pingora_core(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(48) %0) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.val = load ptr, ptr %i.a, align 8, !nonnull !4, !noundef !4 ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 32
  %.val11 = load i64, ptr %i.b, align 8, !noundef !4 ; 5 uses
  %i.c = icmp ugt i64 %.val11, 8196
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %.val, i64 8196
  %i.e = load i8, ptr %i.d, align 1, !noundef !4  ; 3 uses
  %.not.i = icmp eq i64 %.val11, 8197
  br i1 %.not.i, label %bb.e, label %bb.d

bb.c:                                             ; preds = %bb.a
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking18panic_bounds_check(i64 noundef 8196, i64 noundef %.val11, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @198) #29
  unreachable

bb.d:                                             ; preds = %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %.val, i64 8197
  %i.g = load i8, ptr %i.f, align 1, !noundef !4
  %i.h = icmp ugt i64 %.val11, 8198
  br i1 %i.h, label %bb.f, label %bb.g

bb.e:                                             ; preds = %bb.b
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking18panic_bounds_check(i64 noundef 8197, i64 noundef 8197, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @199) #29
  unreachable

bb.f:                                             ; preds = %bb.d
  %.not1.i = icmp eq i64 %.val11, 8199
  br i1 %.not1.i, label %bb.h, label %_RNvMs2_NtNtCsiRgJJXJ4lb7_6brotli3enc9interfaceINtB5_24PredictionModeContextMapNtNtB7_10input_pair17InputReferenceMutE23stride_context_speed_f8CskeugdADtBsi_12pingora_core.exit

bb.g:                                             ; preds = %bb.d
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking18panic_bounds_check(i64 noundef 8198, i64 noundef 8198, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @200) #29
  unreachable

bb.h:                                             ; preds = %bb.f
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking18panic_bounds_check(i64 noundef 8199, i64 noundef 8199, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @201) #29
  unreachable

_RNvMs2_NtNtCsiRgJJXJ4lb7_6brotli3enc9interfaceINtB5_24PredictionModeContextMapNtNtB7_10input_pair17InputReferenceMutE23stride_context_speed_f8CskeugdADtBsi_12pingora_core.exit: ; preds = %bb.f
  %i.i = getelementptr inbounds nuw i8, ptr %.val, i64 8198
  %i.j = load i8, ptr %i.i, align 1, !noundef !4
  %i.k = getelementptr inbounds nuw i8, ptr %.val, i64 8199
  %i.l = load i8, ptr %i.k, align 1, !noundef !4  ; 3 uses
  %.sroa.4.0.insert.ext.i = zext i8 %i.l to i32   ; 2 uses
  %.sroa.4.0.insert.shift.i = shl nuw i32 %.sroa.4.0.insert.ext.i, 24
  %.sroa.3.0.insert.ext.i = zext i8 %i.g to i32
  %.sroa.3.0.insert.shift.i = shl nuw nsw i32 %.sroa.3.0.insert.ext.i, 16
  %.sroa.2.0.insert.ext.i = zext i8 %i.j to i32
  %.sroa.2.0.insert.shift.i = shl nuw nsw i32 %.sroa.2.0.insert.ext.i, 8
  %1 = or disjoint i32 %.sroa.3.0.insert.shift.i, %.sroa.2.0.insert.shift.i
  %.sroa.0.0.insert.insert.i = or disjoint i32 %1, %.sroa.4.0.insert.shift.i ; 2 uses
  %.sroa.48.0.extract.shift = lshr exact i32 %.sroa.0.0.insert.insert.i, 8 ; 2 uses
  %.sroa.48.0.extract.trunc = trunc i32 %.sroa.48.0.extract.shift to i8 ; 2 uses
  %.sroa.59.0.extract.shift = lshr i32 %.sroa.0.0.insert.insert.i, 16 ; 2 uses
  %.sroa.59.0.extract.trunc = trunc i32 %.sroa.59.0.extract.shift to i8 ; 2 uses
  %i.m = icmp ult i8 %i.e, 8
  br i1 %i.m, label %bb.j, label %bb.i

bb.i:                                             ; preds = %_RNvMs2_NtNtCsiRgJJXJ4lb7_6brotli3enc9interfaceINtB5_24PredictionModeContextMapNtNtB7_10input_pair17InputReferenceMutE23stride_context_speed_f8CskeugdADtBsi_12pingora_core.exit
  %i.n = lshr i8 %i.e, 3
  %i.o = add nuw nsw i8 %i.n, 15
  %i.p = and i8 %i.e, 7
  %i.q = zext nneg i8 %i.p to i16
  %i.r = and i8 %i.o, 15
  %i.s = zext nneg i8 %i.r to i16                 ; 2 uses
  %i.t = shl i16 %i.q, %i.s
  %i.u = shl nuw i16 1, %i.s
  %i.v = lshr i16 %i.t, 3
  %i.w = or i16 %i.v, %i.u
  %i.x = zext i16 %i.w to i64
  br label %bb.j

bb.j:                                             ; preds = %_RNvMs2_NtNtCsiRgJJXJ4lb7_6brotli3enc9interfaceINtB5_24PredictionModeContextMapNtNtB7_10input_pair17InputReferenceMutE23stride_context_speed_f8CskeugdADtBsi_12pingora_core.exit, %bb.i
  %.sroa.03.0 = phi i64 [ %i.x, %bb.i ], [ 0, %_RNvMs2_NtNtCsiRgJJXJ4lb7_6brotli3enc9interfaceINtB5_24PredictionModeContextMapNtNtB7_10input_pair17InputReferenceMutE23stride_context_speed_f8CskeugdADtBsi_12pingora_core.exit ] ; 2 uses
  %i.y = icmp ult i8 %.sroa.48.0.extract.trunc, 8
  br i1 %i.y, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.z = lshr i8 %.sroa.48.0.extract.trunc, 3
  %i.aa = add nuw nsw i8 %i.z, 15
  %2 = trunc i32 %.sroa.48.0.extract.shift to i16
  %3 = and i16 %2, 7
  %i.ab = and i8 %i.aa, 15
  %i.ac = zext nneg i8 %i.ab to i16               ; 2 uses
  %i.ad = shl i16 %3, %i.ac
  %i.ae = shl nuw i16 1, %i.ac
  %i.af = lshr i16 %i.ad, 3
  %i.ag = or i16 %i.af, %i.ae
  %i.ah = zext i16 %i.ag to i64
  %i.ai = shl nuw nsw i64 %i.ah, 16
  %i.aj = or disjoint i64 %i.ai, %.sroa.03.0
  br label %bb.l

bb.l:                                             ; preds = %bb.j, %bb.k
  %.sroa.04.0 = phi i64 [ %i.aj, %bb.k ], [ %.sroa.03.0, %bb.j ]
  %i.ak = icmp ult i8 %.sroa.59.0.extract.trunc, 8
  br i1 %i.ak, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.al = lshr i8 %.sroa.59.0.extract.trunc, 3
  %i.am = add nuw nsw i8 %i.al, 15
  %4 = trunc nuw i32 %.sroa.59.0.extract.shift to i16
  %5 = and i16 %4, 7
  %i.an = and i8 %i.am, 15
  %i.ao = zext nneg i8 %i.an to i16               ; 2 uses
  %i.ap = shl i16 %5, %i.ao
  %i.aq = shl nuw i16 1, %i.ao
  %i.ar = lshr i16 %i.ap, 3
  %i.as = or i16 %i.ar, %i.aq
  %i.at = zext i16 %i.as to i64
  %i.au = shl nuw nsw i64 %i.at, 32
  br label %bb.n

bb.n:                                             ; preds = %bb.l, %bb.m
  %.sroa.05.0 = phi i64 [ %i.au, %bb.m ], [ 0, %bb.l ] ; 2 uses
  %i.av = icmp ult i8 %i.l, 8
  br i1 %i.av, label %bb.p, label %bb.o

bb.o:                                             ; preds = %bb.n
  %sum.shift = lshr i32 %.sroa.4.0.insert.ext.i, 3
  %6 = trunc nuw nsw i32 %sum.shift to i16
  %7 = add nuw nsw i16 %6, 15
  %i.aw = and i8 %i.l, 7
  %i.ax = zext nneg i8 %i.aw to i16
  %8 = and i16 %7, 15                             ; 2 uses
  %i.ay = shl i16 %i.ax, %8
  %i.az = shl nuw i16 1, %8
  %i.ba = lshr i16 %i.ay, 3
  %i.bb = or i16 %i.ba, %i.az
  %i.bc = zext i16 %i.bb to i64
  %i.bd = shl nuw i64 %i.bc, 48
  %i.be = or i64 %.sroa.05.0, %i.bd
  br label %bb.p

bb.p:                                             ; preds = %bb.n, %bb.o
  %.sroa.06.0 = phi i64 [ %i.be, %bb.o ], [ %.sroa.05.0, %bb.n ]
  %.sroa.0.0.insert.insert = or i64 %.sroa.04.0, %.sroa.06.0
  ret i64 %.sroa.0.0.insert.insert
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RNvMs4_NtNtCs2awuzAz5vY4_5tokio4sync9broadcastINtB5_6SharedNtNtCskeugdADtBsi_12pingora_core6server14ExecutionPhaseE9notify_rxBZ_(ptr noundef nonnull align 8 %0, ptr noundef nonnull align 8 %1, i1 noundef zeroext %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 5 uses
  %i.b = alloca [520 x i8], align 8               ; 8 uses
  %i.c = alloca [24 x i8], align 8                ; 8 uses
  %i.d = alloca [40 x i8], align 8                ; 9 uses
  %i.e = zext i1 %2 to i8                         ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  store ptr null, ptr %i.d, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(17) %.sroa.5.0..sroa_idx, i8 0, i64 17, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %i.g = load ptr, ptr %i.f, align 8, !noundef !4
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.i = load ptr, ptr %i.h, align 8, !noundef !4
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.f, i8 0, i64 16, i1 false)
  %i.j = invoke noundef nonnull ptr @_RNvMsa_NtNtCs2awuzAz5vY4_5tokio4util11linked_listINtB5_10LinkedListNtNtNtB9_4sync9broadcast6WaiterE12into_guardedCskeugdADtBsi_12pingora_core(ptr noundef %i.g, ptr noundef %i.i, ptr noundef nonnull %i.d)
          to label %bb.e unwind label %bb.d

bb.b:                                             ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCs2awuzAz5vY4_5tokio4util9wake_list8WakeListECskeugdADtBsi_12pingora_core.exit, %bb.d
  %.sroa.6.0 = phi i8 [ %.sroa.6.1, %bb.d ], [ %.sroa.6.278, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCs2awuzAz5vY4_5tokio4util9wake_list8WakeListECskeugdADtBsi_12pingora_core.exit ]
  %.sroa.0.0 = phi ptr [ %.sroa.0.1, %bb.d ], [ %.sroa.0.2, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCs2awuzAz5vY4_5tokio4util9wake_list8WakeListECskeugdADtBsi_12pingora_core.exit ]
  %.pn.pn = phi { ptr, i32 } [ %i.o, %bb.d ], [ %.pn, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCs2awuzAz5vY4_5tokio4util9wake_list8WakeListECskeugdADtBsi_12pingora_core.exit ]
  %.sroa.010.0 = phi i1 [ %.sroa.010.1, %bb.d ], [ %.sroa.010.4, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCs2awuzAz5vY4_5tokio4util9wake_list8WakeListECskeugdADtBsi_12pingora_core.exit ]
  %.val25 = load ptr, ptr %i.d, align 8, !align !7, !noundef !4 ; 2 uses
  %i.k = icmp eq ptr %.val25, null
  br i1 %i.k, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCs2awuzAz5vY4_5tokio4sync9broadcast6WaiterECskeugdADtBsi_12pingora_core.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.l = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %.val26 = load ptr, ptr %i.l, align 8
  %i.m = getelementptr inbounds nuw i8, ptr %.val25, i64 24
  %i.n = load ptr, ptr %i.m, align 8, !nonnull !4, !noundef !4
  invoke void %i.n(ptr noundef %.val26)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCs2awuzAz5vY4_5tokio4sync9broadcast6WaiterECskeugdADtBsi_12pingora_core.exit unwind label %bb.ag, !inline_history !997

bb.d:                                             ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCs2awuzAz5vY4_5tokio4util9wake_list8WakeListECskeugdADtBsi_12pingora_core.exit35, %bb.a
  %.sroa.6.1 = phi i8 [ %.sroa.6.2, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCs2awuzAz5vY4_5tokio4util9wake_list8WakeListECskeugdADtBsi_12pingora_core.exit35 ], [ %i.e, %bb.a ]
  %.sroa.0.1 = phi ptr [ %.sroa.0.2, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCs2awuzAz5vY4_5tokio4util9wake_list8WakeListECskeugdADtBsi_12pingora_core.exit35 ], [ %1, %bb.a ]
  %.sroa.010.1 = phi i1 [ false, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCs2awuzAz5vY4_5tokio4util9wake_list8WakeListECskeugdADtBsi_12pingora_core.exit35 ], [ true, %bb.a ]
  %i.o = landingpad { ptr, i32 }
          cleanup
  br label %bb.b

bb.e:                                             ; preds = %bb.a
  store ptr %i.j, ptr %i.c, align 8
  %i.p = getelementptr inbounds nuw i8, ptr %i.c, i64 16 ; 2 uses
  store i8 0, ptr %i.p, align 8
  %i.q = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store ptr %0, ptr %i.q, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.r = getelementptr inbounds nuw i8, ptr %i.b, i64 512 ; 5 uses
  store i64 0, ptr %i.r, align 8
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.t = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.u = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  br label %bb.f

thread-pre-split:                                 ; preds = %bb.o, %bb.af
  %.sroa.6.2.ph = phi i8 [ %i.ah, %bb.o ], [ %.sroa.6.2, %bb.af ]
  %.sroa.0.2.ph = phi ptr [ %i.ag, %bb.o ], [ %.sroa.0.2, %bb.af ]
  %.pr = load i64, ptr %i.r, align 8
  br label %bb.f

bb.f:                                             ; preds = %thread-pre-split, %bb.e
  %i.v = phi i64 [ %.pr, %thread-pre-split ], [ 0, %bb.e ]
  %.sroa.6.2 = phi i8 [ %.sroa.6.2.ph, %thread-pre-split ], [ %i.e, %bb.e ] ; 13 uses
  %.sroa.0.2 = phi ptr [ %.sroa.0.2.ph, %thread-pre-split ], [ %1, %bb.e ] ; 11 uses
  %i.w = icmp ult i64 %i.v, 32                    ; 2 uses
  br i1 %i.w, label %bb.l, label %bb.g

bb.g:                                             ; preds = %bb.f
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.2) ]
  %i.x = getelementptr inbounds nuw i8, ptr %.sroa.0.2, i64 4
  %i.y = trunc nuw i8 %.sroa.6.2 to i1
  br i1 %i.y, label %_RNvMNtNtCsG258MDvU3F_3std4sync6poisonNtB2_4Flag4done.exit.i.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.z = load atomic i64, ptr @_RNvNtNtCsG258MDvU3F_3std9panicking11panic_count18GLOBAL_PANIC_COUNT monotonic, align 8
  %i.aa = and i64 %i.z, 9223372036854775807
  %i.ab = icmp eq i64 %i.aa, 0
  br i1 %i.ab, label %_RNvMNtNtCsG258MDvU3F_3std4sync6poisonNtB2_4Flag4done.exit.i.i, label %bb.i, !prof !19

bb.i:                                             ; preds = %bb.h
  %i.ac = invoke noundef zeroext i1 @_RNvNtNtCsG258MDvU3F_3std9panicking11panic_count17is_zero_slow_path() #33
          to label %.noexc27 unwind label %.loopexit

.noexc27:                                         ; preds = %bb.i
  br i1 %i.ac, label %_RNvMNtNtCsG258MDvU3F_3std4sync6poisonNtB2_4Flag4done.exit.i.i, label %bb.j

bb.j:                                             ; preds = %.noexc27
  store atomic i8 1, ptr %i.x monotonic, align 4
  br label %_RNvMNtNtCsG258MDvU3F_3std4sync6poisonNtB2_4Flag4done.exit.i.i

_RNvMNtNtCsG258MDvU3F_3std4sync6poisonNtB2_4Flag4done.exit.i.i: ; preds = %bb.j, %.noexc27, %bb.h, %bb.g
  %i.ad = atomicrmw xchg ptr %.sroa.0.2, i32 0 release, align 4
  %i.ae = icmp eq i32 %i.ad, 2
  br i1 %i.ae, label %bb.k, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsG258MDvU3F_3std4sync6poison5mutex10MutexGuardNtNtNtCs2awuzAz5vY4_5tokio4sync9broadcast4TailEECskeugdADtBsi_12pingora_core.exit, !prof !6

bb.k:                                             ; preds = %_RNvMNtNtCsG258MDvU3F_3std4sync6poisonNtB2_4Flag4done.exit.i.i
  invoke void @_RNvMNtNtNtNtCsG258MDvU3F_3std3sys4sync5mutex5futexNtB2_5Mutex4wake(ptr noundef nonnull align 4 %.sroa.0.2)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsG258MDvU3F_3std4sync6poison5mutex10MutexGuardNtNtNtCs2awuzAz5vY4_5tokio4sync9broadcast4TailEECskeugdADtBsi_12pingora_core.exit unwind label %.loopexit

bb.l:                                             ; preds = %bb.f
  %i.af = invoke noundef ptr @_RNvMsb_NtNtCs2awuzAz5vY4_5tokio4util11linked_listINtB5_17GuardedLinkedListNtNtNtB9_4sync9broadcast6WaiterE8pop_backCskeugdADtBsi_12pingora_core(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.c)
          to label %bb.p unwind label %.loopexit  ; 5 uses

.loopexit:                                        ; preds = %bb.l, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsG258MDvU3F_3std4sync6poison5mutex10MutexGuardNtNtNtCs2awuzAz5vY4_5tokio4sync9broadcast4TailEECskeugdADtBsi_12pingora_core.exit, %bb.n, %bb.i, %bb.k
  %.sroa.6.2.lcssa = phi i8 [ %.sroa.6.2, %bb.l ], [ %.sroa.6.2, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsG258MDvU3F_3std4sync6poison5mutex10MutexGuardNtNtNtCs2awuzAz5vY4_5tokio4sync9broadcast4TailEECskeugdADtBsi_12pingora_core.exit ], [ %.sroa.6.2, %bb.n ], [ 0, %bb.i ], [ %.sroa.6.2, %bb.k ]
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %bb.m

.loopexit.split-lp:                               ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsG258MDvU3F_3std4sync6poison5mutex10MutexGuardNtNtNtCs2awuzAz5vY4_5tokio4sync9broadcast4TailEECskeugdADtBsi_12pingora_core.exit33, %bb.ab, %bb.ae, %bb.s, %bb.u
  %.sroa.6.280 = phi i8 [ %.sroa.6.2, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsG258MDvU3F_3std4sync6poison5mutex10MutexGuardNtNtNtCs2awuzAz5vY4_5tokio4sync9broadcast4TailEECskeugdADtBsi_12pingora_core.exit33 ], [ %.sroa.6.2, %bb.ab ], [ %.sroa.6.2, %bb.ae ], [ 0, %bb.s ], [ %.sroa.6.2, %bb.u ]
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.m

bb.m:                                             ; preds = %.loopexit.split-lp, %.loopexit
  %.sroa.6.279 = phi i8 [ %.sroa.6.2.lcssa, %.loopexit ], [ %.sroa.6.280, %.loopexit.split-lp ]
  %.sroa.010.3 = phi i1 [ %i.w, %.loopexit ], [ %.not.not.not.not.not, %.loopexit.split-lp ]
  %lpad.phi = phi { ptr, i32 } [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  invoke void @_RNvXs_NtNtCs2awuzAz5vY4_5tokio4util9wake_listNtB4_8WakeListNtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(520) %i.b)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCs2awuzAz5vY4_5tokio4util9wake_list8WakeListECskeugdADtBsi_12pingora_core.exit unwind label %bb.ag

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsG258MDvU3F_3std4sync6poison5mutex10MutexGuardNtNtNtCs2awuzAz5vY4_5tokio4sync9broadcast4TailEECskeugdADtBsi_12pingora_core.exit: ; preds = %_RNvMNtNtCsG258MDvU3F_3std4sync6poisonNtB2_4Flag4done.exit.i.i, %bb.k
  invoke void @_RNvMNtNtCs2awuzAz5vY4_5tokio4util9wake_listNtB2_8WakeList8wake_all(ptr noalias nofree noundef nonnull align 8 dereferenceable(520) %i.b)
          to label %bb.n unwind label %.loopexit

bb.n:                                             ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsG258MDvU3F_3std4sync6poison5mutex10MutexGuardNtNtNtCs2awuzAz5vY4_5tokio4sync9broadcast4TailEECskeugdADtBsi_12pingora_core.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  invoke void @_RNvMs5_NtNtNtCsG258MDvU3F_3std4sync6poison5mutexINtB5_5MutexNtNtNtCs2awuzAz5vY4_5tokio4sync9broadcast4TailE4lockCskeugdADtBsi_12pingora_core(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.a, ptr noundef nonnull align 8 %i.s)
          to label %bb.o unwind label %.loopexit

bb.o:                                             ; preds = %bb.n
  %i.ag = load ptr, ptr %i.t, align 8, !nonnull !4, !align !7
  %i.ah = load i8, ptr %i.u, align 8, !range !18
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %thread-pre-split

bb.p:                                             ; preds = %bb.l
  %.not.not.not.not.not = icmp ne ptr %i.af, null ; 2 uses
  br i1 %.not.not.not.not.not, label %.critedge, label %bb.q

bb.q:                                             ; preds = %bb.p
  store i8 1, ptr %i.p, align 8
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.2) ]
  %i.ai = getelementptr inbounds nuw i8, ptr %.sroa.0.2, i64 4
  %i.aj = trunc nuw i8 %.sroa.6.2 to i1
  br i1 %i.aj, label %_RNvMNtNtCsG258MDvU3F_3std4sync6poisonNtB2_4Flag4done.exit.i.i30, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.ak = load atomic i64, ptr @_RNvNtNtCsG258MDvU3F_3std9panicking11panic_count18GLOBAL_PANIC_COUNT monotonic, align 8
  %i.al = and i64 %i.ak, 9223372036854775807
  %i.am = icmp eq i64 %i.al, 0
  br i1 %i.am, label %_RNvMNtNtCsG258MDvU3F_3std4sync6poisonNtB2_4Flag4done.exit.i.i30, label %bb.s, !prof !19

bb.s:                                             ; preds = %bb.r
  %i.an = invoke noundef zeroext i1 @_RNvNtNtCsG258MDvU3F_3std9panicking11panic_count17is_zero_slow_path() #33
          to label %.noexc31 unwind label %.loopexit.split-lp

.noexc31:                                         ; preds = %bb.s
  br i1 %i.an, label %_RNvMNtNtCsG258MDvU3F_3std4sync6poisonNtB2_4Flag4done.exit.i.i30, label %bb.t

bb.t:                                             ; preds = %.noexc31
  store atomic i8 1, ptr %i.ai monotonic, align 1
  br label %_RNvMNtNtCsG258MDvU3F_3std4sync6poisonNtB2_4Flag4done.exit.i.i30

_RNvMNtNtCsG258MDvU3F_3std4sync6poisonNtB2_4Flag4done.exit.i.i30: ; preds = %bb.t, %.noexc31, %bb.r, %bb.q
  %i.ao = atomicrmw xchg ptr %.sroa.0.2, i32 0 release, align 4
  %i.ap = icmp eq i32 %i.ao, 2
  br i1 %i.ap, label %bb.u, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsG258MDvU3F_3std4sync6poison5mutex10MutexGuardNtNtNtCs2awuzAz5vY4_5tokio4sync9broadcast4TailEECskeugdADtBsi_12pingora_core.exit33, !prof !6

bb.u:                                             ; preds = %_RNvMNtNtCsG258MDvU3F_3std4sync6poisonNtB2_4Flag4done.exit.i.i30
  invoke void @_RNvMNtNtNtNtCsG258MDvU3F_3std3sys4sync5mutex5futexNtB2_5Mutex4wake(ptr noundef nonnull align 4 %.sroa.0.2)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsG258MDvU3F_3std4sync6poison5mutex10MutexGuardNtNtNtCs2awuzAz5vY4_5tokio4sync9broadcast4TailEECskeugdADtBsi_12pingora_core.exit33 unwind label %.loopexit.split-lp

.critedge:                                        ; preds = %bb.p
  %i.aq = load <2 x ptr>, ptr %i.af, align 8
  %i.ar = load ptr, ptr %i.af, align 8, !align !7, !noundef !4
  store ptr null, ptr %i.af, align 8
  %.not13 = icmp eq ptr %i.ar, null
  br i1 %.not13, label %bb.ad, label %bb.z

end_hunk_1
