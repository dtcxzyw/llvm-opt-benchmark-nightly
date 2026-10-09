Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/opencv/original/matmul.dispatch?download=true
inline.NumInlined: 1374
inline.NumDeleted: 190
loop-unroll.NumCompletelyUnrolled: 9
loop-unroll.NumRuntimeUnrolled: 224
loop-unroll.NumUnrolled: 233
begin_hunk_0_@_ZN2cv12cpu_baselineL8gemmImplENS_3MatES1_dS1_dS1_i:bb.a
_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.bg
  %i.abf = load i64, ptr %i.abd, align 8, !tbaa !23
  %i.abg = add i64 %i.abf, 1
  call void @_ZdlPvm(ptr noundef %i.abc, i64 noundef %i.abg) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.bg, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %bb.bf
  %.pn = phi { ptr, i32 } [ %i.aba, %bb.bf ], [ %i.abb, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ], [ %i.abb, %bb.bg ]
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #24
  br label %.body1094

switch.lookup:                                    ; preds = %bb.bb
  %i.abh = zext nneg i32 %switch.tableidx to i64
  %switch.gep = getelementptr inbounds nuw [8 x i8], ptr @switch.table._ZN2cv12cpu_baselineL8gemmImplENS_3MatES1_dS1_dS1_i, i64 %i.abh
  %switch.load = load ptr, ptr %switch.gep, align 8 ; 2 uses
  %i.abi = zext nneg i32 %switch.tableidx to i64
  %switch.gep1503 = getelementptr inbounds nuw [8 x i8], ptr @switch.table._ZN2cv12cpu_baselineL8gemmImplENS_3MatES1_dS1_dS1_i.7, i64 %i.abi
  %switch.load1504 = load ptr, ptr %switch.gep1503, align 8
  %i.abj = zext nneg i32 %switch.tableidx to i64
  %switch.gep1505 = getelementptr inbounds nuw [8 x i8], ptr @switch.table._ZN2cv12cpu_baselineL8gemmImplENS_3MatES1_dS1_dS1_i.8, i64 %i.abj
  %switch.load1506 = load ptr, ptr %switch.gep1505, align 8
  %i.abk = icmp eq i32 %.sroa.01168.0, 1          ; 2 uses
  %i.abl = icmp eq i32 %.01252, 1
  %or.cond7 = select i1 %i.abk, i1 true, i1 %i.abl
  %i.abm = and i32 %6, 2
  %.not1049 = icmp eq i32 %i.abm, 0
  %or.cond1084 = and i1 %.not1049, %or.cond7
  br i1 %or.cond1084, label %bb.bh, label %bb.bl

bb.bh:                                            ; preds = %switch.lookup
  %i.abn = load i32, ptr %1, align 8, !tbaa !46
  %i.abo = and i32 %i.abn, 16384
  %.not1275 = icmp eq i32 %i.abo, 0
  br i1 %.not1275, label %bb.bl, label %bb.bi

bb.bi:                                            ; preds = %bb.bh
  br i1 %i.abk, label %bb.bk, label %bb.bj

bb.bj:                                            ; preds = %bb.bi
  %i.abp = lshr i32 %i.z, 5
  %i.abq = shl nuw nsw i32 %i.z, 2
  %i.abr = and i32 %i.abq, 124
  %i.abs = zext nneg i32 %i.abr to i64
  %i.abt = lshr i64 1275511473185297, %i.abs
  %i.abu = trunc i64 %i.abt to i32
  %i.abv = and i32 %i.abu, 15
  %i.abw = shl nuw nsw i32 %i.abv, %i.abp
  %i.abx = zext nneg i32 %i.abw to i64
  br label %bb.bk

bb.bk:                                            ; preds = %bb.bi, %bb.bj
  %i.aby = phi i64 [ %i.abx, %bb.bj ], [ 0, %bb.bi ]
  %i.abz = or disjoint i32 %6, 2
  br label %bb.bl

bb.bl:                                            ; preds = %switch.lookup, %bb.bk, %bb.bh
  %.0918 = phi i64 [ %i.aar, %switch.lookup ], [ %i.aby, %bb.bk ], [ %i.aar, %bb.bh ] ; 7 uses
  %.0 = phi i32 [ %6, %switch.lookup ], [ %i.abz, %bb.bk ], [ %6, %bb.bh ] ; 6 uses
  %i.aca = icmp slt i32 %.sroa.32.0, 65
  %i.acb = icmp slt i32 %.sroa.01168.0, 65
  %or.cond10 = select i1 %i.aca, i1 true, i1 %i.acb
  %i.acc = icmp slt i32 %.01252, 10001
  %or.cond12 = select i1 %or.cond10, i1 %i.acc, i1 false
  %i.acd = icmp slt i32 %.01252, 11
  %or.cond14 = select i1 %or.cond12, i1 true, i1 %i.acd
  br i1 %or.cond14, label %bb.bn, label %bb.bm

bb.bm:                                            ; preds = %bb.bl
  %i.ace = icmp slt i32 %.sroa.01168.0, 129
  %i.acf = icmp slt i32 %.sroa.32.0, 129
  %or.cond17 = and i1 %i.acf, %i.ace
  %i.acg = icmp samesign ult i32 %.01252, 129
  %or.cond19 = select i1 %or.cond17, i1 %i.acg, i1 false
  br i1 %or.cond19, label %bb.bn, label %bb.bp

bb.bn:                                            ; preds = %bb.bm, %bb.bl
  %i.ach = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.aci = load ptr, ptr %i.ach, align 8, !tbaa !47
  %i.acj = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.ack = load i64, ptr %i.acj, align 8, !tbaa !38
  %i.acl = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.acm = load ptr, ptr %i.acl, align 8, !tbaa !47
  %i.acn = getelementptr inbounds nuw i8, ptr %5, i64 24
  %i.aco = load ptr, ptr %i.acn, align 8, !tbaa !47
  %i.acp = getelementptr inbounds nuw i8, ptr %5, i64 128
  %i.acq = load i64, ptr %i.acp, align 8, !tbaa !38
  %.sroa.32.0.insert.ext = zext i32 %.sroa.32.0 to i64
  %.sroa.32.0.insert.shift = shl nuw i64 %.sroa.32.0.insert.ext, 32
  %.sroa.01168.0.insert.ext = zext i32 %.sroa.01168.0 to i64
  %.sroa.01168.0.insert.insert = or disjoint i64 %.sroa.32.0.insert.shift, %.sroa.01168.0.insert.ext
  invoke void %switch.load(ptr noundef %i.aci, i64 noundef %i.ack, ptr noundef %i.acm, i64 noundef %.0918, ptr noundef %i.aat, i64 noundef %i.aaw, ptr noundef %i.aco, i64 noundef %i.acq, i64 %.sroa.0.0.insert.insert.i, i64 %.sroa.01168.0.insert.insert, double noundef %2, double noundef %4, i32 noundef %.0)
          to label %.loopexit1279 unwind label %bb.bo, !callees !923

bb.bo:                                            ; preds = %bb.bn
  %i.acr = landingpad { ptr, i32 }
          cleanup
  br label %.body1094

bb.bp:                                            ; preds = %bb.bm
  %i.acs = and i32 %.0, 2
  %i.act = lshr i32 %i.z, 5
  %i.acu = and i32 %i.y, 31                       ; 2 uses
  %i.acv = shl nuw nsw i32 %i.acu, 2
  %i.acw = zext nneg i32 %i.acv to i64
  %i.acx = lshr i64 1275511473185297, %i.acw
  %i.acy = trunc i64 %i.acx to i32
  %i.acz = and i32 %i.acy, 15
  %i.ada = shl nuw nsw i32 %i.acz, %i.act         ; 8 uses
  %i.adb = icmp eq i32 %i.acu, 5
  %i.adc = zext i1 %i.adb to i32
  %i.add = shl nuw nsw i32 %i.ada, %i.adc         ; 2 uses
  %i.ade = trunc i32 %.0 to i1                    ; 4 uses
  br i1 %i.ade, label %bb.br, label %bb.bq

bb.bq:                                            ; preds = %bb.bp
  %i.adf = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.adg = load i64, ptr %i.adf, align 8, !tbaa !38
  %i.adh = zext nneg i32 %i.ada to i64            ; 2 uses
  br label %bb.bs

bb.br:                                            ; preds = %bb.bp
  %i.adi = zext nneg i32 %i.ada to i64            ; 2 uses
  %i.adj = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.adk = load i64, ptr %i.adj, align 8, !tbaa !38
  br label %bb.bs

bb.bs:                                            ; preds = %bb.br, %bb.bq
  %.pre-phi = phi i64 [ %i.adi, %bb.br ], [ %i.adh, %bb.bq ] ; 6 uses
  %.0895 = phi i64 [ %i.adi, %bb.br ], [ %i.adg, %bb.bq ]
  %.0894 = phi i64 [ %i.adk, %bb.br ], [ %i.adh, %bb.bq ]
  %.not1050 = icmp eq i32 %i.acs, 0               ; 4 uses
  %.0918. = select i1 %.not1050, i64 %.0918, i64 %.pre-phi
  %..0918 = select i1 %.not1050, i64 %.pre-phi, i64 %.0918
  %i.adl = invoke noundef zeroext i1 @_ZNK2cv3Mat5emptyEv(ptr noundef nonnull align 8 dereferenceable(208) %3)
          to label %bb.bt unwind label %bb.bv

bb.bt:                                            ; preds = %bb.bs
  br i1 %i.adl, label %bb.bu, label %bb.bw

