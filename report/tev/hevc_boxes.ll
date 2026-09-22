Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/tev/original/hevc_boxes?download=true
inline.NumInlined: 1743
inline.NumDeleted: 947
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumRuntimeUnrolled: 9
loop-unroll.NumUnrolled: 12
begin_hunk_0_@_ZNK8Box_hvcC15get_header_nalsEPNSt3__16vectorIhNS0_9allocatorIhEEEE:bb.a
  %i.jt = ptrtoint ptr %i.jr to i64               ; 3 uses
  %i.ju = sub i64 %i.js, %i.jt                    ; 2 uses
  %i.jv = add i64 %i.ju, 1                        ; 2 uses
  %i.jw = icmp slt i64 %i.jv, 0
  br i1 %i.jw, label %bb.w, label %_ZNKSt3__16vectorIhNS_9allocatorIhEEE11__recommendB8ne180100Em.exit.i.i52

bb.w:                                             ; preds = %bb.v
  tail call void @_ZNKSt3__16vectorIhNS_9allocatorIhEEE20__throw_length_errorB8ne180100Ev(ptr noundef nonnull align 8 dereferenceable(24) %1) #25
  unreachable

_ZNKSt3__16vectorIhNS_9allocatorIhEEE11__recommendB8ne180100Em.exit.i.i52: ; preds = %bb.v
  %i.jx = ptrtoint ptr %i.jo to i64
  %i.jy = sub i64 %i.jx, %i.jt                    ; 2 uses
  %.not.i.i.i53 = icmp ult i64 %i.jy, 4611686018427387903
  %i.jz = shl nuw nsw i64 %i.jy, 1
  %.sroa.speculated.i.i.i54 = tail call i64 @llvm.umax.i64(i64 %i.jz, i64 %i.jv)
  %.0.i.i.i55 = select i1 %.not.i.i.i53, i64 %.sroa.speculated.i.i.i54, i64 9223372036854775807 ; 3 uses
  %i.ka = icmp eq i64 %.0.i.i.i55, 0
  br i1 %i.ka, label %bb.y, label %bb.x

bb.x:                                             ; preds = %_ZNKSt3__16vectorIhNS_9allocatorIhEEE11__recommendB8ne180100Em.exit.i.i52
  %i.kb = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %.0.i.i.i55) #23
  %.pre.i.i56 = load ptr, ptr %i.e, align 8, !tbaa !60
  %.pre24.i.i57 = load ptr, ptr %1, align 8, !tbaa !61
  br label %bb.y

bb.y:                                             ; preds = %bb.x, %_ZNKSt3__16vectorIhNS_9allocatorIhEEE11__recommendB8ne180100Em.exit.i.i52
  %i.kc = phi ptr [ %.pre24.i.i57, %bb.x ], [ %i.jr, %_ZNKSt3__16vectorIhNS_9allocatorIhEEE11__recommendB8ne180100Em.exit.i.i52 ] ; 6 uses
  %i.kd = phi ptr [ %.pre.i.i56, %bb.x ], [ %.0.i50, %_ZNKSt3__16vectorIhNS_9allocatorIhEEE11__recommendB8ne180100Em.exit.i.i52 ] ; 8 uses
  %storemerge.i.i.i58 = phi ptr [ %i.kb, %bb.x ], [ null, %_ZNKSt3__16vectorIhNS_9allocatorIhEEE11__recommendB8ne180100Em.exit.i.i52 ] ; 3 uses
  %i.ke = ptrtoaddr ptr %i.kd to i64              ; 2 uses
  %storemerge.i.i.i58161 = ptrtoaddr ptr %storemerge.i.i.i58 to i64
  %i.kf = getelementptr inbounds nuw i8, ptr %storemerge.i.i.i58, i64 %i.ju ; 9 uses
  %i.kg = getelementptr inbounds nuw i8, ptr %storemerge.i.i.i58, i64 %.0.i.i.i55
  store i8 %i.jn, ptr %i.kf, align 1, !tbaa !65
  %i.kh = getelementptr inbounds nuw i8, ptr %i.kf, i64 1 ; 3 uses
  %.not4.i.i.i.i.i.i.i.i.i59 = icmp eq ptr %i.kd, %i.kc
  br i1 %.not4.i.i.i.i.i.i.i.i.i59, label %_ZNSt3__114__split_bufferIhRNS_9allocatorIhEEE5clearB8ne180100Ev.exit.i.i.i63, label %iter.check179

iter.check179:                                    ; preds = %bb.y
  %i.ki = ptrtoaddr ptr %i.kc to i64              ; 3 uses
  %i.kj = sub i64 %i.ke, %i.ki                    ; 7 uses
  %min.iters.check163 = icmp ult i64 %i.kj, 8
  br i1 %min.iters.check163, label %.lr.ph.i.i.i.i.i.i.i.i.i60.preheader, label %vector.memcheck160

vector.memcheck160:                               ; preds = %iter.check179
  %i.kk = add i64 %i.ke, %i.jt
  %i.kl = add i64 %i.js, %storemerge.i.i.i58161
  %i.km = sub i64 %i.kl, %i.kk
  %diff.check162 = icmp ugt i64 %i.km, -32
  br i1 %diff.check162, label %.lr.ph.i.i.i.i.i.i.i.i.i60.preheader, label %vector.main.loop.iter.check164

vector.main.loop.iter.check164:                   ; preds = %vector.memcheck160
  %min.iters.check165 = icmp ult i64 %i.kj, 32
  br i1 %min.iters.check165, label %vec.epilog.ph183, label %vector.ph166

