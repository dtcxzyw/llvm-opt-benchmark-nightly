Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/libigl/original/tetgen?download=true
inline.NumInlined: 6986
inline.NumDeleted: 169
loop-unroll.NumCompletelyUnrolled: 436
loop-unroll.NumRuntimeUnrolled: 117
loop-unroll.NumUnrolled: 556
begin_hunk_0_@_ZN10tetgenmesh6flip32EPNS_7trifaceEiPNS_15flipconstraintsE:bb.a
  %i.blq = getelementptr inbounds [24 x i8], ptr @_ZN10tetgenmesh10tspivottblE, i64 %i.aab
  %i.blr = and i64 %i.bln, 7
  %i.bls = getelementptr inbounds nuw [4 x i8], ptr %i.blq, i64 %i.blr
  %i.blt = load i32, ptr %i.bls, align 4, !tbaa !59
  %i.blu = load ptr, ptr %i.bv, align 8, !tbaa !231 ; 2 uses
  %i.blv = sext i32 %i.bli to i64
  %i.blw = getelementptr inbounds [4 x i8], ptr @_ZN10tetgenmesh7esymtblE, i64 %i.blv
  %i.blx = load i32, ptr %i.blw, align 4, !tbaa !59 ; 2 uses
  %i.bly = xor i32 %i.blt, 1                      ; 3 uses
  %i.blz = getelementptr inbounds nuw i8, ptr %i.blu, i64 72 ; 6 uses
  %i.bma = load ptr, ptr %i.blz, align 8, !tbaa !220 ; 2 uses
  %i.bmb = icmp eq ptr %i.bma, null
  br i1 %i.bmb, label %.loopexit.loopexit.i395.1, label %_ZN10tetgenmesh6tsbondERNS_7trifaceERNS_4faceE.exit397.1

.loopexit.loopexit.i395.1:                        ; preds = %_ZN10tetgenmesh7tspivotERNS_7trifaceERNS_4faceE.exit394.1
  %i.bmc = load ptr, ptr %i.baz, align 8, !tbaa !229
  %i.bmd = tail call noundef ptr @_ZN10tetgenmesh10memorypool5allocEv(ptr noundef nonnull align 8 dereferenceable(88) %i.bmc) ; 2 uses
  store ptr %i.bmd, ptr %i.blz, align 8, !tbaa !220
  store ptr null, ptr %i.bmd, align 8, !tbaa !220
  %i.bme = load ptr, ptr %i.blz, align 8, !tbaa !220
  %i.bmf = getelementptr inbounds nuw i8, ptr %i.bme, i64 8
  store ptr null, ptr %i.bmf, align 8, !tbaa !220
  %i.bmg = load ptr, ptr %i.blz, align 8, !tbaa !220
  %i.bmh = getelementptr inbounds nuw i8, ptr %i.bmg, i64 16
  store ptr null, ptr %i.bmh, align 8, !tbaa !220
  %i.bmi = load ptr, ptr %i.blz, align 8, !tbaa !220
  %i.bmj = getelementptr inbounds nuw i8, ptr %i.bmi, i64 24
  store ptr null, ptr %i.bmj, align 8, !tbaa !220
  %.pre.i396.1 = load ptr, ptr %i.blz, align 8, !tbaa !220
  br label %_ZN10tetgenmesh6tsbondERNS_7trifaceERNS_4faceE.exit397.1

_ZN10tetgenmesh6tsbondERNS_7trifaceERNS_4faceE.exit397.1: ; preds = %.loopexit.loopexit.i395.1, %_ZN10tetgenmesh7tspivotERNS_7trifaceERNS_4faceE.exit394.1
  %i.bmk = phi ptr [ %.pre.i396.1, %.loopexit.loopexit.i395.1 ], [ %i.bma, %_ZN10tetgenmesh7tspivotERNS_7trifaceERNS_4faceE.exit394.1 ]
  %i.bml = sext i32 %i.blx to i64                 ; 2 uses
  %i.bmm = getelementptr inbounds [24 x i8], ptr @_ZN10tetgenmesh9tsbondtblE, i64 %i.bml
  %i.bmn = sext i32 %i.bly to i64                 ; 2 uses
  %i.bmo = getelementptr inbounds [4 x i8], ptr %i.bmm, i64 %i.bmn
  %i.bmp = load i32, ptr %i.bmo, align 4, !tbaa !59
  %i.bmq = sext i32 %i.bmp to i64
  %i.bmr = or i64 %i.blo, %i.bmq
  %i.bms = inttoptr i64 %i.bmr to ptr
  %i.bmt = and i32 %i.blx, 3
  %i.bmu = zext nneg i32 %i.bmt to i64
  %i.bmv = getelementptr inbounds nuw [8 x i8], ptr %i.bmk, i64 %i.bmu
  store ptr %i.bms, ptr %i.bmv, align 8, !tbaa !220
  %i.bmw = getelementptr inbounds [24 x i8], ptr @_ZN10tetgenmesh9stbondtblE, i64 %i.bml
  %i.bmx = getelementptr inbounds [4 x i8], ptr %i.bmw, i64 %i.bmn
  %i.bmy = load i32, ptr %i.bmx, align 4, !tbaa !59
  %i.bmz = ptrtoint ptr %i.blu to i64
  %i.bna = sext i32 %i.bmy to i64
  %i.bnb = or i64 %i.bna, %i.bmz
  %i.bnc = inttoptr i64 %i.bnb to ptr
  %i.bnd = and i32 %i.bly, 1
  %i.bne = zext nneg i32 %i.bnd to i64
  %i.bnf = getelementptr inbounds nuw [8 x i8], ptr %i.blp, i64 %i.bne
  %i.bng = getelementptr inbounds nuw i8, ptr %i.bnf, i64 72
  store ptr %i.bnc, ptr %i.bng, align 8, !tbaa !220
  %i.bnh = load i32, ptr %i.bba, align 4, !tbaa !281
  %i.bni = and i32 %i.bnh, 2
  %.not351.1 = icmp eq i32 %i.bni, 0
  br i1 %.not351.1, label %_ZN10tetgenmesh14enqueuesubfaceEPNS_10memorypoolEPNS_4faceE.exit399.1, label %bb.bz

