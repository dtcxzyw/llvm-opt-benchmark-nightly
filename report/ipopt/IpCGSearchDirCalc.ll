Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ipopt/original/IpCGSearchDirCalc?download=true
inline.NumInlined: 1245
inline.NumDeleted: 429
begin_hunk_0_@_ZN5Ipopt21CGSearchDirCalculator22ComputeSearchDirectionEv:bb.a
  %i.bcj = load ptr, ptr %storemerge.i.i452, align 8, !tbaa !14
  %i.bck = getelementptr inbounds nuw i8, ptr %i.bcj, i64 8
  %i.bcl = load ptr, ptr %i.bck, align 8
  call void %i.bcl(ptr noundef nonnull align 8 dereferenceable(205) %storemerge.i.i452) #18, !inline_history !128
  br label %_ZN5Ipopt8SmartPtrIKNS_6VectorEED2Ev.exit723

_ZN5Ipopt8SmartPtrIKNS_6VectorEED2Ev.exit723:     ; preds = %bb.fe, %_ZN5Ipopt8SmartPtrIKNS_6VectorEED2Ev.exit721, %bb.jt
  %.5 = phi i1 [ true, %bb.fe ], [ %.4, %_ZN5Ipopt8SmartPtrIKNS_6VectorEED2Ev.exit721 ], [ %.4, %bb.jt ]
  %i.bcm = getelementptr inbounds nuw i8, ptr %i.xa, i64 8 ; 2 uses
  %i.bcn = load i32, ptr %i.bcm, align 8, !tbaa !12
  %i.bco = add nsw i32 %i.bcn, -1                 ; 2 uses
  store i32 %i.bco, ptr %i.bcm, align 8, !tbaa !12
  %i.bcp = icmp eq i32 %i.bco, 0
  br i1 %i.bcp, label %bb.ju, label %_ZN5Ipopt8SmartPtrINS_6VectorEED2Ev.exit

bb.ju:                                            ; preds = %_ZN5Ipopt8SmartPtrIKNS_6VectorEED2Ev.exit723
  %i.bcq = load ptr, ptr %i.xa, align 8, !tbaa !14
  %i.bcr = getelementptr inbounds nuw i8, ptr %i.bcq, i64 8
  %i.bcs = load ptr, ptr %i.bcr, align 8
  call void %i.bcs(ptr noundef nonnull align 8 dereferenceable(205) %i.xa) #18, !inline_history !282
  br label %_ZN5Ipopt8SmartPtrINS_6VectorEED2Ev.exit

_ZN5Ipopt8SmartPtrINS_6VectorEED2Ev.exit:         ; preds = %bb.ju, %_ZN5Ipopt8SmartPtrIKNS_6VectorEED2Ev.exit723
  %i.bct = getelementptr inbounds nuw i8, ptr %i.tp, i64 8 ; 2 uses
  %i.bcu = load i32, ptr %i.bct, align 8, !tbaa !12
  %i.bcv = add nsw i32 %i.bcu, -1                 ; 2 uses
  store i32 %i.bcv, ptr %i.bct, align 8, !tbaa !12
  %i.bcw = icmp eq i32 %i.bcv, 0
  br i1 %i.bcw, label %bb.jv, label %_ZN5Ipopt8SmartPtrINS_6VectorEED2Ev.exit726

bb.jv:                                            ; preds = %_ZN5Ipopt8SmartPtrINS_6VectorEED2Ev.exit
  %i.bcx = load ptr, ptr %i.tp, align 8, !tbaa !14
  %i.bcy = getelementptr inbounds nuw i8, ptr %i.bcx, i64 8
  %i.bcz = load ptr, ptr %i.bcy, align 8
  call void %i.bcz(ptr noundef nonnull align 8 dereferenceable(205) %i.tp) #18, !inline_history !282
  br label %_ZN5Ipopt8SmartPtrINS_6VectorEED2Ev.exit726

_ZN5Ipopt8SmartPtrINS_6VectorEED2Ev.exit726:      ; preds = %_ZN5Ipopt8SmartPtrINS_6VectorEED2Ev.exit, %bb.jv
  br i1 %i.zp, label %_ZN5Ipopt8SmartPtrINS_6VectorEED2Ev.exit726._crit_edge, label %bb.ln

_ZN5Ipopt8SmartPtrINS_6VectorEED2Ev.exit726._crit_edge: ; preds = %_ZN5Ipopt8SmartPtrINS_6VectorEED2Ev.exit726
  %.pre993 = load ptr, ptr %i.e, align 8, !tbaa !24
  br label %bb.kf

_ZN5Ipopt8SmartPtrIKNS_6VectorEED2Ev.exit708.thread: ; preds = %_ZN5Ipopt8SmartPtrIKNS_6VectorEED2Ev.exit708.thread1101, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit715, %bb.ji, %bb.jh, %_ZN5Ipopt8SmartPtrIKNS_6VectorEED2Ev.exit706, %_ZN5Ipopt8SmartPtrIKNS_6VectorEED2Ev.exit708
  %.pn217.pn.pn.pn.pn952 = phi { ptr, i32 } [ %lpad.thr_comm.split-lp1100, %_ZN5Ipopt8SmartPtrIKNS_6VectorEED2Ev.exit708 ], [ %.pn209.pn, %bb.ji ], [ %.pn209.pn, %bb.jh ], [ %.pn209.pn, %_ZN5Ipopt8SmartPtrIKNS_6VectorEED2Ev.exit706 ], [ %i.bbf, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit715 ], [ %lpad.thr_comm1099, %_ZN5Ipopt8SmartPtrIKNS_6VectorEED2Ev.exit708.thread1101 ] ; 2 uses
  %i.bda = getelementptr inbounds nuw i8, ptr %storemerge.i.i482, i64 8 ; 2 uses
  %i.bdb = load i32, ptr %i.bda, align 8, !tbaa !12
  %i.bdc = add nsw i32 %i.bdb, -1                 ; 2 uses
  store i32 %i.bdc, ptr %i.bda, align 8, !tbaa !12
  %i.bdd = icmp eq i32 %i.bdc, 0
  br i1 %i.bdd, label %bb.jw, label %_ZN5Ipopt8SmartPtrIKNS_6VectorEED2Ev.exit728

bb.jw:                                            ; preds = %_ZN5Ipopt8SmartPtrIKNS_6VectorEED2Ev.exit708.thread
  %i.bde = load ptr, ptr %storemerge.i.i482, align 8, !tbaa !14
  %i.bdf = getelementptr inbounds nuw i8, ptr %i.bde, i64 8
  %i.bdg = load ptr, ptr %i.bdf, align 8
  call void %i.bdg(ptr noundef nonnull align 8 dereferenceable(205) %storemerge.i.i482) #18, !inline_history !128
  br label %_ZN5Ipopt8SmartPtrIKNS_6VectorEED2Ev.exit728

_ZN5Ipopt8SmartPtrIKNS_6VectorEED2Ev.exit728:     ; preds = %bb.jw, %_ZN5Ipopt8SmartPtrIKNS_6VectorEED2Ev.exit708.thread, %_ZN5Ipopt8SmartPtrIKNS_6VectorEED2Ev.exit708
  %.pn217.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn217.pn.pn.pn.pn952, %bb.jw ], [ %lpad.thr_comm.split-lp1100, %_ZN5Ipopt8SmartPtrIKNS_6VectorEED2Ev.exit708 ], [ %.pn217.pn.pn.pn.pn952, %_ZN5Ipopt8SmartPtrIKNS_6VectorEED2Ev.exit708.thread ] ; 2 uses
  %.not.i.i729 = icmp eq ptr %storemerge.i.i471, null
  br i1 %.not.i.i729, label %_ZN5Ipopt8SmartPtrIKNS_6VectorEED2Ev.exit730, label %bb.jx

bb.jx:                                            ; preds = %_ZN5Ipopt8SmartPtrIKNS_6VectorEED2Ev.exit728
  %i.bdh = getelementptr inbounds nuw i8, ptr %storemerge.i.i471, i64 8 ; 2 uses
  %i.bdi = load i32, ptr %i.bdh, align 8, !tbaa !12
  %i.bdj = add nsw i32 %i.bdi, -1                 ; 2 uses
  store i32 %i.bdj, ptr %i.bdh, align 8, !tbaa !12
  %i.bdk = icmp eq i32 %i.bdj, 0
  br i1 %i.bdk, label %bb.jy, label %_ZN5Ipopt8SmartPtrIKNS_6VectorEED2Ev.exit730

bb.jy:                                            ; preds = %bb.jx
  %i.bdl = load ptr, ptr %storemerge.i.i471, align 8, !tbaa !14
  %i.bdm = getelementptr inbounds nuw i8, ptr %i.bdl, i64 8
  %i.bdn = load ptr, ptr %i.bdm, align 8
  call void %i.bdn(ptr noundef nonnull align 8 dereferenceable(205) %storemerge.i.i471) #18, !inline_history !128
  br label %_ZN5Ipopt8SmartPtrIKNS_6VectorEED2Ev.exit730