vector.ph166:                                     ; preds = %vector.main.loop.iter.check164
  %i.kn = and i64 %i.kj, 24
  %n.vec167 = and i64 %i.kj, -32                  ; 4 uses
  %i.ko = sub i64 0, %n.vec167                    ; 2 uses
  %i.kp = getelementptr i8, ptr %i.kf, i64 %i.ko  ; 2 uses
  %i.kq = getelementptr i8, ptr %i.kd, i64 %i.ko
  br label %vector.body168

vector.body168:                                   ; preds = %vector.body168, %vector.ph166
  %index169 = phi i64 [ 0, %vector.ph166 ], [ %index.next174, %vector.body168 ] ; 2 uses
  %i.kr = sub i64 0, %index169                    ; 2 uses
  %next.gep170.a = getelementptr i8, ptr %i.kf, i64 %i.kr ; 2 uses
  %next.gep171 = getelementptr i8, ptr %i.kd, i64 %i.kr ; 2 uses
  %i.ks = getelementptr inbounds i8, ptr %next.gep171, i64 -16
  %i.kt = getelementptr inbounds i8, ptr %next.gep171, i64 -32
  %wide.load172.a = load <16 x i8>, ptr %i.ks, align 1, !tbaa !65, !noalias !228
  %wide.load173 = load <16 x i8>, ptr %i.kt, align 1, !tbaa !65, !noalias !228
  %i.ku = getelementptr inbounds i8, ptr %next.gep170.a, i64 -16
  %i.kv = getelementptr inbounds i8, ptr %next.gep170.a, i64 -32
  store <16 x i8> %wide.load172.a, ptr %i.ku, align 1, !tbaa !65, !noalias !228
  store <16 x i8> %wide.load173, ptr %i.kv, align 1, !tbaa !65, !noalias !228
  %index.next174 = add nuw i64 %index169, 32      ; 2 uses
  %i.kw = icmp eq i64 %index.next174, %n.vec167
  br i1 %i.kw, label %middle.block175, label %vector.body168, !llvm.loop !209

middle.block175:                                  ; preds = %vector.body168
  %cmp.n176 = icmp eq i64 %i.kj, %n.vec167
  br i1 %cmp.n176, label %_ZNSt3__114__split_bufferIhRNS_9allocatorIhEEE5clearB8ne180100Ev.exit.i.i.i63, label %vec.epilog.iter.check181

vec.epilog.iter.check181:                         ; preds = %middle.block175
  %min.epilog.iters.check182 = icmp eq i64 %i.kn, 0
  br i1 %min.epilog.iters.check182, label %.lr.ph.i.i.i.i.i.i.i.i.i60.preheader, label %vec.epilog.ph183, !prof !89

vec.epilog.ph183:                                 ; preds = %vector.main.loop.iter.check164, %vec.epilog.iter.check181
  %vec.epilog.resume.val177 = phi i64 [ %n.vec167, %vec.epilog.iter.check181 ], [ 0, %vector.main.loop.iter.check164 ]
  %n.vec184 = and i64 %i.kj, -8                   ; 3 uses
  %i.kx = sub i64 0, %n.vec184                    ; 2 uses
  %i.ky = getelementptr i8, ptr %i.kf, i64 %i.kx  ; 2 uses
  %i.kz = getelementptr i8, ptr %i.kd, i64 %i.kx
  br label %vec.epilog.vector.body185

vec.epilog.vector.body185:                        ; preds = %vec.epilog.vector.body185, %vec.epilog.ph183
  %index186 = phi i64 [ %vec.epilog.resume.val177, %vec.epilog.ph183 ], [ %index.next190, %vec.epilog.vector.body185 ] ; 2 uses
  %i.la = sub i64 0, %index186                    ; 2 uses
  %next.gep187.a = getelementptr i8, ptr %i.kf, i64 %i.la
  %next.gep188 = getelementptr i8, ptr %i.kd, i64 %i.la
  %i.lb = getelementptr inbounds i8, ptr %next.gep188, i64 -8
  %wide.load189 = load <8 x i8>, ptr %i.lb, align 1, !tbaa !65, !noalias !228
  %i.lc = getelementptr inbounds i8, ptr %next.gep187.a, i64 -8
  store <8 x i8> %wide.load189, ptr %i.lc, align 1, !tbaa !65, !noalias !228
  %index.next190 = add nuw i64 %index186, 8       ; 2 uses
  %i.ld = icmp eq i64 %index.next190, %n.vec184
  br i1 %i.ld, label %vec.epilog.middle.block191, label %vec.epilog.vector.body185, !llvm.loop !210

vec.epilog.middle.block191:                       ; preds = %vec.epilog.vector.body185
  %cmp.n192 = icmp eq i64 %i.kj, %n.vec184
  br i1 %cmp.n192, label %_ZNSt3__114__split_bufferIhRNS_9allocatorIhEEE5clearB8ne180100Ev.exit.i.i.i63, label %.lr.ph.i.i.i.i.i.i.i.i.i60.preheader

.lr.ph.i.i.i.i.i.i.i.i.i60.preheader:             ; preds = %vector.memcheck160, %iter.check179, %vec.epilog.iter.check181, %vec.epilog.middle.block191
  %.ph300 = phi ptr [ %i.kf, %iter.check179 ], [ %i.kf, %vector.memcheck160 ], [ %i.kp, %vec.epilog.iter.check181 ], [ %i.ky, %vec.epilog.middle.block191 ] ; 2 uses
  %.sroa.2.05.i.i.i.i.i.i.i.i.i61.ph = phi ptr [ %i.kd, %iter.check179 ], [ %i.kd, %vector.memcheck160 ], [ %i.kq, %vec.epilog.iter.check181 ], [ %i.kz, %vec.epilog.middle.block191 ] ; 3 uses
  %.sroa.2.05.i.i.i.i.i.i.i.i.i61.ph319 = ptrtoaddr ptr %.sroa.2.05.i.i.i.i.i.i.i.i.i61.ph to i64 ; 2 uses
  %i.le = sub i64 %.sroa.2.05.i.i.i.i.i.i.i.i.i61.ph319, %i.ki
  %xtraiter320 = and i64 %i.le, 7                 ; 2 uses
  %lcmp.mod321.not = icmp eq i64 %xtraiter320, 0
  br i1 %lcmp.mod321.not, label %.lr.ph.i.i.i.i.i.i.i.i.i60.prol.loopexit, label %.lr.ph.i.i.i.i.i.i.i.i.i60.prol

