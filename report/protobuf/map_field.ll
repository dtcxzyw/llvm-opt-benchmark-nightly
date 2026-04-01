begin_hunk_0
  %i.co = ptrtoint ptr %i.cn to i64
  br label %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i.i

_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i.i:   ; preds = %.lr.ph.i.i.i, %bb.p
  %.033.i.i.i = phi i64 [ %i.cm, %.lr.ph.i.i.i ], [ %i.cy, %bb.p ]
  %.02132.i.i.i = phi ptr [ %i.ck, %.lr.ph.i.i.i ], [ %i.cw, %bb.p ]
  %i.cp = add i64 %.033.i.i.i, -27
  %i.cq = call ptr @memchr(ptr noundef %.02132.i.i.i, i32 noundef 71, i64 noundef %i.cp) #25 ; 4 uses
  %.not26.i.i.i = icmp eq ptr %i.cq, null
  br i1 %.not26.i.i.i, label %_ZN4absl12lts_2025051211StrContainsESt17basic_string_viewIcSt11char_traitsIcEES4_.exit, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i

end_hunk_0
begin_hunk_1
  %i.gi = ptrtoint ptr %i.gh to i64
  br label %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i.i150

_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i.i150: ; preds = %.lr.ph.i.i.i149, %bb.ai
  %.033.i.i.i151 = phi i64 [ %i.gg, %.lr.ph.i.i.i149 ], [ %i.go, %bb.ai ]
  %.02132.i.i.i152 = phi ptr [ %i.ge, %.lr.ph.i.i.i149 ], [ %i.gm, %bb.ai ]
  %i.gj = add i64 %.033.i.i.i151, -22
  %i.gk = call ptr @memchr(ptr noundef %.02132.i.i.i152, i32 noundef 71, i64 noundef %i.gj) #25 ; 4 uses
  %.not26.i.i.i154 = icmp eq ptr %i.gk, null
  br i1 %.not26.i.i.i154, label %_ZN4absl12lts_2025051211StrContainsESt17basic_string_viewIcSt11char_traitsIcEES4_.exit159.thread, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i155

end_hunk_1
begin_hunk_2

.lr.ph63.new:                                     ; preds = %.lr.ph63
  %unroll_iter = and i64 %i.da, -2
  %invariant.op = sub i8 1, %1
  br label %bb.g

.lr.ph.new:                                       ; preds = %.prol.loopexit, %.lr.ph.new
end_hunk_2
begin_hunk_3
  store ptr %2, ptr %i.ec, align 8, !tbaa !237
  %i.eg = load i8, ptr %i.as, align 1, !tbaa !20
  %i.eh = trunc i64 %indvars.iv65 to i8
  %i.ei = add i8 %i.eh, %invariant.op
  %i.ej = add i8 %i.ei, %i.eg
  %i.ek = zext i8 %i.ej to i64
  %i.el = getelementptr inbounds nuw [8 x i8], ptr %i.cx, i64 %i.ek
  %i.em = load ptr, ptr %i.el, align 8, !tbaa !237 ; 3 uses
end_hunk_3
