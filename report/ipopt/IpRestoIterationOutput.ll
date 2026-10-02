Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ipopt/original/IpRestoIterationOutput?download=true
inline.NumInlined: 965
inline.NumDeleted: 166
begin_hunk_0_@_ZN5Ipopt20RestoIterationOutput11WriteOutputEv:bb.a
  br label %_ZN5Ipopt8SmartPtrIKNS_14IteratesVectorEED2Ev.exit733

bb.hr:                                            ; preds = %_ZNK5Ipopt6Vector4AmaxEv.exit837, %bb.gg
  %i.bag = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.bah = load i32, ptr %i.aqo, align 8, !tbaa !12
  %i.bai = add nsw i32 %i.bah, -1                 ; 2 uses
  store i32 %i.bai, ptr %i.aqo, align 8, !tbaa !12
  %i.baj = icmp eq i32 %i.bai, 0
  br i1 %i.baj, label %bb.hs, label %_ZN5Ipopt8SmartPtrIKNS_6VectorEED2Ev.exit933.thread

bb.hs:                                            ; preds = %bb.hr
  %i.bak = load ptr, ptr %.0.i3.i.i.i827, align 8, !tbaa !14
  %i.bal = getelementptr inbounds nuw i8, ptr %i.bak, i64 8
  %i.bam = load ptr, ptr %i.bal, align 8
  call void %i.bam(ptr noundef nonnull align 8 dereferenceable(205) %.0.i3.i.i.i827) #9, !inline_history !76
  br label %_ZN5Ipopt8SmartPtrIKNS_6VectorEED2Ev.exit933.thread

_ZN5Ipopt8SmartPtrIKNS_6VectorEED2Ev.exit933.thread: ; preds = %bb.hr, %bb.hs
  %i.ban = getelementptr inbounds nuw i8, ptr %i.aqc, i64 8 ; 2 uses
  %i.bao = load i32, ptr %i.ban, align 8, !tbaa !12
  %i.bap = add nsw i32 %i.bao, -1                 ; 2 uses
  store i32 %i.bap, ptr %i.ban, align 8, !tbaa !12
  %i.baq = icmp eq i32 %i.bap, 0
  br i1 %i.baq, label %bb.ht, label %_ZN5Ipopt8SmartPtrIKNS_14IteratesVectorEED2Ev.exit733

bb.ht:                                            ; preds = %_ZN5Ipopt8SmartPtrIKNS_6VectorEED2Ev.exit933.thread
  %i.bar = load ptr, ptr %i.aqc, align 8, !tbaa !14
  %i.bas = getelementptr inbounds nuw i8, ptr %i.bar, i64 8
  %i.bat = load ptr, ptr %i.bas, align 8
  call void %i.bat(ptr noundef nonnull align 8 dereferenceable(280) %i.aqc) #9, !inline_history !77
  br label %_ZN5Ipopt8SmartPtrIKNS_14IteratesVectorEED2Ev.exit733

bb.hu:                                            ; preds = %_ZNK5Ipopt6Vector4AmaxEv.exit856, %bb.gm
  %i.bau = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.bav = load i32, ptr %i.ash, align 8, !tbaa !12
  %i.baw = add nsw i32 %i.bav, -1                 ; 2 uses
  store i32 %i.baw, ptr %i.ash, align 8, !tbaa !12
  %i.bax = icmp eq i32 %i.baw, 0
  br i1 %i.bax, label %bb.hv, label %_ZN5Ipopt8SmartPtrIKNS_6VectorEED2Ev.exit937.thread

bb.hv:                                            ; preds = %bb.hu
  %i.bay = load ptr, ptr %.0.i3.i.i.i846, align 8, !tbaa !14
  %i.baz = getelementptr inbounds nuw i8, ptr %i.bay, i64 8
  %i.bba = load ptr, ptr %i.baz, align 8
  call void %i.bba(ptr noundef nonnull align 8 dereferenceable(205) %.0.i3.i.i.i846) #9, !inline_history !76
  br label %_ZN5Ipopt8SmartPtrIKNS_6VectorEED2Ev.exit937.thread

_ZN5Ipopt8SmartPtrIKNS_6VectorEED2Ev.exit937.thread: ; preds = %bb.hu, %bb.hv
  %i.bbb = getelementptr inbounds nuw i8, ptr %i.arv, i64 8 ; 2 uses
  %i.bbc = load i32, ptr %i.bbb, align 8, !tbaa !12
  %i.bbd = add nsw i32 %i.bbc, -1                 ; 2 uses
  store i32 %i.bbd, ptr %i.bbb, align 8, !tbaa !12
  %i.bbe = icmp eq i32 %i.bbd, 0
  br i1 %i.bbe, label %bb.hw, label %_ZN5Ipopt8SmartPtrIKNS_14IteratesVectorEED2Ev.exit733

bb.hw:                                            ; preds = %_ZN5Ipopt8SmartPtrIKNS_6VectorEED2Ev.exit937.thread
  %i.bbf = load ptr, ptr %i.arv, align 8, !tbaa !14
  %i.bbg = getelementptr inbounds nuw i8, ptr %i.bbf, i64 8
  %i.bbh = load ptr, ptr %i.bbg, align 8
  call void %i.bbh(ptr noundef nonnull align 8 dereferenceable(280) %i.arv) #9, !inline_history !77
  br label %_ZN5Ipopt8SmartPtrIKNS_14IteratesVectorEED2Ev.exit733

bb.hx:                                            ; preds = %_ZNK5Ipopt6Vector4AmaxEv.exit875, %bb.gs
  %i.bbi = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.bbj = load i32, ptr %i.aua, align 8, !tbaa !12
  %i.bbk = add nsw i32 %i.bbj, -1                 ; 2 uses
  store i32 %i.bbk, ptr %i.aua, align 8, !tbaa !12
  %i.bbl = icmp eq i32 %i.bbk, 0
  br i1 %i.bbl, label %bb.hy, label %_ZN5Ipopt8SmartPtrIKNS_6VectorEED2Ev.exit941.thread

bb.hy:                                            ; preds = %bb.hx
  %i.bbm = load ptr, ptr %.0.i3.i.i.i865, align 8, !tbaa !14
  %i.bbn = getelementptr inbounds nuw i8, ptr %i.bbm, i64 8
  %i.bbo = load ptr, ptr %i.bbn, align 8
  call void %i.bbo(ptr noundef nonnull align 8 dereferenceable(205) %.0.i3.i.i.i865) #9, !inline_history !76
  br label %_ZN5Ipopt8SmartPtrIKNS_6VectorEED2Ev.exit941.thread

_ZN5Ipopt8SmartPtrIKNS_6VectorEED2Ev.exit941.thread: ; preds = %bb.hx, %bb.hy
  %i.bbp = getelementptr inbounds nuw i8, ptr %i.ato, i64 8 ; 2 uses
  %i.bbq = load i32, ptr %i.bbp, align 8, !tbaa !12
  %i.bbr = add nsw i32 %i.bbq, -1                 ; 2 uses
  store i32 %i.bbr, ptr %i.bbp, align 8, !tbaa !12
  %i.bbs = icmp eq i32 %i.bbr, 0
  br i1 %i.bbs, label %bb.hz, label %_ZN5Ipopt8SmartPtrIKNS_14IteratesVectorEED2Ev.exit733

bb.hz:                                            ; preds = %_ZN5Ipopt8SmartPtrIKNS_6VectorEED2Ev.exit941.thread
  %i.bbt = load ptr, ptr %i.ato, align 8, !tbaa !14
  %i.bbu = getelementptr inbounds nuw i8, ptr %i.bbt, i64 8
  %i.bbv = load ptr, ptr %i.bbu, align 8
  call void %i.bbv(ptr noundef nonnull align 8 dereferenceable(280) %i.ato) #9, !inline_history !77
  br label %_ZN5Ipopt8SmartPtrIKNS_14IteratesVectorEED2Ev.exit733

bb.ia:                                            ; preds = %_ZNK5Ipopt6Vector4AmaxEv.exit894, %bb.gy
  %i.bbw = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.bbx = load i32, ptr %i.avt, align 8, !tbaa !12
  %i.bby = add nsw i32 %i.bbx, -1                 ; 2 uses
  store i32 %i.bby, ptr %i.avt, align 8, !tbaa !12
  %i.bbz = icmp eq i32 %i.bby, 0
  br i1 %i.bbz, label %bb.ib, label %_ZN5Ipopt8SmartPtrIKNS_6VectorEED2Ev.exit945.thread

bb.ib:                                            ; preds = %bb.ia
  %i.bca = load ptr, ptr %.0.i3.i.i.i884, align 8, !tbaa !14
  %i.bcb = getelementptr inbounds nuw i8, ptr %i.bca, i64 8
  %i.bcc = load ptr, ptr %i.bcb, align 8
  call void %i.bcc(ptr noundef nonnull align 8 dereferenceable(205) %.0.i3.i.i.i884) #9, !inline_history !76
  br label %_ZN5Ipopt8SmartPtrIKNS_6VectorEED2Ev.exit945.thread

_ZN5Ipopt8SmartPtrIKNS_6VectorEED2Ev.exit945.thread: ; preds = %bb.ia, %bb.ib
  %i.bcd = getelementptr inbounds nuw i8, ptr %i.avh, i64 8 ; 2 uses
  %i.bce = load i32, ptr %i.bcd, align 8, !tbaa !12
  %i.bcf = add nsw i32 %i.bce, -1                 ; 2 uses
  store i32 %i.bcf, ptr %i.bcd, align 8, !tbaa !12
  %i.bcg = icmp eq i32 %i.bcf, 0
  br i1 %i.bcg, label %bb.ic, label %_ZN5Ipopt8SmartPtrIKNS_14IteratesVectorEED2Ev.exit733

bb.ic:                                            ; preds = %_ZN5Ipopt8SmartPtrIKNS_6VectorEED2Ev.exit945.thread
  %i.bch = load ptr, ptr %i.avh, align 8, !tbaa !14
  %i.bci = getelementptr inbounds nuw i8, ptr %i.bch, i64 8
  %i.bcj = load ptr, ptr %i.bci, align 8
  call void %i.bcj(ptr noundef nonnull align 8 dereferenceable(280) %i.avh) #9, !inline_history !77
  br label %_ZN5Ipopt8SmartPtrIKNS_14IteratesVectorEED2Ev.exit733

bb.id:                                            ; preds = %_ZNK5Ipopt6Vector4AmaxEv.exit913, %bb.he
  %i.bck = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.bcl = load i32, ptr %i.axm, align 8, !tbaa !12
  %i.bcm = add nsw i32 %i.bcl, -1                 ; 2 uses
  store i32 %i.bcm, ptr %i.axm, align 8, !tbaa !12
  %i.bcn = icmp eq i32 %i.bcm, 0
  br i1 %i.bcn, label %bb.ie, label %_ZN5Ipopt8SmartPtrIKNS_6VectorEED2Ev.exit949.thread

bb.ie:                                            ; preds = %bb.id
  %i.bco = load ptr, ptr %.0.i3.i.i.i903, align 8, !tbaa !14
  %i.bcp = getelementptr inbounds nuw i8, ptr %i.bco, i64 8
  %i.bcq = load ptr, ptr %i.bcp, align 8
  call void %i.bcq(ptr noundef nonnull align 8 dereferenceable(205) %.0.i3.i.i.i903) #9, !inline_history !76
  br label %_ZN5Ipopt8SmartPtrIKNS_6VectorEED2Ev.exit949.thread

_ZN5Ipopt8SmartPtrIKNS_6VectorEED2Ev.exit949.thread: ; preds = %bb.id, %bb.ie
  %i.bcr = getelementptr inbounds nuw i8, ptr %i.axa, i64 8 ; 2 uses
  %i.bcs = load i32, ptr %i.bcr, align 8, !tbaa !12
  %i.bct = add nsw i32 %i.bcs, -1                 ; 2 uses
  store i32 %i.bct, ptr %i.bcr, align 8, !tbaa !12
  %i.bcu = icmp eq i32 %i.bct, 0
  br i1 %i.bcu, label %bb.if, label %_ZN5Ipopt8SmartPtrIKNS_14IteratesVectorEED2Ev.exit733

bb.if:                                            ; preds = %_ZN5Ipopt8SmartPtrIKNS_6VectorEED2Ev.exit949.thread
  %i.bcv = load ptr, ptr %i.axa, align 8, !tbaa !14
  %i.bcw = getelementptr inbounds nuw i8, ptr %i.bcv, i64 8
  %i.bcx = load ptr, ptr %i.bcw, align 8
  call void %i.bcx(ptr noundef nonnull align 8 dereferenceable(280) %i.axa) #9, !inline_history !77
  br label %_ZN5Ipopt8SmartPtrIKNS_14IteratesVectorEED2Ev.exit733

_ZN5Ipopt8SmartPtrIKNS_14IteratesVectorEED2Ev.exit765.thread: ; preds = %bb.fm
  %i.bcy = load ptr, ptr %i.al, align 8, !tbaa !30 ; 2 uses
  %i.bcz = load ptr, ptr %i.bcy, align 8, !tbaa !14
  %i.bda = getelementptr inbounds nuw i8, ptr %i.bcz, i64 16
  %i.bdb = load ptr, ptr %i.bda, align 8
  invoke void (ptr, i32, i32, ptr, ...) %i.bdb(ptr noundef nonnull align 8 dereferenceable(40) %i.bcy, i32 noundef 7, i32 noundef 2, ptr noundef nonnull @.str.33)
          to label %bb.ig unwind label %bb.ce

