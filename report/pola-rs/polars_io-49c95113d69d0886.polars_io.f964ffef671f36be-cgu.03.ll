Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/pola-rs/original/polars_io-49c95113d69d0886.polars_io.f964ffef671f36be-cgu.03?download=true
inline.NumInlined: 3287
inline.NumDeleted: 1477
loop-unroll.NumCompletelyUnrolled: 4
loop-unroll.NumUnrolled: 4
begin_hunk_0_@_RNvNtNtNtCslpwjCj2YNBy_9polars_io3csv4read16schema_inference22infer_file_schema_impl:bb.a
  invoke void @_RNvMs4_NtCsgZ49sUHp3tW_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCslpwjCj2YNBy_9polars_io(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.t, i64 noundef range(i64 0, 384307168202282326) %i.ho, i1 noundef zeroext true, i64 noundef 1, i64 noundef 1)
          to label %.noexc unwind label %bb.bd, !dbg !39777

.noexc:                                           ; preds = %bb.bb
  %i.hq = load i64, ptr %i.t, align 8, !dbg !39777, !range !235, !noalias !39771, !noundef !11
  %i.hr = trunc nuw i64 %i.hq to i1, !dbg !39785
  %i.hs = getelementptr inbounds nuw i8, ptr %i.t, i64 8, !dbg !39786
  %i.ht = load i64, ptr %i.hs, align 8, !dbg !39786, !range !123, !noalias !39771, !noundef !11 ; 2 uses
  %i.hu = getelementptr inbounds nuw i8, ptr %i.t, i64 16, !dbg !39786 ; 2 uses
  br i1 %i.hr, label %bb.bc, label %bb.be, !dbg !39785, !prof !54

bb.bc:                                            ; preds = %.noexc
  %i.hv = load i64, ptr %i.hu, align 8, !dbg !39787, !noalias !39771
  invoke void @_RNvNtCsgZ49sUHp3tW_5alloc7raw_vec12handle_error(i64 noundef %i.ht, i64 %i.hv) #36
          to label %.noexc27 unwind label %bb.bd, !dbg !39788

.noexc27:                                         ; preds = %bb.bc
  unreachable

.body62:                                          ; preds = %bb.fn, %bb.ei, %bb.bd, %.body
  %.pn23.pn = phi { ptr, i32 } [ %.pn23, %.body ], [ %i.ql, %bb.ei ], [ %i.hw, %bb.bd ], [ %i.sd, %bb.fn ]
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VecINtNtCse4dvU5uQ85g_8indexmap3set8IndexSetNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes5dtype8DataTypeNtNtCsk79RHlfmHDk_8foldhash7quality11RandomStateEEECslpwjCj2YNBy_9polars_io(ptr noalias noundef align 8 dereferenceable(24) %i.aq) #35
          to label %.body65 unwind label %bb.fl, !dbg !39790

bb.bd:                                            ; preds = %bb.fo, %bb.ej, %bb.bc, %bb.bb
  %i.hw = landingpad { ptr, i32 }
          cleanup
  br label %.body62

bb.be:                                            ; preds = %.noexc
  %i.hx = load ptr, ptr %i.hu, align 8, !dbg !39791, !noalias !39771, !nonnull !11, !noundef !11
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t), !dbg !39792, !noalias !39771
  store i64 %i.ht, ptr %i.ao, align 8, !dbg !39793, !alias.scope !39771
  %i.hy = getelementptr inbounds nuw i8, ptr %i.ao, i64 8, !dbg !39793 ; 3 uses
  store ptr %i.hx, ptr %i.hy, align 8, !dbg !39793, !alias.scope !39771
  %i.hz = getelementptr inbounds nuw i8, ptr %i.ao, i64 16, !dbg !39793 ; 4 uses
  store i64 %i.ho, ptr %i.hz, align 8, !dbg !39793, !alias.scope !39771
  %.idx = mul nuw nsw i64 %3, 24, !dbg !39794
  %i.ia = getelementptr inbounds nuw i8, ptr %2, i64 %.idx, !dbg !39794
  %i.ib = icmp eq i64 %3, 0, !dbg !39807
  br i1 %i.ib, label %._crit_edge, label %.lr.ph, !dbg !39809

.lr.ph:                                           ; preds = %bb.be
  %i.ic = getelementptr inbounds nuw i8, ptr %5, i64 63
  %i.id = load i8, ptr %i.ic, align 1, !alias.scope !39816, !noalias !39819, !noundef !11 ; 2 uses
  %i.ie = getelementptr inbounds nuw i8, ptr %5, i64 56
  %i.if = load i8, ptr %i.ie, align 8, !range !951, !alias.scope !39816, !noalias !39819, !noundef !11
  %i.ig = trunc nuw i8 %i.if to i1
  %i.ih = getelementptr inbounds nuw i8, ptr %5, i64 64
  %i.ii = load i8, ptr %i.ih, align 8, !alias.scope !39816, !noalias !39819, !noundef !11 ; 3 uses
  %i.ij = getelementptr inbounds nuw i8, ptr %5, i64 57
  %i.ik = load i8, ptr %i.ij, align 1, !alias.scope !39816, !noalias !39819 ; 2 uses
  %.sroa.42.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %i.il = getelementptr inbounds nuw i8, ptr %i.ar, i64 8 ; 2 uses
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  %.sroa.5121.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.r, i64 16
  %.sroa.6122.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.r, i64 24
  %.sroa.7.0..sroa_idx.i31 = getelementptr inbounds nuw i8, ptr %i.r, i64 56
  %i.im = getelementptr inbounds nuw i8, ptr %i.aq, i64 16 ; 4 uses
  %i.in = getelementptr inbounds nuw i8, ptr %i.aq, i64 8 ; 3 uses
  %i.io = load i64, ptr %5, align 8, !range !9828, !alias.scope !39816, !noalias !39819
  %i.ip = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.iq = load ptr, ptr %i.ip, align 8, !alias.scope !39816, !noalias !39819 ; 6 uses
  %i.ir = getelementptr inbounds nuw i8, ptr %5, i64 24
  %i.is = load i64, ptr %i.ir, align 8, !alias.scope !39816, !noalias !39819 ; 5 uses
  %.idx.i32 = mul nuw nsw i64 %i.is, 48
  %i.it = getelementptr inbounds nuw i8, ptr %i.iq, i64 %.idx.i32 ; 2 uses
  %i.iu = icmp eq i64 %i.is, 0                    ; 2 uses
  %i.iv = getelementptr inbounds nuw i8, ptr %i.p, i64 8 ; 5 uses
  %i.iw = getelementptr inbounds nuw i8, ptr %i.p, i64 16 ; 5 uses
  %i.ix = getelementptr inbounds nuw i8, ptr %5, i64 61
  %i.iy = load i8, ptr %i.ix, align 1, !range !951, !alias.scope !39816, !noalias !39819
  %i.iz = trunc nuw i8 %i.iy to i1                ; 5 uses
  %i.ja = getelementptr inbounds nuw i8, ptr %5, i64 62
  %i.jb = load i8, ptr %i.ja, align 2, !range !951, !alias.scope !39816, !noalias !39819
  %i.jc = trunc nuw i8 %i.jb to i1                ; 5 uses
  %.sroa.11.0..sroa_idx42.i = getelementptr inbounds nuw i8, ptr %i.l, i64 1
  %.sroa.11.0..sroa_idx43.i = getelementptr inbounds nuw i8, ptr %i.k, i64 1
  %.idx136.i = mul nuw nsw i64 %i.is, 24
  %i.jd = getelementptr inbounds nuw i8, ptr %i.iq, i64 %.idx136.i
  %.sroa.11.0..sroa_idx41.i = getelementptr inbounds nuw i8, ptr %i.n, i64 1
  %i.je = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 2 uses
  %i.jf = lshr i64 %i.is, 56
  %i.jg = trunc nuw i64 %i.jf to i8
  %i.jh = icmp ugt i64 %i.is, -2882303761517117441 ; 2 uses
  %i.ji = add i8 %i.jg, 64
  %i.jj = call i8 @llvm.umin.i8(i8 %i.ji, i8 24)
  %.sroa.0.0.i.i96.i = zext nneg i8 %i.jj to i64
  %i.jk = load ptr, ptr %i.je, align 8, !alias.scope !39816, !noalias !39819
  %i.jl = ptrtoint ptr %i.iq to i64
  %.sroa.11.0..sroa_idx40.i = getelementptr inbounds nuw i8, ptr %i.m, i64 1
  %.sroa.11.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.o, i64 1
  %.sroa.11.0..sroa_idx39.i = getelementptr inbounds nuw i8, ptr %i.j, i64 1
  %..sroa.0.0.i.i96.i = select i1 %i.jh, i64 %i.jl, i64 %.sroa.0.0.i.i96.i ; 2 uses
  %..i = select i1 %i.jh, ptr %i.jk, ptr %i.je
  br label %bb.bf, !dbg !39809

bb.bf:                                            ; preds = %.lr.ph, %_RNvNtNtNtCslpwjCj2YNBy_9polars_io3csv4read16schema_inference21infer_types_from_line.exit
  %.sroa.04.0145 = phi ptr [ %2, %.lr.ph ], [ %i.px, %_RNvNtNtNtCslpwjCj2YNBy_9polars_io3csv4read16schema_inference21infer_types_from_line.exit ] ; 3 uses
  %i.jm = getelementptr inbounds nuw i8, ptr %.sroa.04.0145, i64 8, !dbg !39824
  %i.jn = load ptr, ptr %i.jm, align 8, !dbg !39824, !noundef !11 ; 2 uses
  %i.jo = getelementptr inbounds nuw i8, ptr %.sroa.04.0145, i64 16, !dbg !39829
  %i.jp = load i64, ptr %i.jo, align 8, !dbg !39829, !noundef !11 ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !39830), !dbg !39831
  call void @llvm.experimental.noalias.scope.decl(metadata !39832), !dbg !39831
  call void @llvm.experimental.noalias.scope.decl(metadata !39816), !dbg !39831
  call void @llvm.experimental.noalias.scope.decl(metadata !39833), !dbg !39831
  call void @llvm.experimental.noalias.scope.decl(metadata !39834), !dbg !39831
  %.not.i28 = icmp eq i64 %i.jp, 0, !dbg !39835
  br i1 %.not.i28, label %.preheader, label %bb.bg, !dbg !39835

bb.bg:                                            ; preds = %bb.bf
  %i.jq = add nsw i64 %i.jp, -1, !dbg !39842      ; 2 uses
  %i.jr = getelementptr inbounds nuw i8, ptr %i.jn, i64 %i.jq, !dbg !39842
  %i.js = load i8, ptr %i.jr, align 1, !dbg !39843, !alias.scope !39830, !noalias !39846, !noundef !11
  %i.jt = icmp eq i8 %i.js, 13, !dbg !39847
  %spec.select.i29 = select i1 %i.jt, i64 %i.jq, i64 %i.jp, !dbg !39853
  br label %.preheader, !dbg !39853

.preheader:                                       ; preds = %bb.bg, %bb.bf
  %.sroa.9.0172.i.ph = phi i64 [ 0, %bb.bf ], [ %spec.select.i29, %bb.bg ]
  br label %bb.bh, !dbg !39854

bb.bh:                                            ; preds = %.preheader, %.backedge.i
  %.sroa.0.0175.i = phi i64 [ %i.kx, %.backedge.i ], [ 0, %.preheader ] ; 13 uses
  %.sroa.5.0173.i = phi ptr [ %.sroa.5.1.i, %.backedge.i ], [ %i.jn, %.preheader ] ; 16 uses
  %.sroa.9.0172.i = phi i64 [ %.sroa.9.1.i, %.backedge.i ], [ %.sroa.9.0172.i.ph, %.preheader ] ; 13 uses
  %i.ju = icmp eq i64 %.sroa.9.0172.i, 0, !dbg !39854
  br i1 %i.ju, label %bb.bi, label %bb.bj, !dbg !39854

bb.bi:                                            ; preds = %bb.bh
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.5.0173.i) ]
  br label %.loopexit140.i, !dbg !39865

bb.bj:                                            ; preds = %bb.bh
  br i1 %i.ig, label %bb.bm, label %.lr.ph.i.i.i.i33, !dbg !39867

.lr.ph.i.i.i.i33:                                 ; preds = %bb.bm, %bb.bj
  %i.jv = getelementptr inbounds nuw i8, ptr %.sroa.5.0173.i, i64 %.sroa.9.0172.i, !dbg !39869
  br label %bb.bk, !dbg !39880

bb.bk:                                            ; preds = %bb.bl, %.lr.ph.i.i.i.i33
  %.sroa.02.012.i.i.i.i = phi i64 [ 0, %.lr.ph.i.i.i.i33 ], [ %i.ka, %bb.bl ] ; 5 uses
  %i.jw = phi ptr [ %.sroa.5.0173.i, %.lr.ph.i.i.i.i33 ], [ %i.jz, %bb.bl ] ; 2 uses
  %.val7.i.i.i.i = load i8, ptr %i.jw, align 1, !dbg !39890, !alias.scope !39830, !noalias !39891, !noundef !11 ; 2 uses
  %i.jx = icmp eq i8 %.val7.i.i.i.i, %i.id, !dbg !39901
  %i.jy = icmp eq i8 %.val7.i.i.i.i, %i.ii
  %or.cond.i.i.i.i = or i1 %i.jx, %i.jy, !dbg !39901
  br i1 %or.cond.i.i.i.i, label %bb.bn, label %bb.bl, !dbg !39901

bb.bl:                                            ; preds = %bb.bk
  %i.jz = getelementptr inbounds nuw i8, ptr %i.jw, i64 1, !dbg !39908 ; 2 uses
  %i.ka = add nuw i64 %.sroa.02.012.i.i.i.i, 1, !dbg !39911
  %i.kb = icmp eq ptr %i.jz, %i.jv, !dbg !39912
  br i1 %i.kb, label %.loopexit140.i, label %bb.bk, !dbg !39880

bb.bm:                                            ; preds = %bb.bj
  %i.kc = load i8, ptr %.sroa.5.0173.i, align 1, !dbg !39915, !alias.scope !39830, !noalias !39916, !noundef !11
  %i.kd = icmp eq i8 %i.kc, %i.ik, !dbg !39917
  br i1 %i.kd, label %.lr.ph.i.i.i48, label %.lr.ph.i.i.i.i33, !dbg !39917

.lr.ph.i.i.i48:                                   ; preds = %bb.bm
  %i.ke = getelementptr inbounds nuw i8, ptr %.sroa.5.0173.i, i64 %.sroa.9.0172.i, !dbg !39918
  br label %bb.bp, !dbg !39928

bb.bn:                                            ; preds = %bb.bk
  %i.kf = icmp ult i64 %.sroa.02.012.i.i.i.i, %.sroa.9.0172.i, !dbg !39935
  call void @llvm.assume(i1 %i.kf), !dbg !39942
  %i.kg = getelementptr inbounds nuw i8, ptr %.sroa.5.0173.i, i64 %.sroa.02.012.i.i.i.i, !dbg !39943
  %i.kh = load i8, ptr %i.kg, align 1, !dbg !39944, !alias.scope !39830, !noalias !39916, !noundef !11
  %i.ki = icmp eq i8 %i.kh, %i.ii, !dbg !39944
  br i1 %i.ki, label %.loopexit140.i, label %bb.bo, !dbg !39944

bb.bo:                                            ; preds = %bb.bv, %bb.bn
  %.sroa.016.0.i.i.i = phi i64 [ %i.kw, %bb.bv ], [ %.sroa.02.012.i.i.i.i, %bb.bn ], !dbg !39945 ; 2 uses
  %.sroa.0.0.i.i.i47 = phi i1 [ true, %bb.bv ], [ false, %bb.bn ], !dbg !39946
  %i.kj = add nuw nsw i64 %.sroa.016.0.i.i.i, 1, !dbg !39947 ; 2 uses
  %i.kk = sub nuw nsw i64 %.sroa.9.0172.i, %i.kj, !dbg !39950
  %i.kl = getelementptr inbounds nuw i8, ptr %.sroa.5.0173.i, i64 %i.kj, !dbg !39958
  br label %.loopexit140.i, !dbg !39964

bb.bp:                                            ; preds = %bb.br, %.lr.ph.i.i.i48
  %.sroa.05.053.i.i.i = phi i8 [ 0, %.lr.ph.i.i.i48 ], [ %spec.select.i.i.i, %bb.br ] ; 2 uses
  %.sroa.09.052.i.i.i = phi i32 [ 0, %.lr.ph.i.i.i48 ], [ %i.ks, %bb.br ] ; 4 uses
  %.sroa.012.051.i.i.i = phi ptr [ %.sroa.5.0173.i, %.lr.ph.i.i.i48 ], [ %i.km, %bb.br ] ; 2 uses
  %i.km = getelementptr inbounds nuw i8, ptr %.sroa.012.051.i.i.i, i64 1, !dbg !39965 ; 2 uses
  %i.kn = load i8, ptr %.sroa.012.051.i.i.i, align 1, !dbg !39968, !alias.scope !39830, !noalias !39916, !noundef !11 ; 3 uses
  %i.ko = icmp eq i8 %i.kn, %i.ik, !dbg !39969
  %i.kp = zext i1 %i.ko to i8, !dbg !39969        ; 2 uses
  %spec.select.i.i.i = xor i8 %.sroa.05.053.i.i.i, %i.kp, !dbg !39969
  %.not.i.i.i = icmp eq i8 %.sroa.05.053.i.i.i, %i.kp, !dbg !39971
  br i1 %.not.i.i.i, label %bb.bq, label %bb.br, !dbg !39971

bb.bq:                                            ; preds = %bb.bp
  %i.kq = icmp eq i8 %i.kn, %i.id, !dbg !39972
  %i.kr = icmp eq i8 %i.kn, %i.ii                 ; 2 uses
  %or.cond.i.i.i49 = or i1 %i.kq, %i.kr, !dbg !39972
  br i1 %or.cond.i.i.i49, label %bb.bs, label %bb.br, !dbg !39972

bb.br:                                            ; preds = %bb.bq, %bb.bp
  %i.ks = add i32 %.sroa.09.052.i.i.i, 1, !dbg !39975
  %i.kt = icmp eq ptr %i.km, %i.ke, !dbg !39976
  br i1 %i.kt, label %.loopexit140.i, label %bb.bp, !dbg !39928

bb.bs:                                            ; preds = %bb.bq
  br i1 %i.kr, label %bb.bt, label %bb.bu, !dbg !39979

bb.bt:                                            ; preds = %bb.bs
  %i.ku = zext i32 %.sroa.09.052.i.i.i to i64, !dbg !39980
  br label %.loopexit140.i, !dbg !39981

bb.bu:                                            ; preds = %bb.bs
  %i.kv = icmp eq i32 %.sroa.09.052.i.i.i, 0, !dbg !39983
  br i1 %i.kv, label %.loopexit140.i, label %bb.bv, !dbg !39983

bb.bv:                                            ; preds = %bb.bu
  %i.kw = zext i32 %.sroa.09.052.i.i.i to i64, !dbg !39984
  br label %bb.bo, !dbg !39985