bb.bu:                                            ; preds = %bb.bt
  %i.adm = and i32 %.0, -5
  br label %bb.bx

bb.bv:                                            ; preds = %bb.ci, %bb.bs
  %i.adn = landingpad { ptr, i32 }
          cleanup
  br label %.body1094

bb.bw:                                            ; preds = %bb.bt
  %i.ado = and i32 %.0, 4
  %.not1051 = icmp eq i32 %i.ado, 0               ; 2 uses
  %i.adp = getelementptr inbounds nuw i8, ptr %3, i64 128
  %i.adq = load i64, ptr %i.adp, align 8, !tbaa !38 ; 2 uses
  %..pre-phi = select i1 %.not1051, i64 %i.adq, i64 %.pre-phi
  %.pre-phi. = select i1 %.not1051, i64 %.pre-phi, i64 %i.adq
  br label %bb.bx

bb.bx:                                            ; preds = %bb.bw, %bb.bu
  %.0891 = phi i64 [ 0, %bb.bu ], [ %..pre-phi, %bb.bw ]
  %.0890 = phi i64 [ 0, %bb.bu ], [ %.pre-phi., %bb.bw ]
  %.1 = phi i32 [ %i.adm, %bb.bu ], [ %.0, %bb.bw ] ; 2 uses
  %.sroa.speculated1209 = call i32 @llvm.smin.i32(i32 %.sroa.32.0, i32 128) ; 3 uses
  %.sroa.speculated1212 = call i32 @llvm.smin.i32(i32 %.sroa.01168.0, i32 128) ; 3 uses
  %i.adr = sdiv i32 16384, %.sroa.speculated1209
  %i.ads = sdiv i32 16384, %.sroa.speculated1212
  %.sroa.speculated1143 = call i32 @llvm.smin.i32(i32 %i.ads, i32 %i.adr) ; 2 uses
  %.sroa.speculated = call i32 @llvm.smin.i32(i32 %.01252, i32 %.sroa.speculated1143) ; 8 uses
  %i.adt = mul nsw i32 %.sroa.speculated, %.sroa.speculated1209
  %i.adu = icmp sgt i32 %i.adt, 16384
  br i1 %i.adu, label %bb.by, label %bb.bz

bb.by:                                            ; preds = %bb.bx
  %.rhs.trunc = trunc nsw i32 %.sroa.speculated to i16
  %i.adv = sdiv i16 16384, %.rhs.trunc
  %.sext = sext i16 %i.adv to i32
  br label %bb.bz

bb.bz:                                            ; preds = %bb.by, %bb.bx
  %.0897 = phi i32 [ %.sext, %bb.by ], [ %.sroa.speculated1209, %bb.bx ] ; 5 uses
  %i.adw = mul nsw i32 %.sroa.speculated, %.sroa.speculated1212
  %i.adx = icmp sgt i32 %i.adw, 16384
  %.rhs.trunc1256 = trunc nsw i32 %.sroa.speculated to i16 ; 2 uses
  br i1 %i.adx, label %bb.ca, label %._crit_edge

bb.ca:                                            ; preds = %bb.bz
  %i.ady = sdiv i16 16384, %.rhs.trunc1256
  %.sext1257 = sext i16 %i.ady to i32
  br label %._crit_edge

._crit_edge:                                      ; preds = %bb.bz, %bb.ca
  %.0896 = phi i32 [ %.sext1257, %bb.ca ], [ %.sroa.speculated1212, %bb.bz ] ; 5 uses
  %i.adz = sdiv i32 %.0896, 8
  %i.aea = add i32 %i.adz, %.0896
  %i.aeb = and i32 %i.aea, -2
  %i.aec = add i32 %i.aeb, 2
  %i.aed = sdiv i16 %.rhs.trunc1256, 8
  %.sext1258 = sext i16 %i.aed to i32
  %i.aee = add i32 %.sroa.speculated, %.sext1258  ; 2 uses
  %i.aef = add i32 %i.aee, 1
  %i.aeg = sext i32 %i.aef to i64                 ; 2 uses
  %i.aeh = sext i32 %i.aec to i64                 ; 2 uses
  %i.aei = mul nsw i64 %i.aeh, %i.aeg             ; 2 uses
  %i.aej = mul nsw i64 %i.aei, %.pre-phi          ; 2 uses
  %i.aek = zext nneg i32 %i.add to i64            ; 2 uses
  %i.ael = mul nsw i64 %i.aei, %i.aek             ; 2 uses
  br i1 %i.ade, label %bb.cb, label %bb.cc

bb.cb:                                            ; preds = %._crit_edge
  %i.aem = sdiv i32 %.0897, 8
  %i.aen = add nsw i32 %.0897, 1
  %i.aeo = add i32 %i.aen, %i.aem
  %i.aep = sext i32 %i.aeo to i64
  %i.aeq = and i32 %i.aee, -2
  %i.aer = add nsw i32 %i.aeq, 2
  %i.aes = sext i32 %i.aer to i64
  %i.aet = mul nsw i64 %.pre-phi, %i.aes
  %i.aeu = mul i64 %i.aet, %i.aep
  %i.aev = and i32 %.1, -2
  br label %bb.cc

bb.cc:                                            ; preds = %bb.cb, %._crit_edge
  %.0904 = phi i64 [ %i.aeu, %bb.cb ], [ 0, %._crit_edge ]
  %.2 = phi i32 [ %i.aev, %bb.cb ], [ %.1, %._crit_edge ]
  %i.aew = add nsw i64 %i.ael, %i.aej
  %i.aex = add i64 %i.aew, %.0904                 ; 5 uses
  %i.aey = load i64, ptr %i.aay, align 8, !tbaa !52
  %.not.i = icmp ugt i64 %i.aex, %i.aey
  br i1 %.not.i, label %bb.ce, label %bb.cd

bb.cd:                                            ; preds = %bb.cc
  store i64 %i.aex, ptr %i.aay, align 8, !tbaa !52
  %.pre = load ptr, ptr %12, align 8, !tbaa !51
  br label %_ZN2cv10AutoBufferIhLm1032EE8allocateEm.exit

bb.ce:                                            ; preds = %bb.cc
  %i.aez = load ptr, ptr %12, align 8, !tbaa !51  ; 4 uses
  %.not.i.i = icmp eq ptr %i.aez, %i.aax
  br i1 %.not.i.i, label %_ZN2cv10AutoBufferIhLm1032EE10deallocateEv.exit.i, label %bb.cf

bb.cf:                                            ; preds = %bb.ce
  %i.afa = icmp eq ptr %i.aez, null
  br i1 %i.afa, label %bb.ch, label %bb.cg

bb.cg:                                            ; preds = %bb.cf
  call void @_ZdaPv(ptr noundef nonnull %i.aez) #27
  br label %bb.ch

bb.ch:                                            ; preds = %bb.cg, %bb.cf
  store ptr %i.aax, ptr %12, align 8, !tbaa !51
  br label %_ZN2cv10AutoBufferIhLm1032EE10deallocateEv.exit.i

_ZN2cv10AutoBufferIhLm1032EE10deallocateEv.exit.i: ; preds = %bb.ch, %bb.ce
  %i.afb = phi ptr [ %i.aax, %bb.ch ], [ %i.aez, %bb.ce ]
  store i64 %i.aex, ptr %i.aay, align 8, !tbaa !52
  %i.afc = icmp ugt i64 %i.aex, 1032
  br i1 %i.afc, label %bb.ci, label %_ZN2cv10AutoBufferIhLm1032EE8allocateEm.exit

bb.ci:                                            ; preds = %_ZN2cv10AutoBufferIhLm1032EE10deallocateEv.exit.i
  %i.afd = invoke noalias noundef nonnull ptr @_Znam(i64 noundef %i.aex) #28
          to label %.noexc1089 unwind label %bb.bv ; 2 uses

.noexc1089:                                       ; preds = %bb.ci
  store ptr %i.afd, ptr %12, align 8, !tbaa !51
  br label %_ZN2cv10AutoBufferIhLm1032EE8allocateEm.exit

_ZN2cv10AutoBufferIhLm1032EE8allocateEm.exit:     ; preds = %.noexc1089, %_ZN2cv10AutoBufferIhLm1032EE10deallocateEv.exit.i, %bb.cd
  %i.afe = phi ptr [ %i.afd, %.noexc1089 ], [ %i.afb, %_ZN2cv10AutoBufferIhLm1032EE10deallocateEv.exit.i ], [ %.pre, %bb.cd ] ; 6 uses
  %i.aff = getelementptr inbounds nuw i8, ptr %i.afe, i64 %i.ael ; 4 uses
  %i.afg = getelementptr inbounds nuw i8, ptr %i.aff, i64 %i.aej ; 9 uses
  %spec.select1085 = select i1 %i.ade, ptr %i.afg, ptr null ; 4 uses
  %i.afh = icmp sgt i32 %.sroa.32.0, 0
  br i1 %i.afh, label %.lr.ph1382, label %.loopexit1279