bb.ig:                                            ; preds = %bb.fl, %_ZN5Ipopt8SmartPtrIKNS_14IteratesVectorEED2Ev.exit765.thread, %_ZN5Ipopt8SmartPtrIKNS_6VectorEED2Ev.exit915, %bb.hh
  %i.bdc = load ptr, ptr %i.al, align 8, !tbaa !30 ; 2 uses
  %i.bdd = load ptr, ptr %i.bdc, align 8, !tbaa !14
  %i.bde = getelementptr inbounds nuw i8, ptr %i.bdd, i64 56
  %i.bdf = load ptr, ptr %i.bde, align 8
  %i.bdg = invoke noundef zeroext i1 %i.bdf(ptr noundef nonnull align 8 dereferenceable(40) %i.bdc, i32 noundef 8, i32 noundef 2)
          to label %bb.ih unwind label %bb.ce

bb.ih:                                            ; preds = %bb.ig
  br i1 %i.bdg, label %bb.ii, label %bb.ma

bb.ii:                                            ; preds = %bb.ih
  %i.bdh = load ptr, ptr %i.v, align 8, !tbaa !24
  %i.bdi = getelementptr inbounds nuw i8, ptr %i.bdh, i64 16
  %i.bdj = load ptr, ptr %i.bdi, align 8, !tbaa !339, !noalias !452 ; 10 uses
  %.not.i.i.i.i952 = icmp eq ptr %i.bdj, null
  br i1 %.not.i.i.i.i952, label %_ZNK5Ipopt9IpoptData4currEv.exit953, label %bb.ij

bb.ij:                                            ; preds = %bb.ii
  %i.bdk = getelementptr inbounds nuw i8, ptr %i.bdj, i64 8 ; 2 uses
  %i.bdl = load i32, ptr %i.bdk, align 8, !tbaa !12, !noalias !452
  %i.bdm = add nsw i32 %i.bdl, 1
  store i32 %i.bdm, ptr %i.bdk, align 8, !tbaa !12, !noalias !452
  br label %_ZNK5Ipopt9IpoptData4currEv.exit953

_ZNK5Ipopt9IpoptData4currEv.exit953:              ; preds = %bb.ij, %bb.ii
  %i.bdn = getelementptr inbounds nuw i8, ptr %i.bdj, i64 208
  %i.bdo = load ptr, ptr %i.bdn, align 8, !tbaa !344, !noalias !453
  %i.bdp = load ptr, ptr %i.bdo, align 8, !tbaa !348, !noalias !453 ; 2 uses
  %.not.i.i.i954 = icmp eq ptr %i.bdp, null
  br i1 %.not.i.i.i954, label %_ZNK5Ipopt14CompoundVector10IsCompNullEi.exit.i.i958, label %_ZNK5Ipopt14CompoundVector9ConstCompEi.exit.thread.i.i.i955

_ZNK5Ipopt14CompoundVector10IsCompNullEi.exit.i.i958: ; preds = %_ZNK5Ipopt9IpoptData4currEv.exit953
  %i.bdq = getelementptr inbounds nuw i8, ptr %i.bdj, i64 232
  %i.bdr = load ptr, ptr %i.bdq, align 8, !tbaa !351, !noalias !453
  %i.bds = load ptr, ptr %i.bdr, align 8, !tbaa !353, !noalias !453, !nonnull !360, !noundef !360
  br label %_ZNK5Ipopt14CompoundVector9ConstCompEi.exit.thread.i.i.i955

_ZNK5Ipopt14CompoundVector9ConstCompEi.exit.thread.i.i.i955: ; preds = %_ZNK5Ipopt14CompoundVector10IsCompNullEi.exit.i.i958, %_ZNK5Ipopt9IpoptData4currEv.exit953
  %.0.i3.i.i.i956 = phi ptr [ %i.bdp, %_ZNK5Ipopt9IpoptData4currEv.exit953 ], [ %i.bds, %_ZNK5Ipopt14CompoundVector10IsCompNullEi.exit.i.i958 ] ; 6 uses
  %i.bdt = getelementptr inbounds nuw i8, ptr %.0.i3.i.i.i956, i64 8 ; 6 uses
  %i.bdu = load i32, ptr %i.bdt, align 8, !tbaa !12, !noalias !454
  %i.bdv = add nsw i32 %i.bdu, 1
  store i32 %i.bdv, ptr %i.bdt, align 8, !tbaa !12, !noalias !454
  %i.bdw = load ptr, ptr %i.al, align 8, !tbaa !30
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #9
  %i.bdx = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 6 uses
  store ptr %i.bdx, ptr %4, align 8, !tbaa !33
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(6) %i.bdx, ptr noundef nonnull align 1 dereferenceable(6) @.str.34, i64 6, i1 false)
  %i.bdy = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i64 6, ptr %i.bdy, align 8, !tbaa !39
  %i.bdz = getelementptr inbounds nuw i8, ptr %4, i64 22
  store i8 0, ptr %i.bdz, align 2, !tbaa !38
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #9
  %i.bea = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 6 uses
  store ptr %i.bea, ptr %5, align 8, !tbaa !33
  %i.beb = getelementptr inbounds nuw i8, ptr %5, i64 8
  store i64 0, ptr %i.beb, align 8, !tbaa !39
  store i8 0, ptr %i.bea, align 8, !tbaa !38
  invoke void @_ZNK5Ipopt6Vector5PrintERKNS_10JournalistENS_13EJournalLevelENS_16EJournalCategoryERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiSD_(ptr noundef nonnull align 8 dereferenceable(205) %.0.i3.i.i.i956, ptr noundef nonnull align 8 dereferenceable(40) %i.bdw, i32 noundef 8, i32 noundef 2, ptr noundef nonnull align 8 dereferenceable(32) %4, i32 noundef 0, ptr noundef nonnull align 8 dereferenceable(32) %5)
          to label %bb.ik unwind label %bb.km

bb.ik:                                            ; preds = %_ZNK5Ipopt14CompoundVector9ConstCompEi.exit.thread.i.i.i955
  %i.bec = load ptr, ptr %5, align 8, !tbaa !37   ; 2 uses
  %i.bed = icmp eq ptr %i.bec, %i.bea
  br i1 %i.bed, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.ik
  %i.bee = load i64, ptr %i.bea, align 8, !tbaa !38
  %i.bef = add i64 %i.bee, 1
  call void @_ZdlPvm(ptr noundef %i.bec, i64 noundef %i.bef) #10
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.ik, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #9
  %i.beg = load ptr, ptr %4, align 8, !tbaa !37   ; 2 uses
  %i.beh = icmp eq ptr %i.beg, %i.bdx
  br i1 %i.beh, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i970, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i969

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i969: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.bei = load i64, ptr %i.bdx, align 8, !tbaa !38
  %i.bej = add i64 %i.bei, 1
  call void @_ZdlPvm(ptr noundef %i.beg, i64 noundef %i.bej) #10
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i970

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i970: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i969
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #9
  %i.bek = load i32, ptr %i.bdt, align 8, !tbaa !12
  %i.bel = add nsw i32 %i.bek, -1                 ; 2 uses
  store i32 %i.bel, ptr %i.bdt, align 8, !tbaa !12
  %i.bem = icmp eq i32 %i.bel, 0
  br i1 %i.bem, label %bb.il, label %_ZN5Ipopt8SmartPtrIKNS_6VectorEED2Ev.exit973

bb.il:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i970
  %i.ben = load ptr, ptr %.0.i3.i.i.i956, align 8, !tbaa !14
  %i.beo = getelementptr inbounds nuw i8, ptr %i.ben, i64 8
  %i.bep = load ptr, ptr %i.beo, align 8
  call void %i.bep(ptr noundef nonnull align 8 dereferenceable(205) %.0.i3.i.i.i956) #9, !inline_history !76
  br label %_ZN5Ipopt8SmartPtrIKNS_6VectorEED2Ev.exit973

_ZN5Ipopt8SmartPtrIKNS_6VectorEED2Ev.exit973:     ; preds = %bb.il, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i970
  %i.beq = getelementptr inbounds nuw i8, ptr %i.bdj, i64 8 ; 2 uses
  %i.ber = load i32, ptr %i.beq, align 8, !tbaa !12
  %i.bes = add nsw i32 %i.ber, -1                 ; 2 uses
  store i32 %i.bes, ptr %i.beq, align 8, !tbaa !12
  %i.bet = icmp eq i32 %i.bes, 0
  br i1 %i.bet, label %bb.im, label %bb.in

bb.im:                                            ; preds = %_ZN5Ipopt8SmartPtrIKNS_6VectorEED2Ev.exit973
  %i.beu = load ptr, ptr %i.bdj, align 8, !tbaa !14
  %i.bev = getelementptr inbounds nuw i8, ptr %i.beu, i64 8
  %i.bew = load ptr, ptr %i.bev, align 8
  call void %i.bew(ptr noundef nonnull align 8 dereferenceable(280) %i.bdj) #9, !inline_history !77
  br label %bb.in

bb.in:                                            ; preds = %bb.im, %_ZN5Ipopt8SmartPtrIKNS_6VectorEED2Ev.exit973
  %i.bex = load ptr, ptr %i.v, align 8, !tbaa !24
  %i.bey = getelementptr inbounds nuw i8, ptr %i.bex, i64 16
  %i.bez = load ptr, ptr %i.bey, align 8, !tbaa !339, !noalias !455 ; 10 uses
  %.not.i.i.i.i976 = icmp eq ptr %i.bez, null
  br i1 %.not.i.i.i.i976, label %_ZNK5Ipopt9IpoptData4currEv.exit977, label %bb.io

bb.io:                                            ; preds = %bb.in
  %i.bfa = getelementptr inbounds nuw i8, ptr %i.bez, i64 8 ; 2 uses
  %i.bfb = load i32, ptr %i.bfa, align 8, !tbaa !12, !noalias !455
  %i.bfc = add nsw i32 %i.bfb, 1
  store i32 %i.bfc, ptr %i.bfa, align 8, !tbaa !12, !noalias !455
  br label %_ZNK5Ipopt9IpoptData4currEv.exit977

_ZNK5Ipopt9IpoptData4currEv.exit977:              ; preds = %bb.io, %bb.in
  %i.bfd = getelementptr inbounds nuw i8, ptr %i.bez, i64 208
  %i.bfe = load ptr, ptr %i.bfd, align 8, !tbaa !344, !noalias !456
  %i.bff = getelementptr inbounds nuw i8, ptr %i.bfe, i64 8
  %i.bfg = load ptr, ptr %i.bff, align 8, !tbaa !348, !noalias !456 ; 2 uses
  %.not.i.i.i978 = icmp eq ptr %i.bfg, null
  br i1 %.not.i.i.i978, label %_ZNK5Ipopt14CompoundVector10IsCompNullEi.exit.i.i982, label %_ZNK5Ipopt14CompoundVector9ConstCompEi.exit.thread.i.i.i979

_ZNK5Ipopt14CompoundVector10IsCompNullEi.exit.i.i982: ; preds = %_ZNK5Ipopt9IpoptData4currEv.exit977
  %i.bfh = getelementptr inbounds nuw i8, ptr %i.bez, i64 232
  %i.bfi = load ptr, ptr %i.bfh, align 8, !tbaa !351, !noalias !456
  %i.bfj = getelementptr inbounds nuw i8, ptr %i.bfi, i64 8
  %i.bfk = load ptr, ptr %i.bfj, align 8, !tbaa !353, !noalias !456, !nonnull !360, !noundef !360
  br label %_ZNK5Ipopt14CompoundVector9ConstCompEi.exit.thread.i.i.i979

_ZNK5Ipopt14CompoundVector9ConstCompEi.exit.thread.i.i.i979: ; preds = %_ZNK5Ipopt14CompoundVector10IsCompNullEi.exit.i.i982, %_ZNK5Ipopt9IpoptData4currEv.exit977
  %.0.i3.i.i.i980 = phi ptr [ %i.bfg, %_ZNK5Ipopt9IpoptData4currEv.exit977 ], [ %i.bfk, %_ZNK5Ipopt14CompoundVector10IsCompNullEi.exit.i.i982 ] ; 6 uses
  %i.bfl = getelementptr inbounds nuw i8, ptr %.0.i3.i.i.i980, i64 8 ; 6 uses
  %i.bfm = load i32, ptr %i.bfl, align 8, !tbaa !12, !noalias !457
  %i.bfn = add nsw i32 %i.bfm, 1
  store i32 %i.bfn, ptr %i.bfl, align 8, !tbaa !12, !noalias !457
  %i.bfo = load ptr, ptr %i.al, align 8, !tbaa !30
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #9
  %i.bfp = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 6 uses
  store ptr %i.bfp, ptr %6, align 8, !tbaa !33
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(6) %i.bfp, ptr noundef nonnull align 1 dereferenceable(6) @.str.36, i64 6, i1 false)
  %i.bfq = getelementptr inbounds nuw i8, ptr %6, i64 8
  store i64 6, ptr %i.bfq, align 8, !tbaa !39
  %i.bfr = getelementptr inbounds nuw i8, ptr %6, i64 22
  store i8 0, ptr %i.bfr, align 2, !tbaa !38
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #9
  %i.bfs = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 6 uses
  store ptr %i.bfs, ptr %7, align 8, !tbaa !33
  %i.bft = getelementptr inbounds nuw i8, ptr %7, i64 8
  store i64 0, ptr %i.bft, align 8, !tbaa !39
  store i8 0, ptr %i.bfs, align 8, !tbaa !38
  invoke void @_ZNK5Ipopt6Vector5PrintERKNS_10JournalistENS_13EJournalLevelENS_16EJournalCategoryERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiSD_(ptr noundef nonnull align 8 dereferenceable(205) %.0.i3.i.i.i980, ptr noundef nonnull align 8 dereferenceable(40) %i.bfo, i32 noundef 8, i32 noundef 2, ptr noundef nonnull align 8 dereferenceable(32) %6, i32 noundef 0, ptr noundef nonnull align 8 dereferenceable(32) %7)
          to label %bb.ip unwind label %bb.kp

