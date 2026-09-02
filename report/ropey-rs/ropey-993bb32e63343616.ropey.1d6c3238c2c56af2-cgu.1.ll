Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ropey-rs/original/ropey-993bb32e63343616.ropey.1d6c3238c2c56af2-cgu.1?download=true
inline.NumInlined: 1161
inline.NumDeleted: 59
loop-unroll.NumCompletelyUnrolled: 4
loop-unroll.NumRuntimeUnrolled: 27
loop-unroll.NumUnrolled: 31
begin_hunk_0_@_RNvMs4_NtCs2wCc12Mnjqg_5ropey4iterNtB5_5Lines9prev_impl:bb.a
  %vec.phi1814 = phi <2 x i64> [ zeroinitializer, %vector.ph1810 ], [ %i.iy, %vector.body1812 ]
  %vec.phi1815 = phi <2 x i64> [ zeroinitializer, %vector.ph1810 ], [ %i.iz, %vector.body1812 ]
  %next.gep = getelementptr i8, ptr %i.if, i64 %index1813 ; 2 uses
  %i.it = getelementptr i8, ptr %next.gep, i64 2
  %wide.load1816 = load <2 x i8>, ptr %next.gep, align 1
  %wide.load1817 = load <2 x i8>, ptr %i.it, align 1
  %i.iu = icmp ugt <2 x i8> %wide.load1816, splat (i8 -17)
  %i.iv = icmp ugt <2 x i8> %wide.load1817, splat (i8 -17)
  %i.iw = zext <2 x i1> %i.iu to <2 x i64>
  %i.ix = zext <2 x i1> %i.iv to <2 x i64>
  %i.iy = add <2 x i64> %vec.phi1814, %i.iw       ; 2 uses
  %i.iz = add <2 x i64> %vec.phi1815, %i.ix       ; 2 uses
  %index.next1818 = add nuw i64 %index1813, 4     ; 2 uses
  %i.ja = icmp eq i64 %index.next1818, %n.vec1811
  br i1 %i.ja, label %middle.block1819, label %vector.body1812, !llvm.loop !327

middle.block1819:                                 ; preds = %vector.body1812
  %bin.rdx1820 = add <2 x i64> %i.iz, %i.iy
  %i.jb = tail call i64 @llvm.vector.reduce.add.v2i64(<2 x i64> %bin.rdx1820) ; 2 uses
  %cmp.n1821 = icmp eq i64 %i.ih, %n.vec1811
  br i1 %cmp.n1821, label %.preheader1071, label %.lr.ph1172.preheader2098

.lr.ph1172.preheader2098:                         ; preds = %.lr.ph1172.preheader, %middle.block1819
  %.sroa.0.0.i2291170.ph = phi i64 [ 0, %.lr.ph1172.preheader ], [ %i.jb, %middle.block1819 ]
  %.sroa.04.0.i2281169.ph = phi ptr [ %i.if, %.lr.ph1172.preheader ], [ %i.is, %middle.block1819 ]
  br label %.lr.ph1172

.preheader1071:                                   ; preds = %.lr.ph1172, %middle.block1819, %bb.t
  %.sroa.0.0.i229.lcssa = phi i64 [ 0, %bb.t ], [ %i.jb, %middle.block1819 ], [ %i.jh, %.lr.ph1172 ] ; 2 uses
  %i.jc = icmp eq i64 %i.il, 0
  br i1 %i.jc, label %._crit_edge1183, label %.lr.ph1176.preheader

.lr.ph1172:                                       ; preds = %.lr.ph1172.preheader2098, %.lr.ph1172
  %.sroa.0.0.i2291170 = phi i64 [ %i.jh, %.lr.ph1172 ], [ %.sroa.0.0.i2291170.ph, %.lr.ph1172.preheader2098 ]
  %.sroa.04.0.i2281169 = phi ptr [ %i.jd, %.lr.ph1172 ], [ %.sroa.04.0.i2281169.ph, %.lr.ph1172.preheader2098 ] ; 2 uses
  %i.jd = getelementptr inbounds nuw i8, ptr %.sroa.04.0.i2281169, i64 1 ; 2 uses
  %i.je = load i8, ptr %.sroa.04.0.i2281169, align 1, !noundef !5
  %i.jf = icmp ugt i8 %i.je, -17
  %i.jg = zext i1 %i.jf to i64
  %i.jh = add i64 %.sroa.0.0.i2291170, %i.jg      ; 2 uses
  %i.ji = icmp eq ptr %i.jd, %i.iq
  br i1 %i.ji, label %.preheader1071, label %.lr.ph1172, !llvm.loop !328

.lr.ph1176.preheader:                             ; preds = %.preheader1071, %._crit_edge1177
  %.sroa.0.1.i2321181 = phi i64 [ %i.ln, %._crit_edge1177 ], [ %.sroa.0.0.i229.lcssa, %.preheader1071 ]
  %.sroa.5713.01180 = phi i64 [ %i.jk, %._crit_edge1177 ], [ %i.il, %.preheader1071 ] ; 2 uses
  %.sroa.0712.01179 = phi ptr [ %i.jj, %._crit_edge1177 ], [ %i.ij, %.preheader1071 ] ; 4 uses
  %..i.i = tail call noundef i64 @llvm.umin.i64(i64 %.sroa.5713.01180, i64 255) ; 3 uses
  %i.jj = getelementptr inbounds nuw [16 x i8], ptr %.sroa.0712.01179, i64 %..i.i
  %i.jk = sub nuw nsw i64 %.sroa.5713.01180, %..i.i ; 2 uses
  %.idx1321 = shl nuw nsw i64 %..i.i, 4           ; 2 uses
  %i.jl = getelementptr inbounds nuw i8, ptr %.sroa.0712.01179, i64 %.idx1321
  %i.jm = add nsw i64 %.idx1321, -16              ; 2 uses
  %i.jn = lshr exact i64 %i.jm, 4
  %i.jo = add nuw nsw i64 %i.jn, 1
  %xtraiter2118 = and i64 %i.jo, 3                ; 2 uses
  %lcmp.mod2119.not = icmp eq i64 %xtraiter2118, 0
  br i1 %lcmp.mod2119.not, label %.lr.ph1176.prol.loopexit, label %.lr.ph1176.prol