bb.bz:                                            ; preds = %_ZN10tetgenmesh6tsbondERNS_7trifaceERNS_4faceE.exit397.1
  %i.bnj = load i32, ptr %i.bbb, align 8, !tbaa !239
  %i.bnk = sext i32 %i.bnj to i64
  %i.bnl = getelementptr [4 x i8], ptr %i.blp, i64 %i.bnk
  %i.bnm = getelementptr i8, ptr %i.bnl, i64 4    ; 2 uses
  %i.bnn = load i32, ptr %i.bnm, align 4, !tbaa !59 ; 2 uses
  %i.bno = and i32 %i.bnn, 4
  %.not.i398.1 = icmp eq i32 %i.bno, 0
  br i1 %.not.i398.1, label %bb.ca, label %_ZN10tetgenmesh14enqueuesubfaceEPNS_10memorypoolEPNS_4faceE.exit399.1

bb.ca:                                            ; preds = %bb.bz
  %i.bnp = load ptr, ptr %i.bbc, align 8, !tbaa !283
  %i.bnq = or disjoint i32 %i.bnn, 4
  store i32 %i.bnq, ptr %i.bnm, align 4, !tbaa !59
  %i.bnr = tail call noundef ptr @_ZN10tetgenmesh10memorypool5allocEv(ptr noundef nonnull align 8 dereferenceable(88) %i.bnp) ; 2 uses
  store ptr %i.blp, ptr %i.bnr, align 8, !tbaa !224
  %i.bns = getelementptr inbounds nuw i8, ptr %i.bnr, i64 8
  store i32 %i.bly, ptr %i.bns, align 8, !tbaa !225
  br label %_ZN10tetgenmesh14enqueuesubfaceEPNS_10memorypoolEPNS_4faceE.exit399.1

_ZN10tetgenmesh14enqueuesubfaceEPNS_10memorypoolEPNS_4faceE.exit399.1: ; preds = %bb.ca, %bb.bz, %_ZN10tetgenmesh6tsbondERNS_7trifaceERNS_4faceE.exit397.1, %bb.by, %_ZN10tetgenmesh14enqueuesubfaceEPNS_10memorypoolEPNS_4faceE.exit399
  %i.bnt = load i32, ptr %i.bw, align 8, !tbaa !236
  %i.bnu = sext i32 %i.bnt to i64
  %i.bnv = getelementptr inbounds [4 x i8], ptr @_ZN10tetgenmesh8eprevtblE, i64 %i.bnu
  %i.bnw = load i32, ptr %i.bnv, align 4, !tbaa !59 ; 2 uses
  store i32 %i.bnw, ptr %i.bw, align 8, !tbaa !236
  %i.bnx = getelementptr inbounds nuw i8, ptr %i.gi, i64 72
  %i.bny = load ptr, ptr %i.bnx, align 8, !tbaa !220 ; 2 uses
  %.not349.2 = icmp eq ptr %i.bny, null
  br i1 %.not349.2, label %_ZN10tetgenmesh14enqueuesubfaceEPNS_10memorypoolEPNS_4faceE.exit399.2, label %bb.cb

bb.cb:                                            ; preds = %_ZN10tetgenmesh14enqueuesubfaceEPNS_10memorypoolEPNS_4faceE.exit399.1
  %i.bnz = getelementptr inbounds nuw [8 x i8], ptr %i.bny, i64 %i.abq
  %i.boa = load ptr, ptr %i.bnz, align 8, !tbaa !112 ; 2 uses
  %.not350.2 = icmp eq ptr %i.boa, null
  br i1 %.not350.2, label %_ZN10tetgenmesh14enqueuesubfaceEPNS_10memorypoolEPNS_4faceE.exit399.2, label %_ZN10tetgenmesh7tspivotERNS_7trifaceERNS_4faceE.exit394.2

_ZN10tetgenmesh7tspivotERNS_7trifaceERNS_4faceE.exit394.2: ; preds = %bb.cb
  %i.bob = ptrtoint ptr %i.boa to i64             ; 2 uses
  %i.boc = and i64 %i.bob, -8                     ; 2 uses
  %i.bod = inttoptr i64 %i.boc to ptr             ; 3 uses
  %i.boe = getelementptr inbounds [24 x i8], ptr @_ZN10tetgenmesh10tspivottblE, i64 %i.aba
  %i.bof = and i64 %i.bob, 7
  %i.bog = getelementptr inbounds nuw [4 x i8], ptr %i.boe, i64 %i.bof
  %i.boh = load i32, ptr %i.bog, align 4, !tbaa !59
  %i.boi = load ptr, ptr %i.bv, align 8, !tbaa !231 ; 2 uses
  %i.boj = sext i32 %i.bnw to i64
  %i.bok = getelementptr inbounds [4 x i8], ptr @_ZN10tetgenmesh7esymtblE, i64 %i.boj
  %i.bol = load i32, ptr %i.bok, align 4, !tbaa !59 ; 2 uses
  %i.bom = xor i32 %i.boh, 1                      ; 3 uses
  %i.bon = getelementptr inbounds nuw i8, ptr %i.boi, i64 72 ; 6 uses
  %i.boo = load ptr, ptr %i.bon, align 8, !tbaa !220 ; 2 uses
  %i.bop = icmp eq ptr %i.boo, null
  br i1 %i.bop, label %.loopexit.loopexit.i395.2, label %_ZN10tetgenmesh6tsbondERNS_7trifaceERNS_4faceE.exit397.2