bb.ip:                                            ; preds = %_ZNK5Ipopt14CompoundVector9ConstCompEi.exit.thread.i.i.i979
  %i.bfu = load ptr, ptr %7, align 8, !tbaa !37   ; 2 uses
  %i.bfv = icmp eq ptr %i.bfu, %i.bfs
  br i1 %i.bfv, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit995, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i993

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i993: ; preds = %bb.ip
  %i.bfw = load i64, ptr %i.bfs, align 8, !tbaa !38
  %i.bfx = add i64 %i.bfw, 1
  call void @_ZdlPvm(ptr noundef %i.bfu, i64 noundef %i.bfx) #10
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit995

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit995: ; preds = %bb.ip, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i993
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #9
  %i.bfy = load ptr, ptr %6, align 8, !tbaa !37   ; 2 uses
  %i.bfz = icmp eq ptr %i.bfy, %i.bfp
  br i1 %i.bfz, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i997, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i996

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i996: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit995
  %i.bga = load i64, ptr %i.bfp, align 8, !tbaa !38
  %i.bgb = add i64 %i.bga, 1
  call void @_ZdlPvm(ptr noundef %i.bfy, i64 noundef %i.bgb) #10
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i997

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i997: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit995, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i996
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #9
  %i.bgc = load i32, ptr %i.bfl, align 8, !tbaa !12
  %i.bgd = add nsw i32 %i.bgc, -1                 ; 2 uses
  store i32 %i.bgd, ptr %i.bfl, align 8, !tbaa !12
  %i.bge = icmp eq i32 %i.bgd, 0
  br i1 %i.bge, label %bb.iq, label %_ZN5Ipopt8SmartPtrIKNS_6VectorEED2Ev.exit1000

bb.iq:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i997
  %i.bgf = load ptr, ptr %.0.i3.i.i.i980, align 8, !tbaa !14
  %i.bgg = getelementptr inbounds nuw i8, ptr %i.bgf, i64 8
  %i.bgh = load ptr, ptr %i.bgg, align 8
  call void %i.bgh(ptr noundef nonnull align 8 dereferenceable(205) %.0.i3.i.i.i980) #9, !inline_history !76
  br label %_ZN5Ipopt8SmartPtrIKNS_6VectorEED2Ev.exit1000

_ZN5Ipopt8SmartPtrIKNS_6VectorEED2Ev.exit1000:    ; preds = %bb.iq, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i997
  %i.bgi = getelementptr inbounds nuw i8, ptr %i.bez, i64 8 ; 2 uses
  %i.bgj = load i32, ptr %i.bgi, align 8, !tbaa !12
  %i.bgk = add nsw i32 %i.bgj, -1                 ; 2 uses
  store i32 %i.bgk, ptr %i.bgi, align 8, !tbaa !12
  %i.bgl = icmp eq i32 %i.bgk, 0
  br i1 %i.bgl, label %bb.ir, label %bb.is

bb.ir:                                            ; preds = %_ZN5Ipopt8SmartPtrIKNS_6VectorEED2Ev.exit1000
  %i.bgm = load ptr, ptr %i.bez, align 8, !tbaa !14
  %i.bgn = getelementptr inbounds nuw i8, ptr %i.bgm, i64 8
  %i.bgo = load ptr, ptr %i.bgn, align 8
  call void %i.bgo(ptr noundef nonnull align 8 dereferenceable(280) %i.bez) #9, !inline_history !77
  br label %bb.is

bb.is:                                            ; preds = %bb.ir, %_ZN5Ipopt8SmartPtrIKNS_6VectorEED2Ev.exit1000
  %i.bgp = load ptr, ptr %i.v, align 8, !tbaa !24
  %i.bgq = getelementptr inbounds nuw i8, ptr %i.bgp, i64 16
  %i.bgr = load ptr, ptr %i.bgq, align 8, !tbaa !339, !noalias !458 ; 10 uses
  %.not.i.i.i.i1003 = icmp eq ptr %i.bgr, null
  br i1 %.not.i.i.i.i1003, label %_ZNK5Ipopt9IpoptData4currEv.exit1004, label %bb.it

bb.it:                                            ; preds = %bb.is
  %i.bgs = getelementptr inbounds nuw i8, ptr %i.bgr, i64 8 ; 2 uses
  %i.bgt = load i32, ptr %i.bgs, align 8, !tbaa !12, !noalias !458
  %i.bgu = add nsw i32 %i.bgt, 1
  store i32 %i.bgu, ptr %i.bgs, align 8, !tbaa !12, !noalias !458
  br label %_ZNK5Ipopt9IpoptData4currEv.exit1004

_ZNK5Ipopt9IpoptData4currEv.exit1004:             ; preds = %bb.it, %bb.is
  %i.bgv = getelementptr inbounds nuw i8, ptr %i.bgr, i64 208
  %i.bgw = load ptr, ptr %i.bgv, align 8, !tbaa !344, !noalias !459
  %i.bgx = getelementptr inbounds nuw i8, ptr %i.bgw, i64 16
  %i.bgy = load ptr, ptr %i.bgx, align 8, !tbaa !348, !noalias !459 ; 2 uses
  %.not.i.i.i1005 = icmp eq ptr %i.bgy, null
  br i1 %.not.i.i.i1005, label %_ZNK5Ipopt14CompoundVector10IsCompNullEi.exit.i.i1009, label %_ZNK5Ipopt14CompoundVector9ConstCompEi.exit.thread.i.i.i1006

_ZNK5Ipopt14CompoundVector10IsCompNullEi.exit.i.i1009: ; preds = %_ZNK5Ipopt9IpoptData4currEv.exit1004
  %i.bgz = getelementptr inbounds nuw i8, ptr %i.bgr, i64 232
  %i.bha = load ptr, ptr %i.bgz, align 8, !tbaa !351, !noalias !459
  %i.bhb = getelementptr inbounds nuw i8, ptr %i.bha, i64 16
  %i.bhc = load ptr, ptr %i.bhb, align 8, !tbaa !353, !noalias !459, !nonnull !360, !noundef !360
  br label %_ZNK5Ipopt14CompoundVector9ConstCompEi.exit.thread.i.i.i1006

_ZNK5Ipopt14CompoundVector9ConstCompEi.exit.thread.i.i.i1006: ; preds = %_ZNK5Ipopt14CompoundVector10IsCompNullEi.exit.i.i1009, %_ZNK5Ipopt9IpoptData4currEv.exit1004
  %.0.i3.i.i.i1007 = phi ptr [ %i.bgy, %_ZNK5Ipopt9IpoptData4currEv.exit1004 ], [ %i.bhc, %_ZNK5Ipopt14CompoundVector10IsCompNullEi.exit.i.i1009 ] ; 6 uses
  %i.bhd = getelementptr inbounds nuw i8, ptr %.0.i3.i.i.i1007, i64 8 ; 6 uses
  %i.bhe = load i32, ptr %i.bhd, align 8, !tbaa !12, !noalias !460
  %i.bhf = add nsw i32 %i.bhe, 1
  store i32 %i.bhf, ptr %i.bhd, align 8, !tbaa !12, !noalias !460
  %i.bhg = load ptr, ptr %i.al, align 8, !tbaa !30
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #9
  %i.bhh = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 6 uses
  store ptr %i.bhh, ptr %8, align 8, !tbaa !33
  store i64 7160575383391335779, ptr %i.bhh, align 8
  %i.bhi = getelementptr inbounds nuw i8, ptr %8, i64 8
  store i64 8, ptr %i.bhi, align 8, !tbaa !39
  %i.bhj = getelementptr inbounds nuw i8, ptr %8, i64 24
  store i8 0, ptr %i.bhj, align 8, !tbaa !38
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #9
  %i.bhk = getelementptr inbounds nuw i8, ptr %9, i64 16 ; 6 uses
  store ptr %i.bhk, ptr %9, align 8, !tbaa !33
  %i.bhl = getelementptr inbounds nuw i8, ptr %9, i64 8
  store i64 0, ptr %i.bhl, align 8, !tbaa !39
  store i8 0, ptr %i.bhk, align 8, !tbaa !38
  invoke void @_ZNK5Ipopt6Vector5PrintERKNS_10JournalistENS_13EJournalLevelENS_16EJournalCategoryERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiSD_(ptr noundef nonnull align 8 dereferenceable(205) %.0.i3.i.i.i1007, ptr noundef nonnull align 8 dereferenceable(40) %i.bhg, i32 noundef 8, i32 noundef 2, ptr noundef nonnull align 8 dereferenceable(32) %8, i32 noundef 0, ptr noundef nonnull align 8 dereferenceable(32) %9)
          to label %bb.iu unwind label %bb.ks

bb.iu:                                            ; preds = %_ZNK5Ipopt14CompoundVector9ConstCompEi.exit.thread.i.i.i1006
  %i.bhm = load ptr, ptr %9, align 8, !tbaa !37   ; 2 uses
  %i.bhn = icmp eq ptr %i.bhm, %i.bhk
  br i1 %i.bhn, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1022, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1020

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1020: ; preds = %bb.iu
  %i.bho = load i64, ptr %i.bhk, align 8, !tbaa !38
  %i.bhp = add i64 %i.bho, 1
  call void @_ZdlPvm(ptr noundef %i.bhm, i64 noundef %i.bhp) #10
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1022

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1022: ; preds = %bb.iu, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1020
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #9
  %i.bhq = load ptr, ptr %8, align 8, !tbaa !37   ; 2 uses
  %i.bhr = icmp eq ptr %i.bhq, %i.bhh
  br i1 %i.bhr, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i1024, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1023

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1023: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1022
  %i.bhs = load i64, ptr %i.bhh, align 8, !tbaa !38
  %i.bht = add i64 %i.bhs, 1
  call void @_ZdlPvm(ptr noundef %i.bhq, i64 noundef %i.bht) #10
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i1024

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i1024: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1022, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1023
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #9
  %i.bhu = load i32, ptr %i.bhd, align 8, !tbaa !12
  %i.bhv = add nsw i32 %i.bhu, -1                 ; 2 uses
  store i32 %i.bhv, ptr %i.bhd, align 8, !tbaa !12
  %i.bhw = icmp eq i32 %i.bhv, 0
  br i1 %i.bhw, label %bb.iv, label %_ZN5Ipopt8SmartPtrIKNS_6VectorEED2Ev.exit1027

bb.iv:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i1024
  %i.bhx = load ptr, ptr %.0.i3.i.i.i1007, align 8, !tbaa !14
  %i.bhy = getelementptr inbounds nuw i8, ptr %i.bhx, i64 8
  %i.bhz = load ptr, ptr %i.bhy, align 8
  call void %i.bhz(ptr noundef nonnull align 8 dereferenceable(205) %.0.i3.i.i.i1007) #9, !inline_history !76
  br label %_ZN5Ipopt8SmartPtrIKNS_6VectorEED2Ev.exit1027

_ZN5Ipopt8SmartPtrIKNS_6VectorEED2Ev.exit1027:    ; preds = %bb.iv, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i1024
  %i.bia = getelementptr inbounds nuw i8, ptr %i.bgr, i64 8 ; 2 uses
  %i.bib = load i32, ptr %i.bia, align 8, !tbaa !12
  %i.bic = add nsw i32 %i.bib, -1                 ; 2 uses
  store i32 %i.bic, ptr %i.bia, align 8, !tbaa !12
  %i.bid = icmp eq i32 %i.bic, 0
  br i1 %i.bid, label %bb.iw, label %bb.ix

bb.iw:                                            ; preds = %_ZN5Ipopt8SmartPtrIKNS_6VectorEED2Ev.exit1027
  %i.bie = load ptr, ptr %i.bgr, align 8, !tbaa !14
  %i.bif = getelementptr inbounds nuw i8, ptr %i.bie, i64 8
  %i.big = load ptr, ptr %i.bif, align 8
  call void %i.big(ptr noundef nonnull align 8 dereferenceable(280) %i.bgr) #9, !inline_history !77
  br label %bb.ix

bb.ix:                                            ; preds = %bb.iw, %_ZN5Ipopt8SmartPtrIKNS_6VectorEED2Ev.exit1027
  %i.bih = load ptr, ptr %i.v, align 8, !tbaa !24
  %i.bii = getelementptr inbounds nuw i8, ptr %i.bih, i64 16
  %i.bij = load ptr, ptr %i.bii, align 8, !tbaa !339, !noalias !461 ; 10 uses
  %.not.i.i.i.i1030 = icmp eq ptr %i.bij, null
  br i1 %.not.i.i.i.i1030, label %_ZNK5Ipopt9IpoptData4currEv.exit1031, label %bb.iy

bb.iy:                                            ; preds = %bb.ix
  %i.bik = getelementptr inbounds nuw i8, ptr %i.bij, i64 8 ; 2 uses
  %i.bil = load i32, ptr %i.bik, align 8, !tbaa !12, !noalias !461
  %i.bim = add nsw i32 %i.bil, 1
  store i32 %i.bim, ptr %i.bik, align 8, !tbaa !12, !noalias !461
  br label %_ZNK5Ipopt9IpoptData4currEv.exit1031

_ZNK5Ipopt9IpoptData4currEv.exit1031:             ; preds = %bb.iy, %bb.ix
  %i.bin = getelementptr inbounds nuw i8, ptr %i.bij, i64 208
  %i.bio = load ptr, ptr %i.bin, align 8, !tbaa !344, !noalias !462
  %i.bip = getelementptr inbounds nuw i8, ptr %i.bio, i64 24
  %i.biq = load ptr, ptr %i.bip, align 8, !tbaa !348, !noalias !462 ; 2 uses
  %.not.i.i.i1032 = icmp eq ptr %i.biq, null
  br i1 %.not.i.i.i1032, label %_ZNK5Ipopt14CompoundVector10IsCompNullEi.exit.i.i1036, label %_ZNK5Ipopt14CompoundVector9ConstCompEi.exit.thread.i.i.i1033

