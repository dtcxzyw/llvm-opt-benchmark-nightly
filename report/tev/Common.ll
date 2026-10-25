Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/tev/original/Common?download=true
inline.NumInlined: 8078
inline.NumDeleted: 2931
loop-unroll.NumCompletelyUnrolled: 11
loop-unroll.NumRuntimeUnrolled: 47
loop-unroll.NumUnrolled: 58
begin_hunk_0_@_ZNSt3__111basic_regexIcNS_12regex_traitsIcEEE24__parse_character_escapeINS_11__wrap_iterIPKcEEEET_S9_S9_PNS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEE:bb.a
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 1
  br label %bb.bz

bb.o:                                             ; preds = %bb.b
  %.not43 = icmp eq ptr %3, null
  br i1 %.not43, label %bb.s, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.r = load i8, ptr %3, align 8
  %i.s = trunc i8 %i.r to i1
  br i1 %i.s, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p
  %i.t = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.u = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !88
  store i64 1, ptr %i.t, align 8, !tbaa !88
  br label %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEaSEc.exit51

bb.r:                                             ; preds = %bb.p
  %i.w = getelementptr inbounds nuw i8, ptr %3, i64 1
  store i8 2, ptr %3, align 8
  br label %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEaSEc.exit51

_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEaSEc.exit51: ; preds = %bb.q, %bb.r
  %.0.i50 = phi ptr [ %i.v, %bb.q ], [ %i.w, %bb.r ] ; 2 uses
  store i8 13, ptr %.0.i50, align 1, !tbaa !88
  %i.x = getelementptr inbounds nuw i8, ptr %.0.i50, i64 1
  store i8 0, ptr %i.x, align 1, !tbaa !88
  br label %bb.t

bb.s:                                             ; preds = %bb.o
  tail call void @_ZNSt3__111basic_regexIcNS_12regex_traitsIcEEE11__push_charEc(ptr noundef nonnull align 8 dereferenceable(64) %0, i8 noundef signext 13)
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEaSEc.exit51
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 1
  br label %bb.bz

bb.u:                                             ; preds = %bb.b
  %.not42 = icmp eq ptr %3, null
  br i1 %.not42, label %bb.y, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.z = load i8, ptr %3, align 8
  %i.aa = trunc i8 %i.z to i1
  br i1 %i.aa, label %bb.w, label %bb.x

bb.w:                                             ; preds = %bb.v
  %i.ab = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.ac = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !88
  store i64 1, ptr %i.ab, align 8, !tbaa !88
  br label %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEaSEc.exit53

bb.x:                                             ; preds = %bb.v
  %i.ae = getelementptr inbounds nuw i8, ptr %3, i64 1
  store i8 2, ptr %3, align 8
  br label %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEaSEc.exit53

_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEaSEc.exit53: ; preds = %bb.w, %bb.x
  %.0.i52 = phi ptr [ %i.ad, %bb.w ], [ %i.ae, %bb.x ] ; 2 uses
  store i8 9, ptr %.0.i52, align 1, !tbaa !88
  %i.af = getelementptr inbounds nuw i8, ptr %.0.i52, i64 1
  store i8 0, ptr %i.af, align 1, !tbaa !88
  br label %bb.z

bb.y:                                             ; preds = %bb.u
  tail call void @_ZNSt3__111basic_regexIcNS_12regex_traitsIcEEE11__push_charEc(ptr noundef nonnull align 8 dereferenceable(64) %0, i8 noundef signext 9)
  br label %bb.z

bb.z:                                             ; preds = %bb.y, %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEaSEc.exit53
  %i.ag = getelementptr inbounds nuw i8, ptr %1, i64 1
  br label %bb.bz

bb.aa:                                            ; preds = %bb.b
  %.not41 = icmp eq ptr %3, null
  br i1 %.not41, label %bb.ae, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.ah = load i8, ptr %3, align 8
  %i.ai = trunc i8 %i.ah to i1
  br i1 %i.ai, label %bb.ac, label %bb.ad