.loopexit.loopexit.i395.2:                        ; preds = %_ZN10tetgenmesh7tspivotERNS_7trifaceERNS_4faceE.exit394.2
  %i.boq = load ptr, ptr %i.baz, align 8, !tbaa !229
  %i.bor = tail call noundef ptr @_ZN10tetgenmesh10memorypool5allocEv(ptr noundef nonnull align 8 dereferenceable(88) %i.boq) ; 2 uses
  store ptr %i.bor, ptr %i.bon, align 8, !tbaa !220
  store ptr null, ptr %i.bor, align 8, !tbaa !220
  %i.bos = load ptr, ptr %i.bon, align 8, !tbaa !220
  %i.bot = getelementptr inbounds nuw i8, ptr %i.bos, i64 8
  store ptr null, ptr %i.bot, align 8, !tbaa !220
  %i.bou = load ptr, ptr %i.bon, align 8, !tbaa !220
  %i.bov = getelementptr inbounds nuw i8, ptr %i.bou, i64 16
  store ptr null, ptr %i.bov, align 8, !tbaa !220
  %i.bow = load ptr, ptr %i.bon, align 8, !tbaa !220
  %i.box = getelementptr inbounds nuw i8, ptr %i.bow, i64 24
  store ptr null, ptr %i.box, align 8, !tbaa !220
  %.pre.i396.2 = load ptr, ptr %i.bon, align 8, !tbaa !220
  br label %_ZN10tetgenmesh6tsbondERNS_7trifaceERNS_4faceE.exit397.2

_ZN10tetgenmesh6tsbondERNS_7trifaceERNS_4faceE.exit397.2: ; preds = %.loopexit.loopexit.i395.2, %_ZN10tetgenmesh7tspivotERNS_7trifaceERNS_4faceE.exit394.2
  %i.boy = phi ptr [ %.pre.i396.2, %.loopexit.loopexit.i395.2 ], [ %i.boo, %_ZN10tetgenmesh7tspivotERNS_7trifaceERNS_4faceE.exit394.2 ]
  %i.boz = sext i32 %i.bol to i64                 ; 2 uses
  %i.bpa = getelementptr inbounds [24 x i8], ptr @_ZN10tetgenmesh9tsbondtblE, i64 %i.boz
  %i.bpb = sext i32 %i.bom to i64                 ; 2 uses
  %i.bpc = getelementptr inbounds [4 x i8], ptr %i.bpa, i64 %i.bpb
  %i.bpd = load i32, ptr %i.bpc, align 4, !tbaa !59
  %i.bpe = sext i32 %i.bpd to i64
  %i.bpf = or i64 %i.boc, %i.bpe
  %i.bpg = inttoptr i64 %i.bpf to ptr
  %i.bph = and i32 %i.bol, 3
  %i.bpi = zext nneg i32 %i.bph to i64
  %i.bpj = getelementptr inbounds nuw [8 x i8], ptr %i.boy, i64 %i.bpi
  store ptr %i.bpg, ptr %i.bpj, align 8, !tbaa !220
  %i.bpk = getelementptr inbounds [24 x i8], ptr @_ZN10tetgenmesh9stbondtblE, i64 %i.boz
  %i.bpl = getelementptr inbounds [4 x i8], ptr %i.bpk, i64 %i.bpb
  %i.bpm = load i32, ptr %i.bpl, align 4, !tbaa !59
  %i.bpn = ptrtoint ptr %i.boi to i64
  %i.bpo = sext i32 %i.bpm to i64
  %i.bpp = or i64 %i.bpo, %i.bpn
  %i.bpq = inttoptr i64 %i.bpp to ptr
  %i.bpr = and i32 %i.bom, 1
  %i.bps = zext nneg i32 %i.bpr to i64
  %i.bpt = getelementptr inbounds nuw [8 x i8], ptr %i.bod, i64 %i.bps
  %i.bpu = getelementptr inbounds nuw i8, ptr %i.bpt, i64 72
  store ptr %i.bpq, ptr %i.bpu, align 8, !tbaa !220
  %i.bpv = load i32, ptr %i.bba, align 4, !tbaa !281
  %i.bpw = and i32 %i.bpv, 2
  %.not351.2 = icmp eq i32 %i.bpw, 0
  br i1 %.not351.2, label %_ZN10tetgenmesh14enqueuesubfaceEPNS_10memorypoolEPNS_4faceE.exit399.2, label %bb.cc