_ZN5Ipopt8SmartPtrIKNS_6VectorEED2Ev.exit730:     ; preds = %bb.jy, %bb.jx, %_ZN5Ipopt8SmartPtrIKNS_6VectorEED2Ev.exit728
  %.not.i.i731 = icmp eq ptr %storemerge.i.i462, null
  br i1 %.not.i.i731, label %_ZN5Ipopt8SmartPtrIKNS_6VectorEED2Ev.exit732.thread, label %bb.jz

bb.jz:                                            ; preds = %_ZN5Ipopt8SmartPtrIKNS_6VectorEED2Ev.exit730
  %i.bdo = getelementptr inbounds nuw i8, ptr %storemerge.i.i462, i64 8 ; 2 uses
  %i.bdp = load i32, ptr %i.bdo, align 8, !tbaa !12
  %i.bdq = add nsw i32 %i.bdp, -1                 ; 2 uses
  store i32 %i.bdq, ptr %i.bdo, align 8, !tbaa !12
  %i.bdr = icmp eq i32 %i.bdq, 0
  br i1 %i.bdr, label %bb.ka, label %_ZN5Ipopt8SmartPtrIKNS_6VectorEED2Ev.exit732.thread

bb.ka:                                            ; preds = %bb.jz
  %i.bds = load ptr, ptr %storemerge.i.i462, align 8, !tbaa !14
  %i.bdt = getelementptr inbounds nuw i8, ptr %i.bds, i64 8
  %i.bdu = load ptr, ptr %i.bdt, align 8
  call void %i.bdu(ptr noundef nonnull align 8 dereferenceable(205) %storemerge.i.i462) #18, !inline_history !128
  br label %_ZN5Ipopt8SmartPtrIKNS_6VectorEED2Ev.exit732.thread

_ZN5Ipopt8SmartPtrIKNS_6VectorEED2Ev.exit732.thread: ; preds = %_ZN5Ipopt8SmartPtrIKNS_6VectorEED2Ev.exit730, %bb.jz, %bb.ka
  %i.bdv = getelementptr inbounds nuw i8, ptr %storemerge.i.i452, i64 8 ; 2 uses
  %i.bdw = load i32, ptr %i.bdv, align 8, !tbaa !12
  %i.bdx = add nsw i32 %i.bdw, -1                 ; 2 uses
  store i32 %i.bdx, ptr %i.bdv, align 8, !tbaa !12
  %i.bdy = icmp eq i32 %i.bdx, 0
  br i1 %i.bdy, label %bb.kb, label %_ZN5Ipopt8SmartPtrIKNS_6VectorEED2Ev.exit734

bb.kb:                                            ; preds = %_ZN5Ipopt8SmartPtrIKNS_6VectorEED2Ev.exit732.thread
  %i.bdz = load ptr, ptr %storemerge.i.i452, align 8, !tbaa !14
  %i.bea = getelementptr inbounds nuw i8, ptr %i.bdz, i64 8
  %i.beb = load ptr, ptr %i.bea, align 8
  call void %i.beb(ptr noundef nonnull align 8 dereferenceable(205) %storemerge.i.i452) #18, !inline_history !128
  br label %_ZN5Ipopt8SmartPtrIKNS_6VectorEED2Ev.exit734

_ZN5Ipopt8SmartPtrIKNS_6VectorEED2Ev.exit734:     ; preds = %_ZN5Ipopt8SmartPtrIKNS_6VectorEED2Ev.exit732.thread, %bb.kb, %_ZN5Ipopt8SmartPtrIKNS_6VectorEED2Ev.exit440
  %.pn217.pn.pn.pn.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn185.pn.pn, %_ZN5Ipopt8SmartPtrIKNS_6VectorEED2Ev.exit440 ], [ %.pn217.pn.pn.pn.pn.pn, %bb.kb ], [ %.pn217.pn.pn.pn.pn.pn, %_ZN5Ipopt8SmartPtrIKNS_6VectorEED2Ev.exit732.thread ] ; 2 uses
  br i1 %.not.i.i395, label %_ZN5Ipopt8SmartPtrIKNS_14IteratesVectorEED2Ev.exit434, label %bb.kc

bb.kc:                                            ; preds = %_ZN5Ipopt8SmartPtrIKNS_6VectorEED2Ev.exit734.thread, %_ZN5Ipopt8SmartPtrIKNS_6VectorEED2Ev.exit734
  %.pn217.pn.pn.pn.pn.pn.pn.pn.pn.pn959 = phi { ptr, i32 } [ %i.abq, %_ZN5Ipopt8SmartPtrIKNS_6VectorEED2Ev.exit734.thread ], [ %.pn217.pn.pn.pn.pn.pn.pn.pn.pn.pn, %_ZN5Ipopt8SmartPtrIKNS_6VectorEED2Ev.exit734 ] ; 2 uses
  %i.bec = getelementptr inbounds nuw i8, ptr %i.xa, i64 8 ; 2 uses
  %i.bed = load i32, ptr %i.bec, align 8, !tbaa !12
  %i.bee = add nsw i32 %i.bed, -1                 ; 2 uses
  store i32 %i.bee, ptr %i.bec, align 8, !tbaa !12
  %i.bef = icmp eq i32 %i.bee, 0
  br i1 %i.bef, label %bb.kd, label %_ZN5Ipopt8SmartPtrIKNS_14IteratesVectorEED2Ev.exit434

bb.kd:                                            ; preds = %bb.kc
  %i.beg = load ptr, ptr %i.xa, align 8, !tbaa !14
  %i.beh = getelementptr inbounds nuw i8, ptr %i.beg, i64 8
  %i.bei = load ptr, ptr %i.beh, align 8
  call void %i.bei(ptr noundef nonnull align 8 dereferenceable(205) %i.xa) #18, !inline_history !282
  br label %_ZN5Ipopt8SmartPtrIKNS_14IteratesVectorEED2Ev.exit434

_ZN5Ipopt8SmartPtrIKNS_14IteratesVectorEED2Ev.exit434: ; preds = %_ZN5Ipopt8SmartPtrIKNS_6VectorEED2Ev.exit734, %bb.kc, %bb.kd, %_ZN5Ipopt8SmartPtrIKNS_6VectorEED2Ev.exit430
  %.pn217.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn178.pn.pn, %_ZN5Ipopt8SmartPtrIKNS_6VectorEED2Ev.exit430 ], [ %.pn217.pn.pn.pn.pn.pn.pn.pn.pn.pn, %_ZN5Ipopt8SmartPtrIKNS_6VectorEED2Ev.exit734 ], [ %.pn217.pn.pn.pn.pn.pn.pn.pn.pn.pn959, %bb.kc ], [ %.pn217.pn.pn.pn.pn.pn.pn.pn.pn.pn959, %bb.kd ] ; 2 uses
  br i1 %.not.i.i360, label %_ZN5Ipopt8SmartPtrIKNS_14IteratesVectorEED2Ev.exit349, label %_ZN5Ipopt8SmartPtrIKNS_14IteratesVectorEED2Ev.exit434.thread

_ZN5Ipopt8SmartPtrIKNS_14IteratesVectorEED2Ev.exit434.thread: ; preds = %bb.fi, %_ZN5Ipopt8SmartPtrIKNS_6VectorEED2Ev.exit432.thread, %bb.fr, %_ZN5Ipopt8SmartPtrIKNS_14IteratesVectorEED2Ev.exit434
  %.pn217.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn962 = phi { ptr, i32 } [ %.pn217.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn, %_ZN5Ipopt8SmartPtrIKNS_14IteratesVectorEED2Ev.exit434 ], [ %i.abc, %_ZN5Ipopt8SmartPtrIKNS_6VectorEED2Ev.exit432.thread ], [ %i.abc, %bb.fr ], [ %i.aae, %bb.fi ] ; 2 uses
  %i.bej = getelementptr inbounds nuw i8, ptr %i.tp, i64 8 ; 2 uses
  %i.bek = load i32, ptr %i.bej, align 8, !tbaa !12
  %i.bel = add nsw i32 %i.bek, -1                 ; 2 uses
  store i32 %i.bel, ptr %i.bej, align 8, !tbaa !12
  %i.bem = icmp eq i32 %i.bel, 0
  br i1 %i.bem, label %bb.ke, label %_ZN5Ipopt8SmartPtrIKNS_14IteratesVectorEED2Ev.exit349

bb.ke:                                            ; preds = %_ZN5Ipopt8SmartPtrIKNS_14IteratesVectorEED2Ev.exit434.thread
  %i.ben = load ptr, ptr %i.tp, align 8, !tbaa !14
  %i.beo = getelementptr inbounds nuw i8, ptr %i.ben, i64 8
  %i.bep = load ptr, ptr %i.beo, align 8
  call void %i.bep(ptr noundef nonnull align 8 dereferenceable(205) %i.tp) #18, !inline_history !282
  br label %_ZN5Ipopt8SmartPtrIKNS_14IteratesVectorEED2Ev.exit349