_ZNK5Ipopt14CompoundVector10IsCompNullEi.exit.i.i1036: ; preds = %_ZNK5Ipopt9IpoptData4currEv.exit1031
  %i.bir = getelementptr inbounds nuw i8, ptr %i.bij, i64 232
  %i.bis = load ptr, ptr %i.bir, align 8, !tbaa !351, !noalias !462
  %i.bit = getelementptr inbounds nuw i8, ptr %i.bis, i64 24
  %i.biu = load ptr, ptr %i.bit, align 8, !tbaa !353, !noalias !462, !nonnull !360, !noundef !360
  br label %_ZNK5Ipopt14CompoundVector9ConstCompEi.exit.thread.i.i.i1033

_ZNK5Ipopt14CompoundVector9ConstCompEi.exit.thread.i.i.i1033: ; preds = %_ZNK5Ipopt14CompoundVector10IsCompNullEi.exit.i.i1036, %_ZNK5Ipopt9IpoptData4currEv.exit1031
  %.0.i3.i.i.i1034 = phi ptr [ %i.biq, %_ZNK5Ipopt9IpoptData4currEv.exit1031 ], [ %i.biu, %_ZNK5Ipopt14CompoundVector10IsCompNullEi.exit.i.i1036 ] ; 6 uses
  %i.biv = getelementptr inbounds nuw i8, ptr %.0.i3.i.i.i1034, i64 8 ; 6 uses
  %i.biw = load i32, ptr %i.biv, align 8, !tbaa !12, !noalias !463
  %i.bix = add nsw i32 %i.biw, 1
  store i32 %i.bix, ptr %i.biv, align 8, !tbaa !12, !noalias !463
  %i.biy = load ptr, ptr %i.al, align 8, !tbaa !30
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #9
  %i.biz = getelementptr inbounds nuw i8, ptr %10, i64 16 ; 6 uses
  store ptr %i.biz, ptr %10, align 8, !tbaa !33
  store i64 7232632977429263715, ptr %i.biz, align 8
  %i.bja = getelementptr inbounds nuw i8, ptr %10, i64 8
  store i64 8, ptr %i.bja, align 8, !tbaa !39
  %i.bjb = getelementptr inbounds nuw i8, ptr %10, i64 24
  store i8 0, ptr %i.bjb, align 8, !tbaa !38
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #9
  %i.bjc = getelementptr inbounds nuw i8, ptr %11, i64 16 ; 6 uses
  store ptr %i.bjc, ptr %11, align 8, !tbaa !33
  %i.bjd = getelementptr inbounds nuw i8, ptr %11, i64 8
  store i64 0, ptr %i.bjd, align 8, !tbaa !39
  store i8 0, ptr %i.bjc, align 8, !tbaa !38
  invoke void @_ZNK5Ipopt6Vector5PrintERKNS_10JournalistENS_13EJournalLevelENS_16EJournalCategoryERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiSD_(ptr noundef nonnull align 8 dereferenceable(205) %.0.i3.i.i.i1034, ptr noundef nonnull align 8 dereferenceable(40) %i.biy, i32 noundef 8, i32 noundef 2, ptr noundef nonnull align 8 dereferenceable(32) %10, i32 noundef 0, ptr noundef nonnull align 8 dereferenceable(32) %11)
          to label %bb.iz unwind label %bb.kv

bb.iz:                                            ; preds = %_ZNK5Ipopt14CompoundVector9ConstCompEi.exit.thread.i.i.i1033
  %i.bje = load ptr, ptr %11, align 8, !tbaa !37  ; 2 uses
  %i.bjf = icmp eq ptr %i.bje, %i.bjc
  br i1 %i.bjf, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1049, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1047

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1047: ; preds = %bb.iz
  %i.bjg = load i64, ptr %i.bjc, align 8, !tbaa !38
  %i.bjh = add i64 %i.bjg, 1
  call void @_ZdlPvm(ptr noundef %i.bje, i64 noundef %i.bjh) #10
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1049

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1049: ; preds = %bb.iz, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1047
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #9
  %i.bji = load ptr, ptr %10, align 8, !tbaa !37  ; 2 uses
  %i.bjj = icmp eq ptr %i.bji, %i.biz
  br i1 %i.bjj, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i1051, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1050

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1050: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1049
  %i.bjk = load i64, ptr %i.biz, align 8, !tbaa !38
  %i.bjl = add i64 %i.bjk, 1
  call void @_ZdlPvm(ptr noundef %i.bji, i64 noundef %i.bjl) #10
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i1051

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i1051: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1049, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1050
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #9
  %i.bjm = load i32, ptr %i.biv, align 8, !tbaa !12
  %i.bjn = add nsw i32 %i.bjm, -1                 ; 2 uses
  store i32 %i.bjn, ptr %i.biv, align 8, !tbaa !12
  %i.bjo = icmp eq i32 %i.bjn, 0
  br i1 %i.bjo, label %bb.ja, label %_ZN5Ipopt8SmartPtrIKNS_6VectorEED2Ev.exit1054

bb.ja:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i1051
  %i.bjp = load ptr, ptr %.0.i3.i.i.i1034, align 8, !tbaa !14
  %i.bjq = getelementptr inbounds nuw i8, ptr %i.bjp, i64 8
  %i.bjr = load ptr, ptr %i.bjq, align 8
  call void %i.bjr(ptr noundef nonnull align 8 dereferenceable(205) %.0.i3.i.i.i1034) #9, !inline_history !76
  br label %_ZN5Ipopt8SmartPtrIKNS_6VectorEED2Ev.exit1054

_ZN5Ipopt8SmartPtrIKNS_6VectorEED2Ev.exit1054:    ; preds = %bb.ja, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i1051
  %i.bjs = getelementptr inbounds nuw i8, ptr %i.bij, i64 8 ; 2 uses
  %i.bjt = load i32, ptr %i.bjs, align 8, !tbaa !12
  %i.bju = add nsw i32 %i.bjt, -1                 ; 2 uses
  store i32 %i.bju, ptr %i.bjs, align 8, !tbaa !12
  %i.bjv = icmp eq i32 %i.bju, 0
  br i1 %i.bjv, label %bb.jb, label %bb.jc

bb.jb:                                            ; preds = %_ZN5Ipopt8SmartPtrIKNS_6VectorEED2Ev.exit1054
  %i.bjw = load ptr, ptr %i.bij, align 8, !tbaa !14
  %i.bjx = getelementptr inbounds nuw i8, ptr %i.bjw, i64 8
  %i.bjy = load ptr, ptr %i.bjx, align 8
  call void %i.bjy(ptr noundef nonnull align 8 dereferenceable(280) %i.bij) #9, !inline_history !77
  br label %bb.jc

bb.jc:                                            ; preds = %bb.jb, %_ZN5Ipopt8SmartPtrIKNS_6VectorEED2Ev.exit1054
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #9
  %i.bjz = load ptr, ptr %i.bu, align 8, !tbaa !21
  invoke void @_ZN5Ipopt25IpoptCalculatedQuantities14curr_slack_x_LEv(ptr dead_on_unwind nonnull writable sret(%"class.Ipopt::SmartPtr.29") align 8 %12, ptr noundef nonnull align 8 dereferenceable(2185) %i.bjz)
          to label %._crit_edge.i.i1057 unwind label %bb.ky

._crit_edge.i.i1057:                              ; preds = %bb.jc
  %i.bka = load ptr, ptr %12, align 8, !tbaa !353
  %i.bkb = load ptr, ptr %i.al, align 8, !tbaa !30
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #9
  %i.bkc = getelementptr inbounds nuw i8, ptr %13, i64 16 ; 6 uses
  store ptr %i.bkc, ptr %13, align 8, !tbaa !33
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(14) %i.bkc, ptr noundef nonnull align 1 dereferenceable(14) @.str.39, i64 14, i1 false)
  %i.bkd = getelementptr inbounds nuw i8, ptr %13, i64 8
  store i64 14, ptr %i.bkd, align 8, !tbaa !39
  %i.bke = getelementptr inbounds nuw i8, ptr %13, i64 30
  store i8 0, ptr %i.bke, align 2, !tbaa !38
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #9
  %i.bkf = getelementptr inbounds nuw i8, ptr %14, i64 16 ; 6 uses
  store ptr %i.bkf, ptr %14, align 8, !tbaa !33
  %i.bkg = getelementptr inbounds nuw i8, ptr %14, i64 8
  store i64 0, ptr %i.bkg, align 8, !tbaa !39
  store i8 0, ptr %i.bkf, align 8, !tbaa !38
  invoke void @_ZNK5Ipopt6Vector5PrintERKNS_10JournalistENS_13EJournalLevelENS_16EJournalCategoryERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiSD_(ptr noundef nonnull align 8 dereferenceable(205) %i.bka, ptr noundef nonnull align 8 dereferenceable(40) %i.bkb, i32 noundef 8, i32 noundef 2, ptr noundef nonnull align 8 dereferenceable(32) %13, i32 noundef 0, ptr noundef nonnull align 8 dereferenceable(32) %14)
          to label %bb.jd unwind label %bb.kz

bb.jd:                                            ; preds = %._crit_edge.i.i1057
  %i.bkh = load ptr, ptr %14, align 8, !tbaa !37  ; 2 uses
  %i.bki = icmp eq ptr %i.bkh, %i.bkf
  br i1 %i.bki, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1067, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1065

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1065: ; preds = %bb.jd
  %i.bkj = load i64, ptr %i.bkf, align 8, !tbaa !38
  %i.bkk = add i64 %i.bkj, 1
  call void @_ZdlPvm(ptr noundef %i.bkh, i64 noundef %i.bkk) #10
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1067

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1067: ; preds = %bb.jd, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1065
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #9
  %i.bkl = load ptr, ptr %13, align 8, !tbaa !37  ; 2 uses
  %i.bkm = icmp eq ptr %i.bkl, %i.bkc
  br i1 %i.bkm, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1070, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1068

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1068: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1067
  %i.bkn = load i64, ptr %i.bkc, align 8, !tbaa !38
  %i.bko = add i64 %i.bkn, 1
  call void @_ZdlPvm(ptr noundef %i.bkl, i64 noundef %i.bko) #10
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1070

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1070: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1067, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1068
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #9
  %i.bkp = load ptr, ptr %12, align 8, !tbaa !353 ; 4 uses
  %.not.i.i1071 = icmp eq ptr %i.bkp, null
  br i1 %.not.i.i1071, label %bb.jg, label %bb.je

bb.je:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1070
  %i.bkq = getelementptr inbounds nuw i8, ptr %i.bkp, i64 8 ; 2 uses
  %i.bkr = load i32, ptr %i.bkq, align 8, !tbaa !12
  %i.bks = add nsw i32 %i.bkr, -1                 ; 2 uses
  store i32 %i.bks, ptr %i.bkq, align 8, !tbaa !12
  %i.bkt = icmp eq i32 %i.bks, 0
  br i1 %i.bkt, label %bb.jf, label %bb.jg

bb.jf:                                            ; preds = %bb.je
  %i.bku = load ptr, ptr %i.bkp, align 8, !tbaa !14
  %i.bkv = getelementptr inbounds nuw i8, ptr %i.bku, i64 8
  %i.bkw = load ptr, ptr %i.bkv, align 8
  call void %i.bkw(ptr noundef nonnull align 8 dereferenceable(205) %i.bkp) #9, !inline_history !76
  br label %bb.jg

bb.jg:                                            ; preds = %bb.jf, %bb.je, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1070
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #9
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #9
  %i.bkx = load ptr, ptr %i.bu, align 8, !tbaa !21
  invoke void @_ZN5Ipopt25IpoptCalculatedQuantities14curr_slack_x_UEv(ptr dead_on_unwind nonnull writable sret(%"class.Ipopt::SmartPtr.29") align 8 %15, ptr noundef nonnull align 8 dereferenceable(2185) %i.bkx)
          to label %._crit_edge.i.i1073 unwind label %bb.lc

._crit_edge.i.i1073:                              ; preds = %bb.jg
  %i.bky = load ptr, ptr %15, align 8, !tbaa !353
  %i.bkz = load ptr, ptr %i.al, align 8, !tbaa !30
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #9
  %i.bla = getelementptr inbounds nuw i8, ptr %16, i64 16 ; 6 uses
  store ptr %i.bla, ptr %16, align 8, !tbaa !33
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(14) %i.bla, ptr noundef nonnull align 1 dereferenceable(14) @.str.40, i64 14, i1 false)
  %i.blb = getelementptr inbounds nuw i8, ptr %16, i64 8
  store i64 14, ptr %i.blb, align 8, !tbaa !39
  %i.blc = getelementptr inbounds nuw i8, ptr %16, i64 30
  store i8 0, ptr %i.blc, align 2, !tbaa !38
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #9
  %i.bld = getelementptr inbounds nuw i8, ptr %17, i64 16 ; 6 uses
  store ptr %i.bld, ptr %17, align 8, !tbaa !33
  %i.ble = getelementptr inbounds nuw i8, ptr %17, i64 8
  store i64 0, ptr %i.ble, align 8, !tbaa !39
  store i8 0, ptr %i.bld, align 8, !tbaa !38
  invoke void @_ZNK5Ipopt6Vector5PrintERKNS_10JournalistENS_13EJournalLevelENS_16EJournalCategoryERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiSD_(ptr noundef nonnull align 8 dereferenceable(205) %i.bky, ptr noundef nonnull align 8 dereferenceable(40) %i.bkz, i32 noundef 8, i32 noundef 2, ptr noundef nonnull align 8 dereferenceable(32) %16, i32 noundef 0, ptr noundef nonnull align 8 dereferenceable(32) %17)
          to label %bb.jh unwind label %bb.ld