bb.cc:                                            ; preds = %_ZN10tetgenmesh6tsbondERNS_7trifaceERNS_4faceE.exit397.2
  %i.bpx = load i32, ptr %i.bbb, align 8, !tbaa !239
  %i.bpy = sext i32 %i.bpx to i64
  %i.bpz = getelementptr [4 x i8], ptr %i.bod, i64 %i.bpy
  %i.bqa = getelementptr i8, ptr %i.bpz, i64 4    ; 2 uses
  %i.bqb = load i32, ptr %i.bqa, align 4, !tbaa !59 ; 2 uses
  %i.bqc = and i32 %i.bqb, 4
  %.not.i398.2 = icmp eq i32 %i.bqc, 0
  br i1 %.not.i398.2, label %bb.cd, label %_ZN10tetgenmesh14enqueuesubfaceEPNS_10memorypoolEPNS_4faceE.exit399.2

bb.cd:                                            ; preds = %bb.cc
  %i.bqd = load ptr, ptr %i.bbc, align 8, !tbaa !283
  %i.bqe = or disjoint i32 %i.bqb, 4
  store i32 %i.bqe, ptr %i.bqa, align 4, !tbaa !59
  %i.bqf = tail call noundef ptr @_ZN10tetgenmesh10memorypool5allocEv(ptr noundef nonnull align 8 dereferenceable(88) %i.bqd) ; 2 uses
  store ptr %i.bod, ptr %i.bqf, align 8, !tbaa !224
  %i.bqg = getelementptr inbounds nuw i8, ptr %i.bqf, i64 8
  store i32 %i.bom, ptr %i.bqg, align 8, !tbaa !225
  br label %_ZN10tetgenmesh14enqueuesubfaceEPNS_10memorypoolEPNS_4faceE.exit399.2

_ZN10tetgenmesh14enqueuesubfaceEPNS_10memorypoolEPNS_4faceE.exit399.2: ; preds = %bb.cd, %bb.cc, %_ZN10tetgenmesh6tsbondERNS_7trifaceERNS_4faceE.exit397.2, %bb.cb, %_ZN10tetgenmesh14enqueuesubfaceEPNS_10memorypoolEPNS_4faceE.exit399.1
  %i.bqh = load i32, ptr %i.bw, align 8, !tbaa !236
  %i.bqi = sext i32 %i.bqh to i64
  %i.bqj = getelementptr inbounds [4 x i8], ptr @_ZN10tetgenmesh8eprevtblE, i64 %i.bqi
  %i.bqk = load i32, ptr %i.bqj, align 4, !tbaa !59
  store i32 %i.bqk, ptr %i.bw, align 8, !tbaa !236
  br i1 %i.ol, label %bb.ce, label %bb.ch

bb.ce:                                            ; preds = %_ZN10tetgenmesh14enqueuesubfaceEPNS_10memorypoolEPNS_4faceE.exit399.2
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #40
  %i.bql = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 2 uses
  %.ptr346.1 = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  %i.bqm = add nsw i32 %.2305, 1                  ; 2 uses
  %.urem = add nsw i32 %.2305, -2
  %.cmp = icmp ult i32 %i.bqm, 3
  %i.bqn = select i1 %.cmp, i32 %i.bqm, i32 %.urem ; 6 uses
  %i.bqo = zext nneg i32 %i.bqn to i64
  %i.bqp = getelementptr inbounds nuw [16 x i8], ptr %4, i64 %i.bqo ; 2 uses
  %i.bqq = load ptr, ptr %i.bqp, align 16, !tbaa !224
  store ptr %i.bqq, ptr %5, align 16, !tbaa !224
  %i.bqr = getelementptr inbounds nuw i8, ptr %i.bqp, i64 8
  %i.bqs = load i32, ptr %i.bqr, align 8, !tbaa !225
  store i32 %i.bqs, ptr %i.bql, align 8, !tbaa !225
  %i.bqt = add nsw i32 %.2305, 2                  ; 2 uses
  %.urem771 = add nsw i32 %.2305, -1
  %.cmp772 = icmp ult i32 %i.bqt, 3
  %i.bqu = select i1 %.cmp772, i32 %i.bqt, i32 %.urem771
  %i.bqv = zext nneg i32 %i.bqu to i64
  %i.bqw = getelementptr inbounds nuw [16 x i8], ptr %4, i64 %i.bqv ; 2 uses
  %i.bqx = load ptr, ptr %i.bqw, align 16, !tbaa !224
  store ptr %i.bqx, ptr %.ptr346.1, align 16, !tbaa !224
  %i.bqy = getelementptr inbounds nuw i8, ptr %i.bqw, i64 8
  %i.bqz = load i32, ptr %i.bqy, align 8, !tbaa !225
  %i.bra = getelementptr inbounds nuw i8, ptr %5, i64 24 ; 3 uses
  %i.brb = xor i32 %i.bqz, 1
  store i32 %i.brb, ptr %i.bra, align 8, !tbaa !225
  %i.brc = load i32, ptr %i.bba, align 4, !tbaa !281
  call void @_ZN10tetgenmesh6flip22EPNS_4faceEii(ptr noundef nonnull align 8 dereferenceable(69984) %0, ptr noundef nonnull %5, i32 noundef 0, i32 noundef %i.brc)
  %i.brd = load ptr, ptr %1, align 8, !tbaa !231  ; 3 uses
  %i.bre = load i32, ptr %i.bo, align 8, !tbaa !236 ; 3 uses
  %i.brf = load ptr, ptr %i.bv, align 8, !tbaa !231 ; 3 uses
  %i.brg = load i32, ptr %i.bw, align 8, !tbaa !236 ; 3 uses
  %.not770 = icmp eq i32 %i.bqn, 0
  br i1 %.not770, label %._crit_edge570, label %.lr.ph569.preheader

