Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/meilisearch-rs/original/meilitool-3c21fadc9a6b74a0.meilitool.c082eaae8d87b010-cgu.0?download=true
inline.NumInlined: 19732
inline.NumDeleted: 8931
loop-unroll.NumCompletelyUnrolled: 99
loop-unroll.NumRuntimeUnrolled: 159
loop-unroll.NumUnrolled: 258
loop-unroll.NumUnrolledNotLatch: 3
begin_hunk_0_@"_ZN88_$LT$meilitool..upgrade..v1_9..LegacyDateTime$u20$as$u20$serde_core..de..Deserialize$GT$11deserialize17h709b2cb294eff23fE":bb.a
  %i.hd = trunc nuw nsw i64 %i.hc to i32          ; 3 uses
  %i.he = trunc i64 %i.hb to i32
  %i.hf = icmp ugt i32 %i.he, 42920275
  %i.hg = and i32 %i.hd, 3
  %i.hh = icmp eq i32 %i.hg, 0
  %.sroa.0.0.i.i.i.i.i.i = or i1 %i.hf, %i.hh     ; 2 uses
  %i.hi = lshr i32 %i.hd, 2
  %i.hj = add nuw nsw i32 %i.gy, %i.hd
  %i.hk = sub nuw nsw i32 %i.hj, %i.hi
  %i.hl = zext nneg i32 %i.hk to i64
  %i.hm = mul nuw nsw i64 %i.hl, 3010298776       ; 2 uses
  %i.hn = lshr i64 %i.hm, 8
  %i.ho = lshr i64 %i.hm, 40
  %i.hp = trunc nuw nsw i64 %i.ho to i32          ; 2 uses
  %i.hq = and i64 %i.hn, 4294967295
  %i.hr = mul nuw nsw i64 %i.hq, 1461
  %i.hs = lshr i64 %i.hr, 34
  %i.ht = trunc nuw nsw i64 %i.hs to i32
  %i.hu = zext i1 %.sroa.0.0.i.i.i.i.i.i to i32
  %i.hv = add nuw nsw i32 %i.ht, %i.hu
  %i.hw = and i32 %i.hp, 3
  %i.hx = icmp eq i32 %i.hw, 0
  %i.hy = and i1 %.sroa.0.0.i.i.i.i.i.i, %i.hx
  %i.hz = shl nuw i32 %i.hp, 10
  %i.ia = add nsw i32 %i.hz, 1858256896
  %i.ib = select i1 %i.hy, i32 512, i32 0
  %i.ic = or disjoint i32 %i.ib, %i.ia
  %i.id = or i32 %i.ic, %i.hv                     ; 2 uses
  %i.ie = icmp ne i32 %i.id, 0
  call void @llvm.assume(i1 %i.ie), !noalias !73916
  %i.if = icmp slt i64 %i.gt, 0
  %i.ig = add nsw i64 %i.gt, 86400
  %spec.select.i.i.i.i.i.i = select i1 %i.if, i64 %i.ig, i64 %i.gt ; 2 uses
  %.lhs.trunc.i.i.i.i.i = trunc nuw nsw i64 %spec.select.i.i.i.i.i.i to i32 ; 3 uses
  %i.ih = udiv i32 %.lhs.trunc.i.i.i.i.i, 3600
  %i.ii = urem i32 %.lhs.trunc.i.i.i.i.i, 3600
  %.lhs.trunc20.i.i.i.i.i = trunc nuw nsw i32 %i.ii to i16
  %i.ij = udiv i16 %.lhs.trunc20.i.i.i.i.i, 60
  %i.ik = urem i32 %.lhs.trunc.i.i.i.i.i, 60
  %i.il = icmp ult i64 %spec.select.i.i.i.i.i.i, 86400
  call void @llvm.assume(i1 %i.il), !noalias !73916
  %i.im = icmp slt i128 %.decomposed, 0
  %i.in = add nsw i128 %.decomposed, 1000000000
  %spec.select.i.i.i.i.i = select i1 %i.im, i128 %i.in, i128 %.decomposed
  %i.io = trunc nuw nsw i128 %spec.select.i.i.i.i.i to i32 ; 2 uses
  %i.ip = icmp samesign ult i32 %i.io, 1000000000
  call void @llvm.assume(i1 %i.ip), !noalias !73916
  %i.iq = shl nuw nsw i32 %i.ih, 16
  %i.ir = shl nuw nsw i16 %i.ij, 8
  %i.is = zext nneg i16 %i.ir to i32
  %.sroa.3.0.insert.insert.i.i.i155.i.i = or disjoint i32 %i.iq, %i.is
  %.sroa.2.0.insert.insert.i.i.i156.i.i = or disjoint i32 %.sroa.3.0.insert.insert.i.i.i155.i.i, %i.ik
  %i.it = icmp eq i32 %.sroa.9.0.copyload14.i.i.i, -1
  %.sroa.6255.0.i.i.i = zext i32 %i.id to i64
  %.sroa.01.sroa.0.0.extract.trunc.i.i = select i1 %i.it, i32 %i.io, i32 %.sroa.9.0.copyload14.i.i.i
  %i.iu = zext nneg i32 %.sroa.2.0.insert.insert.i.i.i156.i.i to i64
  br label %_ZN4time7parsing8parsable6sealed6Sealed22parse_offset_date_time17h5b8e09ac50354e9bE.exit.thread.i

bb.bp:                                            ; preds = %bb.bm
  %cond.i.i.i = icmp eq i8 %.sroa.22.0.copyload66.i.i.i, -1
  br i1 %cond.i.i.i, label %bb.br, label %bb.bq

bb.bq:                                            ; preds = %bb.bp
  %i.iv = icmp ult i8 %.sroa.22.0.copyload66.i.i.i, 61
  call void @llvm.assume(i1 %i.iv), !noalias !73916
  %i.iw = icmp eq i8 %.sroa.22.0.copyload66.i.i.i, 60
  br i1 %i.iw, label %bb.dd, label %bb.br