.lr.ph.i.i.i.i.i.i.i.i.i60.prol:                  ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i60.preheader, %.lr.ph.i.i.i.i.i.i.i.i.i60.prol
  %i.lf = phi ptr [ %i.li, %.lr.ph.i.i.i.i.i.i.i.i.i60.prol ], [ %.ph300, %.lr.ph.i.i.i.i.i.i.i.i.i60.preheader ]
  %.sroa.2.05.i.i.i.i.i.i.i.i.i61.prol = phi ptr [ %i.lg, %.lr.ph.i.i.i.i.i.i.i.i.i60.prol ], [ %.sroa.2.05.i.i.i.i.i.i.i.i.i61.ph, %.lr.ph.i.i.i.i.i.i.i.i.i60.preheader ]
  %prol.iter322 = phi i64 [ %prol.iter322.next, %.lr.ph.i.i.i.i.i.i.i.i.i60.prol ], [ 0, %.lr.ph.i.i.i.i.i.i.i.i.i60.preheader ]
  %i.lg = getelementptr inbounds i8, ptr %.sroa.2.05.i.i.i.i.i.i.i.i.i61.prol, i64 -1 ; 3 uses
  %i.lh = load i8, ptr %i.lg, align 1, !tbaa !65, !noalias !228
  %i.li = getelementptr inbounds i8, ptr %i.lf, i64 -1 ; 4 uses
  store i8 %i.lh, ptr %i.li, align 1, !tbaa !65, !noalias !228
  %prol.iter322.next = add i64 %prol.iter322, 1   ; 2 uses
  %prol.iter322.cmp.not = icmp eq i64 %prol.iter322.next, %xtraiter320
  br i1 %prol.iter322.cmp.not, label %.lr.ph.i.i.i.i.i.i.i.i.i60.prol.loopexit, label %.lr.ph.i.i.i.i.i.i.i.i.i60.prol, !llvm.loop !211

.lr.ph.i.i.i.i.i.i.i.i.i60.prol.loopexit:         ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i60.prol, %.lr.ph.i.i.i.i.i.i.i.i.i60.preheader
  %.lcssa306.unr.a = phi ptr [ poison, %.lr.ph.i.i.i.i.i.i.i.i.i60.preheader ], [ %i.li, %.lr.ph.i.i.i.i.i.i.i.i.i60.prol ]
  %.unr323 = phi ptr [ %.ph300, %.lr.ph.i.i.i.i.i.i.i.i.i60.preheader ], [ %i.li, %.lr.ph.i.i.i.i.i.i.i.i.i60.prol ]
  %.sroa.2.05.i.i.i.i.i.i.i.i.i61.unr = phi ptr [ %.sroa.2.05.i.i.i.i.i.i.i.i.i61.ph, %.lr.ph.i.i.i.i.i.i.i.i.i60.preheader ], [ %i.lg, %.lr.ph.i.i.i.i.i.i.i.i.i60.prol ]
  %i.lj = sub i64 %i.ki, %.sroa.2.05.i.i.i.i.i.i.i.i.i61.ph319
  %i.lk = icmp ugt i64 %i.lj, -8
  br i1 %i.lk, label %_ZNSt3__114__split_bufferIhRNS_9allocatorIhEEE5clearB8ne180100Ev.exit.i.i.i63, label %.lr.ph.i.i.i.i.i.i.i.i.i60