bb.ac:                                            ; preds = %bb.ab
  %i.aj = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.ak = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !88
  store i64 1, ptr %i.aj, align 8, !tbaa !88
  br label %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEaSEc.exit55

bb.ad:                                            ; preds = %bb.ab
  %i.am = getelementptr inbounds nuw i8, ptr %3, i64 1
  store i8 2, ptr %3, align 8
  br label %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEaSEc.exit55

_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEaSEc.exit55: ; preds = %bb.ac, %bb.ad
  %.0.i54 = phi ptr [ %i.al, %bb.ac ], [ %i.am, %bb.ad ] ; 2 uses
  store i8 11, ptr %.0.i54, align 1, !tbaa !88
  %i.an = getelementptr inbounds nuw i8, ptr %.0.i54, i64 1
  store i8 0, ptr %i.an, align 1, !tbaa !88
  br label %bb.af

bb.ae:                                            ; preds = %bb.aa
  tail call void @_ZNSt3__111basic_regexIcNS_12regex_traitsIcEEE11__push_charEc(ptr noundef nonnull align 8 dereferenceable(64) %0, i8 noundef signext 11)
  br label %bb.af

bb.af:                                            ; preds = %bb.ae, %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEaSEc.exit55
  %i.ao = getelementptr inbounds nuw i8, ptr %1, i64 1
  br label %bb.bz

bb.ag:                                            ; preds = %bb.b
  %i.ap = getelementptr inbounds nuw i8, ptr %1, i64 1 ; 2 uses
  %.not125 = icmp eq ptr %i.ap, %2
  br i1 %.not125, label %bb.ap, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  %i.aq = load i8, ptr %i.ap, align 1, !tbaa !88  ; 4 uses
  %i.ar = icmp sgt i8 %i.aq, 64
  br i1 %i.ar, label %bb.ai, label %.thread

bb.ai:                                            ; preds = %bb.ah
  %i.as = icmp samesign ult i8 %i.aq, 91
  %i.at = add nsw i8 %i.aq, -97
  %or.cond = icmp ult i8 %i.at, 26
  %or.cond126 = select i1 %i.as, i1 true, i1 %or.cond
  br i1 %or.cond126, label %bb.aj, label %.thread

bb.aj:                                            ; preds = %bb.ai
  %.not40 = icmp eq ptr %3, null
  %i.au = and i8 %i.aq, 31                        ; 2 uses
  br i1 %.not40, label %bb.an, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  %i.av = load i8, ptr %3, align 8
  %i.aw = trunc i8 %i.av to i1
  br i1 %i.aw, label %bb.al, label %bb.am

bb.al:                                            ; preds = %bb.ak
  %i.ax = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.ay = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.az = load ptr, ptr %i.ay, align 8, !tbaa !88
  store i64 1, ptr %i.ax, align 8, !tbaa !88
  br label %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEaSEc.exit57

bb.am:                                            ; preds = %bb.ak
  %i.ba = getelementptr inbounds nuw i8, ptr %3, i64 1
  store i8 2, ptr %3, align 8
  br label %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEaSEc.exit57

_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEaSEc.exit57: ; preds = %bb.al, %bb.am
  %.0.i56 = phi ptr [ %i.az, %bb.al ], [ %i.ba, %bb.am ] ; 2 uses
  store i8 %i.au, ptr %.0.i56, align 1, !tbaa !88
  %i.bb = getelementptr inbounds nuw i8, ptr %.0.i56, i64 1
  store i8 0, ptr %i.bb, align 1, !tbaa !88
  br label %bb.ao

bb.an:                                            ; preds = %bb.aj
  tail call void @_ZNSt3__111basic_regexIcNS_12regex_traitsIcEEE11__push_charEc(ptr noundef nonnull align 8 dereferenceable(64) %0, i8 noundef signext %i.au)
  br label %bb.ao

bb.ao:                                            ; preds = %bb.an, %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEaSEc.exit57
  %i.bc = getelementptr inbounds nuw i8, ptr %1, i64 2
  br label %bb.bz