bb.br:                                            ; preds = %bb.dd, %bb.bq, %bb.bp, %bb.bm
  %.sroa.1957.0.i.i = phi i8 [ -1, %bb.bp ], [ 59, %bb.dd ], [ %.sroa.22.0.copyload66.i.i.i, %bb.bq ], [ %.sroa.22.0.copyload66.i.i.i, %bb.bm ] ; 6 uses
  %.sroa.4.0.i.i = phi i32 [ %.sroa.9.0.copyload14.i.i.i, %bb.bp ], [ 999999999, %bb.dd ], [ %.sroa.9.0.copyload14.i.i.i, %bb.bq ], [ %.sroa.9.0.copyload14.i.i.i, %bb.bm ] ; 4 uses
  %.sroa.023.0.i.i.i = phi i1 [ false, %bb.bp ], [ true, %bb.dd ], [ false, %bb.bq ], [ false, %bb.bm ]
  %.not294.i.i.i.i = icmp ne i32 %.sroa.7.0.copyload6.i.i.i, -2147483648 ; 2 uses
  br i1 %.not294.i.i.i.i, label %bb.bs, label %.thread.i.i.i.i

bb.bs:                                            ; preds = %bb.br
  %i.ix = icmp sgt i32 %.sroa.7.0.copyload6.i.i.i, -10000
  call void @llvm.assume(i1 %i.ix), !noalias !73916
  %i.iy = icmp slt i32 %.sroa.7.0.copyload6.i.i.i, 10000
  call void @llvm.assume(i1 %i.iy), !noalias !73916
  br label %.thread.i.i.i.i

.thread.i.i.i.i:                                  ; preds = %bb.bs, %bb.br
  %.not295.i.i.i.i = icmp eq i16 %.sroa.10.0.copyload18.i.i.i, -32768
  %spec.select.i.i.i = select i1 %.not295.i.i.i.i, i8 2, i8 %.sroa.30.0.copyload98.i.i.i ; 2 uses
  %.not.i.i.i.i = icmp eq i8 %.sroa.13.0.copyload30.i.i.i, -1
  br i1 %.not.i.i.i.i, label %.thread391.i.i.i.i, label %bb.bt

bb.bt:                                            ; preds = %.thread.i.i.i.i
  %i.iz = icmp ult i8 %.sroa.13.0.copyload30.i.i.i, 100
  call void @llvm.assume(i1 %i.iz), !noalias !73916
  %.not296.i.i.i.i = icmp eq i8 %spec.select.i.i.i, 2
  %or.cond325.i.i.i.i = or i1 %.not294.i.i.i.i, %.not296.i.i.i.i
  br i1 %or.cond325.i.i.i.i, label %.thread391.i.i.i.i, label %bb.bu

bb.bu:                                            ; preds = %bb.bt
  %i.ja = trunc nuw i8 %spec.select.i.i.i to i1
  %i.jb = sext i16 %.sroa.10.0.copyload18.i.i.i to i32
  %i.jc = mul nsw i32 %i.jb, 100
  %i.jd = zext nneg i8 %.sroa.13.0.copyload30.i.i.i to i32 ; 2 uses
  %i.je = sub nsw i32 0, %i.jd
  %.sroa.07.0.p.i.i.i.i = select i1 %i.ja, i32 %i.je, i32 %i.jd
  %.sroa.07.0.i.i.i.i = add nsw i32 %.sroa.07.0.p.i.i.i.i, %i.jc ; 2 uses
  %i.jf = add nsw i32 %.sroa.07.0.i.i.i.i, 9999
  %or.cond.i.i.i.i2 = icmp ult i32 %i.jf, 19999
  %spec.select.i.i.i.i = select i1 %or.cond.i.i.i.i2, i32 %.sroa.07.0.i.i.i.i, i32 -2147483648
  br label %.thread391.i.i.i.i

.thread391.i.i.i.i:                               ; preds = %bb.bu, %bb.bt, %.thread.i.i.i.i
  %i.jg = phi i32 [ %.sroa.7.0.copyload6.i.i.i, %.thread.i.i.i.i ], [ %.sroa.7.0.copyload6.i.i.i, %bb.bt ], [ %spec.select.i.i.i.i, %bb.bu ] ; 18 uses
  %.not298.i.i.i.i = icmp ne i32 %.sroa.8.0.copyload10.i.i.i, -2147483648 ; 2 uses
  br i1 %.not298.i.i.i.i, label %bb.bv, label %.thread397.i.i.i.i

bb.bv:                                            ; preds = %.thread391.i.i.i.i
  %i.jh = icmp sgt i32 %.sroa.8.0.copyload10.i.i.i, -10000
  call void @llvm.assume(i1 %i.jh), !noalias !73916
  %i.ji = icmp slt i32 %.sroa.8.0.copyload10.i.i.i, 10000
  call void @llvm.assume(i1 %i.ji), !noalias !73916
  br label %.thread397.i.i.i.i

.thread397.i.i.i.i:                               ; preds = %bb.bv, %.thread391.i.i.i.i
  %.not299.i.i.i.i = icmp eq i16 %.sroa.11.0.copyload22.i.i.i, -32768
  %spec.select368.i.i.i = select i1 %.not299.i.i.i.i, i8 2, i8 %.sroa.31.0.copyload102.i.i.i ; 2 uses
  %.not297.i.i.i.i = icmp eq i8 %.sroa.14.0.copyload34.i.i.i, -1
  br i1 %.not297.i.i.i.i, label %.thread398.i.i.i.i, label %bb.bw

bb.bw:                                            ; preds = %.thread397.i.i.i.i
  %i.jj = icmp ult i8 %.sroa.14.0.copyload34.i.i.i, 100
  call void @llvm.assume(i1 %i.jj), !noalias !73916
  %.not300.i.i.i.i = icmp eq i8 %spec.select368.i.i.i, 2
  %or.cond328.i.i.i.i = or i1 %.not298.i.i.i.i, %.not300.i.i.i.i
  br i1 %or.cond328.i.i.i.i, label %.thread398.i.i.i.i, label %bb.bx

bb.bx:                                            ; preds = %bb.bw
  %i.jk = trunc nuw i8 %spec.select368.i.i.i to i1
  %i.jl = sext i16 %.sroa.11.0.copyload22.i.i.i to i32
  %i.jm = mul nsw i32 %i.jl, 100
  %i.jn = zext nneg i8 %.sroa.14.0.copyload34.i.i.i to i32 ; 2 uses
  %i.jo = sub nsw i32 0, %i.jn
  %.sroa.019.0.p.i.i.i.i = select i1 %i.jk, i32 %i.jo, i32 %i.jn
  %.sroa.019.0.i.i.i.i = add nsw i32 %.sroa.019.0.p.i.i.i.i, %i.jm ; 2 uses
  %i.jp = add nsw i32 %.sroa.019.0.i.i.i.i, 9999
  %or.cond1.i.i.i.i = icmp ult i32 %i.jp, 19999
  %spec.select339.i.i.i.i = select i1 %or.cond1.i.i.i.i, i32 %.sroa.019.0.i.i.i.i, i32 -2147483648
  br label %.thread398.i.i.i.i