.lr.ph1382:                                       ; preds = %_ZN2cv10AutoBufferIhLm1032EE8allocateEm.exit
  %i.afi = shl nsw i32 %.sroa.32.0, 3
  %i.afj = icmp sgt i32 %.sroa.01168.0, 0
  %i.afk = getelementptr inbounds nuw i8, ptr %5, i64 24 ; 2 uses
  %i.afl = getelementptr inbounds nuw i8, ptr %5, i64 128 ; 2 uses
  %i.afm = shl nsw i32 %.sroa.01168.0, 3
  %i.afn = icmp slt i32 %.sroa.speculated1143, %.01252
  %i.afo = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.afp = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.afq = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.afr = shl nuw nsw i32 %.01252, 3
  %.not1276 = icmp eq ptr %i.afe, null
  %i.afs = lshr i32 %i.ada, 2
  %15 = mul nsw i64 %i.aeg, %i.aeh
  %16 = mul i64 %15, %i.aek                       ; 2 uses
  %scevgep = getelementptr i8, ptr %i.afe, i64 %16
  %scevgep1497.a = getelementptr i8, ptr %i.afe, i64 %16
  %stride.check1501 = icmp slt i64 %.0918, 0
  br label %bb.cj

bb.cj:                                            ; preds = %.lr.ph1382, %._crit_edge1367
  %.31381 = phi i32 [ %.2, %.lr.ph1382 ], [ %.4.lcssa, %._crit_edge1367 ] ; 2 uses
  %.121380 = phi i32 [ 0, %.lr.ph1382 ], [ %i.amu, %._crit_edge1367 ] ; 4 uses
  %i.aft = add nsw i32 %.121380, %.0897           ; 2 uses
  %.not1052 = icmp slt i32 %i.aft, %.sroa.32.0
  br i1 %.not1052, label %bb.ck, label %bb.cl

bb.ck:                                            ; preds = %bb.cj
  %i.afu = shl nsw i32 %i.aft, 3
  %i.afv = add nsw i32 %i.afu, %.0897
  %i.afw = icmp sgt i32 %i.afv, %i.afi
  br i1 %i.afw, label %bb.cl, label %bb.cm

bb.cl:                                            ; preds = %bb.ck, %bb.cj
  %i.afx = sub nsw i32 %.sroa.32.0, %.121380
  br label %bb.cm

bb.cm:                                            ; preds = %bb.cl, %bb.ck
  %.0900 = phi i32 [ %i.afx, %bb.cl ], [ %.0897, %bb.ck ] ; 19 uses
  br i1 %i.afj, label %.lr.ph1366.split.us.preheader, label %._crit_edge1367

.lr.ph1366.split.us.preheader:                    ; preds = %bb.cm
  %i.afy = sext i32 %.121380 to i64               ; 4 uses
  %i.afz = mul i64 %.0891, %i.afy
  %i.aga = getelementptr inbounds nuw i8, ptr %i.aat, i64 %i.afz
  %i.agb = mul i64 %.0895, %i.afy
  %i.agc = icmp sgt i32 %.0900, 0
  %.sroa.21110.0.insert.ext = zext i32 %.0900 to i64
  %.sroa.21110.0.insert.shift = shl nuw i64 %.sroa.21110.0.insert.ext, 32
  %i.agd = and i32 %.31381, 15                    ; 2 uses
  %i.age = or disjoint i32 %i.agd, 16             ; 3 uses
  %xtraiter = and i32 %.0900, 1
  %i.agf = icmp eq i32 %.0900, 1
  %unroll_iter = and i32 %.0900, 2147483646
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  %lcmp.mod1521 = trunc i32 %.0900 to i1
  br label %.lr.ph1366.split.us

.lr.ph1366.split.us:                              ; preds = %.lr.ph1366.split.us.preheader, %._crit_edge.us.thread
  %.09021363.us = phi i32 [ %i.amg, %._crit_edge.us.thread ], [ 0, %.lr.ph1366.split.us.preheader ] ; 5 uses
  %i.agg = load ptr, ptr %i.afk, align 8, !tbaa !47
  %i.agh = load i64, ptr %i.afl, align 8, !tbaa !38 ; 2 uses
  %i.agi = mul i64 %i.agh, %i.afy
  %i.agj = getelementptr inbounds nuw i8, ptr %i.agg, i64 %i.agi
  %i.agk = mul nsw i32 %.09021363.us, %i.ada
  %i.agl = sext i32 %i.agk to i64                 ; 2 uses
  %i.agm = getelementptr inbounds i8, ptr %i.agj, i64 %i.agl
  %i.agn = sext i32 %.09021363.us to i64          ; 2 uses
  %i.ago = mul i64 %.0890, %i.agn
  %i.agp = getelementptr inbounds nuw i8, ptr %i.aga, i64 %i.ago ; 2 uses
  %i.agq = add nsw i32 %.09021363.us, %.0896      ; 2 uses
  %.not1053.us = icmp slt i32 %i.agq, %.sroa.01168.0
  br i1 %.not1053.us, label %bb.cn, label %bb.co

bb.cn:                                            ; preds = %.lr.ph1366.split.us
  %i.agr = shl nsw i32 %i.agq, 3
  %i.ags = add nsw i32 %i.agr, %.0896
  %i.agt = icmp sgt i32 %i.ags, %i.afm
  br i1 %i.agt, label %bb.co, label %.lr.ph1362.us

bb.co:                                            ; preds = %bb.cn, %.lr.ph1366.split.us
  %i.agu = sub nsw i32 %.sroa.01168.0, %.09021363.us
  br label %.lr.ph1362.us

.lr.ph1362.us:                                    ; preds = %bb.co, %bb.cn
  %.0899.us = phi i32 [ %i.agu, %bb.co ], [ %.0896, %bb.cn ] ; 6 uses
  %i.agv = mul nsw i32 %.0899.us, %i.add
  %i.agw = sext i32 %i.agv to i64                 ; 2 uses
  %i.agx = mul i64 %..0918, %i.agn                ; 2 uses
  %i.agy = icmp slt i32 %.0899.us, %.sroa.01168.0
  %.sroa.01109.0.insert.ext.us = zext i32 %.0899.us to i64
  %.sroa.01109.0.insert.insert.us = or disjoint i64 %.sroa.21110.0.insert.shift, %.sroa.01109.0.insert.ext.us ; 3 uses
  br label %.backedge

.backedge:                                        ; preds = %.backedge.backedge, %.lr.ph1362.us
  %.51361.us = phi i32 [ %i.agd, %.lr.ph1362.us ], [ %i.age, %.backedge.backedge ] ; 2 uses
  %.09011360.us = phi i32 [ 0, %.lr.ph1362.us ], [ %.09011360.us.be, %.backedge.backedge ] ; 5 uses
  %i.agz = load ptr, ptr %i.afo, align 8, !tbaa !47
  %i.aha = getelementptr inbounds nuw i8, ptr %i.agz, i64 %i.agb
  %i.ahb = sext i32 %.09011360.us to i64          ; 2 uses
  %i.ahc = mul i64 %.0894, %i.ahb
  %i.ahd = getelementptr inbounds nuw i8, ptr %i.aha, i64 %i.ahc ; 6 uses
  %i.ahe = load i64, ptr %i.afp, align 8, !tbaa !38 ; 15 uses
  %i.ahf = load ptr, ptr %i.afq, align 8, !tbaa !47 ; 2 uses
  %i.ahg = mul i64 %.0918., %i.ahb                ; 2 uses
  %i.ahh = getelementptr i8, ptr %i.ahf, i64 %i.ahg
  %i.ahi = getelementptr i8, ptr %i.ahh, i64 %i.agx ; 3 uses
  %i.ahj = add nsw i32 %.09011360.us, %.sroa.speculated ; 2 uses
  %.not1054.us = icmp slt i32 %i.ahj, %.01252
  br i1 %.not1054.us, label %bb.cp, label %bb.cq

bb.cp:                                            ; preds = %.backedge
  %i.ahk = shl nsw i32 %i.ahj, 3
  %i.ahl = add nsw i32 %i.ahk, %.sroa.speculated
  %i.ahm = icmp sgt i32 %i.ahl, %i.afr
  br i1 %i.ahm, label %bb.cq, label %bb.cr

bb.cq:                                            ; preds = %bb.cp, %.backedge
  %i.ahn = sub nsw i32 %.01252, %.09011360.us
  br label %bb.cr

bb.cr:                                            ; preds = %bb.cq, %bb.cp
  %.0898.us = phi i32 [ %i.ahn, %bb.cq ], [ %.sroa.speculated, %bb.cp ] ; 20 uses
  br i1 %i.ade, label %bb.cs, label %_ZN2cv12cpu_baselineL19GEMM_TransposeBlockEPKhmPhmNS_5Size_IiEEm.exit.us

bb.cs:                                            ; preds = %bb.cr
  br i1 %.not1276, label %_ZN2cv12cpu_baselineL19GEMM_TransposeBlockEPKhmPhmNS_5Size_IiEEm.exit.us, label %bb.ct

bb.ct:                                            ; preds = %bb.cs
  %i.aho = mul nsw i32 %.0898.us, %i.ada
  %i.ahp = sext i32 %i.aho to i64                 ; 12 uses
  %.sroa.11.0.insert.ext1125.us = zext i32 %.0898.us to i64 ; 4 uses
  br i1 %i.agc, label %.lr.ph77.i.us, label %_ZN2cv12cpu_baselineL19GEMM_TransposeBlockEPKhmPhmNS_5Size_IiEEm.exit.us

.lr.ph77.i.us:                                    ; preds = %bb.ct
  %i.ahq = shl nuw nsw i64 %.sroa.11.0.insert.ext1125.us, 2
  switch i32 %i.ada, label %.split.us [
    i32 4, label %.lr.ph77.split.split.us.i.us
    i32 8, label %.lr.ph77.split.split.us78.i.us
    i32 16, label %.lr.ph77.split.split.i.us
  ]