.lr.ph569.preheader:                              ; preds = %bb.ce
  %xtraiter804 = and i32 %i.bqn, 1
  %6 = icmp eq i32 %i.bqn, 1
  br i1 %6, label %.lr.ph569.epil.preheader, label %.lr.ph569.preheader.new

.lr.ph569.preheader.new:                          ; preds = %.lr.ph569.preheader
  %unroll_iter = and i32 %i.bqn, -2
  br label %.lr.ph569

.lr.ph569:                                        ; preds = %.lr.ph569, %.lr.ph569.preheader.new
  %i.brh = phi i32 [ %i.bre, %.lr.ph569.preheader.new ], [ %i.brr, %.lr.ph569 ]
  %i.bri = phi i32 [ %i.brg, %.lr.ph569.preheader.new ], [ %i.bru, %.lr.ph569 ]
  %niter = phi i32 [ 0, %.lr.ph569.preheader.new ], [ %niter.next.1, %.lr.ph569 ]
  %i.brj = sext i32 %i.brh to i64
  %i.brk = getelementptr inbounds [4 x i8], ptr @_ZN10tetgenmesh8enexttblE, i64 %i.brj
  %i.brl = load i32, ptr %i.brk, align 4, !tbaa !59
  %i.brm = sext i32 %i.bri to i64
  %i.brn = getelementptr inbounds [4 x i8], ptr @_ZN10tetgenmesh8eprevtblE, i64 %i.brm
  %i.bro = load i32, ptr %i.brn, align 4, !tbaa !59
  %i.brp = sext i32 %i.brl to i64
  %i.brq = getelementptr inbounds [4 x i8], ptr @_ZN10tetgenmesh8enexttblE, i64 %i.brp
  %i.brr = load i32, ptr %i.brq, align 4, !tbaa !59 ; 3 uses
  %i.brs = sext i32 %i.bro to i64
  %i.brt = getelementptr inbounds [4 x i8], ptr @_ZN10tetgenmesh8eprevtblE, i64 %i.brs
  %i.bru = load i32, ptr %i.brt, align 4, !tbaa !59 ; 3 uses
  %niter.next.1 = add nuw i32 %niter, 2           ; 2 uses
  %niter.ncmp.1.not = icmp eq i32 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1.not, label %._crit_edge570.loopexit.unr-lcssa, label %.lr.ph569, !llvm.loop !597

._crit_edge570.loopexit.unr-lcssa:                ; preds = %.lr.ph569
  %lcmp.mod807.not = icmp eq i32 %xtraiter804, 0
  br i1 %lcmp.mod807.not, label %._crit_edge570, label %.lr.ph569.epil.preheader

.lr.ph569.epil.preheader:                         ; preds = %._crit_edge570.loopexit.unr-lcssa, %.lr.ph569.preheader
  %.epil.init = phi i32 [ %i.bre, %.lr.ph569.preheader ], [ %i.brr, %._crit_edge570.loopexit.unr-lcssa ]
  %.epil.init806 = phi i32 [ %i.brg, %.lr.ph569.preheader ], [ %i.bru, %._crit_edge570.loopexit.unr-lcssa ]
  %lcmp.mod810 = trunc i32 %i.bqn to i1
  tail call void @llvm.assume(i1 %lcmp.mod810)
  %i.brv = sext i32 %.epil.init to i64
  %i.brw = getelementptr inbounds [4 x i8], ptr @_ZN10tetgenmesh8enexttblE, i64 %i.brv
  %i.brx = load i32, ptr %i.brw, align 4, !tbaa !59
  %i.bry = sext i32 %.epil.init806 to i64
  %i.brz = getelementptr inbounds [4 x i8], ptr @_ZN10tetgenmesh8eprevtblE, i64 %i.bry
  %i.bsa = load i32, ptr %i.brz, align 4, !tbaa !59
  br label %._crit_edge570

._crit_edge570:                                   ; preds = %.lr.ph569.epil.preheader, %._crit_edge570.loopexit.unr-lcssa, %bb.ce
  %.lcssa566 = phi i32 [ %i.brg, %bb.ce ], [ %i.bru, %._crit_edge570.loopexit.unr-lcssa ], [ %i.bsa, %.lr.ph569.epil.preheader ]
  %.lcssa = phi i32 [ %i.bre, %bb.ce ], [ %i.brr, %._crit_edge570.loopexit.unr-lcssa ], [ %i.brx, %.lr.ph569.epil.preheader ]
  %i.bsb = sext i32 %.lcssa to i64
  %i.bsc = getelementptr inbounds [4 x i8], ptr @_ZN10tetgenmesh7esymtblE, i64 %i.bsb
  %i.bsd = load i32, ptr %i.bsc, align 4, !tbaa !59 ; 3 uses
  %i.bse = load i32, ptr %i.bql, align 8, !tbaa !225 ; 3 uses
  %i.bsf = xor i32 %i.bse, 1                      ; 2 uses
  %i.bsg = getelementptr inbounds nuw i8, ptr %i.brd, i64 72 ; 6 uses
  %i.bsh = load ptr, ptr %i.bsg, align 8, !tbaa !220 ; 3 uses
  %i.bsi = icmp eq ptr %i.bsh, null
  br i1 %i.bsi, label %.loopexit.loopexit.i402, label %_ZN10tetgenmesh7tspivotERNS_7trifaceERNS_4faceE.exit401