.thread398.i.i.i.i:                               ; preds = %bb.bx, %bb.bw, %.thread397.i.i.i.i
  %i.jq = phi i32 [ %.sroa.8.0.copyload10.i.i.i, %.thread397.i.i.i.i ], [ %.sroa.8.0.copyload10.i.i.i, %bb.bw ], [ %spec.select339.i.i.i.i, %bb.bx ] ; 4 uses
  %.not301.i.i.i.i = icmp eq i32 %i.jg, -2147483648 ; 6 uses
  br i1 %.not301.i.i.i.i, label %.critedge.i.i.i.i, label %.thread511.i.i.i.i

.thread511.i.i.i.i:                               ; preds = %.thread398.i.i.i.i
  %i.jr = icmp sgt i32 %i.jg, -10000
  call void @llvm.assume(i1 %i.jr), !noalias !73916
  %i.js = icmp slt i32 %i.jg, 10000
  call void @llvm.assume(i1 %i.js), !noalias !73916
  %i.jt = icmp eq i16 %.sroa.12.0.copyload26.i.i.i, 0
  br i1 %i.jt, label %.critedge.i.i.i.i, label %bb.by, !prof !27

bb.by:                                            ; preds = %.thread511.i.i.i.i
  %i.ju = icmp ult i16 %.sroa.12.0.copyload26.i.i.i, 367
  call void @llvm.assume(i1 %i.ju), !noalias !73916
  %.sroa.010.0.i.i.i.i.i = call i32 @llvm.abs.i32(i32 %i.jg, i1 true)
  %i.jv = mul i32 %.sroa.010.0.i.i.i.i.i, 33555415
  %i.jw = and i32 %i.jv, 100695055
  %i.jx = icmp samesign ult i32 %i.jw, 31745      ; 2 uses
  %or.cond1.i.i.i.i.i = icmp samesign ult i16 %.sroa.12.0.copyload26.i.i.i, 366
  br i1 %or.cond1.i.i.i.i.i, label %bb.cb, label %bb.bz, !prof !60

bb.bz:                                            ; preds = %bb.by
  br i1 %i.jx, label %bb.cb, label %bb.ca

bb.ca:                                            ; preds = %bb.bz
  %.sroa.0191.sroa.15.0.extract.shift.i.i.i = lshr i64 ptrtoint (ptr @1154 to i64), 32
  br label %_ZN4time7parsing8parsable6sealed6Sealed22parse_offset_date_time17h5b8e09ac50354e9bE.exit.thread25.i

bb.cb:                                            ; preds = %bb.bz, %bb.by
  %i.jy = shl nsw i32 %i.jg, 10
  %i.jz = select i1 %i.jx, i32 512, i32 0
  %i.ka = or disjoint i32 %i.jz, %i.jy
  %i.kb = zext nneg i16 %.sroa.12.0.copyload26.i.i.i to i32
  %i.kc = or disjoint i32 %i.ka, %i.kb
  br label %bb.de

.critedge.i.i.i.i:                                ; preds = %.thread398.i.i.i.i, %.thread511.i.i.i.i
  %i.kd = icmp eq i8 %.sroa.18.0.copyload50.i.i.i, 0
  br i1 %i.kd, label %.thread423.i.i.i.i, label %bb.cc, !prof !27

bb.cc:                                            ; preds = %.critedge.i.i.i.i
  %i.ke = icmp ult i8 %.sroa.18.0.copyload50.i.i.i, 32
  call void @llvm.assume(i1 %i.ke), !noalias !73916
  %.not304.i.i.i.i = icmp eq i8 %.sroa.26.0.copyload82.i.i.i, 0
  %or.cond331.i.i.i.i = or i1 %.not304.i.i.i.i, %.not301.i.i.i.i
  br i1 %or.cond331.i.i.i.i, label %.thread423.i.i.i.i, label %bb.cd

.thread423.i.i.i.i:                               ; preds = %bb.cc, %.critedge.i.i.i.i
  %.not306.i.i.i.i = icmp eq i32 %i.jq, -2147483648 ; 2 uses
  br i1 %.not306.i.i.i.i, label %bb.cj, label %bb.ci

bb.cd:                                            ; preds = %bb.cc
  %or.cond.i340.i.i.i.i = icmp slt i32 %i.jg, -9999
  br i1 %or.cond.i340.i.i.i.i, label %bb.cg, label %bb.ce, !prof !66

bb.ce:                                            ; preds = %bb.cd
  %.sroa.012.0.i.i.i.i.i = call i32 @llvm.abs.i32(i32 %i.jg, i1 true)
  %i.kf = mul i32 %.sroa.012.0.i.i.i.i.i, 33555415
  %i.kg = and i32 %i.kf, 100695055
  %i.kh = icmp samesign ult i32 %i.kg, 31745      ; 3 uses
  %or.cond1.i341.i.i.i.i = icmp samesign ult i8 %.sroa.18.0.copyload50.i.i.i, 29
  br i1 %or.cond1.i341.i.i.i.i, label %bb.ch, label %bb.cf, !prof !60

bb.cf:                                            ; preds = %bb.ce
  %i.ki = icmp eq i8 %.sroa.26.0.copyload82.i.i.i, 2
  %i.kj = lshr i8 %.sroa.26.0.copyload82.i.i.i, 3
  %i.kk = xor i8 %i.kj, %.sroa.26.0.copyload82.i.i.i
  %i.kl = or i8 %i.kk, 30
  %..i.i.i.i.i = select i1 %i.kh, i8 29, i8 28
  %.sroa.05.0.i.i.i.i.i = select i1 %i.ki, i8 %..i.i.i.i.i, i8 %i.kl
  %.not.i.i.i26.i.i = icmp samesign ugt i8 %.sroa.18.0.copyload50.i.i.i, %.sroa.05.0.i.i.i.i.i
  br i1 %.not.i.i.i26.i.i, label %bb.cg, label %bb.ch

bb.cg:                                            ; preds = %bb.cf, %bb.cd
  %.sroa.0370.0.ph.i.i.i.i = phi ptr [ @1155, %bb.cf ], [ @1129, %bb.cd ]
  %.sroa.8371.0.ph.i.i.i.i = phi i64 [ 3, %bb.cf ], [ 4, %bb.cd ]
  %.sink.i342.ph.i.i.i.i = phi i8 [ 1, %bb.cf ], [ 0, %bb.cd ]
  %i.km = ptrtoint ptr %.sroa.0370.0.ph.i.i.i.i to i64 ; 2 uses
  %.sroa.0191.sroa.0.0.extract.trunc.i.i.i = trunc i64 %i.km to i32
  %.sroa.0191.sroa.15.0.extract.shift197.i.i.i = lshr i64 %i.km, 32
  br label %_ZN4time7parsing8parsable6sealed6Sealed22parse_offset_date_time17h5b8e09ac50354e9bE.exit.thread25.i