.lr.ph77.split.split.i.us:                        ; preds = %.lr.ph77.i.us
  %i.ahr = icmp sgt i32 %.0898.us, 0
  br i1 %i.ahr, label %.preheader62.preheader.i.us, label %_ZN2cv12cpu_baselineL19GEMM_TransposeBlockEPKhmPhmNS_5Size_IiEEm.exit.us

.preheader62.preheader.i.us:                      ; preds = %.lr.ph77.split.split.i.us
  %i.ahs = and i64 %i.ahq, 4294967292             ; 3 uses
  br i1 %i.agf, label %.preheader62.i.us.epil.preheader, label %.preheader62.i.us

.preheader62.i.us:                                ; preds = %.preheader62.preheader.i.us, %..loopexit63_crit_edge.i.us.1
  %.05275.i.us = phi ptr [ %i.aik, %..loopexit63_crit_edge.i.us.1 ], [ %i.ahd, %.preheader62.preheader.i.us ] ; 3 uses
  %.05373.i.us = phi ptr [ %i.aij, %..loopexit63_crit_edge.i.us.1 ], [ %i.afg, %.preheader62.preheader.i.us ] ; 2 uses
  %niter = phi i32 [ %niter.next.1, %..loopexit63_crit_edge.i.us.1 ], [ 0, %.preheader62.preheader.i.us ]
  br label %bb.cu

bb.cu:                                            ; preds = %bb.cu, %.preheader62.i.us
  %indvars.iv.i.us = phi i64 [ 0, %.preheader62.i.us ], [ %indvars.iv.next.i.us, %bb.cu ] ; 2 uses
  %.25864.i.us = phi ptr [ %.05275.i.us, %.preheader62.i.us ], [ %i.ahy, %bb.cu ] ; 3 uses
  %i.aht = getelementptr inbounds nuw [4 x i8], ptr %.05373.i.us, i64 %indvars.iv.i.us ; 2 uses
  %i.ahu = load <2 x i32>, ptr %.25864.i.us, align 4, !tbaa !30
  store <2 x i32> %i.ahu, ptr %i.aht, align 4, !tbaa !30
  %i.ahv = getelementptr inbounds nuw i8, ptr %.25864.i.us, i64 8
  %i.ahw = getelementptr inbounds nuw i8, ptr %i.aht, i64 8
  %i.ahx = load <2 x i32>, ptr %i.ahv, align 4, !tbaa !30
  store <2 x i32> %i.ahx, ptr %i.ahw, align 4, !tbaa !30
  %indvars.iv.next.i.us = add nuw nsw i64 %indvars.iv.i.us, 4 ; 2 uses
  %i.ahy = getelementptr inbounds nuw i8, ptr %.25864.i.us, i64 %i.ahe
  %i.ahz = icmp samesign ult i64 %indvars.iv.next.i.us, %i.ahs
  br i1 %i.ahz, label %bb.cu, label %..loopexit63_crit_edge.i.us, !llvm.loop !907

..loopexit63_crit_edge.i.us:                      ; preds = %bb.cu
  %i.aia = getelementptr inbounds nuw i8, ptr %.05373.i.us, i64 %i.ahp ; 2 uses
  %i.aib = getelementptr inbounds nuw i8, ptr %.05275.i.us, i64 16
  br label %bb.cv

bb.cv:                                            ; preds = %bb.cv, %..loopexit63_crit_edge.i.us
  %indvars.iv.i.us.1 = phi i64 [ 0, %..loopexit63_crit_edge.i.us ], [ %indvars.iv.next.i.us.1, %bb.cv ] ; 2 uses
  %.25864.i.us.1 = phi ptr [ %i.aib, %..loopexit63_crit_edge.i.us ], [ %i.aih, %bb.cv ] ; 3 uses
  %i.aic = getelementptr inbounds nuw [4 x i8], ptr %i.aia, i64 %indvars.iv.i.us.1 ; 2 uses
  %i.aid = load <2 x i32>, ptr %.25864.i.us.1, align 4, !tbaa !30
  store <2 x i32> %i.aid, ptr %i.aic, align 4, !tbaa !30
  %i.aie = getelementptr inbounds nuw i8, ptr %.25864.i.us.1, i64 8
  %i.aif = getelementptr inbounds nuw i8, ptr %i.aic, i64 8
  %i.aig = load <2 x i32>, ptr %i.aie, align 4, !tbaa !30
  store <2 x i32> %i.aig, ptr %i.aif, align 4, !tbaa !30
  %indvars.iv.next.i.us.1 = add nuw nsw i64 %indvars.iv.i.us.1, 4 ; 2 uses
  %i.aih = getelementptr inbounds nuw i8, ptr %.25864.i.us.1, i64 %i.ahe
  %i.aii = icmp samesign ult i64 %indvars.iv.next.i.us.1, %i.ahs
  br i1 %i.aii, label %bb.cv, label %..loopexit63_crit_edge.i.us.1, !llvm.loop !907

..loopexit63_crit_edge.i.us.1:                    ; preds = %bb.cv
  %i.aij = getelementptr inbounds nuw i8, ptr %i.aia, i64 %i.ahp ; 2 uses
  %i.aik = getelementptr inbounds nuw i8, ptr %.05275.i.us, i64 32 ; 2 uses
  %niter.next.1 = add nuw nsw i32 %niter, 2       ; 2 uses
  %niter.ncmp.1 = icmp eq i32 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %_ZN2cv12cpu_baselineL19GEMM_TransposeBlockEPKhmPhmNS_5Size_IiEEm.exit.us.loopexit1509.unr-lcssa, label %.preheader62.i.us, !llvm.loop !908

.lr.ph77.split.split.us78.i.us:                   ; preds = %.lr.ph77.i.us
  %i.ail = icmp sgt i32 %.0898.us, 0
  br i1 %i.ail, label %.preheader60.us.i.us.preheader, label %_ZN2cv12cpu_baselineL19GEMM_TransposeBlockEPKhmPhmNS_5Size_IiEEm.exit.us

.preheader60.us.i.us.preheader:                   ; preds = %.lr.ph77.split.split.us78.i.us
  %i.aim = add nuw i64 %.sroa.11.0.insert.ext1125.us, 9223372036854775807
  %i.ain = and i64 %i.aim, 9223372036854775807    ; 2 uses
  %i.aio = add nuw i64 %i.ain, 1                  ; 2 uses
  %xtraiter1522 = and i64 %i.aio, 3               ; 3 uses
  %i.aip = icmp samesign ult i64 %i.ain, 3
  %unroll_iter1525 = and i64 %i.aio, -4
  %lcmp.mod1523.not = icmp eq i64 %xtraiter1522, 0
  %lcmp.mod1524 = icmp ne i64 %xtraiter1522, 0
  br label %.preheader60.us.i.us

.preheader60.us.i.us:                             ; preds = %.preheader60.us.i.us.preheader, %..loopexit61_crit_edge.us.i.us
  %.05275.us79.i.us = phi ptr [ %i.ajk, %..loopexit61_crit_edge.us.i.us ], [ %i.ahd, %.preheader60.us.i.us.preheader ] ; 3 uses
  %.05373.us80.i.us = phi ptr [ %i.ajj, %..loopexit61_crit_edge.us.i.us ], [ %i.afg, %.preheader60.us.i.us.preheader ] ; 6 uses
  %.05472.us81.i.us = phi i32 [ %i.aji, %..loopexit61_crit_edge.us.i.us ], [ 0, %.preheader60.us.i.us.preheader ]
  br i1 %i.aip, label %.epil.preheader, label %.preheader60.us.i.us.new

.preheader60.us.i.us.new:                         ; preds = %.preheader60.us.i.us, %.preheader60.us.i.us.new
  %indvars.iv85.i.us = phi i64 [ %indvars.iv.next86.i.us.3, %.preheader60.us.i.us.new ], [ 0, %.preheader60.us.i.us ] ; 5 uses
  %.15766.us.i.us = phi ptr [ %i.aje, %.preheader60.us.i.us.new ], [ %.05275.us79.i.us, %.preheader60.us.i.us ] ; 2 uses
  %niter1526 = phi i64 [ %niter1526.next.3, %.preheader60.us.i.us.new ], [ 0, %.preheader60.us.i.us ]
  %i.aiq = getelementptr inbounds nuw [4 x i8], ptr %.05373.us80.i.us, i64 %indvars.iv85.i.us
  %i.air = load <2 x i32>, ptr %.15766.us.i.us, align 4, !tbaa !30
  store <2 x i32> %i.air, ptr %i.aiq, align 4, !tbaa !30
  %i.ais = getelementptr inbounds nuw i8, ptr %.15766.us.i.us, i64 %i.ahe ; 2 uses
  %i.ait = getelementptr inbounds nuw [4 x i8], ptr %.05373.us80.i.us, i64 %indvars.iv85.i.us
  %i.aiu = getelementptr inbounds nuw i8, ptr %i.ait, i64 8
  %i.aiv = load <2 x i32>, ptr %i.ais, align 4, !tbaa !30
  store <2 x i32> %i.aiv, ptr %i.aiu, align 4, !tbaa !30
  %i.aiw = getelementptr inbounds nuw i8, ptr %i.ais, i64 %i.ahe ; 2 uses
  %i.aix = getelementptr inbounds nuw [4 x i8], ptr %.05373.us80.i.us, i64 %indvars.iv85.i.us
  %i.aiy = getelementptr inbounds nuw i8, ptr %i.aix, i64 16
  %i.aiz = load <2 x i32>, ptr %i.aiw, align 4, !tbaa !30
  store <2 x i32> %i.aiz, ptr %i.aiy, align 4, !tbaa !30
  %i.aja = getelementptr inbounds nuw i8, ptr %i.aiw, i64 %i.ahe ; 2 uses
  %i.ajb = getelementptr inbounds nuw [4 x i8], ptr %.05373.us80.i.us, i64 %indvars.iv85.i.us
  %i.ajc = getelementptr inbounds nuw i8, ptr %i.ajb, i64 24
  %i.ajd = load <2 x i32>, ptr %i.aja, align 4, !tbaa !30
  store <2 x i32> %i.ajd, ptr %i.ajc, align 4, !tbaa !30
  %indvars.iv.next86.i.us.3 = add nuw nsw i64 %indvars.iv85.i.us, 8 ; 2 uses
  %i.aje = getelementptr inbounds nuw i8, ptr %i.aja, i64 %i.ahe ; 2 uses
  %niter1526.next.3 = add i64 %niter1526, 4       ; 2 uses
  %niter1526.ncmp.3.not = icmp eq i64 %niter1526.next.3, %unroll_iter1525
  br i1 %niter1526.ncmp.3.not, label %..loopexit61_crit_edge.us.i.us.unr-lcssa, label %.preheader60.us.i.us.new, !llvm.loop !909