.loopexit140.i:                                   ; preds = %bb.bl, %bb.br, %bb.bu, %bb.bt, %bb.bo, %bb.bn, %bb.bi
  %.sroa.20.1.i = phi i1 [ true, %bb.bi ], [ true, %bb.bt ], [ true, %bb.bn ], [ false, %bb.bo ], [ true, %bb.br ], [ true, %bb.bu ], [ true, %bb.bl ], !dbg !39986
  %.sroa.9.1.i = phi i64 [ 0, %bb.bi ], [ %.sroa.9.0172.i, %bb.bt ], [ %.sroa.9.0172.i, %bb.bn ], [ %i.kk, %bb.bo ], [ %.sroa.9.0172.i, %bb.br ], [ %.sroa.9.0172.i, %bb.bu ], [ %.sroa.9.0172.i, %bb.bl ], !dbg !39986
  %.sroa.5.1.i = phi ptr [ %.sroa.5.0173.i, %bb.bi ], [ %.sroa.5.0173.i, %bb.bt ], [ %.sroa.5.0173.i, %bb.bn ], [ %i.kl, %bb.bo ], [ %.sroa.5.0173.i, %bb.br ], [ %.sroa.5.0173.i, %bb.bu ], [ %.sroa.5.0173.i, %bb.bl ], !dbg !39986
  %.sroa.16.0.ph.i.i = phi i1 [ false, %bb.bi ], [ true, %bb.bt ], [ false, %bb.bn ], [ %.sroa.0.0.i.i.i47, %bb.bo ], [ true, %bb.br ], [ true, %bb.bu ], [ false, %bb.bl ]
  %.sroa.10.0.ph.i.i = phi i64 [ 0, %bb.bi ], [ %i.ku, %bb.bt ], [ %.sroa.02.012.i.i.i.i, %bb.bn ], [ %.sroa.016.0.i.i.i, %bb.bo ], [ %.sroa.9.0172.i, %bb.br ], [ %.sroa.9.0172.i, %bb.bu ], [ %.sroa.9.0172.i, %bb.bl ] ; 4 uses
  %i.kx = add i64 %.sroa.0.0175.i, 1, !dbg !39987 ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.5.0173.i) ]
  %i.ky = load i64, ptr %i.hl, align 8, !dbg !39990, !alias.scope !39832, !noalias !39994, !noundef !11 ; 2 uses
  %i.kz = icmp ult i64 %i.ky, 384307168202282326, !dbg !39995
  call void @llvm.assume(i1 %i.kz), !dbg !39997
  %.not78.i = icmp ult i64 %.sroa.0.0175.i, %i.ky, !dbg !39998
  br i1 %.not78.i, label %bb.bx, label %bb.bw, !dbg !39998

bb.bw:                                            ; preds = %.loopexit140.i
  br i1 %.not, label %bb.by, label %_RNvNtNtNtCslpwjCj2YNBy_9polars_io3csv4read16schema_inference21infer_types_from_line.exit, !dbg !39999

bb.bx:                                            ; preds = %_RNvMsF_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VecbE8push_mutCslpwjCj2YNBy_9polars_io.exit.i, %.loopexit140.i
  br i1 %4, label %bb.co, label %bb.cn, !dbg !40000

bb.by:                                            ; preds = %bb.bw
  call void @llvm.lifetime.start.p0(ptr nonnull %i.s), !dbg !40001, !noalias !40002
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !dbg !40003, !noalias !40006
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.h, ptr noundef nonnull align 8 dereferenceable(24) @194, i64 24, i1 false), !dbg !40003, !noalias !40006
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !dbg !40009, !noalias !40006
  store i64 %i.kx, ptr %i.g, align 8, !dbg !40009, !noalias !40006
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !dbg !40012, !noalias !40006
  store ptr %i.g, ptr %i.f, align 8, !dbg !40012, !noalias !40006
  store ptr @_RNvXsi_NtNtNtCscgRAwXFJnXP_4core3fmt3num3impjNtB9_7Display3fmt, ptr %.sroa.42.0..sroa_idx.i.i, align 8, !dbg !40012, !noalias !40006
  %i.la = invoke noundef zeroext i1 @_RNvXs11_Cs7VARH73bmU_11compact_strNtB6_13CompactStringNtNtCscgRAwXFJnXP_4core3fmt5Write9write_fmt(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.h, ptr noundef nonnull @220, ptr noundef nonnull %i.f)
          to label %bb.cb unwind label %.loopexit142.i, !dbg !40015, !noalias !40019

.loopexit142.i:                                   ; preds = %bb.by
  %lpad.loopexit.i34 = landingpad { ptr, i32 }
          cleanup
  br label %bb.bz

.loopexit.split-lp.i45:                           ; preds = %bb.cc
  %lpad.loopexit.split-lp.i46 = landingpad { ptr, i32 }
          cleanup
  br label %bb.bz

bb.bz:                                            ; preds = %.loopexit.split-lp.i45, %.loopexit142.i
  %lpad.phi.i = phi { ptr, i32 } [ %lpad.loopexit.i34, %.loopexit142.i ], [ %lpad.loopexit.split-lp.i46, %.loopexit.split-lp.i45 ] ; 2 uses
  %i.lb = getelementptr inbounds nuw i8, ptr %i.h, i64 23, !dbg !40020
  %i.lc = load i8, ptr %i.lb, align 1, !dbg !40020, !range !608, !alias.scope !40027, !noalias !40006, !noundef !11
  %i.ld = icmp eq i8 %i.lc, -40, !dbg !40036
  br i1 %i.ld, label %bb.ca, label %.body, !dbg !40036, !prof !54

bb.ca:                                            ; preds = %bb.bz
  invoke void @_RNvNvXs2_NtCs7VARH73bmU_11compact_str4reprNtB7_4ReprNtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4drop13outlined_drop(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.h)
          to label %.body unwind label %bb.cd, !dbg !40037, !noalias !40019

bb.cb:                                            ; preds = %bb.by
  br i1 %i.la, label %bb.cc, label %_RNvNtNtNtCslpwjCj2YNBy_9polars_io3csv4read16schema_inference11column_name.exit.i, !dbg !40038, !prof !54

bb.cc:                                            ; preds = %bb.cb
  invoke void @_RNvNtCscgRAwXFJnXP_4core6result13unwrap_failed(ptr noalias noundef nonnull readonly captures(address, read_provenance) @175, i64 noundef 43, ptr noundef nonnull %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @184, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @222) #36
          to label %.noexc.i.i unwind label %.loopexit.split-lp.i45, !dbg !40040, !noalias !40019

.noexc.i.i:                                       ; preds = %bb.cc
  unreachable

bb.cd:                                            ; preds = %bb.ca
  %i.le = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #37, !dbg !40041, !noalias !40019
  unreachable, !dbg !40041

_RNvNtNtNtCslpwjCj2YNBy_9polars_io3csv4read16schema_inference11column_name.exit.i: ; preds = %bb.cb
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !dbg !40042, !noalias !40006
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !dbg !40042, !noalias !40006
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.s, ptr noundef nonnull align 8 dereferenceable(24) %i.h, i64 24, i1 false), !dbg !40042, !noalias !40002
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !dbg !40003, !noalias !40006
  call void @llvm.experimental.noalias.scope.decl(metadata !40043), !dbg !40046
  call void @llvm.experimental.noalias.scope.decl(metadata !40049), !dbg !40046
  %i.lf = load i64, ptr %i.hl, align 8, !dbg !40051, !alias.scope !40053, !noalias !40054, !noundef !11 ; 3 uses
  %i.lg = load i64, ptr %i.ar, align 8, !dbg !40055, !range !8056, !alias.scope !40053, !noalias !40054, !noundef !11
  %i.lh = icmp eq i64 %i.lf, %i.lg, !dbg !40058
  br i1 %i.lh, label %bb.ce, label %_RNvMsF_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VecNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrE8push_mutCslpwjCj2YNBy_9polars_io.exit.i, !dbg !40058

bb.ce:                                            ; preds = %_RNvNtNtNtCslpwjCj2YNBy_9polars_io3csv4read16schema_inference11column_name.exit.i
  invoke void @_RNvMs3_NtCsgZ49sUHp3tW_5alloc7raw_vecINtB5_6RawVecNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrE8grow_oneCsePnBjWcsLF5_10polars_ops(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.ar)
          to label %_RNvMsF_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VecNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrE8push_mutCslpwjCj2YNBy_9polars_io.exit.i unwind label %bb.cf, !dbg !40059, !noalias !40060

bb.cf:                                            ; preds = %bb.ce
  %i.li = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.lj = getelementptr inbounds nuw i8, ptr %i.s, i64 23, !dbg !40061
  %i.lk = load i8, ptr %i.lj, align 1, !dbg !40061, !range !608, !alias.scope !40068, !noalias !40077, !noundef !11
  %i.ll = icmp eq i8 %i.lk, -40, !dbg !40078
  br i1 %i.ll, label %bb.cg, label %.body, !dbg !40078, !prof !54

bb.cg:                                            ; preds = %bb.cf
  invoke void @_RNvNvXs2_NtCs7VARH73bmU_11compact_str4reprNtB7_4ReprNtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4drop13outlined_drop(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.s)
          to label %.body unwind label %bb.ch, !dbg !40079, !noalias !39816

bb.ch:                                            ; preds = %bb.cg
  %i.lm = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #37, !dbg !40080, !noalias !39816
  unreachable, !dbg !40080

_RNvMsF_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VecNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrE8push_mutCslpwjCj2YNBy_9polars_io.exit.i: ; preds = %bb.ce, %_RNvNtNtNtCslpwjCj2YNBy_9polars_io3csv4read16schema_inference11column_name.exit.i
  %i.ln = load ptr, ptr %i.il, align 8, !dbg !40081, !alias.scope !40053, !noalias !40054, !nonnull !11, !noundef !11
  %i.lo = getelementptr inbounds nuw [24 x i8], ptr %i.ln, i64 %i.lf, !dbg !40086
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.lo, ptr noundef nonnull align 8 dereferenceable(24) %i.s, i64 24, i1 false), !dbg !40088, !noalias !39816
  %i.lp = add i64 %i.lf, 1, !dbg !40089
  store i64 %i.lp, ptr %i.hl, align 8, !dbg !40089, !alias.scope !40053, !noalias !40054
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s), !dbg !40090, !noalias !40002
  call void @llvm.lifetime.start.p0(ptr nonnull %i.r), !dbg !40091, !noalias !40002
  %i.lq = invoke noundef i64 @_RNvNtCsk79RHlfmHDk_8foldhash4seed19gen_per_hasher_seed()
          to label %.noexc50 unwind label %.loopexit.split-lp.loopexit, !dbg !40092

.noexc50:                                         ; preds = %_RNvMsF_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VecNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrE8push_mutCslpwjCj2YNBy_9polars_io.exit.i
  %i.lr = load atomic i8, ptr getelementptr inbounds nuw (i8, ptr @_RNvNtNtCsk79RHlfmHDk_8foldhash4seed6global19GLOBAL_SEED_STORAGE, i64 48) acquire, align 8, !dbg !40111, !noalias !40002
  %i.ls = icmp eq i8 %i.lr, 2, !dbg !40117
  br i1 %i.ls, label %.noexc51, label %bb.ci, !dbg !40117, !prof !5248

bb.ci:                                            ; preds = %.noexc50
  invoke void @_RNvMs_NtNtCsk79RHlfmHDk_8foldhash4seed6globalNtB4_10GlobalSeed9init_slow() #41
          to label %.noexc51 unwind label %.loopexit.split-lp.loopexit, !dbg !40118

.noexc51:                                         ; preds = %bb.ci, %.noexc50
  store i64 0, ptr %i.r, align 8, !dbg !40119, !noalias !40002
  store ptr inttoptr (i64 16 to ptr), ptr %.sroa.4.0..sroa_idx.i, align 8, !dbg !40119, !noalias !40002
  store i64 0, ptr %.sroa.5121.0..sroa_idx.i, align 8, !dbg !40119, !noalias !40002
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.6122.0..sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(32) @202, i64 32, i1 false), !dbg !40119, !noalias !40002
  store i64 %i.lq, ptr %.sroa.7.0..sroa_idx.i31, align 8, !dbg !40119, !noalias !40002
  %i.lt = load i64, ptr %i.im, align 8, !dbg !40120, !alias.scope !40125, !noalias !40128, !noundef !11 ; 3 uses
  %i.lu = load i64, ptr %i.aq, align 8, !dbg !40130, !range !8056, !alias.scope !40125, !noalias !40128, !noundef !11
  %i.lv = icmp eq i64 %i.lt, %i.lu, !dbg !40136
  br i1 %i.lv, label %bb.cj, label %_RNvMsF_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VecINtNtCse4dvU5uQ85g_8indexmap3set8IndexSetNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes5dtype8DataTypeNtNtCsk79RHlfmHDk_8foldhash7quality11RandomStateEE8push_mutCslpwjCj2YNBy_9polars_io.exit.i, !dbg !40136

bb.cj:                                            ; preds = %.noexc51
  invoke void @_RNvMs3_NtCsgZ49sUHp3tW_5alloc7raw_vecINtB5_6RawVecINtNtCse4dvU5uQ85g_8indexmap3set8IndexSetNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes5dtype8DataTypeNtNtCsk79RHlfmHDk_8foldhash7quality11RandomStateEE8grow_oneCslpwjCj2YNBy_9polars_io(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.aq)
          to label %_RNvMsF_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VecINtNtCse4dvU5uQ85g_8indexmap3set8IndexSetNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes5dtype8DataTypeNtNtCsk79RHlfmHDk_8foldhash7quality11RandomStateEE8push_mutCslpwjCj2YNBy_9polars_io.exit.i unwind label %bb.ck, !dbg !40137, !noalias !40138

bb.ck:                                            ; preds = %bb.cj
  %i.lw = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCse4dvU5uQ85g_8indexmap3set8IndexSetNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes5dtype8DataTypeNtNtCsk79RHlfmHDk_8foldhash7quality11RandomStateEECslpwjCj2YNBy_9polars_io(ptr noalias noundef nonnull align 8 dereferenceable(64) %i.r) #35
          to label %.body unwind label %bb.cl, !dbg !40139, !noalias !39816

bb.cl:                                            ; preds = %bb.ck
  %i.lx = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #37, !dbg !40140, !noalias !39816
  unreachable, !dbg !40140

_RNvMsF_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VecINtNtCse4dvU5uQ85g_8indexmap3set8IndexSetNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes5dtype8DataTypeNtNtCsk79RHlfmHDk_8foldhash7quality11RandomStateEE8push_mutCslpwjCj2YNBy_9polars_io.exit.i: ; preds = %bb.cj, %.noexc51
  %i.ly = load ptr, ptr %i.in, align 8, !dbg !40141, !alias.scope !40125, !noalias !40128, !nonnull !11, !noundef !11
  %i.lz = getelementptr inbounds nuw [64 x i8], ptr %i.ly, i64 %i.lt, !dbg !40150
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.lz, ptr noundef nonnull align 8 dereferenceable(64) %i.r, i64 64, i1 false), !dbg !40153, !noalias !39816
  %i.ma = add i64 %i.lt, 1, !dbg !40155
  store i64 %i.ma, ptr %i.im, align 8, !dbg !40155, !alias.scope !40125, !noalias !40128
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r), !dbg !40156, !noalias !40002
  %i.mb = load i64, ptr %i.hz, align 8, !dbg !40157, !alias.scope !40162, !noalias !40165, !noundef !11 ; 3 uses
  %i.mc = load i64, ptr %i.ao, align 8, !dbg !40166, !range !8056, !alias.scope !40162, !noalias !40165, !noundef !11
  %i.md = icmp eq i64 %i.mb, %i.mc, !dbg !40172
  br i1 %i.md, label %bb.cm, label %_RNvMsF_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VecbE8push_mutCslpwjCj2YNBy_9polars_io.exit.i, !dbg !40172

bb.cm:                                            ; preds = %_RNvMsF_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VecINtNtCse4dvU5uQ85g_8indexmap3set8IndexSetNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes5dtype8DataTypeNtNtCsk79RHlfmHDk_8foldhash7quality11RandomStateEE8push_mutCslpwjCj2YNBy_9polars_io.exit.i
  invoke void @_RNvMs3_NtCsgZ49sUHp3tW_5alloc7raw_vecINtB5_6RawVecbE8grow_oneCs1LHh8CLbVkQ_11polars_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.ao)
          to label %_RNvMsF_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VecbE8push_mutCslpwjCj2YNBy_9polars_io.exit.i unwind label %.loopexit.split-lp.loopexit, !dbg !40173

_RNvMsF_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VecbE8push_mutCslpwjCj2YNBy_9polars_io.exit.i: ; preds = %bb.cm, %_RNvMsF_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VecINtNtCse4dvU5uQ85g_8indexmap3set8IndexSetNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes5dtype8DataTypeNtNtCsk79RHlfmHDk_8foldhash7quality11RandomStateEE8push_mutCslpwjCj2YNBy_9polars_io.exit.i
  %i.me = load ptr, ptr %i.hy, align 8, !dbg !40174, !alias.scope !40162, !noalias !40165, !nonnull !11, !noundef !11
  %i.mf = getelementptr inbounds nuw i8, ptr %i.me, i64 %i.mb, !dbg !40183
  store i8 0, ptr %i.mf, align 1, !dbg !40186, !noalias !39816
  %i.mg = add i64 %i.mb, 1, !dbg !40190
  store i64 %i.mg, ptr %i.hz, align 8, !dbg !40190, !alias.scope !40162, !noalias !40165
  br label %bb.bx, !dbg !40191

bb.cn:                                            ; preds = %bb.bx
  %i.mh = icmp eq i64 %.sroa.10.0.ph.i.i, 0, !dbg !40192
  br i1 %i.mh, label %bb.cp, label %bb.cq, !dbg !40192

bb.co:                                            ; preds = %bb.bx
  %i.mi = load i64, ptr %i.im, align 8, !dbg !40193, !alias.scope !39833, !noalias !40201, !noundef !11 ; 2 uses
  %i.mj = icmp ult i64 %.sroa.0.0175.i, %i.mi, !dbg !40202
  br i1 %i.mj, label %bb.ec, label %.invoke, !dbg !40202

bb.cp:                                            ; preds = %bb.cn
  %i.mk = load i64, ptr %i.hz, align 8, !dbg !40208, !alias.scope !39834, !noalias !40165, !noundef !11 ; 2 uses
  %i.ml = icmp ult i64 %.sroa.0.0175.i, %i.mk, !dbg !40217
  br i1 %i.ml, label %bb.cr, label %.invoke, !dbg !40217

bb.cq:                                            ; preds = %bb.cn
  %i.mm = icmp ne i64 %.sroa.10.0.ph.i.i, 1
  %or.cond.i37 = and i1 %.sroa.16.0.ph.i.i, %i.mm, !dbg !40223 ; 2 uses
  %i.mn = add nsw i64 %.sroa.10.0.ph.i.i, -2, !dbg !40223
  %.sroa.530.0.i = select i1 %or.cond.i37, i64 %i.mn, i64 %.sroa.10.0.ph.i.i, !dbg !40223
  %.sroa.027.0.idx.i = zext i1 %or.cond.i37 to i64, !dbg !40223
  %.sroa.027.0.i38 = getelementptr inbounds nuw i8, ptr %.sroa.5.0173.i, i64 %.sroa.027.0.idx.i, !dbg !40223
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p), !dbg !40224, !noalias !40002
  invoke void @_RNvMNtCsgZ49sUHp3tW_5alloc6stringNtB2_6String15from_utf8_lossy(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.p, ptr noalias noundef nonnull readonly captures(address, read_provenance) %.sroa.027.0.i38, i64 noundef %.sroa.530.0.i)
          to label %.noexc53 unwind label %.loopexit.split-lp.loopexit, !dbg !40226
end_hunk_0
begin_hunk_1_@_RNvNtNtNtCslpwjCj2YNBy_9polars_io3csv4read5utils10decompress:bb.a
bb.t:                                             ; preds = %.loopexit.split-lp.i, %bb.l
  %i.bo = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #37, !dbg !41031, !noalias !40979
  unreachable, !dbg !41031