bb.ch:                                            ; preds = %bb.cf, %bb.ce
  %i.kn = zext nneg i8 %.sroa.26.0.copyload82.i.i.i to i64
  %.sroa.sel.i.i.i.i.i = select i1 %i.kh, ptr getelementptr inbounds nuw (i8, ptr @1156, i64 24), ptr @1156
  %i.ko = getelementptr [2 x i8], ptr %.sroa.sel.i.i.i.i.i, i64 %i.kn
  %i.kp = getelementptr i8, ptr %i.ko, i64 -2
  %i.kq = load i16, ptr %i.kp, align 2, !noalias !73978, !noundef !24
  %i.kr = zext nneg i8 %.sroa.18.0.copyload50.i.i.i to i16
  %i.ks = add i16 %i.kq, %i.kr
  %i.kt = shl nsw i32 %i.jg, 10
  %i.ku = select i1 %i.kh, i32 512, i32 0
  %i.kv = or disjoint i32 %i.ku, %i.kt
  %i.kw = zext i16 %i.ks to i32
  %i.kx = or i32 %i.kv, %i.kw                     ; 2 uses
  %i.ky = icmp ne i32 %i.kx, 0
  call void @llvm.assume(i1 %i.ky), !noalias !73916
  br label %bb.de

bb.ci:                                            ; preds = %.thread423.i.i.i.i
  %i.kz = icmp sgt i32 %i.jq, -10000
  call void @llvm.assume(i1 %i.kz), !noalias !73916
  %i.la = icmp slt i32 %i.jq, 10000
  call void @llvm.assume(i1 %i.la), !noalias !73916
  br label %bb.cj

bb.cj:                                            ; preds = %bb.ci, %.thread423.i.i.i.i
  %i.lb = icmp eq i8 %.sroa.17.0.copyload46.i.i.i, 0
  br i1 %i.lb, label %.thread444.i.i.i.i, label %bb.ck, !prof !27

.thread444.i.i.i.i:                               ; preds = %bb.cj
  %.not308448.i.i.i.i = icmp eq i8 %.sroa.27.0.copyload86.i.i.i, 7
  br label %bb.cl

bb.ck:                                            ; preds = %bb.cj
  %i.lc = icmp ult i8 %.sroa.17.0.copyload46.i.i.i, 54
  call void @llvm.assume(i1 %i.lc), !noalias !73916
  %.not308.i.i.i.i = icmp eq i8 %.sroa.27.0.copyload86.i.i.i, 7 ; 2 uses
  %or.cond334.i.i.i.i = or i1 %.not308.i.i.i.i, %.not306.i.i.i.i
  br i1 %or.cond334.i.i.i.i, label %bb.cl, label %bb.cm

bb.cl:                                            ; preds = %bb.ck, %.thread444.i.i.i.i
  %.not308450.i.i.i.i = phi i1 [ %.not308448.i.i.i.i, %.thread444.i.i.i.i ], [ %.not308.i.i.i.i, %bb.ck ] ; 2 uses
  br i1 %.not301.i.i.i.i, label %bb.cq, label %bb.cp

bb.cm:                                            ; preds = %bb.ck
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !73979
  call void @_ZN4time4date4Date18from_iso_week_date17h82d4ed19514e9fc5E(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.b, i32 noundef %i.jq, i8 noundef %.sroa.17.0.copyload46.i.i.i, i8 noundef %.sroa.27.0.copyload86.i.i.i), !noalias !73980
  %i.ld = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.le = load i8, ptr %i.ld, align 8, !range !41, !noalias !73979, !noundef !24 ; 2 uses
  %.not319.i.i.i.i = icmp eq i8 %i.le, 2
  %i.lf = load i32, ptr %i.b, align 8, !noalias !73979 ; 2 uses
  br i1 %.not319.i.i.i.i, label %bb.co, label %bb.cn

bb.cn:                                            ; preds = %bb.cm
  %.sroa.4183.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 4
  %.sroa.0191.sroa.15.4.copyload203.i.i.i = load i32, ptr %.sroa.4183.0..sroa_idx.i.i.i.i, align 4, !noalias !73981
  %.sroa.17.4..sroa.4183.0..sroa_idx.i.sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %.sroa.17.4.copyload193.i.i.i = load i64, ptr %.sroa.17.4..sroa.4183.0..sroa_idx.i.sroa_idx.i.i.i, align 8, !noalias !73981
  %.sroa.6185.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 17
  %.sroa.34.i.i.sroa.0.0.copyload.i = load i24, ptr %.sroa.6185.0..sroa_idx.i.i.i.i, align 1, !noalias !73977
  %.sroa.34.i.i.sroa.4.0..sroa.6185.0..sroa_idx.i.i.i.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 20
  %.sroa.34.i.i.sroa.4.0.copyload.i = load i16, ptr %.sroa.34.i.i.sroa.4.0..sroa.6185.0..sroa_idx.i.i.i.sroa_idx.i, align 4, !noalias !73977
  %.sroa.34.i.i.sroa.5.0..sroa.6185.0..sroa_idx.i.i.i.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 22
  %.sroa.34.i.i.sroa.5.0.copyload.i = load i16, ptr %.sroa.34.i.i.sroa.5.0..sroa.6185.0..sroa_idx.i.i.i.sroa_idx.i, align 2, !noalias !73977
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !73979
  %i.lg = zext i32 %.sroa.0191.sroa.15.4.copyload203.i.i.i to i64
  %i.lh = zext i24 %.sroa.34.i.i.sroa.0.0.copyload.i to i32
  br label %_ZN4time7parsing8parsable6sealed6Sealed22parse_offset_date_time17h5b8e09ac50354e9bE.exit.thread25.i

bb.co:                                            ; preds = %bb.cm
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !73979
  br label %bb.de

bb.cp:                                            ; preds = %bb.cl
  %i.li = icmp sgt i32 %i.jg, -10000
  call void @llvm.assume(i1 %i.li), !noalias !73916
  %i.lj = icmp slt i32 %i.jg, 10000
  call void @llvm.assume(i1 %i.lj), !noalias !73916
  br label %bb.cq