..loopexit61_crit_edge.us.i.us.unr-lcssa:         ; preds = %.preheader60.us.i.us.new
  br i1 %lcmp.mod1523.not, label %..loopexit61_crit_edge.us.i.us, label %.epil.preheader

.epil.preheader:                                  ; preds = %..loopexit61_crit_edge.us.i.us.unr-lcssa, %.preheader60.us.i.us
  %indvars.iv85.i.us.epil.init = phi i64 [ 0, %.preheader60.us.i.us ], [ %indvars.iv.next86.i.us.3, %..loopexit61_crit_edge.us.i.us.unr-lcssa ]
  %.15766.us.i.us.epil.init = phi ptr [ %.05275.us79.i.us, %.preheader60.us.i.us ], [ %i.aje, %..loopexit61_crit_edge.us.i.us.unr-lcssa ]
  call void @llvm.assume(i1 %lcmp.mod1524)
  br label %bb.cw

bb.cw:                                            ; preds = %bb.cw, %.epil.preheader
  %indvars.iv85.i.us.epil = phi i64 [ %indvars.iv85.i.us.epil.init, %.epil.preheader ], [ %indvars.iv.next86.i.us.epil, %bb.cw ] ; 2 uses
  %.15766.us.i.us.epil = phi ptr [ %.15766.us.i.us.epil.init, %.epil.preheader ], [ %i.ajh, %bb.cw ] ; 2 uses
  %epil.iter = phi i64 [ 0, %.epil.preheader ], [ %epil.iter.next, %bb.cw ]
  %i.ajf = getelementptr inbounds nuw [4 x i8], ptr %.05373.us80.i.us, i64 %indvars.iv85.i.us.epil
  %i.ajg = load <2 x i32>, ptr %.15766.us.i.us.epil, align 4, !tbaa !30
  store <2 x i32> %i.ajg, ptr %i.ajf, align 4, !tbaa !30
  %indvars.iv.next86.i.us.epil = add nuw nsw i64 %indvars.iv85.i.us.epil, 2
  %i.ajh = getelementptr inbounds nuw i8, ptr %.15766.us.i.us.epil, i64 %i.ahe
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter1522
  br i1 %epil.iter.cmp.not, label %..loopexit61_crit_edge.us.i.us, label %bb.cw, !llvm.loop !910

..loopexit61_crit_edge.us.i.us:                   ; preds = %bb.cw, %..loopexit61_crit_edge.us.i.us.unr-lcssa
  %i.aji = add nuw nsw i32 %.05472.us81.i.us, 1   ; 2 uses
  %i.ajj = getelementptr inbounds nuw i8, ptr %.05373.us80.i.us, i64 %i.ahp
  %i.ajk = getelementptr inbounds nuw i8, ptr %.05275.us79.i.us, i64 8
  %exitcond88.not.i.us = icmp eq i32 %i.aji, %.0900
  br i1 %exitcond88.not.i.us, label %_ZN2cv12cpu_baselineL19GEMM_TransposeBlockEPKhmPhmNS_5Size_IiEEm.exit.us, label %.preheader60.us.i.us, !llvm.loop !908

.lr.ph77.split.split.us.i.us:                     ; preds = %.lr.ph77.i.us
  %i.ajl = icmp sgt i32 %.0898.us, 0
  br i1 %i.ajl, label %.preheader.us.i.us.preheader, label %_ZN2cv12cpu_baselineL19GEMM_TransposeBlockEPKhmPhmNS_5Size_IiEEm.exit.us

.preheader.us.i.us.preheader:                     ; preds = %.lr.ph77.split.split.us.i.us
  %xtraiter1528 = and i64 %.sroa.11.0.insert.ext1125.us, 3 ; 3 uses
  %i.ajm = icmp ult i32 %.0898.us, 4
  %unroll_iter1532 = and i64 %.sroa.11.0.insert.ext1125.us, 2147483644
  %lcmp.mod1530.not = icmp eq i64 %xtraiter1528, 0
  %lcmp.mod1531 = icmp ne i64 %xtraiter1528, 0
  br label %.preheader.us.i.us

.preheader.us.i.us:                               ; preds = %.preheader.us.i.us.preheader, %..loopexit_crit_edge.us.i.us
  %.05275.us.i.us = phi ptr [ %i.akh, %..loopexit_crit_edge.us.i.us ], [ %i.ahd, %.preheader.us.i.us.preheader ] ; 3 uses
  %.05373.us.i.us = phi ptr [ %i.akg, %..loopexit_crit_edge.us.i.us ], [ %i.afg, %.preheader.us.i.us.preheader ] ; 6 uses
  %.05472.us.i.us = phi i32 [ %i.akf, %..loopexit_crit_edge.us.i.us ], [ 0, %.preheader.us.i.us.preheader ]
  br i1 %i.ajm, label %.epil.preheader1527, label %.preheader.us.i.us.new

.preheader.us.i.us.new:                           ; preds = %.preheader.us.i.us, %.preheader.us.i.us.new
  %indvars.iv89.i.us = phi i64 [ %indvars.iv.next90.i.us.3, %.preheader.us.i.us.new ], [ 0, %.preheader.us.i.us ] ; 5 uses
  %.05669.us.i.us = phi ptr [ %i.akb, %.preheader.us.i.us.new ], [ %.05275.us.i.us, %.preheader.us.i.us ] ; 2 uses
  %niter1533 = phi i64 [ %niter1533.next.3, %.preheader.us.i.us.new ], [ 0, %.preheader.us.i.us ]
  %i.ajn = load i32, ptr %.05669.us.i.us, align 4, !tbaa !30
  %i.ajo = getelementptr inbounds nuw [4 x i8], ptr %.05373.us.i.us, i64 %indvars.iv89.i.us
  store i32 %i.ajn, ptr %i.ajo, align 4, !tbaa !30
  %i.ajp = getelementptr inbounds nuw i8, ptr %.05669.us.i.us, i64 %i.ahe ; 2 uses
  %i.ajq = load i32, ptr %i.ajp, align 4, !tbaa !30
  %i.ajr = getelementptr inbounds nuw [4 x i8], ptr %.05373.us.i.us, i64 %indvars.iv89.i.us
  %i.ajs = getelementptr inbounds nuw i8, ptr %i.ajr, i64 4
  store i32 %i.ajq, ptr %i.ajs, align 4, !tbaa !30
  %i.ajt = getelementptr inbounds nuw i8, ptr %i.ajp, i64 %i.ahe ; 2 uses
  %i.aju = load i32, ptr %i.ajt, align 4, !tbaa !30
  %i.ajv = getelementptr inbounds nuw [4 x i8], ptr %.05373.us.i.us, i64 %indvars.iv89.i.us
  %i.ajw = getelementptr inbounds nuw i8, ptr %i.ajv, i64 8
  store i32 %i.aju, ptr %i.ajw, align 4, !tbaa !30
  %i.ajx = getelementptr inbounds nuw i8, ptr %i.ajt, i64 %i.ahe ; 2 uses
  %i.ajy = load i32, ptr %i.ajx, align 4, !tbaa !30
  %i.ajz = getelementptr inbounds nuw [4 x i8], ptr %.05373.us.i.us, i64 %indvars.iv89.i.us
  %i.aka = getelementptr inbounds nuw i8, ptr %i.ajz, i64 12
  store i32 %i.ajy, ptr %i.aka, align 4, !tbaa !30
  %indvars.iv.next90.i.us.3 = add nuw nsw i64 %indvars.iv89.i.us, 4 ; 2 uses
  %i.akb = getelementptr inbounds nuw i8, ptr %i.ajx, i64 %i.ahe ; 2 uses
  %niter1533.next.3 = add i64 %niter1533, 4       ; 2 uses
  %niter1533.ncmp.3 = icmp eq i64 %niter1533.next.3, %unroll_iter1532
  br i1 %niter1533.ncmp.3, label %..loopexit_crit_edge.us.i.us.unr-lcssa, label %.preheader.us.i.us.new, !llvm.loop !911

..loopexit_crit_edge.us.i.us.unr-lcssa:           ; preds = %.preheader.us.i.us.new
  br i1 %lcmp.mod1530.not, label %..loopexit_crit_edge.us.i.us, label %.epil.preheader1527