bb.kf:                                            ; preds = %_ZN5Ipopt8SmartPtrINS_6VectorEED2Ev.exit726._crit_edge, %bb.ec
  %i.beq = phi ptr [ %i.sd, %bb.ec ], [ %.pre993, %_ZN5Ipopt8SmartPtrINS_6VectorEED2Ev.exit726._crit_edge ]
  %.6 = phi i1 [ true, %bb.ec ], [ %.5, %_ZN5Ipopt8SmartPtrINS_6VectorEED2Ev.exit726._crit_edge ]
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #18
  %i.ber = getelementptr inbounds nuw i8, ptr %i.beq, i64 16
  %i.bes = load ptr, ptr %i.ber, align 8, !tbaa !297, !noalias !408 ; 8 uses
  %.not.i.i.i.i739 = icmp eq ptr %i.bes, null
  br i1 %.not.i.i.i.i739, label %_ZNK5Ipopt9IpoptData4currEv.exit740, label %bb.kg

bb.kg:                                            ; preds = %bb.kf
  %i.bet = getelementptr inbounds nuw i8, ptr %i.bes, i64 8 ; 2 uses
  %i.beu = load i32, ptr %i.bet, align 8, !tbaa !12, !noalias !408
  %i.bev = add nsw i32 %i.beu, 1
  store i32 %i.bev, ptr %i.bet, align 8, !tbaa !12, !noalias !408
  br label %_ZNK5Ipopt9IpoptData4currEv.exit740

_ZNK5Ipopt9IpoptData4currEv.exit740:              ; preds = %bb.kg, %bb.kf
  invoke void @_ZNK5Ipopt14IteratesVector21MakeNewIteratesVectorEb(ptr dead_on_unwind nonnull writable sret(%"class.Ipopt::SmartPtr.35") align 8 %15, ptr noundef nonnull align 8 dereferenceable(280) %i.bes, i1 noundef zeroext true)
          to label %bb.kh unwind label %bb.kl

bb.kh:                                            ; preds = %_ZNK5Ipopt9IpoptData4currEv.exit740
  %i.bew = getelementptr inbounds nuw i8, ptr %i.bes, i64 8 ; 2 uses
  %i.bex = load i32, ptr %i.bew, align 8, !tbaa !12
  %i.bey = add nsw i32 %i.bex, -1                 ; 2 uses
  store i32 %i.bey, ptr %i.bew, align 8, !tbaa !12
  %i.bez = icmp eq i32 %i.bey, 0
  br i1 %i.bez, label %bb.ki, label %_ZN5Ipopt8SmartPtrIKNS_14IteratesVectorEED2Ev.exit742

bb.ki:                                            ; preds = %bb.kh
  %i.bfa = load ptr, ptr %i.bes, align 8, !tbaa !14
  %i.bfb = getelementptr inbounds nuw i8, ptr %i.bfa, i64 8
  %i.bfc = load ptr, ptr %i.bfb, align 8
  call void %i.bfc(ptr noundef nonnull align 8 dereferenceable(280) %i.bes) #18, !inline_history !127
  br label %_ZN5Ipopt8SmartPtrIKNS_14IteratesVectorEED2Ev.exit742

_ZN5Ipopt8SmartPtrIKNS_14IteratesVectorEED2Ev.exit742: ; preds = %bb.kh, %bb.ki
  %i.bfd = load ptr, ptr %i.e, align 8, !tbaa !24
  %i.bfe = getelementptr inbounds nuw i8, ptr %i.bfd, i64 2192
  %i.bff = load ptr, ptr %i.bfe, align 8, !tbaa !306 ; 3 uses
  %i.bfg = getelementptr inbounds nuw i8, ptr %i.bff, i64 40 ; 2 uses
  br i1 %.6, label %bb.kn, label %bb.kj

bb.kj:                                            ; preds = %_ZN5Ipopt8SmartPtrIKNS_14IteratesVectorEED2Ev.exit742
  store i8 0, ptr %i.bfg, align 8, !tbaa !348
  %i.bfh = load ptr, ptr %15, align 8, !tbaa !300 ; 3 uses
  %i.bfi = getelementptr inbounds nuw i8, ptr %i.bff, i64 16
  %i.bfj = load ptr, ptr %i.bfi, align 8, !tbaa !297, !noalias !409 ; 9 uses
  %.not.i.i.i.i743 = icmp eq ptr %i.bfj, null
  br i1 %.not.i.i.i.i743, label %_ZNK5Ipopt13CGPenaltyData11delta_cgpenEv.exit744, label %bb.kk

bb.kk:                                            ; preds = %bb.kj
  %i.bfk = getelementptr inbounds nuw i8, ptr %i.bfj, i64 8 ; 2 uses
  %i.bfl = load i32, ptr %i.bfk, align 8, !tbaa !12, !noalias !409
  %i.bfm = add nsw i32 %i.bfl, 1
  store i32 %i.bfm, ptr %i.bfk, align 8, !tbaa !12, !noalias !409
  br label %_ZNK5Ipopt13CGPenaltyData11delta_cgpenEv.exit744

_ZNK5Ipopt13CGPenaltyData11delta_cgpenEv.exit744: ; preds = %bb.kk, %bb.kj
  %i.bfn = load ptr, ptr %i.bfh, align 8, !tbaa !14
  %i.bfo = getelementptr inbounds nuw i8, ptr %i.bfn, i64 192
  %i.bfp = load ptr, ptr %i.bfo, align 8
  invoke void %i.bfp(ptr noundef nonnull align 8 dereferenceable(205) %i.bfh, double noundef 1.000000e+00, ptr noundef nonnull align 8 dereferenceable(205) %i.bfj, double noundef 0.000000e+00, ptr noundef nonnull align 8 dereferenceable(205) %i.bfj, double noundef 0.000000e+00)
          to label %.noexc745 unwind label %bb.km, !inline_history !157

.noexc745:                                        ; preds = %_ZNK5Ipopt13CGPenaltyData11delta_cgpenEv.exit744
  invoke void @_ZN5Ipopt12TaggedObject13ObjectChangedEv(ptr noundef nonnull align 8 dereferenceable(205) %i.bfh)
          to label %_ZN5Ipopt6Vector12AddOneVectorEdRKS0_d.exit747 unwind label %bb.km

_ZN5Ipopt6Vector12AddOneVectorEdRKS0_d.exit747:   ; preds = %.noexc745
  %i.bfq = getelementptr inbounds nuw i8, ptr %i.bfj, i64 8 ; 2 uses
  %i.bfr = load i32, ptr %i.bfq, align 8, !tbaa !12
  %i.bfs = add nsw i32 %i.bfr, -1                 ; 2 uses
  store i32 %i.bfs, ptr %i.bfq, align 8, !tbaa !12
  %i.bft = icmp eq i32 %i.bfs, 0
  br i1 %i.bft, label %.sink.split, label %bb.kq

bb.kl:                                            ; preds = %_ZNK5Ipopt9IpoptData4currEv.exit740
  %i.bfu = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.bfv = getelementptr inbounds nuw i8, ptr %i.bes, i64 8 ; 2 uses
  %i.bfw = load i32, ptr %i.bfv, align 8, !tbaa !12
  %i.bfx = add nsw i32 %i.bfw, -1                 ; 2 uses
  store i32 %i.bfx, ptr %i.bfv, align 8, !tbaa !12
  %i.bfy = icmp eq i32 %i.bfx, 0
  br i1 %i.bfy, label %_ZN5Ipopt8SmartPtrIKNS_14IteratesVectorEED2Ev.exit751.sink.split, label %_ZN5Ipopt8SmartPtrIKNS_14IteratesVectorEED2Ev.exit751

bb.km:                                            ; preds = %_ZNK5Ipopt13CGPenaltyData11delta_cgpenEv.exit744, %.noexc745
  %i.bfz = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.bga = getelementptr inbounds nuw i8, ptr %i.bfj, i64 8 ; 2 uses
  %i.bgb = load i32, ptr %i.bga, align 8, !tbaa !12
  %i.bgc = add nsw i32 %i.bgb, -1                 ; 2 uses
  store i32 %i.bgc, ptr %i.bga, align 8, !tbaa !12
  %i.bgd = icmp eq i32 %i.bgc, 0
  br i1 %i.bgd, label %16, label %_ZN5Ipopt8SmartPtrIKNS_14IteratesVectorEED2Ev.exit753

16:                                               ; preds = %bb.km
  %17 = load ptr, ptr %i.bfj, align 8, !tbaa !14
  %18 = getelementptr inbounds nuw i8, ptr %17, i64 8
  %19 = load ptr, ptr %18, align 8
  call void %19(ptr noundef nonnull align 8 dereferenceable(280) %i.bfj) #18, !inline_history !127
  br label %_ZN5Ipopt8SmartPtrIKNS_14IteratesVectorEED2Ev.exit753