_ZN10tetgenmesh7tspivotERNS_7trifaceERNS_4faceE.exit401: ; preds = %._crit_edge570
  %i.bsj = and i32 %i.bsd, 3
  %i.bsk = zext nneg i32 %i.bsj to i64            ; 2 uses
  %i.bsl = getelementptr inbounds nuw [8 x i8], ptr %i.bsh, i64 %i.bsk
  %i.bsm = load ptr, ptr %i.bsl, align 8, !tbaa !220
  %i.bsn = icmp ult ptr %i.bsm, inttoptr (i64 8 to ptr)
  br i1 %i.bsn, label %_ZN10tetgenmesh6tsbondERNS_7trifaceERNS_4faceE.exit404, label %bb.cf

.loopexit.loopexit.i402:                          ; preds = %._crit_edge570
  %i.bso = load ptr, ptr %i.baz, align 8, !tbaa !229
  %i.bsp = tail call noundef ptr @_ZN10tetgenmesh10memorypool5allocEv(ptr noundef nonnull align 8 dereferenceable(88) %i.bso) ; 2 uses
  store ptr %i.bsp, ptr %i.bsg, align 8, !tbaa !220
  store ptr null, ptr %i.bsp, align 8, !tbaa !220
  %i.bsq = load ptr, ptr %i.bsg, align 8, !tbaa !220
  %i.bsr = getelementptr inbounds nuw i8, ptr %i.bsq, i64 8
  store ptr null, ptr %i.bsr, align 8, !tbaa !220
  %i.bss = load ptr, ptr %i.bsg, align 8, !tbaa !220
  %i.bst = getelementptr inbounds nuw i8, ptr %i.bss, i64 16
  store ptr null, ptr %i.bst, align 8, !tbaa !220
  %i.bsu = load ptr, ptr %i.bsg, align 8, !tbaa !220
  %i.bsv = getelementptr inbounds nuw i8, ptr %i.bsu, i64 24
  store ptr null, ptr %i.bsv, align 8, !tbaa !220
  %.pre.i403 = load ptr, ptr %i.bsg, align 8, !tbaa !220
  %.pre694 = and i32 %i.bsd, 3
  %.pre696 = zext nneg i32 %.pre694 to i64
  br label %_ZN10tetgenmesh6tsbondERNS_7trifaceERNS_4faceE.exit404

_ZN10tetgenmesh6tsbondERNS_7trifaceERNS_4faceE.exit404: ; preds = %_ZN10tetgenmesh7tspivotERNS_7trifaceERNS_4faceE.exit401, %.loopexit.loopexit.i402
  %.pre-phi697 = phi i64 [ %i.bsk, %_ZN10tetgenmesh7tspivotERNS_7trifaceERNS_4faceE.exit401 ], [ %.pre696, %.loopexit.loopexit.i402 ] ; 2 uses
  %i.bsw = phi ptr [ %i.bsh, %_ZN10tetgenmesh7tspivotERNS_7trifaceERNS_4faceE.exit401 ], [ %.pre.i403, %.loopexit.loopexit.i402 ]
  %i.bsx = load ptr, ptr %5, align 16, !tbaa !224 ; 3 uses
  %i.bsy = sext i32 %i.bsd to i64                 ; 3 uses
  %i.bsz = getelementptr inbounds [24 x i8], ptr @_ZN10tetgenmesh9tsbondtblE, i64 %i.bsy
  %i.bta = sext i32 %i.bsf to i64                 ; 2 uses
  %i.btb = getelementptr inbounds [4 x i8], ptr %i.bsz, i64 %i.bta
  %i.btc = load i32, ptr %i.btb, align 4, !tbaa !59
  %i.btd = ptrtoint ptr %i.bsx to i64             ; 2 uses
  %i.bte = sext i32 %i.btc to i64
  %i.btf = or i64 %i.bte, %i.btd
  %i.btg = inttoptr i64 %i.btf to ptr
  %i.bth = getelementptr inbounds nuw [8 x i8], ptr %i.bsw, i64 %.pre-phi697
  store ptr %i.btg, ptr %i.bth, align 8, !tbaa !220
  %i.bti = getelementptr inbounds [24 x i8], ptr @_ZN10tetgenmesh9stbondtblE, i64 %i.bsy
  %i.btj = getelementptr inbounds [4 x i8], ptr %i.bti, i64 %i.bta
  %i.btk = load i32, ptr %i.btj, align 4, !tbaa !59
  %i.btl = ptrtoint ptr %i.brd to i64
  %i.btm = sext i32 %i.btk to i64
  %i.btn = or i64 %i.btm, %i.btl
  %i.bto = inttoptr i64 %i.btn to ptr
  %i.btp = and i32 %i.bsf, 1
  %i.btq = zext nneg i32 %i.btp to i64
  %i.btr = getelementptr inbounds nuw [8 x i8], ptr %i.bsx, i64 %i.btq
  %i.bts = getelementptr inbounds nuw i8, ptr %i.btr, i64 72
  store ptr %i.bto, ptr %i.bts, align 8, !tbaa !220
  %i.btt = getelementptr inbounds nuw [8 x i8], ptr %i.brd, i64 %.pre-phi697
  %i.btu = load ptr, ptr %i.btt, align 8, !tbaa !220
  %i.btv = ptrtoint ptr %i.btu to i64             ; 2 uses
  %i.btw = and i64 %i.btv, -16                    ; 2 uses
  %i.btx = inttoptr i64 %i.btw to ptr
  %i.bty = getelementptr inbounds [48 x i8], ptr @_ZN10tetgenmesh7fsymtblE, i64 %i.bsy
  %i.btz = and i64 %i.btv, 15
  %i.bua = getelementptr inbounds nuw [4 x i8], ptr %i.bty, i64 %i.btz
  %i.bub = load i32, ptr %i.bua, align 4, !tbaa !59 ; 2 uses
  %i.buc = getelementptr inbounds nuw i8, ptr %i.btx, i64 72 ; 6 uses
  %i.bud = load ptr, ptr %i.buc, align 8, !tbaa !220 ; 2 uses
  %i.bue = icmp eq ptr %i.bud, null
  br i1 %i.bue, label %.loopexit.loopexit.i405, label %_ZN10tetgenmesh6tsbondERNS_7trifaceERNS_4faceE.exit407