.lr.ph1176.prol:                                  ; preds = %.lr.ph1176.preheader, %.lr.ph1176.prol
  %.sroa.016.0.i2341174.prol = phi ptr [ %i.jq, %.lr.ph1176.prol ], [ %.sroa.0712.01179, %.lr.ph1176.preheader ] ; 2 uses
  %i.jp = phi <16 x i8> [ %i.ju, %.lr.ph1176.prol ], [ zeroinitializer, %.lr.ph1176.preheader ]
  %prol.iter2120 = phi i64 [ %prol.iter2120.next, %.lr.ph1176.prol ], [ 0, %.lr.ph1176.preheader ]
  %i.jq = getelementptr inbounds nuw i8, ptr %.sroa.016.0.i2341174.prol, i64 16 ; 2 uses
  %i.jr = load <16 x i8>, ptr %.sroa.016.0.i2341174.prol, align 16, !alias.scope !406, !noalias !407
  %i.js = icmp ugt <16 x i8> %i.jr, splat (i8 -17)
  %i.jt = zext <16 x i1> %i.js to <16 x i8>
  %i.ju = add <16 x i8> %i.jp, %i.jt              ; 3 uses
  %prol.iter2120.next = add i64 %prol.iter2120, 1 ; 2 uses
  %prol.iter2120.cmp.not = icmp eq i64 %prol.iter2120.next, %xtraiter2118
  br i1 %prol.iter2120.cmp.not, label %.lr.ph1176.prol.loopexit, label %.lr.ph1176.prol, !llvm.loop !333

.lr.ph1176.prol.loopexit:                         ; preds = %.lr.ph1176.prol, %.lr.ph1176.preheader
  %.lcssa2096.unr = phi <16 x i8> [ poison, %.lr.ph1176.preheader ], [ %i.ju, %.lr.ph1176.prol ]
  %.sroa.016.0.i2341174.unr = phi ptr [ %.sroa.0712.01179, %.lr.ph1176.preheader ], [ %i.jq, %.lr.ph1176.prol ]
  %.unr2121 = phi <16 x i8> [ zeroinitializer, %.lr.ph1176.preheader ], [ %i.ju, %.lr.ph1176.prol ]
  %i.jv = icmp ult i64 %i.jm, 48
  br i1 %i.jv, label %._crit_edge1177, label %.lr.ph1176

._crit_edge1183:                                  ; preds = %._crit_edge1177, %.preheader1071
  %.sroa.0.1.i232.lcssa = phi i64 [ %.sroa.0.0.i229.lcssa, %.preheader1071 ], [ %i.ln, %._crit_edge1177 ] ; 3 uses
  %i.jw = getelementptr inbounds nuw i8, ptr %i.in, i64 %i.ip
  %i.jx = icmp samesign eq i64 %i.ip, 0
  br i1 %i.jx, label %_RINvNtCsk17MtNlfUKQ_11str_indices5utf1621count_surrogates_implNtNtNtCskKLDkoKarTP_4core9core_arch3x867___m128iECs2wCc12Mnjqg_5ropey.exit238, label %.lr.ph1188.preheader

.lr.ph1188.preheader:                             ; preds = %._crit_edge1183
  %min.iters.check1825 = icmp ult i64 %i.ip, 4
  br i1 %min.iters.check1825, label %.lr.ph1188.preheader2092, label %vector.ph1826

vector.ph1826:                                    ; preds = %.lr.ph1188.preheader
  %n.vec1827 = and i64 %i.ip, -4                  ; 3 uses
  %i.jy = getelementptr i8, ptr %i.in, i64 %n.vec1827
  %i.jz = insertelement <2 x i64> <i64 poison, i64 0>, i64 %.sroa.0.1.i232.lcssa, i64 0
  br label %vector.body1828

vector.body1828:                                  ; preds = %vector.body1828, %vector.ph1826
  %index1829 = phi i64 [ 0, %vector.ph1826 ], [ %index.next1835, %vector.body1828 ] ; 2 uses
  %vec.phi1830 = phi <2 x i64> [ %i.jz, %vector.ph1826 ], [ %i.kf, %vector.body1828 ]
  %vec.phi1831 = phi <2 x i64> [ zeroinitializer, %vector.ph1826 ], [ %i.kg, %vector.body1828 ]
  %next.gep1832 = getelementptr i8, ptr %i.in, i64 %index1829 ; 2 uses
  %i.ka = getelementptr i8, ptr %next.gep1832, i64 2
  %wide.load1833 = load <2 x i8>, ptr %next.gep1832, align 1
  %wide.load1834 = load <2 x i8>, ptr %i.ka, align 1
  %i.kb = icmp ugt <2 x i8> %wide.load1833, splat (i8 -17)
  %i.kc = icmp ugt <2 x i8> %wide.load1834, splat (i8 -17)
  %i.kd = zext <2 x i1> %i.kb to <2 x i64>
  %i.ke = zext <2 x i1> %i.kc to <2 x i64>
  %i.kf = add <2 x i64> %vec.phi1830, %i.kd       ; 2 uses
  %i.kg = add <2 x i64> %vec.phi1831, %i.ke       ; 2 uses
  %index.next1835 = add nuw i64 %index1829, 4     ; 2 uses
  %i.kh = icmp eq i64 %index.next1835, %n.vec1827
  br i1 %i.kh, label %middle.block1836, label %vector.body1828, !llvm.loop !334

middle.block1836:                                 ; preds = %vector.body1828
  %bin.rdx1837 = add <2 x i64> %i.kg, %i.kf
  %i.ki = tail call i64 @llvm.vector.reduce.add.v2i64(<2 x i64> %bin.rdx1837) ; 2 uses
  %cmp.n1838 = icmp eq i64 %i.ip, %n.vec1827
  br i1 %cmp.n1838, label %_RINvNtCsk17MtNlfUKQ_11str_indices5utf1621count_surrogates_implNtNtNtCskKLDkoKarTP_4core9core_arch3x867___m128iECs2wCc12Mnjqg_5ropey.exit238, label %.lr.ph1188.preheader2092

.lr.ph1188.preheader2092:                         ; preds = %.lr.ph1188.preheader, %middle.block1836
  %.sroa.0.2.i2361186.ph = phi i64 [ %.sroa.0.1.i232.lcssa, %.lr.ph1188.preheader ], [ %i.ki, %middle.block1836 ]
  %.sroa.012.0.i2351185.ph = phi ptr [ %i.in, %.lr.ph1188.preheader ], [ %i.jy, %middle.block1836 ]
  br label %.lr.ph1188