bb.kn:                                            ; preds = %_ZN5Ipopt8SmartPtrIKNS_14IteratesVectorEED2Ev.exit742
  store i8 1, ptr %i.bfg, align 8, !tbaa !348
  %i.bge = load ptr, ptr %15, align 8, !tbaa !300 ; 3 uses
  %i.bgf = getelementptr inbounds nuw i8, ptr %i.bff, i64 32
  %i.bgg = load ptr, ptr %i.bgf, align 8, !tbaa !297, !noalias !410 ; 9 uses
  %.not.i.i.i.i754 = icmp eq ptr %i.bgg, null
  br i1 %.not.i.i.i.i754, label %_ZNK5Ipopt13CGPenaltyData12delta_cgfastEv.exit755, label %bb.ko

bb.ko:                                            ; preds = %bb.kn
  %i.bgh = getelementptr inbounds nuw i8, ptr %i.bgg, i64 8 ; 2 uses
  %i.bgi = load i32, ptr %i.bgh, align 8, !tbaa !12, !noalias !410
  %i.bgj = add nsw i32 %i.bgi, 1
  store i32 %i.bgj, ptr %i.bgh, align 8, !tbaa !12, !noalias !410
  br label %_ZNK5Ipopt13CGPenaltyData12delta_cgfastEv.exit755

_ZNK5Ipopt13CGPenaltyData12delta_cgfastEv.exit755: ; preds = %bb.ko, %bb.kn
  %i.bgk = load ptr, ptr %i.bge, align 8, !tbaa !14
  %i.bgl = getelementptr inbounds nuw i8, ptr %i.bgk, i64 192
  %i.bgm = load ptr, ptr %i.bgl, align 8
  invoke void %i.bgm(ptr noundef nonnull align 8 dereferenceable(205) %i.bge, double noundef 1.000000e+00, ptr noundef nonnull align 8 dereferenceable(205) %i.bgg, double noundef 0.000000e+00, ptr noundef nonnull align 8 dereferenceable(205) %i.bgg, double noundef 0.000000e+00)
          to label %.noexc756 unwind label %bb.kp, !inline_history !157

.noexc756:                                        ; preds = %_ZNK5Ipopt13CGPenaltyData12delta_cgfastEv.exit755
  invoke void @_ZN5Ipopt12TaggedObject13ObjectChangedEv(ptr noundef nonnull align 8 dereferenceable(205) %i.bge)
          to label %_ZN5Ipopt6Vector12AddOneVectorEdRKS0_d.exit758 unwind label %bb.kp

_ZN5Ipopt6Vector12AddOneVectorEdRKS0_d.exit758:   ; preds = %.noexc756
  %i.bgn = getelementptr inbounds nuw i8, ptr %i.bgg, i64 8 ; 2 uses
  %i.bgo = load i32, ptr %i.bgn, align 8, !tbaa !12
  %i.bgp = add nsw i32 %i.bgo, -1                 ; 2 uses
  store i32 %i.bgp, ptr %i.bgn, align 8, !tbaa !12
  %i.bgq = icmp eq i32 %i.bgp, 0
  br i1 %i.bgq, label %.sink.split, label %bb.kq

bb.kp:                                            ; preds = %_ZNK5Ipopt13CGPenaltyData12delta_cgfastEv.exit755, %.noexc756
  %i.bgr = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.bgs = getelementptr inbounds nuw i8, ptr %i.bgg, i64 8 ; 2 uses
  %i.bgt = load i32, ptr %i.bgs, align 8, !tbaa !12
  %i.bgu = add nsw i32 %i.bgt, -1                 ; 2 uses
  store i32 %i.bgu, ptr %i.bgs, align 8, !tbaa !12
  %i.bgv = icmp eq i32 %i.bgu, 0
  br i1 %i.bgv, label %20, label %_ZN5Ipopt8SmartPtrIKNS_14IteratesVectorEED2Ev.exit753

20:                                               ; preds = %bb.kp
  %21 = load ptr, ptr %i.bgg, align 8, !tbaa !14
  %22 = getelementptr inbounds nuw i8, ptr %21, i64 8
  %23 = load ptr, ptr %22, align 8
  call void %23(ptr noundef nonnull align 8 dereferenceable(280) %i.bgg) #18, !inline_history !127
  br label %_ZN5Ipopt8SmartPtrIKNS_14IteratesVectorEED2Ev.exit753

.sink.split:                                      ; preds = %_ZN5Ipopt6Vector12AddOneVectorEdRKS0_d.exit758, %_ZN5Ipopt6Vector12AddOneVectorEdRKS0_d.exit747
  %.sink1107 = phi ptr [ %i.bfj, %_ZN5Ipopt6Vector12AddOneVectorEdRKS0_d.exit747 ], [ %i.bgg, %_ZN5Ipopt6Vector12AddOneVectorEdRKS0_d.exit758 ] ; 2 uses
  %i.bgw = load ptr, ptr %.sink1107, align 8, !tbaa !14
  %i.bgx = getelementptr inbounds nuw i8, ptr %i.bgw, i64 8
  %i.bgy = load ptr, ptr %i.bgx, align 8
  call void %i.bgy(ptr noundef nonnull align 8 dereferenceable(280) %.sink1107) #18
  br label %bb.kq

bb.kq:                                            ; preds = %.sink.split, %_ZN5Ipopt6Vector12AddOneVectorEdRKS0_d.exit747, %_ZN5Ipopt6Vector12AddOneVectorEdRKS0_d.exit758
  %i.bgz = load ptr, ptr %i.e, align 8, !tbaa !24
  %i.bha = load ptr, ptr %15, align 8, !tbaa !300, !noalias !411 ; 6 uses
  %.not.i.i.i.i763 = icmp eq ptr %i.bha, null     ; 2 uses
  br i1 %.not.i.i.i.i763, label %_ZN5Ipopt8ConstPtrINS_14IteratesVectorEEENS_8SmartPtrIKT_EERKNS2_IS3_EE.exit.thread.i764, label %bb.kr

bb.kr:                                            ; preds = %bb.kq
  %i.bhb = getelementptr inbounds nuw i8, ptr %i.bha, i64 8 ; 2 uses
  %i.bhc = load i32, ptr %i.bhb, align 8, !tbaa !12, !noalias !411
  %i.bhd = add nsw i32 %i.bhc, 2
  store i32 %i.bhd, ptr %i.bhb, align 8, !tbaa !12
  br label %_ZN5Ipopt8ConstPtrINS_14IteratesVectorEEENS_8SmartPtrIKT_EERKNS2_IS3_EE.exit.thread.i764

_ZN5Ipopt8ConstPtrINS_14IteratesVectorEEENS_8SmartPtrIKT_EERKNS2_IS3_EE.exit.thread.i764: ; preds = %bb.kr, %bb.kq
  %i.bhe = getelementptr inbounds nuw i8, ptr %i.bgz, i64 40 ; 2 uses
  %i.bhf = load ptr, ptr %i.bhe, align 8, !tbaa !297 ; 4 uses
  %.not.i.i.i.i.i765 = icmp eq ptr %i.bhf, null
  br i1 %.not.i.i.i.i.i765, label %bb.ku, label %bb.ks

bb.ks:                                            ; preds = %_ZN5Ipopt8ConstPtrINS_14IteratesVectorEEENS_8SmartPtrIKT_EERKNS2_IS3_EE.exit.thread.i764
  %i.bhg = getelementptr inbounds nuw i8, ptr %i.bhf, i64 8 ; 2 uses
  %i.bhh = load i32, ptr %i.bhg, align 8, !tbaa !12
  %i.bhi = add nsw i32 %i.bhh, -1                 ; 2 uses
  store i32 %i.bhi, ptr %i.bhg, align 8, !tbaa !12
  %i.bhj = icmp eq i32 %i.bhi, 0
  br i1 %i.bhj, label %bb.kt, label %bb.ku

bb.kt:                                            ; preds = %bb.ks
  %i.bhk = load ptr, ptr %i.bhf, align 8, !tbaa !14
  %i.bhl = getelementptr inbounds nuw i8, ptr %i.bhk, i64 8
  %i.bhm = load ptr, ptr %i.bhl, align 8
  call void %i.bhm(ptr noundef nonnull align 8 dereferenceable(280) %i.bhf) #18, !inline_history !291
  br label %bb.ku

bb.ku:                                            ; preds = %bb.kt, %bb.ks, %_ZN5Ipopt8ConstPtrINS_14IteratesVectorEEENS_8SmartPtrIKT_EERKNS2_IS3_EE.exit.thread.i764
  store ptr %i.bha, ptr %i.bhe, align 8, !tbaa !297
  br i1 %.not.i.i.i.i763, label %_ZN5Ipopt8SmartPtrIKNS_14IteratesVectorEED2Ev.exit.i766, label %bb.kv

bb.kv:                                            ; preds = %bb.ku
  %i.bhn = getelementptr inbounds nuw i8, ptr %i.bha, i64 8 ; 2 uses
  %i.bho = load i32, ptr %i.bhn, align 8, !tbaa !12
  %i.bhp = add nsw i32 %i.bho, -1                 ; 2 uses
  store i32 %i.bhp, ptr %i.bhn, align 8, !tbaa !12
  %i.bhq = icmp eq i32 %i.bhp, 0
  br i1 %i.bhq, label %bb.kw, label %_ZN5Ipopt8SmartPtrIKNS_14IteratesVectorEED2Ev.exit.i766