.thread:                                          ; preds = %bb.ai, %bb.ah
  tail call void @_ZNSt3__119__throw_regex_errorB8ne180100ILNS_15regex_constants10error_typeE3EEEvv() #37
  unreachable

bb.ap:                                            ; preds = %bb.ag
  tail call void @_ZNSt3__119__throw_regex_errorB8ne180100ILNS_15regex_constants10error_typeE3EEEvv() #37
  unreachable

bb.aq:                                            ; preds = %bb.b
  %i.bd = getelementptr inbounds nuw i8, ptr %1, i64 1 ; 2 uses
  %i.be = icmp eq ptr %i.bd, %2
  br i1 %i.be, label %bb.ar, label %bb.as

bb.ar:                                            ; preds = %bb.aq
  tail call void @_ZNSt3__119__throw_regex_errorB8ne180100ILNS_15regex_constants10error_typeE3EEEvv() #37
  unreachable

bb.as:                                            ; preds = %bb.aq
  %i.bf = load i8, ptr %i.bd, align 1, !tbaa !88  ; 3 uses
  %i.bg = add i8 %i.bf, -48
  %or.cond147 = icmp ult i8 %i.bg, 10
  br i1 %or.cond147, label %bb.au, label %bb.at

bb.at:                                            ; preds = %bb.as
  %i.bh = or i8 %i.bf, 32                         ; 2 uses
  %i.bi = add i8 %i.bh, -97
  %or.cond.i.i.i = icmp ult i8 %i.bi, 6
  br i1 %or.cond.i.i.i, label %bb.au, label %_ZNKSt3__112regex_traitsIcE5valueB8ne180100Eci.exit

_ZNKSt3__112regex_traitsIcE5valueB8ne180100Eci.exit: ; preds = %bb.at
  tail call void @_ZNSt3__119__throw_regex_errorB8ne180100ILNS_15regex_constants10error_typeE3EEEvv() #37
  unreachable

bb.au:                                            ; preds = %bb.at, %bb.as
  %.sink139 = phi i8 [ %i.bh, %bb.at ], [ %i.bf, %bb.as ]
  %.sink138 = phi i16 [ 169, %bb.at ], [ 208, %bb.as ]
  %i.bj = zext i8 %.sink139 to i16
  %i.bk = add nuw nsw i16 %.sink138, %i.bj
  %i.bl = getelementptr inbounds nuw i8, ptr %1, i64 2 ; 3 uses
  %i.bm = icmp eq ptr %i.bl, %2
  br i1 %i.bm, label %bb.av, label %bb.aw

bb.av:                                            ; preds = %bb.au
  tail call void @_ZNSt3__119__throw_regex_errorB8ne180100ILNS_15regex_constants10error_typeE3EEEvv() #37
  unreachable

bb.aw:                                            ; preds = %bb.au
  %i.bn = load i8, ptr %i.bl, align 1, !tbaa !88  ; 3 uses
  %i.bo = add i8 %i.bn, -48
  %or.cond149 = icmp ult i8 %i.bo, 10
  br i1 %or.cond149, label %bb.ay, label %bb.ax

bb.ax:                                            ; preds = %bb.aw
  %i.bp = or i8 %i.bn, 32                         ; 2 uses
  %i.bq = add i8 %i.bp, -97
  %or.cond.i.i.i58 = icmp ult i8 %i.bq, 6
  br i1 %or.cond.i.i.i58, label %bb.ay, label %_ZNKSt3__112regex_traitsIcE5valueB8ne180100Eci.exit60

_ZNKSt3__112regex_traitsIcE5valueB8ne180100Eci.exit60: ; preds = %bb.ax
  tail call void @_ZNSt3__119__throw_regex_errorB8ne180100ILNS_15regex_constants10error_typeE3EEEvv() #37
  unreachable