bb.u:                                             ; preds = %bb.aa, %bb.j
  call void @llvm.lifetime.start.p0(ptr nonnull %i.z), !dbg !41032, !noalias !40990
  call void @llvm.lifetime.start.p0(ptr nonnull %i.y), !dbg !41032, !noalias !40990
  store ptr %i.ah, ptr %i.y, align 8, !dbg !41033, !noalias !40990
  store i64 4096, ptr %i.bb, align 8, !dbg !41033, !noalias !40990
  store i64 4096, ptr %i.bc, align 8, !dbg !41033, !noalias !40990
  %i.bp = invoke { i64, ptr } @_RINvNtCsh8eZTKRCwoO_3std2io19default_read_to_endINtB2_4TakeQINtNtNtCs9VoZUfg37wD_6flate22gz4read14MultiGzDecoderRShEEECslpwjCj2YNBy_9polars_io(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.y, ptr noalias noundef nonnull align 8 dereferenceable(24) %i.aa, i64 noundef 0, i64 undef)
          to label %bb.v unwind label %.loopexit.split-lp.loopexit.i, !dbg !41036, !noalias !40979 ; 2 uses

.loopexit.i:                                      ; preds = %bb.av, %bb.as
  %lpad.loopexit.i = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp.i

.loopexit.split-lp.loopexit.i:                    ; preds = %bb.z, %bb.u
  %lpad.loopexit52.i = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp.i

.loopexit.split-lp.loopexit.split-lp.i:           ; preds = %bb.ax, %bb.at, %bb.ad, %bb.ab, %bb.w
  %lpad.loopexit.split-lp53.i = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp.i

.loopexit.split-lp.i:                             ; preds = %.loopexit.split-lp.loopexit.split-lp.i, %.loopexit.split-lp.loopexit.i, %.loopexit.i
  %lpad.phi.i = phi { ptr, i32 } [ %lpad.loopexit.i, %.loopexit.i ], [ %lpad.loopexit52.i, %.loopexit.split-lp.loopexit.i ], [ %lpad.loopexit.split-lp53.i, %.loopexit.split-lp.loopexit.split-lp.i ]
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VechEECslpwjCj2YNBy_9polars_io(ptr noalias noundef align 8 dereferenceable(24) %i.aa) #35
          to label %.body unwind label %bb.t, !dbg !41039, !noalias !40979

bb.v:                                             ; preds = %bb.u
  %i.bq = extractvalue { i64, ptr } %i.bp, 0, !dbg !41036 ; 2 uses
  %i.br = extractvalue { i64, ptr } %i.bp, 1, !dbg !41036 ; 2 uses
  store i64 %i.bq, ptr %i.z, align 8, !dbg !41036, !noalias !40990
  store ptr %i.br, ptr %i.bd, align 8, !dbg !41036, !noalias !40990
  %i.bs = trunc nuw i64 %i.bq to i1, !dbg !41040
  br i1 %i.bs, label %bb.w, label %bb.x, !dbg !41042

bb.w:                                             ; preds = %bb.v
  invoke void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCsh8eZTKRCwoO_3std2io5error5ErrorECslpwjCj2YNBy_9polars_io(ptr noalias noundef nonnull readonly align 8 dereferenceable(8) %i.bd)
          to label %bb.y unwind label %.loopexit.split-lp.loopexit.split-lp.i, !dbg !41043, !noalias !40979

bb.x:                                             ; preds = %bb.v
  %i.bt = icmp eq ptr %i.br, null, !dbg !41040
  call void @llvm.lifetime.end.p0(ptr nonnull %i.z), !dbg !41045, !noalias !40990
  call void @llvm.lifetime.end.p0(ptr nonnull %i.y), !dbg !41046, !noalias !40990
  br i1 %i.bt, label %_RINvYNtNtNtNtNtCslpwjCj2YNBy_9polars_io3csv4read11splitfields5inner11SplitFieldsNtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator4foldjNCNvYB3_B1g_5count0EBd_.exit.i, label %bb.z, !dbg !41047

bb.y:                                             ; preds = %bb.w
  call void @llvm.lifetime.end.p0(ptr nonnull %i.z), !dbg !41045, !noalias !40990
  store i64 -9223372036854775808, ptr %0, align 8, !dbg !41049, !alias.scope !40979, !noalias !41020
  call void @llvm.lifetime.end.p0(ptr nonnull %i.y), !dbg !41046, !noalias !40990
  br label %bb.ag, !dbg !41054

bb.z:                                             ; preds = %bb.x
  %i.bu = load ptr, ptr %i.az, align 8, !dbg !41056, !noalias !40990, !nonnull !11, !noundef !11
  %i.bv = load i64, ptr %i.ba, align 8, !dbg !41069, !noalias !40990, !noundef !11
  %i.bw = invoke { i64, i64 } @_RNvNtNtNtCslpwjCj2YNBy_9polars_io3csv4read6parser24next_line_position_naive(ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.bu, i64 noundef %i.bv, i8 noundef %8)
          to label %bb.aa unwind label %.loopexit.split-lp.loopexit.i, !dbg !41070, !noalias !40979

_RINvYNtNtNtNtNtCslpwjCj2YNBy_9polars_io3csv4read11splitfields5inner11SplitFieldsNtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator4foldjNCNvYB3_B1g_5count0EBd_.exit.i: ; preds = %bb.x, %_RNvXs_NtNtNtNtCslpwjCj2YNBy_9polars_io3csv4read11splitfields5innerNtB4_11SplitFieldsNtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator4next.exit.loopexit17.i.i, %_RNvXs_NtNtNtNtCslpwjCj2YNBy_9polars_io3csv4read11splitfields5innerNtB4_11SplitFieldsNtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator4next.exit.loopexit.i.i, %bb.ae
  %.sroa.019.0.i = phi i64 [ %i.ej, %_RNvXs_NtNtNtNtCslpwjCj2YNBy_9polars_io3csv4read11splitfields5innerNtB4_11SplitFieldsNtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator4next.exit.loopexit.i.i ], [ 0, %bb.ae ], [ %i.ek, %_RNvXs_NtNtNtNtCslpwjCj2YNBy_9polars_io3csv4read11splitfields5innerNtB4_11SplitFieldsNtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator4next.exit.loopexit17.i.i ], [ 0, %bb.x ], !dbg !41071
  %i.bx = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  %i.by = getelementptr inbounds nuw i8, ptr %i.u, i64 16
  %i.bz = getelementptr inbounds nuw i8, ptr %i.v, i64 8 ; 2 uses
  %exitcond.not.not.i252.not = icmp eq i64 %4, 0
  br i1 %exitcond.not.not.i252.not, label %.split.i, label %.outer.split.i.preheader, !dbg !41072

bb.aa:                                            ; preds = %bb.z
  %i.ca = extractvalue { i64, i64 } %i.bw, 0, !dbg !41070
  %i.cb = icmp eq i64 %i.ca, 1, !dbg !41070
  br i1 %i.cb, label %bb.ab, label %bb.u, !dbg !41070

bb.ab:                                            ; preds = %bb.aa
  call void @llvm.lifetime.start.p0(ptr nonnull %i.x), !dbg !41075, !noalias !40990
  call void @llvm.lifetime.start.p0(ptr nonnull %i.w), !dbg !41075, !noalias !40990
  store ptr %i.ah, ptr %i.w, align 8, !dbg !41076, !noalias !40990
  %i.cc = getelementptr inbounds nuw i8, ptr %i.w, i64 8, !dbg !41076
  store i64 4096, ptr %i.cc, align 8, !dbg !41076, !noalias !40990
  %i.cd = getelementptr inbounds nuw i8, ptr %i.w, i64 16, !dbg !41076
  store i64 4096, ptr %i.cd, align 8, !dbg !41076, !noalias !40990
  %i.ce = invoke { i64, ptr } @_RINvNtCsh8eZTKRCwoO_3std2io19default_read_to_endINtB2_4TakeQINtNtNtCs9VoZUfg37wD_6flate22gz4read14MultiGzDecoderRShEEECslpwjCj2YNBy_9polars_io(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.w, ptr noalias noundef nonnull align 8 dereferenceable(24) %i.aa, i64 noundef 0, i64 undef)
          to label %bb.ac unwind label %.loopexit.split-lp.loopexit.split-lp.i, !dbg !41078, !noalias !40979 ; 2 uses

bb.ac:                                            ; preds = %bb.ab
  %i.cf = extractvalue { i64, ptr } %i.ce, 0, !dbg !41078 ; 2 uses
  %i.cg = extractvalue { i64, ptr } %i.ce, 1, !dbg !41078 ; 2 uses
  store i64 %i.cf, ptr %i.x, align 8, !dbg !41078, !noalias !40990
  %i.ch = getelementptr inbounds nuw i8, ptr %i.x, i64 8, !dbg !41078 ; 2 uses
  store ptr %i.cg, ptr %i.ch, align 8, !dbg !41078, !noalias !40990
  %i.ci = trunc nuw i64 %i.cf to i1, !dbg !41080
  br i1 %i.ci, label %bb.ad, label %bb.ae, !dbg !41082

bb.ad:                                            ; preds = %bb.ac
  invoke void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCsh8eZTKRCwoO_3std2io5error5ErrorECslpwjCj2YNBy_9polars_io(ptr noalias noundef nonnull readonly align 8 dereferenceable(8) %i.ch)
          to label %bb.af unwind label %.loopexit.split-lp.loopexit.split-lp.i, !dbg !41083, !noalias !40979

bb.ae:                                            ; preds = %bb.ac
  %i.cj = icmp eq ptr %i.cg, null, !dbg !41080
  call void @llvm.lifetime.end.p0(ptr nonnull %i.x), !dbg !41085, !noalias !40990
  call void @llvm.lifetime.end.p0(ptr nonnull %i.w), !dbg !41086, !noalias !40990
  br i1 %i.cj, label %_RINvYNtNtNtNtNtCslpwjCj2YNBy_9polars_io3csv4read11splitfields5inner11SplitFieldsNtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator4foldjNCNvYB3_B1g_5count0EBd_.exit.i, label %.lr.ph.i.i, !dbg !41087

bb.af:                                            ; preds = %bb.ad
  call void @llvm.lifetime.end.p0(ptr nonnull %i.x), !dbg !41085, !noalias !40990
  store i64 -9223372036854775808, ptr %0, align 8, !dbg !41089, !alias.scope !40979, !noalias !41020
  call void @llvm.lifetime.end.p0(ptr nonnull %i.w), !dbg !41086, !noalias !40990
  br label %bb.ag, !dbg !41094

bb.ag:                                            ; preds = %bb.az, %bb.af, %bb.y
  invoke void @_RNvXso_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VechENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCslpwjCj2YNBy_9polars_io(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.aa)
          to label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VechEECslpwjCj2YNBy_9polars_io.exit46.i unwind label %bb.ah, !dbg !41096, !noalias !40979

bb.ah:                                            ; preds = %bb.ag
  %i.ck = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsgZ49sUHp3tW_5alloc7raw_vecINtB5_6RawVechENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCslpwjCj2YNBy_9polars_io(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.aa)
          to label %.body unwind label %bb.ai, !dbg !41098, !noalias !40979

bb.ai:                                            ; preds = %bb.ah
  %i.cl = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #37, !dbg !41096, !noalias !40979
  unreachable, !dbg !41096

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VechEECslpwjCj2YNBy_9polars_io.exit46.i: ; preds = %bb.ag
  invoke void @_RNvXs1_NtCsgZ49sUHp3tW_5alloc7raw_vecINtB5_6RawVechENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCslpwjCj2YNBy_9polars_io(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.aa)
          to label %.noexc15 unwind label %bb.cw, !dbg !41100

.noexc15:                                         ; preds = %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VechEECslpwjCj2YNBy_9polars_io.exit46.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aa), !dbg !41039, !noalias !40990
  br label %bb.cx, !dbg !41027

.lr.ph.i.i:                                       ; preds = %bb.ae
  %i.cm = load ptr, ptr %i.az, align 8, !dbg !41102, !noalias !40990, !nonnull !11, !noundef !11 ; 2 uses
  %i.cn = load i64, ptr %i.ba, align 8, !dbg !41114, !noalias !40990, !noundef !11 ; 3 uses
  %..i = select i1 %6, i8 %7, i8 34, !dbg !41115  ; 2 uses
  %i.co = icmp eq i64 %i.cn, 0, !dbg !41120       ; 2 uses
  br i1 %6, label %.lr.ph.split.us.i.preheader.i, label %.lr.ph.split.i.preheader.i

.lr.ph.split.i.preheader.i:                       ; preds = %.lr.ph.i.i
  br i1 %i.co, label %_RNvXs_NtNtNtNtCslpwjCj2YNBy_9polars_io3csv4read11splitfields5innerNtB4_11SplitFieldsNtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator4next.exit.loopexit17.i.i, label %.lr.ph.i.i.i.i, !dbg !41120

.lr.ph.split.us.i.preheader.i:                    ; preds = %.lr.ph.i.i
  br i1 %i.co, label %_RNvXs_NtNtNtNtCslpwjCj2YNBy_9polars_io3csv4read11splitfields5innerNtB4_11SplitFieldsNtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator4next.exit.loopexit.i.i, label %.lr.ph.i, !dbg !41120

.lr.ph.i:                                         ; preds = %.lr.ph.split.us.i.preheader.i, %.lr.ph.split.us.i.i
  %i.cp = phi ptr [ %i.dp, %.lr.ph.split.us.i.i ], [ %i.cm, %.lr.ph.split.us.i.preheader.i ] ; 6 uses
  %.sroa.0.014.us.i85.i = phi i64 [ %i.dq, %.lr.ph.split.us.i.i ], [ 0, %.lr.ph.split.us.i.preheader.i ] ; 5 uses
  %i.cq = phi i64 [ %i.do, %.lr.ph.split.us.i.i ], [ %i.cn, %.lr.ph.split.us.i.preheader.i ] ; 2 uses
  %i.cr = load i8, ptr %i.cp, align 1, !dbg !41128, !noalias !41129, !noundef !11
  %i.cs = icmp eq i8 %i.cr, %..i, !dbg !41135
  %i.ct = getelementptr inbounds nuw i8, ptr %i.cp, i64 %i.cq, !dbg !41136 ; 2 uses
  br i1 %i.cs, label %.lr.ph.i.us.i.i, label %.lr.ph.i.i.us.i.i, !dbg !41135

.lr.ph.i.i.us.i.i:                                ; preds = %.lr.ph.i, %bb.aj
  %.sroa.02.012.i.i.us.i.i = phi i64 [ %i.cy, %bb.aj ], [ 0, %.lr.ph.i ] ; 3 uses
  %i.cu = phi ptr [ %i.cx, %bb.aj ], [ %i.cp, %.lr.ph.i ] ; 2 uses
  %.val7.i.i.us.i.i = load i8, ptr %i.cu, align 1, !dbg !41140, !noalias !41142, !noundef !11 ; 2 uses
  %i.cv = icmp eq i8 %.val7.i.i.us.i.i, %5, !dbg !41146
  %i.cw = icmp eq i8 %.val7.i.i.us.i.i, %8
  %or.cond.i.i.us.i.i = or i1 %i.cv, %i.cw, !dbg !41146
  br i1 %or.cond.i.i.us.i.i, label %bb.ak, label %bb.aj, !dbg !41146

bb.aj:                                            ; preds = %.lr.ph.i.i.us.i.i
  %i.cx = getelementptr inbounds nuw i8, ptr %i.cu, i64 1, !dbg !41149 ; 2 uses
  %i.cy = add nuw i64 %.sroa.02.012.i.i.us.i.i, 1, !dbg !41152
  %i.cz = icmp eq ptr %i.cx, %i.ct, !dbg !41153
  br i1 %i.cz, label %_RNvXs_NtNtNtNtCslpwjCj2YNBy_9polars_io3csv4read11splitfields5innerNtB4_11SplitFieldsNtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator4next.exit.loopexit.i.i, label %.lr.ph.i.i.us.i.i, !dbg !41155

bb.ak:                                            ; preds = %.lr.ph.i.i.us.i.i
  %i.da = getelementptr inbounds nuw i8, ptr %i.cp, i64 %.sroa.02.012.i.i.us.i.i, !dbg !41156
  %i.db = load i8, ptr %i.da, align 1, !dbg !41159, !noalias !41129, !noundef !11
  %i.dc = icmp eq i8 %i.db, %8, !dbg !41159
  br i1 %i.dc, label %_RNvXs_NtNtNtNtCslpwjCj2YNBy_9polars_io3csv4read11splitfields5innerNtB4_11SplitFieldsNtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator4next.exit.loopexit.i.i, label %.lr.ph.split.us.i.i, !dbg !41159

.lr.ph.i.us.i.i:                                  ; preds = %.lr.ph.i, %bb.am
  %.sroa.05.053.i.us.i.i = phi i8 [ %spec.select.i.us.i.i, %bb.am ], [ 0, %.lr.ph.i ] ; 2 uses
  %.sroa.09.052.i.us.i.i = phi i32 [ %i.dj, %bb.am ], [ 0, %.lr.ph.i ] ; 3 uses
  %.sroa.012.051.i.us.i.i = phi ptr [ %i.dd, %bb.am ], [ %i.cp, %.lr.ph.i ] ; 2 uses
  %i.dd = getelementptr inbounds nuw i8, ptr %.sroa.012.051.i.us.i.i, i64 1, !dbg !41160 ; 2 uses
  %i.de = load i8, ptr %.sroa.012.051.i.us.i.i, align 1, !dbg !41163, !noalias !41129, !noundef !11 ; 3 uses
  %i.df = icmp eq i8 %i.de, %..i, !dbg !41164
  %i.dg = zext i1 %i.df to i8, !dbg !41164        ; 2 uses
  %spec.select.i.us.i.i = xor i8 %.sroa.05.053.i.us.i.i, %i.dg, !dbg !41164
  %.not.i.us.i.i = icmp eq i8 %.sroa.05.053.i.us.i.i, %i.dg, !dbg !41165
  br i1 %.not.i.us.i.i, label %bb.al, label %bb.am, !dbg !41165

bb.al:                                            ; preds = %.lr.ph.i.us.i.i
  %i.dh = icmp eq i8 %i.de, %5, !dbg !41166
  %i.di = icmp eq i8 %i.de, %8                    ; 2 uses
  %or.cond.i.us.i.i = or i1 %i.dh, %i.di, !dbg !41166
  br i1 %or.cond.i.us.i.i, label %bb.an, label %bb.am, !dbg !41166

bb.am:                                            ; preds = %bb.al, %.lr.ph.i.us.i.i
  %i.dj = add i32 %.sroa.09.052.i.us.i.i, 1, !dbg !41168
  %i.dk = icmp eq ptr %i.dd, %i.ct, !dbg !41169
  br i1 %i.dk, label %_RNvXs_NtNtNtNtCslpwjCj2YNBy_9polars_io3csv4read11splitfields5innerNtB4_11SplitFieldsNtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator4next.exit.loopexit.i.i, label %.lr.ph.i.us.i.i, !dbg !41171

bb.an:                                            ; preds = %bb.al
  %i.dl = icmp eq i32 %.sroa.09.052.i.us.i.i, 0
  %or.cond.i.i = select i1 %i.di, i1 true, i1 %i.dl, !dbg !41172
  br i1 %or.cond.i.i, label %_RNvXs_NtNtNtNtCslpwjCj2YNBy_9polars_io3csv4read11splitfields5innerNtB4_11SplitFieldsNtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator4next.exit.loopexit.i.i, label %bb.ao, !dbg !41172

bb.ao:                                            ; preds = %bb.an
  %i.dm = zext i32 %.sroa.09.052.i.us.i.i to i64, !dbg !41173
  br label %.lr.ph.split.us.i.i, !dbg !41174

.lr.ph.split.us.i.i:                              ; preds = %bb.ao, %bb.ak
  %.sroa.016.0.i.us.i.i = phi i64 [ %i.dm, %bb.ao ], [ %.sroa.02.012.i.i.us.i.i, %bb.ak ], !dbg !41175
  %i.dn = add nuw i64 %.sroa.016.0.i.us.i.i, 1, !dbg !41176 ; 2 uses
  %i.do = sub nuw i64 %i.cq, %i.dn, !dbg !41177   ; 2 uses
  %i.dp = getelementptr inbounds nuw i8, ptr %i.cp, i64 %i.dn, !dbg !41181
  %i.dq = add i64 %.sroa.0.014.us.i85.i, 1, !dbg !41183 ; 2 uses
  %i.dr = icmp eq i64 %i.do, 0, !dbg !41120
  br i1 %i.dr, label %_RNvXs_NtNtNtNtCslpwjCj2YNBy_9polars_io3csv4read11splitfields5innerNtB4_11SplitFieldsNtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator4next.exit.loopexit.i.i, label %.lr.ph.i, !dbg !41120