bb.cq:                                            ; preds = %bb.cp, %bb.cl
  %.not309.i.i.i.i = icmp eq i8 %.sroa.15.0.copyload38.i.i.i, -1
  br i1 %.not309.i.i.i.i, label %.thread456.i.i.i.i, label %bb.cr

bb.cr:                                            ; preds = %bb.cq
  %i.lk = icmp ult i8 %.sroa.15.0.copyload38.i.i.i, 54
  call void @llvm.assume(i1 %i.lk), !noalias !73916
  %or.cond336.i.i.i.i = or i1 %.not301.i.i.i.i, %.not308450.i.i.i.i
  br i1 %or.cond336.i.i.i.i, label %.thread456.i.i.i.i, label %switch.lookup

.thread456.i.i.i.i:                               ; preds = %bb.cr, %bb.cq
  br i1 %.not301.i.i.i.i, label %bb.cx, label %bb.cw

switch.lookup:                                    ; preds = %bb.cr
  %i.ll = zext nneg i8 %.sroa.15.0.copyload38.i.i.i to i16
  %i.lm = mul nuw nsw i16 %i.ll, 7
  %i.ln = zext nneg i8 %.sroa.27.0.copyload86.i.i.i to i64
  %switch.gep = getelementptr inbounds nuw i8, ptr @"switch.table._ZN88_$LT$meilitool..upgrade..v1_9..LegacyDateTime$u20$as$u20$serde_core..de..Deserialize$GT$11deserialize17h709b2cb294eff23fE", i64 %i.ln
  %switch.load = load i8, ptr %switch.gep, align 1
  %switch.ext = zext i8 %switch.load to i16
  %i.lo = add nuw nsw i16 %i.lm, %switch.ext
  %i.lp = shl i32 %i.jg, 10                       ; 2 uses
  %i.lq = ashr exact i32 %i.lp, 10
  %i.lr = add nsw i32 %i.lq, 999999               ; 3 uses
  %.neg.i.i.i.i.i.i = sdiv i32 %i.lr, -100
  %i.ls = add nsw i32 %.neg.i.i.i.i.i.i, -363521074
  %i.lt = sdiv i32 %i.lr, 400
  %i.lu = add nsw i32 %i.ls, %i.lt
  %i.lv = sext i32 %i.lr to i64
  %i.lw = mul nsw i64 %i.lv, 1461
  %i.lx = sdiv i64 %i.lw, 4
  %i.ly = trunc nsw i64 %i.lx to i32
  %i.lz = add nsw i32 %i.lu, %i.ly
  %i.ma = srem i32 %i.lz, 7
  %i.mb = sext i32 %i.ma to i64
  %i.mc = getelementptr [2 x i8], ptr @"switch.table._ZN88_$LT$meilitool..upgrade..v1_9..LegacyDateTime$u20$as$u20$serde_core..de..Deserialize$GT$11deserialize17h709b2cb294eff23fE.3096", i64 %i.mb
  %switch.gep246 = getelementptr i8, ptr %i.mc, i64 12
  %switch.load247 = load i16, ptr %switch.gep246, align 2
  %i.md = add nsw i16 %i.lo, %switch.load247      ; 2 uses
  %i.me = add nsw i16 %i.md, 1                    ; 2 uses
  %or.cond.i344.i.i.i.i = icmp slt i32 %i.jg, -9999
  br i1 %or.cond.i344.i.i.i.i, label %bb.cu, label %bb.cs, !prof !66

bb.cs:                                            ; preds = %switch.lookup
  %.sroa.010.0.i345.i.i.i.i = call i32 @llvm.abs.i32(i32 %i.jg, i1 true)
  %i.mf = mul i32 %.sroa.010.0.i345.i.i.i.i, 33555415
  %i.mg = and i32 %i.mf, 100695055
  %i.mh = icmp samesign ult i32 %i.mg, 31745      ; 2 uses
  %or.cond1.i346.i.i.i.i = icmp ult i16 %i.md, 365
  br i1 %or.cond1.i346.i.i.i.i, label %bb.cv, label %bb.ct, !prof !60

bb.ct:                                            ; preds = %bb.cs
  %i.mi = icmp eq i16 %i.me, 366
  %brmerge.not.i347.i.i.i.i = and i1 %i.mh, %i.mi
  br i1 %brmerge.not.i347.i.i.i.i, label %bb.cv, label %bb.cu

bb.cu:                                            ; preds = %bb.ct, %switch.lookup
  %.sroa.0377.0.ph.i.i.i.i = phi ptr [ @1154, %bb.ct ], [ @1129, %switch.lookup ]
  %.sroa.8378.0.ph.i.i.i.i = phi i64 [ 7, %bb.ct ], [ 4, %switch.lookup ]
  %.sink.i349.ph.i.i.i.i = phi i8 [ 1, %bb.ct ], [ 0, %switch.lookup ]
  %i.mj = ptrtoint ptr %.sroa.0377.0.ph.i.i.i.i to i64 ; 2 uses
  %.sroa.0191.sroa.0.0.extract.trunc195.i.i.i = trunc i64 %i.mj to i32
  %.sroa.0191.sroa.15.0.extract.shift199.i.i.i = lshr i64 %i.mj, 32
  br label %_ZN4time7parsing8parsable6sealed6Sealed22parse_offset_date_time17h5b8e09ac50354e9bE.exit.thread25.i

bb.cv:                                            ; preds = %bb.ct, %bb.cs
  %i.mk = select i1 %i.mh, i32 512, i32 0
  %i.ml = zext nneg i16 %i.me to i32
  %i.mm = or i32 %i.mk, %i.ml
  %i.mn = or i32 %i.mm, %i.lp                     ; 2 uses
  %i.mo = icmp ne i32 %i.mn, 0
  call void @llvm.assume(i1 %i.mo), !noalias !73916
  br label %bb.de

bb.cw:                                            ; preds = %.thread456.i.i.i.i
  %i.mp = icmp sgt i32 %i.jg, -10000
  call void @llvm.assume(i1 %i.mp), !noalias !73916
  %i.mq = icmp slt i32 %i.jg, 10000
  call void @llvm.assume(i1 %i.mq), !noalias !73916
  br label %bb.cx

bb.cx:                                            ; preds = %bb.cw, %.thread456.i.i.i.i
  %.not312.i.i.i.i = icmp eq i8 %.sroa.16.0.copyload42.i.i.i, -1
  br i1 %.not312.i.i.i.i, label %_ZN4time7parsing8parsable6sealed6Sealed22parse_offset_date_time17h5b8e09ac50354e9bE.exit.thread25.i, label %bb.cy