.lr.ph1188:                                       ; preds = %.lr.ph1188.preheader2092, %.lr.ph1188
  %.sroa.0.2.i2361186 = phi i64 [ %i.kn, %.lr.ph1188 ], [ %.sroa.0.2.i2361186.ph, %.lr.ph1188.preheader2092 ]
  %.sroa.012.0.i2351185 = phi ptr [ %i.kj, %.lr.ph1188 ], [ %.sroa.012.0.i2351185.ph, %.lr.ph1188.preheader2092 ] ; 2 uses
  %i.kj = getelementptr inbounds nuw i8, ptr %.sroa.012.0.i2351185, i64 1 ; 2 uses
  %i.kk = load i8, ptr %.sroa.012.0.i2351185, align 1, !noundef !5
  %i.kl = icmp ugt i8 %i.kk, -17
  %i.km = zext i1 %i.kl to i64
  %i.kn = add i64 %.sroa.0.2.i2361186, %i.km      ; 2 uses
  %i.ko = icmp eq ptr %i.kj, %i.jw
  br i1 %i.ko, label %_RINvNtCsk17MtNlfUKQ_11str_indices5utf1621count_surrogates_implNtNtNtCskKLDkoKarTP_4core9core_arch3x867___m128iECs2wCc12Mnjqg_5ropey.exit238, label %.lr.ph1188, !llvm.loop !335

.lr.ph1176:                                       ; preds = %.lr.ph1176.prol.loopexit, %.lr.ph1176
  %.sroa.016.0.i2341174 = phi ptr [ %i.lf, %.lr.ph1176 ], [ %.sroa.016.0.i2341174.unr, %.lr.ph1176.prol.loopexit ] ; 5 uses
  %i.kp = phi <16 x i8> [ %i.lj, %.lr.ph1176 ], [ %.unr2121, %.lr.ph1176.prol.loopexit ]
  %i.kq = getelementptr inbounds nuw i8, ptr %.sroa.016.0.i2341174, i64 16
  %i.kr = load <16 x i8>, ptr %.sroa.016.0.i2341174, align 16, !alias.scope !406, !noalias !407
  %i.ks = icmp ugt <16 x i8> %i.kr, splat (i8 -17)
  %i.kt = zext <16 x i1> %i.ks to <16 x i8>
  %i.ku = add <16 x i8> %i.kp, %i.kt
  %i.kv = getelementptr inbounds nuw i8, ptr %.sroa.016.0.i2341174, i64 32
  %i.kw = load <16 x i8>, ptr %i.kq, align 16, !alias.scope !406, !noalias !407
  %i.kx = icmp ugt <16 x i8> %i.kw, splat (i8 -17)
  %i.ky = zext <16 x i1> %i.kx to <16 x i8>
  %i.kz = add <16 x i8> %i.ku, %i.ky
  %i.la = getelementptr inbounds nuw i8, ptr %.sroa.016.0.i2341174, i64 48
  %i.lb = load <16 x i8>, ptr %i.kv, align 16, !alias.scope !406, !noalias !407
  %i.lc = icmp ugt <16 x i8> %i.lb, splat (i8 -17)
  %i.ld = zext <16 x i1> %i.lc to <16 x i8>
  %i.le = add <16 x i8> %i.kz, %i.ld
  %i.lf = getelementptr inbounds nuw i8, ptr %.sroa.016.0.i2341174, i64 64 ; 2 uses
  %i.lg = load <16 x i8>, ptr %i.la, align 16, !alias.scope !406, !noalias !407
  %i.lh = icmp ugt <16 x i8> %i.lg, splat (i8 -17)
  %i.li = zext <16 x i1> %i.lh to <16 x i8>
  %i.lj = add <16 x i8> %i.le, %i.li              ; 2 uses
  %i.lk = icmp eq ptr %i.lf, %i.jl
  br i1 %i.lk, label %._crit_edge1177, label %.lr.ph1176

._crit_edge1177:                                  ; preds = %.lr.ph1176, %.lr.ph1176.prol.loopexit
  %.lcssa2096 = phi <16 x i8> [ %.lcssa2096.unr, %.lr.ph1176.prol.loopexit ], [ %i.lj, %.lr.ph1176 ]
  %i.ll = tail call <2 x i64> @llvm.x86.sse2.psad.bw(<16 x i8> %.lcssa2096, <16 x i8> zeroinitializer) ; 2 uses
  %.sroa.0.0.vec.extract.i = extractelement <2 x i64> %i.ll, i64 0
  %.sroa.0.8.vec.extract.i = extractelement <2 x i64> %i.ll, i64 1
  %i.lm = add i64 %.sroa.0.8.vec.extract.i, %.sroa.0.1.i2321181
  %i.ln = add i64 %i.lm, %.sroa.0.0.vec.extract.i ; 2 uses
  %i.lo = icmp eq i64 %i.jk, 0
  br i1 %i.lo, label %._crit_edge1183, label %.lr.ph1176.preheader