.lr.ph.i.i.i.i:                                   ; preds = %.lr.ph.split.i.preheader.i, %.lr.ph.split.i.i
  %i.ds = phi ptr [ %i.eg, %.lr.ph.split.i.i ], [ %i.cm, %.lr.ph.split.i.preheader.i ] ; 4 uses
  %.sroa.0.014.i83.i = phi i64 [ %i.eh, %.lr.ph.split.i.i ], [ 0, %.lr.ph.split.i.preheader.i ] ; 3 uses
  %i.dt = phi i64 [ %i.ef, %.lr.ph.split.i.i ], [ %i.cn, %.lr.ph.split.i.preheader.i ] ; 2 uses
  %i.du = getelementptr inbounds nuw i8, ptr %i.ds, i64 %i.dt, !dbg !41187
  br label %bb.ap, !dbg !41155

bb.ap:                                            ; preds = %bb.aq, %.lr.ph.i.i.i.i
  %.sroa.02.012.i.i.i.i = phi i64 [ 0, %.lr.ph.i.i.i.i ], [ %i.dz, %bb.aq ] ; 3 uses
  %i.dv = phi ptr [ %i.ds, %.lr.ph.i.i.i.i ], [ %i.dy, %bb.aq ] ; 2 uses
  %.val7.i.i.i.i = load i8, ptr %i.dv, align 1, !dbg !41140, !noalias !41142, !noundef !11 ; 2 uses
  %i.dw = icmp eq i8 %.val7.i.i.i.i, %5, !dbg !41146
  %i.dx = icmp eq i8 %.val7.i.i.i.i, %8
  %or.cond.i.i.i.i = or i1 %i.dw, %i.dx, !dbg !41146
  br i1 %or.cond.i.i.i.i, label %bb.ar, label %bb.aq, !dbg !41146

bb.aq:                                            ; preds = %bb.ap
  %i.dy = getelementptr inbounds nuw i8, ptr %i.dv, i64 1, !dbg !41149 ; 2 uses
  %i.dz = add nuw i64 %.sroa.02.012.i.i.i.i, 1, !dbg !41152
  %i.ea = icmp eq ptr %i.dy, %i.du, !dbg !41153
  br i1 %i.ea, label %_RNvXs_NtNtNtNtCslpwjCj2YNBy_9polars_io3csv4read11splitfields5innerNtB4_11SplitFieldsNtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator4next.exit.loopexit17.i.i, label %bb.ap, !dbg !41155

bb.ar:                                            ; preds = %bb.ap
  %i.eb = getelementptr inbounds nuw i8, ptr %i.ds, i64 %.sroa.02.012.i.i.i.i, !dbg !41156
  %i.ec = load i8, ptr %i.eb, align 1, !dbg !41159, !noalias !41129, !noundef !11
  %i.ed = icmp eq i8 %i.ec, %8, !dbg !41159
  br i1 %i.ed, label %_RNvXs_NtNtNtNtCslpwjCj2YNBy_9polars_io3csv4read11splitfields5innerNtB4_11SplitFieldsNtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator4next.exit.loopexit17.i.i, label %.lr.ph.split.i.i, !dbg !41159

.lr.ph.split.i.i:                                 ; preds = %bb.ar
  %i.ee = add nuw i64 %.sroa.02.012.i.i.i.i, 1, !dbg !41176 ; 2 uses
  %i.ef = sub nuw i64 %i.dt, %i.ee, !dbg !41177   ; 2 uses
  %i.eg = getelementptr inbounds nuw i8, ptr %i.ds, i64 %i.ee, !dbg !41181
  %i.eh = add i64 %.sroa.0.014.i83.i, 1, !dbg !41183 ; 2 uses
  %i.ei = icmp eq i64 %i.ef, 0, !dbg !41120
  br i1 %i.ei, label %_RNvXs_NtNtNtNtCslpwjCj2YNBy_9polars_io3csv4read11splitfields5innerNtB4_11SplitFieldsNtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator4next.exit.loopexit17.i.i, label %.lr.ph.i.i.i.i, !dbg !41120

_RNvXs_NtNtNtNtCslpwjCj2YNBy_9polars_io3csv4read11splitfields5innerNtB4_11SplitFieldsNtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator4next.exit.loopexit.i.i: ; preds = %.lr.ph.split.us.i.i, %bb.an, %bb.ak, %bb.aj, %bb.am, %.lr.ph.split.us.i.preheader.i
  %.sroa.0.014.us.i76.i = phi i64 [ %.sroa.0.014.us.i85.i, %bb.aj ], [ %.sroa.0.014.us.i85.i, %bb.am ], [ 0, %.lr.ph.split.us.i.preheader.i ], [ %.sroa.0.014.us.i85.i, %bb.ak ], [ %i.dq, %.lr.ph.split.us.i.i ], [ %.sroa.0.014.us.i85.i, %bb.an ]
  %i.ej = add i64 %.sroa.0.014.us.i76.i, 1, !dbg !41183
  br label %_RINvYNtNtNtNtNtCslpwjCj2YNBy_9polars_io3csv4read11splitfields5inner11SplitFieldsNtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator4foldjNCNvYB3_B1g_5count0EBd_.exit.i, !dbg !41191

_RNvXs_NtNtNtNtCslpwjCj2YNBy_9polars_io3csv4read11splitfields5innerNtB4_11SplitFieldsNtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator4next.exit.loopexit17.i.i: ; preds = %.lr.ph.split.i.i, %bb.ar, %bb.aq, %.lr.ph.split.i.preheader.i
  %.sroa.0.014.i79.i = phi i64 [ %.sroa.0.014.i83.i, %bb.aq ], [ 0, %.lr.ph.split.i.preheader.i ], [ %i.eh, %.lr.ph.split.i.i ], [ %.sroa.0.014.i83.i, %bb.ar ]
  %i.ek = add i64 %.sroa.0.014.i79.i, 1, !dbg !41183
  br label %_RINvYNtNtNtNtNtCslpwjCj2YNBy_9polars_io3csv4read11splitfields5inner11SplitFieldsNtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator4foldjNCNvYB3_B1g_5count0EBd_.exit.i, !dbg !41191

.outer.split.i:                                   ; preds = %.outer.split.i.preheader, %bb.ay
  %i.el = load i64, ptr %i.ba, align 8, !dbg !41192, !noalias !40990, !noundef !11 ; 4 uses
  %i.em = icmp ugt i64 %i.ey, %i.el, !dbg !41198
  br i1 %i.em, label %bb.at, label %bb.as, !dbg !41198, !prof !54

.split.i:                                         ; preds = %.outer.i, %_RINvYNtNtNtNtNtCslpwjCj2YNBy_9polars_io3csv4read11splitfields5inner11SplitFieldsNtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator4foldjNCNvYB3_B1g_5count0EBd_.exit.i
  %.sroa.023.0.ph.i173 = phi i64 [ 0, %_RINvYNtNtNtNtNtCslpwjCj2YNBy_9polars_io3csv4read11splitfields5inner11SplitFieldsNtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator4foldjNCNvYB3_B1g_5count0EBd_.exit.i ], [ %i.ex, %.outer.i ] ; 2 uses
  %i.en = load i64, ptr %i.ba, align 8, !noalias !40990
  %i.eo = icmp ugt i64 %.sroa.023.0.ph.i173, %i.en
  br i1 %i.eo, label %.split.i.thread, label %bb.ba, !dbg !41203

bb.as:                                            ; preds = %.outer.split.i
  %i.ep = load ptr, ptr %i.az, align 8, !dbg !41204, !noalias !40990, !nonnull !11, !noundef !11
  %i.eq = sub nuw i64 %i.el, %i.ey, !dbg !41213
  %i.er = getelementptr inbounds nuw i8, ptr %i.ep, i64 %i.ey, !dbg !41214
  %i.es = invoke { i64, i64 } @_RNvNtNtNtCslpwjCj2YNBy_9polars_io3csv4read6parser18next_line_position(ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.er, i64 noundef %i.eq, i64 noundef 1, i64 %.sroa.019.0.i, i8 noundef %5, i1 noundef zeroext %6, i8 %7, i8 noundef %8)
          to label %bb.au unwind label %.loopexit.i, !dbg !41219, !noalias !40979 ; 2 uses

bb.at:                                            ; preds = %.outer.split.i
  invoke void @_RNvNtNtCscgRAwXFJnXP_4core5slice5index16slice_index_fail(i64 noundef %i.ey, i64 noundef %i.el, i64 noundef %i.el, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @20) #36
          to label %bb.bb unwind label %.loopexit.split-lp.loopexit.split-lp.i, !dbg !41220, !noalias !40979

bb.au:                                            ; preds = %bb.as
  %i.et = extractvalue { i64, i64 } %i.es, 0, !dbg !41219
  %i.eu = trunc nuw i64 %i.et to i1, !dbg !41221
  br i1 %i.eu, label %.outer.i, label %bb.av, !dbg !41221

.outer.i:                                         ; preds = %bb.au
  %i.ev = extractvalue { i64, i64 } %i.es, 1, !dbg !41219
  %i.ew = add nuw i64 %.sroa.020.0.ph.i254, 1, !dbg !41222 ; 2 uses
  %i.ex = add i64 %i.ev, %.sroa.023.0.ph.i253, !dbg !41224 ; 2 uses
  %exitcond.not.not.i.not = icmp eq i64 %i.ew, %4
  br i1 %exitcond.not.not.i.not, label %.split.i, label %.outer.split.i.preheader, !dbg !41072

.outer.split.i.preheader:                         ; preds = %_RINvYNtNtNtNtNtCslpwjCj2YNBy_9polars_io3csv4read11splitfields5inner11SplitFieldsNtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator4foldjNCNvYB3_B1g_5count0EBd_.exit.i, %.outer.i
  %.sroa.020.0.ph.i254 = phi i64 [ %i.ew, %.outer.i ], [ 0, %_RINvYNtNtNtNtNtCslpwjCj2YNBy_9polars_io3csv4read11splitfields5inner11SplitFieldsNtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator4foldjNCNvYB3_B1g_5count0EBd_.exit.i ]
  %.sroa.023.0.ph.i253 = phi i64 [ %i.ex, %.outer.i ], [ 0, %_RINvYNtNtNtNtNtCslpwjCj2YNBy_9polars_io3csv4read11splitfields5inner11SplitFieldsNtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator4foldjNCNvYB3_B1g_5count0EBd_.exit.i ] ; 2 uses
  %i.ey = add i64 %.sroa.023.0.ph.i253, 1, !dbg !41198 ; 4 uses
  br label %.outer.split.i, !dbg !41198

bb.av:                                            ; preds = %bb.au
  call void @llvm.lifetime.start.p0(ptr nonnull %i.v), !dbg !41225, !noalias !40990
  call void @llvm.lifetime.start.p0(ptr nonnull %i.u), !dbg !41225, !noalias !40990
  store ptr %i.ah, ptr %i.u, align 8, !dbg !41226, !noalias !40990
  store i64 4096, ptr %i.bx, align 8, !dbg !41226, !noalias !40990
  store i64 4096, ptr %i.by, align 8, !dbg !41226, !noalias !40990
  %i.ez = invoke { i64, ptr } @_RINvNtCsh8eZTKRCwoO_3std2io19default_read_to_endINtB2_4TakeQINtNtNtCs9VoZUfg37wD_6flate22gz4read14MultiGzDecoderRShEEECslpwjCj2YNBy_9polars_io(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.u, ptr noalias noundef nonnull align 8 dereferenceable(24) %i.aa, i64 noundef 0, i64 undef)
          to label %bb.aw unwind label %.loopexit.i, !dbg !41228, !noalias !40979 ; 2 uses

bb.aw:                                            ; preds = %bb.av
  %i.fa = extractvalue { i64, ptr } %i.ez, 0, !dbg !41228 ; 2 uses
  %i.fb = extractvalue { i64, ptr } %i.ez, 1, !dbg !41228 ; 2 uses
  store i64 %i.fa, ptr %i.v, align 8, !dbg !41228, !noalias !40990
  store ptr %i.fb, ptr %i.bz, align 8, !dbg !41228, !noalias !40990
  %i.fc = trunc nuw i64 %i.fa to i1, !dbg !41230
  br i1 %i.fc, label %bb.ax, label %bb.ay, !dbg !41232

bb.ax:                                            ; preds = %bb.aw
  invoke void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCsh8eZTKRCwoO_3std2io5error5ErrorECslpwjCj2YNBy_9polars_io(ptr noalias noundef nonnull readonly align 8 dereferenceable(8) %i.bz)
          to label %bb.az unwind label %.loopexit.split-lp.loopexit.split-lp.i, !dbg !41233, !noalias !40979

bb.ay:                                            ; preds = %bb.aw
  %i.fd = icmp eq ptr %i.fb, null, !dbg !41230
  call void @llvm.lifetime.end.p0(ptr nonnull %i.v), !dbg !41235, !noalias !40990
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u), !dbg !41236, !noalias !40990
  br i1 %i.fd, label %.split.i.thread, label %.outer.split.i, !dbg !41237

bb.az:                                            ; preds = %bb.ax
  call void @llvm.lifetime.end.p0(ptr nonnull %i.v), !dbg !41235, !noalias !40990
  store i64 -9223372036854775808, ptr %0, align 8, !dbg !41239, !alias.scope !40979, !noalias !41020
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u), !dbg !41236, !noalias !40990
  br label %bb.ag, !dbg !41054

.split.i.thread:                                  ; preds = %bb.ay, %bb.ba, %.split.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ad, ptr noundef nonnull align 8 dereferenceable(24) %i.aa, i64 24, i1 false), !dbg !41244, !noalias !40990
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aa), !dbg !41039, !noalias !40990
  br label %bb.s, !dbg !41245

bb.ba:                                            ; preds = %.split.i
  store i64 %.sroa.023.0.ph.i173, ptr %i.ba, align 8, !dbg !41246, !noalias !40990
  br label %.split.i.thread, !dbg !41251

bb.bb:                                            ; preds = %bb.at
  unreachable

bb.bc:                                            ; preds = %bb.d, %bb.d, %bb.d, %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ag), !dbg !41252
  call void @_RNvMs2_NtNtCs9VoZUfg37wD_6flate24zlib4readINtB5_11ZlibDecoderRShE3newCslpwjCj2YNBy_9polars_io(ptr noalias noundef nonnull sret([192 x i8]) align 8 captures(none) dereferenceable(192) %i.ag, ptr noalias noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef %2), !dbg !41253
  tail call void @llvm.experimental.noalias.scope.decl(metadata !41254), !dbg !41257
  call void @llvm.lifetime.start.p0(ptr nonnull %i.t), !dbg !41259
  %i.fe = trunc nuw i64 %3 to i1, !dbg !41259
  br i1 %i.fe, label %bb.bd, label %bb.be, !dbg !41259

bb.bd:                                            ; preds = %bb.bc
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q), !dbg !41263, !noalias !41265
  store i64 0, ptr %i.q, align 8, !dbg !41267, !noalias !41265
  %i.ff = getelementptr inbounds nuw i8, ptr %i.q, i64 8, !dbg !41267 ; 4 uses
  store ptr inttoptr (i64 1 to ptr), ptr %i.ff, align 8, !dbg !41267, !noalias !41265
  %i.fg = getelementptr inbounds nuw i8, ptr %i.q, i64 16, !dbg !41267 ; 6 uses
  store i64 0, ptr %i.fg, align 8, !dbg !41267, !noalias !41265
  %i.fh = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  %i.fi = getelementptr inbounds nuw i8, ptr %i.o, i64 16
  %i.fj = getelementptr inbounds nuw i8, ptr %i.p, i64 8 ; 2 uses
  br label %bb.bo, !dbg !41270

bb.be:                                            ; preds = %bb.bc
  call void @llvm.lifetime.start.p0(ptr nonnull %i.s), !dbg !41273, !noalias !41265
  store i64 0, ptr %i.s, align 8, !dbg !41274, !noalias !41265
  %i.fk = getelementptr inbounds nuw i8, ptr %i.s, i64 8, !dbg !41274
  store ptr inttoptr (i64 1 to ptr), ptr %i.fk, align 8, !dbg !41274, !noalias !41265
  %i.fl = getelementptr inbounds nuw i8, ptr %i.s, i64 16, !dbg !41274
  store i64 0, ptr %i.fl, align 8, !dbg !41274, !noalias !41265
  call void @llvm.lifetime.start.p0(ptr nonnull %i.r), !dbg !41276, !noalias !41265
  %i.fm = invoke { i64, ptr } @_RNvYINtNtNtCs9VoZUfg37wD_6flate24zlib4read11ZlibDecoderRShENtNtCsh8eZTKRCwoO_3std2io4Read11read_to_endCslpwjCj2YNBy_9polars_io(ptr noalias noundef nonnull align 8 dereferenceable(192) %i.ag, ptr noalias noundef nonnull align 8 dereferenceable(24) %i.s)
          to label %bb.bg unwind label %bb.bf, !dbg !41278, !noalias !41254 ; 2 uses

bb.bf:                                            ; preds = %bb.bh, %bb.be
  %i.fn = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VechEECslpwjCj2YNBy_9polars_io(ptr noalias noundef align 8 dereferenceable(24) %i.s) #35
          to label %.body67 unwind label %bb.bn, !dbg !41279, !noalias !41254

bb.bg:                                            ; preds = %bb.be
  %i.fo = extractvalue { i64, ptr } %i.fm, 0, !dbg !41276 ; 2 uses
  %i.fp = extractvalue { i64, ptr } %i.fm, 1, !dbg !41276
  store i64 %i.fo, ptr %i.r, align 8, !dbg !41276, !noalias !41265
  %i.fq = getelementptr inbounds nuw i8, ptr %i.r, i64 8, !dbg !41276 ; 2 uses
  store ptr %i.fp, ptr %i.fq, align 8, !dbg !41276, !noalias !41265
  %i.fr = trunc nuw i64 %i.fo to i1, !dbg !41280
  br i1 %i.fr, label %bb.bh, label %bb.bi, !dbg !41283

bb.bh:                                            ; preds = %bb.bg
  invoke void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCsh8eZTKRCwoO_3std2io5error5ErrorECslpwjCj2YNBy_9polars_io(ptr noalias noundef nonnull readonly align 8 dereferenceable(8) %i.fq)
          to label %bb.bj unwind label %bb.bf, !dbg !41284, !noalias !41254

bb.bi:                                            ; preds = %bb.bg
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r), !dbg !41286, !noalias !41265
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.t, ptr noundef nonnull align 8 dereferenceable(24) %i.s, i64 24, i1 false), !dbg !41287, !noalias !41265
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s), !dbg !41279, !noalias !41265
  br label %bb.bm, !dbg !41279

bb.bj:                                            ; preds = %bb.bh
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r), !dbg !41286, !noalias !41265
end_hunk_1
begin_hunk_2_@_RNvNtNtNtCslpwjCj2YNBy_9polars_io3csv4read5utils10decompress:bb.a
bb.bn:                                            ; preds = %.loopexit.split-lp.i21, %bb.bf
  %i.fu = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #37, !dbg !41305, !noalias !41254
  unreachable, !dbg !41305