bb.cy:                                            ; preds = %bb.cx
  %i.mr = icmp ult i8 %.sroa.16.0.copyload42.i.i.i, 54
  call void @llvm.assume(i1 %i.mr), !noalias !73916
  %or.cond338.i.i.i.i = or i1 %.not301.i.i.i.i, %.not308450.i.i.i.i
  br i1 %or.cond338.i.i.i.i, label %_ZN4time7parsing8parsable6sealed6Sealed22parse_offset_date_time17h5b8e09ac50354e9bE.exit.thread25.i, label %switch.lookup241

switch.lookup241:                                 ; preds = %bb.cy
  %i.ms = zext nneg i8 %.sroa.16.0.copyload42.i.i.i to i16
  %i.mt = mul nuw nsw i16 %i.ms, 7
  %i.mu = zext nneg i8 %.sroa.27.0.copyload86.i.i.i to i16
  %i.mv = add nuw nsw i16 %i.mt, %i.mu
  %i.mw = shl i32 %i.jg, 10                       ; 2 uses
  %i.mx = ashr exact i32 %i.mw, 10
  %i.my = add nsw i32 %i.mx, 999999               ; 3 uses
  %.neg.i.i353.i.i.i.i = sdiv i32 %i.my, -100
  %i.mz = add nsw i32 %.neg.i.i353.i.i.i.i, -363521074
  %i.na = sdiv i32 %i.my, 400
  %i.nb = add nsw i32 %i.mz, %i.na
  %i.nc = sext i32 %i.my to i64
  %i.nd = mul nsw i64 %i.nc, 1461
  %i.ne = sdiv i64 %i.nd, 4
  %i.nf = trunc nsw i64 %i.ne to i32
  %i.ng = add nsw i32 %i.nb, %i.nf
  %i.nh = srem i32 %i.ng, 7
  %i.ni = sext i32 %i.nh to i64
  %i.nj = getelementptr [2 x i8], ptr @"switch.table._ZN88_$LT$meilitool..upgrade..v1_9..LegacyDateTime$u20$as$u20$serde_core..de..Deserialize$GT$11deserialize17h709b2cb294eff23fE.3096", i64 %i.ni
  %switch.gep242 = getelementptr i8, ptr %i.nj, i64 12
  %switch.load243 = load i16, ptr %switch.gep242, align 2
  %i.nk = add nsw i16 %i.mv, %switch.load243      ; 2 uses
  %i.nl = add nsw i16 %i.nk, 1                    ; 2 uses
  %or.cond.i358.i.i.i.i = icmp slt i32 %i.jg, -9999
  br i1 %or.cond.i358.i.i.i.i, label %bb.db, label %bb.cz, !prof !66

bb.cz:                                            ; preds = %switch.lookup241
  %.sroa.010.0.i359.i.i.i.i = call i32 @llvm.abs.i32(i32 %i.jg, i1 true)
  %i.nm = mul i32 %.sroa.010.0.i359.i.i.i.i, 33555415
  %i.nn = and i32 %i.nm, 100695055
  %i.no = icmp samesign ult i32 %i.nn, 31745      ; 2 uses
  %or.cond1.i360.i.i.i.i = icmp ult i16 %i.nk, 365
  br i1 %or.cond1.i360.i.i.i.i, label %bb.dc, label %bb.da, !prof !60

bb.da:                                            ; preds = %bb.cz
  %i.np = icmp eq i16 %i.nl, 366
  %brmerge.not.i361.i.i.i.i = and i1 %i.no, %i.np
  br i1 %brmerge.not.i361.i.i.i.i, label %bb.dc, label %bb.db

bb.db:                                            ; preds = %bb.da, %switch.lookup241
  %.sroa.0384.0.ph.i.i.i.i = phi ptr [ @1154, %bb.da ], [ @1129, %switch.lookup241 ]
  %.sroa.8385.0.ph.i.i.i.i = phi i64 [ 7, %bb.da ], [ 4, %switch.lookup241 ]
  %.sink.i363.ph.i.i.i.i = phi i8 [ 1, %bb.da ], [ 0, %switch.lookup241 ]
  %i.nq = ptrtoint ptr %.sroa.0384.0.ph.i.i.i.i to i64 ; 2 uses
  %.sroa.0191.sroa.0.0.extract.trunc196.i.i.i = trunc i64 %i.nq to i32
  %.sroa.0191.sroa.15.0.extract.shift201.i.i.i = lshr i64 %i.nq, 32
  br label %_ZN4time7parsing8parsable6sealed6Sealed22parse_offset_date_time17h5b8e09ac50354e9bE.exit.thread25.i

bb.dc:                                            ; preds = %bb.da, %bb.cz
  %i.nr = select i1 %i.no, i32 512, i32 0
  %i.ns = zext nneg i16 %i.nl to i32
  %i.nt = or i32 %i.nr, %i.ns
  %i.nu = or i32 %i.nt, %i.mw                     ; 2 uses
  %i.nv = icmp ne i32 %i.nu, 0
  call void @llvm.assume(i1 %i.nv), !noalias !73916
  br label %bb.de

bb.dd:                                            ; preds = %bb.bq
  br label %bb.br

bb.de:                                            ; preds = %bb.dc, %bb.cv, %bb.co, %bb.ch, %bb.cb
  %.sroa.0191.sroa.0.0.i.i.i = phi i32 [ %i.lf, %bb.co ], [ %i.kx, %bb.ch ], [ %i.nu, %bb.dc ], [ %i.kc, %bb.cb ], [ %i.mn, %bb.cv ] ; 5 uses
  %.not.not.i.i.i.i = icmp eq i8 %.sroa.19.0.copyload54.i.i.i, -1 ; 2 uses
  br i1 %.not.not.i.i.i.i, label %bb.dg, label %bb.df

bb.df:                                            ; preds = %bb.de
  %i.nw = icmp ult i8 %.sroa.19.0.copyload54.i.i.i, 24
  call void @llvm.assume(i1 %i.nw), !noalias !73916
  br label %bb.dg

bb.dg:                                            ; preds = %bb.df, %bb.de
  %.not.i168.i.i.i = icmp eq i8 %.sroa.20.0.copyload58.i.i.i, 0 ; 2 uses
  br i1 %.not.i168.i.i.i, label %bb.di, label %bb.dh, !prof !27