bb.ay:                                            ; preds = %bb.ax, %bb.aw
  %.sink141 = phi i8 [ %i.bp, %bb.ax ], [ %i.bn, %bb.aw ]
  %.sink140 = phi i16 [ 4009, %bb.ax ], [ 4048, %bb.aw ]
  %i.br = zext i8 %.sink141 to i16
  %i.bs = add nuw nsw i16 %.sink140, %i.br
  %i.bt = shl i16 %i.bk, 8
  %i.bu = shl i16 %i.bs, 4
  %i.bv = add i16 %i.bu, %i.bt
  br label %bb.az

bb.az:                                            ; preds = %bb.b, %bb.ay
  %.sroa.087.0 = phi ptr [ %i.bl, %bb.ay ], [ %1, %bb.b ] ; 3 uses
  %.0 = phi i16 [ %i.bv, %bb.ay ], [ 0, %bb.b ]
  %i.bw = getelementptr inbounds nuw i8, ptr %.sroa.087.0, i64 1 ; 2 uses
  %i.bx = icmp eq ptr %i.bw, %2
  br i1 %i.bx, label %bb.ba, label %bb.bb

bb.ba:                                            ; preds = %bb.az
  tail call void @_ZNSt3__119__throw_regex_errorB8ne180100ILNS_15regex_constants10error_typeE3EEEvv() #37
  unreachable

bb.bb:                                            ; preds = %bb.az
  %i.by = load i8, ptr %i.bw, align 1, !tbaa !88  ; 3 uses
  %i.bz = add i8 %i.by, -48
  %or.cond151 = icmp ult i8 %i.bz, 10
  br i1 %or.cond151, label %bb.bd, label %bb.bc

bb.bc:                                            ; preds = %bb.bb
  %i.ca = or i8 %i.by, 32                         ; 2 uses
  %i.cb = add i8 %i.ca, -97
  %or.cond.i.i.i61 = icmp ult i8 %i.cb, 6
  br i1 %or.cond.i.i.i61, label %bb.bd, label %_ZNKSt3__112regex_traitsIcE5valueB8ne180100Eci.exit63

_ZNKSt3__112regex_traitsIcE5valueB8ne180100Eci.exit63: ; preds = %bb.bc
  tail call void @_ZNSt3__119__throw_regex_errorB8ne180100ILNS_15regex_constants10error_typeE3EEEvv() #37
  unreachable

bb.bd:                                            ; preds = %bb.bc, %bb.bb
  %.sink143 = phi i8 [ %i.ca, %bb.bc ], [ %i.by, %bb.bb ]
  %.sink142 = phi i16 [ 9, %bb.bc ], [ 0, %bb.bb ]
  %i.cc = zext i8 %.sink143 to i16
  %i.cd = add nuw nsw i16 %.sink142, %i.cc
  %i.ce = add i16 %i.cd, %.0
  %i.cf = getelementptr inbounds nuw i8, ptr %.sroa.087.0, i64 2 ; 2 uses
  %i.cg = icmp eq ptr %i.cf, %2
  br i1 %i.cg, label %bb.be, label %bb.bf

bb.be:                                            ; preds = %bb.bd
  tail call void @_ZNSt3__119__throw_regex_errorB8ne180100ILNS_15regex_constants10error_typeE3EEEvv() #37
  unreachable

bb.bf:                                            ; preds = %bb.bd
  %i.ch = load i8, ptr %i.cf, align 1, !tbaa !88  ; 3 uses
  %i.ci = add i8 %i.ch, -48
  %or.cond153 = icmp ult i8 %i.ci, 10
  br i1 %or.cond153, label %bb.bh, label %bb.bg

bb.bg:                                            ; preds = %bb.bf
  %i.cj = or i8 %i.ch, 32                         ; 2 uses
  %i.ck = add i8 %i.cj, -97
  %or.cond.i.i.i64 = icmp ult i8 %i.ck, 6
  br i1 %or.cond.i.i.i64, label %bb.bh, label %_ZNKSt3__112regex_traitsIcE5valueB8ne180100Eci.exit66