.epil.preheader1527:                              ; preds = %..loopexit_crit_edge.us.i.us.unr-lcssa, %.preheader.us.i.us
  %indvars.iv89.i.us.epil.init = phi i64 [ 0, %.preheader.us.i.us ], [ %indvars.iv.next90.i.us.3, %..loopexit_crit_edge.us.i.us.unr-lcssa ]
  %.05669.us.i.us.epil.init = phi ptr [ %.05275.us.i.us, %.preheader.us.i.us ], [ %i.akb, %..loopexit_crit_edge.us.i.us.unr-lcssa ]
  call void @llvm.assume(i1 %lcmp.mod1531)
  br label %bb.cx

bb.cx:                                            ; preds = %bb.cx, %.epil.preheader1527
  %indvars.iv89.i.us.epil = phi i64 [ %indvars.iv89.i.us.epil.init, %.epil.preheader1527 ], [ %indvars.iv.next90.i.us.epil, %bb.cx ] ; 2 uses
  %.05669.us.i.us.epil = phi ptr [ %.05669.us.i.us.epil.init, %.epil.preheader1527 ], [ %i.ake, %bb.cx ] ; 2 uses
  %epil.iter1529 = phi i64 [ 0, %.epil.preheader1527 ], [ %epil.iter1529.next, %bb.cx ]
  %i.akc = load i32, ptr %.05669.us.i.us.epil, align 4, !tbaa !30
  %i.akd = getelementptr inbounds nuw [4 x i8], ptr %.05373.us.i.us, i64 %indvars.iv89.i.us.epil
  store i32 %i.akc, ptr %i.akd, align 4, !tbaa !30
  %indvars.iv.next90.i.us.epil = add nuw nsw i64 %indvars.iv89.i.us.epil, 1
  %i.ake = getelementptr inbounds nuw i8, ptr %.05669.us.i.us.epil, i64 %i.ahe
  %epil.iter1529.next = add i64 %epil.iter1529, 1 ; 2 uses
  %epil.iter1529.cmp.not = icmp eq i64 %epil.iter1529.next, %xtraiter1528
  br i1 %epil.iter1529.cmp.not, label %..loopexit_crit_edge.us.i.us, label %bb.cx, !llvm.loop !912

..loopexit_crit_edge.us.i.us:                     ; preds = %bb.cx, %..loopexit_crit_edge.us.i.us.unr-lcssa
  %i.akf = add nuw nsw i32 %.05472.us.i.us, 1     ; 2 uses
  %i.akg = getelementptr inbounds nuw i8, ptr %.05373.us.i.us, i64 %i.ahp
  %i.akh = getelementptr inbounds nuw i8, ptr %.05275.us.i.us, i64 4
  %exitcond93.not.i.us = icmp eq i32 %i.akf, %.0900
  br i1 %exitcond93.not.i.us, label %_ZN2cv12cpu_baselineL19GEMM_TransposeBlockEPKhmPhmNS_5Size_IiEEm.exit.us, label %.preheader.us.i.us, !llvm.loop !908

_ZN2cv12cpu_baselineL19GEMM_TransposeBlockEPKhmPhmNS_5Size_IiEEm.exit.us.loopexit1509.unr-lcssa: ; preds = %..loopexit63_crit_edge.i.us.1
  br i1 %lcmp.mod.not, label %_ZN2cv12cpu_baselineL19GEMM_TransposeBlockEPKhmPhmNS_5Size_IiEEm.exit.us, label %.preheader62.i.us.epil.preheader

.preheader62.i.us.epil.preheader:                 ; preds = %_ZN2cv12cpu_baselineL19GEMM_TransposeBlockEPKhmPhmNS_5Size_IiEEm.exit.us.loopexit1509.unr-lcssa, %.preheader62.preheader.i.us
  %.05275.i.us.epil.init = phi ptr [ %i.ahd, %.preheader62.preheader.i.us ], [ %i.aik, %_ZN2cv12cpu_baselineL19GEMM_TransposeBlockEPKhmPhmNS_5Size_IiEEm.exit.us.loopexit1509.unr-lcssa ]
  %.05373.i.us.epil.init = phi ptr [ %i.afg, %.preheader62.preheader.i.us ], [ %i.aij, %_ZN2cv12cpu_baselineL19GEMM_TransposeBlockEPKhmPhmNS_5Size_IiEEm.exit.us.loopexit1509.unr-lcssa ]
  call void @llvm.assume(i1 %lcmp.mod1521)
  br label %bb.cy

bb.cy:                                            ; preds = %bb.cy, %.preheader62.i.us.epil.preheader
  %indvars.iv.i.us.epil = phi i64 [ 0, %.preheader62.i.us.epil.preheader ], [ %indvars.iv.next.i.us.epil, %bb.cy ] ; 2 uses
  %.25864.i.us.epil = phi ptr [ %.05275.i.us.epil.init, %.preheader62.i.us.epil.preheader ], [ %i.akn, %bb.cy ] ; 3 uses
  %i.aki = getelementptr inbounds nuw [4 x i8], ptr %.05373.i.us.epil.init, i64 %indvars.iv.i.us.epil ; 2 uses
  %i.akj = load <2 x i32>, ptr %.25864.i.us.epil, align 4, !tbaa !30
  store <2 x i32> %i.akj, ptr %i.aki, align 4, !tbaa !30
  %i.akk = getelementptr inbounds nuw i8, ptr %.25864.i.us.epil, i64 8
  %i.akl = getelementptr inbounds nuw i8, ptr %i.aki, i64 8
  %i.akm = load <2 x i32>, ptr %i.akk, align 4, !tbaa !30
  store <2 x i32> %i.akm, ptr %i.akl, align 4, !tbaa !30
  %indvars.iv.next.i.us.epil = add nuw nsw i64 %indvars.iv.i.us.epil, 4 ; 2 uses
  %i.akn = getelementptr inbounds nuw i8, ptr %.25864.i.us.epil, i64 %i.ahe
  %i.ako = icmp samesign ult i64 %indvars.iv.next.i.us.epil, %i.ahs
  br i1 %i.ako, label %bb.cy, label %_ZN2cv12cpu_baselineL19GEMM_TransposeBlockEPKhmPhmNS_5Size_IiEEm.exit.us, !llvm.loop !907

_ZN2cv12cpu_baselineL19GEMM_TransposeBlockEPKhmPhmNS_5Size_IiEEm.exit.us: ; preds = %_ZN2cv12cpu_baselineL19GEMM_TransposeBlockEPKhmPhmNS_5Size_IiEEm.exit.us.loopexit1509.unr-lcssa, %bb.cy, %..loopexit61_crit_edge.us.i.us, %..loopexit_crit_edge.us.i.us, %.lr.ph77.split.split.us.i.us, %.lr.ph77.split.split.us78.i.us, %.lr.ph77.split.split.i.us, %bb.ct, %bb.cs, %bb.cr
  %.sroa.11.1.us = phi i32 [ %.0900, %bb.ct ], [ %.0898.us, %bb.cs ], [ %.0900, %..loopexit_crit_edge.us.i.us ], [ %.0900, %.lr.ph77.split.split.i.us ], [ %.0900, %..loopexit61_crit_edge.us.i.us ], [ %.0900, %.lr.ph77.split.split.us78.i.us ], [ %.0900, %bb.cr ], [ %.0900, %.lr.ph77.split.split.us.i.us ], [ %.0900, %bb.cy ], [ %.0900, %_ZN2cv12cpu_baselineL19GEMM_TransposeBlockEPKhmPhmNS_5Size_IiEEm.exit.us.loopexit1509.unr-lcssa ]
  %.sroa.01114.1.us = phi i32 [ %.0898.us, %bb.ct ], [ %.0900, %bb.cs ], [ %.0898.us, %..loopexit_crit_edge.us.i.us ], [ %.0898.us, %.lr.ph77.split.split.i.us ], [ %.0898.us, %..loopexit61_crit_edge.us.i.us ], [ %.0898.us, %.lr.ph77.split.split.us78.i.us ], [ %.0898.us, %bb.cr ], [ %.0898.us, %.lr.ph77.split.split.us.i.us ], [ %.0898.us, %bb.cy ], [ %.0898.us, %_ZN2cv12cpu_baselineL19GEMM_TransposeBlockEPKhmPhmNS_5Size_IiEEm.exit.us.loopexit1509.unr-lcssa ]
  %.0887.us = phi ptr [ %i.afg, %bb.ct ], [ %i.ahd, %bb.cs ], [ %spec.select1085, %..loopexit_crit_edge.us.i.us ], [ %i.afg, %.lr.ph77.split.split.i.us ], [ %spec.select1085, %..loopexit61_crit_edge.us.i.us ], [ %i.afg, %.lr.ph77.split.split.us78.i.us ], [ %i.ahd, %bb.cr ], [ %i.afg, %.lr.ph77.split.split.us.i.us ], [ %spec.select1085, %bb.cy ], [ %spec.select1085, %_ZN2cv12cpu_baselineL19GEMM_TransposeBlockEPKhmPhmNS_5Size_IiEEm.exit.us.loopexit1509.unr-lcssa ] ; 2 uses
  %.0886.us = phi i64 [ %i.ahp, %bb.ct ], [ %i.ahe, %bb.cs ], [ %i.ahp, %..loopexit_crit_edge.us.i.us ], [ %i.ahp, %.lr.ph77.split.split.i.us ], [ %i.ahp, %..loopexit61_crit_edge.us.i.us ], [ %i.ahp, %.lr.ph77.split.split.us78.i.us ], [ %i.ahe, %bb.cr ], [ %i.ahp, %.lr.ph77.split.split.us.i.us ], [ %i.ahp, %bb.cy ], [ %i.ahp, %_ZN2cv12cpu_baselineL19GEMM_TransposeBlockEPKhmPhmNS_5Size_IiEEm.exit.us.loopexit1509.unr-lcssa ] ; 2 uses
  br i1 %i.agy, label %bb.cz, label %_ZN2cv12cpu_baselineL14GEMM_CopyBlockEPKhmPhmNS_5Size_IiEEm.exit.us