bb.dh:                                            ; preds = %bb.dg
  %i.nx = icmp ult i8 %.sroa.20.0.copyload58.i.i.i, 13
  call void @llvm.assume(i1 %i.nx), !noalias !73916
  br label %bb.di

bb.di:                                            ; preds = %bb.dh, %bb.dg
  br i1 %.not.not.i.i.i.i, label %bb.dj, label %.thread313.i.i.i.i

bb.dj:                                            ; preds = %bb.di
  %.not233.i.i.i.i = icmp eq i8 %.sroa.28.0.copyload90.i.i.i, 2
  %or.cond.i170.i.i.i = or i1 %.not.i168.i.i.i, %.not233.i.i.i.i
  br i1 %or.cond.i170.i.i.i, label %bb.ea, label %.critedge.i171.i.i.i

.critedge.i171.i.i.i:                             ; preds = %bb.dj
  %i.ny = trunc nuw i8 %.sroa.28.0.copyload90.i.i.i to i1
  %i.nz = icmp eq i8 %.sroa.20.0.copyload58.i.i.i, 12 ; 2 uses
  %i.oa = add nuw nsw i8 %.sroa.20.0.copyload58.i.i.i, 12
  %spec.select.i172.i.i.i = select i1 %i.nz, i8 12, i8 %i.oa
  %..sroa.011.0.i.i.i.i = select i1 %i.nz, i8 0, i8 %.sroa.20.0.copyload58.i.i.i
  %.sroa.0.0.ph.i.i.i.i = select i1 %i.ny, i8 %spec.select.i172.i.i.i, i8 %..sroa.011.0.i.i.i.i ; 3 uses
  %i.ob = icmp samesign ult i8 %.sroa.20.0.copyload58.i.i.i, 13
  call void @llvm.assume(i1 %i.ob), !noalias !73916
  %.not235.i.i.i.i = icmp eq i8 %.sroa.21.0.copyload62.i.i.i, -1
  br i1 %.not235.i.i.i.i, label %.critedge252.i.i.i.i, label %.thread313.thread360.i.i.i.i

.thread313.i.i.i.i:                               ; preds = %bb.di
  %i.oc = icmp samesign ult i8 %.sroa.19.0.copyload54.i.i.i, 24
  call void @llvm.assume(i1 %i.oc), !noalias !73916
  %.not238.i.i.i.i = icmp eq i8 %.sroa.21.0.copyload62.i.i.i, -1
  br i1 %.not238.i.i.i.i, label %.thread313.thread.i.i.i.i, label %bb.dl

.thread313.thread360.i.i.i.i:                     ; preds = %.critedge.i171.i.i.i
  %i.od = icmp ult i8 %.sroa.21.0.copyload62.i.i.i, 60
  call void @llvm.assume(i1 %i.od), !noalias !73916
  br label %bb.dl

.critedge252.i.i.i.i:                             ; preds = %.critedge.i171.i.i.i
  %.not236.i.i.i.i = icmp eq i8 %.sroa.1957.0.i.i, -1
  %.not237.i.i.i.i = icmp eq i32 %.sroa.4.0.i.i, -1
  %or.cond = select i1 %.not236.i.i.i.i, i1 %.not237.i.i.i.i, i1 false
  br i1 %or.cond, label %bb.dk, label %.thread313.thread.i.i.i.i

bb.dk:                                            ; preds = %.critedge252.i.i.i.i
  %.sroa.0.6.insert.ext.i.i.i.i = zext nneg i8 %.sroa.0.0.ph.i.i.i.i to i64
  %.sroa.0.6.insert.shift.i.i.i.i = shl nuw nsw i64 %.sroa.0.6.insert.ext.i.i.i.i, 48
  br label %bb.eb

bb.dl:                                            ; preds = %.thread313.thread360.i.i.i.i, %.thread313.i.i.i.i
  %.sroa.0.0312363.i.i.i.i = phi i8 [ %.sroa.0.0.ph.i.i.i.i, %.thread313.thread360.i.i.i.i ], [ %.sroa.19.0.copyload54.i.i.i, %.thread313.i.i.i.i ]
  %i.oe = zext nneg i8 %.sroa.21.0.copyload62.i.i.i to i64
  %i.of = shl nuw nsw i64 %i.oe, 40
  br label %.thread313.thread.i.i.i.i

.thread313.thread.i.i.i.i:                        ; preds = %bb.dl, %.critedge252.i.i.i.i, %.thread313.i.i.i.i
  %.not238359.i.i.i.i = phi i1 [ true, %.thread313.i.i.i.i ], [ false, %bb.dl ], [ true, %.critedge252.i.i.i.i ]
  %.sroa.0.0312358.i.i.i.i = phi i8 [ %.sroa.19.0.copyload54.i.i.i, %.thread313.i.i.i.i ], [ %.sroa.0.0312363.i.i.i.i, %bb.dl ], [ %.sroa.0.0.ph.i.i.i.i, %.critedge252.i.i.i.i ] ; 4 uses
  %.sroa.0306.5.insert.ext.i.i.i.i = phi i64 [ 280375465082880, %.thread313.i.i.i.i ], [ %i.of, %bb.dl ], [ 280375465082880, %.critedge252.i.i.i.i ] ; 3 uses
  %.not239.i.i.i.i = icmp ne i8 %.sroa.1957.0.i.i, -1 ; 3 uses
  br i1 %.not239.i.i.i.i, label %bb.dm, label %bb.dn

bb.dm:                                            ; preds = %.thread313.thread.i.i.i.i
  %i.og = icmp ult i8 %.sroa.1957.0.i.i, 61
  call void @llvm.assume(i1 %i.og), !noalias !73916
  br label %bb.dn

bb.dn:                                            ; preds = %bb.dm, %.thread313.thread.i.i.i.i
  %.not244.i.i.i.i = icmp ne i32 %.sroa.4.0.i.i, -1 ; 4 uses
  br i1 %.not244.i.i.i.i, label %bb.do, label %bb.dp

bb.do:                                            ; preds = %bb.dn
  %i.oh = icmp ult i32 %.sroa.4.0.i.i, 1000000000
  call void @llvm.assume(i1 %i.oh), !noalias !73916
  br label %bb.dp

bb.dp:                                            ; preds = %bb.do, %bb.dn
  br i1 %.not238359.i.i.i.i, label %bb.dr, label %bb.dq

bb.dq:                                            ; preds = %bb.dp
  br i1 %.not239.i.i.i.i, label %bb.dt, label %bb.du