.lr.ph.i.i.i.i.i.i.i.i.i60:                       ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i60.prol.loopexit, %.lr.ph.i.i.i.i.i.i.i.i.i60
  %i.ll = phi ptr [ %i.mj, %.lr.ph.i.i.i.i.i.i.i.i.i60 ], [ %.unr323, %.lr.ph.i.i.i.i.i.i.i.i.i60.prol.loopexit ] ; 8 uses
  %.sroa.2.05.i.i.i.i.i.i.i.i.i61 = phi ptr [ %i.mh, %.lr.ph.i.i.i.i.i.i.i.i.i60 ], [ %.sroa.2.05.i.i.i.i.i.i.i.i.i61.unr, %.lr.ph.i.i.i.i.i.i.i.i.i60.prol.loopexit ] ; 8 uses
  %i.lm = getelementptr inbounds i8, ptr %.sroa.2.05.i.i.i.i.i.i.i.i.i61, i64 -1
  %i.ln = load i8, ptr %i.lm, align 1, !tbaa !65, !noalias !228
  %i.lo = getelementptr inbounds i8, ptr %i.ll, i64 -1
  store i8 %i.ln, ptr %i.lo, align 1, !tbaa !65, !noalias !228
  %i.lp = getelementptr inbounds i8, ptr %.sroa.2.05.i.i.i.i.i.i.i.i.i61, i64 -2
  %i.lq = load i8, ptr %i.lp, align 1, !tbaa !65, !noalias !228
  %i.lr = getelementptr inbounds i8, ptr %i.ll, i64 -2
  store i8 %i.lq, ptr %i.lr, align 1, !tbaa !65, !noalias !228
  %i.ls = getelementptr inbounds i8, ptr %.sroa.2.05.i.i.i.i.i.i.i.i.i61, i64 -3
  %i.lt = load i8, ptr %i.ls, align 1, !tbaa !65, !noalias !228
  %i.lu = getelementptr inbounds i8, ptr %i.ll, i64 -3
  store i8 %i.lt, ptr %i.lu, align 1, !tbaa !65, !noalias !228
  %i.lv = getelementptr inbounds i8, ptr %.sroa.2.05.i.i.i.i.i.i.i.i.i61, i64 -4
  %i.lw = load i8, ptr %i.lv, align 1, !tbaa !65, !noalias !228
  %i.lx = getelementptr inbounds i8, ptr %i.ll, i64 -4
  store i8 %i.lw, ptr %i.lx, align 1, !tbaa !65, !noalias !228
  %i.ly = getelementptr inbounds i8, ptr %.sroa.2.05.i.i.i.i.i.i.i.i.i61, i64 -5
  %i.lz = load i8, ptr %i.ly, align 1, !tbaa !65, !noalias !228
  %i.ma = getelementptr inbounds i8, ptr %i.ll, i64 -5
  store i8 %i.lz, ptr %i.ma, align 1, !tbaa !65, !noalias !228
  %i.mb = getelementptr inbounds i8, ptr %.sroa.2.05.i.i.i.i.i.i.i.i.i61, i64 -6
  %i.mc = load i8, ptr %i.mb, align 1, !tbaa !65, !noalias !228
  %i.md = getelementptr inbounds i8, ptr %i.ll, i64 -6
  store i8 %i.mc, ptr %i.md, align 1, !tbaa !65, !noalias !228
  %i.me = getelementptr inbounds i8, ptr %.sroa.2.05.i.i.i.i.i.i.i.i.i61, i64 -7
  %i.mf = load i8, ptr %i.me, align 1, !tbaa !65, !noalias !228
  %i.mg = getelementptr inbounds i8, ptr %i.ll, i64 -7
  store i8 %i.mf, ptr %i.mg, align 1, !tbaa !65, !noalias !228
  %i.mh = getelementptr inbounds i8, ptr %.sroa.2.05.i.i.i.i.i.i.i.i.i61, i64 -8 ; 3 uses
  %i.mi = load i8, ptr %i.mh, align 1, !tbaa !65, !noalias !228
  %i.mj = getelementptr inbounds i8, ptr %i.ll, i64 -8 ; 3 uses
  store i8 %i.mi, ptr %i.mj, align 1, !tbaa !65, !noalias !228
  %.not.i.i.i.i.i.i.i.i.i62.7 = icmp eq ptr %i.mh, %i.kc
  br i1 %.not.i.i.i.i.i.i.i.i.i62.7, label %_ZNSt3__114__split_bufferIhRNS_9allocatorIhEEE5clearB8ne180100Ev.exit.i.i.i63, label %.lr.ph.i.i.i.i.i.i.i.i.i60, !llvm.loop !212

_ZNSt3__114__split_bufferIhRNS_9allocatorIhEEE5clearB8ne180100Ev.exit.i.i.i63: ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i60.prol.loopexit, %.lr.ph.i.i.i.i.i.i.i.i.i60, %middle.block175, %vec.epilog.middle.block191, %bb.y
  %storemerge.i.i64 = phi ptr [ %i.kf, %bb.y ], [ %i.ky, %vec.epilog.middle.block191 ], [ %i.kp, %middle.block175 ], [ %.lcssa306.unr.a, %.lr.ph.i.i.i.i.i.i.i.i.i60.prol.loopexit ], [ %i.mj, %.lr.ph.i.i.i.i.i.i.i.i.i60 ]
  store ptr %storemerge.i.i64, ptr %1, align 8, !tbaa !68
  store ptr %i.kh, ptr %i.e, align 8, !tbaa !68
  %i.mk = load ptr, ptr %i.f, align 8, !tbaa !68
  store ptr %i.kg, ptr %i.f, align 8, !tbaa !68
  %.not.i5.i.i65 = icmp eq ptr %i.kc, null
  br i1 %.not.i5.i.i65, label %_ZNSt3__16vectorIhNS_9allocatorIhEEE9push_backB8ne180100EOh.exit67, label %bb.z

bb.z:                                             ; preds = %_ZNSt3__114__split_bufferIhRNS_9allocatorIhEEE5clearB8ne180100Ev.exit.i.i.i63
  %i.ml = ptrtoint ptr %i.mk to i64
  %i.mm = ptrtoint ptr %i.kc to i64
  %i.mn = sub i64 %i.ml, %i.mm
  tail call void @_ZdlPvm(ptr noundef nonnull %i.kc, i64 noundef %i.mn) #24
  br label %_ZNSt3__16vectorIhNS_9allocatorIhEEE9push_backB8ne180100EOh.exit67