_RINvNtCsk17MtNlfUKQ_11str_indices5utf1621count_surrogates_implNtNtNtCskKLDkoKarTP_4core9core_arch3x867___m128iECs2wCc12Mnjqg_5ropey.exit238: ; preds = %.lr.ph1188, %middle.block1836, %.thread1519, %bb.s, %._crit_edge1183, %_RINvNtCsk17MtNlfUKQ_11str_indices5chars10count_implNtNtNtCskKLDkoKarTP_4core9core_arch3x867___m128iECs2wCc12Mnjqg_5ropey.exit213
  %.sroa.0.0.i2121527 = phi i64 [ %.lcssa2102, %_RINvNtCsk17MtNlfUKQ_11str_indices5chars10count_implNtNtNtCskKLDkoKarTP_4core9core_arch3x867___m128iECs2wCc12Mnjqg_5ropey.exit213 ], [ %.sroa.0.0.i2121534, %._crit_edge1183 ], [ 0, %.thread1519 ], [ 0, %bb.s ], [ %.sroa.0.0.i2121534, %middle.block1836 ], [ %.sroa.0.0.i2121534, %.lr.ph1188 ]
  %.sroa.6128.015151526 = phi i64 [ %.sroa.6128.0, %_RINvNtCsk17MtNlfUKQ_11str_indices5chars10count_implNtNtNtCskKLDkoKarTP_4core9core_arch3x867___m128iECs2wCc12Mnjqg_5ropey.exit213 ], [ %.sroa.6128.0, %._crit_edge1183 ], [ 0, %.thread1519 ], [ 0, %bb.s ], [ %.sroa.6128.0, %middle.block1836 ], [ %.sroa.6128.0, %.lr.ph1188 ]
  %.sroa.0124.015181525 = phi ptr [ %.sroa.0124.0, %_RINvNtCsk17MtNlfUKQ_11str_indices5chars10count_implNtNtNtCskKLDkoKarTP_4core9core_arch3x867___m128iECs2wCc12Mnjqg_5ropey.exit213 ], [ %.sroa.0124.0, %._crit_edge1183 ], [ %.sroa.0124.01514, %.thread1519 ], [ %.sroa.0124.0, %bb.s ], [ %.sroa.0124.0, %middle.block1836 ], [ %.sroa.0124.0, %.lr.ph1188 ]
  %.sroa.0.3.i237 = phi i64 [ 0, %_RINvNtCsk17MtNlfUKQ_11str_indices5chars10count_implNtNtNtCskKLDkoKarTP_4core9core_arch3x867___m128iECs2wCc12Mnjqg_5ropey.exit213 ], [ %.sroa.0.1.i232.lcssa, %._crit_edge1183 ], [ 0, %.thread1519 ], [ 0, %bb.s ], [ %i.ki, %middle.block1836 ], [ %i.kn, %.lr.ph1188 ]
  %i.lp = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr null, ptr %i.lp, align 8
  %.sroa.435.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %.sroa.0124.015181525, ptr %.sroa.435.0..sroa_idx, align 8
  %.sroa.536.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 %.sroa.6128.015151526, ptr %.sroa.536.0..sroa_idx, align 8
  %.sroa.637.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i64 %.sroa.0.0.i2121527, ptr %.sroa.637.0..sroa_idx, align 8
  %.sroa.738.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i64 %.sroa.0.3.i237, ptr %.sroa.738.0..sroa_idx, align 8
  %.sroa.839.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 48
  store i64 %.sroa.0.0, ptr %.sroa.839.0..sroa_idx, align 8
  br label %bb.bf

bb.u:                                             ; preds = %bb.p
  tail call void @_RNvNtCskKLDkoKarTP_4core6option13unwrap_failed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @37) #17
  unreachable

bb.v:                                             ; preds = %bb.p
  %i.lq = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.lr = load ptr, ptr %i.lq, align 8, !nonnull !5, !noundef !5 ; 6 uses
  %i.ls = getelementptr inbounds nuw [16 x i8], ptr %i.lr, i64 %i.cr ; 2 uses
  %i.lt = load ptr, ptr %i.ls, align 8, !nonnull !5, !align !23, !noundef !5
  %i.lu = getelementptr inbounds nuw i8, ptr %i.ls, i64 8 ; 3 uses
  %i.lv = load i64, ptr %i.lu, align 8, !noundef !5 ; 6 uses
  %i.lw = load ptr, ptr %i.lt, align 8, !nonnull !5, !noundef !5
  %i.lx = getelementptr inbounds nuw i8, ptr %i.lw, i64 16
  %i.ly = tail call noundef nonnull align 8 ptr @_RNvMNtNtCs2wCc12Mnjqg_5ropey4tree4nodeNtB2_4Node8children(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(1008) %i.lx)
  %i.lz = tail call { ptr, i64 } @_RNvMNtNtCs2wCc12Mnjqg_5ropey4tree13node_childrenNtB2_12NodeChildren4info(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(968) %i.ly) ; 2 uses
  %i.ma = extractvalue { ptr, i64 } %i.lz, 1      ; 2 uses
  %.not174 = icmp ugt i64 %i.lv, %i.ma
  br i1 %.not174, label %bb.x, label %bb.w, !prof !18

bb.w:                                             ; preds = %bb.v
  %i.mb = extractvalue { ptr, i64 } %i.lz, 0      ; 4 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.mb) ]
  switch i64 %i.lv, label %.preheader1070.preheader.new [
    i64 0, label %_RINvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB7_4IterNtNtNtCs2wCc12Mnjqg_5ropey4tree9text_info8TextInfoENtNtNtNtBb_4iter6traits8iterator8Iterator4foldBQ_NCNvMs4_NtBW_4iterNtB2A_5Lines9prev_impl0EBW_.exit
    i64 1, label %.preheader1070.epil.preheader
  ]

.preheader1070.preheader.new:                     ; preds = %bb.w
  %unroll_iter2128 = and i64 %i.lv, -2
  br label %.preheader1070

.preheader1070:                                   ; preds = %.preheader1070, %.preheader1070.preheader.new
  %.sroa.01.0.i434 = phi i64 [ 0, %.preheader1070.preheader.new ], [ %i.mm, %.preheader1070 ] ; 3 uses
  %i.mc = phi <4 x i64> [ zeroinitializer, %.preheader1070.preheader.new ], [ %i.ml, %.preheader1070 ]
  %niter2129 = phi i64 [ 0, %.preheader1070.preheader.new ], [ %niter2129.next.1, %.preheader1070 ]
  %i.md = getelementptr inbounds nuw [32 x i8], ptr %i.mb, i64 %.sroa.01.0.i434
  %i.me = load <4 x i64>, ptr %i.md, align 8, !alias.scope !408, !noalias !409
  %i.mf = shufflevector <4 x i64> %i.me, <4 x i64> poison, <4 x i32> <i32 1, i32 2, i32 3, i32 0>
  %i.mg = add <4 x i64> %i.mf, %i.mc
  %i.mh = getelementptr inbounds nuw [32 x i8], ptr %i.mb, i64 %.sroa.01.0.i434
  %i.mi = getelementptr inbounds nuw i8, ptr %i.mh, i64 32
  %i.mj = load <4 x i64>, ptr %i.mi, align 8, !alias.scope !408, !noalias !409
  %i.mk = shufflevector <4 x i64> %i.mj, <4 x i64> poison, <4 x i32> <i32 1, i32 2, i32 3, i32 0>
  %i.ml = add <4 x i64> %i.mk, %i.mg              ; 3 uses
  %i.mm = add nuw i64 %.sroa.01.0.i434, 2         ; 2 uses
  %niter2129.next.1 = add nuw i64 %niter2129, 2   ; 2 uses
  %niter2129.ncmp.1 = icmp eq i64 %niter2129.next.1, %unroll_iter2128
  br i1 %niter2129.ncmp.1, label %_RINvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB7_4IterNtNtNtCs2wCc12Mnjqg_5ropey4tree9text_info8TextInfoENtNtNtNtBb_4iter6traits8iterator8Iterator4foldBQ_NCNvMs4_NtBW_4iterNtB2A_5Lines9prev_impl0EBW_.exit.loopexit.unr-lcssa, label %.preheader1070

_RINvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB7_4IterNtNtNtCs2wCc12Mnjqg_5ropey4tree9text_info8TextInfoENtNtNtNtBb_4iter6traits8iterator8Iterator4foldBQ_NCNvMs4_NtBW_4iterNtB2A_5Lines9prev_impl0EBW_.exit.loopexit.unr-lcssa: ; preds = %.preheader1070
  %2 = trunc i64 %i.lv to i1
  br i1 %2, label %.preheader1070.epil.preheader, label %_RINvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB7_4IterNtNtNtCs2wCc12Mnjqg_5ropey4tree9text_info8TextInfoENtNtNtNtBb_4iter6traits8iterator8Iterator4foldBQ_NCNvMs4_NtBW_4iterNtB2A_5Lines9prev_impl0EBW_.exit

.preheader1070.epil.preheader:                    ; preds = %bb.w, %_RINvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB7_4IterNtNtNtCs2wCc12Mnjqg_5ropey4tree9text_info8TextInfoENtNtNtNtBb_4iter6traits8iterator8Iterator4foldBQ_NCNvMs4_NtBW_4iterNtB2A_5Lines9prev_impl0EBW_.exit.loopexit.unr-lcssa
  %.sroa.01.0.i434.epil.init = phi i64 [ 0, %bb.w ], [ %i.mm, %_RINvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB7_4IterNtNtNtCs2wCc12Mnjqg_5ropey4tree9text_info8TextInfoENtNtNtNtBb_4iter6traits8iterator8Iterator4foldBQ_NCNvMs4_NtBW_4iterNtB2A_5Lines9prev_impl0EBW_.exit.loopexit.unr-lcssa ]
  %.epil.init = phi <4 x i64> [ zeroinitializer, %bb.w ], [ %i.ml, %_RINvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB7_4IterNtNtNtCs2wCc12Mnjqg_5ropey4tree9text_info8TextInfoENtNtNtNtBb_4iter6traits8iterator8Iterator4foldBQ_NCNvMs4_NtBW_4iterNtB2A_5Lines9prev_impl0EBW_.exit.loopexit.unr-lcssa ]
  %lcmp.mod2127 = trunc i64 %i.lv to i1
  tail call void @llvm.assume(i1 %lcmp.mod2127)
  %i.mn = getelementptr inbounds nuw [32 x i8], ptr %i.mb, i64 %.sroa.01.0.i434.epil.init
  %i.mo = load <4 x i64>, ptr %i.mn, align 8, !alias.scope !408, !noalias !409
  %i.mp = shufflevector <4 x i64> %i.mo, <4 x i64> poison, <4 x i32> <i32 1, i32 2, i32 3, i32 0>
  %i.mq = add <4 x i64> %i.mp, %.epil.init
  br label %_RINvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB7_4IterNtNtNtCs2wCc12Mnjqg_5ropey4tree9text_info8TextInfoENtNtNtNtBb_4iter6traits8iterator8Iterator4foldBQ_NCNvMs4_NtBW_4iterNtB2A_5Lines9prev_impl0EBW_.exit

_RINvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB7_4IterNtNtNtCs2wCc12Mnjqg_5ropey4tree9text_info8TextInfoENtNtNtNtBb_4iter6traits8iterator8Iterator4foldBQ_NCNvMs4_NtBW_4iterNtB2A_5Lines9prev_impl0EBW_.exit: ; preds = %.preheader1070.epil.preheader, %_RINvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB7_4IterNtNtNtCs2wCc12Mnjqg_5ropey4tree9text_info8TextInfoENtNtNtNtBb_4iter6traits8iterator8Iterator4foldBQ_NCNvMs4_NtBW_4iterNtB2A_5Lines9prev_impl0EBW_.exit.loopexit.unr-lcssa, %bb.w
  %i.mr = phi <4 x i64> [ zeroinitializer, %bb.w ], [ %i.ml, %_RINvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB7_4IterNtNtNtCs2wCc12Mnjqg_5ropey4tree9text_info8TextInfoENtNtNtNtBb_4iter6traits8iterator8Iterator4foldBQ_NCNvMs4_NtBW_4iterNtB2A_5Lines9prev_impl0EBW_.exit.loopexit.unr-lcssa ], [ %i.mq, %.preheader1070.epil.preheader ] ; 3 uses
  call fastcc void @_RNvMNtNtCs2wCc12Mnjqg_5ropey4tree9text_infoNtB2_8TextInfo8from_str(ptr noalias nofree noundef align 8 captures(none) dereferenceable(32) %i.g, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.n, i64 noundef %i.s) #18
  %i.ms = load i64, ptr %i.g, align 8, !noundef !5 ; 2 uses
  %i.mt = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %i.mu = load <2 x i64>, ptr %i.mt, align 8      ; 2 uses
  %i.mv = getelementptr inbounds nuw i8, ptr %i.g, i64 24
  %i.mw = load i64, ptr %i.mv, align 8, !noundef !5 ; 2 uses
  %i.mx = extractelement <4 x i64> %i.mr, i64 3
  %i.my = add i64 %i.ms, %i.mx
  %i.mz = shufflevector <4 x i64> %i.mr, <4 x i64> poison, <2 x i32> <i32 0, i32 1>
  %i.na = add <2 x i64> %i.mu, %i.mz
  %i.nb = extractelement <4 x i64> %i.mr, i64 2
  %i.nc = add i64 %i.mw, %i.nb
  %i.nd = icmp ne i32 %i.r, 0
  %i.ne = getelementptr [16 x i8], ptr %i.lr, i64 %i.cp ; 2 uses
  %i.nf = getelementptr i8, ptr %i.ne, i64 -16
  %i.ng = getelementptr i8, ptr %i.ne, i64 -8
  br label %bb.y