bb.dr:                                            ; preds = %bb.dp
  %brmerge.i.i.i.i = or i1 %.not239.i.i.i.i, %.not244.i.i.i.i
  br i1 %brmerge.i.i.i.i, label %bb.ea, label %bb.ds

bb.ds:                                            ; preds = %bb.dr
  %.sroa.0294.6.insert.ext.i.i.i.i = zext nneg i8 %.sroa.0.0312358.i.i.i.i to i64
  %.sroa.0294.6.insert.shift.i.i.i.i = shl nuw nsw i64 %.sroa.0294.6.insert.ext.i.i.i.i, 48
  br label %bb.eb

bb.dt:                                            ; preds = %bb.dq
  %i.oi = icmp samesign ugt i8 %.sroa.1957.0.i.i, 59 ; 2 uses
  br i1 %.not244.i.i.i.i, label %bb.dw, label %bb.dx

bb.du:                                            ; preds = %bb.dq
  br i1 %.not244.i.i.i.i, label %bb.ea, label %bb.dv

bb.dv:                                            ; preds = %bb.du
  %.sroa.0299.6.insert.ext.i.i.i.i = zext nneg i8 %.sroa.0.0312358.i.i.i.i to i64
  %.sroa.0299.6.insert.shift.i.i.i.i = shl nuw nsw i64 %.sroa.0299.6.insert.ext.i.i.i.i, 48
  %.sroa.0299.6.insert.insert.i.i.i.i = add nuw nsw i64 %.sroa.0299.6.insert.shift.i.i.i.i, %.sroa.0306.5.insert.ext.i.i.i.i
  br label %bb.eb

bb.dw:                                            ; preds = %bb.dt
  br i1 %i.oi, label %bb.ea, label %bb.dz, !prof !66

bb.dx:                                            ; preds = %bb.dt
  br i1 %i.oi, label %bb.ea, label %bb.dy, !prof !66

bb.dy:                                            ; preds = %bb.dx
  %.sroa.0302.4.insert.ext.i.i.i.i = zext nneg i8 %.sroa.1957.0.i.i to i64
  %.sroa.0302.4.insert.shift.i.i.i.i = shl nuw nsw i64 %.sroa.0302.4.insert.ext.i.i.i.i, 32
  %.sroa.0302.6.insert.ext.i.i.i.i = zext nneg i8 %.sroa.0.0312358.i.i.i.i to i64
  %.sroa.0302.6.insert.shift.i.i.i.i = shl nuw nsw i64 %.sroa.0302.6.insert.ext.i.i.i.i, 48
  %i.oj = or disjoint i64 %.sroa.0302.6.insert.shift.i.i.i.i, %.sroa.0302.4.insert.shift.i.i.i.i
  %.sroa.0302.6.insert.insert.i.i.i.i = or i64 %i.oj, %.sroa.0306.5.insert.ext.i.i.i.i
  br label %bb.eb

bb.dz:                                            ; preds = %bb.dw
  %.sroa.0306.0.insert.ext.i.i.i.i = zext nneg i32 %.sroa.4.0.i.i to i64
  %.sroa.0306.4.insert.ext.i.i.i.i = zext nneg i8 %.sroa.1957.0.i.i to i64
  %.sroa.0306.4.insert.shift.i.i.i.i = shl nuw nsw i64 %.sroa.0306.4.insert.ext.i.i.i.i, 32
  %i.ok = or disjoint i64 %.sroa.0306.4.insert.shift.i.i.i.i, %.sroa.0306.0.insert.ext.i.i.i.i
  %.sroa.0306.6.insert.ext.i.i.i.i = zext nneg i8 %.sroa.0.0312358.i.i.i.i to i64
  %.sroa.0306.6.insert.shift.i.i.i.i = shl nuw nsw i64 %.sroa.0306.6.insert.ext.i.i.i.i, 48
  %i.ol = or disjoint i64 %.sroa.0306.6.insert.shift.i.i.i.i, %i.ok
  %.sroa.0306.6.insert.insert.i.i.i.i = or i64 %i.ol, %.sroa.0306.5.insert.ext.i.i.i.i
  br label %bb.eb

bb.ea:                                            ; preds = %bb.dx, %bb.dw, %bb.du, %bb.dr, %bb.dj
  %.sink365.i.i.i.i = phi i8 [ 2, %bb.du ], [ 0, %bb.dx ], [ 2, %bb.dj ], [ 0, %bb.dw ], [ 2, %bb.dr ]
  %.sroa.01.sroa.12.0.extract.shift16.i.i = lshr i64 ptrtoint (ptr @1157 to i64), 32
  br label %_ZN4time7parsing8parsable6sealed6Sealed22parse_offset_date_time17h5b8e09ac50354e9bE.exit.thread25.i

bb.eb:                                            ; preds = %bb.dz, %bb.dy, %bb.dv, %bb.ds, %bb.dk
  %.sroa.0214.0.ph.i.i.i = phi i64 [ %.sroa.0302.6.insert.insert.i.i.i.i, %bb.dy ], [ %.sroa.0299.6.insert.insert.i.i.i.i, %bb.dv ], [ %.sroa.0306.6.insert.insert.i.i.i.i, %bb.dz ], [ %.sroa.0294.6.insert.shift.i.i.i.i, %bb.ds ], [ %.sroa.0.6.insert.shift.i.i.i.i, %bb.dk ] ; 7 uses
  %i.om = icmp eq i8 %.sroa.23.0.copyload70.i.i.i, -128
  br i1 %i.om, label %_ZN4time7parsing8parsable6sealed6Sealed22parse_offset_date_time17h5b8e09ac50354e9bE.exit.thread25.i, label %bb.ec

bb.ec:                                            ; preds = %bb.eb
  %i.on = icmp sgt i8 %.sroa.23.0.copyload70.i.i.i, -24
  call void @llvm.assume(i1 %i.on), !noalias !73916
  %i.oo = icmp slt i8 %.sroa.23.0.copyload70.i.i.i, 24
  call void @llvm.assume(i1 %i.oo), !noalias !73916
  %.not.i173.i.i.i = icmp eq i8 %.sroa.24.0.copyload74.i.i.i, -128
  br i1 %.not.i173.i.i.i, label %.thread51.i.i.i.i, label %bb.ed

bb.ed:                                            ; preds = %bb.ec
  %i.op = icmp sgt i8 %.sroa.24.0.copyload74.i.i.i, -60
  call void @llvm.assume(i1 %i.op), !noalias !73916
  %i.oq = icmp slt i8 %.sroa.24.0.copyload74.i.i.i, 60
end_hunk_0