bb.bo:                                            ; preds = %bb.bu, %bb.bd
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p), !dbg !41306, !noalias !41265
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o), !dbg !41306, !noalias !41265
  store ptr %i.ag, ptr %i.o, align 8, !dbg !41307, !noalias !41265
  store i64 4096, ptr %i.fh, align 8, !dbg !41307, !noalias !41265
  store i64 4096, ptr %i.fi, align 8, !dbg !41307, !noalias !41265
  %i.fv = invoke { i64, ptr } @_RINvNtCsh8eZTKRCwoO_3std2io19default_read_to_endINtB2_4TakeQINtNtNtCs9VoZUfg37wD_6flate24zlib4read11ZlibDecoderRShEEECslpwjCj2YNBy_9polars_io(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.o, ptr noalias noundef nonnull align 8 dereferenceable(24) %i.q, i64 noundef 0, i64 undef)
          to label %bb.bp unwind label %.loopexit.split-lp.loopexit.i19, !dbg !41310, !noalias !41254 ; 2 uses

.loopexit.i44:                                    ; preds = %bb.cp, %bb.cm
  %lpad.loopexit.i45 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp.i21

.loopexit.split-lp.loopexit.i19:                  ; preds = %bb.bt, %bb.bo
  %lpad.loopexit52.i20 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp.i21

.loopexit.split-lp.loopexit.split-lp.i23:         ; preds = %bb.cr, %bb.cn, %bb.bx, %bb.bv, %bb.bq
  %lpad.loopexit.split-lp53.i24 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp.i21

.loopexit.split-lp.i21:                           ; preds = %.loopexit.split-lp.loopexit.split-lp.i23, %.loopexit.split-lp.loopexit.i19, %.loopexit.i44
  %lpad.phi.i22 = phi { ptr, i32 } [ %lpad.loopexit.i45, %.loopexit.i44 ], [ %lpad.loopexit52.i20, %.loopexit.split-lp.loopexit.i19 ], [ %lpad.loopexit.split-lp53.i24, %.loopexit.split-lp.loopexit.split-lp.i23 ]
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VechEECslpwjCj2YNBy_9polars_io(ptr noalias noundef align 8 dereferenceable(24) %i.q) #35
          to label %.body67 unwind label %bb.bn, !dbg !41313, !noalias !41254

bb.bp:                                            ; preds = %bb.bo
  %i.fw = extractvalue { i64, ptr } %i.fv, 0, !dbg !41310 ; 2 uses
  %i.fx = extractvalue { i64, ptr } %i.fv, 1, !dbg !41310 ; 2 uses
  store i64 %i.fw, ptr %i.p, align 8, !dbg !41310, !noalias !41265
  store ptr %i.fx, ptr %i.fj, align 8, !dbg !41310, !noalias !41265
  %i.fy = trunc nuw i64 %i.fw to i1, !dbg !41314
  br i1 %i.fy, label %bb.bq, label %bb.br, !dbg !41316

bb.bq:                                            ; preds = %bb.bp
  invoke void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCsh8eZTKRCwoO_3std2io5error5ErrorECslpwjCj2YNBy_9polars_io(ptr noalias noundef nonnull readonly align 8 dereferenceable(8) %i.fj)
          to label %bb.bs unwind label %.loopexit.split-lp.loopexit.split-lp.i23, !dbg !41317, !noalias !41254

bb.br:                                            ; preds = %bb.bp
  %i.fz = icmp eq ptr %i.fx, null, !dbg !41314
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p), !dbg !41319, !noalias !41265
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o), !dbg !41320, !noalias !41265
  br i1 %i.fz, label %_RINvYNtNtNtNtNtCslpwjCj2YNBy_9polars_io3csv4read11splitfields5inner11SplitFieldsNtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator4foldjNCNvYB3_B1g_5count0EBd_.exit.i35, label %bb.bt, !dbg !41321

bb.bs:                                            ; preds = %bb.bq
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p), !dbg !41319, !noalias !41265
  store i64 -9223372036854775808, ptr %0, align 8, !dbg !41323, !alias.scope !41254, !noalias !41294
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o), !dbg !41320, !noalias !41265
  br label %bb.ca, !dbg !41328

bb.bt:                                            ; preds = %bb.br
  %i.ga = load ptr, ptr %i.ff, align 8, !dbg !41330, !noalias !41265, !nonnull !11, !noundef !11
  %i.gb = load i64, ptr %i.fg, align 8, !dbg !41343, !noalias !41265, !noundef !11
  %i.gc = invoke { i64, i64 } @_RNvNtNtNtCslpwjCj2YNBy_9polars_io3csv4read6parser24next_line_position_naive(ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.ga, i64 noundef %i.gb, i8 noundef %8)
          to label %bb.bu unwind label %.loopexit.split-lp.loopexit.i19, !dbg !41344, !noalias !41254

_RINvYNtNtNtNtNtCslpwjCj2YNBy_9polars_io3csv4read11splitfields5inner11SplitFieldsNtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator4foldjNCNvYB3_B1g_5count0EBd_.exit.i35: ; preds = %bb.br, %_RNvXs_NtNtNtNtCslpwjCj2YNBy_9polars_io3csv4read11splitfields5innerNtB4_11SplitFieldsNtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator4next.exit.loopexit17.i.i33, %_RNvXs_NtNtNtNtCslpwjCj2YNBy_9polars_io3csv4read11splitfields5innerNtB4_11SplitFieldsNtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator4next.exit.loopexit.i.i55, %bb.by
  %.sroa.019.0.i36 = phi i64 [ %i.ip, %_RNvXs_NtNtNtNtCslpwjCj2YNBy_9polars_io3csv4read11splitfields5innerNtB4_11SplitFieldsNtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator4next.exit.loopexit.i.i55 ], [ 0, %bb.by ], [ %i.iq, %_RNvXs_NtNtNtNtCslpwjCj2YNBy_9polars_io3csv4read11splitfields5innerNtB4_11SplitFieldsNtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator4next.exit.loopexit17.i.i33 ], [ 0, %bb.br ], !dbg !41345
  %i.gd = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  %i.ge = getelementptr inbounds nuw i8, ptr %i.k, i64 16
  %i.gf = getelementptr inbounds nuw i8, ptr %i.l, i64 8 ; 2 uses
  %exitcond.not.not.i40246.not = icmp eq i64 %4, 0
  br i1 %exitcond.not.not.i40246.not, label %.split.i41, label %.outer.split.i43.preheader, !dbg !41346

bb.bu:                                            ; preds = %bb.bt
  %i.gg = extractvalue { i64, i64 } %i.gc, 0, !dbg !41344
  %i.gh = icmp eq i64 %i.gg, 1, !dbg !41344
  br i1 %i.gh, label %bb.bv, label %bb.bo, !dbg !41344

bb.bv:                                            ; preds = %bb.bu
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n), !dbg !41349, !noalias !41265
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m), !dbg !41349, !noalias !41265
  store ptr %i.ag, ptr %i.m, align 8, !dbg !41350, !noalias !41265
  %i.gi = getelementptr inbounds nuw i8, ptr %i.m, i64 8, !dbg !41350
  store i64 4096, ptr %i.gi, align 8, !dbg !41350, !noalias !41265
  %i.gj = getelementptr inbounds nuw i8, ptr %i.m, i64 16, !dbg !41350
  store i64 4096, ptr %i.gj, align 8, !dbg !41350, !noalias !41265
  %i.gk = invoke { i64, ptr } @_RINvNtCsh8eZTKRCwoO_3std2io19default_read_to_endINtB2_4TakeQINtNtNtCs9VoZUfg37wD_6flate24zlib4read11ZlibDecoderRShEEECslpwjCj2YNBy_9polars_io(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.m, ptr noalias noundef nonnull align 8 dereferenceable(24) %i.q, i64 noundef 0, i64 undef)
          to label %bb.bw unwind label %.loopexit.split-lp.loopexit.split-lp.i23, !dbg !41352, !noalias !41254 ; 2 uses

bb.bw:                                            ; preds = %bb.bv
  %i.gl = extractvalue { i64, ptr } %i.gk, 0, !dbg !41352 ; 2 uses
  %i.gm = extractvalue { i64, ptr } %i.gk, 1, !dbg !41352 ; 2 uses
  store i64 %i.gl, ptr %i.n, align 8, !dbg !41352, !noalias !41265
  %i.gn = getelementptr inbounds nuw i8, ptr %i.n, i64 8, !dbg !41352 ; 2 uses
  store ptr %i.gm, ptr %i.gn, align 8, !dbg !41352, !noalias !41265
  %i.go = trunc nuw i64 %i.gl to i1, !dbg !41354
  br i1 %i.go, label %bb.bx, label %bb.by, !dbg !41356

bb.bx:                                            ; preds = %bb.bw
  invoke void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCsh8eZTKRCwoO_3std2io5error5ErrorECslpwjCj2YNBy_9polars_io(ptr noalias noundef nonnull readonly align 8 dereferenceable(8) %i.gn)
          to label %bb.bz unwind label %.loopexit.split-lp.loopexit.split-lp.i23, !dbg !41357, !noalias !41254

bb.by:                                            ; preds = %bb.bw
  %i.gp = icmp eq ptr %i.gm, null, !dbg !41354
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n), !dbg !41359, !noalias !41265
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m), !dbg !41360, !noalias !41265
  br i1 %i.gp, label %_RINvYNtNtNtNtNtCslpwjCj2YNBy_9polars_io3csv4read11splitfields5inner11SplitFieldsNtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator4foldjNCNvYB3_B1g_5count0EBd_.exit.i35, label %.lr.ph.i.i25, !dbg !41361

bb.bz:                                            ; preds = %bb.bx
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n), !dbg !41359, !noalias !41265
  store i64 -9223372036854775808, ptr %0, align 8, !dbg !41363, !alias.scope !41254, !noalias !41294
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m), !dbg !41360, !noalias !41265
  br label %bb.ca, !dbg !41368

bb.ca:                                            ; preds = %bb.ct, %bb.bz, %bb.bs
  invoke void @_RNvXso_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VechENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCslpwjCj2YNBy_9polars_io(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.q)
          to label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VechEECslpwjCj2YNBy_9polars_io.exit46.i46 unwind label %bb.cb, !dbg !41370, !noalias !41254

bb.cb:                                            ; preds = %bb.ca
  %i.gq = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsgZ49sUHp3tW_5alloc7raw_vecINtB5_6RawVechENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCslpwjCj2YNBy_9polars_io(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.q)
          to label %.body67 unwind label %bb.cc, !dbg !41372, !noalias !41254

bb.cc:                                            ; preds = %bb.cb
  %i.gr = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #37, !dbg !41370, !noalias !41254
  unreachable, !dbg !41370

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VechEECslpwjCj2YNBy_9polars_io.exit46.i46: ; preds = %bb.ca
  invoke void @_RNvXs1_NtCsgZ49sUHp3tW_5alloc7raw_vecINtB5_6RawVechENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCslpwjCj2YNBy_9polars_io(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.q)
          to label %.noexc70 unwind label %bb.dd, !dbg !41374

.noexc70:                                         ; preds = %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VechEECslpwjCj2YNBy_9polars_io.exit46.i46
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q), !dbg !41313, !noalias !41265
  br label %bb.de, !dbg !41301

.lr.ph.i.i25:                                     ; preds = %bb.by
  %i.gs = load ptr, ptr %i.ff, align 8, !dbg !41376, !noalias !41265, !nonnull !11, !noundef !11 ; 2 uses
  %i.gt = load i64, ptr %i.fg, align 8, !dbg !41388, !noalias !41265, !noundef !11 ; 3 uses
  %..i26 = select i1 %6, i8 %7, i8 34, !dbg !41389 ; 2 uses
  %i.gu = icmp eq i64 %i.gt, 0, !dbg !41394       ; 2 uses
  br i1 %6, label %.lr.ph.split.us.i.preheader.i48, label %.lr.ph.split.i.preheader.i27

.lr.ph.split.i.preheader.i27:                     ; preds = %.lr.ph.i.i25
  br i1 %i.gu, label %_RNvXs_NtNtNtNtCslpwjCj2YNBy_9polars_io3csv4read11splitfields5innerNtB4_11SplitFieldsNtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator4next.exit.loopexit17.i.i33, label %.lr.ph.i.i.i.i28, !dbg !41394

.lr.ph.split.us.i.preheader.i48:                  ; preds = %.lr.ph.i.i25
  br i1 %i.gu, label %_RNvXs_NtNtNtNtCslpwjCj2YNBy_9polars_io3csv4read11splitfields5innerNtB4_11SplitFieldsNtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator4next.exit.loopexit.i.i55, label %.lr.ph.i49, !dbg !41394

.lr.ph.i49:                                       ; preds = %.lr.ph.split.us.i.preheader.i48, %.lr.ph.split.us.i.i57
  %i.gv = phi ptr [ %i.hv, %.lr.ph.split.us.i.i57 ], [ %i.gs, %.lr.ph.split.us.i.preheader.i48 ] ; 6 uses
  %.sroa.0.014.us.i85.i50 = phi i64 [ %i.hw, %.lr.ph.split.us.i.i57 ], [ 0, %.lr.ph.split.us.i.preheader.i48 ] ; 5 uses
  %i.gw = phi i64 [ %i.hu, %.lr.ph.split.us.i.i57 ], [ %i.gt, %.lr.ph.split.us.i.preheader.i48 ] ; 2 uses
  %i.gx = load i8, ptr %i.gv, align 1, !dbg !41399, !noalias !41400, !noundef !11
  %i.gy = icmp eq i8 %i.gx, %..i26, !dbg !41406
  %i.gz = getelementptr inbounds nuw i8, ptr %i.gv, i64 %i.gw, !dbg !41407 ; 2 uses
  br i1 %i.gy, label %.lr.ph.i.us.i.i59, label %.lr.ph.i.i.us.i.i51, !dbg !41406

.lr.ph.i.i.us.i.i51:                              ; preds = %.lr.ph.i49, %bb.cd
  %.sroa.02.012.i.i.us.i.i52 = phi i64 [ %i.he, %bb.cd ], [ 0, %.lr.ph.i49 ] ; 3 uses
  %i.ha = phi ptr [ %i.hd, %bb.cd ], [ %i.gv, %.lr.ph.i49 ] ; 2 uses
  %.val7.i.i.us.i.i53 = load i8, ptr %i.ha, align 1, !dbg !41411, !noalias !41413, !noundef !11 ; 2 uses
  %i.hb = icmp eq i8 %.val7.i.i.us.i.i53, %5, !dbg !41417
  %i.hc = icmp eq i8 %.val7.i.i.us.i.i53, %8
  %or.cond.i.i.us.i.i54 = or i1 %i.hb, %i.hc, !dbg !41417
  br i1 %or.cond.i.i.us.i.i54, label %bb.ce, label %bb.cd, !dbg !41417

bb.cd:                                            ; preds = %.lr.ph.i.i.us.i.i51
  %i.hd = getelementptr inbounds nuw i8, ptr %i.ha, i64 1, !dbg !41420 ; 2 uses
  %i.he = add nuw i64 %.sroa.02.012.i.i.us.i.i52, 1, !dbg !41423
  %i.hf = icmp eq ptr %i.hd, %i.gz, !dbg !41424
  br i1 %i.hf, label %_RNvXs_NtNtNtNtCslpwjCj2YNBy_9polars_io3csv4read11splitfields5innerNtB4_11SplitFieldsNtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator4next.exit.loopexit.i.i55, label %.lr.ph.i.i.us.i.i51, !dbg !41426

bb.ce:                                            ; preds = %.lr.ph.i.i.us.i.i51
  %i.hg = getelementptr inbounds nuw i8, ptr %i.gv, i64 %.sroa.02.012.i.i.us.i.i52, !dbg !41427
  %i.hh = load i8, ptr %i.hg, align 1, !dbg !41430, !noalias !41400, !noundef !11
  %i.hi = icmp eq i8 %i.hh, %8, !dbg !41430
  br i1 %i.hi, label %_RNvXs_NtNtNtNtCslpwjCj2YNBy_9polars_io3csv4read11splitfields5innerNtB4_11SplitFieldsNtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator4next.exit.loopexit.i.i55, label %.lr.ph.split.us.i.i57, !dbg !41430

.lr.ph.i.us.i.i59:                                ; preds = %.lr.ph.i49, %bb.cg
  %.sroa.05.053.i.us.i.i60 = phi i8 [ %spec.select.i.us.i.i63, %bb.cg ], [ 0, %.lr.ph.i49 ] ; 2 uses
  %.sroa.09.052.i.us.i.i61 = phi i32 [ %i.hp, %bb.cg ], [ 0, %.lr.ph.i49 ] ; 3 uses
  %.sroa.012.051.i.us.i.i62 = phi ptr [ %i.hj, %bb.cg ], [ %i.gv, %.lr.ph.i49 ] ; 2 uses
  %i.hj = getelementptr inbounds nuw i8, ptr %.sroa.012.051.i.us.i.i62, i64 1, !dbg !41431 ; 2 uses
  %i.hk = load i8, ptr %.sroa.012.051.i.us.i.i62, align 1, !dbg !41434, !noalias !41400, !noundef !11 ; 3 uses
  %i.hl = icmp eq i8 %i.hk, %..i26, !dbg !41435
  %i.hm = zext i1 %i.hl to i8, !dbg !41435        ; 2 uses
  %spec.select.i.us.i.i63 = xor i8 %.sroa.05.053.i.us.i.i60, %i.hm, !dbg !41435
  %.not.i.us.i.i64 = icmp eq i8 %.sroa.05.053.i.us.i.i60, %i.hm, !dbg !41436
  br i1 %.not.i.us.i.i64, label %bb.cf, label %bb.cg, !dbg !41436

bb.cf:                                            ; preds = %.lr.ph.i.us.i.i59
  %i.hn = icmp eq i8 %i.hk, %5, !dbg !41437
  %i.ho = icmp eq i8 %i.hk, %8                    ; 2 uses
  %or.cond.i.us.i.i65 = or i1 %i.hn, %i.ho, !dbg !41437
  br i1 %or.cond.i.us.i.i65, label %bb.ch, label %bb.cg, !dbg !41437

bb.cg:                                            ; preds = %bb.cf, %.lr.ph.i.us.i.i59
  %i.hp = add i32 %.sroa.09.052.i.us.i.i61, 1, !dbg !41439
  %i.hq = icmp eq ptr %i.hj, %i.gz, !dbg !41440
  br i1 %i.hq, label %_RNvXs_NtNtNtNtCslpwjCj2YNBy_9polars_io3csv4read11splitfields5innerNtB4_11SplitFieldsNtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator4next.exit.loopexit.i.i55, label %.lr.ph.i.us.i.i59, !dbg !41442

bb.ch:                                            ; preds = %bb.cf
  %i.hr = icmp eq i32 %.sroa.09.052.i.us.i.i61, 0
  %or.cond.i.i66 = select i1 %i.ho, i1 true, i1 %i.hr, !dbg !41443
  br i1 %or.cond.i.i66, label %_RNvXs_NtNtNtNtCslpwjCj2YNBy_9polars_io3csv4read11splitfields5innerNtB4_11SplitFieldsNtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator4next.exit.loopexit.i.i55, label %bb.ci, !dbg !41443

bb.ci:                                            ; preds = %bb.ch
  %i.hs = zext i32 %.sroa.09.052.i.us.i.i61 to i64, !dbg !41444
  br label %.lr.ph.split.us.i.i57, !dbg !41445

.lr.ph.split.us.i.i57:                            ; preds = %bb.ci, %bb.ce
  %.sroa.016.0.i.us.i.i58 = phi i64 [ %i.hs, %bb.ci ], [ %.sroa.02.012.i.i.us.i.i52, %bb.ce ], !dbg !41446
  %i.ht = add nuw i64 %.sroa.016.0.i.us.i.i58, 1, !dbg !41447 ; 2 uses
  %i.hu = sub nuw i64 %i.gw, %i.ht, !dbg !41448   ; 2 uses
  %i.hv = getelementptr inbounds nuw i8, ptr %i.gv, i64 %i.ht, !dbg !41452
  %i.hw = add i64 %.sroa.0.014.us.i85.i50, 1, !dbg !41454 ; 2 uses
  %i.hx = icmp eq i64 %i.hu, 0, !dbg !41394
  br i1 %i.hx, label %_RNvXs_NtNtNtNtCslpwjCj2YNBy_9polars_io3csv4read11splitfields5innerNtB4_11SplitFieldsNtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator4next.exit.loopexit.i.i55, label %.lr.ph.i49, !dbg !41394

