Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/opencv/original/matmul.dispatch?download=true
inline.NumInlined: 1374
inline.NumDeleted: 190
loop-unroll.NumCompletelyUnrolled: 9
loop-unroll.NumRuntimeUnrolled: 210
loop-unroll.NumUnrolled: 219
begin_hunk_0_@_ZN2cv12cpu_baselineL8gemmImplENS_3MatES1_dS1_dS1_i:bb.a
  %i.aaz = icmp ult i32 %switch.tableidx, 34
  %switch.maskindex = zext nneg i32 %switch.tableidx to i64
  %switch.shifted = lshr i64 12884901891, %switch.maskindex
  %switch.lobit = trunc i64 %switch.shifted to i1
  %or.cond1506 = select i1 %i.aaz, i1 %switch.lobit, i1 false
  br i1 %or.cond1506, label %switch.lookup, label %bb.bc

bb.bc:                                            ; preds = %bb.bb
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #24
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #24
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %13, ptr noundef nonnull @.str.22, ptr noundef nonnull align 1 dereferenceable(1) %14)
          to label %bb.bd unwind label %bb.bf

bb.bd:                                            ; preds = %bb.bc
  invoke void @_ZN2cv5errorENS_5Error4CodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSB_i(i32 noundef -215, ptr noundef nonnull align 8 dereferenceable(32) %13, ptr noundef nonnull @__func__._ZN2cv12cpu_baselineL8gemmImplENS_3MatES1_dS1_dS1_i, ptr noundef nonnull @.str.1, i32 noundef 1053) #26
          to label %bb.be unwind label %bb.bg

bb.be:                                            ; preds = %bb.bd
  unreachable

bb.bf:                                            ; preds = %bb.bc
  %i.aba = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

bb.bg:                                            ; preds = %bb.bd
  %i.abb = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.abc = load ptr, ptr %13, align 8, !tbaa !37  ; 2 uses
  %i.abd = getelementptr inbounds nuw i8, ptr %13, i64 16 ; 2 uses
  %i.abe = icmp eq ptr %i.abc, %i.abd
  br i1 %i.abe, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

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
  %switch.gep1502 = getelementptr inbounds nuw [8 x i8], ptr @switch.table._ZN2cv12cpu_baselineL8gemmImplENS_3MatES1_dS1_dS1_i.7, i64 %i.abi
  %switch.load1503 = load ptr, ptr %switch.gep1502, align 8
  %i.abj = zext nneg i32 %switch.tableidx to i64
  %switch.gep1504 = getelementptr inbounds nuw [8 x i8], ptr @switch.table._ZN2cv12cpu_baselineL8gemmImplENS_3MatES1_dS1_dS1_i.8, i64 %i.abj
  %switch.load1505 = load ptr, ptr %switch.gep1504, align 8
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
          to label %.loopexit1279 unwind label %bb.bo, !callees !843

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
  %i.aeg = sext i32 %i.aef to i64
  %i.aeh = sext i32 %i.aec to i64
  %i.aei = mul nsw i64 %i.aeh, %i.aeg             ; 2 uses
  %i.aej = mul nsw i64 %i.aei, %.pre-phi          ; 2 uses
  %i.aek = zext nneg i32 %i.add to i64
  %i.ael = mul i64 %i.aei, %i.aek                 ; 3 uses
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
  %i.afe = phi ptr [ %i.afd, %.noexc1089 ], [ %i.afb, %_ZN2cv10AutoBufferIhLm1032EE10deallocateEv.exit.i ], [ %.pre, %bb.cd ] ; 5 uses
  %i.aff = getelementptr i8, ptr %i.afe, i64 %i.ael ; 5 uses
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
  %scevgep = getelementptr i8, ptr %i.afe, i64 %i.ael
  %stride.check1500 = icmp slt i64 %.0918, 0
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
  %lcmp.mod1520 = trunc i32 %.0900 to i1
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
end_hunk_0