bb.kw:                                            ; preds = %bb.kv
  %i.bhr = load ptr, ptr %i.bha, align 8, !tbaa !14
  %i.bhs = getelementptr inbounds nuw i8, ptr %i.bhr, i64 8
  %i.bht = load ptr, ptr %i.bhs, align 8
  call void %i.bht(ptr noundef nonnull align 8 dereferenceable(280) %i.bha) #18, !inline_history !292
  br label %_ZN5Ipopt8SmartPtrIKNS_14IteratesVectorEED2Ev.exit.i766

_ZN5Ipopt8SmartPtrIKNS_14IteratesVectorEED2Ev.exit.i766: ; preds = %bb.kw, %bb.kv, %bb.ku
  %i.bhu = load ptr, ptr %15, align 8, !tbaa !300 ; 4 uses
  %.not.i.i.i5.i767 = icmp eq ptr %i.bhu, null
  br i1 %.not.i.i.i5.i767, label %bb.kz, label %bb.kx

bb.kx:                                            ; preds = %_ZN5Ipopt8SmartPtrIKNS_14IteratesVectorEED2Ev.exit.i766
  %i.bhv = getelementptr inbounds nuw i8, ptr %i.bhu, i64 8 ; 2 uses
  %i.bhw = load i32, ptr %i.bhv, align 8, !tbaa !12
  %i.bhx = add nsw i32 %i.bhw, -1                 ; 2 uses
  store i32 %i.bhx, ptr %i.bhv, align 8, !tbaa !12
  %i.bhy = icmp eq i32 %i.bhx, 0
  br i1 %i.bhy, label %bb.ky, label %bb.kz

bb.ky:                                            ; preds = %bb.kx
  %i.bhz = load ptr, ptr %i.bhu, align 8, !tbaa !14
  %i.bia = getelementptr inbounds nuw i8, ptr %i.bhz, i64 8
  %i.bib = load ptr, ptr %i.bia, align 8
  call void %i.bib(ptr noundef nonnull align 8 dereferenceable(280) %i.bhu) #18, !inline_history !293
  br label %bb.kz

bb.kz:                                            ; preds = %_ZN5Ipopt8SmartPtrIKNS_14IteratesVectorEED2Ev.exit.i766, %bb.kx, %bb.ky
  store ptr null, ptr %15, align 8, !tbaa !300
  %i.bic = load ptr, ptr %i.e, align 8, !tbaa !24
  %i.bid = getelementptr inbounds nuw i8, ptr %i.bic, i64 2192
  %i.bie = load ptr, ptr %i.bid, align 8, !tbaa !306
  %i.bif = getelementptr inbounds nuw i8, ptr %i.bie, i64 41
  %i.big = load i8, ptr %i.bif, align 1, !tbaa !311, !range !46, !noundef !47
  %.not239 = icmp eq i8 %i.big, 0
  br i1 %.not239, label %bb.la, label %bb.lj

bb.la:                                            ; preds = %bb.kz
  %i.bih = load ptr, ptr %i.t, align 8, !tbaa !21
  %i.bii = getelementptr inbounds nuw i8, ptr %i.bih, i64 32
  %i.bij = load ptr, ptr %i.bii, align 8, !tbaa !406
  %i.bik = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.bil = load double, ptr %i.bik, align 8, !tbaa !412
  %i.bim = invoke noundef double @_ZN5Ipopt11CGPenaltyCq23compute_curr_cg_penaltyEd(ptr noundef nonnull align 8 dereferenceable(241) %i.bij, double noundef %i.bil)
          to label %bb.lb unwind label %bb.ld     ; 3 uses

bb.lb:                                            ; preds = %bb.la
  %i.bin = load ptr, ptr %i.e, align 8, !tbaa !24
  %i.bio = getelementptr inbounds nuw i8, ptr %i.bin, i64 2192
  %i.bip = load ptr, ptr %i.bio, align 8, !tbaa !306 ; 5 uses
  %i.biq = getelementptr inbounds nuw i8, ptr %i.bip, i64 56 ; 3 uses
  %i.bir = load double, ptr %i.biq, align 8, !tbaa !333 ; 5 uses
  %i.bis = getelementptr inbounds nuw i8, ptr %i.bip, i64 72 ; 2 uses
  %i.bit = load double, ptr %i.bis, align 8, !tbaa !334 ; 3 uses
  %i.biu = fcmp ogt double %i.bim, %i.bir
  br i1 %i.biu, label %bb.lc, label %bb.le

bb.lc:                                            ; preds = %bb.lb
  %i.biv = fadd double %i.bir, 1.000000e+00       ; 2 uses
  %i.biw = fcmp olt double %i.bim, %i.biv
  %.sroa.speculated.i768 = select i1 %i.biw, double %i.biv, double %i.bim
  br label %bb.lg

bb.ld:                                            ; preds = %bb.la
  %i.bix = landingpad { ptr, i32 }
          cleanup
  br label %_ZN5Ipopt8SmartPtrIKNS_14IteratesVectorEED2Ev.exit753

bb.le:                                            ; preds = %bb.lb
  %i.biy = fcmp ugt double %i.bir, %i.bit
  br i1 %i.biy, label %bb.lf, label %bb.lg

bb.lf:                                            ; preds = %bb.le
  %i.biz = getelementptr inbounds nuw i8, ptr %i.bip, i64 88
  %i.bja = load double, ptr %i.biz, align 8, !tbaa !350
  %i.bjb = fcmp oeq double %i.bja, 0.000000e+00
  br i1 %i.bjb, label %bb.lg, label %.thread964

.thread964:                                       ; preds = %bb.lf
  %i.bjc = getelementptr inbounds nuw i8, ptr %0, i64 148 ; 2 uses
  %i.bjd = load i32, ptr %i.bjc, align 4, !tbaa !45
  %i.bje = add nsw i32 %i.bjd, 1
  store i32 %i.bje, ptr %i.bjc, align 4, !tbaa !45
  store double %i.bit, ptr %i.biq, align 8, !tbaa !333
  br label %.sink.split1108

bb.lg:                                            ; preds = %bb.lf, %bb.le, %bb.lc
  %.0 = phi double [ %i.bir, %bb.le ], [ %.sroa.speculated.i768, %bb.lc ], [ %i.bir, %bb.lf ] ; 3 uses
  store double %.0, ptr %i.biq, align 8, !tbaa !333
  %i.bjf = getelementptr inbounds nuw i8, ptr %i.bip, i64 64
  store i8 1, ptr %i.bjf, align 8, !tbaa !309
  %i.bjg = fcmp ogt double %.0, %i.bit
  br i1 %i.bjg, label %bb.lh, label %bb.lj

bb.lh:                                            ; preds = %bb.lg
  %i.bjh = getelementptr inbounds nuw i8, ptr %0, i64 148
  %i.bji = load i32, ptr %i.bjh, align 4, !tbaa !45
  %i.bjj = icmp sgt i32 %i.bji, 50
  br i1 %i.bjj, label %bb.li, label %bb.lj

bb.li:                                            ; preds = %bb.lh
  store double %.0, ptr %i.bis, align 8, !tbaa !334
  br label %.sink.split1108

.sink.split1108:                                  ; preds = %bb.li, %.thread964
  %.sink1110 = phi i64 [ 64, %.thread964 ], [ 80, %bb.li ]
  %i.bjk = getelementptr inbounds nuw i8, ptr %i.bip, i64 %.sink1110
  store i8 1, ptr %i.bjk, align 8, !tbaa !413
  br label %bb.lj

bb.lj:                                            ; preds = %.sink.split1108, %bb.lg, %bb.lh, %bb.kz
  %i.bjl = load ptr, ptr %15, align 8, !tbaa !300 ; 4 uses
  %.not.i.i769 = icmp eq ptr %i.bjl, null
  br i1 %.not.i.i769, label %_ZN5Ipopt8SmartPtrINS_14IteratesVectorEED2Ev.exit.a, label %bb.lk

bb.lk:                                            ; preds = %bb.lj
  %i.bjm = getelementptr inbounds nuw i8, ptr %i.bjl, i64 8 ; 2 uses
  %i.bjn = load i32, ptr %i.bjm, align 8, !tbaa !12
  %i.bjo = add nsw i32 %i.bjn, -1                 ; 2 uses
  store i32 %i.bjo, ptr %i.bjm, align 8, !tbaa !12
  %i.bjp = icmp eq i32 %i.bjo, 0
  br i1 %i.bjp, label %bb.ll, label %_ZN5Ipopt8SmartPtrINS_14IteratesVectorEED2Ev.exit.a

bb.ll:                                            ; preds = %bb.lk
  %i.bjq = load ptr, ptr %i.bjl, align 8, !tbaa !14
  %i.bjr = getelementptr inbounds nuw i8, ptr %i.bjq, i64 8
  %i.bjs = load ptr, ptr %i.bjr, align 8
  call void %i.bjs(ptr noundef nonnull align 8 dereferenceable(280) %i.bjl) #18, !inline_history !294
  br label %_ZN5Ipopt8SmartPtrINS_14IteratesVectorEED2Ev.exit.a