.lr.ph.i.i.i.i28:                                 ; preds = %.lr.ph.split.i.preheader.i27, %.lr.ph.split.i.i47
  %i.hy = phi ptr [ %i.im, %.lr.ph.split.i.i47 ], [ %i.gs, %.lr.ph.split.i.preheader.i27 ] ; 4 uses
  %.sroa.0.014.i83.i29 = phi i64 [ %i.in, %.lr.ph.split.i.i47 ], [ 0, %.lr.ph.split.i.preheader.i27 ] ; 3 uses
  %i.hz = phi i64 [ %i.il, %.lr.ph.split.i.i47 ], [ %i.gt, %.lr.ph.split.i.preheader.i27 ] ; 2 uses
  %i.ia = getelementptr inbounds nuw i8, ptr %i.hy, i64 %i.hz, !dbg !41456
  br label %bb.cj, !dbg !41426

bb.cj:                                            ; preds = %bb.ck, %.lr.ph.i.i.i.i28
  %.sroa.02.012.i.i.i.i30 = phi i64 [ 0, %.lr.ph.i.i.i.i28 ], [ %i.if, %bb.ck ] ; 3 uses
  %i.ib = phi ptr [ %i.hy, %.lr.ph.i.i.i.i28 ], [ %i.ie, %bb.ck ] ; 2 uses
  %.val7.i.i.i.i31 = load i8, ptr %i.ib, align 1, !dbg !41411, !noalias !41413, !noundef !11 ; 2 uses
  %i.ic = icmp eq i8 %.val7.i.i.i.i31, %5, !dbg !41417
  %i.id = icmp eq i8 %.val7.i.i.i.i31, %8
  %or.cond.i.i.i.i32 = or i1 %i.ic, %i.id, !dbg !41417
  br i1 %or.cond.i.i.i.i32, label %bb.cl, label %bb.ck, !dbg !41417

bb.ck:                                            ; preds = %bb.cj
  %i.ie = getelementptr inbounds nuw i8, ptr %i.ib, i64 1, !dbg !41420 ; 2 uses
  %i.if = add nuw i64 %.sroa.02.012.i.i.i.i30, 1, !dbg !41423
  %i.ig = icmp eq ptr %i.ie, %i.ia, !dbg !41424
  br i1 %i.ig, label %_RNvXs_NtNtNtNtCslpwjCj2YNBy_9polars_io3csv4read11splitfields5innerNtB4_11SplitFieldsNtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator4next.exit.loopexit17.i.i33, label %bb.cj, !dbg !41426

bb.cl:                                            ; preds = %bb.cj
  %i.ih = getelementptr inbounds nuw i8, ptr %i.hy, i64 %.sroa.02.012.i.i.i.i30, !dbg !41427
  %i.ii = load i8, ptr %i.ih, align 1, !dbg !41430, !noalias !41400, !noundef !11
  %i.ij = icmp eq i8 %i.ii, %8, !dbg !41430
  br i1 %i.ij, label %_RNvXs_NtNtNtNtCslpwjCj2YNBy_9polars_io3csv4read11splitfields5innerNtB4_11SplitFieldsNtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator4next.exit.loopexit17.i.i33, label %.lr.ph.split.i.i47, !dbg !41430

.lr.ph.split.i.i47:                               ; preds = %bb.cl
  %i.ik = add nuw i64 %.sroa.02.012.i.i.i.i30, 1, !dbg !41447 ; 2 uses
  %i.il = sub nuw i64 %i.hz, %i.ik, !dbg !41448   ; 2 uses
  %i.im = getelementptr inbounds nuw i8, ptr %i.hy, i64 %i.ik, !dbg !41452
  %i.in = add i64 %.sroa.0.014.i83.i29, 1, !dbg !41454 ; 2 uses
  %i.io = icmp eq i64 %i.il, 0, !dbg !41394
  br i1 %i.io, label %_RNvXs_NtNtNtNtCslpwjCj2YNBy_9polars_io3csv4read11splitfields5innerNtB4_11SplitFieldsNtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator4next.exit.loopexit17.i.i33, label %.lr.ph.i.i.i.i28, !dbg !41394

_RNvXs_NtNtNtNtCslpwjCj2YNBy_9polars_io3csv4read11splitfields5innerNtB4_11SplitFieldsNtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator4next.exit.loopexit.i.i55: ; preds = %.lr.ph.split.us.i.i57, %bb.ch, %bb.ce, %bb.cd, %bb.cg, %.lr.ph.split.us.i.preheader.i48
  %.sroa.0.014.us.i76.i56 = phi i64 [ %.sroa.0.014.us.i85.i50, %bb.cd ], [ %.sroa.0.014.us.i85.i50, %bb.cg ], [ 0, %.lr.ph.split.us.i.preheader.i48 ], [ %.sroa.0.014.us.i85.i50, %bb.ce ], [ %i.hw, %.lr.ph.split.us.i.i57 ], [ %.sroa.0.014.us.i85.i50, %bb.ch ]
  %i.ip = add i64 %.sroa.0.014.us.i76.i56, 1, !dbg !41454
  br label %_RINvYNtNtNtNtNtCslpwjCj2YNBy_9polars_io3csv4read11splitfields5inner11SplitFieldsNtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator4foldjNCNvYB3_B1g_5count0EBd_.exit.i35, !dbg !41460

_RNvXs_NtNtNtNtCslpwjCj2YNBy_9polars_io3csv4read11splitfields5innerNtB4_11SplitFieldsNtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator4next.exit.loopexit17.i.i33: ; preds = %.lr.ph.split.i.i47, %bb.cl, %bb.ck, %.lr.ph.split.i.preheader.i27
  %.sroa.0.014.i79.i34 = phi i64 [ %.sroa.0.014.i83.i29, %bb.ck ], [ 0, %.lr.ph.split.i.preheader.i27 ], [ %i.in, %.lr.ph.split.i.i47 ], [ %.sroa.0.014.i83.i29, %bb.cl ]
  %i.iq = add i64 %.sroa.0.014.i79.i34, 1, !dbg !41454
  br label %_RINvYNtNtNtNtNtCslpwjCj2YNBy_9polars_io3csv4read11splitfields5inner11SplitFieldsNtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator4foldjNCNvYB3_B1g_5count0EBd_.exit.i35, !dbg !41460

.outer.split.i43:                                 ; preds = %.outer.split.i43.preheader, %bb.cs
  %i.ir = load i64, ptr %i.fg, align 8, !dbg !41461, !noalias !41265, !noundef !11 ; 4 uses
  %i.is = icmp ugt i64 %i.je, %i.ir, !dbg !41467
  br i1 %i.is, label %bb.cn, label %bb.cm, !dbg !41467, !prof !54

.split.i41:                                       ; preds = %.outer.i37, %_RINvYNtNtNtNtNtCslpwjCj2YNBy_9polars_io3csv4read11splitfields5inner11SplitFieldsNtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator4foldjNCNvYB3_B1g_5count0EBd_.exit.i35
  %.sroa.023.0.ph.i38203 = phi i64 [ 0, %_RINvYNtNtNtNtNtCslpwjCj2YNBy_9polars_io3csv4read11splitfields5inner11SplitFieldsNtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator4foldjNCNvYB3_B1g_5count0EBd_.exit.i35 ], [ %i.jd, %.outer.i37 ] ; 2 uses
  %i.it = load i64, ptr %i.fg, align 8, !noalias !41265
  %i.iu = icmp ugt i64 %.sroa.023.0.ph.i38203, %i.it
  br i1 %i.iu, label %.split.i41.thread, label %bb.cu, !dbg !41472

bb.cm:                                            ; preds = %.outer.split.i43
  %i.iv = load ptr, ptr %i.ff, align 8, !dbg !41473, !noalias !41265, !nonnull !11, !noundef !11
  %i.iw = sub nuw i64 %i.ir, %i.je, !dbg !41482
  %i.ix = getelementptr inbounds nuw i8, ptr %i.iv, i64 %i.je, !dbg !41483
  %i.iy = invoke { i64, i64 } @_RNvNtNtNtCslpwjCj2YNBy_9polars_io3csv4read6parser18next_line_position(ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.ix, i64 noundef %i.iw, i64 noundef 1, i64 %.sroa.019.0.i36, i8 noundef %5, i1 noundef zeroext %6, i8 %7, i8 noundef %8)
          to label %bb.co unwind label %.loopexit.i44, !dbg !41488, !noalias !41254 ; 2 uses

bb.cn:                                            ; preds = %.outer.split.i43
  invoke void @_RNvNtNtCscgRAwXFJnXP_4core5slice5index16slice_index_fail(i64 noundef %i.je, i64 noundef %i.ir, i64 noundef %i.ir, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @20) #36
          to label %bb.cv unwind label %.loopexit.split-lp.loopexit.split-lp.i23, !dbg !41489, !noalias !41254

bb.co:                                            ; preds = %bb.cm
  %i.iz = extractvalue { i64, i64 } %i.iy, 0, !dbg !41488
  %i.ja = trunc nuw i64 %i.iz to i1, !dbg !41490
  br i1 %i.ja, label %.outer.i37, label %bb.cp, !dbg !41490

.outer.i37:                                       ; preds = %bb.co
  %i.jb = extractvalue { i64, i64 } %i.iy, 1, !dbg !41488
  %i.jc = add nuw i64 %.sroa.020.0.ph.i39248, 1, !dbg !41491 ; 2 uses
  %i.jd = add i64 %i.jb, %.sroa.023.0.ph.i38247, !dbg !41493 ; 2 uses
  %exitcond.not.not.i40.not = icmp eq i64 %i.jc, %4
  br i1 %exitcond.not.not.i40.not, label %.split.i41, label %.outer.split.i43.preheader, !dbg !41346

.outer.split.i43.preheader:                       ; preds = %_RINvYNtNtNtNtNtCslpwjCj2YNBy_9polars_io3csv4read11splitfields5inner11SplitFieldsNtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator4foldjNCNvYB3_B1g_5count0EBd_.exit.i35, %.outer.i37
  %.sroa.020.0.ph.i39248 = phi i64 [ %i.jc, %.outer.i37 ], [ 0, %_RINvYNtNtNtNtNtCslpwjCj2YNBy_9polars_io3csv4read11splitfields5inner11SplitFieldsNtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator4foldjNCNvYB3_B1g_5count0EBd_.exit.i35 ]
  %.sroa.023.0.ph.i38247 = phi i64 [ %i.jd, %.outer.i37 ], [ 0, %_RINvYNtNtNtNtNtCslpwjCj2YNBy_9polars_io3csv4read11splitfields5inner11SplitFieldsNtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator4foldjNCNvYB3_B1g_5count0EBd_.exit.i35 ] ; 2 uses
  %i.je = add i64 %.sroa.023.0.ph.i38247, 1, !dbg !41467 ; 4 uses
  br label %.outer.split.i43, !dbg !41467

bb.cp:                                            ; preds = %bb.co
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l), !dbg !41494, !noalias !41265
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k), !dbg !41494, !noalias !41265
  store ptr %i.ag, ptr %i.k, align 8, !dbg !41495, !noalias !41265
  store i64 4096, ptr %i.gd, align 8, !dbg !41495, !noalias !41265
  store i64 4096, ptr %i.ge, align 8, !dbg !41495, !noalias !41265
  %i.jf = invoke { i64, ptr } @_RINvNtCsh8eZTKRCwoO_3std2io19default_read_to_endINtB2_4TakeQINtNtNtCs9VoZUfg37wD_6flate24zlib4read11ZlibDecoderRShEEECslpwjCj2YNBy_9polars_io(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.k, ptr noalias noundef nonnull align 8 dereferenceable(24) %i.q, i64 noundef 0, i64 undef)
          to label %bb.cq unwind label %.loopexit.i44, !dbg !41497, !noalias !41254 ; 2 uses

bb.cq:                                            ; preds = %bb.cp
  %i.jg = extractvalue { i64, ptr } %i.jf, 0, !dbg !41497 ; 2 uses
  %i.jh = extractvalue { i64, ptr } %i.jf, 1, !dbg !41497 ; 2 uses
  store i64 %i.jg, ptr %i.l, align 8, !dbg !41497, !noalias !41265
  store ptr %i.jh, ptr %i.gf, align 8, !dbg !41497, !noalias !41265
  %i.ji = trunc nuw i64 %i.jg to i1, !dbg !41499
  br i1 %i.ji, label %bb.cr, label %bb.cs, !dbg !41501

bb.cr:                                            ; preds = %bb.cq
  invoke void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCsh8eZTKRCwoO_3std2io5error5ErrorECslpwjCj2YNBy_9polars_io(ptr noalias noundef nonnull readonly align 8 dereferenceable(8) %i.gf)
          to label %bb.ct unwind label %.loopexit.split-lp.loopexit.split-lp.i23, !dbg !41502, !noalias !41254

bb.cs:                                            ; preds = %bb.cq
  %i.jj = icmp eq ptr %i.jh, null, !dbg !41499
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l), !dbg !41504, !noalias !41265
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !dbg !41505, !noalias !41265
  br i1 %i.jj, label %.split.i41.thread, label %.outer.split.i43, !dbg !41506

bb.ct:                                            ; preds = %bb.cr
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l), !dbg !41504, !noalias !41265
  store i64 -9223372036854775808, ptr %0, align 8, !dbg !41508, !alias.scope !41254, !noalias !41294
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !dbg !41505, !noalias !41265
  br label %bb.ca, !dbg !41328

.split.i41.thread:                                ; preds = %bb.cs, %bb.cu, %.split.i41
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.t, ptr noundef nonnull align 8 dereferenceable(24) %i.q, i64 24, i1 false), !dbg !41513, !noalias !41265
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q), !dbg !41313, !noalias !41265
  br label %bb.bm, !dbg !41514

bb.cu:                                            ; preds = %.split.i41
  store i64 %.sroa.023.0.ph.i38203, ptr %i.fg, align 8, !dbg !41515, !noalias !41265
  br label %.split.i41.thread, !dbg !41520

bb.cv:                                            ; preds = %bb.cn
  unreachable

_RNvMNtNtCslpwjCj2YNBy_9polars_io5utils11compressionNtB2_20SupportedCompression5check.exit: ; preds = %bb.g
  call void @llvm.lifetime.start.p0(ptr nonnull %i.af), !dbg !41521
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ae), !dbg !41522
  call void @_RNvMs_NtNtCsi0YuHEPkLKL_4zstd6stream4readINtB4_7DecoderRShE15with_dictionaryCslpwjCj2YNBy_9polars_io(ptr noalias noundef nonnull sret([40 x i8]) align 8 captures(none) dereferenceable(40) %i.ae, ptr noalias noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef %2, ptr noalias noundef nonnull readonly captures(address, read_provenance) inttoptr (i64 1 to ptr), i64 noundef 0), !dbg !41523
  %i.jk = load i64, ptr %i.ae, align 8, !dbg !41525, !range !2753, !noundef !11 ; 2 uses
  %i.jl = icmp eq i64 %i.jk, 2, !dbg !41525
  %i.jm = getelementptr inbounds nuw i8, ptr %i.ae, i64 8, !dbg !41528 ; 2 uses
  br i1 %i.jl, label %bb.fa, label %bb.dg, !dbg !41529

bb.cw:                                            ; preds = %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VechEECslpwjCj2YNBy_9polars_io.exit46.i, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VechEECslpwjCj2YNBy_9polars_io.exit.i
  %i.jn = landingpad { ptr, i32 }
          cleanup
  br label %.body, !dbg !41530

.body:                                            ; preds = %bb.l, %bb.q, %.loopexit.split-lp.i, %bb.ah, %bb.cw
  %eh.lpad-body = phi { ptr, i32 } [ %i.jn, %bb.cw ], [ %i.bh, %bb.l ], [ %i.bm, %bb.q ], [ %lpad.phi.i, %.loopexit.split-lp.i ], [ %i.ck, %bb.ah ]
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtNtCs9VoZUfg37wD_6flate22gz4read14MultiGzDecoderRShEECslpwjCj2YNBy_9polars_io(ptr noalias noundef align 8 dereferenceable(320) %i.ah) #35
          to label %common.resume unwind label %bb.dc, !dbg !41530

bb.cx:                                            ; preds = %.noexc15, %bb.s, %.noexc
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ad), !dbg !41531
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCs9VoZUfg37wD_6flate22gz7bufread7GzStateECslpwjCj2YNBy_9polars_io(ptr noalias noundef nonnull align 8 dereferenceable(320) %i.ah)
          to label %bb.cz unwind label %bb.cy, !dbg !41532

bb.cy:                                            ; preds = %bb.cx
  %i.jo = landingpad { ptr, i32 }
          cleanup
  %i.jp = getelementptr inbounds nuw i8, ptr %i.ah, i64 104, !dbg !41532
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCs9VoZUfg37wD_6flate23crc9CrcReaderINtNtNtBL_7deflate7bufread14DeflateDecoderINtNtBL_9bufreader9BufReaderRShEEEECslpwjCj2YNBy_9polars_io(ptr noalias noundef align 8 dereferenceable(208) %i.jp) #35
          to label %common.resume unwind label %bb.db, !dbg !41532

bb.cz:                                            ; preds = %bb.cx
  call void @llvm.experimental.noalias.scope.decl(metadata !41536), !dbg !41532
  call void @llvm.experimental.noalias.scope.decl(metadata !41539), !dbg !41542
  %i.jq = getelementptr inbounds nuw i8, ptr %i.ah, i64 128, !dbg !41544
  %.val1.i.i.i.i.i = load i64, ptr %i.jq, align 8, !dbg !41544, !alias.scope !41546, !noundef !11 ; 2 uses
  %i.jr = icmp eq i64 %.val1.i.i.i.i.i, 0, !dbg !41553
  br i1 %i.jr, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtNtCs9VoZUfg37wD_6flate22gz4read14MultiGzDecoderRShEECslpwjCj2YNBy_9polars_io.exit, label %bb.da, !dbg !41553

bb.da:                                            ; preds = %bb.cz
  %i.js = getelementptr inbounds nuw i8, ptr %i.ah, i64 120, !dbg !41544
  %.val.i.i.i.i.i = load ptr, ptr %i.js, align 8, !dbg !41544, !alias.scope !41546, !nonnull !11, !noundef !11
  call void @_RNvCs9MrPpZx4smZ_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i.i.i.i, i64 noundef range(i64 1, 0) %.val1.i.i.i.i.i, i64 noundef 1) #39, !dbg !41557, !noalias !41562
  br label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtNtCs9VoZUfg37wD_6flate22gz4read14MultiGzDecoderRShEECslpwjCj2YNBy_9polars_io.exit, !dbg !41563

bb.db:                                            ; preds = %bb.cy
  %i.jt = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #37, !dbg !41532
  unreachable, !dbg !41532

common.resume:                                    ; preds = %.body, %.body67, %bb.fd, %.body122, %bb.cy
  %common.resume.op = phi { ptr, i32 } [ %i.jo, %bb.cy ], [ %eh.lpad-body, %.body ], [ %eh.lpad-body68, %.body67 ], [ %eh.lpad-body123, %bb.fd ], [ %eh.lpad-body123, %.body122 ]
  resume { ptr, i32 } %common.resume.op, !dbg !41564

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtNtCs9VoZUfg37wD_6flate22gz4read14MultiGzDecoderRShEECslpwjCj2YNBy_9polars_io.exit: ; preds = %bb.cz, %bb.da
  %i.ju = getelementptr inbounds nuw i8, ptr %i.ah, i64 168, !dbg !41565
  call void @_RNvXs1_NtCs55Ru6MrNffN_7zlib_rs6stableNtB5_7InflateNtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4drop(ptr noalias noundef nonnull align 8 dereferenceable(128) %i.ju), !dbg !41568