bb.x:                                             ; preds = %bb.v
  tail call void @_RNvNtNtCskKLDkoKarTP_4core5slice5index16slice_index_fail(i64 noundef 0, i64 noundef %i.lv, i64 noundef %i.ma, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @47) #17
  unreachable

bb.y:                                             ; preds = %_RINvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB7_4IterNtNtNtCs2wCc12Mnjqg_5ropey4tree9text_info8TextInfoENtNtNtNtBb_4iter6traits8iterator8Iterator4foldBQ_NCNvMs4_NtBW_4iterNtB2A_5Lines9prev_impl0EBW_.exit, %bb.an
  %i.nh = phi i64 [ %i.ms, %_RINvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB7_4IterNtNtNtCs2wCc12Mnjqg_5ropey4tree9text_info8TextInfoENtNtNtNtBb_4iter6traits8iterator8Iterator4foldBQ_NCNvMs4_NtBW_4iterNtB2A_5Lines9prev_impl0EBW_.exit ], [ %i.se, %bb.an ] ; 2 uses
  %i.ni = phi i64 [ %i.cn, %_RINvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB7_4IterNtNtNtCs2wCc12Mnjqg_5ropey4tree9text_info8TextInfoENtNtNtNtBb_4iter6traits8iterator8Iterator4foldBQ_NCNvMs4_NtBW_4iterNtB2A_5Lines9prev_impl0EBW_.exit ], [ %i.sg, %bb.an ] ; 6 uses
  %.sroa.22.0 = phi i64 [ %i.nc, %_RINvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB7_4IterNtNtNtCs2wCc12Mnjqg_5ropey4tree9text_info8TextInfoENtNtNtNtBb_4iter6traits8iterator8Iterator4foldBQ_NCNvMs4_NtBW_4iterNtB2A_5Lines9prev_impl0EBW_.exit ], [ %.sroa.22.4, %bb.an ] ; 3 uses
  %.sroa.0515.0 = phi i64 [ %i.my, %_RINvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB7_4IterNtNtNtCs2wCc12Mnjqg_5ropey4tree9text_info8TextInfoENtNtNtNtBb_4iter6traits8iterator8Iterator4foldBQ_NCNvMs4_NtBW_4iterNtB2A_5Lines9prev_impl0EBW_.exit ], [ %.sroa.0515.4, %bb.an ] ; 3 uses
  %.sroa.061.0 = phi i64 [ %i.cr, %_RINvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB7_4IterNtNtNtCs2wCc12Mnjqg_5ropey4tree9text_info8TextInfoENtNtNtNtBb_4iter6traits8iterator8Iterator4foldBQ_NCNvMs4_NtBW_4iterNtB2A_5Lines9prev_impl0EBW_.exit ], [ %.sroa.061.2, %bb.an ] ; 6 uses
  %.sroa.042.0 = phi i1 [ %i.nd, %_RINvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB7_4IterNtNtNtCs2wCc12Mnjqg_5ropey4tree9text_info8TextInfoENtNtNtNtBb_4iter6traits8iterator8Iterator4foldBQ_NCNvMs4_NtBW_4iterNtB2A_5Lines9prev_impl0EBW_.exit ], [ true, %bb.an ]
  %i.nj = phi <2 x i64> [ %i.na, %_RINvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB7_4IterNtNtNtCs2wCc12Mnjqg_5ropey4tree9text_info8TextInfoENtNtNtNtBb_4iter6traits8iterator8Iterator4foldBQ_NCNvMs4_NtBW_4iterNtB2A_5Lines9prev_impl0EBW_.exit ], [ %i.rh, %bb.an ] ; 3 uses
  %i.nk = phi <2 x i64> [ %i.mu, %_RINvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB7_4IterNtNtNtCs2wCc12Mnjqg_5ropey4tree9text_info8TextInfoENtNtNtNtBb_4iter6traits8iterator8Iterator4foldBQ_NCNvMs4_NtBW_4iterNtB2A_5Lines9prev_impl0EBW_.exit ], [ %i.sf, %bb.an ] ; 2 uses
  %i.nl = load i64, ptr %i.lu, align 8, !noundef !5 ; 2 uses
  %i.nm = icmp eq i64 %i.nl, 0
  br i1 %i.nm, label %.lr.ph1192, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.nn = add i64 %i.nl, -1
  store i64 %i.nn, ptr %i.lu, align 8
  br label %.loopexit1067

.lr.ph1192:                                       ; preds = %bb.y, %bb.ab
  %.sroa.043.01191 = phi i64 [ %i.ns, %bb.ab ], [ %i.cr, %bb.y ] ; 7 uses
  %i.no = getelementptr inbounds nuw [16 x i8], ptr %i.lr, i64 %.sroa.043.01191 ; 4 uses
  %i.np = getelementptr inbounds nuw i8, ptr %i.no, i64 8
  %i.nq = load i64, ptr %i.np, align 8, !noundef !5 ; 2 uses
  %i.nr = icmp eq i64 %i.nq, 0
  br i1 %i.nr, label %bb.ab, label %bb.ac

bb.aa:                                            ; preds = %bb.ab
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking18panic_bounds_check(i64 noundef %i.ns, i64 noundef %i.cp, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @38) #17
  unreachable

bb.ab:                                            ; preds = %.lr.ph1192
  %i.ns = add nsw i64 %.sroa.043.01191, -1        ; 3 uses
  %i.nt = icmp ult i64 %i.ns, %i.cp
  br i1 %i.nt, label %.lr.ph1192, label %bb.aa

bb.ac:                                            ; preds = %.lr.ph1192
  %i.nu = getelementptr inbounds nuw i8, ptr %i.no, i64 8 ; 2 uses
  %i.nv = icmp ult i64 %.sroa.043.01191, %.sroa.061.0
  br i1 %i.nv, label %bb.ad, label %.loopexit1068

bb.ad:                                            ; preds = %bb.ac
  %.not176 = icmp ugt i64 %.sroa.061.0, %i.cp
  br i1 %.not176, label %bb.ae, label %.lr.ph1213.preheader, !prof !7