_ZNSt3__16vectorIhNS_9allocatorIhEEE9push_backB8ne180100EOh.exit67: ; preds = %bb.u, %_ZNSt3__114__split_bufferIhRNS_9allocatorIhEEE5clearB8ne180100Ev.exit.i.i.i63, %bb.z
  %.0.i66 = phi ptr [ %i.jq, %bb.u ], [ %i.kh, %_ZNSt3__114__split_bufferIhRNS_9allocatorIhEEE5clearB8ne180100Ev.exit.i.i.i63 ], [ %i.kh, %bb.z ] ; 6 uses
  store ptr %.0.i66, ptr %i.e, align 8, !tbaa !60
  %i.mo = load ptr, ptr %.sroa.079.092, align 8, !tbaa !61 ; 4 uses
  %i.mp = load ptr, ptr %i.l, align 8, !tbaa !60  ; 2 uses
  %i.mq = ptrtoint ptr %i.mp to i64
  %i.mr = ptrtoint ptr %i.mo to i64
  %i.ms = sub i64 %i.mq, %i.mr                    ; 7 uses
  %i.mt = load ptr, ptr %1, align 8, !tbaa !61    ; 3 uses
  %i.mu = ptrtoint ptr %.0.i66 to i64             ; 4 uses
  %i.mv = ptrtoint ptr %i.mt to i64               ; 3 uses
  %i.mw = sub i64 %i.mu, %i.mv                    ; 3 uses
  %i.mx = getelementptr inbounds i8, ptr %i.mt, i64 %i.mw ; 6 uses
  %i.my = icmp sgt i64 %i.ms, 0
  br i1 %i.my, label %bb.aa, label %_ZNSt3__16vectorIhNS_9allocatorIhEEE18__insert_with_sizeB8ne180100INS_11__wrap_iterIPKhEES8_EENS5_IPhEES8_T_T0_l.exit

bb.aa:                                            ; preds = %_ZNSt3__16vectorIhNS_9allocatorIhEEE9push_backB8ne180100EOh.exit67
  %i.mz = load ptr, ptr %i.f, align 8, !tbaa !68
  %i.na = ptrtoint ptr %i.mz to i64               ; 2 uses
  %i.nb = sub i64 %i.na, %i.mu
  %.not.i = icmp sgt i64 %i.ms, %i.nb
  br i1 %.not.i, label %bb.ab, label %2

2:                                                ; preds = %bb.aa
  %.not.i.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.mp, %i.mo
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i, label %_ZNSt3__16vectorIhNS_9allocatorIhEEE18__construct_at_endINS_11__wrap_iterIPKhEES8_EEvT_T0_m.exit.i, label %3

3:                                                ; preds = %2
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %.0.i66, ptr align 1 %i.mo, i64 %i.ms, i1 false)
  br label %_ZNSt3__16vectorIhNS_9allocatorIhEEE18__construct_at_endINS_11__wrap_iterIPKhEES8_EEvT_T0_m.exit.i

_ZNSt3__16vectorIhNS_9allocatorIhEEE18__construct_at_endINS_11__wrap_iterIPKhEES8_EEvT_T0_m.exit.i: ; preds = %3, %2
  %i.nc = getelementptr inbounds nuw i8, ptr %.0.i66, i64 %i.ms
  store ptr %i.nc, ptr %i.e, align 8, !tbaa !60
  br label %_ZNSt3__16vectorIhNS_9allocatorIhEEE18__insert_with_sizeB8ne180100INS_11__wrap_iterIPKhEES8_EENS5_IPhEES8_T_T0_l.exit

bb.ab:                                            ; preds = %bb.aa
  %i.nd = add i64 %i.mw, %i.ms                    ; 2 uses
  %i.ne = icmp slt i64 %i.nd, 0
  br i1 %i.ne, label %bb.ac, label %_ZNKSt3__16vectorIhNS_9allocatorIhEEE11__recommendB8ne180100Em.exit.i

bb.ac:                                            ; preds = %bb.ab
  tail call void @_ZNKSt3__16vectorIhNS_9allocatorIhEEE20__throw_length_errorB8ne180100Ev(ptr noundef nonnull align 8 dereferenceable(24) %1) #25
  unreachable

_ZNKSt3__16vectorIhNS_9allocatorIhEEE11__recommendB8ne180100Em.exit.i: ; preds = %bb.ab
  %i.nf = sub i64 %i.na, %i.mv                    ; 2 uses
  %.not.i.i = icmp ult i64 %i.nf, 4611686018427387903
  %i.ng = shl nuw nsw i64 %i.nf, 1
  %.sroa.speculated.i.i = tail call i64 @llvm.umax.i64(i64 %i.ng, i64 %i.nd)
  %.0.i.i = select i1 %.not.i.i, i64 %.sroa.speculated.i.i, i64 9223372036854775807 ; 3 uses
  %i.nh = icmp eq i64 %.0.i.i, 0
  br i1 %i.nh, label %_ZNSt3__114__split_bufferIhRNS_9allocatorIhEEEC2EmmS3_.exit.i, label %bb.ad

bb.ad:                                            ; preds = %_ZNKSt3__16vectorIhNS_9allocatorIhEEE11__recommendB8ne180100Em.exit.i
  %i.ni = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %.0.i.i) #23
  %.pre.i = load ptr, ptr %1, align 8, !tbaa !61
  br label %_ZNSt3__114__split_bufferIhRNS_9allocatorIhEEEC2EmmS3_.exit.i

_ZNSt3__114__split_bufferIhRNS_9allocatorIhEEEC2EmmS3_.exit.i: ; preds = %bb.ad, %_ZNKSt3__16vectorIhNS_9allocatorIhEEE11__recommendB8ne180100Em.exit.i
  %i.nj = phi ptr [ %.pre.i, %bb.ad ], [ %i.mt, %_ZNKSt3__16vectorIhNS_9allocatorIhEEE11__recommendB8ne180100Em.exit.i ] ; 6 uses
  %storemerge.i.i69 = phi ptr [ %i.ni, %bb.ad ], [ null, %_ZNKSt3__16vectorIhNS_9allocatorIhEEE11__recommendB8ne180100Em.exit.i ] ; 3 uses
  %i.nk = getelementptr inbounds nuw i8, ptr %storemerge.i.i69, i64 %i.mw ; 8 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.nk, ptr align 1 %i.mo, i64 %i.ms, i1 false), !tbaa !65
  %i.nl = getelementptr inbounds nuw i8, ptr %storemerge.i.i69, i64 %.0.i.i
  %i.nm = getelementptr inbounds nuw i8, ptr %i.nk, i64 %i.ms ; 2 uses
  %.not4.i.i.i.i.i.i.i.i = icmp eq ptr %.0.i66, %i.nj
  br i1 %.not4.i.i.i.i.i.i.i.i, label %_ZNSt3__142__uninitialized_allocator_move_if_noexceptB8ne180100INS_9allocatorIhEENS_16reverse_iteratorIPhEES5_hvEET1_RT_T0_S9_S6_.exit.i.i, label %iter.check