_ZNKSt3__112regex_traitsIcE5valueB8ne180100Eci.exit66: ; preds = %bb.bg
  tail call void @_ZNSt3__119__throw_regex_errorB8ne180100ILNS_15regex_constants10error_typeE3EEEvv() #37
  unreachable

bb.bh:                                            ; preds = %bb.bg, %bb.bf
  %.sink145 = phi i8 [ %i.cj, %bb.bg ], [ %i.ch, %bb.bf ]
  %.sink144 = phi i16 [ 169, %bb.bg ], [ 208, %bb.bf ]
  %i.cl = zext i8 %.sink145 to i16
  %i.cm = add nuw nsw i16 %.sink144, %i.cl
  %i.cn = shl i16 %i.ce, 4
  %i.co = add i16 %i.cm, %i.cn
  %.not39 = icmp eq ptr %3, null
  %i.cp = trunc i16 %i.co to i8                   ; 2 uses
  br i1 %.not39, label %bb.bl, label %bb.bi

bb.bi:                                            ; preds = %bb.bh
  %i.cq = load i8, ptr %3, align 8
  %i.cr = trunc i8 %i.cq to i1
  br i1 %i.cr, label %bb.bj, label %bb.bk

bb.bj:                                            ; preds = %bb.bi
  %i.cs = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.ct = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.cu = load ptr, ptr %i.ct, align 8, !tbaa !88
  store i64 1, ptr %i.cs, align 8, !tbaa !88
  br label %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEaSEc.exit68

bb.bk:                                            ; preds = %bb.bi
  %i.cv = getelementptr inbounds nuw i8, ptr %3, i64 1
  store i8 2, ptr %3, align 8
  br label %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEaSEc.exit68

_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEaSEc.exit68: ; preds = %bb.bj, %bb.bk
  %.0.i67 = phi ptr [ %i.cu, %bb.bj ], [ %i.cv, %bb.bk ] ; 2 uses
  store i8 %i.cp, ptr %.0.i67, align 1, !tbaa !88
  %i.cw = getelementptr inbounds nuw i8, ptr %.0.i67, i64 1
  store i8 0, ptr %i.cw, align 1, !tbaa !88
  br label %bb.bm

bb.bl:                                            ; preds = %bb.bh
  tail call void @_ZNSt3__111basic_regexIcNS_12regex_traitsIcEEE11__push_charEc(ptr noundef nonnull align 8 dereferenceable(64) %0, i8 noundef signext %i.cp)
  br label %bb.bm

bb.bm:                                            ; preds = %bb.bl, %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEaSEc.exit68
  %i.cx = getelementptr inbounds nuw i8, ptr %.sroa.087.0, i64 3
  br label %bb.bz

bb.bn:                                            ; preds = %bb.b
  %.not = icmp eq ptr %3, null
  br i1 %.not, label %bb.br, label %bb.bo

bb.bo:                                            ; preds = %bb.bn
  %i.cy = load i8, ptr %3, align 8
  %i.cz = trunc i8 %i.cy to i1
  br i1 %i.cz, label %bb.bp, label %bb.bq

bb.bp:                                            ; preds = %bb.bo
  %i.da = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.db = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.dc = load ptr, ptr %i.db, align 8, !tbaa !88
  store i64 1, ptr %i.da, align 8, !tbaa !88
  br label %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEaSEc.exit70

bb.bq:                                            ; preds = %bb.bo
  %i.dd = getelementptr inbounds nuw i8, ptr %3, i64 1
  store i8 2, ptr %3, align 8
  br label %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEaSEc.exit70

_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEaSEc.exit70: ; preds = %bb.bp, %bb.bq
  %.0.i69 = phi ptr [ %i.dc, %bb.bp ], [ %i.dd, %bb.bq ] ; 2 uses
  store i8 0, ptr %.0.i69, align 1, !tbaa !88
  %i.de = getelementptr inbounds nuw i8, ptr %.0.i69, i64 1
  store i8 0, ptr %i.de, align 1, !tbaa !88
  br label %bb.bs