bb.cz:                                            ; preds = %_ZN2cv12cpu_baselineL19GEMM_TransposeBlockEPKhmPhmNS_5Size_IiEEm.exit.us
  %spec.select1261.us = select i1 %.not1050, i32 %.0898.us, i32 %.0899.us ; 3 uses
  %spec.select1262.us = select i1 %.not1050, i32 %.0899.us, i32 %.0898.us ; 2 uses
  %i.akp = mul i32 %spec.select1262.us, %i.ada    ; 2 uses
  %i.akq = sext i32 %i.akp to i64                 ; 4 uses
  %i.akr = mul i32 %spec.select1262.us, %i.afs    ; 3 uses
  %.not14.i.us = icmp ne i32 %spec.select1261.us, 0
  %i.aks = icmp sgt i32 %i.akr, 0
  %or.cond.i.us = select i1 %.not14.i.us, i1 %i.aks, i1 false
  br i1 %or.cond.i.us, label %.preheader.preheader.i.us, label %_ZN2cv12cpu_baselineL14GEMM_CopyBlockEPKhmPhmNS_5Size_IiEEm.exit.us

.preheader.preheader.i.us:                        ; preds = %bb.cz
  %wide.trip.count.i.us = zext nneg i32 %i.akr to i64 ; 6 uses
  %i.akt = add i32 %spec.select1261.us, -1
  %i.aku = zext i32 %i.akt to i64                 ; 2 uses
  %i.akv = mul nsw i64 %i.akq, %i.aku
  %i.akw = shl nuw nsw i64 %wide.trip.count.i.us, 2 ; 2 uses
  %i.akx = getelementptr i8, ptr %scevgep1497.a, i64 %i.akv
  %scevgep1498.a = getelementptr i8, ptr %i.akx, i64 %i.akw
  %scevgep1499.a = getelementptr i8, ptr %i.ahf, i64 %i.agx
  %i.aky = mul i64 %.0918, %i.aku
  %i.akz = getelementptr i8, ptr %scevgep1499.a, i64 %i.ahg
  %i.ala = getelementptr i8, ptr %i.akz, i64 %i.aky
  %scevgep1500 = getelementptr i8, ptr %i.ala, i64 %i.akw
  %min.iters.check = icmp ult i32 %i.akr, 8
  %bound0 = icmp ult ptr %scevgep, %scevgep1500
  %bound1 = icmp ult ptr %i.ahi, %scevgep1498.a
  %found.conflict = and i1 %bound0, %bound1
  %stride.check = icmp slt i32 %i.akp, 0
  %i.alb = or i1 %found.conflict, %stride.check
  %i.alc = or i1 %i.alb, %stride.check1501
  %n.vec = and i64 %wide.trip.count.i.us, 2147483640 ; 3 uses
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count.i.us
  %xtraiter1534 = and i64 %wide.trip.count.i.us, 3 ; 2 uses
  %lcmp.mod1535.not = icmp eq i64 %xtraiter1534, 0
  br label %.preheader.i.us

.preheader.i.us:                                  ; preds = %._crit_edge.i.us, %.preheader.preheader.i.us
  %.in.i.us = phi i32 [ %i.alz, %._crit_edge.i.us ], [ %spec.select1261.us, %.preheader.preheader.i.us ]
  %.01116.i.us = phi ptr [ %i.amb, %._crit_edge.i.us ], [ %i.aff, %.preheader.preheader.i.us ] ; 7 uses
  %.01215.i.us = phi ptr [ %i.ama, %._crit_edge.i.us ], [ %i.ahi, %.preheader.preheader.i.us ] ; 7 uses
  %brmerge = select i1 %min.iters.check, i1 true, i1 %i.alc
  br i1 %brmerge, label %scalar.ph.preheader, label %vector.body

vector.body:                                      ; preds = %.preheader.i.us, %vector.body
  %index = phi i64 [ %index.next, %vector.body ], [ 0, %.preheader.i.us ] ; 3 uses
  %i.ald = getelementptr inbounds nuw [4 x i8], ptr %.01215.i.us, i64 %index ; 2 uses
  %i.ale = getelementptr inbounds nuw i8, ptr %i.ald, i64 16
  %wide.load = load <4 x i32>, ptr %i.ald, align 4, !tbaa !30, !alias.scope !924
  %wide.load1502 = load <4 x i32>, ptr %i.ale, align 4, !tbaa !30, !alias.scope !924
  %i.alf = getelementptr inbounds nuw [4 x i8], ptr %.01116.i.us, i64 %index ; 2 uses
  %i.alg = getelementptr inbounds nuw i8, ptr %i.alf, i64 16
  store <4 x i32> %wide.load, ptr %i.alf, align 4, !tbaa !30, !alias.scope !925, !noalias !924
  store <4 x i32> %wide.load1502, ptr %i.alg, align 4, !tbaa !30, !alias.scope !925, !noalias !924
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.alh = icmp eq i64 %index.next, %n.vec
  br i1 %i.alh, label %middle.block, label %vector.body, !llvm.loop !916

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %._crit_edge.i.us, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.preheader.i.us, %middle.block
  %indvars.iv.i1097.us.ph = phi i64 [ %n.vec, %middle.block ], [ 0, %.preheader.i.us ] ; 3 uses
  br i1 %lcmp.mod1535.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol

scalar.ph.prol:                                   ; preds = %scalar.ph.preheader, %scalar.ph.prol
  %indvars.iv.i1097.us.prol = phi i64 [ %indvars.iv.next.i1098.us.prol, %scalar.ph.prol ], [ %indvars.iv.i1097.us.ph, %scalar.ph.preheader ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %scalar.ph.prol ], [ 0, %scalar.ph.preheader ]
  %i.ali = getelementptr inbounds nuw [4 x i8], ptr %.01215.i.us, i64 %indvars.iv.i1097.us.prol
  %i.alj = load i32, ptr %i.ali, align 4, !tbaa !30
  %i.alk = getelementptr inbounds nuw [4 x i8], ptr %.01116.i.us, i64 %indvars.iv.i1097.us.prol
  store i32 %i.alj, ptr %i.alk, align 4, !tbaa !30
  %indvars.iv.next.i1098.us.prol = add nuw nsw i64 %indvars.iv.i1097.us.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter1534
  br i1 %prol.iter.cmp.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol, !llvm.loop !917

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %indvars.iv.i1097.us.unr = phi i64 [ %indvars.iv.i1097.us.ph, %scalar.ph.preheader ], [ %indvars.iv.next.i1098.us.prol, %scalar.ph.prol ]
  %i.all = sub nsw i64 %indvars.iv.i1097.us.ph, %wide.trip.count.i.us
  %i.alm = icmp ugt i64 %i.all, -4
  br i1 %i.alm, label %._crit_edge.i.us, label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph
  %indvars.iv.i1097.us = phi i64 [ %indvars.iv.next.i1098.us.3, %scalar.ph ], [ %indvars.iv.i1097.us.unr, %scalar.ph.prol.loopexit ] ; 6 uses
  %i.aln = getelementptr inbounds nuw [4 x i8], ptr %.01215.i.us, i64 %indvars.iv.i1097.us
  %i.alo = load i32, ptr %i.aln, align 4, !tbaa !30
  %i.alp = getelementptr inbounds nuw [4 x i8], ptr %.01116.i.us, i64 %indvars.iv.i1097.us
  store i32 %i.alo, ptr %i.alp, align 4, !tbaa !30
  %indvars.iv.next.i1098.us = add nuw nsw i64 %indvars.iv.i1097.us, 1 ; 2 uses
  %i.alq = getelementptr inbounds nuw [4 x i8], ptr %.01215.i.us, i64 %indvars.iv.next.i1098.us
  %i.alr = load i32, ptr %i.alq, align 4, !tbaa !30
  %i.als = getelementptr inbounds nuw [4 x i8], ptr %.01116.i.us, i64 %indvars.iv.next.i1098.us
  store i32 %i.alr, ptr %i.als, align 4, !tbaa !30
  %indvars.iv.next.i1098.us.1 = add nuw nsw i64 %indvars.iv.i1097.us, 2 ; 2 uses
  %i.alt = getelementptr inbounds nuw [4 x i8], ptr %.01215.i.us, i64 %indvars.iv.next.i1098.us.1
  %i.alu = load i32, ptr %i.alt, align 4, !tbaa !30
  %i.alv = getelementptr inbounds nuw [4 x i8], ptr %.01116.i.us, i64 %indvars.iv.next.i1098.us.1
  store i32 %i.alu, ptr %i.alv, align 4, !tbaa !30
  %indvars.iv.next.i1098.us.2 = add nuw nsw i64 %indvars.iv.i1097.us, 3 ; 2 uses
  %i.alw = getelementptr inbounds nuw [4 x i8], ptr %.01215.i.us, i64 %indvars.iv.next.i1098.us.2
  %i.alx = load i32, ptr %i.alw, align 4, !tbaa !30
  %i.aly = getelementptr inbounds nuw [4 x i8], ptr %.01116.i.us, i64 %indvars.iv.next.i1098.us.2
  store i32 %i.alx, ptr %i.aly, align 4, !tbaa !30
  %indvars.iv.next.i1098.us.3 = add nuw nsw i64 %indvars.iv.i1097.us, 4 ; 2 uses
  %exitcond.not.i1099.us.3 = icmp eq i64 %indvars.iv.next.i1098.us.3, %wide.trip.count.i.us
  br i1 %exitcond.not.i1099.us.3, label %._crit_edge.i.us, label %scalar.ph, !llvm.loop !918