iter.check:                                       ; preds = %_ZNSt3__114__split_bufferIhRNS_9allocatorIhEEEC2EmmS3_.exit.i
  %storemerge.i.i69146 = ptrtoaddr ptr %storemerge.i.i69 to i64
  %i.nn = ptrtoaddr ptr %i.nj to i64              ; 3 uses
  %i.no = sub i64 %i.mu, %i.nn                    ; 7 uses
  %min.iters.check = icmp ult i64 %i.no, 8
  %i.np = sub i64 %storemerge.i.i69146, %i.mv
  %diff.check = icmp ugt i64 %i.np, -32
  %or.cond = select i1 %min.iters.check, i1 true, i1 %diff.check
  br i1 %or.cond, label %.lr.ph.i.i.i.i.i.i.i.i.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check147 = icmp ult i64 %i.no, 32
  br i1 %min.iters.check147, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.nq = and i64 %i.no, 24
  %n.vec = and i64 %i.no, -32                     ; 4 uses
  %i.nr = sub i64 0, %n.vec                       ; 2 uses
  %i.ns = getelementptr i8, ptr %i.nk, i64 %i.nr  ; 2 uses
  %i.nt = getelementptr i8, ptr %i.mx, i64 %i.nr
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.nu = sub i64 0, %index                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.nk, i64 %i.nu ; 2 uses
  %next.gep148 = getelementptr i8, ptr %i.mx, i64 %i.nu ; 2 uses
  %i.nv = getelementptr inbounds i8, ptr %next.gep148, i64 -16
  %i.nw = getelementptr inbounds i8, ptr %next.gep148, i64 -32
  %wide.load = load <16 x i8>, ptr %i.nv, align 1, !tbaa !65, !noalias !229
  %wide.load149 = load <16 x i8>, ptr %i.nw, align 1, !tbaa !65, !noalias !229
  %i.nx = getelementptr inbounds i8, ptr %next.gep, i64 -16
  %i.ny = getelementptr inbounds i8, ptr %next.gep, i64 -32
  store <16 x i8> %wide.load, ptr %i.nx, align 1, !tbaa !65, !noalias !229
  store <16 x i8> %wide.load149, ptr %i.ny, align 1, !tbaa !65, !noalias !229
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %i.nz = icmp eq i64 %index.next, %n.vec
  br i1 %i.nz, label %middle.block, label %vector.body, !llvm.loop !221

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.no, %n.vec
  br i1 %cmp.n, label %_ZNSt3__142__uninitialized_allocator_move_if_noexceptB8ne180100INS_9allocatorIhEENS_16reverse_iteratorIPhEES5_hvEET1_RT_T0_S9_S6_.exit.i.i, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.nq, 0
  br i1 %min.epilog.iters.check, label %.lr.ph.i.i.i.i.i.i.i.i.preheader, label %vec.epilog.ph, !prof !89

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec151 = and i64 %i.no, -8                   ; 3 uses
  %i.oa = sub i64 0, %n.vec151                    ; 2 uses
  %i.ob = getelementptr i8, ptr %i.nk, i64 %i.oa  ; 2 uses
  %i.oc = getelementptr i8, ptr %i.mx, i64 %i.oa
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index152 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next156, %vec.epilog.vector.body ] ; 2 uses
  %i.od = sub i64 0, %index152                    ; 2 uses
  %next.gep153.a = getelementptr i8, ptr %i.nk, i64 %i.od
  %next.gep154 = getelementptr i8, ptr %i.mx, i64 %i.od
  %i.oe = getelementptr inbounds i8, ptr %next.gep154, i64 -8
  %wide.load155 = load <8 x i8>, ptr %i.oe, align 1, !tbaa !65, !noalias !229
  %i.of = getelementptr inbounds i8, ptr %next.gep153.a, i64 -8
  store <8 x i8> %wide.load155, ptr %i.of, align 1, !tbaa !65, !noalias !229
  %index.next156 = add nuw i64 %index152, 8       ; 2 uses
  %i.og = icmp eq i64 %index.next156, %n.vec151
  br i1 %i.og, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !222

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n157 = icmp eq i64 %i.no, %n.vec151
  br i1 %cmp.n157, label %_ZNSt3__142__uninitialized_allocator_move_if_noexceptB8ne180100INS_9allocatorIhEENS_16reverse_iteratorIPhEES5_hvEET1_RT_T0_S9_S6_.exit.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.i.i.i.preheader:                 ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.ph = phi ptr [ %i.nk, %iter.check ], [ %i.ns, %vec.epilog.iter.check ], [ %i.ob, %vec.epilog.middle.block ] ; 2 uses
  %.sroa.2.05.i.i.i.i.i.i.i.i.ph = phi ptr [ %i.mx, %iter.check ], [ %i.nt, %vec.epilog.iter.check ], [ %i.oc, %vec.epilog.middle.block ] ; 3 uses
  %.sroa.2.05.i.i.i.i.i.i.i.i.ph324 = ptrtoaddr ptr %.sroa.2.05.i.i.i.i.i.i.i.i.ph to i64 ; 2 uses
  %i.oh = sub i64 %.sroa.2.05.i.i.i.i.i.i.i.i.ph324, %i.nn
  %xtraiter325 = and i64 %i.oh, 7                 ; 2 uses
  %lcmp.mod326.not = icmp eq i64 %xtraiter325, 0
  br i1 %lcmp.mod326.not, label %.lr.ph.i.i.i.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.i.i.i.prol