bb.jh:                                            ; preds = %._crit_edge.i.i1073
  %i.blf = load ptr, ptr %17, align 8, !tbaa !37  ; 2 uses
  %i.blg = icmp eq ptr %i.blf, %i.bld
  br i1 %i.blg, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1083, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1081

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1081: ; preds = %bb.jh
  %i.blh = load i64, ptr %i.bld, align 8, !tbaa !38
  %i.bli = add i64 %i.blh, 1
  call void @_ZdlPvm(ptr noundef %i.blf, i64 noundef %i.bli) #10
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1083

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1083: ; preds = %bb.jh, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1081
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #9
  %i.blj = load ptr, ptr %16, align 8, !tbaa !37  ; 2 uses
  %i.blk = icmp eq ptr %i.blj, %i.bla
  br i1 %i.blk, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1086, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1084

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1084: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1083
  %i.bll = load i64, ptr %i.bla, align 8, !tbaa !38
  %i.blm = add i64 %i.bll, 1
  call void @_ZdlPvm(ptr noundef %i.blj, i64 noundef %i.blm) #10
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1086

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1086: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1083, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1084
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #9
  %i.bln = load ptr, ptr %15, align 8, !tbaa !353 ; 4 uses
  %.not.i.i1087 = icmp eq ptr %i.bln, null
  br i1 %.not.i.i1087, label %bb.jk, label %bb.ji

bb.ji:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1086
  %i.blo = getelementptr inbounds nuw i8, ptr %i.bln, i64 8 ; 2 uses
  %i.blp = load i32, ptr %i.blo, align 8, !tbaa !12
  %i.blq = add nsw i32 %i.blp, -1                 ; 2 uses
  store i32 %i.blq, ptr %i.blo, align 8, !tbaa !12
  %i.blr = icmp eq i32 %i.blq, 0
  br i1 %i.blr, label %bb.jj, label %bb.jk

bb.jj:                                            ; preds = %bb.ji
  %i.bls = load ptr, ptr %i.bln, align 8, !tbaa !14
  %i.blt = getelementptr inbounds nuw i8, ptr %i.bls, i64 8
  %i.blu = load ptr, ptr %i.blt, align 8
  call void %i.blu(ptr noundef nonnull align 8 dereferenceable(205) %i.bln) #9, !inline_history !76
  br label %bb.jk

bb.jk:                                            ; preds = %bb.jj, %bb.ji, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1086
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #9
  %i.blv = load ptr, ptr %i.v, align 8, !tbaa !24
  %i.blw = getelementptr inbounds nuw i8, ptr %i.blv, i64 16
  %i.blx = load ptr, ptr %i.blw, align 8, !tbaa !339, !noalias !464 ; 10 uses
  %.not.i.i.i.i1089 = icmp eq ptr %i.blx, null
  br i1 %.not.i.i.i.i1089, label %_ZNK5Ipopt9IpoptData4currEv.exit1090, label %bb.jl

bb.jl:                                            ; preds = %bb.jk
  %i.bly = getelementptr inbounds nuw i8, ptr %i.blx, i64 8 ; 2 uses
  %i.blz = load i32, ptr %i.bly, align 8, !tbaa !12, !noalias !464
  %i.bma = add nsw i32 %i.blz, 1
  store i32 %i.bma, ptr %i.bly, align 8, !tbaa !12, !noalias !464
  br label %_ZNK5Ipopt9IpoptData4currEv.exit1090

_ZNK5Ipopt9IpoptData4currEv.exit1090:             ; preds = %bb.jl, %bb.jk
  %i.bmb = getelementptr inbounds nuw i8, ptr %i.blx, i64 208
  %i.bmc = load ptr, ptr %i.bmb, align 8, !tbaa !344, !noalias !465
  %i.bmd = getelementptr inbounds nuw i8, ptr %i.bmc, i64 32
  %i.bme = load ptr, ptr %i.bmd, align 8, !tbaa !348, !noalias !465 ; 2 uses
  %.not.i.i.i1091 = icmp eq ptr %i.bme, null
  br i1 %.not.i.i.i1091, label %_ZNK5Ipopt14CompoundVector10IsCompNullEi.exit.i.i1095, label %_ZNK5Ipopt14CompoundVector9ConstCompEi.exit.thread.i.i.i1092

_ZNK5Ipopt14CompoundVector10IsCompNullEi.exit.i.i1095: ; preds = %_ZNK5Ipopt9IpoptData4currEv.exit1090
  %i.bmf = getelementptr inbounds nuw i8, ptr %i.blx, i64 232
  %i.bmg = load ptr, ptr %i.bmf, align 8, !tbaa !351, !noalias !465
  %i.bmh = getelementptr inbounds nuw i8, ptr %i.bmg, i64 32
  %i.bmi = load ptr, ptr %i.bmh, align 8, !tbaa !353, !noalias !465, !nonnull !360, !noundef !360
  br label %_ZNK5Ipopt14CompoundVector9ConstCompEi.exit.thread.i.i.i1092

_ZNK5Ipopt14CompoundVector9ConstCompEi.exit.thread.i.i.i1092: ; preds = %_ZNK5Ipopt14CompoundVector10IsCompNullEi.exit.i.i1095, %_ZNK5Ipopt9IpoptData4currEv.exit1090
  %.0.i3.i.i.i1093 = phi ptr [ %i.bme, %_ZNK5Ipopt9IpoptData4currEv.exit1090 ], [ %i.bmi, %_ZNK5Ipopt14CompoundVector10IsCompNullEi.exit.i.i1095 ] ; 6 uses
  %i.bmj = getelementptr inbounds nuw i8, ptr %.0.i3.i.i.i1093, i64 8 ; 6 uses
  %i.bmk = load i32, ptr %i.bmj, align 8, !tbaa !12, !noalias !466
  %i.bml = add nsw i32 %i.bmk, 1
  store i32 %i.bml, ptr %i.bmj, align 8, !tbaa !12, !noalias !466
  %i.bmm = load ptr, ptr %i.al, align 8, !tbaa !30
  call void @llvm.lifetime.start.p0(ptr nonnull %18) #9
  %i.bmn = getelementptr inbounds nuw i8, ptr %18, i64 16 ; 6 uses
  store ptr %i.bmn, ptr %18, align 8, !tbaa !33
  store i64 5503251820030621027, ptr %i.bmn, align 8
  %i.bmo = getelementptr inbounds nuw i8, ptr %18, i64 8
  store i64 8, ptr %i.bmo, align 8, !tbaa !39
  %i.bmp = getelementptr inbounds nuw i8, ptr %18, i64 24
  store i8 0, ptr %i.bmp, align 8, !tbaa !38
  call void @llvm.lifetime.start.p0(ptr nonnull %19) #9
  %i.bmq = getelementptr inbounds nuw i8, ptr %19, i64 16 ; 6 uses
  store ptr %i.bmq, ptr %19, align 8, !tbaa !33
  %i.bmr = getelementptr inbounds nuw i8, ptr %19, i64 8
  store i64 0, ptr %i.bmr, align 8, !tbaa !39
  store i8 0, ptr %i.bmq, align 8, !tbaa !38
  invoke void @_ZNK5Ipopt6Vector5PrintERKNS_10JournalistENS_13EJournalLevelENS_16EJournalCategoryERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiSD_(ptr noundef nonnull align 8 dereferenceable(205) %.0.i3.i.i.i1093, ptr noundef nonnull align 8 dereferenceable(40) %i.bmm, i32 noundef 8, i32 noundef 2, ptr noundef nonnull align 8 dereferenceable(32) %18, i32 noundef 0, ptr noundef nonnull align 8 dereferenceable(32) %19)
          to label %bb.jm unwind label %bb.lg

bb.jm:                                            ; preds = %_ZNK5Ipopt14CompoundVector9ConstCompEi.exit.thread.i.i.i1092
  %i.bms = load ptr, ptr %19, align 8, !tbaa !37  ; 2 uses
  %i.bmt = icmp eq ptr %i.bms, %i.bmq
  br i1 %i.bmt, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1108, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1106

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1106: ; preds = %bb.jm
  %i.bmu = load i64, ptr %i.bmq, align 8, !tbaa !38
  %i.bmv = add i64 %i.bmu, 1
  call void @_ZdlPvm(ptr noundef %i.bms, i64 noundef %i.bmv) #10
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1108

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1108: ; preds = %bb.jm, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1106
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #9
  %i.bmw = load ptr, ptr %18, align 8, !tbaa !37  ; 2 uses
  %i.bmx = icmp eq ptr %i.bmw, %i.bmn
  br i1 %i.bmx, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i1110, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1109

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1109: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1108
  %i.bmy = load i64, ptr %i.bmn, align 8, !tbaa !38
  %i.bmz = add i64 %i.bmy, 1
  call void @_ZdlPvm(ptr noundef %i.bmw, i64 noundef %i.bmz) #10
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i1110

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i1110: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1108, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1109
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #9
  %i.bna = load i32, ptr %i.bmj, align 8, !tbaa !12
  %i.bnb = add nsw i32 %i.bna, -1                 ; 2 uses
  store i32 %i.bnb, ptr %i.bmj, align 8, !tbaa !12
  %i.bnc = icmp eq i32 %i.bnb, 0
  br i1 %i.bnc, label %bb.jn, label %_ZN5Ipopt8SmartPtrIKNS_6VectorEED2Ev.exit1113

bb.jn:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i1110
  %i.bnd = load ptr, ptr %.0.i3.i.i.i1093, align 8, !tbaa !14
  %i.bne = getelementptr inbounds nuw i8, ptr %i.bnd, i64 8
  %i.bnf = load ptr, ptr %i.bne, align 8
  call void %i.bnf(ptr noundef nonnull align 8 dereferenceable(205) %.0.i3.i.i.i1093) #9, !inline_history !76
  br label %_ZN5Ipopt8SmartPtrIKNS_6VectorEED2Ev.exit1113

_ZN5Ipopt8SmartPtrIKNS_6VectorEED2Ev.exit1113:    ; preds = %bb.jn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i1110
  %i.bng = getelementptr inbounds nuw i8, ptr %i.blx, i64 8 ; 2 uses
  %i.bnh = load i32, ptr %i.bng, align 8, !tbaa !12
  %i.bni = add nsw i32 %i.bnh, -1                 ; 2 uses
  store i32 %i.bni, ptr %i.bng, align 8, !tbaa !12
  %i.bnj = icmp eq i32 %i.bni, 0
  br i1 %i.bnj, label %bb.jo, label %bb.jp

bb.jo:                                            ; preds = %_ZN5Ipopt8SmartPtrIKNS_6VectorEED2Ev.exit1113
  %i.bnk = load ptr, ptr %i.blx, align 8, !tbaa !14
  %i.bnl = getelementptr inbounds nuw i8, ptr %i.bnk, i64 8
  %i.bnm = load ptr, ptr %i.bnl, align 8
  call void %i.bnm(ptr noundef nonnull align 8 dereferenceable(280) %i.blx) #9, !inline_history !77
  br label %bb.jp

bb.jp:                                            ; preds = %bb.jo, %_ZN5Ipopt8SmartPtrIKNS_6VectorEED2Ev.exit1113
  %i.bnn = load ptr, ptr %i.v, align 8, !tbaa !24
  %i.bno = getelementptr inbounds nuw i8, ptr %i.bnn, i64 16
  %i.bnp = load ptr, ptr %i.bno, align 8, !tbaa !339, !noalias !467 ; 10 uses
  %.not.i.i.i.i1116 = icmp eq ptr %i.bnp, null
  br i1 %.not.i.i.i.i1116, label %_ZNK5Ipopt9IpoptData4currEv.exit1117, label %bb.jq

bb.jq:                                            ; preds = %bb.jp
  %i.bnq = getelementptr inbounds nuw i8, ptr %i.bnp, i64 8 ; 2 uses
  %i.bnr = load i32, ptr %i.bnq, align 8, !tbaa !12, !noalias !467
  %i.bns = add nsw i32 %i.bnr, 1
  store i32 %i.bns, ptr %i.bnq, align 8, !tbaa !12, !noalias !467
  br label %_ZNK5Ipopt9IpoptData4currEv.exit1117

_ZNK5Ipopt9IpoptData4currEv.exit1117:             ; preds = %bb.jq, %bb.jp
  %i.bnt = getelementptr inbounds nuw i8, ptr %i.bnp, i64 208
  %i.bnu = load ptr, ptr %i.bnt, align 8, !tbaa !344, !noalias !468
  %i.bnv = getelementptr inbounds nuw i8, ptr %i.bnu, i64 40
  %i.bnw = load ptr, ptr %i.bnv, align 8, !tbaa !348, !noalias !468 ; 2 uses
  %.not.i.i.i1118 = icmp eq ptr %i.bnw, null
  br i1 %.not.i.i.i1118, label %_ZNK5Ipopt14CompoundVector10IsCompNullEi.exit.i.i1122, label %_ZNK5Ipopt14CompoundVector9ConstCompEi.exit.thread.i.i.i1119

_ZNK5Ipopt14CompoundVector10IsCompNullEi.exit.i.i1122: ; preds = %_ZNK5Ipopt9IpoptData4currEv.exit1117
  %i.bnx = getelementptr inbounds nuw i8, ptr %i.bnp, i64 232
  %i.bny = load ptr, ptr %i.bnx, align 8, !tbaa !351, !noalias !468
  %i.bnz = getelementptr inbounds nuw i8, ptr %i.bny, i64 40
  %i.boa = load ptr, ptr %i.bnz, align 8, !tbaa !353, !noalias !468, !nonnull !360, !noundef !360
  br label %_ZNK5Ipopt14CompoundVector9ConstCompEi.exit.thread.i.i.i1119