end_hunk_2
begin_hunk_3_@_RNvNtNtNtCslpwjCj2YNBy_9polars_io3csv4read5utils10decompress:bb.a
bb.dr:                                            ; preds = %.loopexit.split-lp.i76, %bb.dj
  %i.kr = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #37, !dbg !41655, !noalias !41604
  unreachable, !dbg !41655

bb.ds:                                            ; preds = %bb.dy, %bb.dh
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !dbg !41656, !noalias !41615
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !dbg !41656, !noalias !41615
  store ptr %i.af, ptr %i.e, align 8, !dbg !41657, !noalias !41615
  store i64 4096, ptr %i.ke, align 8, !dbg !41657, !noalias !41615
  store i64 4096, ptr %i.kf, align 8, !dbg !41657, !noalias !41615
  %i.ks = invoke { i64, ptr } @_RINvNtCsh8eZTKRCwoO_3std2io19default_read_to_endINtB2_4TakeQINtNtNtCsi0YuHEPkLKL_4zstd6stream4read7DecoderRShEEECslpwjCj2YNBy_9polars_io(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.e, ptr noalias noundef nonnull align 8 dereferenceable(24) %i.g, i64 noundef 0, i64 undef)
          to label %bb.dt unwind label %.loopexit.split-lp.loopexit.i74, !dbg !41660, !noalias !41604 ; 2 uses

.loopexit.i99:                                    ; preds = %bb.et, %bb.eq
  %lpad.loopexit.i100 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp.i76

.loopexit.split-lp.loopexit.i74:                  ; preds = %bb.dx, %bb.ds
  %lpad.loopexit52.i75 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp.i76

.loopexit.split-lp.loopexit.split-lp.i78:         ; preds = %bb.ev, %bb.er, %bb.eb, %bb.dz, %bb.du
  %lpad.loopexit.split-lp53.i79 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp.i76

.loopexit.split-lp.i76:                           ; preds = %.loopexit.split-lp.loopexit.split-lp.i78, %.loopexit.split-lp.loopexit.i74, %.loopexit.i99
  %lpad.phi.i77 = phi { ptr, i32 } [ %lpad.loopexit.i100, %.loopexit.i99 ], [ %lpad.loopexit52.i75, %.loopexit.split-lp.loopexit.i74 ], [ %lpad.loopexit.split-lp53.i79, %.loopexit.split-lp.loopexit.split-lp.i78 ]
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VechEECslpwjCj2YNBy_9polars_io(ptr noalias noundef align 8 dereferenceable(24) %i.g) #35
          to label %.body122 unwind label %bb.dr, !dbg !41663, !noalias !41604

bb.dt:                                            ; preds = %bb.ds
  %i.kt = extractvalue { i64, ptr } %i.ks, 0, !dbg !41660 ; 2 uses
  %i.ku = extractvalue { i64, ptr } %i.ks, 1, !dbg !41660 ; 2 uses
  store i64 %i.kt, ptr %i.f, align 8, !dbg !41660, !noalias !41615
  store ptr %i.ku, ptr %i.kg, align 8, !dbg !41660, !noalias !41615
  %i.kv = trunc nuw i64 %i.kt to i1, !dbg !41664
  br i1 %i.kv, label %bb.du, label %bb.dv, !dbg !41666

bb.du:                                            ; preds = %bb.dt
  invoke void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCsh8eZTKRCwoO_3std2io5error5ErrorECslpwjCj2YNBy_9polars_io(ptr noalias noundef nonnull readonly align 8 dereferenceable(8) %i.kg)
          to label %bb.dw unwind label %.loopexit.split-lp.loopexit.split-lp.i78, !dbg !41667, !noalias !41604

bb.dv:                                            ; preds = %bb.dt
  %i.kw = icmp eq ptr %i.ku, null, !dbg !41664
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !dbg !41669, !noalias !41615
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !dbg !41670, !noalias !41615
  br i1 %i.kw, label %_RINvYNtNtNtNtNtCslpwjCj2YNBy_9polars_io3csv4read11splitfields5inner11SplitFieldsNtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator4foldjNCNvYB3_B1g_5count0EBd_.exit.i90, label %bb.dx, !dbg !41671

bb.dw:                                            ; preds = %bb.du
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !dbg !41669, !noalias !41615
  store i64 -9223372036854775808, ptr %0, align 8, !dbg !41673, !alias.scope !41604, !noalias !41644
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !dbg !41670, !noalias !41615
  br label %bb.ee, !dbg !41678

bb.dx:                                            ; preds = %bb.dv
  %i.kx = load ptr, ptr %i.kc, align 8, !dbg !41680, !noalias !41615, !nonnull !11, !noundef !11
  %i.ky = load i64, ptr %i.kd, align 8, !dbg !41693, !noalias !41615, !noundef !11
  %i.kz = invoke { i64, i64 } @_RNvNtNtNtCslpwjCj2YNBy_9polars_io3csv4read6parser24next_line_position_naive(ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.kx, i64 noundef %i.ky, i8 noundef %8)
          to label %bb.dy unwind label %.loopexit.split-lp.loopexit.i74, !dbg !41694, !noalias !41604

_RINvYNtNtNtNtNtCslpwjCj2YNBy_9polars_io3csv4read11splitfields5inner11SplitFieldsNtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator4foldjNCNvYB3_B1g_5count0EBd_.exit.i90: ; preds = %bb.dv, %_RNvXs_NtNtNtNtCslpwjCj2YNBy_9polars_io3csv4read11splitfields5innerNtB4_11SplitFieldsNtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator4next.exit.loopexit17.i.i88, %_RNvXs_NtNtNtNtCslpwjCj2YNBy_9polars_io3csv4read11splitfields5innerNtB4_11SplitFieldsNtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator4next.exit.loopexit.i.i110, %bb.ec
  %.sroa.019.0.i91 = phi i64 [ %i.nm, %_RNvXs_NtNtNtNtCslpwjCj2YNBy_9polars_io3csv4read11splitfields5innerNtB4_11SplitFieldsNtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator4next.exit.loopexit.i.i110 ], [ 0, %bb.ec ], [ %i.nn, %_RNvXs_NtNtNtNtCslpwjCj2YNBy_9polars_io3csv4read11splitfields5innerNtB4_11SplitFieldsNtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator4next.exit.loopexit17.i.i88 ], [ 0, %bb.dv ], !dbg !41695
  %i.la = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.lb = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.lc = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 2 uses
  %exitcond.not.not.i95241.not = icmp eq i64 %4, 0
  br i1 %exitcond.not.not.i95241.not, label %.split.i96, label %.outer.split.i98.preheader, !dbg !41696

bb.dy:                                            ; preds = %bb.dx
  %i.ld = extractvalue { i64, i64 } %i.kz, 0, !dbg !41694
  %i.le = icmp eq i64 %i.ld, 1, !dbg !41694
  br i1 %i.le, label %bb.dz, label %bb.ds, !dbg !41694

bb.dz:                                            ; preds = %bb.dy
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !dbg !41699, !noalias !41615
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !dbg !41699, !noalias !41615
  store ptr %i.af, ptr %i.c, align 8, !dbg !41700, !noalias !41615
  %i.lf = getelementptr inbounds nuw i8, ptr %i.c, i64 8, !dbg !41700
  store i64 4096, ptr %i.lf, align 8, !dbg !41700, !noalias !41615
  %i.lg = getelementptr inbounds nuw i8, ptr %i.c, i64 16, !dbg !41700
  store i64 4096, ptr %i.lg, align 8, !dbg !41700, !noalias !41615
  %i.lh = invoke { i64, ptr } @_RINvNtCsh8eZTKRCwoO_3std2io19default_read_to_endINtB2_4TakeQINtNtNtCsi0YuHEPkLKL_4zstd6stream4read7DecoderRShEEECslpwjCj2YNBy_9polars_io(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.c, ptr noalias noundef nonnull align 8 dereferenceable(24) %i.g, i64 noundef 0, i64 undef)
          to label %bb.ea unwind label %.loopexit.split-lp.loopexit.split-lp.i78, !dbg !41702, !noalias !41604 ; 2 uses

bb.ea:                                            ; preds = %bb.dz
  %i.li = extractvalue { i64, ptr } %i.lh, 0, !dbg !41702 ; 2 uses
  %i.lj = extractvalue { i64, ptr } %i.lh, 1, !dbg !41702 ; 2 uses
  store i64 %i.li, ptr %i.d, align 8, !dbg !41702, !noalias !41615
  %i.lk = getelementptr inbounds nuw i8, ptr %i.d, i64 8, !dbg !41702 ; 2 uses
  store ptr %i.lj, ptr %i.lk, align 8, !dbg !41702, !noalias !41615
  %i.ll = trunc nuw i64 %i.li to i1, !dbg !41704
  br i1 %i.ll, label %bb.eb, label %bb.ec, !dbg !41706

bb.eb:                                            ; preds = %bb.ea
  invoke void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCsh8eZTKRCwoO_3std2io5error5ErrorECslpwjCj2YNBy_9polars_io(ptr noalias noundef nonnull readonly align 8 dereferenceable(8) %i.lk)
          to label %bb.ed unwind label %.loopexit.split-lp.loopexit.split-lp.i78, !dbg !41707, !noalias !41604

bb.ec:                                            ; preds = %bb.ea
  %i.lm = icmp eq ptr %i.lj, null, !dbg !41704
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !dbg !41709, !noalias !41615
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !dbg !41710, !noalias !41615
  br i1 %i.lm, label %_RINvYNtNtNtNtNtCslpwjCj2YNBy_9polars_io3csv4read11splitfields5inner11SplitFieldsNtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator4foldjNCNvYB3_B1g_5count0EBd_.exit.i90, label %.lr.ph.i.i80, !dbg !41711

bb.ed:                                            ; preds = %bb.eb
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !dbg !41709, !noalias !41615
  store i64 -9223372036854775808, ptr %0, align 8, !dbg !41713, !alias.scope !41604, !noalias !41644
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !dbg !41710, !noalias !41615
  br label %bb.ee, !dbg !41718

bb.ee:                                            ; preds = %bb.ex, %bb.ed, %bb.dw
  invoke void @_RNvXso_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VechENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCslpwjCj2YNBy_9polars_io(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.g)
          to label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VechEECslpwjCj2YNBy_9polars_io.exit46.i101 unwind label %bb.ef, !dbg !41720, !noalias !41604

bb.ef:                                            ; preds = %bb.ee
  %i.ln = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsgZ49sUHp3tW_5alloc7raw_vecINtB5_6RawVechENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCslpwjCj2YNBy_9polars_io(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.g)
          to label %.body122 unwind label %bb.eg, !dbg !41722, !noalias !41604

bb.eg:                                            ; preds = %bb.ef
  %i.lo = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #37, !dbg !41720, !noalias !41604
  unreachable, !dbg !41720

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VechEECslpwjCj2YNBy_9polars_io.exit46.i101: ; preds = %bb.ee
  invoke void @_RNvXs1_NtCsgZ49sUHp3tW_5alloc7raw_vecINtB5_6RawVechENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCslpwjCj2YNBy_9polars_io(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.g)
          to label %.noexc125 unwind label %bb.fc, !dbg !41724

.noexc125:                                        ; preds = %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VechEECslpwjCj2YNBy_9polars_io.exit46.i101
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !dbg !41663, !noalias !41615
  br label %bb.fe, !dbg !41651

.lr.ph.i.i80:                                     ; preds = %bb.ec
  %i.lp = load ptr, ptr %i.kc, align 8, !dbg !41726, !noalias !41615, !nonnull !11, !noundef !11 ; 2 uses
  %i.lq = load i64, ptr %i.kd, align 8, !dbg !41738, !noalias !41615, !noundef !11 ; 3 uses
  %..i81 = select i1 %6, i8 %7, i8 34, !dbg !41739 ; 2 uses
  %i.lr = icmp eq i64 %i.lq, 0, !dbg !41744       ; 2 uses
  br i1 %6, label %.lr.ph.split.us.i.preheader.i103, label %.lr.ph.split.i.preheader.i82

.lr.ph.split.i.preheader.i82:                     ; preds = %.lr.ph.i.i80
  br i1 %i.lr, label %_RNvXs_NtNtNtNtCslpwjCj2YNBy_9polars_io3csv4read11splitfields5innerNtB4_11SplitFieldsNtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator4next.exit.loopexit17.i.i88, label %.lr.ph.i.i.i.i83, !dbg !41744

.lr.ph.split.us.i.preheader.i103:                 ; preds = %.lr.ph.i.i80
  br i1 %i.lr, label %_RNvXs_NtNtNtNtCslpwjCj2YNBy_9polars_io3csv4read11splitfields5innerNtB4_11SplitFieldsNtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator4next.exit.loopexit.i.i110, label %.lr.ph.i104, !dbg !41744

.lr.ph.i104:                                      ; preds = %.lr.ph.split.us.i.preheader.i103, %.lr.ph.split.us.i.i112
  %i.ls = phi ptr [ %i.ms, %.lr.ph.split.us.i.i112 ], [ %i.lp, %.lr.ph.split.us.i.preheader.i103 ] ; 6 uses
  %.sroa.0.014.us.i85.i105 = phi i64 [ %i.mt, %.lr.ph.split.us.i.i112 ], [ 0, %.lr.ph.split.us.i.preheader.i103 ] ; 5 uses
  %i.lt = phi i64 [ %i.mr, %.lr.ph.split.us.i.i112 ], [ %i.lq, %.lr.ph.split.us.i.preheader.i103 ] ; 2 uses
  %i.lu = load i8, ptr %i.ls, align 1, !dbg !41749, !noalias !41750, !noundef !11
  %i.lv = icmp eq i8 %i.lu, %..i81, !dbg !41756
  %i.lw = getelementptr inbounds nuw i8, ptr %i.ls, i64 %i.lt, !dbg !41757 ; 2 uses
  br i1 %i.lv, label %.lr.ph.i.us.i.i114, label %.lr.ph.i.i.us.i.i106, !dbg !41756

.lr.ph.i.i.us.i.i106:                             ; preds = %.lr.ph.i104, %bb.eh
  %.sroa.02.012.i.i.us.i.i107 = phi i64 [ %i.mb, %bb.eh ], [ 0, %.lr.ph.i104 ] ; 3 uses
  %i.lx = phi ptr [ %i.ma, %bb.eh ], [ %i.ls, %.lr.ph.i104 ] ; 2 uses
  %.val7.i.i.us.i.i108 = load i8, ptr %i.lx, align 1, !dbg !41761, !noalias !41763, !noundef !11 ; 2 uses
  %i.ly = icmp eq i8 %.val7.i.i.us.i.i108, %5, !dbg !41767
  %i.lz = icmp eq i8 %.val7.i.i.us.i.i108, %8
  %or.cond.i.i.us.i.i109 = or i1 %i.ly, %i.lz, !dbg !41767
  br i1 %or.cond.i.i.us.i.i109, label %bb.ei, label %bb.eh, !dbg !41767

bb.eh:                                            ; preds = %.lr.ph.i.i.us.i.i106
  %i.ma = getelementptr inbounds nuw i8, ptr %i.lx, i64 1, !dbg !41770 ; 2 uses
  %i.mb = add nuw i64 %.sroa.02.012.i.i.us.i.i107, 1, !dbg !41773
  %i.mc = icmp eq ptr %i.ma, %i.lw, !dbg !41774
  br i1 %i.mc, label %_RNvXs_NtNtNtNtCslpwjCj2YNBy_9polars_io3csv4read11splitfields5innerNtB4_11SplitFieldsNtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator4next.exit.loopexit.i.i110, label %.lr.ph.i.i.us.i.i106, !dbg !41776

bb.ei:                                            ; preds = %.lr.ph.i.i.us.i.i106
  %i.md = getelementptr inbounds nuw i8, ptr %i.ls, i64 %.sroa.02.012.i.i.us.i.i107, !dbg !41777
  %i.me = load i8, ptr %i.md, align 1, !dbg !41780, !noalias !41750, !noundef !11
  %i.mf = icmp eq i8 %i.me, %8, !dbg !41780
  br i1 %i.mf, label %_RNvXs_NtNtNtNtCslpwjCj2YNBy_9polars_io3csv4read11splitfields5innerNtB4_11SplitFieldsNtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator4next.exit.loopexit.i.i110, label %.lr.ph.split.us.i.i112, !dbg !41780

.lr.ph.i.us.i.i114:                               ; preds = %.lr.ph.i104, %bb.ek
  %.sroa.05.053.i.us.i.i115 = phi i8 [ %spec.select.i.us.i.i118, %bb.ek ], [ 0, %.lr.ph.i104 ] ; 2 uses
  %.sroa.09.052.i.us.i.i116 = phi i32 [ %i.mm, %bb.ek ], [ 0, %.lr.ph.i104 ] ; 3 uses
  %.sroa.012.051.i.us.i.i117 = phi ptr [ %i.mg, %bb.ek ], [ %i.ls, %.lr.ph.i104 ] ; 2 uses
  %i.mg = getelementptr inbounds nuw i8, ptr %.sroa.012.051.i.us.i.i117, i64 1, !dbg !41781 ; 2 uses
  %i.mh = load i8, ptr %.sroa.012.051.i.us.i.i117, align 1, !dbg !41784, !noalias !41750, !noundef !11 ; 3 uses
  %i.mi = icmp eq i8 %i.mh, %..i81, !dbg !41785
  %i.mj = zext i1 %i.mi to i8, !dbg !41785        ; 2 uses
  %spec.select.i.us.i.i118 = xor i8 %.sroa.05.053.i.us.i.i115, %i.mj, !dbg !41785
  %.not.i.us.i.i119 = icmp eq i8 %.sroa.05.053.i.us.i.i115, %i.mj, !dbg !41786
  br i1 %.not.i.us.i.i119, label %bb.ej, label %bb.ek, !dbg !41786

bb.ej:                                            ; preds = %.lr.ph.i.us.i.i114
  %i.mk = icmp eq i8 %i.mh, %5, !dbg !41787
  %i.ml = icmp eq i8 %i.mh, %8                    ; 2 uses
  %or.cond.i.us.i.i120 = or i1 %i.mk, %i.ml, !dbg !41787
  br i1 %or.cond.i.us.i.i120, label %bb.el, label %bb.ek, !dbg !41787

bb.ek:                                            ; preds = %bb.ej, %.lr.ph.i.us.i.i114
  %i.mm = add i32 %.sroa.09.052.i.us.i.i116, 1, !dbg !41789
  %i.mn = icmp eq ptr %i.mg, %i.lw, !dbg !41790
  br i1 %i.mn, label %_RNvXs_NtNtNtNtCslpwjCj2YNBy_9polars_io3csv4read11splitfields5innerNtB4_11SplitFieldsNtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator4next.exit.loopexit.i.i110, label %.lr.ph.i.us.i.i114, !dbg !41792

bb.el:                                            ; preds = %bb.ej
  %i.mo = icmp eq i32 %.sroa.09.052.i.us.i.i116, 0
  %or.cond.i.i121 = select i1 %i.ml, i1 true, i1 %i.mo, !dbg !41793
  br i1 %or.cond.i.i121, label %_RNvXs_NtNtNtNtCslpwjCj2YNBy_9polars_io3csv4read11splitfields5innerNtB4_11SplitFieldsNtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator4next.exit.loopexit.i.i110, label %bb.em, !dbg !41793

bb.em:                                            ; preds = %bb.el
  %i.mp = zext i32 %.sroa.09.052.i.us.i.i116 to i64, !dbg !41794
  br label %.lr.ph.split.us.i.i112, !dbg !41795