.lr.ph.i.i.i.i.i.i.i.i.prol:                      ; preds = %.lr.ph.i.i.i.i.i.i.i.i.preheader, %.lr.ph.i.i.i.i.i.i.i.i.prol
  %i.oi = phi ptr [ %i.ol, %.lr.ph.i.i.i.i.i.i.i.i.prol ], [ %.ph, %.lr.ph.i.i.i.i.i.i.i.i.preheader ]
  %.sroa.2.05.i.i.i.i.i.i.i.i.prol = phi ptr [ %i.oj, %.lr.ph.i.i.i.i.i.i.i.i.prol ], [ %.sroa.2.05.i.i.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.i.i.preheader ]
  %prol.iter327 = phi i64 [ %prol.iter327.next, %.lr.ph.i.i.i.i.i.i.i.i.prol ], [ 0, %.lr.ph.i.i.i.i.i.i.i.i.preheader ]
  %i.oj = getelementptr inbounds i8, ptr %.sroa.2.05.i.i.i.i.i.i.i.i.prol, i64 -1 ; 3 uses
  %i.ok = load i8, ptr %i.oj, align 1, !tbaa !65, !noalias !229
  %i.ol = getelementptr inbounds i8, ptr %i.oi, i64 -1 ; 4 uses
  store i8 %i.ok, ptr %i.ol, align 1, !tbaa !65, !noalias !229
  %prol.iter327.next = add i64 %prol.iter327, 1   ; 2 uses
  %prol.iter327.cmp.not = icmp eq i64 %prol.iter327.next, %xtraiter325
  br i1 %prol.iter327.cmp.not, label %.lr.ph.i.i.i.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.i.i.i.prol, !llvm.loop !223

.lr.ph.i.i.i.i.i.i.i.i.prol.loopexit:             ; preds = %.lr.ph.i.i.i.i.i.i.i.i.prol, %.lr.ph.i.i.i.i.i.i.i.i.preheader
  %.lcssa307.unr = phi ptr [ poison, %.lr.ph.i.i.i.i.i.i.i.i.preheader ], [ %i.ol, %.lr.ph.i.i.i.i.i.i.i.i.prol ]
  %.unr328 = phi ptr [ %.ph, %.lr.ph.i.i.i.i.i.i.i.i.preheader ], [ %i.ol, %.lr.ph.i.i.i.i.i.i.i.i.prol ]
  %.sroa.2.05.i.i.i.i.i.i.i.i.unr = phi ptr [ %.sroa.2.05.i.i.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.i.i.preheader ], [ %i.oj, %.lr.ph.i.i.i.i.i.i.i.i.prol ]
  %i.om = sub i64 %i.nn, %.sroa.2.05.i.i.i.i.i.i.i.i.ph324
  %i.on = icmp ugt i64 %i.om, -8
  br i1 %i.on, label %_ZNSt3__142__uninitialized_allocator_move_if_noexceptB8ne180100INS_9allocatorIhEENS_16reverse_iteratorIPhEES5_hvEET1_RT_T0_S9_S6_.exit.i.i, label %.lr.ph.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i:                           ; preds = %.lr.ph.i.i.i.i.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i.i.i.i.i
  %i.oo = phi ptr [ %i.pm, %.lr.ph.i.i.i.i.i.i.i.i ], [ %.unr328, %.lr.ph.i.i.i.i.i.i.i.i.prol.loopexit ] ; 8 uses
  %.sroa.2.05.i.i.i.i.i.i.i.i = phi ptr [ %i.pk, %.lr.ph.i.i.i.i.i.i.i.i ], [ %.sroa.2.05.i.i.i.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.i.i.i.prol.loopexit ] ; 8 uses
  %i.op = getelementptr inbounds i8, ptr %.sroa.2.05.i.i.i.i.i.i.i.i, i64 -1
  %i.oq = load i8, ptr %i.op, align 1, !tbaa !65, !noalias !229
  %i.or = getelementptr inbounds i8, ptr %i.oo, i64 -1
  store i8 %i.oq, ptr %i.or, align 1, !tbaa !65, !noalias !229
  %i.os = getelementptr inbounds i8, ptr %.sroa.2.05.i.i.i.i.i.i.i.i, i64 -2
  %i.ot = load i8, ptr %i.os, align 1, !tbaa !65, !noalias !229
  %i.ou = getelementptr inbounds i8, ptr %i.oo, i64 -2
  store i8 %i.ot, ptr %i.ou, align 1, !tbaa !65, !noalias !229
  %i.ov = getelementptr inbounds i8, ptr %.sroa.2.05.i.i.i.i.i.i.i.i, i64 -3
  %i.ow = load i8, ptr %i.ov, align 1, !tbaa !65, !noalias !229
  %i.ox = getelementptr inbounds i8, ptr %i.oo, i64 -3
  store i8 %i.ow, ptr %i.ox, align 1, !tbaa !65, !noalias !229
  %i.oy = getelementptr inbounds i8, ptr %.sroa.2.05.i.i.i.i.i.i.i.i, i64 -4
  %i.oz = load i8, ptr %i.oy, align 1, !tbaa !65, !noalias !229
  %i.pa = getelementptr inbounds i8, ptr %i.oo, i64 -4
  store i8 %i.oz, ptr %i.pa, align 1, !tbaa !65, !noalias !229
  %i.pb = getelementptr inbounds i8, ptr %.sroa.2.05.i.i.i.i.i.i.i.i, i64 -5
  %i.pc = load i8, ptr %i.pb, align 1, !tbaa !65, !noalias !229
  %i.pd = getelementptr inbounds i8, ptr %i.oo, i64 -5
  store i8 %i.pc, ptr %i.pd, align 1, !tbaa !65, !noalias !229
  %i.pe = getelementptr inbounds i8, ptr %.sroa.2.05.i.i.i.i.i.i.i.i, i64 -6
  %i.pf = load i8, ptr %i.pe, align 1, !tbaa !65, !noalias !229
  %i.pg = getelementptr inbounds i8, ptr %i.oo, i64 -6
  store i8 %i.pf, ptr %i.pg, align 1, !tbaa !65, !noalias !229
  %i.ph = getelementptr inbounds i8, ptr %.sroa.2.05.i.i.i.i.i.i.i.i, i64 -7
  %i.pi = load i8, ptr %i.ph, align 1, !tbaa !65, !noalias !229
  %i.pj = getelementptr inbounds i8, ptr %i.oo, i64 -7
  store i8 %i.pi, ptr %i.pj, align 1, !tbaa !65, !noalias !229
  %i.pk = getelementptr inbounds i8, ptr %.sroa.2.05.i.i.i.i.i.i.i.i, i64 -8 ; 3 uses
  %i.pl = load i8, ptr %i.pk, align 1, !tbaa !65, !noalias !229
  %i.pm = getelementptr inbounds i8, ptr %i.oo, i64 -8 ; 3 uses
  store i8 %i.pl, ptr %i.pm, align 1, !tbaa !65, !noalias !229
  %.not.i.i.i.i.i.i.i41.i.7 = icmp eq ptr %i.pk, %i.nj
  br i1 %.not.i.i.i.i.i.i.i41.i.7, label %_ZNSt3__142__uninitialized_allocator_move_if_noexceptB8ne180100INS_9allocatorIhEENS_16reverse_iteratorIPhEES5_hvEET1_RT_T0_S9_S6_.exit.i.i, label %.lr.ph.i.i.i.i.i.i.i.i, !llvm.loop !224