_ZNK5Ipopt14CompoundVector9ConstCompEi.exit.thread.i.i.i1119: ; preds = %_ZNK5Ipopt14CompoundVector10IsCompNullEi.exit.i.i1122, %_ZNK5Ipopt9IpoptData4currEv.exit1117
  %.0.i3.i.i.i1120 = phi ptr [ %i.bnw, %_ZNK5Ipopt9IpoptData4currEv.exit1117 ], [ %i.boa, %_ZNK5Ipopt14CompoundVector10IsCompNullEi.exit.i.i1122 ] ; 6 uses
  %i.bob = getelementptr inbounds nuw i8, ptr %.0.i3.i.i.i1120, i64 8 ; 6 uses
  %i.boc = load i32, ptr %i.bob, align 8, !tbaa !12, !noalias !469
  %i.bod = add nsw i32 %i.boc, 1
  store i32 %i.bod, ptr %i.bob, align 8, !tbaa !12, !noalias !469
  %i.boe = load ptr, ptr %i.al, align 8, !tbaa !30
  call void @llvm.lifetime.start.p0(ptr nonnull %20) #9
  %i.bof = getelementptr inbounds nuw i8, ptr %20, i64 16 ; 6 uses
  store ptr %i.bof, ptr %20, align 8, !tbaa !33
  store i64 6151770166371972451, ptr %i.bof, align 8
  %i.bog = getelementptr inbounds nuw i8, ptr %20, i64 8
  store i64 8, ptr %i.bog, align 8, !tbaa !39
  %i.boh = getelementptr inbounds nuw i8, ptr %20, i64 24
  store i8 0, ptr %i.boh, align 8, !tbaa !38
  call void @llvm.lifetime.start.p0(ptr nonnull %21) #9
  %i.boi = getelementptr inbounds nuw i8, ptr %21, i64 16 ; 6 uses
  store ptr %i.boi, ptr %21, align 8, !tbaa !33
  %i.boj = getelementptr inbounds nuw i8, ptr %21, i64 8
  store i64 0, ptr %i.boj, align 8, !tbaa !39
  store i8 0, ptr %i.boi, align 8, !tbaa !38
  invoke void @_ZNK5Ipopt6Vector5PrintERKNS_10JournalistENS_13EJournalLevelENS_16EJournalCategoryERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiSD_(ptr noundef nonnull align 8 dereferenceable(205) %.0.i3.i.i.i1120, ptr noundef nonnull align 8 dereferenceable(40) %i.boe, i32 noundef 8, i32 noundef 2, ptr noundef nonnull align 8 dereferenceable(32) %20, i32 noundef 0, ptr noundef nonnull align 8 dereferenceable(32) %21)
          to label %bb.jr unwind label %bb.lj

bb.jr:                                            ; preds = %_ZNK5Ipopt14CompoundVector9ConstCompEi.exit.thread.i.i.i1119
  %i.bok = load ptr, ptr %21, align 8, !tbaa !37  ; 2 uses
  %i.bol = icmp eq ptr %i.bok, %i.boi
  br i1 %i.bol, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1135, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1133

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1133: ; preds = %bb.jr
  %i.bom = load i64, ptr %i.boi, align 8, !tbaa !38
  %i.bon = add i64 %i.bom, 1
  call void @_ZdlPvm(ptr noundef %i.bok, i64 noundef %i.bon) #10
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1135

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1135: ; preds = %bb.jr, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1133
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #9
  %i.boo = load ptr, ptr %20, align 8, !tbaa !37  ; 2 uses
  %i.bop = icmp eq ptr %i.boo, %i.bof
  br i1 %i.bop, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i1137, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1136

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1136: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1135
  %i.boq = load i64, ptr %i.bof, align 8, !tbaa !38
  %i.bor = add i64 %i.boq, 1
  call void @_ZdlPvm(ptr noundef %i.boo, i64 noundef %i.bor) #10
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i1137

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i1137: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1135, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1136
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #9
  %i.bos = load i32, ptr %i.bob, align 8, !tbaa !12
  %i.bot = add nsw i32 %i.bos, -1                 ; 2 uses
  store i32 %i.bot, ptr %i.bob, align 8, !tbaa !12
  %i.bou = icmp eq i32 %i.bot, 0
  br i1 %i.bou, label %bb.js, label %_ZN5Ipopt8SmartPtrIKNS_6VectorEED2Ev.exit1140

bb.js:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i1137
  %i.bov = load ptr, ptr %.0.i3.i.i.i1120, align 8, !tbaa !14
  %i.bow = getelementptr inbounds nuw i8, ptr %i.bov, i64 8
  %i.box = load ptr, ptr %i.bow, align 8
  call void %i.box(ptr noundef nonnull align 8 dereferenceable(205) %.0.i3.i.i.i1120) #9, !inline_history !76
  br label %_ZN5Ipopt8SmartPtrIKNS_6VectorEED2Ev.exit1140

_ZN5Ipopt8SmartPtrIKNS_6VectorEED2Ev.exit1140:    ; preds = %bb.js, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i1137
  %i.boy = getelementptr inbounds nuw i8, ptr %i.bnp, i64 8 ; 2 uses
  %i.boz = load i32, ptr %i.boy, align 8, !tbaa !12
  %i.bpa = add nsw i32 %i.boz, -1                 ; 2 uses
  store i32 %i.bpa, ptr %i.boy, align 8, !tbaa !12
  %i.bpb = icmp eq i32 %i.bpa, 0
  br i1 %i.bpb, label %bb.jt, label %bb.ju

bb.jt:                                            ; preds = %_ZN5Ipopt8SmartPtrIKNS_6VectorEED2Ev.exit1140
  %i.bpc = load ptr, ptr %i.bnp, align 8, !tbaa !14
  %i.bpd = getelementptr inbounds nuw i8, ptr %i.bpc, i64 8
  %i.bpe = load ptr, ptr %i.bpd, align 8
  call void %i.bpe(ptr noundef nonnull align 8 dereferenceable(280) %i.bnp) #9, !inline_history !77
  br label %bb.ju

bb.ju:                                            ; preds = %bb.jt, %_ZN5Ipopt8SmartPtrIKNS_6VectorEED2Ev.exit1140
  call void @llvm.lifetime.start.p0(ptr nonnull %22) #9
  %i.bpf = load ptr, ptr %i.bu, align 8, !tbaa !21
  invoke void @_ZN5Ipopt25IpoptCalculatedQuantities14curr_slack_s_LEv(ptr dead_on_unwind nonnull writable sret(%"class.Ipopt::SmartPtr.29") align 8 %22, ptr noundef nonnull align 8 dereferenceable(2185) %i.bpf)
          to label %._crit_edge.i.i1143 unwind label %bb.lm

._crit_edge.i.i1143:                              ; preds = %bb.ju
  %i.bpg = load ptr, ptr %22, align 8, !tbaa !353
  %i.bph = load ptr, ptr %i.al, align 8, !tbaa !30
  call void @llvm.lifetime.start.p0(ptr nonnull %23) #9
  %i.bpi = getelementptr inbounds nuw i8, ptr %23, i64 16 ; 6 uses
  store ptr %i.bpi, ptr %23, align 8, !tbaa !33
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(14) %i.bpi, ptr noundef nonnull align 1 dereferenceable(14) @.str.43, i64 14, i1 false)
  %i.bpj = getelementptr inbounds nuw i8, ptr %23, i64 8
  store i64 14, ptr %i.bpj, align 8, !tbaa !39
  %i.bpk = getelementptr inbounds nuw i8, ptr %23, i64 30
  store i8 0, ptr %i.bpk, align 2, !tbaa !38
  call void @llvm.lifetime.start.p0(ptr nonnull %24) #9
  %i.bpl = getelementptr inbounds nuw i8, ptr %24, i64 16 ; 6 uses
  store ptr %i.bpl, ptr %24, align 8, !tbaa !33
  %i.bpm = getelementptr inbounds nuw i8, ptr %24, i64 8
  store i64 0, ptr %i.bpm, align 8, !tbaa !39
  store i8 0, ptr %i.bpl, align 8, !tbaa !38
  invoke void @_ZNK5Ipopt6Vector5PrintERKNS_10JournalistENS_13EJournalLevelENS_16EJournalCategoryERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiSD_(ptr noundef nonnull align 8 dereferenceable(205) %i.bpg, ptr noundef nonnull align 8 dereferenceable(40) %i.bph, i32 noundef 8, i32 noundef 2, ptr noundef nonnull align 8 dereferenceable(32) %23, i32 noundef 0, ptr noundef nonnull align 8 dereferenceable(32) %24)
          to label %bb.jv unwind label %bb.ln

bb.jv:                                            ; preds = %._crit_edge.i.i1143
  %i.bpn = load ptr, ptr %24, align 8, !tbaa !37  ; 2 uses
  %i.bpo = icmp eq ptr %i.bpn, %i.bpl
  br i1 %i.bpo, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1153, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1151

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1151: ; preds = %bb.jv
  %i.bpp = load i64, ptr %i.bpl, align 8, !tbaa !38
  %i.bpq = add i64 %i.bpp, 1
  call void @_ZdlPvm(ptr noundef %i.bpn, i64 noundef %i.bpq) #10
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1153

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1153: ; preds = %bb.jv, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1151
  call void @llvm.lifetime.end.p0(ptr nonnull %24) #9
  %i.bpr = load ptr, ptr %23, align 8, !tbaa !37  ; 2 uses
  %i.bps = icmp eq ptr %i.bpr, %i.bpi
  br i1 %i.bps, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1156, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1154

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1154: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1153
  %i.bpt = load i64, ptr %i.bpi, align 8, !tbaa !38
  %i.bpu = add i64 %i.bpt, 1
  call void @_ZdlPvm(ptr noundef %i.bpr, i64 noundef %i.bpu) #10
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1156

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1156: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1153, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1154
  call void @llvm.lifetime.end.p0(ptr nonnull %23) #9
  %i.bpv = load ptr, ptr %22, align 8, !tbaa !353 ; 4 uses
  %.not.i.i1157 = icmp eq ptr %i.bpv, null
  br i1 %.not.i.i1157, label %bb.jy, label %bb.jw

bb.jw:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1156
  %i.bpw = getelementptr inbounds nuw i8, ptr %i.bpv, i64 8 ; 2 uses
  %i.bpx = load i32, ptr %i.bpw, align 8, !tbaa !12
  %i.bpy = add nsw i32 %i.bpx, -1                 ; 2 uses
  store i32 %i.bpy, ptr %i.bpw, align 8, !tbaa !12
  %i.bpz = icmp eq i32 %i.bpy, 0
  br i1 %i.bpz, label %bb.jx, label %bb.jy

bb.jx:                                            ; preds = %bb.jw
  %i.bqa = load ptr, ptr %i.bpv, align 8, !tbaa !14
  %i.bqb = getelementptr inbounds nuw i8, ptr %i.bqa, i64 8
  %i.bqc = load ptr, ptr %i.bqb, align 8
  call void %i.bqc(ptr noundef nonnull align 8 dereferenceable(205) %i.bpv) #9, !inline_history !76
  br label %bb.jy

bb.jy:                                            ; preds = %bb.jx, %bb.jw, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1156
  call void @llvm.lifetime.end.p0(ptr nonnull %22) #9
  call void @llvm.lifetime.start.p0(ptr nonnull %25) #9
  %i.bqd = load ptr, ptr %i.bu, align 8, !tbaa !21
  invoke void @_ZN5Ipopt25IpoptCalculatedQuantities14curr_slack_s_UEv(ptr dead_on_unwind nonnull writable sret(%"class.Ipopt::SmartPtr.29") align 8 %25, ptr noundef nonnull align 8 dereferenceable(2185) %i.bqd)
          to label %._crit_edge.i.i1159 unwind label %bb.lq

._crit_edge.i.i1159:                              ; preds = %bb.jy
  %i.bqe = load ptr, ptr %25, align 8, !tbaa !353
  %i.bqf = load ptr, ptr %i.al, align 8, !tbaa !30
  call void @llvm.lifetime.start.p0(ptr nonnull %26) #9
  %i.bqg = getelementptr inbounds nuw i8, ptr %26, i64 16 ; 6 uses
  store ptr %i.bqg, ptr %26, align 8, !tbaa !33
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(14) %i.bqg, ptr noundef nonnull align 1 dereferenceable(14) @.str.44, i64 14, i1 false)
  %i.bqh = getelementptr inbounds nuw i8, ptr %26, i64 8
  store i64 14, ptr %i.bqh, align 8, !tbaa !39
  %i.bqi = getelementptr inbounds nuw i8, ptr %26, i64 30
  store i8 0, ptr %i.bqi, align 2, !tbaa !38
  call void @llvm.lifetime.start.p0(ptr nonnull %27) #9
  %i.bqj = getelementptr inbounds nuw i8, ptr %27, i64 16 ; 6 uses
  store ptr %i.bqj, ptr %27, align 8, !tbaa !33
  %i.bqk = getelementptr inbounds nuw i8, ptr %27, i64 8
  store i64 0, ptr %i.bqk, align 8, !tbaa !39
  store i8 0, ptr %i.bqj, align 8, !tbaa !38
  invoke void @_ZNK5Ipopt6Vector5PrintERKNS_10JournalistENS_13EJournalLevelENS_16EJournalCategoryERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiSD_(ptr noundef nonnull align 8 dereferenceable(205) %i.bqe, ptr noundef nonnull align 8 dereferenceable(40) %i.bqf, i32 noundef 8, i32 noundef 2, ptr noundef nonnull align 8 dereferenceable(32) %26, i32 noundef 0, ptr noundef nonnull align 8 dereferenceable(32) %27)
          to label %bb.jz unwind label %bb.lr