_ZN5Ipopt8SmartPtrINS_14IteratesVectorEED2Ev.exit.a: ; preds = %bb.lj, %bb.lk, %bb.ll
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #18
  br label %bb.ln

_ZN5Ipopt8SmartPtrIKNS_14IteratesVectorEED2Ev.exit753: ; preds = %bb.kp, %20, %bb.km, %16, %bb.ld
  %.pn240.pn.pn = phi { ptr, i32 } [ %i.bfz, %16 ], [ %i.bix, %bb.ld ], [ %i.bgr, %20 ], [ %i.bfz, %bb.km ], [ %i.bgr, %bb.kp ] ; 3 uses
  %i.bjt = load ptr, ptr %15, align 8, !tbaa !300 ; 3 uses
  %.not.i.i770 = icmp eq ptr %i.bjt, null
  br i1 %.not.i.i770, label %_ZN5Ipopt8SmartPtrIKNS_14IteratesVectorEED2Ev.exit751, label %bb.lm

bb.lm:                                            ; preds = %_ZN5Ipopt8SmartPtrIKNS_14IteratesVectorEED2Ev.exit753
  %i.bju = getelementptr inbounds nuw i8, ptr %i.bjt, i64 8 ; 2 uses
  %i.bjv = load i32, ptr %i.bju, align 8, !tbaa !12
  %i.bjw = add nsw i32 %i.bjv, -1                 ; 2 uses
  store i32 %i.bjw, ptr %i.bju, align 8, !tbaa !12
  %i.bjx = icmp eq i32 %i.bjw, 0
  br i1 %i.bjx, label %_ZN5Ipopt8SmartPtrIKNS_14IteratesVectorEED2Ev.exit751.sink.split, label %_ZN5Ipopt8SmartPtrIKNS_14IteratesVectorEED2Ev.exit751

_ZN5Ipopt8SmartPtrIKNS_14IteratesVectorEED2Ev.exit751.sink.split: ; preds = %bb.lm, %bb.kl
  %.sink1115.a = phi ptr [ %i.bes, %bb.kl ], [ %i.bjt, %bb.lm ] ; 2 uses
  %.pn240.pn.pn.pn.ph = phi { ptr, i32 } [ %i.bfu, %bb.kl ], [ %.pn240.pn.pn, %bb.lm ]
  %i.bjy = load ptr, ptr %.sink1115.a, align 8, !tbaa !14
  %i.bjz = getelementptr inbounds nuw i8, ptr %i.bjy, i64 8
  %i.bka = load ptr, ptr %i.bjz, align 8
  call void %i.bka(ptr noundef nonnull align 8 dereferenceable(280) %.sink1115.a) #18
  br label %_ZN5Ipopt8SmartPtrIKNS_14IteratesVectorEED2Ev.exit751

_ZN5Ipopt8SmartPtrIKNS_14IteratesVectorEED2Ev.exit751: ; preds = %_ZN5Ipopt8SmartPtrIKNS_14IteratesVectorEED2Ev.exit751.sink.split, %bb.lm, %_ZN5Ipopt8SmartPtrIKNS_14IteratesVectorEED2Ev.exit753, %bb.kl
  %.pn240.pn.pn.pn = phi { ptr, i32 } [ %.pn240.pn.pn, %_ZN5Ipopt8SmartPtrIKNS_14IteratesVectorEED2Ev.exit753 ], [ %.pn240.pn.pn, %bb.lm ], [ %i.bfu, %bb.kl ], [ %.pn240.pn.pn.pn.ph, %_ZN5Ipopt8SmartPtrIKNS_14IteratesVectorEED2Ev.exit751.sink.split ]
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #18
  br label %_ZN5Ipopt8SmartPtrIKNS_14IteratesVectorEED2Ev.exit349

bb.ln:                                            ; preds = %_ZN5Ipopt8SmartPtrINS_6VectorEED2Ev.exit726, %_ZN5Ipopt8SmartPtrINS_14IteratesVectorEED2Ev.exit.a
  %.1138 = phi i1 [ true, %_ZN5Ipopt8SmartPtrINS_14IteratesVectorEED2Ev.exit.a ], [ false, %_ZN5Ipopt8SmartPtrINS_6VectorEED2Ev.exit726 ]
  %i.bkb = load ptr, ptr %11, align 8, !tbaa !300 ; 4 uses
  %.not.i.i772 = icmp eq ptr %i.bkb, null
  br i1 %.not.i.i772, label %_ZN5Ipopt8SmartPtrINS_14IteratesVectorEED2Ev.exit773, label %bb.lo

bb.lo:                                            ; preds = %bb.ln
  %i.bkc = getelementptr inbounds nuw i8, ptr %i.bkb, i64 8 ; 2 uses
  %i.bkd = load i32, ptr %i.bkc, align 8, !tbaa !12
  %i.bke = add nsw i32 %i.bkd, -1                 ; 2 uses
  store i32 %i.bke, ptr %i.bkc, align 8, !tbaa !12
  %i.bkf = icmp eq i32 %i.bke, 0
  br i1 %i.bkf, label %bb.lp, label %_ZN5Ipopt8SmartPtrINS_14IteratesVectorEED2Ev.exit773

bb.lp:                                            ; preds = %bb.lo
  %i.bkg = load ptr, ptr %i.bkb, align 8, !tbaa !14
  %i.bkh = getelementptr inbounds nuw i8, ptr %i.bkg, i64 8
  %i.bki = load ptr, ptr %i.bkh, align 8
  call void %i.bki(ptr noundef nonnull align 8 dereferenceable(280) %i.bkb) #18, !inline_history !294
  br label %_ZN5Ipopt8SmartPtrINS_14IteratesVectorEED2Ev.exit773

_ZN5Ipopt8SmartPtrINS_14IteratesVectorEED2Ev.exit773: ; preds = %bb.ln, %bb.lo, %bb.lp
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #18
  br label %bb.lr

_ZN5Ipopt8SmartPtrIKNS_14IteratesVectorEED2Ev.exit349: ; preds = %bb.fh, %_ZN5Ipopt8SmartPtrIKNS_6VectorEED2Ev.exit422.thread, %_ZN5Ipopt8SmartPtrIKNS_14IteratesVectorEED2Ev.exit434, %_ZN5Ipopt8SmartPtrIKNS_14IteratesVectorEED2Ev.exit434.thread, %bb.ke, %bb.ee, %bb.ef, %_ZN5Ipopt8SmartPtrIKNS_14IteratesVectorEED2Ev.exit751
  %.pn240.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn240.pn.pn.pn, %_ZN5Ipopt8SmartPtrIKNS_14IteratesVectorEED2Ev.exit751 ], [ %.pn217.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn962, %bb.ke ], [ %i.sm, %bb.ef ], [ %.pn217.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn962, %_ZN5Ipopt8SmartPtrIKNS_14IteratesVectorEED2Ev.exit434.thread ], [ %i.sm, %bb.ee ], [ %i.zq, %bb.fh ], [ %.pn217.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn, %_ZN5Ipopt8SmartPtrIKNS_14IteratesVectorEED2Ev.exit434 ], [ %i.zq, %_ZN5Ipopt8SmartPtrIKNS_6VectorEED2Ev.exit422.thread ] ; 3 uses
  %i.bkj = load ptr, ptr %11, align 8, !tbaa !300 ; 3 uses
  %.not.i.i774 = icmp eq ptr %i.bkj, null
  br i1 %.not.i.i774, label %_ZN5Ipopt8SmartPtrIKNS_14IteratesVectorEED2Ev.exit347, label %bb.lq

bb.lq:                                            ; preds = %_ZN5Ipopt8SmartPtrIKNS_14IteratesVectorEED2Ev.exit349
  %i.bkk = getelementptr inbounds nuw i8, ptr %i.bkj, i64 8 ; 2 uses
  %i.bkl = load i32, ptr %i.bkk, align 8, !tbaa !12
  %i.bkm = add nsw i32 %i.bkl, -1                 ; 2 uses
  store i32 %i.bkm, ptr %i.bkk, align 8, !tbaa !12
  %i.bkn = icmp eq i32 %i.bkm, 0
  br i1 %i.bkn, label %_ZN5Ipopt8SmartPtrIKNS_14IteratesVectorEED2Ev.exit347.sink.split, label %_ZN5Ipopt8SmartPtrIKNS_14IteratesVectorEED2Ev.exit347

_ZN5Ipopt8SmartPtrIKNS_14IteratesVectorEED2Ev.exit347.sink.split: ; preds = %bb.lq, %bb.ed
  %.sink1120 = phi ptr [ %i.pr, %bb.ed ], [ %i.bkj, %bb.lq ] ; 2 uses
  %.pn240.pn.pn.pn.pn.pn.ph = phi { ptr, i32 } [ %i.sh, %bb.ed ], [ %.pn240.pn.pn.pn.pn, %bb.lq ]
  %i.bko = load ptr, ptr %.sink1120, align 8, !tbaa !14
  %i.bkp = getelementptr inbounds nuw i8, ptr %i.bko, i64 8
  %i.bkq = load ptr, ptr %i.bkp, align 8
  call void %i.bkq(ptr noundef nonnull align 8 dereferenceable(280) %.sink1120) #18
  br label %_ZN5Ipopt8SmartPtrIKNS_14IteratesVectorEED2Ev.exit347