.loopexit.loopexit.i405:                          ; preds = %_ZN10tetgenmesh6tsbondERNS_7trifaceERNS_4faceE.exit404
  %i.buf = load ptr, ptr %i.baz, align 8, !tbaa !229
  %i.bug = tail call noundef ptr @_ZN10tetgenmesh10memorypool5allocEv(ptr noundef nonnull align 8 dereferenceable(88) %i.buf) ; 2 uses
  store ptr %i.bug, ptr %i.buc, align 8, !tbaa !220
  store ptr null, ptr %i.bug, align 8, !tbaa !220
  %i.buh = load ptr, ptr %i.buc, align 8, !tbaa !220
  %i.bui = getelementptr inbounds nuw i8, ptr %i.buh, i64 8
  store ptr null, ptr %i.bui, align 8, !tbaa !220
  %i.buj = load ptr, ptr %i.buc, align 8, !tbaa !220
  %i.buk = getelementptr inbounds nuw i8, ptr %i.buj, i64 16
  store ptr null, ptr %i.buk, align 8, !tbaa !220
  %i.bul = load ptr, ptr %i.buc, align 8, !tbaa !220
  %i.bum = getelementptr inbounds nuw i8, ptr %i.bul, i64 24
  store ptr null, ptr %i.bum, align 8, !tbaa !220
  %.pre.i406 = load ptr, ptr %i.buc, align 8, !tbaa !220
  br label %_ZN10tetgenmesh6tsbondERNS_7trifaceERNS_4faceE.exit407

_ZN10tetgenmesh6tsbondERNS_7trifaceERNS_4faceE.exit407: ; preds = %_ZN10tetgenmesh6tsbondERNS_7trifaceERNS_4faceE.exit404, %.loopexit.loopexit.i405
  %i.bun = phi ptr [ %.pre.i406, %.loopexit.loopexit.i405 ], [ %i.bud, %_ZN10tetgenmesh6tsbondERNS_7trifaceERNS_4faceE.exit404 ]
  %i.buo = sext i32 %i.bub to i64                 ; 2 uses
  %i.bup = getelementptr inbounds [24 x i8], ptr @_ZN10tetgenmesh9tsbondtblE, i64 %i.buo
  %i.buq = sext i32 %i.bse to i64                 ; 2 uses
  %i.bur = getelementptr inbounds [4 x i8], ptr %i.bup, i64 %i.buq
  %i.bus = load i32, ptr %i.bur, align 4, !tbaa !59
  %i.but = sext i32 %i.bus to i64
  %i.buu = or i64 %i.but, %i.btd
  %i.buv = inttoptr i64 %i.buu to ptr
  %i.buw = and i32 %i.bub, 3
  %i.bux = zext nneg i32 %i.buw to i64
  %i.buy = getelementptr inbounds nuw [8 x i8], ptr %i.bun, i64 %i.bux
  store ptr %i.buv, ptr %i.buy, align 8, !tbaa !220
  %i.buz = getelementptr inbounds [24 x i8], ptr @_ZN10tetgenmesh9stbondtblE, i64 %i.buo
  %i.bva = getelementptr inbounds [4 x i8], ptr %i.buz, i64 %i.buq
  %i.bvb = load i32, ptr %i.bva, align 4, !tbaa !59
  %i.bvc = sext i32 %i.bvb to i64
  %i.bvd = or i64 %i.btw, %i.bvc
  %i.bve = inttoptr i64 %i.bvd to ptr
  %i.bvf = and i32 %i.bse, 1
  %i.bvg = zext nneg i32 %i.bvf to i64
  %i.bvh = getelementptr inbounds nuw [8 x i8], ptr %i.bsx, i64 %i.bvg
  %i.bvi = getelementptr inbounds nuw i8, ptr %i.bvh, i64 72
  store ptr %i.bve, ptr %i.bvi, align 8, !tbaa !220
  %i.bvj = sext i32 %.lcssa566 to i64
  %i.bvk = getelementptr inbounds [4 x i8], ptr @_ZN10tetgenmesh7esymtblE, i64 %i.bvj
  %i.bvl = load i32, ptr %i.bvk, align 4, !tbaa !59 ; 3 uses
  %i.bvm = load i32, ptr %i.bra, align 8, !tbaa !225 ; 3 uses
  %i.bvn = xor i32 %i.bvm, 1                      ; 3 uses
  store i32 %i.bvn, ptr %i.bra, align 8, !tbaa !225
  %i.bvo = getelementptr inbounds nuw i8, ptr %i.brf, i64 72 ; 6 uses
  %i.bvp = load ptr, ptr %i.bvo, align 8, !tbaa !220 ; 3 uses
  %i.bvq = icmp eq ptr %i.bvp, null
  br i1 %i.bvq, label %.loopexit.loopexit.i410, label %_ZN10tetgenmesh7tspivotERNS_7trifaceERNS_4faceE.exit409