._crit_edge.i.us:                                 ; preds = %scalar.ph.prol.loopexit, %scalar.ph, %middle.block
  %i.alz = add nsw i32 %.in.i.us, -1              ; 2 uses
  %i.ama = getelementptr inbounds nuw i8, ptr %.01215.i.us, i64 %.0918
  %i.amb = getelementptr inbounds nuw i8, ptr %.01116.i.us, i64 %i.akq
  %.not.i1100.us = icmp eq i32 %i.alz, 0
  br i1 %.not.i1100.us, label %_ZN2cv12cpu_baselineL14GEMM_CopyBlockEPKhmPhmNS_5Size_IiEEm.exit.us, label %.preheader.i.us, !llvm.loop !919

_ZN2cv12cpu_baselineL14GEMM_CopyBlockEPKhmPhmNS_5Size_IiEEm.exit.us: ; preds = %._crit_edge.i.us, %bb.cz, %_ZN2cv12cpu_baselineL19GEMM_TransposeBlockEPKhmPhmNS_5Size_IiEEm.exit.us
  %.0885.us = phi ptr [ %i.ahi, %_ZN2cv12cpu_baselineL19GEMM_TransposeBlockEPKhmPhmNS_5Size_IiEEm.exit.us ], [ %i.aff, %bb.cz ], [ %i.aff, %._crit_edge.i.us ] ; 2 uses
  %.0884.us = phi i64 [ %.0918, %_ZN2cv12cpu_baselineL19GEMM_TransposeBlockEPKhmPhmNS_5Size_IiEEm.exit.us ], [ %i.akq, %bb.cz ], [ %i.akq, %._crit_edge.i.us ] ; 2 uses
  %.sroa.11.0.insert.ext1121.us = zext i32 %.sroa.11.1.us to i64
  %.sroa.11.0.insert.shift1122.us = shl nuw i64 %.sroa.11.0.insert.ext1121.us, 32
  %.sroa.01114.0.insert.ext1115.us = zext i32 %.sroa.01114.1.us to i64
  %.sroa.01114.0.insert.insert1117.us = or disjoint i64 %.sroa.11.0.insert.shift1122.us, %.sroa.01114.0.insert.ext1115.us ; 2 uses
  br i1 %i.afn, label %bb.db, label %bb.da

bb.da:                                            ; preds = %_ZN2cv12cpu_baselineL14GEMM_CopyBlockEPKhmPhmNS_5Size_IiEEm.exit.us
  invoke void %switch.load(ptr noundef %.0887.us, i64 noundef %.0886.us, ptr noundef %.0885.us, i64 noundef %.0884.us, ptr noundef %i.agp, i64 noundef %i.aaw, ptr noundef %i.agm, i64 noundef %i.agh, i64 %.sroa.01114.0.insert.insert1117.us, i64 %.sroa.01109.0.insert.insert.us, double noundef %2, double noundef %4, i32 noundef %.51361.us)
          to label %.thread unwind label %.loopexit.split.us, !callees !923

bb.db:                                            ; preds = %_ZN2cv12cpu_baselineL14GEMM_CopyBlockEPKhmPhmNS_5Size_IiEEm.exit.us
  invoke void %switch.load1504(ptr noundef %.0887.us, i64 noundef %.0886.us, ptr noundef %.0885.us, i64 noundef %.0884.us, ptr noundef %i.afe, i64 noundef %i.agw, i64 %.sroa.01114.0.insert.insert1117.us, i64 %.sroa.01109.0.insert.insert.us, i32 noundef %.51361.us)
          to label %bb.dc unwind label %.loopexit.split.us, !callees !926

bb.dc:                                            ; preds = %bb.db
  %i.amc = add nsw i32 %.0898.us, %.09011360.us   ; 2 uses
  %i.amd = icmp slt i32 %i.amc, %.01252
  br i1 %i.amd, label %.backedge.backedge, label %._crit_edge.us

.backedge.backedge:                               ; preds = %bb.dc, %.thread
  %.09011360.us.be = phi i32 [ %i.amc, %bb.dc ], [ %i.ame, %.thread ]
  br label %.backedge, !llvm.loop !920

.thread:                                          ; preds = %bb.da
  %i.ame = add nsw i32 %.0898.us, %.09011360.us   ; 2 uses
  %i.amf = icmp slt i32 %i.ame, %.01252
  br i1 %i.amf, label %.backedge.backedge, label %._crit_edge.us.thread

._crit_edge.us.thread:                            ; preds = %.thread, %._crit_edge.us
  %i.amg = add nsw i32 %.0899.us, %.09021363.us   ; 2 uses
  %i.amh = icmp slt i32 %i.amg, %.sroa.01168.0
  br i1 %i.amh, label %.lr.ph1366.split.us, label %._crit_edge1367, !llvm.loop !921

._crit_edge.us:                                   ; preds = %bb.dc
  %i.ami = load ptr, ptr %i.afk, align 8, !tbaa !47
  %i.amj = load i64, ptr %i.afl, align 8, !tbaa !38 ; 2 uses
  %i.amk = mul i64 %i.amj, %i.afy
  %i.aml = getelementptr inbounds nuw i8, ptr %i.ami, i64 %i.amk
  %i.amm = getelementptr inbounds i8, ptr %i.aml, i64 %i.agl
  invoke void %switch.load1506(ptr noundef %i.agp, i64 noundef %i.aaw, ptr noundef %i.afe, i64 noundef %i.agw, ptr noundef %i.amm, i64 noundef %i.amj, i64 %.sroa.01109.0.insert.insert.us, double noundef %2, double noundef %4, i32 noundef %i.age)
          to label %._crit_edge.us.thread unwind label %.split1369.us, !callees !927

.loopexit.split.us:                               ; preds = %bb.db, %bb.da
  %lpad.loopexit.us = landingpad { ptr, i32 }
          cleanup
  br label %.body1094

.split1369.us:                                    ; preds = %._crit_edge.us
  %i.amn = landingpad { ptr, i32 }
          cleanup
  br label %.body1094

.loopexit.split-lp:                               ; preds = %.split.us
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %.body1094

.split.us:                                        ; preds = %.lr.ph77.i.us
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #24
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #24
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %7, ptr noundef nonnull @.str.78, ptr noundef nonnull align 1 dereferenceable(1) %8)
          to label %.noexc1093 unwind label %.loopexit.split-lp

.noexc1093:                                       ; preds = %.split.us
  invoke void @_ZN2cv5errorENS_5Error4CodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSB_i(i32 noundef -215, ptr noundef nonnull align 8 dereferenceable(32) %7, ptr noundef nonnull @__func__._ZN2cv12cpu_baselineL19GEMM_TransposeBlockEPKhmPhmNS_5Size_IiEEm, ptr noundef nonnull @.str.1, i32 noundef 172) #26
          to label %bb.dd unwind label %bb.de

bb.dd:                                            ; preds = %.noexc1093
  unreachable

bb.de:                                            ; preds = %.noexc1093
  %i.amo = landingpad { ptr, i32 }
          cleanup
  %i.amp = load ptr, ptr %7, align 8, !tbaa !37   ; 2 uses
  %i.amq = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 2 uses
  %i.amr = icmp eq ptr %i.amp, %i.amq
  br i1 %i.amr, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i1091, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i1090

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i1090: ; preds = %bb.de
  %i.ams = load i64, ptr %i.amq, align 8, !tbaa !23
  %i.amt = add i64 %i.ams, 1
  call void @_ZdlPvm(ptr noundef %i.amp, i64 noundef %i.amt) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i1091

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i1091: ; preds = %bb.de, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i1090
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #24
  br label %.body1094

._crit_edge1367:                                  ; preds = %._crit_edge.us.thread, %bb.cm
  %.4.lcssa = phi i32 [ %.31381, %bb.cm ], [ %i.age, %._crit_edge.us.thread ]
  %i.amu = add nsw i32 %.0900, %.121380           ; 2 uses
  %i.amv = icmp slt i32 %i.amu, %.sroa.32.0
  br i1 %i.amv, label %bb.cj, label %.loopexit1279, !llvm.loop !922

.loopexit1279:                                    ; preds = %._crit_edge1367, %_ZN2cv10AutoBufferIhLm1032EE8allocateEm.exit, %bb.bn
  %i.amw = load ptr, ptr %12, align 8, !tbaa !51  ; 3 uses
  %.not.i.i1101 = icmp eq ptr %i.amw, %i.aax
  %i.amx = icmp eq ptr %i.amw, null
  %or.cond.i1102 = or i1 %.not.i.i1101, %i.amx
  br i1 %or.cond.i1102, label %_ZN2cv10AutoBufferIhLm1032EED2Ev.exit, label %bb.df

bb.df:                                            ; preds = %.loopexit1279
  call void @_ZdaPv(ptr noundef nonnull %i.amw) #27
  br label %_ZN2cv10AutoBufferIhLm1032EED2Ev.exit

_ZN2cv10AutoBufferIhLm1032EED2Ev.exit:            ; preds = %.loopexit1279, %bb.df
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #24
end_hunk_0