_ZN5Ipopt8SmartPtrIKNS_14IteratesVectorEED2Ev.exit347: ; preds = %_ZN5Ipopt8SmartPtrIKNS_14IteratesVectorEED2Ev.exit347.sink.split, %bb.lq, %_ZN5Ipopt8SmartPtrIKNS_14IteratesVectorEED2Ev.exit349, %bb.ed
  %.pn240.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn240.pn.pn.pn.pn, %_ZN5Ipopt8SmartPtrIKNS_14IteratesVectorEED2Ev.exit349 ], [ %.pn240.pn.pn.pn.pn, %bb.lq ], [ %i.sh, %bb.ed ], [ %.pn240.pn.pn.pn.pn.pn.ph, %_ZN5Ipopt8SmartPtrIKNS_14IteratesVectorEED2Ev.exit347.sink.split ]
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #18
  br label %bb.lw

bb.lr:                                            ; preds = %bb.cr, %_ZN5Ipopt8SmartPtrINS_14IteratesVectorEED2Ev.exit773
  %.2139 = phi i1 [ %.1138, %_ZN5Ipopt8SmartPtrINS_14IteratesVectorEED2Ev.exit773 ], [ false, %bb.cr ]
  %i.bkr = load ptr, ptr %10, align 8, !tbaa !300 ; 4 uses
  %.not.i.i776 = icmp eq ptr %i.bkr, null
  br i1 %.not.i.i776, label %_ZN5Ipopt8SmartPtrINS_14IteratesVectorEED2Ev.exit777, label %bb.ls

bb.ls:                                            ; preds = %bb.lr
  %i.bks = getelementptr inbounds nuw i8, ptr %i.bkr, i64 8 ; 2 uses
  %i.bkt = load i32, ptr %i.bks, align 8, !tbaa !12
  %i.bku = add nsw i32 %i.bkt, -1                 ; 2 uses
  store i32 %i.bku, ptr %i.bks, align 8, !tbaa !12
  %i.bkv = icmp eq i32 %i.bku, 0
  br i1 %i.bkv, label %bb.lt, label %_ZN5Ipopt8SmartPtrINS_14IteratesVectorEED2Ev.exit777

bb.lt:                                            ; preds = %bb.ls
  %i.bkw = load ptr, ptr %i.bkr, align 8, !tbaa !14
  %i.bkx = getelementptr inbounds nuw i8, ptr %i.bkw, i64 8
  %i.bky = load ptr, ptr %i.bkx, align 8
  call void %i.bky(ptr noundef nonnull align 8 dereferenceable(280) %i.bkr) #18, !inline_history !294
  br label %_ZN5Ipopt8SmartPtrINS_14IteratesVectorEED2Ev.exit777

_ZN5Ipopt8SmartPtrINS_14IteratesVectorEED2Ev.exit777: ; preds = %bb.lr, %bb.ls, %bb.lt
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #18
  %i.bkz = load ptr, ptr %1, align 8, !tbaa !300  ; 4 uses
  %.not.i.i778 = icmp eq ptr %i.bkz, null
  br i1 %.not.i.i778, label %_ZN5Ipopt8SmartPtrINS_14IteratesVectorEED2Ev.exit779, label %bb.lu

bb.lu:                                            ; preds = %_ZN5Ipopt8SmartPtrINS_14IteratesVectorEED2Ev.exit777
  %i.bla = getelementptr inbounds nuw i8, ptr %i.bkz, i64 8 ; 2 uses
  %i.blb = load i32, ptr %i.bla, align 8, !tbaa !12
  %i.blc = add nsw i32 %i.blb, -1                 ; 2 uses
  store i32 %i.blc, ptr %i.bla, align 8, !tbaa !12
  %i.bld = icmp eq i32 %i.blc, 0
  br i1 %i.bld, label %bb.lv, label %_ZN5Ipopt8SmartPtrINS_14IteratesVectorEED2Ev.exit779

bb.lv:                                            ; preds = %bb.lu
  %i.ble = load ptr, ptr %i.bkz, align 8, !tbaa !14
  %i.blf = getelementptr inbounds nuw i8, ptr %i.ble, i64 8
  %i.blg = load ptr, ptr %i.blf, align 8
  call void %i.blg(ptr noundef nonnull align 8 dereferenceable(280) %i.bkz) #18, !inline_history !294
  br label %_ZN5Ipopt8SmartPtrINS_14IteratesVectorEED2Ev.exit779

_ZN5Ipopt8SmartPtrINS_14IteratesVectorEED2Ev.exit779: ; preds = %_ZN5Ipopt8SmartPtrINS_14IteratesVectorEED2Ev.exit777, %bb.lu, %bb.lv
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #18
  ret i1 %.2139

bb.lw:                                            ; preds = %_ZN5Ipopt8SmartPtrIKNS_14IteratesVectorEED2Ev.exit347, %bb.db
  %.pn240.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn240.pn.pn.pn.pn.pn, %_ZN5Ipopt8SmartPtrIKNS_14IteratesVectorEED2Ev.exit347 ], [ %i.og, %bb.db ] ; 3 uses
  %i.blh = load ptr, ptr %10, align 8, !tbaa !300 ; 3 uses
  %.not.i.i780 = icmp eq ptr %i.blh, null
  br i1 %.not.i.i780, label %_ZN5Ipopt8SmartPtrIKNS_14IteratesVectorEED2Ev.exit330, label %bb.lx

bb.lx:                                            ; preds = %bb.lw
  %i.bli = getelementptr inbounds nuw i8, ptr %i.blh, i64 8 ; 2 uses
  %i.blj = load i32, ptr %i.bli, align 8, !tbaa !12
  %i.blk = add nsw i32 %i.blj, -1                 ; 2 uses
  store i32 %i.blk, ptr %i.bli, align 8, !tbaa !12
  %i.bll = icmp eq i32 %i.blk, 0
  br i1 %i.bll, label %_ZN5Ipopt8SmartPtrIKNS_14IteratesVectorEED2Ev.exit330.sink.split, label %_ZN5Ipopt8SmartPtrIKNS_14IteratesVectorEED2Ev.exit330

_ZN5Ipopt8SmartPtrIKNS_14IteratesVectorEED2Ev.exit330.sink.split: ; preds = %bb.lx, %bb.da
  %.sink1125 = phi ptr [ %i.mo, %bb.da ], [ %i.blh, %bb.lx ] ; 2 uses
  %.pn240.pn.pn.pn.pn.pn.pn.pn.ph = phi { ptr, i32 } [ %i.ob, %bb.da ], [ %.pn240.pn.pn.pn.pn.pn.pn, %bb.lx ]
  %i.blm = load ptr, ptr %.sink1125, align 8, !tbaa !14
  %i.bln = getelementptr inbounds nuw i8, ptr %i.blm, i64 8
  %i.blo = load ptr, ptr %i.bln, align 8
  call void %i.blo(ptr noundef nonnull align 8 dereferenceable(280) %.sink1125) #18
  br label %_ZN5Ipopt8SmartPtrIKNS_14IteratesVectorEED2Ev.exit330

_ZN5Ipopt8SmartPtrIKNS_14IteratesVectorEED2Ev.exit330: ; preds = %_ZN5Ipopt8SmartPtrIKNS_14IteratesVectorEED2Ev.exit330.sink.split, %bb.lx, %bb.lw, %bb.da
  %.pn240.pn.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn240.pn.pn.pn.pn.pn.pn, %bb.lw ], [ %.pn240.pn.pn.pn.pn.pn.pn, %bb.lx ], [ %i.ob, %bb.da ], [ %.pn240.pn.pn.pn.pn.pn.pn.pn.ph, %_ZN5Ipopt8SmartPtrIKNS_14IteratesVectorEED2Ev.exit330.sink.split ]
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #18
  br label %_ZN5Ipopt8SmartPtrIKNS_14IteratesVectorEED2Ev.exit310