bb.br:                                            ; preds = %bb.bn
  tail call void @_ZNSt3__111basic_regexIcNS_12regex_traitsIcEEE11__push_charEc(ptr noundef nonnull align 8 dereferenceable(64) %0, i8 noundef signext 0)
  br label %bb.bs

bb.bs:                                            ; preds = %bb.br, %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEaSEc.exit70
  %i.df = getelementptr inbounds nuw i8, ptr %1, i64 1
  br label %bb.bz

bb.bt:                                            ; preds = %bb.b
  %i.dg = icmp sgt i8 %i.a, -1
  br i1 %i.dg, label %_ZNKSt3__15ctypeIcE2isB8ne180100Etc.exit.i, label %_ZNKSt3__112regex_traitsIcE7isctypeEct.exit

_ZNKSt3__15ctypeIcE2isB8ne180100Etc.exit.i:       ; preds = %bb.bt
  %i.dh = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.di = load ptr, ptr %i.dh, align 8, !tbaa !139
  %i.dj = getelementptr inbounds nuw i8, ptr %i.di, i64 16
  %i.dk = load ptr, ptr %i.dj, align 8, !tbaa !363
  %i.dl = zext nneg i8 %i.a to i64
  %i.dm = getelementptr inbounds nuw [2 x i8], ptr %i.dk, i64 %i.dl
  %i.dn = load i16, ptr %i.dm, align 2, !tbaa !118
  %i.do = and i16 %i.dn, 3072
  %.not.i = icmp eq i16 %i.do, 0
  br i1 %.not.i, label %_ZNKSt3__112regex_traitsIcE7isctypeEct.exit, label %_ZNKSt3__112regex_traitsIcE7isctypeEct.exit.thread

_ZNKSt3__112regex_traitsIcE7isctypeEct.exit:      ; preds = %_ZNKSt3__15ctypeIcE2isB8ne180100Etc.exit.i, %bb.bt
  %.not47 = icmp eq ptr %3, null
  br i1 %.not47, label %bb.bx, label %bb.bu

bb.bu:                                            ; preds = %_ZNKSt3__112regex_traitsIcE7isctypeEct.exit
  %i.dp = load i8, ptr %3, align 8
  %i.dq = trunc i8 %i.dp to i1
  br i1 %i.dq, label %bb.bv, label %bb.bw

bb.bv:                                            ; preds = %bb.bu
  %i.dr = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.ds = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.dt = load ptr, ptr %i.ds, align 8, !tbaa !88
  store i64 1, ptr %i.dr, align 8, !tbaa !88
  br label %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEaSEc.exit73

bb.bw:                                            ; preds = %bb.bu
  %i.du = getelementptr inbounds nuw i8, ptr %3, i64 1
  store i8 2, ptr %3, align 8
  br label %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEaSEc.exit73

_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEaSEc.exit73: ; preds = %bb.bv, %bb.bw
  %.0.i72 = phi ptr [ %i.dt, %bb.bv ], [ %i.du, %bb.bw ] ; 2 uses
  store i8 %i.a, ptr %.0.i72, align 1, !tbaa !88
  %i.dv = getelementptr inbounds nuw i8, ptr %.0.i72, i64 1
  store i8 0, ptr %i.dv, align 1, !tbaa !88
  br label %bb.by

bb.bx:                                            ; preds = %_ZNKSt3__112regex_traitsIcE7isctypeEct.exit
  tail call void @_ZNSt3__111basic_regexIcNS_12regex_traitsIcEEE11__push_charEc(ptr noundef nonnull align 8 dereferenceable(64) %0, i8 noundef signext %i.a)
  br label %bb.by

bb.by:                                            ; preds = %bb.bx, %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEaSEc.exit73
  %i.dw = getelementptr inbounds nuw i8, ptr %1, i64 1
  br label %bb.bz