bb.ae:                                            ; preds = %bb.ad
  tail call void @_RNvNtNtCskKLDkoKarTP_4core5slice5index16slice_index_fail(i64 noundef %.sroa.043.01191, i64 noundef %.sroa.061.0, i64 noundef %i.cp, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @41) #17
  unreachable

.lr.ph1213.preheader:                             ; preds = %bb.ad
  %i.nw = getelementptr inbounds nuw [16 x i8], ptr %i.lr, i64 %.sroa.061.0
  br label %.lr.ph1213

.loopexit:                                        ; preds = %.lr.ph1202.prol.loopexit, %.lr.ph1202, %bb.af
  %.sroa.22.3.lcssa = phi i64 [ %.sroa.22.21207, %bb.af ], [ %.lcssa2024.unr, %.lr.ph1202.prol.loopexit ], [ %i.qk, %.lr.ph1202 ] ; 2 uses
  %.sroa.0515.3.lcssa = phi i64 [ %.sroa.0515.21210, %bb.af ], [ %.lcssa2026.unr, %.lr.ph1202.prol.loopexit ], [ %i.qi, %.lr.ph1202 ] ; 2 uses
  %i.nx = phi <2 x i64> [ %i.nz, %bb.af ], [ %.lcssa2025.unr, %.lr.ph1202.prol.loopexit ], [ %i.qj, %.lr.ph1202 ] ; 2 uses
  %i.ny = icmp eq ptr %i.oa, %i.nw
  br i1 %i.ny, label %.loopexit1068.loopexit, label %.lr.ph1213

.lr.ph1213:                                       ; preds = %.lr.ph1213.preheader, %.loopexit
  %.sroa.055.01211 = phi ptr [ %i.oa, %.loopexit ], [ %i.no, %.lr.ph1213.preheader ] ; 3 uses
  %.sroa.0515.21210 = phi i64 [ %.sroa.0515.3.lcssa, %.loopexit ], [ %.sroa.0515.0, %.lr.ph1213.preheader ] ; 3 uses
  %.sroa.22.21207 = phi i64 [ %.sroa.22.3.lcssa, %.loopexit ], [ %.sroa.22.0, %.lr.ph1213.preheader ] ; 3 uses
  %i.nz = phi <2 x i64> [ %i.nx, %.loopexit ], [ %i.nj, %.lr.ph1213.preheader ] ; 3 uses
  %i.oa = getelementptr inbounds nuw i8, ptr %.sroa.055.01211, i64 16 ; 2 uses
  %i.ob = load ptr, ptr %.sroa.055.01211, align 8, !nonnull !5, !align !23, !noundef !5
  %i.oc = load ptr, ptr %i.ob, align 8, !nonnull !5, !noundef !5
  %i.od = getelementptr inbounds nuw i8, ptr %i.oc, i64 16
  %i.oe = tail call noundef nonnull align 8 ptr @_RNvMNtNtCs2wCc12Mnjqg_5ropey4tree4nodeNtB2_4Node8children(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(1008) %i.od)
  %i.of = tail call { ptr, i64 } @_RNvMNtNtCs2wCc12Mnjqg_5ropey4tree13node_childrenNtB2_12NodeChildren4info(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(968) %i.oe) ; 2 uses
  %i.og = extractvalue { ptr, i64 } %i.of, 1      ; 2 uses
  %i.oh = getelementptr inbounds nuw i8, ptr %.sroa.055.01211, i64 8
  %i.oi = load i64, ptr %i.oh, align 8, !noundef !5 ; 4 uses
  %.not177 = icmp ugt i64 %i.oi, %i.og
  br i1 %.not177, label %bb.ag, label %bb.af, !prof !18

bb.af:                                            ; preds = %.lr.ph1213
  %i.oj = extractvalue { ptr, i64 } %i.of, 0      ; 4 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.oj) ]
  %.idx1322 = shl i64 %i.oi, 5                    ; 2 uses
  %i.ok = getelementptr inbounds nuw i8, ptr %i.oj, i64 %.idx1322
  %i.ol = icmp eq i64 %i.oi, 0
  br i1 %i.ol, label %.loopexit, label %.lr.ph1202.preheader

.lr.ph1202.preheader:                             ; preds = %bb.af
  %i.om = add i64 %.idx1322, -32                  ; 2 uses
  %i.on = lshr exact i64 %i.om, 5
  %i.oo = add nuw nsw i64 %i.on, 1
  %xtraiter2130 = and i64 %i.oo, 3                ; 2 uses
  %lcmp.mod2131.not = icmp eq i64 %xtraiter2130, 0
  br i1 %lcmp.mod2131.not, label %.lr.ph1202.prol.loopexit, label %.lr.ph1202.prol

.lr.ph1202.prol:                                  ; preds = %.lr.ph1202.preheader, %.lr.ph1202.prol
  %.sroa.058.01200.prol = phi ptr [ %i.oq, %.lr.ph1202.prol ], [ %i.oj, %.lr.ph1202.preheader ] ; 4 uses
  %.sroa.0515.31199.prol = phi i64 [ %i.ow, %.lr.ph1202.prol ], [ %.sroa.0515.21210, %.lr.ph1202.preheader ]
  %.sroa.22.31196.prol = phi i64 [ %i.oy, %.lr.ph1202.prol ], [ %.sroa.22.21207, %.lr.ph1202.preheader ]
  %i.op = phi <2 x i64> [ %i.ox, %.lr.ph1202.prol ], [ %i.nz, %.lr.ph1202.preheader ]
  %prol.iter2132 = phi i64 [ %prol.iter2132.next, %.lr.ph1202.prol ], [ 0, %.lr.ph1202.preheader ]
  %i.oq = getelementptr inbounds nuw i8, ptr %.sroa.058.01200.prol, i64 32 ; 2 uses
  %i.or = load i64, ptr %.sroa.058.01200.prol, align 8, !noundef !5
  %i.os = getelementptr inbounds nuw i8, ptr %.sroa.058.01200.prol, i64 8
  %i.ot = load <2 x i64>, ptr %i.os, align 8
  %i.ou = getelementptr inbounds nuw i8, ptr %.sroa.058.01200.prol, i64 24
  %i.ov = load i64, ptr %i.ou, align 8, !noundef !5
  %i.ow = add i64 %i.or, %.sroa.0515.31199.prol   ; 3 uses
  %i.ox = add <2 x i64> %i.ot, %i.op              ; 3 uses
  %i.oy = add i64 %i.ov, %.sroa.22.31196.prol     ; 3 uses
  %prol.iter2132.next = add i64 %prol.iter2132, 1 ; 2 uses
  %prol.iter2132.cmp.not = icmp eq i64 %prol.iter2132.next, %xtraiter2130
  br i1 %prol.iter2132.cmp.not, label %.lr.ph1202.prol.loopexit, label %.lr.ph1202.prol, !llvm.loop !343