_ZN5Ipopt8SmartPtrIKNS_14IteratesVectorEED2Ev.exit310: ; preds = %_ZN5Ipopt8SmartPtrIKNS_6VectorEED2Ev.exit308.thread, %bb.bx, %_ZN5Ipopt8SmartPtrIKNS_14IteratesVectorEED2Ev.exit330, %_ZN5Ipopt8SmartPtrIKNS_6VectorEED2Ev.exit328, %_ZN5Ipopt8SmartPtrIKNS_6VectorEED2Ev.exit326, %bb.ce, %_ZN5Ipopt8SmartPtrIKNS_6VectorEED2Ev.exit302, %_ZN5Ipopt8SmartPtrIKNS_6VectorEED2Ev.exit300, %_ZN5Ipopt8SmartPtrIKNS_6VectorEED2Ev.exit298, %_ZN5Ipopt8SmartPtrIKNS_6VectorEED2Ev.exit296, %_ZN5Ipopt8SmartPtrIKNS_6VectorEED2Ev.exit294, %_ZN5Ipopt8SmartPtrIKNS_6VectorEED2Ev.exit292
  %.pn240.pn.pn.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn240.pn.pn.pn.pn.pn.pn.pn, %_ZN5Ipopt8SmartPtrIKNS_14IteratesVectorEED2Ev.exit330 ], [ %.pn169, %_ZN5Ipopt8SmartPtrIKNS_6VectorEED2Ev.exit328 ], [ %.pn167, %_ZN5Ipopt8SmartPtrIKNS_6VectorEED2Ev.exit326 ], [ %.pn145, %_ZN5Ipopt8SmartPtrIKNS_6VectorEED2Ev.exit294 ], [ %i.ln, %bb.ce ], [ %.pn, %_ZN5Ipopt8SmartPtrIKNS_6VectorEED2Ev.exit292 ], [ %.pn153, %_ZN5Ipopt8SmartPtrIKNS_6VectorEED2Ev.exit302 ], [ %.pn151, %_ZN5Ipopt8SmartPtrIKNS_6VectorEED2Ev.exit300 ], [ %.pn149, %_ZN5Ipopt8SmartPtrIKNS_6VectorEED2Ev.exit298 ], [ %.pn147, %_ZN5Ipopt8SmartPtrIKNS_6VectorEED2Ev.exit296 ], [ %.pn155.pn.pn924, %bb.bx ], [ %.pn155.pn.pn924, %_ZN5Ipopt8SmartPtrIKNS_6VectorEED2Ev.exit308.thread ] ; 3 uses
  %i.blp = load ptr, ptr %1, align 8, !tbaa !300  ; 3 uses
  %.not.i.i782 = icmp eq ptr %i.blp, null
  br i1 %.not.i.i782, label %_ZN5Ipopt8SmartPtrIKNS_14IteratesVectorEED2Ev.exit290, label %bb.ly

bb.ly:                                            ; preds = %_ZN5Ipopt8SmartPtrIKNS_14IteratesVectorEED2Ev.exit310
  %i.blq = getelementptr inbounds nuw i8, ptr %i.blp, i64 8 ; 2 uses
  %i.blr = load i32, ptr %i.blq, align 8, !tbaa !12
  %i.bls = add nsw i32 %i.blr, -1                 ; 2 uses
  store i32 %i.bls, ptr %i.blq, align 8, !tbaa !12
  %i.blt = icmp eq i32 %i.bls, 0
  br i1 %i.blt, label %_ZN5Ipopt8SmartPtrIKNS_14IteratesVectorEED2Ev.exit290.sink.split, label %_ZN5Ipopt8SmartPtrIKNS_14IteratesVectorEED2Ev.exit290

_ZN5Ipopt8SmartPtrIKNS_14IteratesVectorEED2Ev.exit290.sink.split: ; preds = %bb.ly, %bb.at
  %.sink1130 = phi ptr [ %i.h, %bb.at ], [ %i.blp, %bb.ly ] ; 2 uses
  %.pn240.pn.pn.pn.pn.pn.pn.pn.pn.pn.ph = phi { ptr, i32 } [ %i.gl, %bb.at ], [ %.pn240.pn.pn.pn.pn.pn.pn.pn.pn, %bb.ly ]
  %i.blu = load ptr, ptr %.sink1130, align 8, !tbaa !14
  %i.blv = getelementptr inbounds nuw i8, ptr %i.blu, i64 8
  %i.blw = load ptr, ptr %i.blv, align 8
  call void %i.blw(ptr noundef nonnull align 8 dereferenceable(280) %.sink1130) #18
  br label %_ZN5Ipopt8SmartPtrIKNS_14IteratesVectorEED2Ev.exit290

_ZN5Ipopt8SmartPtrIKNS_14IteratesVectorEED2Ev.exit290: ; preds = %_ZN5Ipopt8SmartPtrIKNS_14IteratesVectorEED2Ev.exit290.sink.split, %bb.ly, %_ZN5Ipopt8SmartPtrIKNS_14IteratesVectorEED2Ev.exit310, %bb.at
  %.pn240.pn.pn.pn.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn240.pn.pn.pn.pn.pn.pn.pn.pn, %bb.ly ], [ %i.gl, %bb.at ], [ %.pn240.pn.pn.pn.pn.pn.pn.pn.pn, %_ZN5Ipopt8SmartPtrIKNS_14IteratesVectorEED2Ev.exit310 ], [ %.pn240.pn.pn.pn.pn.pn.pn.pn.pn.pn.ph, %_ZN5Ipopt8SmartPtrIKNS_14IteratesVectorEED2Ev.exit290.sink.split ]
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #18
  resume { ptr, i32 } %.pn240.pn.pn.pn.pn.pn.pn.pn.pn.pn
}

declare void @_ZNK5Ipopt14IteratesVector16MakeNewContainerEv(ptr dead_on_unwind writable sret(%"class.Ipopt::SmartPtr.35") align 8, ptr noundef nonnull align 8 dereferenceable(280)) local_unnamed_addr #5

declare void @_ZN5Ipopt25IpoptCalculatedQuantities28curr_grad_lag_with_damping_xEv(ptr dead_on_unwind writable sret(%"class.Ipopt::SmartPtr.52") align 8, ptr noundef nonnull align 8 dereferenceable(2185)) local_unnamed_addr #5

declare void @_ZN5Ipopt25IpoptCalculatedQuantities28curr_grad_lag_with_damping_sEv(ptr dead_on_unwind writable sret(%"class.Ipopt::SmartPtr.52") align 8, ptr noundef nonnull align 8 dereferenceable(2185)) local_unnamed_addr #5

declare void @_ZN5Ipopt25IpoptCalculatedQuantities22curr_relaxed_compl_x_LEv(ptr dead_on_unwind writable sret(%"class.Ipopt::SmartPtr.52") align 8, ptr noundef nonnull align 8 dereferenceable(2185)) local_unnamed_addr #5

declare void @_ZN5Ipopt25IpoptCalculatedQuantities22curr_relaxed_compl_x_UEv(ptr dead_on_unwind writable sret(%"class.Ipopt::SmartPtr.52") align 8, ptr noundef nonnull align 8 dereferenceable(2185)) local_unnamed_addr #5

declare void @_ZN5Ipopt25IpoptCalculatedQuantities22curr_relaxed_compl_s_LEv(ptr dead_on_unwind writable sret(%"class.Ipopt::SmartPtr.52") align 8, ptr noundef nonnull align 8 dereferenceable(2185)) local_unnamed_addr #5

declare void @_ZN5Ipopt25IpoptCalculatedQuantities22curr_relaxed_compl_s_UEv(ptr dead_on_unwind writable sret(%"class.Ipopt::SmartPtr.52") align 8, ptr noundef nonnull align 8 dereferenceable(2185)) local_unnamed_addr #5

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare double @pow(double noundef, double noundef) local_unnamed_addr #6

declare void @_ZN5Ipopt25IpoptCalculatedQuantities6curr_cEv(ptr dead_on_unwind writable sret(%"class.Ipopt::SmartPtr.52") align 8, ptr noundef nonnull align 8 dereferenceable(2185)) local_unnamed_addr #5

declare void @_ZN5Ipopt25IpoptCalculatedQuantities14curr_d_minus_sEv(ptr dead_on_unwind writable sret(%"class.Ipopt::SmartPtr.52") align 8, ptr noundef nonnull align 8 dereferenceable(2185)) local_unnamed_addr #5

declare void @_ZNK5Ipopt14IteratesVector21MakeNewIteratesVectorEb(ptr dead_on_unwind writable sret(%"class.Ipopt::SmartPtr.35") align 8, ptr noundef nonnull align 8 dereferenceable(280), i1 noundef zeroext) local_unnamed_addr #5

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare double @sqrt(double noundef) local_unnamed_addr #6

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fmuladd.f64(double, double, double) #7

declare noundef double @_ZN5Ipopt11CGPenaltyCq21dT_times_barH_times_dEv(ptr noundef nonnull align 8 dereferenceable(241)) local_unnamed_addr #5

declare noundef double @_ZN5Ipopt11CGPenaltyCq39curr_fast_direct_deriv_penalty_functionEv(ptr noundef nonnull align 8 dereferenceable(241)) local_unnamed_addr #5

declare noundef double @_ZN5Ipopt11CGPenaltyCq23compute_curr_cg_penaltyEd(ptr noundef nonnull align 8 dereferenceable(241), double noundef) local_unnamed_addr #5

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZN5Ipopt23AlgorithmStrategyObjectD2Ev(ptr noundef nonnull align 8 dead_on_return(49) dereferenceable(49) %0) unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN5Ipopt23AlgorithmStrategyObjectE, i64 16), ptr %0, align 8, !tbaa !14
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !21   ; 4 uses
  %.not.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i, label %_ZN5Ipopt8SmartPtrINS_25IpoptCalculatedQuantitiesEED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 2 uses
end_hunk_0