_ZNKSt3__112regex_traitsIcE7isctypeEct.exit.thread: ; preds = %bb.b, %_ZNKSt3__15ctypeIcE2isB8ne180100Etc.exit.i
  tail call void @_ZNSt3__119__throw_regex_errorB8ne180100ILNS_15regex_constants10error_typeE3EEEvv() #37
  unreachable

bb.bz:                                            ; preds = %bb.h, %bb.n, %bb.t, %bb.z, %bb.af, %bb.ao, %bb.bm, %bb.bs, %bb.by, %bb.a
  %.sroa.087.2 = phi ptr [ %1, %bb.a ], [ %i.dw, %bb.by ], [ %i.i, %bb.h ], [ %i.q, %bb.n ], [ %i.y, %bb.t ], [ %i.ag, %bb.z ], [ %i.ao, %bb.af ], [ %i.bc, %bb.ao ], [ %i.cx, %bb.bm ], [ %i.df, %bb.bs ]
  ret ptr %.sroa.087.2
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZNSt3__111basic_regexIcNS_12regex_traitsIcEEE11__push_charEc(ptr noundef nonnull align 8 dereferenceable(64) %0, i8 noundef signext %1) local_unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = load i32, ptr %i.a, align 8, !tbaa !144  ; 2 uses
  %i.c = and i32 %i.b, 1
  %.not = icmp eq i32 %i.c, 0
  br i1 %.not, label %bb.f, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = tail call noalias noundef nonnull dereferenceable(48) ptr @_Znwm(i64 noundef 48) #38 ; 9 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !327
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !329
  %i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 8 ; 2 uses
  store ptr %i.h, ptr %i.i, align 8, !tbaa !324
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVNSt3__118__match_char_icaseIcNS_12regex_traitsIcEEEE, i64 16), ptr %i.d, align 8, !tbaa !64
  %i.j = getelementptr inbounds nuw i8, ptr %i.d, i64 16 ; 2 uses
  tail call void @_ZNSt3__16localeC1ERKS0_(ptr noundef nonnull align 8 dereferenceable(24) %i.j, ptr noundef nonnull align 8 dereferenceable(24) %0) #35
  %i.k = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.k, ptr noundef nonnull align 8 dereferenceable(16) %i.l, i64 16, i1 false)
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !139  ; 2 uses
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !64
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 40
  %i.p = load ptr, ptr %i.o, align 8
  %i.q = invoke noundef signext i8 %i.p(ptr noundef nonnull align 8 dereferenceable(25) %i.m, i8 noundef signext %1)
          to label %bb.e unwind label %bb.c, !inline_history !1097

bb.c:                                             ; preds = %bb.b
  %i.r = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZNSt3__16localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(24) %i.j) #35
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVNSt3__116__owns_one_stateIcEE, i64 16), ptr %i.d, align 8, !tbaa !64
  %i.s = load ptr, ptr %i.i, align 8, !tbaa !329  ; 3 uses
  %i.t = icmp eq ptr %i.s, null
  br i1 %i.t, label %.body, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.u = load ptr, ptr %i.s, align 8, !tbaa !64
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  %i.w = load ptr, ptr %i.v, align 8
  tail call void %i.w(ptr noundef nonnull align 8 dereferenceable(8) %i.s) #35, !inline_history !1098
  br label %.body

bb.e:                                             ; preds = %bb.b
  %i.x = getelementptr inbounds nuw i8, ptr %i.d, i64 40
  store i8 %i.q, ptr %i.x, align 8, !tbaa !401
  %i.y = load ptr, ptr %i.e, align 8, !tbaa !327
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 8
  store ptr %i.d, ptr %i.z, align 8, !tbaa !329
  br label %bb.i

.body:                                            ; preds = %bb.c, %bb.d
  tail call void @_ZdlPvm(ptr noundef nonnull %i.d, i64 noundef 48) #36
  resume { ptr, i32 } %i.r

bb.f:                                             ; preds = %bb.a
  %i.aa = and i32 %i.b, 8
  %.not6 = icmp eq i32 %i.aa, 0
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 3 uses
  br i1 %.not6, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
end_hunk_0