_ZNSt3__142__uninitialized_allocator_move_if_noexceptB8ne180100INS_9allocatorIhEENS_16reverse_iteratorIPhEES5_hvEET1_RT_T0_S9_S6_.exit.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i.i.i.i.i, %middle.block, %vec.epilog.middle.block, %_ZNSt3__114__split_bufferIhRNS_9allocatorIhEEEC2EmmS3_.exit.i
  %.sroa.436.0.i.i.i.i.i.i.i = phi ptr [ %i.nk, %_ZNSt3__114__split_bufferIhRNS_9allocatorIhEEEC2EmmS3_.exit.i ], [ %i.ob, %vec.epilog.middle.block ], [ %i.ns, %middle.block ], [ %.lcssa307.unr, %.lr.ph.i.i.i.i.i.i.i.i.prol.loopexit ], [ %i.pm, %.lr.ph.i.i.i.i.i.i.i.i ]
  %i.pn = load ptr, ptr %i.e, align 8, !tbaa !60  ; 2 uses
  %i.po = ptrtoint ptr %i.pn to i64
  %i.pp = sub i64 %i.po, %i.mu                    ; 2 uses
  %.not.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.pn, %.0.i66
  br i1 %.not.i.i.i.i.i.i.i.i.i.i, label %_ZNSt3__114__split_bufferIhRNS_9allocatorIhEEE5clearB8ne180100Ev.exit.i.i, label %bb.ae

bb.ae:                                            ; preds = %_ZNSt3__142__uninitialized_allocator_move_if_noexceptB8ne180100INS_9allocatorIhEENS_16reverse_iteratorIPhEES5_hvEET1_RT_T0_S9_S6_.exit.i.i
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.nm, ptr align 1 %i.mx, i64 %i.pp, i1 false)
  br label %_ZNSt3__114__split_bufferIhRNS_9allocatorIhEEE5clearB8ne180100Ev.exit.i.i

_ZNSt3__114__split_bufferIhRNS_9allocatorIhEEE5clearB8ne180100Ev.exit.i.i: ; preds = %bb.ae, %_ZNSt3__142__uninitialized_allocator_move_if_noexceptB8ne180100INS_9allocatorIhEENS_16reverse_iteratorIPhEES5_hvEET1_RT_T0_S9_S6_.exit.i.i
  %i.pq = getelementptr inbounds nuw i8, ptr %i.nm, i64 %i.pp
  store ptr %.sroa.436.0.i.i.i.i.i.i.i, ptr %1, align 8, !tbaa !68
  store ptr %i.pq, ptr %i.e, align 8, !tbaa !68
  %i.pr = load ptr, ptr %i.f, align 8, !tbaa !68
  store ptr %i.nl, ptr %i.f, align 8, !tbaa !68
  %.not.i42.i = icmp eq ptr %i.nj, null
  br i1 %.not.i42.i, label %_ZNSt3__16vectorIhNS_9allocatorIhEEE18__insert_with_sizeB8ne180100INS_11__wrap_iterIPKhEES8_EENS5_IPhEES8_T_T0_l.exit, label %bb.af

bb.af:                                            ; preds = %_ZNSt3__114__split_bufferIhRNS_9allocatorIhEEE5clearB8ne180100Ev.exit.i.i
  %i.ps = ptrtoint ptr %i.pr to i64
  %i.pt = ptrtoint ptr %i.nj to i64
end_hunk_0