bb.jz:                                            ; preds = %._crit_edge.i.i1159
  %i.bql = load ptr, ptr %27, align 8, !tbaa !37  ; 2 uses
  %i.bqm = icmp eq ptr %i.bql, %i.bqj
  br i1 %i.bqm, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1169, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1167

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1167: ; preds = %bb.jz
  %i.bqn = load i64, ptr %i.bqj, align 8, !tbaa !38
  %i.bqo = add i64 %i.bqn, 1
  call void @_ZdlPvm(ptr noundef %i.bql, i64 noundef %i.bqo) #10
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1169

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1169: ; preds = %bb.jz, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1167
  call void @llvm.lifetime.end.p0(ptr nonnull %27) #9
  %i.bqp = load ptr, ptr %26, align 8, !tbaa !37  ; 2 uses
  %i.bqq = icmp eq ptr %i.bqp, %i.bqg
  br i1 %i.bqq, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1172, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1170

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1170: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1169
  %i.bqr = load i64, ptr %i.bqg, align 8, !tbaa !38
  %i.bqs = add i64 %i.bqr, 1
  call void @_ZdlPvm(ptr noundef %i.bqp, i64 noundef %i.bqs) #10
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1172

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1172: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1169, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1170
  call void @llvm.lifetime.end.p0(ptr nonnull %26) #9
  %i.bqt = load ptr, ptr %25, align 8, !tbaa !353 ; 4 uses
  %.not.i.i1173 = icmp eq ptr %i.bqt, null
  br i1 %.not.i.i1173, label %bb.kc, label %bb.ka

bb.ka:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1172
  %i.bqu = getelementptr inbounds nuw i8, ptr %i.bqt, i64 8 ; 2 uses
  %i.bqv = load i32, ptr %i.bqu, align 8, !tbaa !12
  %i.bqw = add nsw i32 %i.bqv, -1                 ; 2 uses
  store i32 %i.bqw, ptr %i.bqu, align 8, !tbaa !12
  %i.bqx = icmp eq i32 %i.bqw, 0
  br i1 %i.bqx, label %bb.kb, label %bb.kc

bb.kb:                                            ; preds = %bb.ka
  %i.bqy = load ptr, ptr %i.bqt, align 8, !tbaa !14
  %i.bqz = getelementptr inbounds nuw i8, ptr %i.bqy, i64 8
  %i.bra = load ptr, ptr %i.bqz, align 8
  call void %i.bra(ptr noundef nonnull align 8 dereferenceable(205) %i.bqt) #9, !inline_history !76
  br label %bb.kc

bb.kc:                                            ; preds = %bb.kb, %bb.ka, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1172
  call void @llvm.lifetime.end.p0(ptr nonnull %25) #9
  %i.brb = load ptr, ptr %i.v, align 8, !tbaa !24
  %i.brc = getelementptr inbounds nuw i8, ptr %i.brb, i64 16
  %i.brd = load ptr, ptr %i.brc, align 8, !tbaa !339, !noalias !470 ; 10 uses
  %.not.i.i.i.i1175 = icmp eq ptr %i.brd, null
  br i1 %.not.i.i.i.i1175, label %_ZNK5Ipopt9IpoptData4currEv.exit1176, label %bb.kd

bb.kd:                                            ; preds = %bb.kc
  %i.bre = getelementptr inbounds nuw i8, ptr %i.brd, i64 8 ; 2 uses
  %i.brf = load i32, ptr %i.bre, align 8, !tbaa !12, !noalias !470
  %i.brg = add nsw i32 %i.brf, 1
  store i32 %i.brg, ptr %i.bre, align 8, !tbaa !12, !noalias !470
  br label %_ZNK5Ipopt9IpoptData4currEv.exit1176

_ZNK5Ipopt9IpoptData4currEv.exit1176:             ; preds = %bb.kd, %bb.kc
  %i.brh = getelementptr inbounds nuw i8, ptr %i.brd, i64 208
  %i.bri = load ptr, ptr %i.brh, align 8, !tbaa !344, !noalias !471
  %i.brj = getelementptr inbounds nuw i8, ptr %i.bri, i64 48
  %i.brk = load ptr, ptr %i.brj, align 8, !tbaa !348, !noalias !471 ; 2 uses
  %.not.i.i.i1177 = icmp eq ptr %i.brk, null
  br i1 %.not.i.i.i1177, label %_ZNK5Ipopt14CompoundVector10IsCompNullEi.exit.i.i1181, label %_ZNK5Ipopt14CompoundVector9ConstCompEi.exit.thread.i.i.i1178

_ZNK5Ipopt14CompoundVector10IsCompNullEi.exit.i.i1181: ; preds = %_ZNK5Ipopt9IpoptData4currEv.exit1176
  %i.brl = getelementptr inbounds nuw i8, ptr %i.brd, i64 232
  %i.brm = load ptr, ptr %i.brl, align 8, !tbaa !351, !noalias !471
  %i.brn = getelementptr inbounds nuw i8, ptr %i.brm, i64 48
  %i.bro = load ptr, ptr %i.brn, align 8, !tbaa !353, !noalias !471, !nonnull !360, !noundef !360
  br label %_ZNK5Ipopt14CompoundVector9ConstCompEi.exit.thread.i.i.i1178

_ZNK5Ipopt14CompoundVector9ConstCompEi.exit.thread.i.i.i1178: ; preds = %_ZNK5Ipopt14CompoundVector10IsCompNullEi.exit.i.i1181, %_ZNK5Ipopt9IpoptData4currEv.exit1176
  %.0.i3.i.i.i1179 = phi ptr [ %i.brk, %_ZNK5Ipopt9IpoptData4currEv.exit1176 ], [ %i.bro, %_ZNK5Ipopt14CompoundVector10IsCompNullEi.exit.i.i1181 ] ; 6 uses
  %i.brp = getelementptr inbounds nuw i8, ptr %.0.i3.i.i.i1179, i64 8 ; 6 uses
  %i.brq = load i32, ptr %i.brp, align 8, !tbaa !12, !noalias !472
  %i.brr = add nsw i32 %i.brq, 1
  store i32 %i.brr, ptr %i.brp, align 8, !tbaa !12, !noalias !472
  %i.brs = load ptr, ptr %i.al, align 8, !tbaa !30
  call void @llvm.lifetime.start.p0(ptr nonnull %28) #9
  %i.brt = getelementptr inbounds nuw i8, ptr %28, i64 16 ; 6 uses
  store ptr %i.brt, ptr %28, align 8, !tbaa !33
  store i64 5503247421984109923, ptr %i.brt, align 8
  %i.bru = getelementptr inbounds nuw i8, ptr %28, i64 8
  store i64 8, ptr %i.bru, align 8, !tbaa !39
  %i.brv = getelementptr inbounds nuw i8, ptr %28, i64 24
  store i8 0, ptr %i.brv, align 8, !tbaa !38
  call void @llvm.lifetime.start.p0(ptr nonnull %29) #9
  %i.brw = getelementptr inbounds nuw i8, ptr %29, i64 16 ; 6 uses
  store ptr %i.brw, ptr %29, align 8, !tbaa !33
  %i.brx = getelementptr inbounds nuw i8, ptr %29, i64 8
  store i64 0, ptr %i.brx, align 8, !tbaa !39
  store i8 0, ptr %i.brw, align 8, !tbaa !38
  invoke void @_ZNK5Ipopt6Vector5PrintERKNS_10JournalistENS_13EJournalLevelENS_16EJournalCategoryERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiSD_(ptr noundef nonnull align 8 dereferenceable(205) %.0.i3.i.i.i1179, ptr noundef nonnull align 8 dereferenceable(40) %i.brs, i32 noundef 8, i32 noundef 2, ptr noundef nonnull align 8 dereferenceable(32) %28, i32 noundef 0, ptr noundef nonnull align 8 dereferenceable(32) %29)
          to label %bb.ke unwind label %bb.lu

bb.ke:                                            ; preds = %_ZNK5Ipopt14CompoundVector9ConstCompEi.exit.thread.i.i.i1178
  %i.bry = load ptr, ptr %29, align 8, !tbaa !37  ; 2 uses
  %i.brz = icmp eq ptr %i.bry, %i.brw
  br i1 %i.brz, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1194, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1192

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1192: ; preds = %bb.ke
  %i.bsa = load i64, ptr %i.brw, align 8, !tbaa !38
  %i.bsb = add i64 %i.bsa, 1
  call void @_ZdlPvm(ptr noundef %i.bry, i64 noundef %i.bsb) #10
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1194

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1194: ; preds = %bb.ke, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1192
  call void @llvm.lifetime.end.p0(ptr nonnull %29) #9
  %i.bsc = load ptr, ptr %28, align 8, !tbaa !37  ; 2 uses
  %i.bsd = icmp eq ptr %i.bsc, %i.brt
  br i1 %i.bsd, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i1196, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1195

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1195: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1194
  %i.bse = load i64, ptr %i.brt, align 8, !tbaa !38
  %i.bsf = add i64 %i.bse, 1
  call void @_ZdlPvm(ptr noundef %i.bsc, i64 noundef %i.bsf) #10
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i1196

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i1196: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1194, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1195
  call void @llvm.lifetime.end.p0(ptr nonnull %28) #9
  %i.bsg = load i32, ptr %i.brp, align 8, !tbaa !12
  %i.bsh = add nsw i32 %i.bsg, -1                 ; 2 uses
  store i32 %i.bsh, ptr %i.brp, align 8, !tbaa !12
  %i.bsi = icmp eq i32 %i.bsh, 0
  br i1 %i.bsi, label %bb.kf, label %_ZN5Ipopt8SmartPtrIKNS_6VectorEED2Ev.exit1199

bb.kf:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i1196
  %i.bsj = load ptr, ptr %.0.i3.i.i.i1179, align 8, !tbaa !14
  %i.bsk = getelementptr inbounds nuw i8, ptr %i.bsj, i64 8
  %i.bsl = load ptr, ptr %i.bsk, align 8
  call void %i.bsl(ptr noundef nonnull align 8 dereferenceable(205) %.0.i3.i.i.i1179) #9, !inline_history !76
  br label %_ZN5Ipopt8SmartPtrIKNS_6VectorEED2Ev.exit1199

_ZN5Ipopt8SmartPtrIKNS_6VectorEED2Ev.exit1199:    ; preds = %bb.kf, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i1196
  %i.bsm = getelementptr inbounds nuw i8, ptr %i.brd, i64 8 ; 2 uses
  %i.bsn = load i32, ptr %i.bsm, align 8, !tbaa !12
  %i.bso = add nsw i32 %i.bsn, -1                 ; 2 uses
  store i32 %i.bso, ptr %i.bsm, align 8, !tbaa !12
  %i.bsp = icmp eq i32 %i.bso, 0
  br i1 %i.bsp, label %bb.kg, label %bb.kh

bb.kg:                                            ; preds = %_ZN5Ipopt8SmartPtrIKNS_6VectorEED2Ev.exit1199
  %i.bsq = load ptr, ptr %i.brd, align 8, !tbaa !14
  %i.bsr = getelementptr inbounds nuw i8, ptr %i.bsq, i64 8
  %i.bss = load ptr, ptr %i.bsr, align 8
  call void %i.bss(ptr noundef nonnull align 8 dereferenceable(280) %i.brd) #9, !inline_history !77
  br label %bb.kh

bb.kh:                                            ; preds = %bb.kg, %_ZN5Ipopt8SmartPtrIKNS_6VectorEED2Ev.exit1199
  %i.bst = load ptr, ptr %i.v, align 8, !tbaa !24
  %i.bsu = getelementptr inbounds nuw i8, ptr %i.bst, i64 16
  %i.bsv = load ptr, ptr %i.bsu, align 8, !tbaa !339, !noalias !473 ; 10 uses
  %.not.i.i.i.i1202 = icmp eq ptr %i.bsv, null
  br i1 %.not.i.i.i.i1202, label %_ZNK5Ipopt9IpoptData4currEv.exit1203, label %bb.ki

bb.ki:                                            ; preds = %bb.kh
  %i.bsw = getelementptr inbounds nuw i8, ptr %i.bsv, i64 8 ; 2 uses
  %i.bsx = load i32, ptr %i.bsw, align 8, !tbaa !12, !noalias !473
  %i.bsy = add nsw i32 %i.bsx, 1
  store i32 %i.bsy, ptr %i.bsw, align 8, !tbaa !12, !noalias !473
  br label %_ZNK5Ipopt9IpoptData4currEv.exit1203

_ZNK5Ipopt9IpoptData4currEv.exit1203:             ; preds = %bb.ki, %bb.kh
  %i.bsz = getelementptr inbounds nuw i8, ptr %i.bsv, i64 208
  %i.bta = load ptr, ptr %i.bsz, align 8, !tbaa !344, !noalias !474
  %i.btb = getelementptr inbounds nuw i8, ptr %i.bta, i64 56
  %i.btc = load ptr, ptr %i.btb, align 8, !tbaa !348, !noalias !474 ; 2 uses
  %.not.i.i.i1204 = icmp eq ptr %i.btc, null
  br i1 %.not.i.i.i1204, label %_ZNK5Ipopt14CompoundVector10IsCompNullEi.exit.i.i1208, label %_ZNK5Ipopt14CompoundVector9ConstCompEi.exit.thread.i.i.i1205

_ZNK5Ipopt14CompoundVector10IsCompNullEi.exit.i.i1208: ; preds = %_ZNK5Ipopt9IpoptData4currEv.exit1203
  %i.btd = getelementptr inbounds nuw i8, ptr %i.bsv, i64 232
  %i.bte = load ptr, ptr %i.btd, align 8, !tbaa !351, !noalias !474
  %i.btf = getelementptr inbounds nuw i8, ptr %i.bte, i64 56
  %i.btg = load ptr, ptr %i.btf, align 8, !tbaa !353, !noalias !474, !nonnull !360, !noundef !360
  br label %_ZNK5Ipopt14CompoundVector9ConstCompEi.exit.thread.i.i.i1205