.lr.ph1202.prol.loopexit:                         ; preds = %.lr.ph1202.prol, %.lr.ph1202.preheader
  %.lcssa2026.unr = phi i64 [ poison, %.lr.ph1202.preheader ], [ %i.ow, %.lr.ph1202.prol ]
  %.lcssa2025.unr = phi <2 x i64> [ poison, %.lr.ph1202.preheader ], [ %i.ox, %.lr.ph1202.prol ]
  %.lcssa2024.unr = phi i64 [ poison, %.lr.ph1202.preheader ], [ %i.oy, %.lr.ph1202.prol ]
  %.sroa.058.01200.unr = phi ptr [ %i.oj, %.lr.ph1202.preheader ], [ %i.oq, %.lr.ph1202.prol ]
  %.sroa.0515.31199.unr = phi i64 [ %.sroa.0515.21210, %.lr.ph1202.preheader ], [ %i.ow, %.lr.ph1202.prol ]
  %.sroa.22.31196.unr = phi i64 [ %.sroa.22.21207, %.lr.ph1202.preheader ], [ %i.oy, %.lr.ph1202.prol ]
  %.unr2133 = phi <2 x i64> [ %i.nz, %.lr.ph1202.preheader ], [ %i.ox, %.lr.ph1202.prol ]
  %i.oz = icmp ult i64 %i.om, 96
  br i1 %i.oz, label %.loopexit, label %.lr.ph1202

bb.ag:                                            ; preds = %.lr.ph1213
  tail call void @_RNvNtNtCskKLDkoKarTP_4core5slice5index16slice_index_fail(i64 noundef 0, i64 noundef %i.oi, i64 noundef %i.og, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @39) #17
  unreachable

.lr.ph1202:                                       ; preds = %.lr.ph1202.prol.loopexit, %.lr.ph1202
  %.sroa.058.01200 = phi ptr [ %i.qc, %.lr.ph1202 ], [ %.sroa.058.01200.unr, %.lr.ph1202.prol.loopexit ] ; 13 uses
  %.sroa.0515.31199 = phi i64 [ %i.qi, %.lr.ph1202 ], [ %.sroa.0515.31199.unr, %.lr.ph1202.prol.loopexit ]
  %.sroa.22.31196 = phi i64 [ %i.qk, %.lr.ph1202 ], [ %.sroa.22.31196.unr, %.lr.ph1202.prol.loopexit ]
  %i.pa = phi <2 x i64> [ %i.qj, %.lr.ph1202 ], [ %.unr2133, %.lr.ph1202.prol.loopexit ]
  %i.pb = getelementptr inbounds nuw i8, ptr %.sroa.058.01200, i64 32
  %i.pc = load i64, ptr %.sroa.058.01200, align 8, !noundef !5
  %i.pd = getelementptr inbounds nuw i8, ptr %.sroa.058.01200, i64 8
  %i.pe = load <2 x i64>, ptr %i.pd, align 8
  %i.pf = getelementptr inbounds nuw i8, ptr %.sroa.058.01200, i64 24
  %i.pg = load i64, ptr %i.pf, align 8, !noundef !5
  %i.ph = add i64 %i.pc, %.sroa.0515.31199
  %i.pi = add <2 x i64> %i.pe, %i.pa
  %i.pj = add i64 %i.pg, %.sroa.22.31196
  %i.pk = getelementptr inbounds nuw i8, ptr %.sroa.058.01200, i64 64
  %i.pl = load i64, ptr %i.pb, align 8, !noundef !5
  %i.pm = getelementptr inbounds nuw i8, ptr %.sroa.058.01200, i64 40
  %i.pn = load <2 x i64>, ptr %i.pm, align 8
  %i.po = getelementptr inbounds nuw i8, ptr %.sroa.058.01200, i64 56
  %i.pp = load i64, ptr %i.po, align 8, !noundef !5
  %i.pq = add i64 %i.pl, %i.ph
  %i.pr = add <2 x i64> %i.pn, %i.pi
  %i.ps = add i64 %i.pp, %i.pj
  %i.pt = getelementptr inbounds nuw i8, ptr %.sroa.058.01200, i64 96
  %i.pu = load i64, ptr %i.pk, align 8, !noundef !5
  %i.pv = getelementptr inbounds nuw i8, ptr %.sroa.058.01200, i64 72
  %i.pw = load <2 x i64>, ptr %i.pv, align 8
  %i.px = getelementptr inbounds nuw i8, ptr %.sroa.058.01200, i64 88
  %i.py = load i64, ptr %i.px, align 8, !noundef !5
  %i.pz = add i64 %i.pu, %i.pq
  %i.qa = add <2 x i64> %i.pw, %i.pr
  %i.qb = add i64 %i.py, %i.ps
  %i.qc = getelementptr inbounds nuw i8, ptr %.sroa.058.01200, i64 128 ; 2 uses
  %i.qd = load i64, ptr %i.pt, align 8, !noundef !5
  %i.qe = getelementptr inbounds nuw i8, ptr %.sroa.058.01200, i64 104
  %i.qf = load <2 x i64>, ptr %i.qe, align 8
  %i.qg = getelementptr inbounds nuw i8, ptr %.sroa.058.01200, i64 120
  %i.qh = load i64, ptr %i.qg, align 8, !noundef !5
  %i.qi = add i64 %i.qd, %i.pz                    ; 2 uses
  %i.qj = add <2 x i64> %i.qf, %i.qa              ; 2 uses
  %i.qk = add i64 %i.qh, %i.qb                    ; 2 uses
  %i.ql = icmp eq ptr %i.qc, %i.ok
end_hunk_0