bb.cf:                                            ; preds = %_ZN10tetgenmesh7tspivotERNS_7trifaceERNS_4faceE.exit401
  %i.bvr = tail call ptr @__cxa_allocate_exception(i64 4) #40 ; 2 uses
  store i32 2, ptr %i.bvr, align 16, !tbaa !59
  tail call void @__cxa_throw(ptr nonnull %i.bvr, ptr nonnull @_ZTIi, ptr null) #43
  unreachable

_ZN10tetgenmesh7tspivotERNS_7trifaceERNS_4faceE.exit409: ; preds = %_ZN10tetgenmesh6tsbondERNS_7trifaceERNS_4faceE.exit407
  %i.bvs = and i32 %i.bvl, 3
  %i.bvt = zext nneg i32 %i.bvs to i64            ; 2 uses
  %i.bvu = getelementptr inbounds nuw [8 x i8], ptr %i.bvp, i64 %i.bvt
  %i.bvv = load ptr, ptr %i.bvu, align 8, !tbaa !220
  %i.bvw = icmp ult ptr %i.bvv, inttoptr (i64 8 to ptr)
  br i1 %i.bvw, label %_ZN10tetgenmesh6tsbondERNS_7trifaceERNS_4faceE.exit412, label %bb.cg

.loopexit.loopexit.i410:                          ; preds = %_ZN10tetgenmesh6tsbondERNS_7trifaceERNS_4faceE.exit407
  %i.bvx = load ptr, ptr %i.baz, align 8, !tbaa !229
  %i.bvy = tail call noundef ptr @_ZN10tetgenmesh10memorypool5allocEv(ptr noundef nonnull align 8 dereferenceable(88) %i.bvx) ; 2 uses
  store ptr %i.bvy, ptr %i.bvo, align 8, !tbaa !220
  store ptr null, ptr %i.bvy, align 8, !tbaa !220
  %i.bvz = load ptr, ptr %i.bvo, align 8, !tbaa !220
  %i.bwa = getelementptr inbounds nuw i8, ptr %i.bvz, i64 8
  store ptr null, ptr %i.bwa, align 8, !tbaa !220
  %i.bwb = load ptr, ptr %i.bvo, align 8, !tbaa !220
  %i.bwc = getelementptr inbounds nuw i8, ptr %i.bwb, i64 16
  store ptr null, ptr %i.bwc, align 8, !tbaa !220
  %i.bwd = load ptr, ptr %i.bvo, align 8, !tbaa !220
  %i.bwe = getelementptr inbounds nuw i8, ptr %i.bwd, i64 24
  store ptr null, ptr %i.bwe, align 8, !tbaa !220
  %.pre.i411 = load ptr, ptr %i.bvo, align 8, !tbaa !220
  %.pre698 = and i32 %i.bvl, 3
  %.pre700 = zext nneg i32 %.pre698 to i64
  br label %_ZN10tetgenmesh6tsbondERNS_7trifaceERNS_4faceE.exit412

_ZN10tetgenmesh6tsbondERNS_7trifaceERNS_4faceE.exit412: ; preds = %_ZN10tetgenmesh7tspivotERNS_7trifaceERNS_4faceE.exit409, %.loopexit.loopexit.i410
  %.pre-phi701 = phi i64 [ %i.bvt, %_ZN10tetgenmesh7tspivotERNS_7trifaceERNS_4faceE.exit409 ], [ %.pre700, %.loopexit.loopexit.i410 ] ; 2 uses
  %i.bwf = phi ptr [ %i.bvp, %_ZN10tetgenmesh7tspivotERNS_7trifaceERNS_4faceE.exit409 ], [ %.pre.i411, %.loopexit.loopexit.i410 ]
  %i.bwg = load ptr, ptr %.ptr346.1, align 16, !tbaa !224 ; 3 uses
  %i.bwh = sext i32 %i.bvl to i64                 ; 3 uses
  %i.bwi = getelementptr inbounds [24 x i8], ptr @_ZN10tetgenmesh9tsbondtblE, i64 %i.bwh
  %i.bwj = sext i32 %i.bvn to i64                 ; 2 uses
  %i.bwk = getelementptr inbounds [4 x i8], ptr %i.bwi, i64 %i.bwj
  %i.bwl = load i32, ptr %i.bwk, align 4, !tbaa !59
  %i.bwm = ptrtoint ptr %i.bwg to i64             ; 2 uses
  %i.bwn = sext i32 %i.bwl to i64
  %i.bwo = or i64 %i.bwn, %i.bwm
  %i.bwp = inttoptr i64 %i.bwo to ptr
  %i.bwq = getelementptr inbounds nuw [8 x i8], ptr %i.bwf, i64 %.pre-phi701
  store ptr %i.bwp, ptr %i.bwq, align 8, !tbaa !220
  %i.bwr = getelementptr inbounds [24 x i8], ptr @_ZN10tetgenmesh9stbondtblE, i64 %i.bwh
  %i.bws = getelementptr inbounds [4 x i8], ptr %i.bwr, i64 %i.bwj
  %i.bwt = load i32, ptr %i.bws, align 4, !tbaa !59
  %i.bwu = ptrtoint ptr %i.brf to i64
  %i.bwv = sext i32 %i.bwt to i64
  %i.bww = or i64 %i.bwv, %i.bwu
  %i.bwx = inttoptr i64 %i.bww to ptr
  %i.bwy = and i32 %i.bvn, 1
  %i.bwz = zext nneg i32 %i.bwy to i64
end_hunk_0