_ZNK5Ipopt14CompoundVector9ConstCompEi.exit.thread.i.i.i1205: ; preds = %_ZNK5Ipopt14CompoundVector10IsCompNullEi.exit.i.i1208, %_ZNK5Ipopt9IpoptData4currEv.exit1203
  %.0.i3.i.i.i1206 = phi ptr [ %i.btc, %_ZNK5Ipopt9IpoptData4currEv.exit1203 ], [ %i.btg, %_ZNK5Ipopt14CompoundVector10IsCompNullEi.exit.i.i1208 ] ; 6 uses
  %i.bth = getelementptr inbounds nuw i8, ptr %.0.i3.i.i.i1206, i64 8 ; 6 uses
  %i.bti = load i32, ptr %i.bth, align 8, !tbaa !12, !noalias !475
  %i.btj = add nsw i32 %i.bti, 1
  store i32 %i.btj, ptr %i.bth, align 8, !tbaa !12, !noalias !475
  %i.btk = load ptr, ptr %i.al, align 8, !tbaa !30
  call void @llvm.lifetime.start.p0(ptr nonnull %30) #9
  %i.btl = getelementptr inbounds nuw i8, ptr %30, i64 16 ; 6 uses
  store ptr %i.btl, ptr %30, align 8, !tbaa !33
  store i64 6151765768325461347, ptr %i.btl, align 8
  %i.btm = getelementptr inbounds nuw i8, ptr %30, i64 8
  store i64 8, ptr %i.btm, align 8, !tbaa !39
  %i.btn = getelementptr inbounds nuw i8, ptr %30, i64 24
  store i8 0, ptr %i.btn, align 8, !tbaa !38
  call void @llvm.lifetime.start.p0(ptr nonnull %31) #9
  %i.bto = getelementptr inbounds nuw i8, ptr %31, i64 16 ; 6 uses
  store ptr %i.bto, ptr %31, align 8, !tbaa !33
  %i.btp = getelementptr inbounds nuw i8, ptr %31, i64 8
  store i64 0, ptr %i.btp, align 8, !tbaa !39
  store i8 0, ptr %i.bto, align 8, !tbaa !38
  invoke void @_ZNK5Ipopt6Vector5PrintERKNS_10JournalistENS_13EJournalLevelENS_16EJournalCategoryERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiSD_(ptr noundef nonnull align 8 dereferenceable(205) %.0.i3.i.i.i1206, ptr noundef nonnull align 8 dereferenceable(40) %i.btk, i32 noundef 8, i32 noundef 2, ptr noundef nonnull align 8 dereferenceable(32) %30, i32 noundef 0, ptr noundef nonnull align 8 dereferenceable(32) %31)
          to label %bb.kj unwind label %bb.lx

bb.kj:                                            ; preds = %_ZNK5Ipopt14CompoundVector9ConstCompEi.exit.thread.i.i.i1205
  %i.btq = load ptr, ptr %31, align 8, !tbaa !37  ; 2 uses
  %i.btr = icmp eq ptr %i.btq, %i.bto
  br i1 %i.btr, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1221, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1219

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1219: ; preds = %bb.kj
  %i.bts = load i64, ptr %i.bto, align 8, !tbaa !38
  %i.btt = add i64 %i.bts, 1
  call void @_ZdlPvm(ptr noundef %i.btq, i64 noundef %i.btt) #10
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1221

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1221: ; preds = %bb.kj, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1219
  call void @llvm.lifetime.end.p0(ptr nonnull %31) #9
  %i.btu = load ptr, ptr %30, align 8, !tbaa !37  ; 2 uses
  %i.btv = icmp eq ptr %i.btu, %i.btl
  br i1 %i.btv, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i1223, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1222

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1222: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1221
  %i.btw = load i64, ptr %i.btl, align 8, !tbaa !38
  %i.btx = add i64 %i.btw, 1
  call void @_ZdlPvm(ptr noundef %i.btu, i64 noundef %i.btx) #10
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i1223

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i1223: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1221, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1222
  call void @llvm.lifetime.end.p0(ptr nonnull %30) #9
  %i.bty = load i32, ptr %i.bth, align 8, !tbaa !12
  %i.btz = add nsw i32 %i.bty, -1                 ; 2 uses
  store i32 %i.btz, ptr %i.bth, align 8, !tbaa !12
  %i.bua = icmp eq i32 %i.btz, 0
  br i1 %i.bua, label %bb.kk, label %_ZN5Ipopt8SmartPtrIKNS_6VectorEED2Ev.exit1226

bb.kk:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i1223
  %i.bub = load ptr, ptr %.0.i3.i.i.i1206, align 8, !tbaa !14
  %i.buc = getelementptr inbounds nuw i8, ptr %i.bub, i64 8
  %i.bud = load ptr, ptr %i.buc, align 8
  call void %i.bud(ptr noundef nonnull align 8 dereferenceable(205) %.0.i3.i.i.i1206) #9, !inline_history !76
  br label %_ZN5Ipopt8SmartPtrIKNS_6VectorEED2Ev.exit1226

_ZN5Ipopt8SmartPtrIKNS_6VectorEED2Ev.exit1226:    ; preds = %bb.kk, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i1223
  %i.bue = getelementptr inbounds nuw i8, ptr %i.bsv, i64 8 ; 2 uses
  %i.buf = load i32, ptr %i.bue, align 8, !tbaa !12
  %i.bug = add nsw i32 %i.buf, -1                 ; 2 uses
  store i32 %i.bug, ptr %i.bue, align 8, !tbaa !12
  %i.buh = icmp eq i32 %i.bug, 0
  br i1 %i.buh, label %bb.kl, label %bb.ma

bb.kl:                                            ; preds = %_ZN5Ipopt8SmartPtrIKNS_6VectorEED2Ev.exit1226
  %i.bui = load ptr, ptr %i.bsv, align 8, !tbaa !14
  %i.buj = getelementptr inbounds nuw i8, ptr %i.bui, i64 8
  %i.buk = load ptr, ptr %i.buj, align 8
  call void %i.buk(ptr noundef nonnull align 8 dereferenceable(280) %i.bsv) #9, !inline_history !77
  br label %bb.ma

bb.km:                                            ; preds = %_ZNK5Ipopt14CompoundVector9ConstCompEi.exit.thread.i.i.i955
  %i.bul = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.bum = load ptr, ptr %5, align 8, !tbaa !37   ; 2 uses
  %i.bun = icmp eq ptr %i.bum, %i.bea
  br i1 %i.bun, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1231, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1229

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1229: ; preds = %bb.km
  %i.buo = load i64, ptr %i.bea, align 8, !tbaa !38
  %i.bup = add i64 %i.buo, 1
  call void @_ZdlPvm(ptr noundef %i.bum, i64 noundef %i.bup) #10
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1231

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1231: ; preds = %bb.km, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1229
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #9
  %i.buq = load ptr, ptr %4, align 8, !tbaa !37   ; 2 uses
  %i.bur = icmp eq ptr %i.buq, %i.bdx
  br i1 %i.bur, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i1233, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1232

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1232: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1231
  %i.bus = load i64, ptr %i.bdx, align 8, !tbaa !38
  %i.but = add i64 %i.bus, 1
  call void @_ZdlPvm(ptr noundef %i.buq, i64 noundef %i.but) #10
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i1233

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i1233: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1231, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1232
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #9
  %i.buu = load i32, ptr %i.bdt, align 8, !tbaa !12
  %i.buv = add nsw i32 %i.buu, -1                 ; 2 uses
  store i32 %i.buv, ptr %i.bdt, align 8, !tbaa !12
  %i.buw = icmp eq i32 %i.buv, 0
  br i1 %i.buw, label %bb.kn, label %_ZN5Ipopt8SmartPtrIKNS_6VectorEED2Ev.exit1236.thread

bb.kn:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i1233
  %i.bux = load ptr, ptr %.0.i3.i.i.i956, align 8, !tbaa !14
  %i.buy = getelementptr inbounds nuw i8, ptr %i.bux, i64 8
  %i.buz = load ptr, ptr %i.buy, align 8
  call void %i.buz(ptr noundef nonnull align 8 dereferenceable(205) %.0.i3.i.i.i956) #9, !inline_history !76
  br label %_ZN5Ipopt8SmartPtrIKNS_6VectorEED2Ev.exit1236.thread

_ZN5Ipopt8SmartPtrIKNS_6VectorEED2Ev.exit1236.thread: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i1233, %bb.kn
  %i.bva = getelementptr inbounds nuw i8, ptr %i.bdj, i64 8 ; 2 uses
  %i.bvb = load i32, ptr %i.bva, align 8, !tbaa !12
  %i.bvc = add nsw i32 %i.bvb, -1                 ; 2 uses
  store i32 %i.bvc, ptr %i.bva, align 8, !tbaa !12
  %i.bvd = icmp eq i32 %i.bvc, 0
  br i1 %i.bvd, label %bb.ko, label %_ZN5Ipopt8SmartPtrIKNS_14IteratesVectorEED2Ev.exit733

bb.ko:                                            ; preds = %_ZN5Ipopt8SmartPtrIKNS_6VectorEED2Ev.exit1236.thread
  %i.bve = load ptr, ptr %i.bdj, align 8, !tbaa !14
  %i.bvf = getelementptr inbounds nuw i8, ptr %i.bve, i64 8
  %i.bvg = load ptr, ptr %i.bvf, align 8
  call void %i.bvg(ptr noundef nonnull align 8 dereferenceable(280) %i.bdj) #9, !inline_history !77
  br label %_ZN5Ipopt8SmartPtrIKNS_14IteratesVectorEED2Ev.exit733

bb.kp:                                            ; preds = %_ZNK5Ipopt14CompoundVector9ConstCompEi.exit.thread.i.i.i979
  %i.bvh = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.bvi = load ptr, ptr %7, align 8, !tbaa !37   ; 2 uses
  %i.bvj = icmp eq ptr %i.bvi, %i.bfs
  br i1 %i.bvj, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1241, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1239

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1239: ; preds = %bb.kp
  %i.bvk = load i64, ptr %i.bfs, align 8, !tbaa !38
  %i.bvl = add i64 %i.bvk, 1
  call void @_ZdlPvm(ptr noundef %i.bvi, i64 noundef %i.bvl) #10
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1241

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1241: ; preds = %bb.kp, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1239
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #9
  %i.bvm = load ptr, ptr %6, align 8, !tbaa !37   ; 2 uses
  %i.bvn = icmp eq ptr %i.bvm, %i.bfp
  br i1 %i.bvn, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i1243, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1242

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1242: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1241
  %i.bvo = load i64, ptr %i.bfp, align 8, !tbaa !38
  %i.bvp = add i64 %i.bvo, 1
  call void @_ZdlPvm(ptr noundef %i.bvm, i64 noundef %i.bvp) #10
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i1243

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i1243: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1241, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1242
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #9
  %i.bvq = load i32, ptr %i.bfl, align 8, !tbaa !12
  %i.bvr = add nsw i32 %i.bvq, -1                 ; 2 uses
  store i32 %i.bvr, ptr %i.bfl, align 8, !tbaa !12
  %i.bvs = icmp eq i32 %i.bvr, 0
  br i1 %i.bvs, label %bb.kq, label %_ZN5Ipopt8SmartPtrIKNS_6VectorEED2Ev.exit1246.thread

bb.kq:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i1243
  %i.bvt = load ptr, ptr %.0.i3.i.i.i980, align 8, !tbaa !14
  %i.bvu = getelementptr inbounds nuw i8, ptr %i.bvt, i64 8
  %i.bvv = load ptr, ptr %i.bvu, align 8
  call void %i.bvv(ptr noundef nonnull align 8 dereferenceable(205) %.0.i3.i.i.i980) #9, !inline_history !76
  br label %_ZN5Ipopt8SmartPtrIKNS_6VectorEED2Ev.exit1246.thread

_ZN5Ipopt8SmartPtrIKNS_6VectorEED2Ev.exit1246.thread: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i1243, %bb.kq
  %i.bvw = getelementptr inbounds nuw i8, ptr %i.bez, i64 8 ; 2 uses
  %i.bvx = load i32, ptr %i.bvw, align 8, !tbaa !12
  %i.bvy = add nsw i32 %i.bvx, -1                 ; 2 uses
  store i32 %i.bvy, ptr %i.bvw, align 8, !tbaa !12
  %i.bvz = icmp eq i32 %i.bvy, 0
  br i1 %i.bvz, label %bb.kr, label %_ZN5Ipopt8SmartPtrIKNS_14IteratesVectorEED2Ev.exit733

bb.kr:                                            ; preds = %_ZN5Ipopt8SmartPtrIKNS_6VectorEED2Ev.exit1246.thread
  %i.bwa = load ptr, ptr %i.bez, align 8, !tbaa !14
  %i.bwb = getelementptr inbounds nuw i8, ptr %i.bwa, i64 8
  %i.bwc = load ptr, ptr %i.bwb, align 8
  call void %i.bwc(ptr noundef nonnull align 8 dereferenceable(280) %i.bez) #9, !inline_history !77
  br label %_ZN5Ipopt8SmartPtrIKNS_14IteratesVectorEED2Ev.exit733

bb.ks:                                            ; preds = %_ZNK5Ipopt14CompoundVector9ConstCompEi.exit.thread.i.i.i1006
  %i.bwd = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.bwe = load ptr, ptr %9, align 8, !tbaa !37   ; 2 uses
  %i.bwf = icmp eq ptr %i.bwe, %i.bhk
  br i1 %i.bwf, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1251, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1249

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1249: ; preds = %bb.ks
  %i.bwg = load i64, ptr %i.bhk, align 8, !tbaa !38
  %i.bwh = add i64 %i.bwg, 1
  call void @_ZdlPvm(ptr noundef %i.bwe, i64 noundef %i.bwh) #10
end_hunk_0