.lr.ph.split.us.i.i112:                           ; preds = %bb.em, %bb.ei
  %.sroa.016.0.i.us.i.i113 = phi i64 [ %i.mp, %bb.em ], [ %.sroa.02.012.i.i.us.i.i107, %bb.ei ], !dbg !41796
  %i.mq = add nuw i64 %.sroa.016.0.i.us.i.i113, 1, !dbg !41797 ; 2 uses
  %i.mr = sub nuw i64 %i.lt, %i.mq, !dbg !41798   ; 2 uses
  %i.ms = getelementptr inbounds nuw i8, ptr %i.ls, i64 %i.mq, !dbg !41802
  %i.mt = add i64 %.sroa.0.014.us.i85.i105, 1, !dbg !41804 ; 2 uses
  %i.mu = icmp eq i64 %i.mr, 0, !dbg !41744
  br i1 %i.mu, label %_RNvXs_NtNtNtNtCslpwjCj2YNBy_9polars_io3csv4read11splitfields5innerNtB4_11SplitFieldsNtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator4next.exit.loopexit.i.i110, label %.lr.ph.i104, !dbg !41744

.lr.ph.i.i.i.i83:                                 ; preds = %.lr.ph.split.i.preheader.i82, %.lr.ph.split.i.i102
  %i.mv = phi ptr [ %i.nj, %.lr.ph.split.i.i102 ], [ %i.lp, %.lr.ph.split.i.preheader.i82 ] ; 4 uses
  %.sroa.0.014.i83.i84 = phi i64 [ %i.nk, %.lr.ph.split.i.i102 ], [ 0, %.lr.ph.split.i.preheader.i82 ] ; 3 uses
  %i.mw = phi i64 [ %i.ni, %.lr.ph.split.i.i102 ], [ %i.lq, %.lr.ph.split.i.preheader.i82 ] ; 2 uses
  %i.mx = getelementptr inbounds nuw i8, ptr %i.mv, i64 %i.mw, !dbg !41806
  br label %bb.en, !dbg !41776

bb.en:                                            ; preds = %bb.eo, %.lr.ph.i.i.i.i83
  %.sroa.02.012.i.i.i.i85 = phi i64 [ 0, %.lr.ph.i.i.i.i83 ], [ %i.nc, %bb.eo ] ; 3 uses
  %i.my = phi ptr [ %i.mv, %.lr.ph.i.i.i.i83 ], [ %i.nb, %bb.eo ] ; 2 uses
  %.val7.i.i.i.i86 = load i8, ptr %i.my, align 1, !dbg !41761, !noalias !41763, !noundef !11 ; 2 uses
  %i.mz = icmp eq i8 %.val7.i.i.i.i86, %5, !dbg !41767
  %i.na = icmp eq i8 %.val7.i.i.i.i86, %8
  %or.cond.i.i.i.i87 = or i1 %i.mz, %i.na, !dbg !41767
  br i1 %or.cond.i.i.i.i87, label %bb.ep, label %bb.eo, !dbg !41767

bb.eo:                                            ; preds = %bb.en
  %i.nb = getelementptr inbounds nuw i8, ptr %i.my, i64 1, !dbg !41770 ; 2 uses
  %i.nc = add nuw i64 %.sroa.02.012.i.i.i.i85, 1, !dbg !41773
  %i.nd = icmp eq ptr %i.nb, %i.mx, !dbg !41774
  br i1 %i.nd, label %_RNvXs_NtNtNtNtCslpwjCj2YNBy_9polars_io3csv4read11splitfields5innerNtB4_11SplitFieldsNtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator4next.exit.loopexit17.i.i88, label %bb.en, !dbg !41776

bb.ep:                                            ; preds = %bb.en
  %i.ne = getelementptr inbounds nuw i8, ptr %i.mv, i64 %.sroa.02.012.i.i.i.i85, !dbg !41777
  %i.nf = load i8, ptr %i.ne, align 1, !dbg !41780, !noalias !41750, !noundef !11
  %i.ng = icmp eq i8 %i.nf, %8, !dbg !41780
  br i1 %i.ng, label %_RNvXs_NtNtNtNtCslpwjCj2YNBy_9polars_io3csv4read11splitfields5innerNtB4_11SplitFieldsNtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator4next.exit.loopexit17.i.i88, label %.lr.ph.split.i.i102, !dbg !41780

.lr.ph.split.i.i102:                              ; preds = %bb.ep
  %i.nh = add nuw i64 %.sroa.02.012.i.i.i.i85, 1, !dbg !41797 ; 2 uses
  %i.ni = sub nuw i64 %i.mw, %i.nh, !dbg !41798   ; 2 uses
  %i.nj = getelementptr inbounds nuw i8, ptr %i.mv, i64 %i.nh, !dbg !41802
  %i.nk = add i64 %.sroa.0.014.i83.i84, 1, !dbg !41804 ; 2 uses
  %i.nl = icmp eq i64 %i.ni, 0, !dbg !41744
  br i1 %i.nl, label %_RNvXs_NtNtNtNtCslpwjCj2YNBy_9polars_io3csv4read11splitfields5innerNtB4_11SplitFieldsNtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator4next.exit.loopexit17.i.i88, label %.lr.ph.i.i.i.i83, !dbg !41744

_RNvXs_NtNtNtNtCslpwjCj2YNBy_9polars_io3csv4read11splitfields5innerNtB4_11SplitFieldsNtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator4next.exit.loopexit.i.i110: ; preds = %.lr.ph.split.us.i.i112, %bb.el, %bb.ei, %bb.eh, %bb.ek, %.lr.ph.split.us.i.preheader.i103
  %.sroa.0.014.us.i76.i111 = phi i64 [ %.sroa.0.014.us.i85.i105, %bb.eh ], [ %.sroa.0.014.us.i85.i105, %bb.ek ], [ 0, %.lr.ph.split.us.i.preheader.i103 ], [ %.sroa.0.014.us.i85.i105, %bb.ei ], [ %i.mt, %.lr.ph.split.us.i.i112 ], [ %.sroa.0.014.us.i85.i105, %bb.el ]
  %i.nm = add i64 %.sroa.0.014.us.i76.i111, 1, !dbg !41804
  br label %_RINvYNtNtNtNtNtCslpwjCj2YNBy_9polars_io3csv4read11splitfields5inner11SplitFieldsNtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator4foldjNCNvYB3_B1g_5count0EBd_.exit.i90, !dbg !41810

_RNvXs_NtNtNtNtCslpwjCj2YNBy_9polars_io3csv4read11splitfields5innerNtB4_11SplitFieldsNtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator4next.exit.loopexit17.i.i88: ; preds = %.lr.ph.split.i.i102, %bb.ep, %bb.eo, %.lr.ph.split.i.preheader.i82
  %.sroa.0.014.i79.i89 = phi i64 [ %.sroa.0.014.i83.i84, %bb.eo ], [ 0, %.lr.ph.split.i.preheader.i82 ], [ %i.nk, %.lr.ph.split.i.i102 ], [ %.sroa.0.014.i83.i84, %bb.ep ]
  %i.nn = add i64 %.sroa.0.014.i79.i89, 1, !dbg !41804
  br label %_RINvYNtNtNtNtNtCslpwjCj2YNBy_9polars_io3csv4read11splitfields5inner11SplitFieldsNtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator4foldjNCNvYB3_B1g_5count0EBd_.exit.i90, !dbg !41810

.outer.split.i98:                                 ; preds = %.outer.split.i98.preheader, %bb.ew
  %i.no = load i64, ptr %i.kd, align 8, !dbg !41811, !noalias !41615, !noundef !11 ; 4 uses
  %i.np = icmp ugt i64 %i.ob, %i.no, !dbg !41817
  br i1 %i.np, label %bb.er, label %bb.eq, !dbg !41817, !prof !54

.split.i96:                                       ; preds = %.outer.i92, %_RINvYNtNtNtNtNtCslpwjCj2YNBy_9polars_io3csv4read11splitfields5inner11SplitFieldsNtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator4foldjNCNvYB3_B1g_5count0EBd_.exit.i90
  %.sroa.023.0.ph.i93233 = phi i64 [ 0, %_RINvYNtNtNtNtNtCslpwjCj2YNBy_9polars_io3csv4read11splitfields5inner11SplitFieldsNtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator4foldjNCNvYB3_B1g_5count0EBd_.exit.i90 ], [ %i.oa, %.outer.i92 ] ; 2 uses
  %i.nq = load i64, ptr %i.kd, align 8, !noalias !41615
  %i.nr = icmp ugt i64 %.sroa.023.0.ph.i93233, %i.nq
  br i1 %i.nr, label %.split.i96.thread, label %bb.ey, !dbg !41822

bb.eq:                                            ; preds = %.outer.split.i98
  %i.ns = load ptr, ptr %i.kc, align 8, !dbg !41823, !noalias !41615, !nonnull !11, !noundef !11
  %i.nt = sub nuw i64 %i.no, %i.ob, !dbg !41832
  %i.nu = getelementptr inbounds nuw i8, ptr %i.ns, i64 %i.ob, !dbg !41833
  %i.nv = invoke { i64, i64 } @_RNvNtNtNtCslpwjCj2YNBy_9polars_io3csv4read6parser18next_line_position(ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.nu, i64 noundef %i.nt, i64 noundef 1, i64 %.sroa.019.0.i91, i8 noundef %5, i1 noundef zeroext %6, i8 %7, i8 noundef %8)
          to label %bb.es unwind label %.loopexit.i99, !dbg !41838, !noalias !41604 ; 2 uses

bb.er:                                            ; preds = %.outer.split.i98
  invoke void @_RNvNtNtCscgRAwXFJnXP_4core5slice5index16slice_index_fail(i64 noundef %i.ob, i64 noundef %i.no, i64 noundef %i.no, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @20) #36
          to label %bb.ez unwind label %.loopexit.split-lp.loopexit.split-lp.i78, !dbg !41839, !noalias !41604

bb.es:                                            ; preds = %bb.eq
  %i.nw = extractvalue { i64, i64 } %i.nv, 0, !dbg !41838
  %i.nx = trunc nuw i64 %i.nw to i1, !dbg !41840
  br i1 %i.nx, label %.outer.i92, label %bb.et, !dbg !41840

.outer.i92:                                       ; preds = %bb.es
  %i.ny = extractvalue { i64, i64 } %i.nv, 1, !dbg !41838
  %i.nz = add nuw i64 %.sroa.020.0.ph.i94243, 1, !dbg !41841 ; 2 uses
  %i.oa = add i64 %i.ny, %.sroa.023.0.ph.i93242, !dbg !41843 ; 2 uses
  %exitcond.not.not.i95.not = icmp eq i64 %i.nz, %4
  br i1 %exitcond.not.not.i95.not, label %.split.i96, label %.outer.split.i98.preheader, !dbg !41696

.outer.split.i98.preheader:                       ; preds = %_RINvYNtNtNtNtNtCslpwjCj2YNBy_9polars_io3csv4read11splitfields5inner11SplitFieldsNtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator4foldjNCNvYB3_B1g_5count0EBd_.exit.i90, %.outer.i92
  %.sroa.020.0.ph.i94243 = phi i64 [ %i.nz, %.outer.i92 ], [ 0, %_RINvYNtNtNtNtNtCslpwjCj2YNBy_9polars_io3csv4read11splitfields5inner11SplitFieldsNtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator4foldjNCNvYB3_B1g_5count0EBd_.exit.i90 ]
  %.sroa.023.0.ph.i93242 = phi i64 [ %i.oa, %.outer.i92 ], [ 0, %_RINvYNtNtNtNtNtCslpwjCj2YNBy_9polars_io3csv4read11splitfields5inner11SplitFieldsNtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator4foldjNCNvYB3_B1g_5count0EBd_.exit.i90 ] ; 2 uses
  %i.ob = add i64 %.sroa.023.0.ph.i93242, 1, !dbg !41817 ; 4 uses
  br label %.outer.split.i98, !dbg !41817

bb.et:                                            ; preds = %bb.es
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !dbg !41844, !noalias !41615
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !41844, !noalias !41615
  store ptr %i.af, ptr %i.a, align 8, !dbg !41845, !noalias !41615
  store i64 4096, ptr %i.la, align 8, !dbg !41845, !noalias !41615
  store i64 4096, ptr %i.lb, align 8, !dbg !41845, !noalias !41615
  %i.oc = invoke { i64, ptr } @_RINvNtCsh8eZTKRCwoO_3std2io19default_read_to_endINtB2_4TakeQINtNtNtCsi0YuHEPkLKL_4zstd6stream4read7DecoderRShEEECslpwjCj2YNBy_9polars_io(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.a, ptr noalias noundef nonnull align 8 dereferenceable(24) %i.g, i64 noundef 0, i64 undef)
          to label %bb.eu unwind label %.loopexit.i99, !dbg !41847, !noalias !41604 ; 2 uses

bb.eu:                                            ; preds = %bb.et
  %i.od = extractvalue { i64, ptr } %i.oc, 0, !dbg !41847 ; 2 uses
  %i.oe = extractvalue { i64, ptr } %i.oc, 1, !dbg !41847 ; 2 uses
  store i64 %i.od, ptr %i.b, align 8, !dbg !41847, !noalias !41615
  store ptr %i.oe, ptr %i.lc, align 8, !dbg !41847, !noalias !41615
  %i.of = trunc nuw i64 %i.od to i1, !dbg !41849
  br i1 %i.of, label %bb.ev, label %bb.ew, !dbg !41851

bb.ev:                                            ; preds = %bb.eu
  invoke void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCsh8eZTKRCwoO_3std2io5error5ErrorECslpwjCj2YNBy_9polars_io(ptr noalias noundef nonnull readonly align 8 dereferenceable(8) %i.lc)
          to label %bb.ex unwind label %.loopexit.split-lp.loopexit.split-lp.i78, !dbg !41852, !noalias !41604

bb.ew:                                            ; preds = %bb.eu
  %i.og = icmp eq ptr %i.oe, null, !dbg !41849
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !41854, !noalias !41615
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !41855, !noalias !41615
  br i1 %i.og, label %.split.i96.thread, label %.outer.split.i98, !dbg !41856

bb.ex:                                            ; preds = %bb.ev
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !41854, !noalias !41615
  store i64 -9223372036854775808, ptr %0, align 8, !dbg !41858, !alias.scope !41604, !noalias !41644
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !41855, !noalias !41615
  br label %bb.ee, !dbg !41678

.split.i96.thread:                                ; preds = %bb.ew, %bb.ey, %.split.i96
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.j, ptr noundef nonnull align 8 dereferenceable(24) %i.g, i64 24, i1 false), !dbg !41863, !noalias !41615
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !dbg !41663, !noalias !41615
  br label %bb.dq, !dbg !41864

bb.ey:                                            ; preds = %.split.i96
  store i64 %.sroa.023.0.ph.i93233, ptr %i.kd, align 8, !dbg !41865, !noalias !41615
  br label %.split.i96.thread, !dbg !41870

bb.ez:                                            ; preds = %bb.er
  unreachable

bb.fa:                                            ; preds = %_RNvMNtNtCslpwjCj2YNBy_9polars_io5utils11compressionNtB2_20SupportedCompression5check.exit
  call void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCsh8eZTKRCwoO_3std2io5error5ErrorECslpwjCj2YNBy_9polars_io(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.jm), !dbg !41871
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ae), !dbg !41603
  store i64 -9223372036854775808, ptr %0, align 8, !dbg !41874
  call void @llvm.lifetime.end.p0(ptr nonnull %i.af), !dbg !41879
  br label %bb.fb, !dbg !41880

bb.fb:                                            ; preds = %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtNtCs9VoZUfg37wD_6flate22gz4read14MultiGzDecoderRShEECslpwjCj2YNBy_9polars_io.exit, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtNtCs9VoZUfg37wD_6flate24zlib4read11ZlibDecoderRShEECslpwjCj2YNBy_9polars_io.exit, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtNtCsi0YuHEPkLKL_4zstd6stream4read7DecoderRShEECslpwjCj2YNBy_9polars_io.exit127, %bb.h, %bb.fa
  ret void, !dbg !41882

bb.fc:                                            ; preds = %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VechEECslpwjCj2YNBy_9polars_io.exit46.i101, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VechEECslpwjCj2YNBy_9polars_io.exit.i73
  %i.oh = landingpad { ptr, i32 }
          cleanup
  br label %.body122, !dbg !41879

.body122:                                         ; preds = %bb.dj, %bb.do, %.loopexit.split-lp.i76, %bb.ef, %bb.fc
  %eh.lpad-body123 = phi { ptr, i32 } [ %i.oh, %bb.fc ], [ %i.kk, %bb.dj ], [ %i.kp, %bb.do ], [ %lpad.phi.i77, %.loopexit.split-lp.i76 ], [ %i.ln, %bb.ef ] ; 2 uses
  %i.oi = load i64, ptr %i.af, align 8, !dbg !41883, !range !235, !alias.scope !41888, !noundef !11
  %i.oj = icmp eq i64 %i.oi, 0, !dbg !41883
  br i1 %i.oj, label %bb.fd, label %common.resume, !dbg !41883

bb.fd:                                            ; preds = %.body122
  invoke void @_RNvXs6_CslcGXmMsZ7N2_9zstd_safeNtB5_4DCtxNtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4drop(ptr noalias noundef nonnull align 8 dereferenceable(8) %.sroa.411.0..sroa_idx)
          to label %common.resume unwind label %bb.dc, !dbg !41897

bb.fe:                                            ; preds = %.noexc125, %bb.dq, %.noexc124
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !dbg !41899
  %i.ok = load i64, ptr %i.af, align 8, !dbg !41900, !range !235, !alias.scope !41905, !noundef !11
  %i.ol = icmp eq i64 %i.ok, 0, !dbg !41900
  br i1 %i.ol, label %bb.ff, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtNtCsi0YuHEPkLKL_4zstd6stream4read7DecoderRShEECslpwjCj2YNBy_9polars_io.exit127, !dbg !41900

bb.ff:                                            ; preds = %bb.fe
  call void @_RNvXs6_CslcGXmMsZ7N2_9zstd_safeNtB5_4DCtxNtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4drop(ptr noalias noundef nonnull align 8 dereferenceable(8) %.sroa.411.0..sroa_idx), !dbg !41914
  br label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtNtCsi0YuHEPkLKL_4zstd6stream4read7DecoderRShEECslpwjCj2YNBy_9polars_io.exit127, !dbg !41900

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtNtCsi0YuHEPkLKL_4zstd6stream4read7DecoderRShEECslpwjCj2YNBy_9polars_io.exit127: ; preds = %bb.fe, %bb.ff
  call void @llvm.lifetime.end.p0(ptr nonnull %i.af), !dbg !41879
  br label %bb.fb, !dbg !41879
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXs0_NtCs8RKTHBS4OBx_12object_store3awsNtB5_8AmazonS3NtNtCscgRAwXFJnXP_4core3fmt5Debug3fmt(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #7 !dbg !41916 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !41919
  store ptr %0, ptr %i.a, align 8, !dbg !41919
  %i.b = call noundef zeroext i1 @_RNvMsa_NtCscgRAwXFJnXP_4core3fmtNtB5_9Formatter26debug_struct_field1_finish(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) @242, i64 noundef 8, ptr noalias noundef nonnull readonly captures(address, read_provenance) @243, i64 noundef 6, ptr noundef nonnull %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @241), !dbg !41920
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !41921
  ret i1 %i.b, !dbg !41922
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXs0_NtCs8RKTHBS4OBx_12object_store3gcpNtB5_18GoogleCloudStorageNtNtCscgRAwXFJnXP_4core3fmt5Debug3fmt(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #7 !dbg !41923 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !41927
  store ptr %0, ptr %i.a, align 8, !dbg !41927
  %i.b = call noundef zeroext i1 @_RNvMsa_NtCscgRAwXFJnXP_4core3fmtNtB5_9Formatter26debug_struct_field1_finish(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) @245, i64 noundef 18, ptr noalias noundef nonnull readonly captures(address, read_provenance) @243, i64 noundef 6, ptr noundef nonnull %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @244), !dbg !41928
end_hunk_3
